uint64_t re::MaterialTechnique::tryGetFallbackVariant(re::MaterialTechnique *this)
{
  if (*(this + 40) == 1)
  {
    v2 = this + 48;
  }

  else
  {
    v2 = (*this + 8);
  }

  v6 = *(v2 + 4);
  v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 88, &v6);
  if (*(*this + 2845) != 1 || v3 == 0)
  {
    return 0;
  }

  if (*(*v3 + 16))
  {
    return *v3;
  }

  return 0;
}

_anonymous_namespace_ *re::EncoderState::setVertexAmplificationCountForState(_anonymous_namespace_ *result, _anonymous_namespace_ *a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v12 = result;
  if ((~*result & 0x60) != 0 || *(result + 21) != a5 || *(result + 11) != a6)
  {
    if (*(a4 + 8) != a5 && (atomic_exchange(re::EncoderState::setVertexAmplificationCountForState(BOOL,BOOL,re::FixedArray<re::mtl::Viewport> const&,unsigned char,unsigned char,re::mtl::RenderCommandEncoder &)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v13 = *re::graphicsLogObjects(result);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "The viewport count and size must match", v15, 2u);
      }
    }

    re::mtl::RenderCommandEncoder::setViewports(a7);
    result = re::setVertexAmplificationCount(a2, a3, a5, a6, a7, v14);
    *(v12 + 21) = a5;
    *(v12 + 11) = a6;
    *v12 |= 0x60u;
  }

  return result;
}

uint64_t re::resolveStencilInfo(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 72);
  v7 = v6[8];
  if (v7)
  {
    v4 = *(v7 + 1080);
    if (v4 == 1)
    {
      v4 = *(v7 + 1081);
      LODWORD(v7) = 1;
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  v8 = v6[9];
  if (v8)
  {
    v5 = *(v8 + 1080);
    if (v5 == 1)
    {
      v5 = *(v8 + 1081);
      LODWORD(v8) = 1;
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  v9 = v6[11];
  if (v9 && (v10 = *(v9 + 1080), v10 == 1))
  {
    v9 = *(v9 + 1081);
    if (!a4)
    {
LABEL_12:
      LODWORD(v11) = 255;
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v11) = *(**a4 + 78);
LABEL_15:
  *result = *a3;
  *(result + 16) = *(a3 + 16);
  v12 = *(a2 + 147);
  if (v12 != 255)
  {
    *result = v12 == 1;
    *(result + 1) = *(a2 + 148);
    *(result + 5) = *(a2 + 152);
    *(result + 8) = *result;
    *(result + 16) = *(a2 + 154);
  }

  if ((v7 | v8 | v10))
  {
    if (v8)
    {
      v13 = v5;
    }

    else
    {
      v13 = v9;
    }

    if (v7)
    {
      v14 = v4;
    }

    else
    {
      v14 = v13;
    }

    *result = v14 == 1;
    *(result + 1) = BYTE1(v14);
    *(result + 2) = BYTE2(v14);
    *(result + 3) = BYTE3(v14);
    *(result + 4) = BYTE4(v14);
    *(result + 5) = BYTE5(v14);
    *(result + 6) = BYTE6(v14);
    *(result + 8) = *result;
    v11 = HIBYTE(v14);
  }

  else if (v11 == 255)
  {
    return result;
  }

  *(result + 16) = v11;
  return result;
}

uint64_t re::ShaderResourceBindState::reset(uint64_t this)
{
  v1 = 0;
  v2 = 1488;
  v3 = 1984;
  do
  {
    v4 = this + v1;
    *v4 = 0;
    *(v4 + 8) = 0;
    if ((*(this + v1 + 16) & 1) == 0)
    {
      *(v4 + 16) = 1;
    }

    *(v4 + 18) = 0;
    *(v4 + 20) = 0;
    *(v4 + 744) = 0uLL;
    if ((*(v4 + 760) & 1) == 0)
    {
      *(v4 + 760) = 1;
    }

    v5 = this + v1;
    *(v5 + 762) = 0;
    *(v5 + 764) = 0;
    if (*(this + v3) == 1)
    {
      *(this + v3) = 0;
    }

    if (*(this + v3 + 496) == 1)
    {
      *(this + v3 + 496) = 0;
    }

    v6 = (this + v2);
    *v6 = 0;
    v6[31] = 0;
    v1 += 24;
    v2 += 8;
    v3 += 16;
  }

  while (v1 != 744);
  return this;
}

void re::getOrCreateEncoderStates(uint64_t a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v96 = *MEMORY[0x1E69E9840];
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v22 = *a2;
  v21 = a2[1];
  v23 = **a2;
  v63[0] = a3;
  v63[1] = a4;
  v63[2] = *(a4 + 112);
  v63[3] = a5;
  v64 = v21;
  if (v21)
  {
    v24 = v21 + 1;
    v22 = *a2;
  }

  v65 = v23;
  v25 = v22[1];
  if (v25)
  {
    v26 = *(v25 + 1432);
  }

  else
  {
    v26 = 0;
  }

  v66 = v26;
  v67 = *(a2 + 16);
  v68 = 0;
  v69 = a7;
  v70 = a9;
  v71 = a10;
  v72 = (*a6 >> 1) & 7;
  v73 = *(v25 + 1440);
  v74 = 0;
  v75 = a13;
  v76 = a14;
  v77 = a15;
  v78 = 0;
  v79 = 0;
  re::getOrCreatePipelineState(v63, a6[80], &v62);
  v61 = v62;
  v27 = (v62 + 8);
  v28 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew((a2 + 3), (v62 + 24), &v61);
  if (v61)
  {

    v61 = 0;
  }

  if (!v62)
  {
    v40 = *re::graphicsLogObjects(v28);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v41 = ***a2;
    *buf = 136315138;
    *v84 = v41;
    v42 = "Failed to obtain cached pipeline state for technique %s";
LABEL_49:
    _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
    goto LABEL_34;
  }

  v31 = a6[80];
  v32 = *(a5 + 36);
  v33 = a11[1];
  v34 = a11[2];
  v29.i32[0] = *(a11 + 3);
  v35 = vmovl_u8(v29).u64[0];
  v36 = a11[9];
  v37 = a11[10];
  v30.i32[0] = *(a11 + 11);
  v38 = vmovl_u8(v30).u64[0];
  if ((v31 & 4) != 0)
  {
    v39 = 7;
  }

  else if (!*(v23 + 82) || *(v23 + 82) == 7 || (v39 = 7, (v32 - 250) <= 0xA) && ((1 << (v32 + 6)) & 0x425) != 0)
  {
    v39 = *(v23 + 82);
  }

  v43 = 0;
  v44 = *(a5 + 40);
  v88 = v39;
  v45 = *a11;
  v46 = a11[8];
  buf[0] = 0;
  v47 = vuzp1_s16(v35, vrev32_s16(v35));
  v48 = vuzp1_s8(v47, v47);
  v48.i32[1] = vuzp1_s8(vuzp1_s16(v38, vrev32_s16(v38)), v48).u32[0];
  v87 = v48;
  v89 = v33;
  v90 = v34;
  v91 = v36;
  v92 = v37;
  v49 = v32 - 250;
  if (v49 <= 0xA && ((1 << v49) & 0x425) != 0)
  {
    v43 = *(v23 + 74) & ~v31;
  }

  v93 = v43;
  v50 = ((v44 - 253) < 0xA) & (0x385u >> (v44 + 3));
  v94 = v50 & v45;
  v95 = v50 & v46;
  DepthStencilState = re::getOrCreateDepthStencilState(a4, *(a4 + 112), buf);
  v52 = DepthStencilState;
  if (buf[0] == 1)
  {
    DepthStencilState = *&v84[4];
    if (*&v84[4])
    {
      if (v85)
      {
        DepthStencilState = (*(**&v84[4] + 40))(*&v84[4], v86);
      }
    }
  }

  if (!v52)
  {
    v40 = *re::graphicsLogObjects(DepthStencilState);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v60 = ***a2;
    *buf = 136315138;
    *v84 = v60;
    v42 = "Failed to obtain cached depth stencil state for technique %s";
    goto LABEL_49;
  }

  v53 = a12;
  v54 = atomic_load((v62 + 208));
  if (v53 && v54 == 1)
  {
    v55 = (v62 + 208);
    do
    {
      __ulock_wait();
      v56 = atomic_load(v55);
    }

    while (v56 == 1);
    v54 = atomic_load((v62 + 208));
  }

  if (!v54)
  {
    NS::SharedPtr<MTL::Buffer>::operator=(&v82, (v62 + 16));
    NS::SharedPtr<MTL::Buffer>::operator=(&v81, v52);
    NS::SharedPtr<MTL::Buffer>::operator=(&v80, (v62 + 96));
    v57 = v82;
    v58 = v81;
    v59 = v80;
    *a1 = 1;
    *(a1 + 8) = v57;
    *(a1 + 16) = v58;
    *(a1 + 24) = v59;
    goto LABEL_35;
  }

LABEL_34:
  *a1 = 0;
LABEL_35:
  if (v62)
  {
  }

  if (v79)
  {
  }

  if (v64)
  {
  }

  if (v80)
  {
  }

  if (v81)
  {
  }

  if (v82)
  {
  }
}

uint64_t re::Optional<re::DrawCallEncoderStates>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 8), (a2 + 8));
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 16), (a2 + 16));
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 24), (a2 + 24));
    }

    else
    {
      v4 = *(a1 + 24);
      if (v4)
      {

        *(a1 + 24) = 0;
      }

      v5 = *(a1 + 16);
      if (v5)
      {

        *(a1 + 16) = 0;
      }

      v6 = *(a1 + 8);
      if (v6)
      {

        *(a1 + 8) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t re::Optional<re::DrawCallEncoderStates>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {

      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 16);
    if (v3)
    {

      *(a1 + 16) = 0;
    }

    v4 = *(a1 + 8);
    if (v4)
    {

      *(a1 + 8) = 0;
    }
  }

  return a1;
}

__n128 re::StandardEngineResources::populate(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v13 = *a4;
  *(a1 + 16) = *(a4 + 2);
  *a1 = v13;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0xA0uLL, 0x20uLL, &v27);
  *(a1 + 24) = v27;
  *(a1 + 40) = v28;
  v14 = (*(a1 + 24) + *(a1 + 32));
  v14[1] = *(a5 + 16);
  v15 = *(a5 + 80);
  v17 = *(a5 + 32);
  v16 = *(a5 + 48);
  v14[4] = *(a5 + 64);
  v14[5] = v15;
  v14[2] = v17;
  v14[3] = v16;
  v18 = *(a5 + 144);
  v20 = *(a5 + 96);
  v19 = *(a5 + 112);
  v14[8] = *(a5 + 128);
  v14[9] = v18;
  v14[6] = v20;
  v14[7] = v19;
  result = *a5;
  *v14 = *a5;
  if (!*(a1 + 60))
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x400uLL, 0x100uLL, &v27);
    *(a1 + 48) = v27;
    *(a1 + 64) = v28;
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    memcpy((v22 + v23), a6, 0x400uLL);
    if (a3)
    {
      result.n128_f64[0] = re::ViewConstantsLateLatch::trackViewConstantsBuffer(a3, v22 + v23);
    }
  }

  if (!*(a1 + 84))
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x40uLL, 0x10uLL, &v27);
    *(a1 + 72) = v27;
    *(a1 + 88) = v28;
    v24 = *(a1 + 72) + *(a1 + 80);
    result = *a7;
    v25 = *(a7 + 16);
    v26 = *(a7 + 48);
    *(v24 + 32) = *(a7 + 32);
    *(v24 + 48) = v26;
    *v24 = result;
    *(v24 + 16) = v25;
  }

  return result;
}

uint64_t re::encodeDrawCalls(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, re::mtl *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, unsigned __int8 a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 16))
  {
    HIDWORD(v45) = a18;
    v46 = result;
    v26 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v58);
    v59 = a2;
    v60 = a14;
    v61 = a3;
    v62 = a4;
    v63 = a6;
    v64 = a7;
    v65 = a12;
    v66 = a13;
    v67 = 0;
    v68[0] = a17;
    *&v68[4] = a15;
    *&v68[12] = a15;
    *&v68[20] = a15;
    *&v68[28] = a15;
    v68[36] = a18;
    v71 = 0u;
    LODWORD(v69) = a19;
    LODWORD(v72) = a20;
    BYTE4(v72) = 0;
    LODWORD(v73) = 0;
    BYTE4(v73) = 0;
    v74 = a9;
    v75 = a11;
    v76 = a10;
    v78 = 0;
    v79 = 0;
    location = 0;
    v27 = re::globalAllocators(v26);
    v28 = (*(*v27[2] + 32))(v27[2], 272, 8);
    *v28 = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    v28[3] = 0u;
    v28[4] = 0u;
    v28[5] = 0u;
    v28[6] = 0u;
    v28[7] = 0u;
    v28[8] = 0u;
    v28[9] = 0u;
    v28[10] = 0u;
    v28[11] = 0u;
    v28[12] = 0u;
    v28[13] = 0u;
    v28[14] = 0u;
    v28[15] = 0u;
    v28[16] = 0u;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v50 = v28;
    re::mtl::RenderCommandEncoder::operator=(&location, v46);
    v51 = a5 + 48;
    v52 = a5 + 104;
    v29 = *(a2 + 16);
    v53 = *(a4 + 24);
    v54 = 0;
    v55 = v29;
    v56 = a3 + 104;
    v57 = a21;
    (v50[20])(*v50, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:a8 encoding:4]);
    re::mtl::RenderCommandEncoder::insertDebugSignpost(&location, a8);
    v43 = *(a4 + 112);
    if (v43)
    {
      re::RenderStat::sampleRenderEncoderMTLCounterBegin(v43 + 864, &location, 1u);
    }

    re::encodeDrawCalls(&location, &v59, a16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, a13, v45, a9, a10, a11, __SPAIR64__(a20, a19), v46, a5, a8, a21, a16, location, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77);
    v44 = *(a4 + 112);
    if (v44)
    {
      re::RenderStat::sampleRenderEncoderMTLCounterEnd(v44 + 864, &location, 1u);
    }

    (v50[21])(*v50, sel_popDebugGroup);
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&location);
    return re::ProfilerTimeGuard<(re::ProfilerStatistic)79>::end(v58);
  }

  return result;
}

uint64_t re::EngineConstantSource::lookup(re::EngineConstantSource *this, const re::WeakStringID *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(*(this + 1), a2);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8) + 16 * v3 + 8;
  }
}

uint64_t re::EngineConstantSource::layoutHash(re::EngineConstantSource *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace(void *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
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

{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
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

double re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(void *a1, void *a2, void *a3)
{
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

int64x2_t re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = v15 + 16 * v14;
  v19 = *(a1 + 8);
  v20 = v19 + 16 * v18;
  v21 = 16 * v18;
  *(v19 + v21) = *a2;
  *(v20 + 8) = *a3;
  if (v17 == 255)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v23.i64[1] = v22;
  result = vaddq_s64(*(a1 + 24), v23);
  *(a1 + 24) = result;
  v25 = *(v19 + v21) ^ (*(v19 + v21) >> 30);
  v26 = ((v25 * v8) ^ ((v25 * v8) >> 27)) * v9;
  *(a1 + 40) ^= (v26 >> 31) ^ v26;
  return result;
}

double re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1, int a2)
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

  return re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(a1, v3);
}

double re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(uint64_t a1, uint64_t a2)
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
        re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
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
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

int64x2_t re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t *a1, void *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = a1[2];
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
  v17 = a1[1];
  v18 = v17 + 16 * v16;
  v19 = 16 * v16;
  *(v17 + v19) = *a2;
  *(v18 + 8) = *a3;
  if (v15 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 3), v21);
  *(a1 + 3) = result;
  v23 = *(v17 + v19) ^ (*(v17 + v19) >> 30);
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v23) ^ ((0xBF58476D1CE4E5B9 * v23) >> 27));
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

void *re::DynamicArray<unsigned long>::insert(void *this, unint64_t a2, void *a3)
{
  v4 = this[2];
  if (v4 + 1 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = this;
  if (v4 >= this[1])
  {
    this = re::DynamicArray<unsigned long>::growCapacity(this, v4 + 1);
    v4 = v6[2];
  }

  v7 = v6[4];
  v8 = (v7 + 8 * v4);
  if (v4 <= a2)
  {
    *v8 = *a3;
  }

  else
  {
    *v8 = *(v8 - 1);
    v9 = v7 + 8 * a2;
    v10 = v7 + 8 * v6[2] - 8;
    if (v10 != v9)
    {
      this = memmove((v9 + 8), v9, v10 - v9);
      v7 = v6[4];
    }

    *(v7 + 8 * a2) = *a3;
  }

  ++v6[2];
  ++*(v6 + 6);
  return this;
}

uint64_t re::ShaderResourceBindState::bindVertexResource(uint64_t a1, re::BufferSlice *this, unsigned int a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = *a5;
  if (a3 < 0x1F)
  {
    if (*a5)
    {
      v32 = *(a5 + 4);
    }

    result = re::BufferSlice::buffer(this, this);
    v19 = *this;
    v20 = *(this + 8);
    v21 = (a1 + 24 * a3);
    v22 = *v21;
    if (v21[1])
    {
      v23 = 0;
    }

    else
    {
      v23 = v22 == v19;
    }

    if (v23 && *(v21 + 5) == v20)
    {
      if (*(v21 + 16) == 1)
      {
        if (v9 && *(v21 + 9) == v32)
        {
          return result;
        }
      }

      else if (!v9)
      {
        return result;
      }
    }

    re::BufferSlice::buffer(this, v18);
    v28 = *a5;
    if (v22 == *this)
    {
      v31 = *(this + 8);
      if (*a5)
      {
        result = (*(*(a4 + 8) + 40))(**(a4 + 8), sel_setVertexBufferOffset_attributeStride_atIndex_, v31, *(a5 + 1), a3);
      }

      else
      {
        result = (*(*(a4 + 8) + 24))(**(a4 + 8), sel_setVertexBufferOffset_atIndex_, v31, a3);
      }
    }

    else
    {
      re::BufferSlice::buffer(this, v27);
      v29 = *this;
      v30 = *(this + 8);
      if (v28)
      {
        result = (*(*(a4 + 8) + 32))(**(a4 + 8), sel_setVertexBuffer_offset_attributeStride_atIndex_, v29, v30, *(a5 + 1), a3);
      }

      else
      {
        result = (*(*(a4 + 8) + 16))(**(a4 + 8), sel_setVertexBuffer_offset_atIndex_, v29, v30, a3);
      }
    }

    *v21 = v19;
    v21[1] = 0;
    if (v21[2])
    {
      if ((v9 & 1) == 0)
      {
        *(v21 + 16) = 0;
LABEL_35:
        *(v21 + 5) = v20;
        return result;
      }
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_35;
      }

      *(v21 + 16) = 1;
    }

    *(v21 + 9) = v32;
    goto LABEL_35;
  }

  re::BufferSlice::buffer(this, this);
  v10 = *this;
  v11 = *(this + 8);
  if (v9)
  {
    v12 = *(a5 + 1);
    v13 = *(a4 + 8);
    v14 = *v13;
    v15 = v13[4];

    return v15(v14, sel_setVertexBuffer_offset_attributeStride_atIndex_, v10, v11, v12, a3);
  }

  else
  {
    v24 = *(a4 + 8);
    v25 = *v24;
    v26 = v24[2];

    return v26(v25, sel_setVertexBuffer_offset_atIndex_, v10, v11, a3);
  }
}

uint64_t re::ShaderResourceBindState::bindVertexResource(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, char a6, uint64_t a7)
{
  if (a4 < 0x1F)
  {
    v13 = result + 24 * a4;
    v14 = *v13;
    if (*(v13 + 8))
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 == a2;
    }

    if (v15 && *(v13 + 20) == a3)
    {
      if (*(v13 + 16) == 1)
      {
        if (a6)
        {
          if (*(v13 + 18) == a7)
          {
            return result;
          }

          goto LABEL_26;
        }

LABEL_23:
        result = (a5[3])(*a5, sel_setVertexBufferOffset_atIndex_, a3, a4);
        goto LABEL_27;
      }

      if ((a6 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v14 != a2)
      {
        v16 = *a5;
        if (a6)
        {
          result = (a5[4])(v16, sel_setVertexBuffer_offset_attributeStride_atIndex_, a2, a3, a7);
        }

        else
        {
          result = (a5[2])(v16, sel_setVertexBuffer_offset_atIndex_, a2, a3, a4);
        }

LABEL_27:
        *v13 = a2;
        *(v13 + 8) = 0;
        if (*(v13 + 16))
        {
          if ((a6 & 1) == 0)
          {
            *(v13 + 16) = 0;
LABEL_33:
            *(v13 + 20) = a3;
            return result;
          }
        }

        else
        {
          if ((a6 & 1) == 0)
          {
            goto LABEL_33;
          }

          *(v13 + 16) = 1;
        }

        *(v13 + 18) = a7;
        goto LABEL_33;
      }

      if ((a6 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    result = (a5[5])(*a5, sel_setVertexBufferOffset_attributeStride_atIndex_, a3, a7, a4);
    goto LABEL_27;
  }

  v11 = *a5;
  if (a6)
  {
    v12 = a5[4];

    return v12(v11, sel_setVertexBuffer_offset_attributeStride_atIndex_, a2, a3, a7, a4);
  }

  else
  {
    v17 = a5[2];

    return v17(v11, sel_setVertexBuffer_offset_atIndex_, a2, a3, a4);
  }
}

void re::fillConstantBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 + 106);
  if (v12 > 1)
  {
    if (*(a8 + 107) == 1 && ((v17 = *(a7 + 32), v17 >= 2) ? (v18 = *(a7 + 3) == 2) : (v18 = 0), v18))
    {
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), *(a8 + 100) * v17, *(a8 + 98), a1);
      v42 = *a1;
      v44 = *(a1 + 8);
      v43 = *(a1 + 12);
      v45 = *(a8 + 100);
      v46 = *(a7 + 32);
      v47 = *(a8 + 24);
      *&v53 = *(a8 + 40);
      *(&v53 + 1) = v47;
      v48 = *(a8 + 72);
      v51 = *(a8 + 88);
      v52 = v48;
      re::ConstantTableCollection::fillInstanceArray(a6, v42 + v44, v43, v45, v46, &v53, &v51);
      v49 = *(a7 + 32);
      v50 = *(a3 + 24);
      *(a3 + 20) += v49 * *(a8 + 100);
      v30 = v50 + v49 * *(a8 + 24);
    }

    else
    {
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), *(a8 + 100), *(a8 + 98), a1);
      v19 = *a1;
      v20 = *(a1 + 8);
      v21 = *(a8 + 100);
      v22 = *(a8 + 24);
      *&v53 = *(a8 + 40);
      *(&v53 + 1) = v22;
      v23 = *(a8 + 72);
      v51 = *(a8 + 88);
      v52 = v23;
      re::ConstantTableCollection::fill(a6, v19 + v20, v21, &v53, &v51);
      if (a5)
      {
        if ((*(a8 + 104) & 2) != 0)
        {
          v24 = *(a1 + 12);
          v25 = *(a8 + 24);
          *&v53 = *(a8 + 40);
          *(&v53 + 1) = v25;
          re::ViewConstantsLateLatch::trackViewConstantsBuffer(a5, v19 + v20, v24, &v53);
        }

        v26 = *(a7 + 9);
        if (v26 && (*(a8 + 104) & 8) != 0)
        {
          v27 = *(a1 + 12);
          v28 = *(a8 + 24);
          *&v53 = *(a8 + 40);
          *(&v53 + 1) = v28;
          re::InstanceConstantsLateLatch::trackInstanceConstantsBuffer((a5 + 1536), v19 + v20, v27, &v53, v26);
        }
      }

      v29 = *(a3 + 24);
      *(a3 + 20) += *(a8 + 100);
      v30 = v29 + *(a8 + 24);
    }

    *(a3 + 24) = v30;
  }

  else
  {
    v14 = (a4 + 56 * *(a8 + 106));
    if (*a8 == v14[3] && *(a8 + 48) == v14[4])
    {
      *(v14 + 11) += *(a8 + 100);
LABEL_21:
      v41 = a4 + 56 * v12;
      *a1 = *v41;
      *(a1 + 16) = *(v41 + 16);
      return;
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), *(a8 + 100), *(a8 + 98), &v53);
    *v14 = v53;
    v14[2] = v54;
    v31 = *v14;
    v32 = *(v14 + 2);
    v33 = *(a8 + 100);
    v34 = *(a8 + 24);
    *&v53 = *(a8 + 40);
    *(&v53 + 1) = v34;
    v35 = *(a8 + 72);
    v51 = *(a8 + 88);
    v52 = v35;
    re::ConstantTableCollection::fill(a6, v31 + v32, v33, &v53, &v51);
    if (a5)
    {
      if ((*(a8 + 104) & 2) != 0)
      {
        v37 = *v14;
        v39 = *(v14 + 2);
        v38 = *(v14 + 3);
        v40 = *(a8 + 24);
        *&v53 = *(a8 + 40);
        *(&v53 + 1) = v40;
        re::ViewConstantsLateLatch::trackViewConstantsBuffer(a5, v37 + v39, v38, &v53);
      }
    }

    *(v14 + 10) += *(a8 + 100);
    *(v14 + 12) += *(a8 + 24);
    v14[3] = *a8;
    v14[4] = *(a8 + 48);
    v12 = *(a8 + 106);
    if (v12 < 2)
    {
      goto LABEL_21;
    }

    re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(a8 + 106), 2);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::SamplerTableReference::samplerAt(re::SamplerTableReference *this, unint64_t a2)
{
  v4 = *(this + 1);
  if (v4 > a2)
  {
    return *this + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ShaderResourceBindState::bindFragmentResource(uint64_t this, const BufferView *a2, unsigned int a3, RenderCommandEncoder *a4)
{
  if (a3 < 0x1F)
  {
    v10 = this + 24 * a3;
    v11 = v10 + 744;
    v12 = *a2;
    v13 = *(v10 + 752);
    v14 = *(v10 + 744);
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 == v12;
    }

    if (!v15 || *(v11 + 20) != *(a2 + 4) || *(v11 + 16) != 1 || *(v11 + 18))
    {
      m_object = a4->m_object;
      if (v14 == v12)
      {
        this = (a4[6].m_object)(m_object, sel_setFragmentBufferOffset_atIndex_, *(a2 + 4), a3);
      }

      else
      {
        this = (a4[5].var0)(m_object, sel_setFragmentBuffer_offset_atIndex_);
      }

      v17 = *(a2 + 4);
      *v11 = *a2;
      *(v11 + 8) = 0;
      if ((*(v11 + 16) & 1) == 0)
      {
        *(v11 + 16) = 1;
      }

      *(v11 + 18) = 0;
      *(v11 + 20) = v17;
    }
  }

  else
  {
    v6 = *a2;
    v7 = a4->m_object;
    var0 = a4[5].var0;
    v9 = *(a2 + 4);

    return (var0)(v7, sel_setFragmentBuffer_offset_atIndex_, v6, v9, a3);
  }

  return this;
}

uint64_t re::Optional<re::TechniqueState>::operator=(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      *a1 = 1;
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      v8 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v8;
      *(a1 + 24) = v7;
      *(a1 + 8) = v6;
      v9 = *(a2 + 60);
      *(a1 + 60) = v9;
      if (v9 == 1)
      {
        *(a1 + 61) = *(a2 + 61);
      }

      *(a1 + 96) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = 0;
      *(a1 + 88) = 0;
      v10 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v10;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      goto LABEL_19;
    }

    return a1;
  }

  if ((*a2 & 1) == 0)
  {
    re::DynamicArray<unsigned long>::deinit(a1 + 64);
    *a1 = 0;
    return a1;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  if (*(a1 + 60))
  {
    if ((*(a2 + 60) & 1) == 0)
    {
      *(a1 + 60) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 60) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 60) = 1;
  }

  *(a1 + 61) = *(a2 + 61);
LABEL_14:
  if (a1 == a2)
  {
    return a1;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if (!v11 || !v12 || v11 == v12)
  {
    v13 = *(a1 + 72);
    v14 = *(a2 + 72);
    *(a1 + 64) = v12;
    *(a1 + 72) = v14;
    *(a2 + 64) = v11;
    *(a2 + 72) = v13;
LABEL_19:
    v15 = *(a1 + 80);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 80) = v15;
    v16 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 96) = v16;
    ++*(a2 + 88);
    ++*(a1 + 88);
    return a1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::Optional<re::TechniqueState>::Optional(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 14);
    *(a1 + 40) = v6;
    *(a1 + 24) = v5;
    *(a1 + 8) = v4;
    v7 = a2[60];
    *(a1 + 60) = v7;
    if (v7 == 1)
    {
      *(a1 + 61) = a2[61];
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(a1 + 64, a2 + 8);
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v17 - 8) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                re::BufferTable::BufferTable(v18 + 16, v17);
              }

              v17 += 304;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 304 * v4);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 304 * v4);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = 304 * v4;
  *(v19 + v22) = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *(v19 + v22) = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v19 + 304 * v4;
}

void re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_61, 4 * v10);
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

void *re::FixedArray<unsigned char>::init<int>(void *result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *result = a2;
  result[1] = a3;
  if (a3)
  {
    v6 = result;
    result = (*(*a2 + 32))(a2, a3, 1);
    v6[2] = result;
    if (result)
    {
      v8 = a3 - 1;
      if (a3 != 1)
      {
        do
        {
          *result = *a4;
          result = (result + 1);
          --v8;
        }

        while (v8);
      }

      *result = *a4;
    }

    else
    {
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

double re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
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
          re::BufferTable::~BufferTable((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 304;
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

void *re::DynamicArray<re::ConstantSource const*>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 8 * a2, 8);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 8 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 8 * a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ConstantSource const*>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::InstanceConstants>::setCapacity(void *result, unint64_t a2)
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

        if (HIBYTE(a2))
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 256, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 8;
          result = (*(*result + 32))(result, a2 << 8, 256);
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
            memcpy(v7, v5[4], v5[2] << 8);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::InstanceConstants>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

re::mtl::mps::ImageGuidedFilter *re::mtl::mps::ImageGuidedFilter::ImageGuidedFilter(re::mtl::mps::ImageGuidedFilter *this, const re::mtl::Device *a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E69745D0]) initWithDevice:*a2 kernelDiameter:a3];
  *this = v4;

  return this;
}

uint64_t re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(id *a1, void *a2, id *a3)
{
  v7 = *a3;
  v5 = [*a1 encodeToCommandBuffer:*a2 inPlaceTexture:&v7 fallbackCopyAllocator:0];

  return v5;
}

void re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(void **a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a4;
  v7 = *a3;
  [v4 encodeToCommandBuffer:v5 sourceTexture:v7 destinationTexture:v6];
}

re::mtl::mps::ImageGaussianBlur *re::mtl::mps::ImageGaussianBlur::ImageGaussianBlur(re::mtl::mps::ImageGaussianBlur *this, const re::mtl::Device *a2, float a3)
{
  v6 = objc_alloc(MEMORY[0x1E69745C0]);
  *&v7 = a3;
  v8 = [v6 initWithDevice:*a2 sigma:v7];
  *this = v8;

  return this;
}

re::mtl::mps::ImageBilinearScale *re::mtl::mps::ImageBilinearScale::ImageBilinearScale(re::mtl::mps::ImageBilinearScale *this, const re::mtl::Device *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E6974578]) initWithDevice:*a2];
  *this = v3;

  return this;
}

re::mtl::mps::ImageAreaMax *re::mtl::mps::ImageAreaMax::ImageAreaMax(re::mtl::mps::ImageAreaMax *this, const re::mtl::Device *a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_alloc(MEMORY[0x1E6974568]) initWithDevice:*a2 kernelWidth:a3 kernelHeight:a4];
  *this = v5;

  return this;
}

re::mtl::mps::ImageTent *re::mtl::mps::ImageTent::ImageTent(re::mtl::mps::ImageTent *this, const re::mtl::Device *a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_alloc(MEMORY[0x1E6974638]) initWithDevice:*a2 kernelWidth:a3 kernelHeight:a4];
  *this = v5;

  return this;
}

uint64_t re::mtl::getTypeSize(int a1)
{
  if ((a1 - 3) > 0x52)
  {
    return 0;
  }

  else
  {
    return dword_1E30B5CE0[(a1 - 3)];
  }
}

void re::FramePersistentPooledGPUBuffer::replace(re::FramePersistentPooledGPUBuffer *this@<X0>, re::FrameManager *a2@<X1>, void **a3@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 3) & 0xFFFFFFFFFFFFFFFLL | (*(a2 + 2) << 60);
  v6 = *(a2 + 4);
  *a3 = 0;
  v7 = *(this + 1);
  if (!v7)
  {
    goto LABEL_39;
  }

  v8 = 0;
  v9 = v6 & 0xFFFFFFFFFFFFFFFLL;
  do
  {
    v10 = *(this + 4);
    v11 = this + 24;
    if ((v10 & 1) == 0)
    {
      v11 = *(this + 4);
    }

    v12 = *&v11[8 * v8] & 0xFFFFFFFFFFFFFFFLL;
    if (*a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = v9 >= v12;
    }

    if (v13)
    {
      if (*(this + 6) <= v8)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        *v52 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_76:
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        *v52 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_77:
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        *v52 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_78:
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        *v52 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v29 = this + 64;
      if ((*(this + 56) & 1) == 0)
      {
        v29 = *(this + 9);
      }

      NS::SharedPtr<MTL::Buffer>::operator=(a3, &v29[8 * v8]);
      if (*(this + 1) <= v8)
      {
        goto LABEL_76;
      }

      v30 = this + 24;
      if ((*(this + 16) & 1) == 0)
      {
        v30 = *(this + 4);
      }

      *&v30[8 * v8] = v5;
    }

    else if (v8 >= 2 && *a3 && v9 - v12 >= 3)
    {
      if (v7 <= v8)
      {
        goto LABEL_77;
      }

      v14 = *(this + 4) & 1;
      v15 = v7 - 1;
      if (v7 - 1 > v8)
      {
        v16 = this + 24;
        if ((v10 & 1) == 0)
        {
          v16 = *(this + 4);
        }

        v17 = &v16[8 * v8];
        v18 = &v16[8 * v7];
        if (v18 != v17 + 8)
        {
          memmove(v17, v17 + 8, v18 - (v17 + 8));
          v15 = *(this + 1) - 1;
          v10 = *(this + 4);
          v14 = v10 & 1;
        }
      }

      *(this + 1) = v15;
      *(this + 4) = (v10 & 0xFFFFFFFE | v14) + 2;
      v19 = *(this + 6);
      if (v19 <= v8)
      {
        goto LABEL_78;
      }

      v20 = *(this + 14);
      if (v19 - 1 > v8)
      {
        v21 = this + 64;
        if ((v20 & 1) == 0)
        {
          v21 = *(this + 9);
        }

        v22 = &v21[8 * v8];
        v23 = &v21[8 * v19];
        if (v22 + 1 != v23)
        {
          do
          {
            NS::SharedPtr<MTL::Texture>::operator=(v22, v22 + 1);
            v24 = v22 + 2;
            ++v22;
          }

          while (v24 != v23);
          v20 = *(this + 14);
        }
      }

      v25 = this + 64;
      if ((v20 & 1) == 0)
      {
        v25 = *(this + 9);
      }

      v26 = *(this + 6);
      v27 = &v25[8 * v26];
      v28 = *(v27 - 1);
      if (v28)
      {

        *(v27 - 1) = 0;
        v26 = *(this + 6);
        v20 = *(this + 14);
      }

      *(this + 6) = v26 - 1;
      *(this + 14) = v20 + 2;
    }

    ++v8;
    v7 = *(this + 1);
  }

  while (v8 < v7);
  if (!*a3)
  {
LABEL_39:
    v52[0] = [*(this + 10) newBufferWithLength:*(this + 11) options:0];
    NS::SharedPtr<MTL::Texture>::operator=(a3, v52);
    v31 = v52[0];
    if (v52[0])
    {
    }

    if (*(this + 5))
    {
      v32 = *(this + 6);
      v33 = *(this + 14);
      if (v33)
      {
        v35 = v32 + 1;
        if (v35 >= 3)
        {
          v36 = 4;
LABEL_52:
          if (v36 <= v35)
          {
            v40 = v35;
          }

          else
          {
            v40 = v36;
          }

          re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(this + 5, v40);
          if (*(this + 14))
          {
            goto LABEL_56;
          }

LABEL_50:
          v39 = *(this + 9);
          goto LABEL_57;
        }
      }

      else
      {
        v34 = *(this + 8);
        if (v32 >= v34)
        {
          v35 = v32 + 1;
          if (v34 < v35)
          {
            v36 = 2 * v34;
            goto LABEL_52;
          }
        }
      }

      if ((v33 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v37 = *(this + 6);
      re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(this + 5, v37 + 1);
      v38 = *(this + 14) + 2;
      *(this + 14) = v38;
      if ((v38 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

LABEL_56:
    v39 = this + 64;
LABEL_57:
    v41 = *(this + 6);
    v42 = *a3;
    *&v39[8 * v41] = v42;
    ++*(this + 6);
    *(this + 14) += 2;
    if (*this)
    {
      v43 = *(this + 1);
      v44 = *(this + 4);
      if (v44)
      {
        v46 = v43 + 1;
        if (v46 >= 3)
        {
          v47 = 4;
LABEL_68:
          if (v47 <= v46)
          {
            v51 = v46;
          }

          else
          {
            v51 = v47;
          }

          re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this, v51);
          if (*(this + 4))
          {
            goto LABEL_72;
          }

LABEL_66:
          v50 = *(this + 4);
LABEL_73:
          *&v50[8 * (*(this + 1))++] = v5;
          *(this + 4) += 2;
          return;
        }
      }

      else
      {
        v45 = *(this + 3);
        if (v43 >= v45)
        {
          v46 = v43 + 1;
          if (v45 < v46)
          {
            v47 = 2 * v45;
            goto LABEL_68;
          }
        }
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v48 = *(this + 1);
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this, v48 + 1);
      v49 = *(this + 4) + 2;
      *(this + 4) = v49;
      if ((v49 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_72:
    v50 = this + 24;
    goto LABEL_73;
  }
}

id re::FramePersistentPooledGPUBuffer::read@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = 0;
  v6 = a1 + 24;
  v7 = *(a1 + 16);
  v8 = -1;
  v9 = -1;
  do
  {
    v10 = a1 + 24;
    if ((v7 & 1) == 0)
    {
      v10 = *(a1 + 32);
    }

    v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) - (*(v10 + 8 * v5) & 0xFFFFFFFFFFFFFFFLL);
    if (v11 < v8)
    {
      v9 = v5;
      v8 = v11;
    }

    ++v5;
  }

  while (v4 != v5);
  if (v9 == -1)
  {
LABEL_15:
    result = 0;
    goto LABEL_18;
  }

  if (v4 <= v9)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  if ((v7 & 1) == 0)
  {
    v6 = *(a1 + 32);
  }

  *(v6 + 8 * v9) = a2;
  if (*(a1 + 48) <= v9)
  {
LABEL_20:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 56))
  {
    v12 = a1 + 64;
  }

  else
  {
    v12 = *(a1 + 72);
  }

  result = *(v12 + 8 * v9);
LABEL_18:
  *a3 = result;
  return result;
}

uint64_t re::MeshNameMap::init(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return result;
  }

  var1 = a3;
  v11 = a2;
  v12 = result;
  v13 = &v83;
  v14 = a4[1];
  v15 = v6;
  if (v6)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *a4;
    do
    {
      if (v20 == v6)
      {
        goto LABEL_103;
      }

      v5 = *(*var1 + 96 * v20 + 80);
      if (v7 <= v5)
      {
        goto LABEL_104;
      }

      v22 = *(v11 + 32) + 864 * v5;
      v23 = *(v22 + 224);
      if (v23)
      {
        v24 = *(v23 + 8);
        if (v24)
        {
          ++v17;
          a2 = 0;
          v25 = 4;
          do
          {
            if (v24 <= a2)
            {
              v26 = 0xFFFFFFFFLL;
            }

            else
            {
              v26 = *(*(v23 + 16) + v25);
            }

            if (v14 > v26)
            {
              ++v16;
              v18 += *(v21 + 184 * v26 + 24);
            }

            ++a2;
            v25 += 88;
          }

          while (v24 != a2);
        }
      }

      v19 += *(v22 + 56);
      ++v20;
    }

    while (v20 != v6);
    if (v16 > 0xFFFFFFFE)
    {
      goto LABEL_118;
    }

    if (v17 >= 0xFFFFFFFF)
    {
LABEL_119:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned instances exceeds expectations.", "skinnedMeshInstanceCount < 4294967295U", "init", 253);
      _os_crash();
      __break(1u);
      goto LABEL_120;
    }

    if (v18 >= 0xFFFFFFFF)
    {
LABEL_120:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned joints exceeds expectations.", "skinnedMeshPartJointCount < 4294967295U", "init", 254);
      _os_crash();
      __break(1u);
LABEL_121:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v15;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_122;
    }

    if (v19 < 0xFFFFFFFF)
    {
      goto LABEL_27;
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of mesh parts exceeds expectations.", "meshPartInstanceCount < 4294967295U", "init", 255);
    _os_crash();
    __break(1u);
  }

  v19 = 0;
  v17 = 0;
  v16 = 0;
LABEL_27:
  v69 = v11;
  v67 = v6;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((v12 + 2), a5, 2 * v6);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((v12 + 8), a5, 2 * v7);
  v5 = v7;
  re::FixedArray<unsigned short>::init<>(v12 + 14, a5, v7);
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(v12 + 17, a5, v7);
  re::FixedArray<re::StringID>::init<>(v12 + 20, a5, v7);
  re::FixedArray<re::StringID>::init<>(v12 + 23, a5, v15);
  v65 = v15;
  re::FixedArray<int>::init<>(v12 + 26, a5, v15);
  re::FixedArray<int>::init<>(v12 + 29, a5, v17);
  re::FixedArray<int>::init<>(v12 + 32, a5, v16);
  re::FixedArray<unsigned int>::init<unsigned int const&>(v12 + 35, a5, v19, re::MeshNameMap::kInvalidSkinnedPartIndex);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>((v12 + 38), a5, v7);
  re::FixedArray<int>::init<>(v12 + 41, a5, v67 + 1);
  re::FixedArray<int>::init<>(v12 + 44, a5, (v7 + 1));
  re::FixedArray<int>::init<>(v12 + 47, a5, v67 + 1);
  re::FixedArray<int>::init<>(v12 + 50, a5, v19);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v68 = v7;
  v7 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v70 = 0;
  v15 = 88;
  v66 = var1;
  do
  {
    v32 = v31;
    v33 = *(var1 + 8);
    if (v33 <= v31)
    {
      goto LABEL_96;
    }

    a5 = *var1 + 96 * v31;
    v17 = *(a5 + 80);
    v5 = v72;
    if (v72 <= v17)
    {
      goto LABEL_97;
    }

    ++*(v73 + 4 * v17);
    v5 = v70;
    var1 = v12[42];
    if (var1 <= v70)
    {
      goto LABEL_98;
    }

    *(v12[43] + 4 * v70) = v7;
    v5 = v70;
    var1 = v12[24];
    if (var1 <= v70)
    {
      goto LABEL_99;
    }

    re::StringID::operator=((v12[25] + 16 * v70), a5);
    v5 = v70;
    var1 = v12[27];
    if (var1 <= v70)
    {
      goto LABEL_100;
    }

    *(v12[28] + 4 * v70) = v17;
    v5 = v70;
    var1 = v12[48];
    if (var1 <= v70)
    {
      goto LABEL_101;
    }

    *(v12[49] + 4 * v70) = v30;
    v34 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((v12 + 2), a5, &v70);
    v35 = v69;
    v5 = *(v69 + 16);
    if (v5 <= v17)
    {
      goto LABEL_102;
    }

    v36 = *(v69 + 32);
    v37 = *(v36 + 864 * v17 + 224);
    if (v37)
    {
      v38 = *(v37 + 8);
      var1 = v66;
      v39 = v67;
      if (v38)
      {
        v5 = v29;
        a5 = v12[30];
        if (a5 <= v29)
        {
          goto LABEL_117;
        }

        v40 = 0;
        *(v12[31] + 4 * v29) = v70;
        v41 = 1;
        do
        {
          if (v38 <= v40)
          {
            v42 = 0xFFFFFFFFLL;
          }

          else
          {
            v42 = *(*(v37 + 16) + 88 * v40 + 4);
          }

          if (v14 > v42)
          {
            v5 = v30;
            a5 = v12[33];
            if (a5 <= v30)
            {
              goto LABEL_94;
            }

            a5 = v7 + v41 - 1;
            *(v12[34] + 4 * v30) = a5;
            v5 = v12[36];
            if (v5 <= a5)
            {
              goto LABEL_95;
            }

            *(v12[37] + 4 * a5) = v30;
            v30 = (v30 + 1);
          }

          v40 = v41;
        }

        while (v38 > v41++);
        ++v29;
      }
    }

    else
    {
      var1 = v66;
      v39 = v67;
    }

    v44 = *(v36 + 864 * v17 + 56);
    v45 = v44;
    if (v44)
    {
      v17 = v7;
      a5 = v12[51];
      v46 = a5 - v7;
      if (a5 < v7)
      {
        v46 = 0;
      }

      while (v46)
      {
        v47 = v70;
        *(v12[52] + 4 * v17) = v70;
        --v46;
        ++v17;
        if (!--v45)
        {
          goto LABEL_56;
        }
      }

      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v17;
      v81 = 2048;
      v82 = a5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_91;
    }

    v47 = v70;
LABEL_56:
    v7 = (v7 + v44);
    v31 = v47 + 1;
    v70 = v47 + 1;
  }

  while (v47 + 1 < v39);
  v5 = v12[42];
  v15 = v65;
  if (v5 <= v65)
  {
    goto LABEL_121;
  }

  *(v12[43] + 4 * v65) = v7;
  v5 = v12[48];
  if (v5 <= v65)
  {
LABEL_122:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    v78 = 468;
    v79 = 2048;
    v80 = v15;
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_123;
  }

  v48 = 0;
  v49 = 0;
  a5 = 0;
  v7 = 0;
  v15 = 0;
  *(v12[49] + 4 * v65) = v30;
  do
  {
    v5 = *(v35 + 16);
    if (v5 <= v7)
    {
      goto LABEL_105;
    }

    v5 = v12[15];
    if (v5 <= v7)
    {
      goto LABEL_106;
    }

    v50 = (*(v35 + 32) + v48);
    v5 = v50[7];
    *(v12[16] + 2 * v7) = v5;
    v14 = v12[18];
    if (v14 <= v7)
    {
      goto LABEL_107;
    }

    v14 = v72;
    if (v72 <= v7)
    {
      goto LABEL_108;
    }

    v51 = v12[19];
    v52 = *(v73 + 4 * v7);
    v14 = v12[21];
    if (v14 <= v7)
    {
      goto LABEL_109;
    }

    v34 = re::StringID::operator=((v12[22] + a5), v50);
    v14 = v12[45];
    if (v14 <= v7)
    {
      goto LABEL_110;
    }

    v54 = v12[46];
    *(v54 + 4 * v7) = v15;
    v15 = (v15 + v5);
    ++v7;
    a5 += 16;
    v49 += 24;
    v48 += 864;
    v35 = v69;
  }

  while (v68 != v7);
  v5 = v68;
  if (v14 <= v68)
  {
LABEL_123:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    v78 = 468;
    v79 = 2048;
    v80 = v5;
    v81 = 2048;
    v82 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v55 = 0;
  *(v54 + 4 * v68) = v15;
  v15 = v72;
  v56 = v73;
  v57 = v66[1];
  v58 = (*v66 + 80);
  do
  {
    if (v57 == v55)
    {
      goto LABEL_111;
    }

    v7 = *v58;
    v5 = v12[18];
    if (v5 <= v7)
    {
      goto LABEL_112;
    }

    if (v15 <= v7)
    {
      goto LABEL_113;
    }

    v59 = v12[19] + 24 * v7;
    v5 = *(v59 + 8);
    v60 = *(v56 + 4 * v7);
    v14 = v5 - v60;
    if (v5 <= v5 - v60)
    {
      goto LABEL_114;
    }

    *(*(v59 + 16) + 4 * v14) = v55;
    --*(v56 + 4 * v7);
    ++v55;
    v58 += 24;
  }

  while (v65 != v55);
  v7 = 0;
  v14 = 864;
  v17 = 544;
  while (2)
  {
    v5 = *(v35 + 16);
    if (v5 <= v7)
    {
      goto LABEL_115;
    }

    v61 = (*(v35 + 32) + 864 * v7);
    var1 = v61[3].var1;
    re::MeshNameMap::addMeshAssetModelNameToMap(v12, v61, v7);
    v5 = v12[39];
    if (v5 <= v7)
    {
      goto LABEL_116;
    }

    if ((2 * var1) <= 1)
    {
      a5 = 1;
    }

    else
    {
      a5 = (2 * var1);
    }

    v63 = v12[40] + 48 * v7;
    LOWORD(v70) = 0;
    if (var1)
    {
      v5 = 0;
      a5 = 0;
      while (1)
      {
        v30 = *(v69 + 16);
        if (v30 <= v7)
        {
          break;
        }

        v64 = *(v69 + 32) + 864 * v7;
        v30 = *(v64 + 56);
        if (v30 <= a5)
        {
          goto LABEL_92;
        }

        v30 = v12[39];
        if (v30 <= v7)
        {
          goto LABEL_93;
        }

        re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v12[40] + 48 * v7, (*(v64 + 64) + 544 * a5 + 488), &v70);
        v5 = (v5 + 1);
        LOWORD(v70) = v5;
        a5 = v5;
        if (var1 <= v5)
        {
          goto LABEL_86;
        }
      }

LABEL_91:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 797;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 476;
      v79 = 2048;
      v80 = a5;
      v81 = 2048;
      v82 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_94:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v5;
      v81 = 2048;
      v82 = a5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_95:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = a5;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_96:
      re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v32, v33);
      _os_crash();
      __break(1u);
LABEL_97:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v17;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v5;
      v81 = 2048;
      v82 = var1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_99:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v5;
      v81 = 2048;
      v82 = var1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_100:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v5;
      v81 = 2048;
      v82 = var1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v5;
      v81 = 2048;
      v82 = var1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_102:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 797;
      v79 = 2048;
      v80 = v17;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_103:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v6);
      _os_crash();
      __break(1u);
LABEL_104:
      v71 = 0;
      v13[3] = 0u;
      v13[4] = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 797;
      v79 = 2048;
      v80 = v5;
      v81 = 2048;
      v82 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_105:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 797;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_106:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_107:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_108:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_109:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_110:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_111:
      re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v57, v57);
      _os_crash();
      __break(1u);
LABEL_112:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v14;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 797;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v7;
      v81 = 2048;
      v82 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v74 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v75 = 136315906;
      v76 = "operator[]";
      v77 = 1024;
      v78 = 468;
      v79 = 2048;
      v80 = v5;
      v81 = 2048;
      v82 = a5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_118:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned parts exceeds expectations.", "skinnedMeshPartCount < 4294967295U", "init", 252);
      _os_crash();
      __break(1u);
      goto LABEL_119;
    }

LABEL_86:
    ++v7;
    v35 = v69;
    if (v7 != v68)
    {
      continue;
    }

    break;
  }

  ++*v12;
  re::MeshNameMap::calculateHash(v12);
  result = v71;
  if (v71)
  {
    if (v72)
    {
      return (*(*v71 + 40))();
    }
  }

  return result;
}

uint64_t *re::MeshNameMap::init(uint64_t *result, re::_anonymous_namespace_::MeshAssetAccessor *this, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4;
  v85 = *MEMORY[0x1E69E9840];
  v6 = *(this + 76);
  if (v6)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  v8 = a5;
  v10 = result;
  v11 = *(this + 156);
  v12 = a4;
  v59 = a4;
  if (a4)
  {
    v57 = *(this + 76);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      if (v17 == v5)
      {
        goto LABEL_95;
      }

      v18 = *(a3 + 96 * v17 + 80);
      if (v19)
      {
        ++v14;
      }

      v62 = v14;
      if (v19)
      {
        v20 = v19;
        for (i = 0; i != v20; ++i)
        {
          if (v22 < v11)
          {
            ++v13;
            v15 += *(re::MeshAsset::skeletonAtIndex(this, v22) + 24);
          }
        }
      }

      v12 = v59;
      v16 += v60;
      ++v17;
      v5 = a4;
      v14 = v62;
    }

    while (v17 != v59);
    if (v13 > 0xFFFFFFFE)
    {
      goto LABEL_109;
    }

    if (v62 >= 0xFFFFFFFF)
    {
LABEL_110:
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of skinned instances exceeds expectations.", "skinnedMeshInstanceCount < 4294967295U", "init", 253);
      _os_crash();
      __break(1u);
      goto LABEL_111;
    }

    if (v15 >= 0xFFFFFFFF)
    {
LABEL_111:
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of skinned joints exceeds expectations.", "skinnedMeshPartJointCount < 4294967295U", "init", 254);
      _os_crash();
      __break(1u);
LABEL_112:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      v55 = v36;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v55;
      v78 = 2048;
      v79 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_113;
    }

    v23 = v62;
    v6 = v57;
    v8 = a5;
    if (v16 < 0xFFFFFFFF)
    {
      goto LABEL_24;
    }

    re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of mesh parts exceeds expectations.", "meshPartInstanceCount < 4294967295U", "init", 255);
    _os_crash();
    __break(1u);
  }

  v16 = 0;
  v23 = 0;
  v13 = 0;
LABEL_24:
  v63 = v23;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((v10 + 2), v8, 2 * v5);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((v10 + 8), v8, 2 * v6);
  v17 = v6;
  re::FixedArray<unsigned short>::init<>(v10 + 14, v8, v6);
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(v10 + 17, v8, v6);
  re::FixedArray<re::StringID>::init<>(v10 + 20, v8, v6);
  re::FixedArray<re::StringID>::init<>(v10 + 23, v8, v12);
  re::FixedArray<int>::init<>(v10 + 26, v8, v12);
  re::FixedArray<int>::init<>(v10 + 29, v8, v63);
  re::FixedArray<int>::init<>(v10 + 32, v8, v13);
  re::FixedArray<unsigned int>::init<unsigned int const&>(v10 + 35, v8, v16, re::MeshNameMap::kInvalidSkinnedPartIndex);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>((v10 + 38), v8, v6);
  v12 = (v5 + 1);
  re::FixedArray<int>::init<>(v10 + 41, v8, v12);
  re::FixedArray<int>::init<>(v10 + 44, v8, (v6 + 1));
  re::FixedArray<int>::init<>(v10 + 47, v8, v12);
  re::FixedArray<int>::init<>(v10 + 50, v8, v16);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v61 = v6;
  v26 = 0;
  v64 = 0;
  v14 = 0;
  v27 = 0;
  v67 = 0;
  do
  {
    v28 = v27;
    if (v5 <= v27)
    {
      goto LABEL_89;
    }

    v12 = a3 + 96 * v27;
    v5 = *(v12 + 80);
    v17 = v69;
    if (v69 <= v5)
    {
      goto LABEL_90;
    }

    ++*(v70 + 4 * v5);
    v17 = v67;
    v13 = v10[42];
    if (v13 <= v67)
    {
      goto LABEL_91;
    }

    *(v10[43] + 4 * v67) = v26;
    v17 = v67;
    v13 = v10[24];
    if (v13 <= v67)
    {
      goto LABEL_92;
    }

    re::StringID::operator=((v10[25] + 16 * v67), v12);
    v17 = v67;
    v13 = v10[27];
    if (v13 <= v67)
    {
      goto LABEL_93;
    }

    *(v10[28] + 4 * v67) = v5;
    v17 = v67;
    v13 = v10[48];
    if (v13 <= v67)
    {
      goto LABEL_94;
    }

    *(v10[49] + 4 * v67) = v14;
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((v10 + 2), v12, &v67);
    {
      v12 = v64;
      v17 = v10[30];
      if (v17 <= v64)
      {
        goto LABEL_106;
      }

      *(v10[31] + 4 * v64) = v67;
      if (v29)
      {
        v12 = v29;
        v30 = 0;
        v17 = 1;
        do
        {
          {
            v6 = v14;
            v13 = v10[33];
            if (v13 <= v14)
            {
              goto LABEL_87;
            }

            v13 = (v26 + v17 - 1);
            *(v10[34] + 4 * v14) = v13;
            v6 = v10[36];
            if (v6 <= v13)
            {
              goto LABEL_88;
            }

            *(v10[37] + 4 * v13) = v14;
            v14 = (v14 + 1);
          }

          v30 = v17;
          v31 = v12 > v17;
          v17 = (v17 + 1);
        }

        while (v31);
      }

      ++v64;
    }

    v33 = v32;
    if (v32)
    {
      v17 = v26;
      v12 = v10[51];
      v34 = v12 - v26;
      if (v12 < v26)
      {
        v34 = 0;
      }

      v5 = a4;
      while (v34)
      {
        v35 = v67;
        *(v10[52] + 4 * v17) = v67;
        --v34;
        ++v17;
        if (!--v33)
        {
          goto LABEL_49;
        }
      }

      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v17;
      v78 = 2048;
      v79 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_84;
    }

    v35 = v67;
    v5 = a4;
LABEL_49:
    v26 = v26 + v32;
    v27 = v35 + 1;
    v67 = v35 + 1;
  }

  while (v35 + 1 < v5);
  v12 = v10[42];
  v36 = v59;
  if (v12 <= v59)
  {
    goto LABEL_112;
  }

  *(v10[43] + 4 * v59) = v26;
  v12 = v10[48];
  if (v12 <= v59)
  {
LABEL_113:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v56 = v36;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 468;
    v76 = 2048;
    v77 = v56;
    v78 = 2048;
    v79 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  v37 = 0;
  v17 = 0;
  v5 = 0;
  v11 = 0;
  *(v10[49] + 4 * v59) = v14;
  do
  {
    v12 = *(this + 76);
    if (v12 <= v5)
    {
      goto LABEL_96;
    }

    v38 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * v5));
    v14 = v10[15];
    if (v14 <= v5)
    {
      goto LABEL_97;
    }

    v12 = v39;
    *(v10[16] + 2 * v5) = v39;
    v14 = v10[18];
    if (v14 <= v5)
    {
      goto LABEL_98;
    }

    v14 = v69;
    if (v69 <= v5)
    {
      goto LABEL_99;
    }

    v40 = v10[19];
    v41 = *(v70 + 4 * v5);
    v14 = v10[21];
    if (v14 <= v5)
    {
      goto LABEL_100;
    }

    re::StringID::operator=((v10[22] + v17), v38);
    v14 = v10[45];
    if (v14 <= v5)
    {
      goto LABEL_101;
    }

    v43 = v10[46];
    *(v43 + 4 * v5) = v11;
    v11 = (v11 + v12);
    ++v5;
    v17 += 16;
    v37 += 24;
    v12 = v61;
  }

  while (v61 != v5);
  if (v14 <= v61)
  {
LABEL_114:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 468;
    v76 = 2048;
    v77 = v12;
    v78 = 2048;
    v79 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v44 = 0;
  *(v43 + 4 * v61) = v11;
  v11 = v69;
  v45 = v70;
  v17 = v10[18];
  v46 = (a3 + 80);
  do
  {
    v47 = a4;
    if (a4 == v44)
    {
      goto LABEL_102;
    }

    v12 = *v46;
    if (v17 <= v12)
    {
      goto LABEL_103;
    }

    if (v11 <= v12)
    {
      goto LABEL_104;
    }

    v48 = v10[19] + 24 * v12;
    v14 = *(v48 + 8);
    v49 = *(v45 + 4 * v12);
    v5 = v14 - v49;
    if (v14 <= v14 - v49)
    {
      goto LABEL_105;
    }

    *(*(v48 + 16) + 4 * v5) = v44;
    --*(v45 + 4 * v12);
    ++v44;
    v46 += 24;
  }

  while (v59 != v44);
  v12 = 0;
  v13 = 48;
  v6 = 544;
  while (2)
  {
    v17 = *(this + 76);
    if (v17 <= v12)
    {
      goto LABEL_107;
    }

    v50 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * v12));
    re::MeshNameMap::addMeshAssetModelNameToMap(v10, v50, v12);
    v17 = v10[39];
    if (v17 <= v12)
    {
      goto LABEL_108;
    }

    if ((2 * v14) <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2 * v14;
    }

    v53 = v10[40] + 48 * v12;
    LOWORD(v67) = 0;
    if (v14)
    {
      v5 = 0;
      v17 = 0;
      while (1)
      {
        v26 = *(this + 76);
        if (v26 <= v12)
        {
          break;
        }

        v54 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * v12));
        v26 = *(v54 + 56);
        if (v26 <= v17)
        {
          goto LABEL_85;
        }

        v26 = v10[39];
        if (v26 <= v12)
        {
          goto LABEL_86;
        }

        re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v10[40] + 48 * v12, (*(v54 + 64) + 544 * v17 + 488), &v67);
        v5 = (v5 + 1);
        LOWORD(v67) = v5;
        v17 = v5;
        if (v14 <= v5)
        {
          goto LABEL_79;
        }
      }

LABEL_84:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 797;
      v76 = 2048;
      v77 = v12;
      v78 = 2048;
      v79 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_85:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 476;
      v76 = 2048;
      v77 = v17;
      v78 = 2048;
      v79 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_86:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v12;
      v78 = 2048;
      v79 = v26;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_87:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v6;
      v78 = 2048;
      v79 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_88:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v13;
      v78 = 2048;
      v79 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_89:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v5);
      _os_crash();
      __break(1u);
LABEL_90:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v17;
      v78 = 2048;
      v79 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v17;
      v78 = 2048;
      v79 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v17;
      v78 = 2048;
      v79 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_94:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v17;
      v78 = 2048;
      v79 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_95:
      re::internal::assertLog(6, this, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v5);
      _os_crash();
      __break(1u);
LABEL_96:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 797;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_99:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_100:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_102:
      re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v47, v47);
      _os_crash();
      __break(1u);
LABEL_103:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v12;
      v78 = 2048;
      v79 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_104:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v12;
      v78 = 2048;
      v79 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_105:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v5;
      v78 = 2048;
      v79 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_106:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v12;
      v78 = 2048;
      v79 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_107:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 797;
      v76 = 2048;
      v77 = v12;
      v78 = 2048;
      v79 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_108:
      v71 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 468;
      v76 = 2048;
      v77 = v12;
      v78 = 2048;
      v79 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_109:
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of skinned parts exceeds expectations.", "skinnedMeshPartCount < 4294967295U", "init", 252);
      _os_crash();
      __break(1u);
      goto LABEL_110;
    }

LABEL_79:
    if (++v12 != v61)
    {
      continue;
    }

    break;
  }

  ++*v10;
  re::MeshNameMap::calculateHash(v10);
  result = v68;
  if (v68)
  {
    if (v69)
    {
      return (*(*v68 + 40))();
    }
  }

  return result;
}

uint64_t re::MeshNameMap::init(uint64_t result, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a4;
  v86 = *MEMORY[0x1E69E9840];
  v8 = a2[2];
  if (v8)
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return result;
  }

  v11 = result;
  v12 = a2[12];
  v13 = a4;
  if (a4)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      if (v18 == a4)
      {
        goto LABEL_87;
      }

      v5 = *(a3 + 96 * v18 + 80);
      if (v8 <= v5)
      {
        goto LABEL_88;
      }

      v19 = (a2[4] + (v5 << 9));
      v20 = v19[21];
      if (v20)
      {
        ++v15;
        v21 = v19[23];
        do
        {
          v23 = *v21;
          v21 += 36;
          v22 = v23;
          if (v12 > v23)
          {
            ++v14;
            v16 += *(a2[14] + 112 * v22 + 24);
          }

          --v20;
        }

        while (v20);
      }

      v17 += v19[26];
      ++v18;
    }

    while (v18 != a4);
    if (v14 > 0xFFFFFFFE)
    {
      goto LABEL_109;
    }

    if (v15 >= 0xFFFFFFFF)
    {
LABEL_110:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned instances exceeds expectations.", "skinnedMeshInstanceCount < 4294967295U", "init", 253);
      _os_crash();
      __break(1u);
      goto LABEL_111;
    }

    if (v16 >= 0xFFFFFFFF)
    {
LABEL_111:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned joints exceeds expectations.", "skinnedMeshPartJointCount < 4294967295U", "init", 254);
      _os_crash();
      __break(1u);
      goto LABEL_112;
    }

    if (v17 < 0xFFFFFFFF)
    {
      goto LABEL_23;
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of mesh parts exceeds expectations.", "meshPartInstanceCount < 4294967295U", "init", 255);
    v13 = _os_crash();
    __break(1u);
  }

  v17 = 0;
  v15 = 0;
  v14 = 0;
LABEL_23:
  v5 = v13;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((v11 + 2), a5, 2 * v7);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init((v11 + 8), a5, 2 * v8);
  v6 = v8;
  re::FixedArray<unsigned short>::init<>(v11 + 14, a5, v8);
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(v11 + 17, a5, v8);
  re::FixedArray<re::StringID>::init<>(v11 + 20, a5, v8);
  re::FixedArray<re::StringID>::init<>(v11 + 23, a5, v5);
  v64 = v5;
  re::FixedArray<int>::init<>(v11 + 26, a5, v5);
  re::FixedArray<int>::init<>(v11 + 29, a5, v15);
  re::FixedArray<int>::init<>(v11 + 32, a5, v14);
  re::FixedArray<unsigned int>::init<unsigned int const&>(v11 + 35, a5, v17, re::MeshNameMap::kInvalidSkinnedPartIndex);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>((v11 + 38), a5, v8);
  re::FixedArray<int>::init<>(v11 + 41, a5, (v7 + 1));
  re::FixedArray<int>::init<>(v11 + 44, a5, (v8 + 1));
  re::FixedArray<int>::init<>(v11 + 47, a5, (v7 + 1));
  re::FixedArray<int>::init<>(v11 + 50, a5, v17);
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v63 = v8;
  v26 = 0;
  v27 = 0;
  v8 = 0;
  v28 = 0;
  v68 = 0;
  v15 = 144;
  v65 = v7;
  do
  {
    v29 = v28;
    if (v7 <= v28)
    {
      goto LABEL_89;
    }

    v30 = a3 + 96 * v28;
    v6 = *(v30 + 80);
    v5 = v70;
    if (v70 <= v6)
    {
      goto LABEL_90;
    }

    ++*(v71 + 4 * v6);
    v5 = v68;
    v7 = v11[42];
    if (v7 <= v68)
    {
      goto LABEL_91;
    }

    *(v11[43] + 4 * v68) = v26;
    v5 = v68;
    v7 = v11[24];
    if (v7 <= v68)
    {
      goto LABEL_92;
    }

    re::StringID::operator=((v11[25] + 16 * v68), v30);
    v5 = v68;
    v7 = v11[27];
    if (v7 <= v68)
    {
      goto LABEL_93;
    }

    *(v11[28] + 4 * v68) = v6;
    v5 = v68;
    v7 = v11[48];
    if (v7 <= v68)
    {
      goto LABEL_94;
    }

    *(v11[49] + 4 * v68) = v8;
    v31 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((v11 + 2), v30, &v68);
    v5 = a2[2];
    if (v5 <= v6)
    {
      goto LABEL_95;
    }

    v32 = (a2[4] + (v6 << 9));
    v33 = v32[21];
    if (v33)
    {
      v5 = v27;
      v7 = v11[30];
      if (v7 <= v27)
      {
        goto LABEL_106;
      }

      v34 = 0;
      *(v11[31] + 4 * v27) = v68;
      v35 = v32[23];
      v36 = 1;
      do
      {
        if (v12 > *(v35 + 144 * v34))
        {
          v5 = v8;
          v7 = v11[33];
          if (v7 <= v8)
          {
            goto LABEL_82;
          }

          v7 = v26 + v36 - 1;
          *(v11[34] + 4 * v8) = v7;
          v5 = v11[36];
          if (v5 <= v7)
          {
            goto LABEL_83;
          }

          *(v11[37] + 4 * v7) = v8;
          v8 = (v8 + 1);
        }

        v34 = v36;
      }

      while (v33 > v36++);
      ++v27;
    }

    v38 = v32[26];
    v39 = v38;
    if (v38)
    {
      v6 = v26;
      v7 = v11[51];
      v40 = v7 - v26;
      if (v7 < v26)
      {
        v40 = 0;
      }

      while (v40)
      {
        v41 = v68;
        *(v11[52] + 4 * v6) = v68;
        --v40;
        ++v6;
        if (!--v39)
        {
          goto LABEL_47;
        }
      }

      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v6;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_82:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v5;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_83:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v7;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_84:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 797;
      v77 = 2048;
      v78 = v8;
      v79 = 2048;
      v80 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_85:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 797;
      v77 = 2048;
      v78 = v6;
      v79 = 2048;
      v80 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_86:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v8;
      v79 = 2048;
      v80 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_87:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v7);
      _os_crash();
      __break(1u);
LABEL_88:
      v69 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 797;
      v77 = 2048;
      v78 = v5;
      v79 = 2048;
      v80 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_89:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, v7);
      _os_crash();
      __break(1u);
LABEL_90:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v6;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v5;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v5;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v5;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_94:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v5;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_95:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 797;
      v77 = 2048;
      v78 = v6;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_96:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 797;
      v77 = 2048;
      v78 = v12;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v12;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v12;
      v79 = 2048;
      v80 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_99:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v12;
      v79 = 2048;
      v80 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_100:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v12;
      v79 = 2048;
      v80 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v12;
      v79 = 2048;
      v80 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_102:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v53);
      _os_crash();
      __break(1u);
LABEL_103:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v8;
      v79 = 2048;
      v80 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_104:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v8;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_105:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v6;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_106:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v5;
      v79 = 2048;
      v80 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_107:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 797;
      v77 = 2048;
      v78 = v8;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_108:
      v72 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v73 = 136315906;
      v74 = "operator[]";
      v75 = 1024;
      v76 = 468;
      v77 = 2048;
      v78 = v8;
      v79 = 2048;
      v80 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_109:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned parts exceeds expectations.", "skinnedMeshPartCount < 4294967295U", "init", 252);
      _os_crash();
      __break(1u);
      goto LABEL_110;
    }

    v41 = v68;
LABEL_47:
    v26 += v38;
    v28 = v41 + 1;
    v68 = v41 + 1;
    v7 = v65;
  }

  while (v41 + 1 < v65);
  v5 = v11[42];
  v42 = v64;
  if (v5 <= v64)
  {
LABEL_112:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v62 = v42;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    v76 = 468;
    v77 = 2048;
    v78 = v62;
    v79 = 2048;
    v80 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_113;
  }

  *(v11[43] + 4 * v64) = v26;
  v5 = v11[48];
  if (v5 <= v64)
  {
LABEL_113:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v8 = v42;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    v76 = 468;
    v77 = 2048;
    v78 = v8;
    v79 = 2048;
    v80 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  v15 = 0;
  v43 = 0;
  v7 = 0;
  v12 = 0;
  v6 = 0;
  *(v11[49] + 4 * v64) = v8;
  v44 = a2;
  do
  {
    v5 = v44[2];
    if (v5 <= v12)
    {
      goto LABEL_96;
    }

    v5 = v11[15];
    if (v5 <= v12)
    {
      goto LABEL_97;
    }

    v45 = (v44[4] + v15);
    v5 = v45[26];
    *(v11[16] + 2 * v12) = v5;
    v8 = v11[18];
    if (v8 <= v12)
    {
      goto LABEL_98;
    }

    v8 = v70;
    if (v70 <= v12)
    {
      goto LABEL_99;
    }

    v46 = v11[19];
    v47 = *(v71 + 4 * v12);
    v8 = v11[21];
    if (v8 <= v12)
    {
      goto LABEL_100;
    }

    v31 = re::StringID::operator=((v11[22] + v7), v45);
    v8 = v11[45];
    v44 = a2;
    if (v8 <= v12)
    {
      goto LABEL_101;
    }

    v49 = v11[46];
    *(v49 + 4 * v12) = v6;
    v6 = (v6 + v5);
    ++v12;
    v7 += 16;
    v43 += 24;
    v15 += 512;
  }

  while (v63 != v12);
  v15 = v63;
  if (v8 <= v63)
  {
LABEL_114:
    v72 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v73 = 136315906;
    v74 = "operator[]";
    v75 = 1024;
    v76 = 468;
    v77 = 2048;
    v78 = v15;
    v79 = 2048;
    v80 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v50 = 0;
  *(v49 + 4 * v63) = v6;
  v7 = v70;
  v51 = v71;
  v12 = v11[18];
  v52 = (a3 + 80);
  do
  {
    v53 = v65;
    if (v65 == v50)
    {
      goto LABEL_102;
    }

    v8 = *v52;
    if (v12 <= v8)
    {
      goto LABEL_103;
    }

    if (v7 <= v8)
    {
      goto LABEL_104;
    }

    v54 = v11[19] + 24 * v8;
    v5 = *(v54 + 8);
    v55 = *(v51 + 4 * v8);
    v6 = v5 - v55;
    if (v5 <= v5 - v55)
    {
      goto LABEL_105;
    }

    *(*(v54 + 16) + 4 * v6) = v50;
    --*(v51 + 4 * v8);
    ++v50;
    v52 += 24;
  }

  while (v64 != v50);
  v8 = 0;
  v12 = 48;
  while (2)
  {
    v5 = a2[2];
    if (v5 <= v8)
    {
      goto LABEL_107;
    }

    v56 = a2[4] + (v8 << 9);
    v57 = *(v56 + 208);
    re::MeshNameMap::addMeshAssetModelNameToMap(v11, v56, v8);
    v5 = v11[39];
    if (v5 <= v8)
    {
      goto LABEL_108;
    }

    if ((2 * v57) <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2 * v57;
    }

    v60 = v11[40] + 48 * v8;
    LOWORD(v68) = 0;
    if (v57)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v30 = a2[2];
        if (v30 <= v8)
        {
          goto LABEL_84;
        }

        v61 = a2[4] + (v8 << 9);
        v30 = *(v61 + 208);
        if (v30 <= v6)
        {
          goto LABEL_85;
        }

        v30 = v11[39];
        if (v30 <= v8)
        {
          goto LABEL_86;
        }

        re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v11[40] + 48 * v8, (*(v61 + 224) + (v6 << 8) + 72), &v68);
        v5 = (v5 + 1);
        LOWORD(v68) = v5;
        v6 = v5;
      }

      while (v57 > v5);
    }

    if (++v8 != v63)
    {
      continue;
    }

    break;
  }

  ++*v11;
  re::MeshNameMap::calculateHash(v11);
  result = v69;
  if (v69)
  {
    if (v70)
    {
      return (*(*v69 + 40))();
    }
  }

  return result;
}

uint64_t re::MeshNameMap::deinit(re::MeshNameMap *this)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 2);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 17);
  re::FixedArray<re::StringID>::deinit(this + 20);
  re::FixedArray<re::StringID>::deinit(this + 23);
  re::FixedArray<CoreIKTransform>::deinit(this + 26);
  re::FixedArray<CoreIKTransform>::deinit(this + 29);
  re::FixedArray<CoreIKTransform>::deinit(this + 32);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::deinit(this + 38);
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 44);
  re::FixedArray<CoreIKTransform>::deinit(this + 47);
  result = re::FixedArray<CoreIKTransform>::deinit(this + 50);
  ++*this;
  *(this + 1) = 0;
  return result;
}

uint64_t re::MeshNameMap::meshPartInstanceCount(re::MeshNameMap *this, unsigned int a2)
{
  v2 = a2 + 1;
  v3 = *(this + 42);
  if (v3 <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v3 <= a2)
  {
    goto LABEL_5;
  }

  return (*(*(this + 43) + 4 * v2) - *(*(this + 43) + 4 * a2));
}

uint64_t re::MeshNameMap::instanceIndex(re::MeshNameMap *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(this + 4) + 32 * v6 + 24);
  }
}

uint64_t re::MeshNameMap::modelIndex(re::MeshNameMap *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, a2, v4 ^ (v4 >> 31), v16);
  if (v17 != 0x7FFFFFFF)
  {
    return *(*(this + 10) + 32 * v17 + 24);
  }

  v5 = *(a2 + 1);
  v6 = strlen(v5);
  v9 = v8;
  v14 = 0;
  v15 = &str_67;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ (v14 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ (v14 >> 1))) >> 27));
  v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, &v14, v10 ^ (v10 >> 31), v16);
  if (v17 == 0x7FFFFFFF)
  {
    if (v14)
    {
      if (v14)
      {
      }
    }

    return 0xFFFFLL;
  }

  else
  {
    v13 = *(this + 10) + 32 * v17;
    if (v14)
    {
      if (v14)
      {
      }
    }

    return *(v13 + 24);
  }
}

uint64_t re::anonymous namespace::meshModelTrimmedName(uint64_t result, unint64_t a2)
{
  v6[0] = result;
  v6[1] = a2;
  v3 = a2 + 1;
  for (i = a2; i; --i)
  {
    v5 = *(result - 1 + i);
    --v3;
    if (v5 == 47)
    {
      return re::Slice<char>::range(v6, v3, a2);
    }
  }

  return result;
}

uint64_t re::MeshNameMap::modelIndex(re::MeshNameMap *this, unsigned int a2)
{
  if (*(this + 27) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 28) + 4 * a2);
}

uint64_t re::MeshNameMap::partIndex(re::MeshNameMap *this, unsigned int a2, const re::StringID *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 39) <= a2)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 40) + 48 * a2;
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5, v3, a3);
  if (HIDWORD(v5[0]) == 0x7FFFFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(v3 + 16) + 32 * HIDWORD(v5[0]) + 24);
  }
}

uint64_t re::MeshNameMap::meshPartStartIndexForInstance(re::MeshNameMap *this, unsigned int a2)
{
  if (*(this + 42) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 43) + 4 * a2);
}

uint64_t re::MeshNameMap::skinnedPartIndexForPartInstance(re::MeshNameMap *this, unsigned int a2)
{
  if (*(this + 36) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 37) + 4 * a2);
}

uint64_t *re::MeshNameMap::meshInstancePartsForIdentifier@<X0>(uint64_t this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = this;
  v47 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (v5 == 3)
  {
    v6 = *(this + 408);
    if (v6)
    {
      v7 = *(this + 416);
      v9 = *(this + 336);
      v8 = *(this + 344);
      v10 = re::globalAllocators(this)[2];
      *(&v43 + 1) = v10;
      v11 = (*(*v10 + 32))(v10, 40, 0);
      *v11 = &unk_1F5D06640;
      v11[1] = v7;
      v11[2] = v6;
      v11[3] = v8;
      v11[4] = v9;
      *&v44 = v11;
      *a3 = v6;
LABEL_4:
      a3[4] = v10;
LABEL_5:
      a3[5] = 0;
      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>((a3 + 1), buf);
      return re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(buf);
    }

    goto LABEL_39;
  }

  v14 = a2[4];
  if (v14 && *v14)
  {
    if (v5 == 2)
    {
      this = re::MeshNameMap::modelIndex(this, (a2 + 1));
      if (this == 0xFFFF)
      {
        goto LABEL_39;
      }

      v33 = this;
      if (v3[39] > this)
      {
        v34 = v3[40] + 48 * this;
        this = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, v34, a2 + 3);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          goto LABEL_39;
        }

        if (v3[18] > v33)
        {
          v35 = *(v34 + 16) + 32 * *&buf[12];
          v36 = v3[19] + 24 * v33;
          v38 = *(v36 + 8);
          v37 = *(v36 + 16);
          v39 = *(v35 + 24);
          v10 = re::globalAllocators(this)[2];
          *(&v43 + 1) = v10;
          v40 = (*(*v10 + 32))(v10, 32, 0);
          *v40 = &unk_1F5D065E8;
          *(v40 + 8) = v37;
          *(v40 + 16) = v38;
          *(v40 + 24) = v39;
          *&v44 = v40;
          *a3 = v38;
          goto LABEL_4;
        }

LABEL_48:
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      goto LABEL_44;
    }

    if (v5 == 1)
    {
      v15 = 0xBF58476D1CE4E5B9 * ((a2[1] >> 31) ^ (a2[1] >> 1));
      this = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, a2 + 1, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), buf);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        goto LABEL_39;
      }

      v16 = *(v3[4] + 32 * *&buf[12] + 24);
      if (v3[27] > v16)
      {
        v17 = *(v3[28] + 4 * v16);
        if (v3[39] > v17)
        {
          v18 = v3[40] + 48 * v17;
          this = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, v18, a2 + 3);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            goto LABEL_39;
          }

          v19 = *(*(v18 + 16) + 32 * *&buf[12] + 24);
          v20 = re::globalAllocators(this)[2];
          *(&v43 + 1) = v20;
          *&v44 = buf;
          *buf = &unk_1F5D06590;
          *&buf[8] = v16 | (v19 << 32);
          *a3 = 1;
LABEL_23:
          a3[4] = v20;
          goto LABEL_5;
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v31 = *re::graphicsLogObjects(this);
    this = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (!this)
    {
      goto LABEL_39;
    }

    v41 = *a2;
    *buf = 67109120;
    *&buf[4] = v41;
LABEL_38:
    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "Invalid mesh identifier type detected: %u.", buf, 8u);
    goto LABEL_39;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((a2[1] >> 31) ^ (a2[1] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((a2[1] >> 31) ^ (a2[1] >> 1))) >> 27));
      this = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, a2 + 1, v21 ^ (v21 >> 31), buf);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        goto LABEL_39;
      }

      v22 = *(v3[4] + 32 * *&buf[12] + 24);
      if (v22 == 0xFFFF)
      {
        goto LABEL_39;
      }

      if (v3[27] > v22)
      {
        v23 = *(v3[28] + 4 * v22);
        if (v3[15] > v23)
        {
          v24 = v3[16];
          v25 = *(v24 + 2 * v23);
          if (!*(v24 + 2 * v23))
          {
            goto LABEL_39;
          }

          v20 = re::globalAllocators(this)[2];
          *buf = &unk_1F5D064D0;
          *&buf[8] = v22;
          *(&v43 + 1) = v20;
          *&v44 = buf;
          *a3 = v25;
          goto LABEL_23;
        }

        goto LABEL_47;
      }

LABEL_46:
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_48;
    }

    v31 = *re::graphicsLogObjects(this);
    this = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (!this)
    {
      goto LABEL_39;
    }

    v32 = *a2;
    *buf = 67109120;
    *&buf[4] = v32;
    goto LABEL_38;
  }

  this = re::MeshNameMap::modelIndex(this, (a2 + 1));
  if (this == 0xFFFF)
  {
    goto LABEL_39;
  }

  if (v3[18] <= this)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  if (v3[15] <= this)
  {
LABEL_42:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  v26 = v3[19] + 24 * this;
  v27 = *(v26 + 8);
  v28 = *(v3[16] + 2 * this);
  if (v27 * v28)
  {
    v29 = *(v26 + 16);
    v10 = re::globalAllocators(this)[2];
    *(&v43 + 1) = v10;
    v30 = (*(*v10 + 32))(v10, 32, 0);
    *v30 = &unk_1F5D06538;
    *(v30 + 8) = v29;
    *(v30 + 16) = v27;
    *(v30 + 24) = v28;
    *&v44 = v30;
    *a3 = v27 * v28;
    goto LABEL_4;
  }

LABEL_39:
  *a3 = 0;
  result = re::globalAllocators(this);
  a3[4] = result[2];
  a3[5] = 0;
  return result;
}

void re::MeshNameMap::addMeshAssetModelNameToMap(re::MeshNameMap *this, StringID *a2, int a3)
{
  v14 = a3;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 64, a2, &v14);
  v5 = strlen(a2->var1);
  v8 = v7;
  var1 = a2->var1;
  v10 = strlen(var1);
  if (v10 != v8 || (v10 = memcmp(v6, var1, v8), v10))
  {
    v12 = 0;
    v13 = &str_67;
    v11 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 64, &v12, &v14);
    if (v12)
    {
      if (v12)
      {
      }
    }
  }
}

uint64_t re::MeshNameMap::estimateFootprint(re::MeshNameMap *this)
{
  v2 = (*(this + 10) << 6) + 424;
  v3 = *(this + 12);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 4);
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
        LODWORD(v4) = *(this + 12);
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
    v7 = *(this + 4);
    do
    {
      v8 = v7 + 32 * v4;
      v10 = *(v8 + 8);
      v9 = v8 + 8;
      if (v10)
      {
        v11 = strlen(*(v9 + 8)) + 1;
      }

      else
      {
        v11 = 0;
      }

      v2 += v11;
      if (v3 <= v4 + 1)
      {
        v12 = v4 + 1;
      }

      else
      {
        v12 = v3;
      }

      while (v12 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 32 * v4) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v4) = v12;
LABEL_20:
      ;
    }

    while (v4 != v3);
  }

  v13 = v2 + (*(this + 22) << 6);
  v14 = *(this + 24);
  if (v14)
  {
    v15 = 0;
    v16 = *(this + 10);
    while (1)
    {
      v17 = *v16;
      v16 += 8;
      if (v17 < 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        LODWORD(v15) = *(this + 24);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 != v14)
  {
    v18 = *(this + 10);
    do
    {
      v19 = v18 + 32 * v15;
      v21 = *(v19 + 8);
      v20 = v19 + 8;
      if (v21)
      {
        v22 = strlen(*(v20 + 8)) + 1;
      }

      else
      {
        v22 = 0;
      }

      v13 += v22;
      if (v14 <= v15 + 1)
      {
        v23 = v15 + 1;
      }

      else
      {
        v23 = *(this + 24);
      }

      while (v23 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(v18 + 32 * v15) & 0x80000000) != 0)
        {
          goto LABEL_40;
        }
      }

      LODWORD(v15) = v23;
LABEL_40:
      ;
    }

    while (v15 != v14);
  }

  v24 = *(this + 18);
  v25 = v13 + 2 * *(this + 15) + 24 * v24;
  if (v24)
  {
    v26 = (*(this + 19) + 8);
    do
    {
      v27 = *v26;
      v26 += 3;
      v25 += 4 * v27;
      --v24;
    }

    while (v24);
  }

  v28 = *(this + 21);
  v29 = v25 + 16 * v28;
  if (v28)
  {
    v30 = 16 * v28;
    v31 = (*(this + 22) + 8);
    do
    {
      if (*(v31 - 1))
      {
        v32 = strlen(*v31) + 1;
      }

      else
      {
        v32 = 0;
      }

      v29 += v32;
      v31 += 2;
      v30 -= 16;
    }

    while (v30);
  }

  v33 = *(this + 24);
  v34 = v29 + 16 * v33;
  if (v33)
  {
    v35 = (*(this + 25) + 8);
    do
    {
      if (*(v35 - 1))
      {
        v36 = strlen(*v35) + 1;
      }

      else
      {
        v36 = 0;
      }

      v34 += v36;
      v35 += 2;
      --v33;
    }

    while (v33);
  }

  v37 = *(this + 39);
  v38 = v34 + 48 * v37 + 4 * (*(this + 30) + *(this + 27) + *(this + 33) + *(this + 36));
  if (v37)
  {
    for (i = 0; i != v37; ++i)
    {
      v40 = *(this + 40) + 48 * i;
      v41 = *(v40 + 32);
      if (v41)
      {
        v42 = 0;
        v43 = *(v40 + 16);
        while (1)
        {
          v44 = *v43;
          v43 += 8;
          if (v44 < 0)
          {
            break;
          }

          if (v41 == ++v42)
          {
            LODWORD(v42) = *(v40 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v42) = 0;
      }

      v38 += 30 * *(v40 + 24) + ((30 * *(v40 + 24) + 15) & 0x3FFFFFFFF0);
      if (v42 != v41)
      {
        v45 = *(v40 + 16);
        do
        {
          v46 = v45 + 32 * v42;
          v48 = *(v46 + 8);
          v47 = v46 + 8;
          if (v48)
          {
            v49 = strlen(*(v47 + 8)) + 1;
          }

          else
          {
            v49 = 0;
          }

          v38 += v49;
          if (v41 <= v42 + 1)
          {
            v50 = v42 + 1;
          }

          else
          {
            v50 = v41;
          }

          while (v50 - 1 != v42)
          {
            LODWORD(v42) = v42 + 1;
            if ((*(v45 + 32 * v42) & 0x80000000) != 0)
            {
              goto LABEL_77;
            }
          }

          LODWORD(v42) = v50;
LABEL_77:
          ;
        }

        while (v42 != v41);
      }
    }
  }

  return v38 + 4 * (*(this + 45) + *(this + 42) + *(this + 48));
}

void *re::MeshNameMap::calculateHash(void *this)
{
  v1 = this;
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = this[21];
  if (v2)
  {
    v3 = 0;
    v4 = this[22];
    v5 = 16 * v2;
    do
    {
      v6 = *v4;
      v4 += 2;
      v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) >> 27));
      v3 ^= (v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + (v7 ^ (v7 >> 31));
      v5 -= 16;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  v8 = this[24];
  if (v8)
  {
    v9 = this[25];
    v10 = 16 * v8;
    do
    {
      v11 = *v9;
      v9 += 2;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v11 >> 31) ^ (v11 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v11 >> 31) ^ (v11 >> 1))) >> 27));
      v3 ^= (v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + (v12 ^ (v12 >> 31));
      v10 -= 16;
    }

    while (v10);
  }

  v13 = this[36];
  if (v13)
  {
    this = MurmurHash3_x64_128(this[37], v13, 0, v14);
    v3 ^= (v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + ((v14[1] - 0x61C8864680B583E9 + (v14[0] << 6) + (v14[0] >> 2)) ^ v14[0]);
  }

  *(v1 + 8) = v3;
  return this;
}

void *re::allocInfo_MeshInstanceAndPartIndex(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_453, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_453))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B99C8, "MeshInstanceAndPartIndex");
    __cxa_guard_release(&_MergedGlobals_453);
  }

  return &unk_1EE1B99C8;
}

void re::initInfo_MeshInstanceAndPartIndex(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xCB11BF4FA32C06D4;
  v15[1] = "MeshInstanceAndPartIndex";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B99B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B99B0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "instanceIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B99B8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint16_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "partIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B99C0 = v13;
      __cxa_guard_release(&qword_1EE1B99B0);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B99B8;
  *(this + 9) = re::internal::defaultConstruct<re::MeshInstanceAndPartIndex>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshInstanceAndPartIndex>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshInstanceAndPartIndex>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshInstanceAndPartIndex>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

uint64_t re::internal::defaultConstructV2<re::MeshInstanceAndPartIndex>(uint64_t result)
{
  *result = -1;
  *(result + 4) = -1;
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForInstance(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D064D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForInstance(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D064D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

unint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForModel(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  v5 = *a2 / v4;
  v6 = *(a1 + 16);
  if (v6 > v5)
  {
    return *(*(a1 + 8) + 4 * (*a2 / v4)) | ((*a2 % v4) << 32);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v6, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForModel(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06538;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForModel(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06538;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D06590;
  a2[1] = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D06590;
  a2[1] = *(a1 + 8);
  return a2;
}

unint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_1,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  if (v5 > *a2)
  {
    return *(*(a1 + 8) + 4 * v4) | (*(a1 + 24) << 32);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v5, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_1,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D065E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_1,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D065E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

unint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_2,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator()(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[2];
  if (v3 <= *a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *a2, v3);
    v5 = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(a1[1] + 4 * v2);
    v6 = a1[4];
    if (v6 > v5)
    {
      return v5 & 0xFFFF0000FFFFFFFFLL | ((v2 - *(a1[3] + 4 * v5)) << 32);
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_2,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06640;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_2,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06640;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3)
  {
    v4 = result;
    result = (*(*a2 + 32))(a2, 48 * a3, 8);
    *(v4 + 16) = result;
    if (result)
    {
      v6 = a3 - 1;
      if (a3 != 1)
      {
        do
        {
          *(result + 16) = 0uLL;
          *(result + 32) = 0uLL;
          *result = 0uLL;
          *(result + 36) = 0x7FFFFFFF;
          result += 48;
          --v6;
        }

        while (v6);
      }

      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 36) = 0x7FFFFFFF;
    }

    else
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

re::StringID *re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _WORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v8, a1, a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v9, v8);
    result = re::StringID::StringID((v7 + 8), a2);
    *(v7 + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 + 8);
                *(v21 + 8) = *(v21 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v29[16];
                *(v21 + 24) = *(*&v29[16] + v17 + 24);
                v16 = *&v29[32];
              }

              ++v18;
              v17 += 32;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 32 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 32 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 32 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 32 * v4;
}

uint64_t re::anonymous namespace::MeshAssetAccessor::partCount(re::_anonymous_namespace_::MeshAssetAccessor *this, unint64_t a2)
{
  if (*(this + 76) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * a2)) + 56);
}

uint64_t re::anonymous namespace::MeshAssetAccessor::skinnedPartCount(re::_anonymous_namespace_::MeshAssetAccessor *this, unint64_t a2)
{
  if (*(this + 76) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * a2)) + 224);
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t re::anonymous namespace::MeshAssetAccessor::skeletonIndexForModelPart(re::_anonymous_namespace_::MeshAssetAccessor *this, unint64_t a2, unint64_t a3)
{
  if (*(this + 76) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * a2)) + 224);
  if (v4 && *(v4 + 8) > a3)
  {
    return *(*(v4 + 16) + 88 * a3 + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

re::ShaderManager *re::ShaderManager::ShaderManager(re::ShaderManager *this)
{
  *this = 0u;
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 140) = 0x7FFFFFFFLL;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 102) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 412) = 0x7FFFFFFFLL;
  *(this + 114) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 492) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 508) = 0x7FFFFFFFLL;
  *(this + 260) = 0;
  *(this + 131) = 0;
  *(this + 264) = 256;
  *(this + 530) = 0;
  re::makeDepthPixelFormatPredictions(this + 536);
  re::makeStencilPixelFormatPredictions(this + 584);
  re::makeSampleCountPredictions(this + 632);
  re::makePixel0FormatsPredictions(this + 680);
  re::makePixel1FormatsPredictions(this + 728);
  Pixel2FormatsPredictions = re::makePixel2FormatsPredictions(this + 776);
  *(this + 824) = 0;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 108) = 850045863;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 115) = 0;
  v3 = re::globalAllocators(Pixel2FormatsPredictions);
  *(this + 120) = v3[2];
  *(this + 121) = 0;
  *(this + 125) = re::globalAllocators(v3)[2];
  *(this + 126) = 0;
  return this;
}

void re::ShaderManager::~ShaderManager(re::ShaderManager *this)
{
  re::FunctionBase<24ul,void ()(unsigned long long,re::Function<void ()(void)> const&)>::destroyCallable(this + 976);
  re::FunctionBase<24ul,void ()(re::Function<void ()(void)> const&)>::destroyCallable(this + 936);
  std::mutex::~mutex((this + 864));

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 97);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 91);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 85);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 79);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 73);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 67);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 59);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 432);
  re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 47);

  re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 38);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 32);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 208);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 160);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 104);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 7);
  re::BucketArray<re::CachedMetalFunction,64ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

BOOL re::ShaderManager::init(re::ShaderManager *this, id *a2, char a3)
{
  re::ObjCObject::operator=(this + 44, a2 + 26);
  v44 = 0x100000001;
  LODWORD(v45) = 0;
  v46 = 0;
  re::dispatch::Queue::make("com.apple.re.specializedPSOCompiler", &v44, &v40);
  v6 = (this + 832);
  if ((this + 832) != &v40)
  {
    v7 = v40;
    v40 = 0;
    v8 = *v6;
    *v6 = v7;
  }

  re::dispatch::Queue::global(0x21, 0, &v48);
  v44 = 0x100000000;
  LODWORD(v45) = 1;
  v46 = &v48;
  re::dispatch::Queue::make("com.apple.re.fallbackPSOCompiler", &v44, &v40);
  v9 = (this + 848);
  if ((this + 848) != &v40)
  {
    v10 = v40;
    v40 = 0;
    v11 = *v9;
    *v9 = v10;
  }

  v44 = 0x100000000;
  LODWORD(v45) = 0;
  v46 = 0;
  re::dispatch::Queue::make("com.apple.re.fallbackPSOProducer", &v44, &v40);
  v12 = (this + 856);
  if ((this + 856) != &v40)
  {
    v13 = v40;
    v40 = 0;
    v14 = *v12;
    *v12 = v13;
  }

  if ((atomic_load_explicit(&qword_1EE1B9A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9A60))
  {
    re::Defaults::intValue("compilationQueueWidth", v36, &v44);
    if (v44)
    {
      v37 = HIDWORD(v44);
    }

    else
    {
      v37 = 2;
    }

    dword_1EE1B9A5C = v37;
    __cxa_guard_release(&qword_1EE1B9A60);
  }

  v15 = dispatch_semaphore_create(dword_1EE1B9A5C);

  v16 = *(this + 105);
  *(this + 105) = v15;

  re::Bundle::testData(&v47);
  if (!v47)
  {
    re::Bundle::application(&v44);
    v18 = v44;
    v44 = 0;
    v19 = v47;
    v47 = v18;
  }

  re::Defaults::BOOLValue("useSolariumMetallib", v17, &v44);
  if (v44)
  {
    v20 = BYTE1(v44);
  }

  else
  {
    v20 = a3;
  }

  re::Bundle::findFile(&v47, "default.metallib", &v44);
  if (v45)
  {
    v21 = v46;
  }

  else
  {
    v21 = (&v45 + 1);
  }

  re::mtl::Device::newLibraryWithURL(this + 44, v21, &v40);
  v22 = (this + 360);
  if ((this + 360) != &v40)
  {
    v23 = v40;
    v40 = 0;
    v24 = *v22;
    *v22 = v23;
  }

  if (*v22)
  {
    if (v45)
    {
      v25 = v46;
    }

    else
    {
      v25 = &v45 + 1;
    }

    LibraryHash = re::ShaderManager::getLibraryHash(this, v25);
    re::ShaderManager::installLibrary(this, LibraryHash, this + 45);
    if (v45)
    {
      v27 = v46;
    }

    else
    {
      v27 = &v45 + 1;
    }

    v40 = re::ShaderManager::getLibraryHash(this, v27);
    v28 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 376, &v40);
    v29 = v40;
    if (!v28)
    {
      v29 = 0;
    }

    *(this + 46) = v29;
  }

  if (v20)
  {
    re::Bundle::findFile(&v47, "mxi.metallib", &v40);
    if (v41)
    {
      v30 = v43;
    }

    else
    {
      v30 = v42;
    }

    re::mtl::Device::newLibraryWithURL(this + 44, v30, &v39);
    v31 = v39;
    if (v39)
    {
      if (v41)
      {
        v32 = v43;
      }

      else
      {
        v32 = v42;
      }

      v33 = re::ShaderManager::getLibraryHash(this, v32);
      re::ShaderManager::installLibrary(this, v33, &v39);
      v31 = v39;
    }

    if (v40 && (v41 & 1) != 0)
    {
      (*(v40->isa + 5))();
    }
  }

  if (*(a2 + 205) == 1)
  {
    re::ShaderManager::loadBinaryArchives(this, &v47, v20 & 1);
  }

  atomic_store(0, this + 232);
  v34 = *(this + 45);
  if (v34 && (v20 & 1) == 0)
  {
    v38 = v34;
    re::APIFunctionCache::init(this + 256, &v38);
  }

  if (v44 && (v45 & 1) != 0)
  {
    (*(*v44 + 40))();
  }

  return v34 != 0;
}

uint64_t re::ShaderManager::loadBinaryArchives(re::ShaderManager *this, const re::Bundle *a2, int a3)
{
  re::Defaults::BOOLValue("generateBinaryArchiveOnDevice", a2, &v33);
  if (v33)
  {
    v7 = v34;
  }

  else
  {
    v7 = 0;
  }

  *(this + 520) = v7;
  re::Defaults::BOOLValue("disableBinaryArchives", v6, &v33);
  if (v33)
  {
    v9 = v34;
  }

  else
  {
    v9 = 0;
  }

  *(this + 521) = v9;
  re::Defaults::BOOLValue("harvestAllPipelines", v8, &v33);
  if (v33)
  {
    v11 = v34;
  }

  else
  {
    v11 = 0;
  }

  *(this + 528) = v11;
  if (*(this + 520) == 1)
  {
    re::ShaderManager::makeAndAddBinaryArchive(this, 0, "testOnDeviceArchive");
  }

  re::Defaults::stringValue("binaryArchiveInputPath", v10, &v33);
  if (v33 == 1)
  {
    if (v36)
    {
      v13 = *&v37[7];
    }

    else
    {
      v13 = v37;
    }

    v12 = re::ShaderManager::makeAndAddBinaryArchive(this, v13, "testInputArchive");
  }

  if (a3)
  {
    v26 = "mxi-binaryarchive.metallib";
    v27 = 26;
    re::DynamicString::operator=(&v29, &v26);
  }

  if (v30)
  {
    v14 = v32;
  }

  else
  {
    v14 = v31;
  }

  re::Bundle::findFile(a2, v14, &v26);
  v16 = v27 >> 1;
  if ((v27 & 1) == 0)
  {
    v16 = v27 >> 1;
  }

  if (v16)
  {
    if (v27)
    {
      v17 = v28;
    }

    else
    {
      v17 = &v27 + 1;
    }

    if (v30)
    {
      v18 = v32;
    }

    else
    {
      v18 = v31;
    }

    re::ShaderManager::makeAndAddBinaryArchive(this, v17, v18);
  }

  if (a3)
  {
    *(this + 529) = 0;
  }

  re::Defaults::BOOLValue("useMPSBinaryArchive", v15, &v24);
  if (v24 == 1 && (BYTE1(v24) & 1) != 0)
  {
    v24 = "mps-binaryarchive.metallib";
    v25 = 26;
    re::DynamicString::operator=(&v29, &v24);
    if (v30)
    {
      v19 = v32;
    }

    else
    {
      v19 = v31;
    }

    re::Bundle::findFile(a2, v19, &v24);
    re::DynamicString::operator=(&v26, &v24);
    if (v24 && (v25 & 1) != 0)
    {
      (*(*v24 + 40))();
    }

    v20 = v27 >> 1;
    if ((v27 & 1) == 0)
    {
      v20 = v27 >> 1;
    }

    if (v20)
    {
      v21 = (v27 & 1) != 0 ? v28 : &v27 + 1;
      v22 = (v30 & 1) != 0 ? v32 : v31;
      if (re::ShaderManager::makeAndAddBinaryArchive(this, v21, v22))
      {
        re::mtl::Device::setMPSBinaryArchives(this + 44, this + 432);
      }
    }
  }

  *(this + 530) = 1;
  if (v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  result = v29;
  if (v29 && (v30 & 1) != 0)
  {
    result = (*(*v29 + 40))();
  }

  if (v33 == 1)
  {
    result = v35;
    if (v35)
    {
      if (v36)
      {
        return (*(*v35 + 40))();
      }
    }
  }

  return result;
}

void re::ShaderManager::prepareForDeinit(re::ShaderManager *this)
{
  std::mutex::lock((this + 864));
  atomic_store(1u, this + 824);
  std::mutex::unlock((this + 864));
  v2 = (this + 928);
  v3 = atomic_load(v2);
  if (v3 >= 1)
  {
    do
    {
      do
      {
        __ulock_wait();
        v4 = atomic_load(v2);
      }

      while (v4 == v3);
      v3 = atomic_load(v2);
    }

    while (v3 > 0);
  }
}

re *re::ShaderManager::deinit(re::ShaderManager *this, const char *a2)
{
  re::ShaderManager::serializeBinaryArchive(this, a2);
  v3 = *(this + 45);
  *(this + 45) = 0;

  re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(this + 376);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 85);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 91);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 67);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 73);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 79);

  return re::APIFunctionCache::deinit((this + 256));
}

void re::ShaderManager::serializeBinaryArchive(re::ShaderManager *this, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 520) != 1)
  {
    return;
  }

  re::Defaults::stringValue("binaryArchiveOutputPath", a2, v10);
  if (v10[0] == 1)
  {
    if (v12)
    {
      v4 = *&v13[7];
    }

    else
    {
      v4 = v13;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath_];
    if (!*(this + 56))
    {
      v14 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = 0;
      v21 = 2048;
      v22 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v7 = [**(this + 58) serializeToURL:v6 error:0];
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = *re::graphicsLogObjects(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v9 = "Binary archive serialization successful!";
    goto LABEL_12;
  }

  v8 = *re::graphicsLogObjects(v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "Generated binary archive on device, but no output URL was provided.";
LABEL_12:
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }

LABEL_13:
  if (v10[0] == 1 && v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }
}

void re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_74, 4 * v2);
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
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 32);
        }

        v4 += 40;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

void re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(re::ShaderManager *this)
{
  if ((*(this + 530) & 1) == 0)
  {
    re::Bundle::testData(&v5);
    if (!v5)
    {
      re::Bundle::application(&v4);
      v2 = v4;
      v3 = v5;
      v4 = 0;
      v5 = v2;
    }

    re::ShaderManager::loadBinaryArchives(this, &v5, 0);
  }
}

BOOL re::ShaderManager::makeAndAddBinaryArchive(re::ShaderManager *this, const char *a2, const char *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 131);
  if (a2 && (v6 = strlen(a2)) != 0)
  {
    MurmurHash3_x64_128(a2, v6, 0, buf);
    v7 = (*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
  }

  else
  {
    v7 = 0;
  }

  v39 = v7;
  v8 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 472, &v39);
  if (v8)
  {
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  if ((*(this + 529) & 1) == 0)
  {
    v22 = *re::graphicsLogObjects(v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Skipping MTLBinaryArchive load from %s", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v11 = mach_absolute_time();
  v12 = [objc_msgSend(MEMORY[0x1E6973FE8] alloc)];
  v38 = v12;
  [v12 setOptions_];
  if (a2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    [v12 setUrl_];
  }

  re::mtl::Device::makeBinaryArchive(this + 44, &v38, &v37);
  v9 = v37 != 0;
  if (v37)
  {
    if (a3)
    {
      v14 = [v37 setLabel_];
    }

    v15 = *(this + 55);
    v16 = *(this + 56);
    if (v16 >= v15)
    {
      v17 = v16 + 1;
      if (v15 < v17)
      {
        if (*(this + 54))
        {
          v18 = 2 * v15;
          v19 = v15 == 0;
          v20 = 8;
          if (!v19)
          {
            v20 = v18;
          }

          if (v20 <= v17)
          {
            v21 = v17;
          }

          else
          {
            v21 = v20;
          }

          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 54, v21);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 54, v17);
          ++*(this + 114);
        }
      }

      v16 = *(this + 56);
    }

    v23 = *(this + 58);
    *(v23 + 8 * v16) = v37;
    ++*(this + 56);
    ++*(this + 114);
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) >> 27));
    v25 = v24 ^ (v24 >> 31);
    v26 = *(this + 124);
    if (v26)
    {
      v27 = v25 % v26;
      v28 = *(*(this + 60) + 4 * (v25 % v26));
      if (v28 != 0x7FFFFFFF)
      {
        v29 = *(this + 61);
        if (*(v29 + 24 * v28 + 16) == v39)
        {
          goto LABEL_35;
        }

        while (1)
        {
          LODWORD(v28) = *(v29 + 24 * v28 + 8) & 0x7FFFFFFF;
          if (v28 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v29 + 24 * v28 + 16) == v39)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
    }

    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(this + 472, v27, v25, &v39, &v39);
    ++*(this + 128);
LABEL_35:
    v30 = mach_absolute_time();
    v31 = v30;
    v32 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v30 = mach_timebase_info(buf);
      if (v30)
      {
        v35 = NAN;
LABEL_40:
        v36 = *re::graphicsLogObjects(v30);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = (v35 / 1000000.0);
          _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "MTLBinaryArchive loaded from %s in %dms", buf, 0x12u);
        }

        if (v37)
        {
        }

        goto LABEL_44;
      }

      LODWORD(v33) = *buf;
      LODWORD(v34) = *&buf[4];
      v32 = v33 / v34;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v32;
    }

    v35 = v32 * (v31 - v11);
    goto LABEL_40;
  }

LABEL_44:
  if (v38)
  {
  }

LABEL_7:
  os_unfair_lock_unlock(this + 131);
  return v9;
}

void re::ShaderManager::makeLibraryWithURL(void **this, const char *a2, re::mtl *a3, const char *a4)
{
  re::mtl::Device::newLibraryWithURL(this + 44, a3, &v7);
  LibraryHash = re::ShaderManager::getLibraryHash(this, a2);
  re::ShaderManager::installLibrary(this, LibraryHash, &v7);
}

void re::ShaderManager::makeLibraryWithData(void **this, const char *a2, re::mtl *a3, const char *a4)
{
  re::mtl::Device::newLibraryWithData(this + 44, a3, &v7);
  LibraryHash = re::ShaderManager::getLibraryHash(this, a2);
  re::ShaderManager::installLibrary(this, LibraryHash, &v7);
}

void re::ShaderManager::defaultBinaryArchive(re::ShaderManager *this@<X0>, void *a2@<X8>)
{
  if (*(this + 521) == 1)
  {
    *a2 = 0;
  }

  else
  {
    re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(this);
    os_unfair_lock_lock(this + 131);
    if (*(this + 56))
    {
      v4 = **(this + 58);
    }

    else
    {
      v4 = 0;
    }

    *a2 = v4;

    os_unfair_lock_unlock(this + 131);
  }
}

unint64_t re::ShaderManager::getLibraryHash(re::ShaderManager *this, const char *__s)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return *(this + 46);
  }

  v3 = *(this + 53);
  if (v3 && ((**v3)(&v9), v9 == 1))
  {
    if (v11)
    {
      v4 = *&v12[7];
    }

    else
    {
      v4 = v12;
    }

    v5 = strlen(v4);
    if (v5)
    {
      MurmurHash3_x64_128(v4, v5, 0, v13);
      v6 = (v13[1] + (v13[0] << 6) + (v13[0] >> 2) - 0x61C8864680B583E9) ^ v13[0];
      if ((v9 & 1) == 0)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }
  }

  else
  {
    v7 = strlen(__s);
    if (v7)
    {
      MurmurHash3_x64_128(__s, v7, 0, &v9);
      return (v10 + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t re::ShaderManager::releaseLibrary(uint64_t this, uint64_t a2)
{
  if (*(this + 368) != a2)
  {
    v7[3] = v2;
    v7[4] = v3;
    v5 = this;
    v7[0] = a2;
    this = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 376, v7);
    if (this)
    {
      if (!*this || (v6 = *this - 1, (*this = v6) == 0))
      {
        v7[0] = a2;
        return re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::remove(v5 + 376, v7);
      }
    }
  }

  return this;
}

BOOL re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::removeInternal(a1, v5);
}

void re::ShaderManager::makeFunction(uint64_t *a1@<X0>, uint64_t a2@<X1>, re::mtl *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v12 = a2;
  v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((a1 + 47), &v12);
  if (v9)
  {
    if (a4)
    {
      re::ShaderManager::makeFunctionDescriptor(a1, &v11);
      v10 = v11;
      [v11 setName_];
      [v10 setConstantValues_];
      re::ShaderManager::makeFunctionWithDescriptor(a1, a1[46], &v11, a5);
      if (v10)
      {
      }
    }

    else
    {
      re::mtl::Library::makeFunction((v9 + 8), a3, a5);
    }
  }

  else
  {
    *a5 = 0;
  }
}

void re::ShaderManager::makeFunctionDescriptor(re::ShaderManager *this@<X0>, void *a2@<X8>)
{
  v4 = [objc_msgSend(MEMORY[0x1E6974070] alloc)];
  *a2 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToFunction(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::makeFunctionWithDescriptor(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v9 = a2;
    v6 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 376, &v9);
    if (v6)
    {
      re::mtl::Library::makeFunctionWithDescriptor((v6 + 8), *a3, a4);
    }

    else
    {
      *a4 = 0;
    }
  }

  else
  {
    v7 = *a3;
    v8 = (a1 + 360);

    re::mtl::Library::makeFunctionWithDescriptor(v8, v7, a4);
  }
}

void re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(uint64_t a1, int a2, uint64_t a3, char a4, StringID *a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v19, a5);
  v21 = *(a6 + 24);
  v22 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v20, a6);
  std::mutex::lock((a1 + 864));
  v11 = mach_absolute_time();
  v12 = atomic_load((a1 + 824));
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    atomic_fetch_add((a1 + 928), 1u);
    if (a2)
    {
      v14 = v28;
      v15 = (a1 + 856);
      v16 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1174405120;
      v26[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke;
      v26[3] = &__block_descriptor_tmp_48;
      v26[4] = a1;
      v26[5] = a3;
      v17 = v27;
      v27[3] = v21;
      v27[4] = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v27, v20);
      v27[5] = v13;
      v28[17] = a4;
    }

    else
    {
      v14 = v25;
      v15 = (a1 + 832);
      v16 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1174405120;
      v23[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_49;
      v23[3] = &__block_descriptor_tmp_52_0;
      v23[4] = a1;
      v23[5] = a3;
      v17 = v24;
      v24[3] = v21;
      v24[4] = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v24, v20);
      v24[5] = v13;
      v25[16] = a4;
    }

    re::StringID::StringID(v14, &v19);
    dispatch_async(*v15, v16);
    re::StringID::destroyString(v14);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v17);
  }

  std::mutex::unlock((a1 + 864));
  v18 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v20);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }
}

void re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(uint64_t a1, int a2, void *a3, id *a4, char a5, StringID *a6, uint64_t a7)
{
  v41 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v22, a6);
  v25 = *(a7 + 24);
  v26 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v24, a7);
  v21 = *a4;
  std::mutex::lock((a1 + 864));
  v13 = mach_absolute_time();
  v14 = atomic_load((a1 + 824));
  if ((v14 & 1) == 0)
  {
    v15 = v13;
    atomic_fetch_add((a1 + 928), 1u);
    if (a2)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke;
      v30 = &__block_descriptor_tmp_56;
      v31 = a1;
      v32 = v21;
      v33 = a3;
      v35 = v25;
      v36 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v34, v24);
      v37 = v15;
      v40 = a5;
      re::StringID::StringID(&v38, &v22);
      v16 = *(a1 + 856);
      v23 = v16;
      re::dispatch::Group::notify(&v21, &v23, &v27);

      if (v38)
      {
        if (v38)
        {
        }
      }

      v38 = 0;
      v39 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(v34);
    }

    else
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_57;
      v30 = &__block_descriptor_tmp_60;
      v31 = a1;
      v32 = a3;
      v34[2] = v25;
      v35 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(&v33, v24);
      v36 = v15;
      LOBYTE(v39) = a5;
      re::StringID::StringID(&v37, &v22);
      v18 = *(a1 + 832);
      v23 = v18;
      re::dispatch::Group::notify(&v21, &v23, &v27);

      if (v37)
      {
        if (v37)
        {
        }
      }

      v37 = 0;
      v38 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v33);
    }
  }

  std::mutex::unlock((a1 + 864));

  v20 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v24);
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }
}

void re::ShaderManager::scheduleAsyncGroupFuncOnCompilationQueue(uint64_t a1, int a2, void *a3, id *a4, char a5, StringID *a6, uint64_t a7)
{
  v41 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v22, a6);
  v25 = *(a7 + 24);
  v26 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v24, a7);
  v21 = *a4;
  std::mutex::lock((a1 + 864));
  v13 = mach_absolute_time();
  v14 = atomic_load((a1 + 824));
  if ((v14 & 1) == 0)
  {
    v15 = v13;
    atomic_fetch_add((a1 + 928), 1u);
    if (a2)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke;
      v30 = &__block_descriptor_tmp_64_0;
      v31 = a1;
      v32 = v21;
      v33 = a3;
      v35 = v25;
      v36 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v34, v24);
      v37 = v15;
      v40 = a5;
      re::StringID::StringID(&v38, &v22);
      v16 = *(a1 + 856);
      v23 = v16;
      re::dispatch::Group::async(&v21, &v23, &v27);

      if (v38)
      {
        if (v38)
        {
        }
      }

      v38 = 0;
      v39 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(v34);
    }

    else
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_65;
      v30 = &__block_descriptor_tmp_68_0;
      v31 = a1;
      v32 = a3;
      v34[2] = v25;
      v35 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(&v33, v24);
      v36 = v15;
      LOBYTE(v39) = a5;
      re::StringID::StringID(&v37, &v22);
      v18 = *(a1 + 832);
      v23 = v18;
      re::dispatch::Group::async(&v21, &v23, &v27);

      if (v37)
      {
        if (v37)
        {
        }
      }

      v37 = 0;
      v38 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v33);
    }
  }

  std::mutex::unlock((a1 + 864));

  v20 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v24);
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }
}

uint64_t re::ShaderManager::executeWithPrioritizedShaderCompilation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 968);
  if (v2)
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return (*(**(a2 + 32) + 16))();
  }
}

uint64_t re::ShaderManager::executeWithShaderCompilationBlamedToPeer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v6 = a2;
    return (*(*a1 + 16))(a1, &v6);
  }

  else
  {
    v5 = *(**(a3 + 32) + 16);

    return v5();
  }
}

uint64_t re::ShaderManager::tryRequestFunctionReflection(uint64_t a1, uint64_t a2, const char *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v23[0] = a2;
  v14 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 376, v23);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = (a1 + 360);
  }

  v33 = *(a7 + 24);
  v34 = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(v32, a7);
  v35 = a1;
  re::ShaderManager::makeFunctionDescriptor(a1, a3, a4, v15, a2, &v22);
  *&v21.var0 = 0;
  v21.var1 = &str_67;
  v23[3] = v33;
  v23[4] = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(v23, v32);
  v23[5] = v35;
  v17 = v22;
  v24 = v22;
  v25 = a3;
  v26 = a5;
  v27 = a6;
  v28 = *v15;
  v18 = re::globalAllocators(v28)[2];
  v30 = v18;
  if (v18)
  {
    v18 = (*(*v18 + 32))(v18, 96, 0);
  }

  v31 = re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::Callable(v18, v23);
  re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(a1, a5, a6, 0, &v21, v29);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v29);

  if (v24)
  {

    v24 = 0;
  }

  v19 = re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v23);
  if (*&v21.var0)
  {
    if (*&v21.var0)
    {
    }
  }

  *&v21.var0 = 0;
  v21.var1 = &str_67;
  if (v17)
  {
  }

  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v32);
  return 1;
}

void re::ShaderManager::makeFunctionDescriptor(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = [objc_msgSend(MEMORY[0x1E6974070] alloc)];
  *a6 = v12;
  [v12 setName_];
  if (*a3)
  {
    [v12 setConstantValues_];
  }

  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v13 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [v12 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a5 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addFunctionWithDescriptor:v12 library:*a4 error:0];
    }

    if (v13)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::addBinaryArchivesToRenderPipeline(uint64_t a1, id *a2, uint64_t a3)
{
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addRenderPipelineFunctionsWithDescriptor:*a2 error:0];
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::addBinaryArchivesToTilePipeline(uint64_t a1, id *a2, uint64_t a3)
{
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addTileRenderPipelineFunctionsWithDescriptor:*a2 error:0];
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::addBinaryArchivesToComputePipeline(uint64_t a1, id *a2, uint64_t a3)
{
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addComputePipelineFunctionsWithDescriptor:*a2 error:0];
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::addBinaryArchivesToFunction(uint64_t a1, id *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      *&v8[0] = a3;
      v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 376, v8);
      if (v7)
      {
        if (!*(a1 + 448))
        {
          memset(v8, 0, sizeof(v8));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        [**(a1 + 464) addFunctionWithDescriptor:*a2 library:*(v7 + 8) error:0];
      }
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::installLibrary(re::ShaderManager *this, unint64_t a2, id *a3)
{
  *buf = a2;
  v6 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 376, buf);
  if (v6)
  {
    *buf = a2;
    v6 = re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::remove(this + 376, buf);
  }

  if (*a3)
  {
    v12 = 0;
    re::ObjCObject::operator=(&v12, a3);
    v11 = 1;
    v10 = a2;
    *buf = 0;
    v14 = 0;
    v15 = 0;
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 376, &v10, v7 ^ (v7 >> 31), buf);
    if (HIDWORD(v14) == 0x7FFFFFFF)
    {
      v8 = re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(this + 376, v14, *buf);
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 24) = v12;
      ++*(this + 104);
    }
  }

  else
  {
    v9 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Cannot install a NULL library.", buf, 2u);
    }
  }
}

void re::ShaderManager::makeRenderPipelineDescriptor(re::ShaderManager *this@<X0>, void *a2@<X8>)
{
  v4 = [objc_msgSend(MEMORY[0x1E6974148] alloc)];
  *a2 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToRenderPipeline(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::makeComputePipelineDescriptor(re::ShaderManager *this@<X0>, void *a2@<X8>)
{
  v4 = [objc_msgSend(MEMORY[0x1E6974030] alloc)];
  *a2 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToComputePipeline(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::makeTileRenderPipelineDescriptor(re::ShaderManager *this@<X0>, void *a2@<X8>)
{
  v4 = [objc_msgSend(MEMORY[0x1E69741C8] alloc)];
  *a2 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToTilePipeline(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::logShaderCompilationRequest(re *a1, uint64_t a2, int a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B9A68, memory_order_acquire) & 1) == 0)
  {
    v17 = a1;
    v19 = __cxa_guard_acquire(&qword_1EE1B9A68);
    a1 = v17;
    if (v19)
    {
      re::Defaults::BOOLValue("enableShaderDebugLogs", v18, &v21);
      if (v21)
      {
        v20 = BYTE1(v21);
      }

      else
      {
        v20 = 0;
      }

      _MergedGlobals_454 = v20;
      __cxa_guard_release(&qword_1EE1B9A68);
      a1 = v17;
    }
  }

  if (_MergedGlobals_454 != 1)
  {
    return;
  }

  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v7 = *re::graphicsLogObjects(a1);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v13 = *(a2 + 8);
        v21 = 136446722;
        *v22 = v13;
        *&v22[8] = 1024;
        v23 = a3;
        v24 = 1024;
        v25 = a4;
        v9 = "SC request for linked function %{public}s in %dms (elapsed %dms)";
      }

      else
      {
        v7 = *re::graphicsLogObjects(a1);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v10 = *(a2 + 8);
        v21 = 136446722;
        *v22 = v10;
        *&v22[8] = 1024;
        v23 = a3;
        v24 = 1024;
        v25 = a4;
        v9 = "SC request for API function %{public}s in %dms (elapsed %dms)";
      }

      goto LABEL_26;
    }

    if (a1 == 6)
    {
      v11 = *re::graphicsLogObjects(a1);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = 67109376;
      *v22 = a3;
      *&v22[4] = 1024;
      *&v22[6] = a4;
      v9 = "SC request for polyphase init in %dms (elapsed %dms)";
    }

    else
    {
      if (a1 != 7)
      {
        return;
      }

      v11 = *re::graphicsLogObjects(a1);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = 67109376;
      *v22 = a3;
      *&v22[4] = 1024;
      *&v22[6] = a4;
      v9 = "SC request for MPD creation in %dms (elapsed %dms)";
    }

LABEL_29:
    v15 = v11;
    v16 = 14;
    goto LABEL_30;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = *re::graphicsLogObjects(a1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v14 = *(a2 + 8);
      v21 = 136446722;
      *v22 = v14;
      *&v22[8] = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = a4;
      v9 = "SC request for reflection of %{public}s in %dms (elapsed %dms)";
      goto LABEL_26;
    }

    v11 = *re::graphicsLogObjects(a1);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 67109376;
    *v22 = a3;
    *&v22[4] = 1024;
    *&v22[6] = a4;
    v9 = "SC request for reflection scheduling in %dms (elapsed %dms)";
    goto LABEL_29;
  }

  if (!a1)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = *(a2 + 8);
    v21 = 136446722;
    *v22 = v12;
    *&v22[8] = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = a4;
    v9 = "SC request for specialization of %{public}s in %dms (elapsed %dms)";
    goto LABEL_26;
  }

  if (a1 == 1)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 8);
      v21 = 136446722;
      *v22 = v8;
      *&v22[8] = 1024;
      v23 = a3;
      v24 = 1024;
      v25 = a4;
      v9 = "SC request for pipeline %{public}s in %dms (elapsed %dms)";
LABEL_26:
      v15 = v7;
      v16 = 24;
LABEL_30:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v9, &v21, v16);
    }
  }
}

double re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
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
          re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

uint64_t re::BucketArray<re::CachedMetalFunction,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1, i);
      if (*v4)
      {

        *v4 = 0;
      }
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

uint64_t re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D06698;
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 40) = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(a1 + 8, a2);
  *(a1 + 48) = *(a2 + 40);
  *(a2 + 48) = 0;
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 80) = v4;
  v5 = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 88) = v5;
  return a1;
}

uint64_t re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D06698;

  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }

  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1 + 8);
  return a1;
}

void re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D06698;

  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }

  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(a1 + 8);

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::operator()(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor((a1 + 88), *(a1 + 56), &v2);
  if (v2)
  {
    v3[0] = &unk_1F5D066F0;
    v3[1] = &v2;
    *&v4 = a1 + 8;
    *(&v4 + 1) = v3;
    re::runInLocalAutoreleasePool(v3);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *v3 = 0u;
    v4 = 0u;
    (*(**(a1 + 40) + 16))(*(a1 + 40), v3);
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v3[1]);
    if (v3[0])
    {
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (v2)
  {
  }
}

uint64_t re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06698;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(a2 + 8, a1 + 8);
  v4 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v4;
  v5 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v5;
  *(a2 + 88) = *(a1 + 88);
  return a2;
}

__n128 std::__function::__func<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1},std::allocator<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D066F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1},std::allocator<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v5 = 0;
  *v2 = 0u;
  v3 = 0u;
  v4 = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(v2, *(a1 + 8));
  (*(**(*(a1 + 16) + 32) + 16))(*(*(a1 + 16) + 32), v2);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v2[1]);
  if (v2[0])
  {
  }
}

uint64_t std::__function::__func<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1},std::allocator<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_0::operator() const(NS::SharedPtr<MTL::Function> const&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::FunctionBase<24ul,void ()(re::Function<void ()(void)> const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::Function<void ()(void)> const&)>::destroyCallable(a1);
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

uint64_t re::FunctionBase<24ul,void ()(unsigned long long,re::Function<void ()(void)> const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(unsigned long long,re::Function<void ()(void)> const&)>::destroyCallable(a1);
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

double re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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

          v3 = *(a1 + 8);
        }

        v4 += 40;
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

BOOL re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 40 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 40 * v5) = *(v6 + 40 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 40 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;

      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 40 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 40 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t (***___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke(uint64_t a1))(void)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  dispatch_semaphore_wait(*(v2 + 840), 0xFFFFFFFFFFFFFFFFLL);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_2;
  v10[3] = &__block_descriptor_tmp_51;
  v3 = *(a1 + 40);
  v10[4] = v2;
  v10[5] = v3;
  v11[3] = *(a1 + 72);
  v11[4] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v11, a1 + 48);
  v11[5] = *(a1 + 88);
  v14 = *(a1 + 113);
  re::StringID::StringID(&v12, (a1 + 96));
  dispatch_async(*(v2 + 848), v10);
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v11);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  dispatch_semaphore_signal(*(v2 + 840));
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

re::StringID *__copy_helper_block_8_48c24_ZTSN2re8FunctionIFvvEEE96c18_ZTSN2re8StringIDE(void *a1, const StringID *a2)
{
  a1[9] = a2[4].var1;
  a1[10] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((a1 + 6), &a2[3]);

  return re::StringID::StringID((a1 + 12), a2 + 6);
}

uint64_t (***__destroy_helper_block_8_48c24_ZTSN2re8FunctionIFvvEEE96c18_ZTSN2re8StringIDE(uint64_t a1))(void)
{
  re::StringID::destroyString((a1 + 96));

  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 48);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_49(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

uint64_t (***___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke(uint64_t a1))(void)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  dispatch_semaphore_wait(*(v2 + 840), 0xFFFFFFFFFFFFFFFFLL);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2;
  v8[3] = &__block_descriptor_tmp_55_0;
  v3 = *(a1 + 48);
  v8[4] = v2;
  v8[5] = v3;
  v9[3] = *(a1 + 80);
  v9[4] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v9, a1 + 56);
  v9[5] = *(a1 + 96);
  v11 = *(a1 + 120);
  re::StringID::StringID(v10, (a1 + 104));
  v4 = *(v2 + 848);
  v7 = v4;
  re::dispatch::Group::async((a1 + 40), &v7, v8);

  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  v10[1] = &str_67;
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v9);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  dispatch_semaphore_signal(*(v2 + 840));
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

re::StringID *__copy_helper_block_8_40c144_ZTSZNK2re13ShaderManager37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(void *a1, uint64_t a2)
{
  a1[5] = *(a2 + 40);
  a1[10] = *(a2 + 80);
  a1[11] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((a1 + 7), a2 + 56);

  return re::StringID::StringID((a1 + 13), (a2 + 104));
}

void __destroy_helper_block_8_40c144_ZTSZNK2re13ShaderManager37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(uint64_t a1)
{
  re::StringID::destroyString((a1 + 104));
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 56);
  v2 = *(a1 + 40);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_57(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

uint64_t (***___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke(uint64_t a1))(void)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  dispatch_semaphore_wait(*(v2 + 840), 0xFFFFFFFFFFFFFFFFLL);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2;
  v8[3] = &__block_descriptor_tmp_63_1;
  v3 = *(a1 + 48);
  v8[4] = v2;
  v8[5] = v3;
  v9[3] = *(a1 + 80);
  v9[4] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v9, a1 + 56);
  v9[5] = *(a1 + 96);
  v11 = *(a1 + 120);
  re::StringID::StringID(v10, (a1 + 104));
  v4 = *(v2 + 848);
  v7 = v4;
  re::dispatch::Group::async((a1 + 40), &v7, v8);

  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  v10[1] = &str_67;
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v9);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  dispatch_semaphore_signal(*(v2 + 840));
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

re::StringID *__copy_helper_block_8_40c147_ZTSZNK2re13ShaderManager40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(void *a1, uint64_t a2)
{
  a1[5] = *(a2 + 40);
  a1[10] = *(a2 + 80);
  a1[11] = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>((a1 + 7), a2 + 56);

  return re::StringID::StringID((a1 + 13), (a2 + 104));
}

void __destroy_helper_block_8_40c147_ZTSZNK2re13ShaderManager40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__056c24_ZTSN2re8FunctionIFvvEEE104c18_ZTSN2re8StringIDE(uint64_t a1)
{
  re::StringID::destroyString((a1 + 104));
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1 + 56);
  v2 = *(a1 + 40);
}

uint64_t ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_65(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  re::ShaderManager::executeWithShaderCompilationBlamedToPeer(*(v2 + 1008), *(a1 + 40), a1 + 48);
  v4 = mach_absolute_time();
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v3);
LABEL_6:
  v9 = *(a1 + 88);
  if (v5 >= 0.0)
  {
LABEL_10:
    v12 = v5 * (v4 - v9);
    goto LABEL_11;
  }

  if (!mach_timebase_info(&info))
  {
    LODWORD(v10) = info.numer;
    LODWORD(v11) = info.denom;
    v5 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
    goto LABEL_10;
  }

  v12 = NAN;
LABEL_11:
  v13 = (v12 / 1000000.0);
  v14 = *(a1 + 112);
  re::StringID::StringID(v17, (a1 + 96));
  re::ShaderManager::logShaderCompilationRequest(v14, v17, (v8 / 1000000.0), v13);
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  atomic_fetch_add((v2 + 928), 0xFFFFFFFF);
  return __ulock_wake();
}

uint64_t re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v27, v9, v8);
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
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *v18 % *(a1 + 24));
                *(v19 + 8) = *(v18 - 3);
                *(v19 + 16) = *(v18 - 4);
                v20 = *(v18 - 1);
                *(v18 - 1) = 0;
                *(v19 + 24) = v20;
              }

              ++v17;
              v18 += 5;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v27);
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
    v22 = *(v21 + 40 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 40 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 40 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 32) = a3;
  ++*(a1 + 28);
  return v21 + 40 * v5;
}

void re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_74, 4 * v10);
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

__n128 re::CameraView::makeCameraData@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  re::CameraData::CameraData(a4, *a3);
  re::DynamicString::operator=((a4 + 8), a1);
  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 48), v8))
  {
    v9 = a4 + 32 * *(a4 + 48);
    v10 = *(a1 + 48);
    *(v9 + 64) = *(a1 + 32);
    *(v9 + 80) = v10;
    ++*(a4 + 48);
    ++*(a4 + 56);
  }

  re::DynamicInlineArray<re::Projection,2ul>::add((a4 + 128), a1 + 64);
  if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((a4 + 624), v11))
  {
    v12 = (a4 + (*(a4 + 624) << 6));
    v13 = *(a1 + 1136);
    v14 = *(a1 + 1104);
    v12[40] = *(a1 + 1088);
    v12[41] = v14;
    v12[42] = *(a1 + 1120);
    v12[43] = v13;
    ++*(a4 + 624);
    ++*(a4 + 632);
  }

  *(a4 + 840) = *(a3 + 32);
  *(a4 + 816) = *(a1 + 672);
  *(a4 + 856) = *(a1 + 692);
  *(a4 + 884) = *(a1 + 712);
  *(a4 + 860) = *(a1 + 696);
  *(a4 + 864) = *(a1 + 700);
  *(a4 + 865) = *(a1 + 702);
  *(a4 + 866) = *(a1 + 701);
  *(a4 + 867) = *(a1 + 705);
  *(a4 + 868) = *(a1 + 708);
  *(a4 + 872) = *(a1 + 1172);
  *(a4 + 888) = *(a3 + 56);
  if ([*(a2 + 208) supportsFamily:1003])
  {
    if (*(a1 + 112))
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *(a4 + 892) = v15;
  *(a4 + 896) = [*(a2 + 208) supportsFamily:1005];
  *(a4 + 904) = *(a1 + 1176);
  if (*(a1 + 617))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  *(a4 + 900) = v16;
  *(a4 + 912) = *(a1 + 1180);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a4 + 920, a1 + 1184);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity((a4 + 768), v17))
  {
    result = *(a1 + 1232);
    *(a4 + 16 * (*(a4 + 768))++ + 784) = result;
    ++*(a4 + 776);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::Projection,2ul>::add(uint64_t *a1, uint64_t a2)
{
  result = re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = *a1;
    v6 = &a1[30 * *a1];
    *(v6 + 1) = *a2;
    v8 = *(a2 + 32);
    v7 = *(a2 + 48);
    v9 = *(a2 + 16);
    *(v6 + 40) = *(a2 + 64);
    *(v6 + 3) = v8;
    *(v6 + 4) = v7;
    *(v6 + 2) = v9;
    v10 = *(a2 + 80);
    *(v6 + 96) = v10;
    if (v10 == 1)
    {
      v11 = *(a2 + 96);
      v12 = *(a2 + 112);
      v13 = *(a2 + 144);
      *(v6 + 9) = *(a2 + 128);
      *(v6 + 10) = v13;
      *(v6 + 7) = v11;
      *(v6 + 8) = v12;
    }

    v14 = *(a2 + 160);
    *(v6 + 176) = v14;
    if (v14 == 1)
    {
      v15 = *(a2 + 176);
      v16 = *(a2 + 192);
      v17 = *(a2 + 224);
      *(v6 + 14) = *(a2 + 208);
      *(v6 + 15) = v17;
      *(v6 + 12) = v15;
      *(v6 + 13) = v16;
      v5 = *a1;
    }

    *a1 = v5 + 1;
    ++*(a1 + 2);
  }

  return result;
}