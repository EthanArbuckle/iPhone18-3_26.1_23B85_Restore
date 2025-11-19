id anonymous namespace::createMipViews(uint64_t *a1, uint64_t a2, id *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [*a3 mipmapLevelCount];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  re::FixedArray<NS::SharedPtr<MTL::Texture>>::init<>(a1, a2, v6);
  result = [*a3 mipmapLevelCount];
  if (result)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v12[0] = [*a3 newTextureViewWithPixelFormat:objc_msgSend(*a3 textureType:sel_pixelFormat) levels:objc_msgSend(*a3 slices:sel_textureType), v8, 1, 0, objc_msgSend(*a3, sel_arrayLength)];
      v10 = a1[1];
      if (v10 <= v8)
      {
        v12[1] = 0;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v13 = 136315906;
        v14 = "operator[]";
        v15 = 1024;
        v16 = 468;
        v17 = 2048;
        v18 = v8;
        v19 = 2048;
        v20 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      NS::SharedPtr<MTL::Texture>::operator=((a1[2] + 8 * v8), v12);
      if (v12[0])
      {
      }

      v8 = v9;
      result = [*a3 mipmapLevelCount];
    }

    while (result > v9++);
  }

  return result;
}

void re::MeshShadowGenerateFinalTextureNode::execute(re::MeshShadowGenerateFinalTextureNode *this, re::RenderGraphContext *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BE668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE668))
  {
    qword_1EE1BE660 = re::getCombinedScopeHash("ProjectiveMeshShadow", v11, v12);
    __cxa_guard_release(&qword_1EE1BE668);
  }

  v4 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(*(a2 + 146), qword_1EE1BE660);
  if (v4)
  {
    v5 = v4;
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v15);
    v14 = v15;
    re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(this, a2, &v14);

    [v15 setComputePipelineState:*(this + 61)];
    v6 = [*(this + 61) maxTotalThreadsPerThreadgroup];
    if (*(v5 + 416))
    {
      v7 = 0;
      v8 = sqrt(v6);
      v9 = 24;
      do
      {
        v13 = *(*(v5 + 432) + v9);
        [v15 setBytes:&v13 length:4 atIndex:0];
        v10 = (v8 - 1 + *(v5 + 200)) / v8;
        if (v10 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v10;
        }

        v17[0] = v10;
        v17[1] = v10;
        v17[2] = 1;
        v16[0] = v8;
        v16[1] = v8;
        v16[2] = 1;
        [v15 dispatchThreadgroups:v17 threadsPerThreadgroup:v16];
        ++v7;
        v9 += 32;
      }

      while (*(v5 + 416) > v7);
    }
  }
}

void **re::ProjectiveMeshShadowBlurNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v5 = 0;
  v6 = *(a4 + 1);
  v8[0] = this;
  v8[1] = v6;
  do
  {
    re::ProjectiveMeshShadowBlurNode::configure(char const*,char const*,re::RenderFrame &)::$_0::operator()(v8, 1u, v5);
    re::ProjectiveMeshShadowBlurNode::configure(char const*,char const*,re::RenderFrame &)::$_0::operator()(v8, 0, v5++);
  }

  while (v5 != 11);

  return NS::SharedPtr<MTL::Buffer>::operator=(this + 61, this + 84);
}

uint64_t re::ProjectiveMeshShadowBlurNode::configure(char const*,char const*,re::RenderFrame &)::$_0::operator()(uint64_t *a1, unsigned int a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = re::DynamicString::DynamicString(&v11, (*a1 + 288));
  v13 = 0;
  v16 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v24 = 0;
  v25 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  re::DynamicString::setCapacity(&v33, 0);
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v27 = "MeshShadowEnableBilateralFilter";
  v28 = 31;
  re::DynamicString::operator=(&v33, &v27);
  v37 = 12320821;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  LOBYTE(v38) = a2;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, &v33);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  re::DynamicString::setCapacity(&v27, 0);
  memset(v32, 0, sizeof(v32));
  v26[0] = "MeshShadowBlurRadius";
  v26[1] = 20;
  re::DynamicString::operator=(&v27, v26);
  *(v32 + 4) = 0u;
  *(&v32[1] + 4) = 0u;
  *(&v32[2] + 4) = 0u;
  v32[3] = 0u;
  v31 = 12386333;
  LODWORD(v32[0]) = a3;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, &v27);
  ComputePipelineState = re::getOrCreateComputePipelineState(a1[1], &v11);
  NS::SharedPtr<MTL::Buffer>::operator=((v6 + 88 * a2 + 8 * a3 + 504), ComputePipelineState);
  if (v27 && (v28 & 1) != 0)
  {
    (*(*v27 + 40))();
  }

  if (v33 && (v34 & 1) != 0)
  {
    (*(*v33 + 40))(v33, v35);
  }

  if (v24)
  {

    v24 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
  if (v16 == 1 && v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v15 = 0u;
    v14 = 0u;
  }

  result = v11;
  if (v11)
  {
    if (v12)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

void re::ProjectiveMeshShadowBlurNode::execute(uint64_t this, re::RenderGraphContext *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BE678, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v4 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(*(a2 + 146), qword_1EE1BE670);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 1, 0, &v92);
    v6 = re::internal::shadows::g_enableShadowFlattening ^ 1;
    v7 = (this + 504);
    NS::SharedPtr<MTL::Buffer>::operator=((this + 488), (this + 504 + 88 * v6 + 80));
    [v92 setComputePipelineState:*(this + 488)];
    v8 = [*(this + 488) maxTotalThreadsPerThreadgroup];
    v91 = v92;
    re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(this, a2, &v91);

    if (!*(this + 200))
    {
      goto LABEL_57;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 216), 0, 0, &v90);
    v9 = *(this + 200);
    if (v9 <= 1)
    {
      goto LABEL_58;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 216) + 32, 0, 0, &v89);
    if (!*(this + 240))
    {
      goto LABEL_59;
    }

    re::RenderGraphContext::metalTexture(a2, *(this + 256), 0, 0, &v88);
    if (*(this + 120))
    {
      v74 = this;
      v10 = re::RenderGraphContext::metalBuffer(a2, *(this + 136));
      v12 = *re::BufferSlice::buffer(v10, v11);
      v13 = [v90 mipmapLevelCount];
      v14 = *(*a2 + 32);
      this = 1;
      v70 = v12;
      [v92 setBuffer:v12 offset:0 atIndex:1];
      v71 = v13;
      if (!v13)
      {
LABEL_43:
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v79);
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v82);
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v85);
        if (v70)
        {
        }

        if (v88)
        {
        }

        if (v89)
        {
        }

        if (v90)
        {
        }

        return;
      }

      v15 = 0;
      v16 = sqrt(v8);
      v72 = &v7[88 * v6];
      v73 = 10;
      while (1)
      {
        v17 = v86;
        if (v86 <= v15)
        {
          break;
        }

        v75 = v15;
        [v92 setTexture:*(v87 + 8 * v15) atIndex:0];
        v18 = v75;
        v17 = v83;
        if (v83 <= v75)
        {
          goto LABEL_55;
        }

        [v92 setTexture:*(v84 + 8 * v75) atIndex:1];
        v19 = v75;
        v17 = v80;
        if (v80 <= v75)
        {
          goto LABEL_56;
        }

        [v92 setTexture:*(v81 + 8 * v75) atIndex:2];
        [v92 setTexture:v88 atIndex:3];
        if (v5[52])
        {
          v20 = 0;
          while (1)
          {
            v21 = v5[21];
            v22 = v75;
            if (v21 <= v20)
            {
              break;
            }

            v23 = *(v5[54] + 32 * v20 + 24);
            v24 = v5[22] + 928 * v20;
            v25 = (v24 + 224 * v75);
            v27 = v25[4];
            v26 = v25[5];
            v28 = *(v24 + 900);
            if (v28 >= 0xA)
            {
              v29 = 10;
            }

            else
            {
              v29 = v28;
            }

            if (v73 != v29)
            {
              NS::SharedPtr<MTL::Buffer>::operator=((v74 + 488), &v72[8 * v29]);
              [v92 setComputePipelineState:*(v74 + 488)];
              v30 = [*(v74 + 488) maxTotalThreadsPerThreadgroup];
              v22 = v75;
              v16 = sqrt(v30);
              v73 = v29;
            }

            v31 = 0;
            HIWORD(v99[2]) = 0;
            *&v97 = 25152;
            v32 = vcvt_u32_f32(vrndp_f32(v26));
            v76 = vcvt_u32_f32(vrndm_f32(v27));
            *(&v97 + 1) = v76;
            *&v98 = v32;
            *(&v98 + 1) = __PAIR64__(v22, v23);
            v99[0] = 0;
            v99[1] = 0;
            *(&v99[1] + 6) = 0;
            v33 = *(v24 + 896);
            v34 = v33 * 0.70711;
            v35 = (v29 + 1);
            do
            {
              if (v33 >= 0.7)
              {
                _S0 = expf(-(v31 * v31) / (v33 * (v33 + v33)));
              }

              else
              {
                v36 = erff((v31 + -0.5) / v34);
                _S0 = (erff((v31 + 0.5) / v34) - v36) * 0.5;
              }

              __asm { FCVT            H0, S0 }

              *(v99 + v31++) = _H0;
            }

            while (v35 != v31);
            v43 = vsub_s32(v32, v76);
            v44 = v43.i32[0];
            v45 = -v29;
            v46 = (2 * v29) | 1;
            v47 = 0.0;
            do
            {
              if (v45 >= 0)
              {
                v48 = v45;
              }

              else
              {
                v48 = -v45;
              }

              _H2 = *(v99 + v48);
              __asm { FCVT            S2, H2 }

              v47 = v47 + _S2;
              ++v45;
              --v46;
            }

            while (v46);
            v51 = 32;
            do
            {
              _H2 = *(&v97 + v51);
              __asm { FCVT            S2, H2 }

              _S2 = _S2 / v47;
              __asm { FCVT            H2, S2 }

              *(&v97 + v51) = LOWORD(_S2);
              v51 += 2;
              --v35;
            }

            while (v35);
            v55 = v43.u32[1];
            [v92 setBytes:&v97 length:56 atIndex:0];
            if (*(v74 + 496))
            {
              v56 = v16 - 1 + v44;
              v55 >>= 1;
            }

            else
            {
              v56 = v16 - 1 + (v44 >> 1);
            }

            v57 = v56 / v16;
            v58 = v16 - 1 + v55;
            v59 = *(a2 + 1);
            v60 = v58 / v16;
            v78 = v92;
            re::RenderManager::sampleComputeEncoderMTLCounterBegin(v59, &v78, 1u);

            if (v57 <= 1)
            {
              v61 = 1;
            }

            else
            {
              v61 = v57;
            }

            if (v60 <= 1)
            {
              v62 = 1;
            }

            else
            {
              v62 = v60;
            }

            *v94 = v61;
            *&v94[8] = v62;
            *&v94[16] = 1;
            v93[0] = v16;
            v93[1] = v16;
            this = 1;
            v93[2] = 1;
            [v92 dispatchThreadgroups:v94 threadsPerThreadgroup:{v93, v68, v69}];
            v63 = *(a2 + 1);
            v77 = v92;
            re::RenderManager::sampleComputeEncoderMTLCounterEnd(v63, &v77, 1u);

            if (v5[52] <= ++v20)
            {
              goto LABEL_42;
            }
          }

          v93[0] = 0;
          v100 = 0u;
          v98 = 0u;
          memset(v99, 0, sizeof(v99));
          v97 = 0u;
          v17 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v94 = 136315906;
          *&v94[4] = "operator[]";
          *&v94[12] = 1024;
          *&v94[14] = 476;
          *&v94[18] = 2048;
          *&v94[20] = v20;
          v95 = 2048;
          v96 = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          break;
        }

LABEL_42:
        v15 = (v75 + 1);
        if ((v75 + 1) == v71)
        {
          goto LABEL_43;
        }
      }

      v93[0] = 0;
      v100 = 0u;
      v98 = 0u;
      memset(v99, 0, sizeof(v99));
      v97 = 0u;
      v64 = v15;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v94 = 136315906;
      *&v94[4] = "operator[]";
      *&v94[12] = 1024;
      *&v94[14] = 468;
      *&v94[18] = 2048;
      *&v94[20] = v64;
      v95 = 2048;
      v96 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v93[0] = 0;
      v100 = 0u;
      v98 = 0u;
      memset(v99, 0, sizeof(v99));
      v97 = 0u;
      v65 = v18;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v94 = 136315906;
      *&v94[4] = "operator[]";
      *&v94[12] = 1024;
      *&v94[14] = 468;
      *&v94[18] = 2048;
      *&v94[20] = v65;
      v95 = 2048;
      v96 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_56:
      v93[0] = 0;
      v100 = 0u;
      v98 = 0u;
      memset(v99, 0, sizeof(v99));
      v97 = 0u;
      a2 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v94 = 136315906;
      *&v94[4] = "operator[]";
      *&v94[12] = 1024;
      *&v94[14] = 468;
      *&v94[18] = 2048;
      *&v94[20] = a2;
      v95 = 2048;
      v96 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_57:
      v93[0] = 0;
      v9 = v94;
      v100 = 0u;
      v98 = 0u;
      memset(v99, 0, sizeof(v99));
      v97 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v94 = 136315906;
      *&v94[4] = "operator[]";
      *&v94[12] = 1024;
      *&v94[14] = 789;
      *&v94[18] = 2048;
      *&v94[20] = 0;
      v95 = 2048;
      v96 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v93[0] = 0;
      v100 = 0u;
      v98 = 0u;
      memset(v99, 0, sizeof(v99));
      v97 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v94 = 136315906;
      *&v94[4] = "operator[]";
      *&v94[12] = 1024;
      *&v94[14] = 789;
      *&v94[18] = 2048;
      *&v94[20] = 1;
      v95 = 2048;
      v96 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_59:
      v93[0] = 0;
      v100 = 0u;
      v98 = 0u;
      memset(v99, 0, sizeof(v99));
      v97 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v94 = 136315906;
      *&v94[4] = "operator[]";
      *&v94[12] = 1024;
      *&v94[14] = 789;
      *&v94[18] = 2048;
      *&v94[20] = 0;
      v95 = 2048;
      v96 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v93[0] = 0;
    v100 = 0u;
    v98 = 0u;
    memset(v99, 0, sizeof(v99));
    v97 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    *&v94[12] = 1024;
    *&v94[14] = 789;
    *&v94[18] = 2048;
    *&v94[20] = 0;
    v95 = 2048;
    v96 = 0;
    LODWORD(v69) = 38;
    v68 = v94;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_61:
    if (__cxa_guard_acquire(&qword_1EE1BE678))
    {
      qword_1EE1BE670 = re::getCombinedScopeHash("ProjectiveMeshShadow", v66, v67);
      __cxa_guard_release(&qword_1EE1BE678);
    }
  }
}

void *re::allocInfo_RenderProjectiveMeshShadowPatchesNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE680))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE6E0, "RenderProjectiveMeshShadowPatchesNode");
    __cxa_guard_release(&qword_1EE1BE680);
  }

  return &unk_1EE1BE6E0;
}

void re::initInfo_RenderProjectiveMeshShadowPatchesNode(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x86836557EB7BBFECLL;
  v22[1] = "RenderProjectiveMeshShadowPatchesNode";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BE688, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE688);
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
      qword_1EE1BE6C0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "depthOnly";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BE6C8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "disableRenderOverContent";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x10900000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BE6D0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "useMaxBlend";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x10A00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BE6D8 = v20;
      __cxa_guard_release(&qword_1EE1BE688);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BE6C0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderProjectiveMeshShadowPatchesNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderProjectiveMeshShadowPatchesNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D0F380;
  *(result + 132) = 0;
  *(result + 266) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderProjectiveMeshShadowPatchesNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D0F380;
  *(result + 132) = 0;
  *(result + 266) = 0;
  return result;
}

void re::CopyShadowTextureNode::~CopyShadowTextureNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::GenerateTiledShadowDepthPrepassMapNode::~GenerateTiledShadowDepthPrepassMapNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::GenerateProjectiveMeshShadowMapNode::~GenerateProjectiveMeshShadowMapNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderProjectiveMeshShadowPatchesNode::~RenderProjectiveMeshShadowPatchesNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MeshShadowGenerateMipmapNode::~MeshShadowGenerateMipmapNode(re::MeshShadowGenerateMipmapNode *this)
{
  *this = &unk_1F5D0F428;
  for (i = 576; i != 560; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  v4 = *(this + 70);
  if (v4)
  {

    *(this + 70) = 0;
  }

  re::DynamicString::deinit((this + 528));
  re::DynamicString::deinit((this + 496));

  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);
}

{
  *this = &unk_1F5D0F428;
  v2 = 576;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 560)
    {
      v4 = *(this + 70);
      if (v4)
      {

        *(this + 70) = 0;
      }

      re::DynamicString::deinit((this + 528));
      re::DynamicString::deinit((this + 496));
      re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

      JUMPOUT(0x1E6906520);
    }
  }
}

void re::MeshShadowGenerateFinalTextureNode::~MeshShadowGenerateFinalTextureNode(re::MeshShadowGenerateFinalTextureNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::ProjectiveMeshShadowBlurNode::~ProjectiveMeshShadowBlurNode(re::ProjectiveMeshShadowBlurNode *this)
{
  *this = &unk_1F5D0F5A8;
  for (i = 672; i != 496; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);
}

{
  *this = &unk_1F5D0F5A8;
  v2 = 672;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 496)
    {
      re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

      JUMPOUT(0x1E6906520);
    }
  }
}

void *re::internal::Callable<re::GenerateTiledShadowDepthPrepassMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F668;
  return result;
}

void *re::internal::Callable<re::GenerateTiledShadowDepthPrepassMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F668;
  return result;
}

re::DrawTable *re::DrawTable::DrawTable(re::DrawTable *this, re::Allocator *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  re::BucketArray<re::DrawCall,128ul>::init(this, a2, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  re::BucketArray<re::Matrix4x4<float>,128ul>::init(this + 56, a2, 0);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 1;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 40) = 0;
  re::BucketArray<re::ConstantTable const*,128ul>::init(this + 112, a2, 0);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 54) = 0;
  re::BucketArray<float,128ul>::init(this + 168, a2, 0);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = 1;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 68) = 0;
  re::BucketArray<unsigned int,128ul>::init(this + 224, a2, 0);
  *(this + 320) = 1;
  return this;
}

void *re::DrawTableSlice::DrawTableSlice(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  if (*(a2 + 16))
  {
    v2 = a2 + 24;
  }

  v4 = *(a2 + 8);
  *result = v2;
  result[1] = v4;
  result[2] = v3;
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  if (*(a2 + 72))
  {
    v5 = a2 + 80;
  }

  v7 = *(a2 + 64);
  result[3] = v5;
  result[4] = v7;
  result[5] = v6;
  v8 = *(a2 + 144);
  v9 = *(a2 + 152);
  if (*(a2 + 128))
  {
    v8 = a2 + 136;
  }

  v10 = *(a2 + 120);
  result[6] = v8;
  result[7] = v10;
  result[8] = v9;
  v11 = *(a2 + 200);
  v12 = *(a2 + 208);
  if (*(a2 + 184))
  {
    v11 = a2 + 192;
  }

  v13 = *(a2 + 176);
  result[9] = v11;
  result[10] = v13;
  result[11] = v12;
  v14 = *(a2 + 256);
  v15 = *(a2 + 264);
  if (*(a2 + 240))
  {
    v14 = a2 + 248;
  }

  v16 = *(a2 + 232);
  result[12] = v14;
  result[13] = v16;
  result[14] = v15;
  return result;
}

uint64_t re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem *this, uint64_t a2)
{
  v4 = *(this + 1);
  v5 = *(*this + 136);
  if (v5 > v4)
  {
    return *(*this + 128) + 96 * v4;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v5, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::internal::Callable<re::GenerateProjectiveMeshShadowMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F6C0;
  return result;
}

void *re::internal::Callable<re::GenerateProjectiveMeshShadowMapNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F6C0;
  return result;
}

void *re::internal::Callable<re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F718;
  return result;
}

void *re::internal::Callable<re::RenderProjectiveMeshShadowPatchesNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0F718;
  return result;
}

void re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(re::RenderGraphComputeNodeBase *this)
{
  *this = &unk_1F5D0F818;
  v2 = *(this + 61);
  if (v2)
  {

    *(this + 61) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

uint64_t re::RenderGraphDataStore::tryGet<re::SceneArrayData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re14SceneArrayDataE";
  if (("N2re14SceneArrayDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re14SceneArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

void *re::DynamicArray<re::MeshPartDrawContext>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
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
            memcpy(v7, v5[4], 240 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::MeshPartDrawContext>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::BucketArray<re::MeshSceneCollection,16ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 4)
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

  return *(v3 + 8 * (a2 >> 4)) + 40 * (a2 & 0xF);
}

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

  if (*(a1 + 8) <= a2 >> 4)
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

  return *(v3 + 8 * (a2 >> 4)) + 40 * (a2 & 0xF);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::get<re::SceneScope>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re10SceneScopeE";
  if (("N2re10SceneScopeE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re10SceneScopeE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::get<re::CameraMatrices>(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0);
  }

  v4 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v4, 0, v11);
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

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

__n128 re::DynamicArray<re::MeshPartDrawContext>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshPartDrawContext>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 240 * v4;
  v6 = *a2;
  v7 = a2[2];
  *(v5 + 16) = a2[1];
  *(v5 + 32) = v7;
  *v5 = v6;
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[6];
  *(v5 + 80) = a2[5];
  *(v5 + 96) = v10;
  *(v5 + 48) = v8;
  *(v5 + 64) = v9;
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[10];
  *(v5 + 144) = a2[9];
  *(v5 + 160) = v13;
  *(v5 + 112) = v11;
  *(v5 + 128) = v12;
  result = a2[11];
  v15 = a2[12];
  v16 = a2[14];
  *(v5 + 208) = a2[13];
  *(v5 + 224) = v16;
  *(v5 + 176) = result;
  *(v5 + 192) = v15;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::MeshPartDrawContext>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshPartDrawContext>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshPartDrawContext>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::VRRUnwarpProvider::VRRUnwarpProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(v5, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), v5);
  v3 = *&v5[0];
  if (*&v5[0])
  {
    if (BYTE8(v5[0]))
    {
      v3 = (*(**&v5[0] + 40))();
    }

    memset(v5, 0, sizeof(v5));
  }

  *a1 = &unk_1F5D0F780;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  a1[12] = 65290051;
  a1[13] = "Color";
  return a1;
}

void re::VRRUnwarpProvider::~VRRUnwarpProvider(re::VRRUnwarpProvider *this)
{
  re::DynamicString::deinit((this + 64));
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::VRRUnwarpProvider::~VRRUnwarpProvider(this);

  JUMPOUT(0x1E6906520);
}

unint64_t re::VRRUnwarpProvider::prepareFrame(re::VRRUnwarpProvider *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, &buf);
    v9 = (*(&buf + 1) - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(a3);
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, &buf);
    v11 = ((*(&buf + 1) - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf) - 0x61C8864680B583E9;
  }

  else
  {
    v11 = 0x9E3779B97F4A7C17;
  }

  v12 = ((v9 >> 2) + (v9 << 6) + v11) ^ v9;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(a4 + 32, v12);
  v14 = re::RenderGraphDataStore::tryGet<re::VRRData>(a4 + 32, v12);
  if (!v13)
  {
    return 0;
  }

  v15 = *(v13 + 861) != 1 || v14 == 0;
  if (v15 || *(v14 + 12) != 1)
  {
    return 0;
  }

  v16 = *(v14 + 8);
  v17 = *(a4 + 534);
  if (v17 <= v16)
  {
    v56 = 0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    *&v61[14] = 797;
    v62 = 2048;
    v63 = v16;
    v64 = 2048;
    *v65 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v18 = *(a4 + 536);
  if (!*(v18 + 8 * v16))
  {
    v21 = *re::graphicsLogObjects(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Could not get valid ratemap in Unwarp provider", &buf, 2u);
    }

    return 0;
  }

  *&buf = 0;
  *&v68 = 0;
  DWORD2(v67) = 0;
  v19 = *(*(a4 + 1) + 112);
  if (v19)
  {
    v20 = *(v19 + 320);
  }

  else
  {
    v20 = 0;
  }

  v24 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v20, *(a4 + 48));
  re::PerFrameAllocatorGPU::allocInternal(v24, [*(v18 + 8 * v16) parameterBufferSizeAndAlign], 0x10uLL, 0, &v56);
  v25 = v58;
  LODWORD(v24) = v57;
  *v61 = *v59;
  HIDWORD(v63) = 0;
  *&v65[2] = __PAIR64__(v25, v24);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&buf, v61);
  *&v68 = *&v65[2];
  if (HIDWORD(v63) != -1)
  {
    (off_1F5D0F7B8[HIDWORD(v63)])(&v60, v61);
  }

  v27 = *(v18 + 8 * v16);
  re::BufferSlice::buffer(&buf, v26);
  [v27 copyParameterDataToBuffer:buf offset:v68];
  if (*(this + 12) == 65290051)
  {
    v28 = *(this + 13);
    v29 = *v28;
    if (*v28)
    {
      v30 = v28 + 1;
      v31 = "Color";
      while (v29 == *v31)
      {
        ++v31;
        v32 = *v30++;
        v29 = v32;
        if (!v32)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v31 = "Color";
LABEL_31:
      if (!*v31)
      {
        v53[0] = 0;
        v33 = &v54;
        v54 = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v53, &buf);
        v55 = v68;
        *v61 = 0x4F06877B79D47715;
        if (a3)
        {
          v46 = *a3;
          if (*a3)
          {
            v47 = a3[1];
            if (v47)
            {
              v48 = a3 + 2;
              do
              {
                v46 = 31 * v46 + v47;
                v49 = *v48++;
                v47 = v49;
              }

              while (v49);
            }

            v46 &= ~0x8000000000000000;
          }
        }

        else
        {
          v46 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v56 = v46;
        re::RenderFrame::registerExternalBuffer(a4, v53, v61, &v56, 0);
        if (v54 != -1)
        {
          (off_1F5D0F7B8[v54])(v61, v53);
        }

        goto LABEL_41;
      }
    }
  }

  v50[0] = 0;
  v33 = &v51;
  v51 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v50, &buf);
  v52 = v68;
  *v61 = 0x4F06877B79D47716;
  if (a3)
  {
    v34 = *a3;
    if (*a3)
    {
      v35 = a3[1];
      if (v35)
      {
        v36 = a3 + 2;
        do
        {
          v34 = 31 * v34 + v35;
          v37 = *v36++;
          v35 = v37;
        }

        while (v37);
      }

      v34 &= ~0x8000000000000000;
    }
  }

  else
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v56 = v34;
  re::RenderFrame::registerExternalBuffer(a4, v50, v61, &v56, 0);
  if (v51 != -1)
  {
    (off_1F5D0F7B8[v51])(v61, v50);
  }

LABEL_41:
  *v33 = -1;
  v38 = "N2re13VRRUnwarpDataE";
  if (("N2re13VRRUnwarpDataE" & 0x8000000000000000) != 0)
  {
    v39 = ("N2re13VRRUnwarpDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v40 = 5381;
    do
    {
      v38 = v40;
      v41 = *v39++;
      v40 = (33 * v40) ^ v41;
    }

    while (v41);
  }

  *v61 = (v12 - 0x61C8864680B583E9 + (v38 << 6) + (v38 >> 2)) ^ v38;
  v42 = (*(**(a4 + 5) + 32))(*(a4 + 5), 16, 8);
  *v42 = &unk_1F5D0F7F0;
  v42[1] = 0;
  v56 = v42;
  v43 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, v61, &v56);
  v44 = *v43;
  *(*v43 + 8) = 0;
  if ([*(v18 + 8 * v16) layerCount] > 1)
  {
    v45 = 1;
  }

  else
  {
    v45 = 255;
  }

  *(v44 + 10) = v45;
  *v61 = 0x2988A88C0AE16068;
  *&v61[8] = "VRRUnwarpProvider";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(v61, __s, a3);
  if (DWORD2(v67) != -1)
  {
    (off_1F5D0F7B8[DWORD2(v67)])(v61, &buf);
  }

  return ScopeHash;
}

void re::VRRUnwarpProvider::provide(re::VRRUnwarpProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 72))
  {
    v8 = *(this + 10);
  }

  else
  {
    v8 = this + 73;
  }

  re::RenderFrame::tryGetInputTarget(a4, v8, 0, &v57);
  if (DWORD2(v57) != -1 && HIDWORD(v57) != -1)
  {
    RenderGraph = re::RenderFrame::makeRenderGraph(a4, a3, 0);
    *buf = 3;
    v44 = -1;
    v45 = -1;
    v46 = -1;
    v47 = 0;
    v48 = 0;
    v50 = xmmword_1E30A3B60;
    v51 = 0x2000000000;
    v52 = -1;
    v53 = -1;
    v54 = -1;
    v55 = 0;
    v56 = 0;
    v43 = 0x300000073;
    __asm { FMOV            V0.2S, #1.0 }

    v49 = _D0;
    re::RenderFrame::createTarget(a4, buf, "UnwarpedTarget", &v41);
    v35[0] = *(this + 12) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::addTargetOutput(a4, v35, &v41, 0);
    v35[1] = -1;
    v36 = 0;
    v37 = 1065353216;
    v38 = 0xFFFFFFFF00000020;
    v39 = -1;
    LODWORD(v35[0]) = 2;
    if (*(this + 12) == 65290051)
    {
      v17 = *(this + 13);
      v18 = *v17;
      if (*v17)
      {
        v19 = v17 + 1;
        v20 = "Color";
        while (v18 == *v20)
        {
          ++v20;
          v21 = *v19++;
          v18 = v21;
          if (!v21)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v20 = "Color";
LABEL_18:
        if (!*v20)
        {
          if (!a3)
          {
            v28 = 0xBC9C7D0DAB09280ELL;
            goto LABEL_28;
          }

          v30 = *a3;
          if (!*a3)
          {
            v28 = 0x3C9C7D0DAB092809;
            goto LABEL_28;
          }

          v31 = a3[1];
          if (v31)
          {
            v32 = a3 + 2;
            do
            {
              v30 = 31 * v30 + v31;
              v33 = *v32++;
              v31 = v33;
            }

            while (v33);
          }

          v26 = (v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x739AFA76D2DD5F1CLL;
          v27 = 0x4F06877B79D47715;
          goto LABEL_25;
        }
      }
    }

    if (!a3)
    {
      v28 = 0xBC9C7D0DAB09284DLL;
      goto LABEL_28;
    }

    v22 = *a3;
    if (!*a3)
    {
      v28 = 0x3C9C7D0DAB09284ALL;
      goto LABEL_28;
    }

    v23 = a3[1];
    if (v23)
    {
      v24 = a3 + 2;
      do
      {
        v22 = 31 * v22 + v23;
        v25 = *v24++;
        v23 = v25;
      }

      while (v25);
    }

    v26 = (v22 & 0x7FFFFFFFFFFFFFFFLL) + 0x739AFA76D2DD5F5CLL;
    v27 = 0x4F06877B79D47716;
LABEL_25:
    v28 = v26 ^ v27;
LABEL_28:
    v40 = v28;
    re::RenderFrame::createBuffer(a4, v35, "RateMapBuffer", &v34);
    v29 = re::RenderGraph::addNode<re::RenderGraphVRRUnwarpNode>(RenderGraph, "Unwarp node");
    *(v29 + 264) = v57;
    *(v29 + 280) = v41;
    *(v29 + 296) = v34;
    re::AssetHandle::operator=(v29 + 312, this + 5);
    re::RenderGraphVRRUnwarpNode::configure(v29, a2, a3, a4);
    return;
  }

  v11 = *re::graphicsLogObjects(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Could not get input color in Unwarp provider", buf, 2u);
  }
}

void re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::prepareTexturesForFrame(re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler *this)
{
  v2 = *(this + 5);
  v3 = *(v2 + 176);
  v4 = *(v2 + 180);
  re::mtl::makeDefaultDevice(&v19);
  v5 = MEMORY[0x1E69741C0];
  v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v6 setStorageMode_];
  [v6 setPixelFormat_];
  [v6 setWidth_];
  [v6 setHeight_];
  [v6 setUsage_];

  v7 = *(this + 5);
  v8 = *(v7 + 176);
  v9 = *(v7 + 180);
  re::mtl::makeDefaultDevice(&v19);
  v10 = [objc_msgSend(v5 alloc)];
  [v10 setStorageMode_];
  [v10 setPixelFormat_];
  [v10 setWidth_];
  [v10 setHeight_];
  [v10 setUsage_];

  v11 = *(*(this + 5) + 32);
  v13 = v11 + 1;
  v12 = v11[1];
  if (!v12 || (v14 = [v12 width], v14 != objc_msgSend(v6, sel_width)) || (v15 = objc_msgSend(*v13, sel_height), v15 != objc_msgSend(v6, sel_height)) || (v16 = v11[4]) == 0 || (v17 = objc_msgSend(v16, sel_width), v17 != objc_msgSend(v10, sel_width)) || (v18 = objc_msgSend(v11[4], sel_height), v18 != objc_msgSend(v10, sel_height)))
  {
    *(this + 56) = 1;
    re::mtl::Device::makeTexture(v6, this + 6, &v19);
    NS::SharedPtr<MTL::Texture>::operator=(v13, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(v6, this + 6, &v19);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 3, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(v6, this + 6, &v19);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 2, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(v10, this + 6, &v19);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 4, &v19);
    if (v19)
    {
    }

    re::mtl::Device::makeTexture(v10, this + 6, &v19);
    NS::SharedPtr<MTL::Texture>::operator=(v11 + 5, &v19);
    if (v19)
    {
    }
  }

  NS::SharedPtr<MTL::Buffer>::operator=(this, v13);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 1, v11 + 3);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 2, v11 + 2);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 3, v11 + 4);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 4, v11 + 5);
  if (v10)
  {
  }

  if (v6)
  {
  }
}

void re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler::saveTexturesForNextFrame(re::guided_filter_occlusion::GuidedFilterOcclusionTextureRecycler *this)
{
  v1 = *(*(this + 5) + 32);
  v4 = *(v1 + 16);
  NS::SharedPtr<MTL::Buffer>::operator=((v1 + 16), (v1 + 24));
  NS::SharedPtr<MTL::Buffer>::operator=((v1 + 24), &v4);
  v2 = *(v1 + 32);
  v1 += 32;
  v3 = v2;
  NS::SharedPtr<MTL::Buffer>::operator=(v1, (v1 + 8));
  NS::SharedPtr<MTL::Buffer>::operator=((v1 + 8), &v3);
  if (v3)
  {
  }

  if (v4)
  {
  }
}

void re::guided_filter_occlusion::GuidedFilterKernelRecycler::prepareKernelsForFrame(re::guided_filter_occlusion::GuidedFilterKernelRecycler *this, const re::RenderManager *a2, re::mtl::Library *a3, int a4)
{
  v5 = *(*(this + 6) + 32);
  if (a4)
  {
    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    ComputePipelineState = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 6, ComputePipelineState);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v8 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v8 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v9 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 7, v9);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v10 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v10 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v11 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 8, v11);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v12 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v12 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v13 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 9, v13);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v14 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v14 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v15 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 10, v15);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v16 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v16 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v17 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 11, v17);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v18 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v18 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v19 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 12, v19);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    v20 = v70;
    if (v70 && (v71 & 1) != 0)
    {
      v20 = (*(*v70 + 40))();
    }

    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v21 = re::getOrCreateComputePipelineState(a2, &v70);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 13, v21);
    if (v85)
    {

      v85 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v78);
    if (v75 == 1 && v76)
    {
      if (BYTE8(v76))
      {
        (*(*v76 + 40))();
      }

      v76 = 0u;
      v77 = 0u;
    }

    if (v72 == 1 && v73)
    {
      if (BYTE8(v73))
      {
        (*(*v73 + 40))();
      }

      v74 = 0u;
      v73 = 0u;
    }

    if (v70 && (v71 & 1) != 0)
    {
      (*(*v70 + 40))();
    }
  }

  v23 = v5 + 14;
  v22 = v5[14];
  if (!v22 || (v24 = v22, v25 = [v24 kernelDiameter], v26 = *(*(this + 6) + 124), v24, v25 != v26))
  {
    re::mtl::mps::ImageGuidedFilter::ImageGuidedFilter(&v70, (this + 56), *(*(this + 6) + 124));
    if (v23 != &v70)
    {
      v27 = v70;
      v70 = 0;
      v28 = *v23;
      *v23 = v27;
    }

    v29 = *v23;
    LODWORD(v30) = 981668463;
    [v29 setEpsilon:v30];
  }

  v32 = v5 + 15;
  v31 = v5[15];
  if (v31)
  {
    v33 = v31;
    if ([v33 kernelWidth] == *(*(this + 6) + 112))
    {
      v34 = *v32;
      v35 = [v34 kernelHeight];
      v36 = *(*(this + 6) + 112);

      if (v35 == v36)
      {
        goto LABEL_135;
      }
    }

    else
    {
    }
  }

  v37 = *(*(this + 6) + 112);
  re::mtl::mps::ImageAreaMax::ImageAreaMax(&v70, (this + 56), v37, v37);
  if (v32 != &v70)
  {
    v38 = v70;
    v70 = 0;
    v39 = *v32;
    *v32 = v38;
  }

LABEL_135:
  v41 = v5 + 16;
  v40 = v5[16];
  if (v40)
  {
    v42 = v40;
    if ([v42 kernelWidth] == *(*(this + 6) + 120))
    {
      v43 = *v41;
      v44 = [v43 kernelHeight];
      v45 = *(*(this + 6) + 120);

      if (v44 == v45)
      {
        goto LABEL_143;
      }
    }

    else
    {
    }
  }

  v46 = *(*(this + 6) + 120);
  re::mtl::mps::ImageAreaMax::ImageAreaMax(&v70, (this + 56), v46, v46);
  if (v41 != &v70)
  {
    v47 = v70;
    v70 = 0;
    v48 = *v41;
    *v41 = v47;
  }

LABEL_143:
  v50 = v5 + 17;
  v49 = v5[17];
  if (v49)
  {
    v51 = v49;
    if ([v51 kernelWidth] == *(*(this + 6) + 132))
    {
      v52 = *v50;
      v53 = [v52 kernelHeight];
      v54 = *(*(this + 6) + 132);

      if (v53 == v54)
      {
        goto LABEL_151;
      }
    }

    else
    {
    }
  }

  v55 = *(*(this + 6) + 132);
  re::mtl::mps::ImageTent::ImageTent(&v70, (this + 56), v55, v55);
  if (v50 != &v70)
  {
    v56 = v70;
    v70 = 0;
    v57 = *v50;
    *v50 = v56;
  }

LABEL_151:
  v58 = v5 + 18;
  if (!v5[18])
  {
    re::mtl::mps::ImageBilinearScale::ImageBilinearScale(&v70, (this + 56));
    if (v58 != &v70)
    {
      v59 = v70;
      v70 = 0;
      v60 = *v58;
      *v58 = v59;
    }
  }

  v62 = v5[19];
  v61 = v5 + 19;
  if (!v62)
  {
    re::mtl::mps::ImageBilinearScale::ImageBilinearScale(&v70, (this + 56));
    if (v61 != &v70)
    {
      v63 = v70;
      v70 = 0;
      v64 = *v61;
      *v61 = v63;
    }
  }

  v65 = *v23;
  re::ObjCObject::operator=(this, v65);

  v66 = *v41;
  re::ObjCObject::operator=(this + 2, v66);

  v67 = *v50;
  re::ObjCObject::operator=(this + 3, v67);

  v68 = *v58;
  re::ObjCObject::operator=(this + 4, v68);

  v69 = *v61;
  re::ObjCObject::operator=(this + 5, v69);
}

re::RenderGraphComputeNodeBase *re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(re::RenderGraphComputeNodeBase *this, const char *a2)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this, a2);
  *v3 = &unk_1F5D0F818;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 320) = 0;
  *(this + 344) = 0;
  *(this + 368) = 0;
  *(this + 384) = 0;
  *(this + 416) = 0;
  *(this + 53) = -1;
  *(this + 54) = -1;
  *(this + 55) = -1;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 118) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  return this;
}

uint64_t re::RenderGraphComputeNodeBase::configure(re::RenderGraphComputeNodeBase *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  re::AssetHandle::loadNow(*(this + 34), 0);
  v8 = *(re::AssetHandle::loadedAsset<re::ShaderLibraryAsset>((this + 264)) + 72);
  re::DynamicString::DynamicString(&v11, (this + 288));
  v13 = 0;
  v16 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v21 = 0;
  v22 = v8;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v11);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 61, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v24)
  {

    v24 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
  if (v16 == 1 && v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v15 = 0u;
    v14 = 0u;
  }

  result = v11;
  if (v11)
  {
    if (v12)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

void re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(void *a1, uint64_t a2, id *a3)
{
  v6 = a1[15];
  if (v6)
  {
    v7 = a1[17];
    v8 = 32 * v6;
    do
    {
      if (*(v7 + 20) != 1 || *(v7 + 8) != -1 && *(v7 + 12) != -1)
      {
        v9 = re::RenderGraphContext::metalBuffer(a2, v7);
        v11 = re::BufferSlice::buffer(v9, v10);
        [*a3 setBuffer:*v11 offset:*(v11 + 32) atIndex:*(v7 + 16)];
      }

      v7 += 32;
      v8 -= 32;
    }

    while (v8);
  }

  v12 = a1[20];
  if (v12)
  {
    v13 = a1[22];
    v14 = v12 << 6;
    do
    {
      if (*(v13 + 49) != 1 || *(v13 + 8) != -1 && *(v13 + 12) != -1)
      {
        v15 = re::RenderGraphContext::metalBuffer(a2, v13);
        v17 = re::BufferSlice::buffer(v15, v16);
        [*a3 setBuffer:*v17 offset:*(v17 + 32) atIndex:*(v13 + 16)];
      }

      v13 += 64;
      v14 -= 64;
    }

    while (v14);
  }

  v18 = a1[25];
  if (v18)
  {
    v19 = a1[27];
    v20 = 32 * v18;
    do
    {
      if (*(v19 + 20) != 1 || *(v19 + 8) != -1 && *(v19 + 12) != -1)
      {
        re::RenderGraphContext::metalTexture(a2, v19, *(v19 + 21), *(v19 + 22), &v24);
        [*a3 setTexture:v24 atIndex:*(v19 + 16)];
        if (v24)
        {
        }
      }

      v19 += 32;
      v20 -= 32;
    }

    while (v20);
  }

  v21 = a1[30];
  if (v21)
  {
    v22 = a1[32];
    v23 = v21 << 6;
    do
    {
      if (*(v22 + 49) != 1 || *(v22 + 8) != -1 && *(v22 + 12) != -1)
      {
        re::RenderGraphContext::metalTexture(a2, v22, 0, 0, &v24);
        [*a3 setTexture:v24 atIndex:*(v22 + 16)];
        if (v24)
        {
        }
      }

      v22 += 64;
      v23 -= 64;
    }

    while (v23);
  }
}

void re::RenderGraphComputeNodeBase::execute(re::RenderGraphComputeNodeBase *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v21, 5036, 0);
  if (((*(*this + 136))(this, a2) & 1) == 0)
  {
    (*(*this + 128))(&v16, this, a2);
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 0, 0, &v15);
    [v15 setComputePipelineState:*(this + 61)];
    v4 = v15;
    v14 = v4;
    re::RenderGraphComputeNodeBase::setTexturesAndBuffersOnEncoders(this, a2, &v14);

    v5 = *(this + 58);
    if (v5)
    {
      v6 = 8 * v5;
      v7 = (*(this + 60) + 4);
      do
      {
        [v15 setThreadgroupMemoryLength:*v7 atIndex:*(v7 - 1)];
        v7 += 2;
        v6 -= 8;
      }

      while (v6);
    }

    v13 = v15;
    (*(*this + 144))(this, a2, &v13);

    v8 = *(a2 + 1);
    v12 = v15;
    re::RenderManager::sampleComputeEncoderMTLCounterBegin(v8, &v12, 1u);

    *&v9 = v16;
    *(&v9 + 1) = HIDWORD(v16);
    v24 = v9;
    v25 = v17;
    *&v9 = v18;
    *(&v9 + 1) = v19;
    v22 = v9;
    v23 = v20;
    [v15 dispatchThreadgroups:&v24 threadsPerThreadgroup:&v22];
    v10 = *(a2 + 1);
    v11 = v15;
    re::RenderManager::sampleComputeEncoderMTLCounterEnd(v10, &v11, 1u);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v21);
}

void re::RenderGraphComputeNode::getDispatchSizes(re::RenderGraphComputeNode *this@<X0>, const re::RenderGraphContext *a2@<X1>, unsigned int *a3@<X8>)
{
  v5 = *(this + 109);
  v6 = *(this + 110);
  v7 = *(this + 111);
  v8 = *(this + 106);
  v9 = *(this + 107);
  v10 = *(this + 108);
  if (*(this + 320) == 1)
  {
    re::RenderGraphContext::metalTexture(a2, this + 328, 0, 0, &v19);
    if (v5 == -1)
    {
      v5 = [*(this + 61) threadExecutionWidth];
    }

    if (v6 == -1)
    {
      v6 = [*(this + 61) maxTotalThreadsPerThreadgroup] / v5;
    }

    if (v7 == -1)
    {
      v7 = 1;
    }

    v11 = 1.0;
    v12 = 1.0;
    v13 = 1.0;
    if (*(this + 384) == 1)
    {
      v12 = *(this + 100);
      v11 = *(this + 101);
      v13 = *(this + 102);
    }

    if (v8 == -1)
    {
      v8 = ((roundf(v12 * [v19 width]) + v5) + -1.0) / v5;
    }

    if (v9 == -1)
    {
      v9 = ((roundf(v11 * [v19 height]) + v6) + -1.0) / v6;
    }

    if (v10 == -1)
    {
      v10 = vcvtas_u32_f32(v13 * [v19 depth]);
    }

    v14 = v19;
    if (!v19)
    {
      goto LABEL_49;
    }

LABEL_35:

    goto LABEL_49;
  }

  if (*(this + 344) == 1)
  {
    v15 = re::RenderGraphContext::metalBuffer(a2, this + 352);
    v17 = *re::BufferSlice::buffer(v15, v16);
    if (v5 == -1)
    {
      v5 = [*(this + 61) maxTotalThreadsPerThreadgroup];
    }

    if (v6 == -1)
    {
      v6 = 1;
    }

    if (v7 == -1)
    {
      v7 = 1;
    }

    v18 = 1.0;
    if (*(this + 416) == 1)
    {
      v18 = *(this + 105);
    }

    if (v8 == -1)
    {
      v8 = ((roundf(v18 * [v17 length]) + v5) + -1.0) / v5;
    }

    if (v9 == -1)
    {
      v9 = 1;
    }

    if (v10 == -1)
    {
      v10 = 1;
    }

    if (v17)
    {
      v14 = v17;
      goto LABEL_35;
    }
  }

  else if (*(this + 368) == 1)
  {
    if (v5 == -1)
    {
      v5 = [*(this + 61) maxTotalThreadsPerThreadgroup];
    }

    if (v6 == -1)
    {
      v6 = 1;
    }

    if (v7 == -1)
    {
      v7 = 1;
    }

    if (v8 == -1)
    {
      v8 = (v5 + *(this + 93) - 1) / v5;
    }

    if (v9 == -1)
    {
      v9 = 1;
    }

    if (v10 == -1)
    {
      v10 = 1;
    }
  }

LABEL_49:
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v5;
  a3[4] = v6;
  a3[5] = v7;
}

void re::RenderGraphComputeNode::validateAttachmentsDuringGraphBuild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v93 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v90, a3, 3);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(a1 + 136);
    v7 = v6 + 32 * v5;
    do
    {
      v8 = *(v6 + 16);
      v9 = v90;
      if (v90)
      {
        v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v11 = *(*(&v90 + 1) + 4 * ((v10 ^ (v10 >> 31)) % DWORD2(v91)));
        if (v11 != 0x7FFFFFFF)
        {
          while (*(v91 + 32 * v11 + 4) != v8)
          {
            v11 = *(v91 + 32 * v11) & 0x7FFFFFFF;
            if (v11 == 0x7FFFFFFF)
            {
              goto LABEL_16;
            }
          }

          v12 = *(a1 + 16);
          re::RenderGraphCompiled::bufferName(&v82, *(a2 + 296), *(v6 + 8));
          re::DynamicString::format("(%s): Buffer read (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", &v86, v12, *(&v82 + 1), *(v6 + 16));
          re::RenderGraphCompiled::addError(a2, &v86);
          v13 = v86;
          if (v86)
          {
            if (BYTE8(v86))
            {
              v13 = (*(*v86 + 40))(v86, v87);
            }

            v86 = 0u;
            v87 = 0u;
          }

          if (v82)
          {
            if (v82)
            {
            }
          }

          v8 = *(v6 + 16);
        }
      }

LABEL_16:
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
      v15 = v14 ^ (v14 >> 31);
      if (v9)
      {
        v16 = v15 % DWORD2(v91);
        v17 = *(*(&v90 + 1) + 4 * v16);
        if (v17 != 0x7FFFFFFF)
        {
          while (*(v91 + 32 * v17 + 4) != v8)
          {
            v17 = *(v91 + 32 * v17) & 0x7FFFFFFF;
            if (v17 == 0x7FFFFFFF)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_23;
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

LABEL_22:
      v18 = re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v90, v16, v15);
      *(v18 + 4) = *(v6 + 16);
      *(v18 + 8) = 0;
      *(v18 + 16) = -1;
      *(v18 + 8) = *v6;
      *(v18 + 16) = *(v6 + 8);
      ++HIDWORD(v93);
LABEL_23:
      v6 += 32;
    }

    while (v6 != v7);
  }

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v89 = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v86, a3, 3);
  v19 = *(a1 + 160);
  if (v19)
  {
    v20 = *(a1 + 176);
    v21 = &v20[16 * v19];
    do
    {
      v22 = v20[4];
      if (re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::containsKey(&v86, v20[4]))
      {
        v23 = *(a1 + 16);
        re::RenderGraphCompiled::bufferName(&v76, *(a2 + 296), v20[2]);
        re::DynamicString::format("(%s): Buffer write (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", &v82, v23, *(&v76 + 1), v20[4]);
        re::RenderGraphCompiled::addError(a2, &v82);
        v24 = v82;
        if (v82)
        {
          if (BYTE8(v82))
          {
            v24 = (*(*v82 + 40))();
          }

          v82 = 0u;
          v83 = 0u;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }

        v22 = v20[4];
      }

      if (v90)
      {
        v25 = 0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30));
        v26 = *(*(&v90 + 1) + 4 * (((0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) ^ ((0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) >> 31)) % DWORD2(v91)));
        if (v26 != 0x7FFFFFFF)
        {
          while (*(v91 + 32 * v26 + 4) != v22)
          {
            v26 = *(v91 + 32 * v26) & 0x7FFFFFFF;
            if (v26 == 0x7FFFFFFF)
            {
              goto LABEL_51;
            }
          }

          v27 = *(v91 + 32 * v26 + 16);
          if (v27 != v20[2])
          {
            v28 = *(a1 + 16);
            re::RenderGraphCompiled::bufferName(&v76, *(a2 + 296), v27);
            v29 = *(&v76 + 1);
            re::RenderGraphCompiled::bufferName(&v74, *(a2 + 296), v20[2]);
            re::DynamicString::format("(%s): Buffer read_write at compute index %u is not consistent. [read]: %s; [write]: %s. They should be the same.", &v82, v28, v22, v29, *(&v74 + 1));
            re::RenderGraphCompiled::addError(a2, &v82);
            v30 = v82;
            if (v82)
            {
              if (BYTE8(v82))
              {
                v30 = (*(*v82 + 40))();
              }

              v82 = 0u;
              v83 = 0u;
            }

            if (v74)
            {
              if (v74)
              {
              }
            }

            if (v76)
            {
              if (v76)
              {
              }
            }
          }
        }
      }

LABEL_51:
      if (v20[5] != 5)
      {
        v31 = *(a1 + 16);
        re::RenderGraphCompiled::bufferName(&v76, *(a2 + 296), v20[2]);
        re::DynamicString::format("(%s): Buffer write (%s, %u) Non-compute write on compute node", &v82, v31, *(&v76 + 1), v20[4]);
        re::RenderGraphCompiled::addError(a2, &v82);
        v32 = v82;
        if (v82)
        {
          if (BYTE8(v82))
          {
            v32 = (*(*v82 + 40))();
          }

          v82 = 0u;
          v83 = 0u;
        }

        if (v76)
        {
          if (v76)
          {
          }
        }
      }

      re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(&v86, v20 + 4);
      v20 += 16;
    }

    while (v20 != v21);
  }

  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v85 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v82, a3, 3);
  v33 = *(a1 + 200);
  if (v33)
  {
    v34 = *(a1 + 216);
    v35 = &v34[4 * v33];
    do
    {
      v36 = *(v34 + 4);
      v37 = v82;
      if (v82)
      {
        v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
        v39 = *(*(&v82 + 1) + 4 * ((v38 ^ (v38 >> 31)) % DWORD2(v83)));
        if (v39 != 0x7FFFFFFF)
        {
          while (*(v83 + 32 * v39 + 4) != v36)
          {
            v39 = *(v83 + 32 * v39) & 0x7FFFFFFF;
            if (v39 == 0x7FFFFFFF)
            {
              goto LABEL_75;
            }
          }

          v40 = *(a1 + 16);
          v80 = 0;
          v81 = -1;
          v80 = *v34;
          v81 = v34[1];
          re::RenderGraphCompiled::targetName(a2, &v80, &v74);
          re::DynamicString::format("(%s): Target read (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", &v76, v40, *(&v74 + 1), *(v34 + 4));
          re::RenderGraphCompiled::addError(a2, &v76);
          v41 = v76;
          if (v76)
          {
            if (BYTE8(v76))
            {
              v41 = (*(*v76 + 40))();
            }

            v76 = 0u;
            v77 = 0u;
          }

          if (v74)
          {
            if (v74)
            {
            }
          }

          v36 = *(v34 + 4);
        }
      }

LABEL_75:
      v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
      v43 = v42 ^ (v42 >> 31);
      if (v37)
      {
        v44 = v43 % DWORD2(v83);
        v45 = *(*(&v82 + 1) + 4 * v44);
        if (v45 != 0x7FFFFFFF)
        {
          while (*(v83 + 32 * v45 + 4) != v36)
          {
            v45 = *(v83 + 32 * v45) & 0x7FFFFFFF;
            if (v45 == 0x7FFFFFFF)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_82;
        }
      }

      else
      {
        LODWORD(v44) = 0;
      }

LABEL_81:
      v46 = re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v82, v44, v43);
      *(v46 + 4) = *(v34 + 4);
      *(v46 + 8) = 0;
      *(v46 + 16) = -1;
      *(v46 + 8) = *v34;
      *(v46 + 16) = v34[1];
      ++HIDWORD(v85);
LABEL_82:
      v34 += 4;
    }

    while (v34 != v35);
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v79 = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v76, a3, 3);
  v47 = *(a1 + 240);
  if (v47)
  {
    v48 = *(a1 + 256);
    v49 = &v48[8 * v47];
    do
    {
      v50 = *(v48 + 4);
      if (re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::containsKey(&v76, *(v48 + 4)))
      {
        v51 = *(a1 + 16);
        v70 = 0;
        v71 = -1;
        v70 = *v48;
        v71 = v48[1];
        re::RenderGraphCompiled::targetName(a2, &v70, &v72);
        re::DynamicString::format("(%s): Target write (%s, %u) contains compute index which is already in use on a RenderGraphComputeNode.", &v74, v51, v73, *(v48 + 4));
        re::RenderGraphCompiled::addError(a2, &v74);
        v52 = v74;
        if (v74)
        {
          if (BYTE8(v74))
          {
            v52 = (*(*v74 + 40))();
          }

          v74 = 0u;
          v75 = 0u;
        }

        if (v72)
        {
          if (v72)
          {
          }
        }

        v50 = *(v48 + 4);
      }

      if (v82)
      {
        v53 = 0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30));
        v54 = *(*(&v82 + 1) + 4 * (((0x94D049BB133111EBLL * (v53 ^ (v53 >> 27))) ^ ((0x94D049BB133111EBLL * (v53 ^ (v53 >> 27))) >> 31)) % DWORD2(v83)));
        if (v54 != 0x7FFFFFFF)
        {
          while (*(v83 + 32 * v54 + 4) != v50)
          {
            v54 = *(v83 + 32 * v54) & 0x7FFFFFFF;
            if (v54 == 0x7FFFFFFF)
            {
              goto LABEL_110;
            }
          }

          v55 = v83 + 32 * v54;
          if (*(v55 + 16) != *(v48 + 2))
          {
            v56 = *(a1 + 16);
            v68 = 0;
            v69 = -1;
            v68 = *(v55 + 8);
            v69 = *(v55 + 16);
            re::RenderGraphCompiled::targetName(a2, &v68, &v72);
            v57 = v73;
            v64 = 0;
            v65 = -1;
            v64 = *v48;
            v65 = v48[1];
            re::RenderGraphCompiled::targetName(a2, &v64, &v66);
            re::DynamicString::format("(%s): Target read_write at compute index %u is not consistent. [read]: %s; [write]: %s. They should be the same.", &v74, v56, v50, v57, v67);
            re::RenderGraphCompiled::addError(a2, &v74);
            v58 = v74;
            if (v74)
            {
              if (BYTE8(v74))
              {
                v58 = (*(*v74 + 40))();
              }

              v74 = 0u;
              v75 = 0u;
            }

            if (v66)
            {
              if (v66)
              {
              }
            }

            if (v72)
            {
              if (v72)
              {
              }
            }
          }
        }
      }

LABEL_110:
      if (*(v48 + 5) != 5)
      {
        v59 = *(a1 + 16);
        v62 = 0;
        v63 = -1;
        v62 = *v48;
        v63 = v48[1];
        re::RenderGraphCompiled::targetName(a2, &v62, &v72);
        re::DynamicString::format("(%s): Target write (%s, %u) Non-compute write on compute node", &v74, v59, v73, *(v48 + 4));
        re::RenderGraphCompiled::addError(a2, &v74);
        v60 = v74;
        if (v74)
        {
          if (BYTE8(v74))
          {
            v60 = (*(*v74 + 40))();
          }

          v74 = 0u;
          v75 = 0u;
        }

        if (v72)
        {
          if (v72)
          {
          }
        }
      }

      re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(&v76, v48 + 4);
      v48 += 8;
    }

    while (v48 != v49);
  }

  if ((*(a1 + 320) & 1) == 0 && (*(a1 + 344) & 1) == 0 && (*(a1 + 368) & 1) == 0)
  {
    if (*(a1 + 424) == -1)
    {
      re::DynamicString::format("(%s): gridSizeWidth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", &v74, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v74);
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))();
        }
      }
    }

    if (*(a1 + 428) == -1)
    {
      re::DynamicString::format("(%s): gridSizeHeight not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", &v74, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v74);
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))();
        }
      }
    }

    if (*(a1 + 432) == -1)
    {
      re::DynamicString::format("(%s): gridSizeDepth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", &v74, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v74);
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))();
        }
      }
    }

    if (*(a1 + 436) == -1)
    {
      re::DynamicString::format("(%s): threadGroupSizeWidth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", &v74, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v74);
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))();
        }
      }
    }

    if (*(a1 + 440) == -1)
    {
      re::DynamicString::format("(%s): threadGroupSizeHeight not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", &v74, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v74);
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))();
        }
      }
    }

    if (*(a1 + 444) == -1)
    {
      re::DynamicString::format("(%s): threadGroupSizeDepth not specified and no outputDimensionsTarget or outputDimensionsBuffer or outputElementCount was supplied on a RenderGraphComputeNode.", &v74, *(a1 + 16));
      re::RenderGraphCompiled::addError(a2, &v74);
      if (v74)
      {
        if (BYTE8(v74))
        {
          (*(*v74 + 40))();
        }
      }
    }
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&v76);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v82);
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&v86);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v90);
}

re::StringID *re::RenderGraphCompiled::bufferName(re::StringID *a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a2 + 32) + 48 * a3 + 8);

  return re::StringID::StringID(a1, v3);
}

BOOL re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::containsKey(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v4 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31)) % v2));
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 16 * v4 + 12) == a2)
  {
    return 1;
  }

  do
  {
    v4 = *(v6 + 16 * v4 + 8) & 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
  }

  while (v4 != 0x7FFFFFFF && *(v6 + 16 * v4 + 12) != a2);
  return result;
}

uint64_t re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 16 * v9 + 12) == v4)
      {
        return result;
      }

      while (1)
      {
        v9 = *(v10 + 16 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 16 * v9 + 12) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

re::StringID *re::RenderGraphCompiled::targetName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(a1 + 296);
  v4 = *(a2 + 8);
  if (*(v3 + 16) <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(v3 + 32) + 48 * v4 + 8);

  return re::StringID::StringID(a3, v5);
}

void *re::allocInfo_ThreadGroupMemorySetting(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE778))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE8B0, "ThreadGroupMemorySetting");
    __cxa_guard_release(&qword_1EE1BE778);
  }

  return &unk_1EE1BE8B0;
}

void re::initInfo_ThreadGroupMemorySetting(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x22B37C92029F6B34;
  v15[1] = "ThreadGroupMemorySetting";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1BE780, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE780);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "index";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BE7A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "bytes";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BE7B0 = v13;
      __cxa_guard_release(&qword_1EE1BE780);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BE7A8;
  *(this + 9) = re::internal::defaultConstruct<re::ThreadGroupMemorySetting>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ThreadGroupMemorySetting>;
  *(this + 13) = re::internal::defaultConstructV2<re::ThreadGroupMemorySetting>;
  *(this + 14) = re::internal::defaultDestructV2<re::ThreadGroupMemorySetting>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_RenderGraphComputeNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BE788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE788))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BE940, "RenderGraphComputeNode");
    __cxa_guard_release(&qword_1EE1BE788);
  }

  return &unk_1EE1BE940;
}

void re::initInfo_RenderGraphComputeNode(re *this, re::IntrospectionBase *a2)
{
  v62[0] = 0xB2B40BD8F0C94D02;
  v62[1] = "RenderGraphComputeNode";
  if (v62[0])
  {
    if (v62[0])
    {
    }
  }

  *(this + 2) = v63;
  if ((atomic_load_explicit(&qword_1EE1BE790, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BE790);
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
      qword_1EE1BE838 = v8;
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
      qword_1EE1BE840 = v12;
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
      qword_1EE1BE848 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint32_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "gridSizeWidth";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1A800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BE850 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint32_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "gridSizeHeight";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1AC00000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BE858 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_uint32_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "gridSizeDepth";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x1B000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1BE860 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_uint32_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "threadGroupSizeWidth";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x1B400000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1BE868 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_uint32_t(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "threadGroupSizeHeight";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x1B800000008;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1BE870 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_uint32_t(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "threadGroupSizeDepth";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x1BC00000009;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1BE878 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(1);
      v43 = (*(*v41 + 32))(v41, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "threadGroupMemorySettings";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x1C00000000ALL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1BE880 = v43;
      v44 = re::introspectionAllocator(v43);
      re::IntrospectionInfo<re::Optional<re::RenderGraphTargetHandle>>::get(v44, v45);
      v46 = (*(*v44 + 32))(v44, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "outputDimensionsTarget";
      *(v46 + 16) = &qword_1EE1BE7B8;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0x1400000000CLL;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE1BE888 = v46;
      v47 = re::introspectionAllocator(v46);
      re::IntrospectionInfo<re::Optional<re::RenderGraphBufferHandle>>::get(v47, v48);
      v49 = (*(*v47 + 32))(v47, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "outputDimensionsBuffer";
      *(v49 + 16) = qword_1EE1BE7F8;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x1580000000DLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE1BE890 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::IntrospectionInfo<re::Optional<unsigned int>>::get(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "outputElementCount";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x1700000000ELL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE1BE898 = v53;
      v54 = re::introspectionAllocator(v53);
      v55 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1);
      v56 = (*(*v54 + 32))(v54, 72, 8);
      *v56 = 1;
      *(v56 + 8) = "outputDimensionsTargetMultiplier";
      *(v56 + 16) = v55;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0x1800000000FLL;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 0;
      qword_1EE1BE8A0 = v56;
      v57 = re::introspectionAllocator(v56);
      v59 = re::IntrospectionInfo<re::Optional<float>>::get(1, v58);
      v60 = (*(*v57 + 32))(v57, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "outputDimensionsBufferMultiplier";
      *(v60 + 16) = v59;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x1A000000010;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE1BE8A8 = v60;
      __cxa_guard_release(&qword_1EE1BE790);
    }
  }

  *(this + 2) = 0x1F000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1BE838;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphComputeNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphComputeNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphComputeNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphComputeNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v61 = v63;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(re *a1)
{
  v1 = a1;
  {
    if (a1)
    {
      re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::IntrospectionDynamicArray(&re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info);
    }
  }

  if (v1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::internal::introspectionInfoStorage<re::ThreadGroupMemorySetting>;
  if (!re::internal::introspectionInfoStorage<re::ThreadGroupMemorySetting>)
  {
    v5 = re::allocInfo_ThreadGroupMemorySetting(a1);
    re::internal::introspectionInfoStorage<re::ThreadGroupMemorySetting> = v5;
    re::initInfo_ThreadGroupMemorySetting(v5, v6);
  }

  if ((re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized & 1) == 0)
  {
    re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::isInitialized = 1;
    v7 = v5[6];
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info, 0);
    qword_1EE186B48 = 0x2800000003;
    dword_1EE186B50 = v7;
    word_1EE186B54 = 0;
    *&xmmword_1EE186B58 = 0;
    *(&xmmword_1EE186B58 + 1) = 0xFFFFFFFFLL;
    qword_1EE186B68 = v5;
    unk_1EE186B70 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info = &unk_1F5D0F998;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info, &v14);
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

    v14 = *(v5 + 2);
    xmmword_1EE186B58 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((v1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(a1);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::ThreadGroupMemorySetting>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphTargetHandle>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BE798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE798))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BE7B8);
    qword_1EE1BE7B8 = &unk_1F5D0FA30;
    __cxa_guard_release(&qword_1EE1BE798);
  }

  if ((_MergedGlobals_507 & 1) == 0)
  {
    v2 = re::introspect_RenderGraphTargetHandle(1, a2);
    if ((_MergedGlobals_507 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_507 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BE7B8, 0);
      qword_1EE1BE7C8 = 0x180000000DLL;
      dword_1EE1BE7D0 = v4;
      word_1EE1BE7D4 = 0;
      *&xmmword_1EE1BE7D8 = 0;
      *(&xmmword_1EE1BE7D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BE7E8 = v3;
      unk_1EE1BE7F0 = 0;
      qword_1EE1BE7B8 = &unk_1F5D0FA30;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1BE7B8, &v14);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1BE7D8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::RenderGraphBufferHandle>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BE7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE7A0))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(qword_1EE1BE7F8);
    qword_1EE1BE7F8[0] = &unk_1F5D0FAB0;
    __cxa_guard_release(&qword_1EE1BE7A0);
  }

  if ((byte_1EE1BE771 & 1) == 0)
  {
    v2 = re::introspect_RenderGraphBufferHandle(1, a2);
    if ((byte_1EE1BE771 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1BE771 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE1BE7F8, 0);
      unk_1EE1BE808 = 0x180000000DLL;
      unk_1EE1BE810 = v4;
      unk_1EE1BE814 = 0;
      *&xmmword_1EE1BE818 = 0;
      *(&xmmword_1EE1BE818 + 1) = 0xFFFFFFFFLL;
      unk_1EE1BE828 = v3;
      unk_1EE1BE830 = 0;
      qword_1EE1BE7F8[0] = &unk_1F5D0FAB0;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(qword_1EE1BE7F8, &v14);
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

      v11 = *(v3 + 2);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1BE818 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

re::RenderGraphComputeNodeBase *re::internal::defaultConstruct<re::RenderGraphComputeNode>(int a1, int a2, re::RenderGraphComputeNodeBase *this)
{
  result = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(this);
  *result = &unk_1F5D0F8D8;
  return result;
}

re::RenderGraphComputeNodeBase *re::internal::defaultConstructV2<re::RenderGraphComputeNode>(re::RenderGraphComputeNodeBase *a1)
{
  result = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(a1);
  *result = &unk_1F5D0F8D8;
  return result;
}

void re::RenderGraphComputeNode::~RenderGraphComputeNode(re::RenderGraphComputeNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::RenderGraphBufferHandle,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 4) = *(v17 - 3);
                *(v18 + 8) = 0;
                *(v18 + 16) = -1;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = *v17;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::IntrospectionDynamicArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5D0F998;
  return a1;
}

void *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ThreadGroupMemorySetting>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ThreadGroupMemorySetting>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionOptional<re::RenderGraphTargetHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphTargetHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphTargetHandle>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::RenderGraphTargetHandle>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    v4 = *(a2 + 2);
    v3 = *(a2 + 3);
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
    *(result + 16) = v4;
    *(result + 20) = v3;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::RenderGraphBufferHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphBufferHandle>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphBufferHandle>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::RenderGraphBufferHandle>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    v4 = *(a2 + 2);
    v3 = *(a2 + 3);
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
    *(result + 16) = v4;
    *(result + 20) = v3;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

re::RenderGraphComputeNodeBase *re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(re::RenderGraphComputeNodeBase *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D0F818;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 39) = 0;
  re::DynamicString::setCapacity(this + 36, 0);
  *(this + 320) = 0;
  *(this + 344) = 0;
  *(this + 368) = 0;
  *(this + 384) = 0;
  *(this + 416) = 0;
  *(this + 53) = -1;
  *(this + 54) = -1;
  *(this + 55) = -1;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 118) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  return this;
}

uint64_t re::DepthStencilSplitterProvider::DepthStencilSplitterProvider(uint64_t a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 8), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D0FB30;
  *(a1 + 40) = 65290051;
  *(a1 + 48) = "Color";
  *(a1 + 56) = 65919651;
  *(a1 + 64) = "Depth";
  *(a1 + 72) = 0x11F25A259CLL;
  *(a1 + 80) = "Stencil";
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void re::DepthStencilSplitterProvider::~DepthStencilSplitterProvider(re::DepthStencilSplitterProvider *this)
{
  re::AssetHandle::~AssetHandle((this + 112));
  re::AssetHandle::~AssetHandle((this + 88));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::DepthStencilSplitterProvider::~DepthStencilSplitterProvider(this);

  JUMPOUT(0x1E6906520);
}

unint64_t re::DepthStencilSplitterProvider::prepareFrame(re::DepthStencilSplitterProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
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
  v23 = 0x4C6F466C1137D991;
  v24 = "DepthStencilSplitterProvider";
  v15 = re::RenderGraphProviderBase::generateScopeHash(&v23, a2, a3);
  v16 = 0xBF58476D1CE4E5B9 * (ScopePixelFormat ^ (ScopePixelFormat >> 30));
  v17 = (((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
  v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v19 = ((v18 ^ (v18 >> 31)) - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  return (v14 - 0x61C8864680B583E9 + (v19 << 6) + (v19 >> 2)) ^ v19;
}

void re::DepthStencilSplitterProvider::provide(re::DepthStencilSplitterProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v28 = *(this + 7) & 0x7FFFFFFFFFFFFFFFLL;
  ScopePixelFormat = re::RenderFrame::getScopePixelFormat(a4, a3, &v28);
  v29 = ScopePixelFormat;
  v26 = *(this + 9) & 0x7FFFFFFFFFFFFFFFLL;
  v9 = re::RenderFrame::getScopePixelFormat(a4, a3, &v26);
  v27 = v9;
  v11 = ScopePixelFormat != 250 && ScopePixelFormat != 252;
  v13 = ScopePixelFormat != 255 && ScopePixelFormat != 260;
  v15 = v9 != 255 && v9 != 260;
  if (!v13 && !v15)
  {
    v16 = v9 == 0;
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(this, a3, a4, &v29, ScopePixelFormat == 0, "DepthStencilBlit");
    v17 = this;
    v18 = a3;
    v19 = a4;
    v20 = v16;
    v21 = "DepthStencilBlit";
LABEL_22:
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(v17, v18, v19, &v27, v20, v21);
    return;
  }

  v22 = v9 != 253 || v13;
  if ((v22 & 1) == 0)
  {
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(this, a3, a4, &v29, ScopePixelFormat == 0, "DepthBlit");
    goto LABEL_44;
  }

  if (v9)
  {
    v13 = 1;
  }

  if (!v13)
  {
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(this, a3, a4, &v29, ScopePixelFormat == 0, "DepthBlit");
    return;
  }

  if (!v11 && !v15)
  {
    v25 = v9 == 0;
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(this, a2, a3, a4, &v29, ScopePixelFormat == 0);
    v21 = "StencilBlit";
    v17 = this;
    v18 = a3;
    v19 = a4;
    v20 = v25;
    goto LABEL_22;
  }

  if (ScopePixelFormat == 0 && !v15)
  {
    v20 = v9 == 0;
    v21 = "StencilBlit";
    v17 = this;
    v18 = a3;
    v19 = a4;
    goto LABEL_22;
  }

  v23 = v9 != 253 || v11;
  if ((v23 & 1) == 0)
  {
    if (*(*(a4 + 1) + 372))
    {
      return;
    }

    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(this, a2, a3, a4, &v29, ScopePixelFormat == 0);
    goto LABEL_44;
  }

  if (v11 || v9 != 0)
  {
    v24 = v9 != 253 || ScopePixelFormat != 0;
    if (v24 || (*(*(a4 + 1) + 372) & 1) != 0)
    {
      return;
    }

LABEL_44:
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_4::operator()(this, a2, a3, a4, &v27);
    return;
  }

  if ((*(*(a4 + 1) + 372) & 1) == 0)
  {
    re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(this, a2, a3, a4, &v29, ScopePixelFormat == 0);
  }
}

uint16x4_t re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_0::operator()(uint64_t a1, const char *a2, re::RenderFrame *this, int *a4, int a5, const char *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  re::RenderFrame::tryGetInputTarget(this, *(a1 + 64), 0, &v33);
  v31 = 0;
  v32 = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *&v36[36] = _D0;
  v37 = xmmword_1E30A3B60;
  memset(&v36[4], 255, 24);
  *&v36[28] = 0;
  v36[32] = 0;
  v38 = 0x2000000000;
  v39 = -1;
  v40 = -1;
  v41 = -1;
  v42 = 0;
  v43 = 0;
  v17 = *a4;
  LODWORD(v35) = 3;
  HIDWORD(v35) = v17;
  *v36 = 2;
  v18 = "FinalDepth";
  if (*(a1 + 56) == 0x55ABE3BEEE2C4090)
  {
    v19 = *(a1 + 64);
    v20 = *v19;
    if (*v19)
    {
      v21 = v19 + 1;
      v22 = "EnvironmentDepth";
      while (v20 == *v22)
      {
        ++v22;
        v23 = *v21++;
        v20 = v23;
        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v18 = "FinalDepth";
    }

    else
    {
      v22 = "EnvironmentDepth";
LABEL_8:
      if (!*v22)
      {
        v18 = "FinalEnvironmentDepth";
      }
    }
  }

  re::RenderFrame::createTarget(this, &v35, v18, &v31);
  v24 = 56;
  if (a5)
  {
    v24 = 72;
  }

  v30 = *(a1 + v24) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::inheritLaneProperties(this, &v30, &v31, 0);
  v35 = *(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v35, &v31, 0);
  RenderGraph = re::RenderFrame::makeRenderGraph(this, a2, 0);
  v26.i64[0] = v34;
  v26.i64[1] = v32;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  result = vmovn_s32(vceqq_s32(v26, v27));
  result.i16[0] = vmaxv_u16(result);
  if ((result.i8[0] & 1) == 0)
  {
    v29 = re::RenderGraph::addNode<re::RenderGraphTargetCopyNode>(RenderGraph, a6);
    *(v29 + 368) = 1;
    v35 = v33;
    *v36 = v34;
    *&v36[8] = 0;
    *&v36[16] = 2;
    re::DynamicArray<re::TargetRead>::add((v29 + 184), &v35);
    v35 = v31;
    *v36 = v32;
    *&v36[8] = 0x400000000;
    *&v36[24] = xmmword_1E30474D0;
    *&v36[40] = 0;
    *&v37 = 0;
    return re::DynamicArray<re::TargetWrite>::add((v29 + 224), &v35).n128_u64[0];
  }

  return result;
}

re *re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_4::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = 0x9E3779B97F4A7C17;
  re::RenderFrame::tryGetInputTarget(this, *(a1 + 80), 0, &v45);
  v11 = strlen(a2);
  if (v11)
  {
    MurmurHash3_x64_128(a2, v11, 0, &v46);
    v12 = (*v47 - 0x61C8864680B583E9 + (v46 << 6) + (v46 >> 2)) ^ v46;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(a3);
  if (v13)
  {
    MurmurHash3_x64_128(a3, v13, 0, &v46);
    v10 = ((*v47 - 0x61C8864680B583E9 + (v46 << 6) + (v46 >> 2)) ^ v46) - 0x61C8864680B583E9;
  }

  v14 = re::RenderGraphDataStore::tryGet<re::CameraData>(this + 32, ((v12 >> 2) + (v12 << 6) + v10) ^ v12);
  v43 = 0;
  v44 = -1;
  v41 = 0;
  v42 = -1;
  *&v47[4] = -1;
  *&v47[12] = -1;
  *v48 = -1;
  v48[12] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&v48[16] = _D0;
  v49 = xmmword_1E30A3B60;
  v50 = 0x2000000000;
  v51 = -1;
  v52 = -1;
  v53 = -1;
  v54 = 0;
  v55 = 0;
  v20 = *a5;
  LODWORD(v46) = 3;
  HIDWORD(v46) = v20;
  *&v48[8] = 0;
  *v47 = 3;
  re::RenderFrame::createTarget(this, &v46, "FinalStencil", &v43);
  if (*(v14 + 884) >= 2u)
  {
    *&v47[12] = *(v14 + 884);
    *v47 = 8;
    re::RenderFrame::createTarget(this, &v46, "FinalStencil[MSAA]", &v41);
    v34.n128_u64[0] = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::addTargetOutput(this, v34.n128_u64, &v41, 0);
    v40[0] = v43;
    v40[1] = v44;
    v21 = v42.i32[0];
    *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v40) + 84) = v21;
    v34.n128_u64[0] = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(this, v34.n128_u64, &v41, 0);
  }

  v34.n128_u64[0] = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::inheritLaneProperties(this, v34.n128_u64, &v43, 0);
  v46 = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v46, &v43, 0);
  result = re::RenderFrame::makeRenderGraph(this, a3, 0);
  v23.i64[0] = *(&v45 + 1);
  v23.u64[1] = v44;
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  if ((vmaxv_u16(vmovn_s32(vceqq_s32(v23, v24))) & 1) == 0)
  {
    v25 = *(a1 + 120);
    if (v25)
    {
      v26 = atomic_load((v25 + 896));
      if (v26 == 2)
      {
        v27 = result;
        v28 = re::RenderGraph::addNode<re::RenderGraphFullscreenNode>(result, "StencilCopy");
        re::AssetHandle::operator=(v28 + 272, (a1 + 112));
        v46 = "fullscreenarray";
        *v47 = 15;
        v29 = re::DynamicString::operator=((v28 + 296), &v46);
        v34.n128_u64[1] = 0;
        v35 = 0;
        v36 = 0;
        re::DynamicString::setCapacity(&v34, 0);
        *&v37 = 0;
        *(&v37 + 1) = -1;
        v38 = 0;
        v39 = 0;
        v46 = "inputImage";
        *v47 = 10;
        re::DynamicString::operator=(&v34, &v46);
        v37 = v45;
        v39 = 1;
        LOBYTE(v38) = 1;
        re::RenderGraphFullscreenNode::setRenderGraphTextureCommand(v28, &v34);
        v30 = *(v14 + 884) > 1u;
        v31 = &v43;
        if (*(v14 + 884) > 1u)
        {
          v31 = &v41;
        }

        v46 = *v31;
        *v47 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v30), 0x1FuLL)), v42, v44);
        *&v47[8] = 0x300000000;
        *&v48[4] = xmmword_1E30474D0;
        *&v48[20] = 0;
        *&v49 = 0;
        v32 = re::DynamicArray<re::TargetWrite>::add((v28 + 224), &v46);
        (*(*v28 + 80))(v28, a2, a3, this, v32);
        if (*(v14 + 884) >= 2u)
        {
          v33 = re::RenderGraph::addNode<re::RenderGraphResolveNode>(v27, "StencilResolve");
          v46 = v43;
          *v47 = v44;
          *&v47[8] = 0x800000000;
          *&v48[4] = xmmword_1E30474D0;
          *&v48[20] = 0;
          *&v49 = 0;
          re::DynamicArray<re::TargetWrite>::add((v33 + 224), &v46);
          re::RenderGraphResolveNode::configure(v33, a2, a3, this);
        }

        result = v34.n128_u64[0];
        if (v34.n128_u64[0])
        {
          if (v34.n128_u8[8])
          {
            return (*(*v34.n128_u64[0] + 40))();
          }
        }
      }
    }
  }

  return result;
}

re *re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_3::operator()(uint64_t a1, const char *a2, const char *a3, re::RenderFrame *this, int *a5, int a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = 0x9E3779B97F4A7C17;
  re::RenderFrame::tryGetInputTarget(this, *(a1 + 64), 0, &v49);
  v13 = strlen(a2);
  if (v13)
  {
    MurmurHash3_x64_128(a2, v13, 0, &v50);
    v14 = (*v51 - 0x61C8864680B583E9 + (v50 << 6) + (v50 >> 2)) ^ v50;
  }

  else
  {
    v14 = 0;
  }

  v15 = strlen(a3);
  if (v15)
  {
    MurmurHash3_x64_128(a3, v15, 0, &v50);
    v12 = ((*v51 - 0x61C8864680B583E9 + (v50 << 6) + (v50 >> 2)) ^ v50) - 0x61C8864680B583E9;
  }

  v16 = re::RenderGraphDataStore::tryGet<re::CameraData>(this + 32, ((v14 >> 2) + (v14 << 6) + v12) ^ v14);
  v47 = 0;
  v48 = -1;
  v45 = 0;
  v46 = -1;
  *&v51[4] = -1;
  *&v51[12] = -1;
  *v52 = -1;
  v52[12] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&v52[16] = _D0;
  v53 = xmmword_1E30A3B60;
  v54 = 0x2000000000;
  v55 = -1;
  v56 = -1;
  v57 = -1;
  v58 = 0;
  v59 = 0;
  v22 = *a5;
  LODWORD(v50) = 3;
  HIDWORD(v50) = v22;
  *&v52[8] = 0;
  *v51 = 3;
  re::RenderFrame::createTarget(this, &v50, "FinalDepth", &v47);
  if (*(v16 + 884) >= 2u)
  {
    *&v51[12] = *(v16 + 884);
    *v51 = 8;
    re::RenderFrame::createTarget(this, &v50, "FinalDepth[MSAA]", &v45);
    v38.n128_u64[0] = *(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::addTargetOutput(this, v38.n128_u64, &v45, 0);
    v44[0] = v47;
    v44[1] = v48;
    v23 = v46.i32[0];
    *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v44) + 84) = v23;
    v24 = 56;
    if (a6)
    {
      v24 = 72;
    }

    v38.n128_u64[0] = *(a1 + v24) & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::inheritLaneProperties(this, v38.n128_u64, &v45, 0);
  }

  v25 = 56;
  if (a6)
  {
    v25 = 72;
  }

  v38.n128_u64[0] = *(a1 + v25) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::inheritLaneProperties(this, v38.n128_u64, &v47, 0);
  v50 = *(a1 + 56) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v50, &v47, 0);
  result = re::RenderFrame::makeRenderGraph(this, a3, 0);
  v27.i64[0] = *(&v49 + 1);
  v27.u64[1] = v48;
  v28.i64[0] = -1;
  v28.i64[1] = -1;
  if ((vmaxv_u16(vmovn_s32(vceqq_s32(v27, v28))) & 1) == 0)
  {
    v29 = *(a1 + 96);
    if (v29)
    {
      v30 = atomic_load((v29 + 896));
      if (v30 == 2)
      {
        v31 = result;
        v32 = re::RenderGraph::addNode<re::RenderGraphFullscreenNode>(result, "DepthCopy");
        re::AssetHandle::operator=(v32 + 272, (a1 + 88));
        v50 = "fullscreenarray";
        *v51 = 15;
        v33 = re::DynamicString::operator=((v32 + 296), &v50);
        v38.n128_u64[1] = 0;
        v39 = 0;
        v40 = 0;
        re::DynamicString::setCapacity(&v38, 0);
        *&v41 = 0;
        *(&v41 + 1) = -1;
        v42 = 0;
        v43 = 0;
        v50 = "inputImage";
        *v51 = 10;
        re::DynamicString::operator=(&v38, &v50);
        v41 = v49;
        v43 = 1;
        LOBYTE(v42) = 0;
        re::RenderGraphFullscreenNode::setRenderGraphTextureCommand(v32, &v38);
        v34 = *(v16 + 884) > 1u;
        v35 = &v47;
        if (*(v16 + 884) > 1u)
        {
          v35 = &v45;
        }

        v50 = *v35;
        *v51 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v34), 0x1FuLL)), v46, v48);
        *&v51[8] = 0x200000000;
        *&v52[4] = xmmword_1E30474D0;
        *&v52[20] = 0;
        *&v53 = 0;
        v36 = re::DynamicArray<re::TargetWrite>::add((v32 + 224), &v50);
        (*(*v32 + 80))(v32, a2, a3, this, v36);
        if (*(v16 + 884) >= 2u)
        {
          v37 = re::RenderGraph::addNode<re::RenderGraphResolveNode>(v31, "DepthResolve");
          v50 = v47;
          *v51 = v48;
          *&v51[8] = 0x700000000;
          *&v52[4] = xmmword_1E30474D0;
          *&v52[20] = 0;
          *&v53 = 0;
          re::DynamicArray<re::TargetWrite>::add((v37 + 224), &v50);
          re::RenderGraphResolveNode::configure(v37, a2, a3, this);
        }

        result = v38.n128_u64[0];
        if (v38.n128_u64[0])
        {
          if (v38.n128_u8[8])
          {
            return (*(*v38.n128_u64[0] + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint16x4_t re::DepthStencilSplitterProvider::provide(char const*,char const*,re::RenderFrame &)const::$_1::operator()(uint64_t a1, const char *a2, re::RenderFrame *this, int *a4, int a5, const char *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  re::RenderFrame::tryGetInputTarget(this, *(a1 + 80), 0, &v33);
  v31 = 0;
  v32 = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *&v36[36] = _D0;
  v37 = xmmword_1E30A3B60;
  memset(&v36[4], 255, 24);
  *&v36[28] = 0;
  v36[32] = 0;
  v38 = 0x2000000000;
  v39 = -1;
  v40 = -1;
  v41 = -1;
  v42 = 0;
  v43 = 0;
  v17 = *a4;
  LODWORD(v35) = 3;
  HIDWORD(v35) = v17;
  *v36 = 2;
  v18 = "FinalStencil";
  if (*(a1 + 72) == 0x1A41EFBF4696C449)
  {
    v19 = *(a1 + 80);
    v20 = *v19;
    if (*v19)
    {
      v21 = v19 + 1;
      v22 = "EnvironmentStencil";
      while (v20 == *v22)
      {
        ++v22;
        v23 = *v21++;
        v20 = v23;
        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v18 = "FinalStencil";
    }

    else
    {
      v22 = "EnvironmentStencil";
LABEL_8:
      if (!*v22)
      {
        v18 = "FinalEnvironmentStencil";
      }
    }
  }

  re::RenderFrame::createTarget(this, &v35, v18, &v31);
  v24 = 72;
  if (a5)
  {
    v24 = 56;
  }

  v30 = *(a1 + v24) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::inheritLaneProperties(this, &v30, &v31, 0);
  v35 = *(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::addTargetOutput(this, &v35, &v31, 0);
  RenderGraph = re::RenderFrame::makeRenderGraph(this, a2, 0);
  v26.i64[0] = v34;
  v26.i64[1] = v32;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  result = vmovn_s32(vceqq_s32(v26, v27));
  result.i16[0] = vmaxv_u16(result);
  if ((result.i8[0] & 1) == 0)
  {
    v29 = re::RenderGraph::addNode<re::RenderGraphTargetCopyNode>(RenderGraph, a6);
    *(v29 + 368) = 1;
    v35 = v33;
    *v36 = v34;
    *&v36[8] = 0;
    *&v36[12] = 256;
    v36[14] = 0;
    *&v36[16] = 2;
    re::DynamicArray<re::TargetRead>::add((v29 + 184), &v35);
    v35 = v31;
    *v36 = v32;
    *&v36[8] = 0x400000000;
    *&v36[24] = xmmword_1E30474D0;
    *&v36[40] = 0;
    *&v37 = 0;
    return re::DynamicArray<re::TargetWrite>::add((v29 + 224), &v35).n128_u64[0];
  }

  return result;
}

void *re::DepthStencilSplitterEmptyProvider::DepthStencilSplitterEmptyProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D0FB60;
  return a1;
}

void re::DepthStencilSplitterEmptyProvider::~DepthStencilSplitterEmptyProvider(re::DepthStencilSplitterEmptyProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::RealityDataPipe::RealityDataPipe(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D0FBC0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::init(a1 + 72, a2, 1uLL);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::init(a1 + 128, a2, 1uLL);
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1;
  *(a1 + 320) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 1;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 1;
  *(a1 + 600) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 616) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 1;
  *(a1 + 680) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 1;
  *(a1 + 792) = 0;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0u;
  re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::init(a1 + 744, a2, 1uLL);
  *(a1 + 800) = 0u;
  *(a1 + 816) = 1;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  re::BucketArray<re::TintContext,4ul>::init(a1 + 800, a2, 1uLL);
  *(a1 + 856) = 0u;
  *(a1 + 872) = 1;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 1;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  re::BucketArray<re::MeshSceneCollection,4ul>::init(a1 + 912, a2, 1uLL);
  *(a1 + 968) = 0u;
  *(a1 + 984) = 1;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 1;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 1;
  *(a1 + 1104) = 0u;
  *(a1 + 1128) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 1;
  *(a1 + 1160) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 1;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1216) = 0u;
  re::BucketArray<re::StaticTextInfo,4ul>::init(a1 + 1192, a2, 1uLL);
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 1;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 1;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 1;
  *(a1 + 1384) = 0u;
  *(a1 + 1408) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 1;
  *(a1 + 1440) = 0u;
  *(a1 + 1464) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 1;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1496) = 0u;
  re::BucketArray<re::FilterViewMeshScenes,4ul>::init(a1 + 1472, a2, 1uLL);
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 1;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 1;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0;
  re::BucketArray<re::SceneCRWSReferencePosition,4ul>::init(a1 + 1584, a2, 1uLL);
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 1;
  *(a1 + 1664) = 0;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 1;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0;
  re::BucketArray<re::MeshSortingCollection,4ul>::init(a1 + 1696, a2, 1uLL);
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 1;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 1;
  *(a1 + 1832) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 1;
  *(a1 + 1888) = 0u;
  *(a1 + 1912) = 0;
  *(a1 + 1904) = 0;
  re::BucketArray<re::DepthMitigationRenderData,4ul>::init(a1 + 1864, a2, 1uLL);
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 1;
  *(a1 + 1944) = 0;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 0;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 1;
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0;
  re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::init(a1 + 1976, a2, 1uLL);
  *(a1 + 2032) = 0u;
  *(a1 + 2048) = 1;
  *(a1 + 2056) = 0;
  *(a1 + 2064) = 0u;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 1;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 1;
  *(a1 + 2168) = 0u;
  *(a1 + 2192) = 0;
  *(a1 + 2184) = 0;
  return a1;
}

void re::RealityDataPipe::~RealityDataPipe(re::RealityDataPipe *this)
{
  *this = &unk_1F5D0FBC0;
  v2 = *(this + 273);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](this + 2144, i);
      v5 = v4[27];
      if (v5)
      {

        v4[27] = 0;
      }

      re::DynamicArray<re::AssetHandle>::deinit((v4 + 22));
      re::AssetHandle::~AssetHandle((v4 + 19));
      re::AssetHandle::~AssetHandle((v4 + 16));
      re::StringID::destroyString((v4 + 6));
    }
  }

  while (*(this + 269))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 268);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2144);
  *(this + 273) = 0;
  ++*(this + 548);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2144);
  v6 = *(this + 266);
  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      v8 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 2088, j);
      v9 = v8;
      if (*(v8 + 96) == 1)
      {
        re::StringID::destroyString((v8 + 104));
      }

      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v9);
    }
  }

  while (*(this + 262))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 261);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2088);
  *(this + 266) = 0;
  ++*(this + 534);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2088);
  v10 = *(this + 259);
  if (v10)
  {
    for (k = 0; k != v10; ++k)
    {
      v12 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 2032, k);
      re::DynamicArray<unsigned long>::deinit(v12);
    }
  }

  while (*(this + 255))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 254);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2032);
  *(this + 259) = 0;
  ++*(this + 520);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2032);
  v13 = *(this + 252);
  if (v13)
  {
    for (m = 0; m != v13; ++m)
    {
      re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1976, m);
    }
  }

  while (*(this + 248))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 247);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1976);
  *(this + 252) = 0;
  ++*(this + 506);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1976);
  v15 = *(this + 245);
  if (v15)
  {
    for (n = 0; n != v15; ++n)
    {
      v17 = re::BucketArray<unsigned long,4ul>::operator[](this + 1920, n);
      if (*v17)
      {

        *v17 = 0;
      }
    }
  }

  while (*(this + 241))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 240);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1920);
  *(this + 245) = 0;
  ++*(this + 492);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1920);
  v18 = *(this + 238);
  if (v18)
  {
    for (ii = 0; ii != v18; ++ii)
    {
      re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](this + 1864, ii);
    }
  }

  while (*(this + 234))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 233);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1864);
  *(this + 238) = 0;
  ++*(this + 478);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1864);
  v20 = *(this + 231);
  if (v20)
  {
    for (jj = 0; jj != v20; ++jj)
    {
      v22 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1808, jj);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v22 + 8));
    }
  }

  while (*(this + 227))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 226);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1808);
  *(this + 231) = 0;
  ++*(this + 464);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1808);
  v23 = *(this + 224);
  if (v23)
  {
    for (kk = 0; kk != v23; ++kk)
    {
      re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](this + 1752, kk);
    }
  }

  while (*(this + 220))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 219);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1752);
  *(this + 224) = 0;
  ++*(this + 450);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1752);
  v25 = *(this + 217);
  if (v25)
  {
    for (mm = 0; mm != v25; ++mm)
    {
      v27 = re::BucketArray<re::MeshSortingCollection,4ul>::operator[](this + 1696, mm);
      re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v27 + 18);
      re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27 + 12);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27 + 6);
      re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
    }
  }

  while (*(this + 213))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 212);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1696);
  *(this + 217) = 0;
  ++*(this + 436);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1696);
  v28 = *(this + 210);
  if (v28)
  {
    for (nn = 0; nn != v28; ++nn)
    {
      v30 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1640, nn);
      re::DynamicArray<re::PlanarReflectionData>::deinit(v30);
    }
  }

  while (*(this + 206))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 205);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1640);
  *(this + 210) = 0;
  ++*(this + 422);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1640);
  v31 = *(this + 203);
  if (v31)
  {
    for (i1 = 0; i1 != v31; ++i1)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 1584, i1);
    }
  }

  while (*(this + 199))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 198);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1584);
  *(this + 203) = 0;
  ++*(this + 408);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1584);
  v33 = *(this + 196);
  if (v33)
  {
    for (i2 = 0; i2 != v33; ++i2)
    {
      re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](this + 1528, i2);
    }
  }

  while (*(this + 192))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 191);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1528);
  *(this + 196) = 0;
  ++*(this + 394);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1528);
  v35 = *(this + 189);
  if (v35)
  {
    for (i3 = 0; i3 != v35; ++i3)
    {
      v37 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1472, i3);
      re::DynamicArray<re::MeshScene>::deinit(v37);
    }
  }

  while (*(this + 185))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 184);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1472);
  *(this + 189) = 0;
  ++*(this + 380);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1472);
  v38 = *(this + 182);
  if (v38)
  {
    for (i4 = 0; i4 != v38; ++i4)
    {
      v40 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](this + 1416, i4);
      re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(v40);
    }
  }

  while (*(this + 178))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 177);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1416);
  *(this + 182) = 0;
  ++*(this + 366);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1416);
  v41 = *(this + 175);
  if (v41)
  {
    for (i5 = 0; i5 != v41; ++i5)
    {
      v43 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1360, i5);
      re::DynamicArray<re::RenderGraphFileProvider>::deinit(v43);
    }
  }

  while (*(this + 171))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 170);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1360);
  *(this + 175) = 0;
  ++*(this + 352);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1360);
  re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>::deinit(this + 1304);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1304);
  v44 = *(this + 161);
  if (v44)
  {
    for (i6 = 0; i6 != v44; ++i6)
    {
      v46 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1248, i6);
      re::DynamicArray<re::RenderText>::deinit(v46);
    }
  }

  while (*(this + 157))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 156);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1248);
  *(this + 161) = 0;
  ++*(this + 324);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1248);
  v47 = *(this + 154);
  if (v47)
  {
    for (i7 = 0; i7 != v47; ++i7)
    {
      re::BucketArray<unsigned long,4ul>::operator[](this + 1192, i7);
    }
  }

  while (*(this + 150))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 149);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1192);
  *(this + 154) = 0;
  ++*(this + 310);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1192);
  v49 = *(this + 147);
  if (v49)
  {
    for (i8 = 0; i8 != v49; ++i8)
    {
      v51 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1136, i8);
      v52 = *v51;
      if (*v51)
      {
        v53 = *(v51 + 32);
        if (v53)
        {
          v54 = *(v51 + 16);
          if (v54)
          {
            v55 = v53 + 3216 * v54;
            do
            {
              re::StringID::destroyString((v53 + 3120));
              v56 = 3104;
              do
              {
                re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v53 + v56 - 368);
                re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v53 + v56 - 928);
                re::DynamicArray<re::RenderGraphFileProvider>::deinit(v53 + v56 - 976);
                re::DynamicString::deinit((v53 + v56 - 1552));
                v56 -= 1552;
              }

              while (v56);
              v53 += 3216;
            }

            while (v53 != v55);
            v52 = *v51;
            v53 = *(v51 + 32);
          }

          (*(*v52 + 40))(v52, v53);
        }

        *(v51 + 32) = 0;
        *(v51 + 8) = 0;
        *(v51 + 16) = 0;
        *v51 = 0;
        ++*(v51 + 24);
      }
    }
  }

  while (*(this + 143))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 142);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1136);
  *(this + 147) = 0;
  ++*(this + 296);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1136);
  v57 = *(this + 140);
  if (v57)
  {
    for (i9 = 0; i9 != v57; ++i9)
    {
      v59 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1080, i9);
      v60 = *v59;
      if (*v59)
      {
        v61 = *(v59 + 32);
        if (v61)
        {
          v62 = *(v59 + 16);
          if (v62)
          {
            v63 = 1648 * v62;
            do
            {
              re::StringID::destroyString((v61 + 1552));
              re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v61 + 1184);
              re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v61 + 624);
              re::DynamicArray<re::RenderGraphFileProvider>::deinit(v61 + 576);
              re::DynamicString::deinit(v61);
              v61 += 1648;
              v63 -= 1648;
            }

            while (v63);
            v60 = *v59;
            v61 = *(v59 + 32);
          }

          (*(*v60 + 40))(v60, v61);
        }

        *(v59 + 32) = 0;
        *(v59 + 8) = 0;
        *(v59 + 16) = 0;
        *v59 = 0;
        ++*(v59 + 24);
      }
    }
  }

  while (*(this + 136))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 135);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1080);
  *(this + 140) = 0;
  ++*(this + 282);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1080);
  v64 = *(this + 133);
  if (v64)
  {
    for (i10 = 0; i10 != v64; ++i10)
    {
      v66 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1024, i10);
      re::DynamicArray<re::CameraMultiView>::deinit(v66);
    }
  }

  while (*(this + 129))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 128);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1024);
  *(this + 133) = 0;
  ++*(this + 268);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1024);
  v67 = *(this + 126);
  if (v67)
  {
    for (i11 = 0; i11 != v67; ++i11)
    {
      v69 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 968, i11);
      re::DynamicArray<re::CameraView>::deinit(v69);
    }
  }

  while (*(this + 122))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 121);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 968);
  *(this + 126) = 0;
  ++*(this + 254);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 968);
  v70 = *(this + 119);
  if (v70)
  {
    for (i12 = 0; i12 != v70; ++i12)
    {
      v72 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 912, i12);
      re::DynamicArray<re::MeshScene>::deinit(v72);
    }
  }

  while (*(this + 115))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 114);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 912);
  *(this + 119) = 0;
  ++*(this + 240);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 912);
  v73 = *(this + 112);
  if (v73)
  {
    for (i13 = 0; i13 != v73; ++i13)
    {
      v75 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 856, i13);
      re::StringID::destroyString((v75 + 8));
    }
  }

  while (*(this + 108))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 107);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 856);
  *(this + 112) = 0;
  ++*(this + 226);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 856);
  v76 = *(this + 105);
  if (v76)
  {
    for (i14 = 0; i14 != v76; ++i14)
    {
      re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 800, i14);
    }
  }

  while (*(this + 101))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 100);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 800);
  *(this + 105) = 0;
  ++*(this + 212);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 800);
  v78 = *(this + 98);
  if (v78)
  {
    for (i15 = 0; i15 != v78; ++i15)
    {
      v80 = re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](this + 744, i15);
      re::DynamicArray<unsigned long>::deinit(v80 + 40);
      re::DynamicArray<unsigned long>::deinit(v80);
    }
  }

  while (*(this + 94))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 93);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 744);
  *(this + 98) = 0;
  ++*(this + 198);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 744);
  v81 = *(this + 91);
  if (v81)
  {
    for (i16 = 0; i16 != v81; ++i16)
    {
      v83 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 688, i16);
      v84 = *(v83 + 40);
      if (v84)
      {

        *(v83 + 40) = 0;
      }

      re::DynamicArray<re::IBL>::deinit(v83);
    }
  }

  while (*(this + 87))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 86);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 688);
  *(this + 91) = 0;
  ++*(this + 184);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 688);
  v85 = *(this + 84);
  if (v85)
  {
    for (i17 = 0; i17 != v85; ++i17)
    {
      v87 = re::BucketArray<re::UIShadowRenderData,4ul>::operator[](this + 632, i17);
      re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v87);
    }
  }

  while (*(this + 80))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 79);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 632);
  *(this + 84) = 0;
  ++*(this + 170);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 632);
  v88 = *(this + 77);
  if (v88)
  {
    for (i18 = 0; i18 != v88; ++i18)
    {
      re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 576, i18);
    }
  }

  while (*(this + 73))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 72);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 576);
  *(this + 77) = 0;
  ++*(this + 156);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 576);
  v90 = *(this + 70);
  if (v90)
  {
    for (i19 = 0; i19 != v90; ++i19)
    {
      v92 = re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](this + 520, i19);
      v93 = v92;
      if (*(v92 + 56) == 1)
      {
        re::StringID::destroyString((v92 + 64));
      }

      v94 = v93[5];
      if (v94)
      {

        v93[5] = 0;
      }

      v95 = v93[4];
      if (v95)
      {

        v93[4] = 0;
      }

      v96 = v93[3];
      if (v96)
      {

        v93[3] = 0;
      }
    }
  }

  while (*(this + 66))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 65);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 520);
  *(this + 70) = 0;
  ++*(this + 142);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 520);
  v97 = *(this + 63);
  if (v97)
  {
    for (i20 = 0; i20 != v97; ++i20)
    {
      v99 = re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 464, i20);
      re::DynamicArray<unsigned long>::deinit(v99 + 128);
      re::DynamicArray<unsigned long>::deinit(v99 + 88);
    }
  }

  while (*(this + 59))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 58);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 464);
  *(this + 63) = 0;
  ++*(this + 128);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 464);
  v100 = *(this + 56);
  if (v100)
  {
    for (i21 = 0; i21 != v100; ++i21)
    {
      re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 408, i21);
    }
  }

  while (*(this + 52))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 51);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 408);
  *(this + 56) = 0;
  ++*(this + 114);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 408);
  v102 = *(this + 49);
  if (v102)
  {
    for (i22 = 0; i22 != v102; ++i22)
    {
      v104 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 352, i22);
      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v104);
    }
  }

  while (*(this + 45))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 44);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 352);
  *(this + 49) = 0;
  ++*(this + 100);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 352);
  v105 = *(this + 42);
  if (v105)
  {
    for (i23 = 0; i23 != v105; ++i23)
    {
      v107 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 296, i23);
      v108 = *(v107 + 16);
      if (v108)
      {

        *(v107 + 16) = 0;
      }

      v109 = *(v107 + 8);
      if (v109)
      {

        *(v107 + 8) = 0;
      }

      if (*v107)
      {

        *v107 = 0;
      }
    }
  }

  while (*(this + 38))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 37);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 296);
  *(this + 42) = 0;
  ++*(this + 86);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 296);
  v110 = *(this + 35);
  if (v110)
  {
    for (i24 = 0; i24 != v110; ++i24)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 240, i24);
    }
  }

  while (*(this + 31))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 30);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 240);
  *(this + 35) = 0;
  ++*(this + 72);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 240);
  v112 = *(this + 28);
  if (v112)
  {
    for (i25 = 0; i25 != v112; ++i25)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 184, i25);
    }
  }

  while (*(this + 24))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 23);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 184);
  *(this + 28) = 0;
  ++*(this + 58);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 184);
  v114 = *(this + 21);
  if (v114)
  {
    for (i26 = 0; i26 != v114; ++i26)
    {
      re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 128, i26);
    }
  }

  while (*(this + 17))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 16);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 128);
  *(this + 21) = 0;
  ++*(this + 44);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 128);
  v116 = *(this + 14);
  if (v116)
  {
    for (i27 = 0; i27 != v116; ++i27)
    {
      v118 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 72, i27);
      re::DynamicArray<re::RenderText>::deinit(v118);
    }
  }

  while (*(this + 10))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 9);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 72);
  *(this + 14) = 0;
  ++*(this + 30);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 72);
  v119 = *(this + 7);
  if (v119)
  {
    for (i28 = 0; i28 != v119; ++i28)
    {
      v121 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 16, i28);
      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v121);
    }
  }

  while (*(this + 3))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 2);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 16);
  *(this + 7) = 0;
  ++*(this + 16);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 16);
}

{
  re::RealityDataPipe::~RealityDataPipe(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RealityDataPipe::addMipmapGenerationContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 24);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 16), (v4 + 4) >> 2);
    v5 = *(a1 + 24);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 32))
  {
    v6 = a1 + 40;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 56);
  ++*(a1 + 64);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 56);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 16, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetMipmapGenerationContext(re::RealityDataPipe *this)
{
  if (*(this + 7))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 16, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMipmapGenerationContextArray(re::RealityDataPipe *this)
{
  if (*(this + 7))
  {
    return this + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addRenderProfilerTextArray(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 80);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::setBucketsCapacity((a1 + 72), (v4 + 4) >> 2);
    v5 = *(a1 + 80);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 88))
  {
    v6 = a1 + 96;
  }

  else
  {
    v6 = *(a1 + 104);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 112);
  ++*(a1 + 120);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 112);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 72, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetRenderProfilerTextArray(re::RealityDataPipe *this)
{
  if (*(this + 14))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 72, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderProfilerTextArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 14))
  {
    return this + 72;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addCameraViewDescriptorsPerFrameData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 168);
  v5 = *(a1 + 136);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::setBucketsCapacity((a1 + 128), (v4 + 4) >> 2);
    v5 = *(a1 + 136);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 144))
  {
    v6 = a1 + 152;
  }

  else
  {
    v6 = *(a1 + 160);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  v8 = *(a1 + 168);
  *(a1 + 168) = v8 + 1;
  ++*(a1 + 176);
  v9 = v7 + 16 * (v4 & 3);
  *v9 = &unk_1F5CEFB98;
  *(v9 + 8) = *(a2 + 8);
  if (v8 == -1)
  {
LABEL_12:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 128, v8);
}

uint64_t re::RealityDataPipe::tryGetCameraViewDescriptorsPerFrameData(re::RealityDataPipe *this)
{
  if (*(this + 21))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 128, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetCameraViewDescriptorsPerFrameDataArray(re::RealityDataPipe *this)
{
  if (*(this + 21))
  {
    return this + 128;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addClippingParametersSlice(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 224);
  v5 = *(a1 + 192);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity((a1 + 184), (v4 + 4) >> 2);
    v5 = *(a1 + 192);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 200))
  {
    v6 = a1 + 208;
  }

  else
  {
    v6 = *(a1 + 216);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 224);
  ++*(a1 + 232);
  *(v7 + 16 * (v4 & 3)) = *a2;
  v8 = *(a1 + 224);
  if (!v8)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 184, v8 - 1);
}

uint64_t re::RealityDataPipe::tryGetClippingParametersSlice(re::RealityDataPipe *this)
{
  if (*(this + 28))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 184, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetClippingParametersSliceArray(re::RealityDataPipe *this)
{
  if (*(this + 28))
  {
    return this + 184;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addClippingIndexIndirectionSlice(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 248);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity((a1 + 240), (v4 + 4) >> 2);
    v5 = *(a1 + 248);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 256))
  {
    v6 = a1 + 264;
  }

  else
  {
    v6 = *(a1 + 272);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 280);
  ++*(a1 + 288);
  *(v7 + 16 * (v4 & 3)) = *a2;
  v8 = *(a1 + 280);
  if (!v8)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 240, v8 - 1);
}

uint64_t re::RealityDataPipe::tryGetClippingIndexIndirectionSlice(re::RealityDataPipe *this)
{
  if (*(this + 35))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 240, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetClippingIndexIndirectionSliceArray(re::RealityDataPipe *this)
{
  if (*(this + 35))
  {
    return this + 240;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addProbeContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 336);
  v5 = *(a1 + 304);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 296), (v4 + 4) >> 2);
    v5 = *(a1 + 304);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 312))
  {
    v6 = a1 + 320;
  }

  else
  {
    v6 = *(a1 + 328);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 336);
  ++*(a1 + 344);
  v8 = v7 + 40 * (v4 & 3);
  *v8 = *a2;
  *a2 = 0;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 24);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 24) = v9;
  v10 = *(a1 + 336);
  if (!v10)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 296, v10 - 1);
}

uint64_t re::RealityDataPipe::tryGetProbeContext(re::RealityDataPipe *this)
{
  if (*(this + 42))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 296, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetProbeContextArray(re::RealityDataPipe *this)
{
  if (*(this + 42))
  {
    return this + 296;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addBlurGenerationContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 392);
  v5 = *(a1 + 360);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 352), (v4 + 4) >> 2);
    v5 = *(a1 + 360);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 368))
  {
    v6 = a1 + 376;
  }

  else
  {
    v6 = *(a1 + 384);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 392);
  ++*(a1 + 400);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 392);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 352, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetBlurGenerationContext(re::RealityDataPipe *this)
{
  if (*(this + 49))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 352, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetBlurGenerationContextArray(re::RealityDataPipe *this)
{
  if (*(this + 49))
  {
    return this + 352;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addSFBSystemShellBlurContext(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 448);
  v5 = *(a1 + 416);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::SFBSystemShellBlurContext,4ul>::setBucketsCapacity((a1 + 408), (v4 + 4) >> 2);
    v5 = *(a1 + 416);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 424))
  {
    v6 = a1 + 432;
  }

  else
  {
    v6 = *(a1 + 440);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 448);
  ++*(a1 + 456);
  v8 = (v7 + 32 * (v4 & 3));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = *(a1 + 448);
  if (!v10)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](a1 + 408, v10 - 1);
}

uint64_t re::RealityDataPipe::tryGetSFBSystemShellBlurContext(re::RealityDataPipe *this)
{
  if (*(this + 56))
  {
    return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 408, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSFBSystemShellBlurContextArray(re::RealityDataPipe *this)
{
  if (*(this + 56))
  {
    return this + 408;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addOpenSkyData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 504);
  v5 = *(a1 + 472);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity((a1 + 464), (v4 + 4) >> 2);
    v5 = *(a1 + 472);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 480))
  {
    v6 = a1 + 488;
  }

  else
  {
    v6 = *(a1 + 496);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 504);
  ++*(a1 + 512);
  v8 = v7 + 208 * (v4 & 3);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  *(v8 + 80) = *(a2 + 80);
  *(v8 + 48) = v11;
  *(v8 + 64) = v12;
  *(v8 + 32) = v10;
  *(v8 + 120) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 88) = 0;
  *(v8 + 112) = 0;
  v13 = *(a2 + 96);
  *(v8 + 88) = *(a2 + 88);
  *(v8 + 96) = v13;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v14 = *(v8 + 104);
  *(v8 + 104) = *(a2 + 104);
  *(a2 + 104) = v14;
  v15 = *(v8 + 120);
  *(v8 + 120) = *(a2 + 120);
  *(a2 + 120) = v15;
  ++*(a2 + 112);
  ++*(v8 + 112);
  *(v8 + 160) = 0;
  *(v8 + 152) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  v16 = *(a2 + 136);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 136) = v16;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v17 = *(v8 + 144);
  *(v8 + 144) = *(a2 + 144);
  *(a2 + 144) = v17;
  v18 = *(v8 + 160);
  *(v8 + 160) = *(a2 + 160);
  *(a2 + 160) = v18;
  ++*(a2 + 152);
  ++*(v8 + 152);
  v19 = *(a2 + 168);
  *(v8 + 177) = *(a2 + 177);
  *(v8 + 168) = v19;
  v20 = *(a1 + 504);
  if (!v20)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::OpenSkyData,4ul>::operator[](a1 + 464, v20 - 1);
}

uint64_t re::RealityDataPipe::tryGetOpenSkyData(re::RealityDataPipe *this)
{
  if (*(this + 63))
  {
    return re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 464, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetOpenSkyDataArray(re::RealityDataPipe *this)
{
  if (*(this + 63))
  {
    return this + 464;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addProjectiveMeshShadowBuilderInputGlobalData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 560);
  v5 = *(a1 + 528);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::setBucketsCapacity((a1 + 520), (v4 + 4) >> 2);
    v5 = *(a1 + 528);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if (*(a1 + 536))
  {
    v6 = a1 + 544;
  }

  else
  {
    v6 = *(a1 + 552);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 560);
  ++*(a1 + 568);
  v8 = v7 + 320 * (v4 & 3);
  v9 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *v8 = v9;
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v8 + 48) = *(a2 + 48);
  v10 = *(a2 + 56);
  *(v8 + 56) = v10;
  if (v10 == 1)
  {
    v11 = *(a2 + 64);
    *(v8 + 64) = *(v8 + 64) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
    *(v8 + 64) = *(a2 + 64) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
    *(v8 + 72) = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = &str_67;
  }

  v12 = *(a2 + 80);
  v13 = *(a2 + 112);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 112) = v13;
  *(v8 + 80) = v12;
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  v16 = *(a2 + 176);
  *(v8 + 160) = *(a2 + 160);
  *(v8 + 176) = v16;
  *(v8 + 128) = v14;
  *(v8 + 144) = v15;
  v17 = *(a2 + 192);
  v18 = *(a2 + 208);
  v19 = *(a2 + 240);
  *(v8 + 224) = *(a2 + 224);
  *(v8 + 240) = v19;
  *(v8 + 192) = v17;
  *(v8 + 208) = v18;
  v20 = *(a2 + 256);
  v21 = *(a2 + 272);
  v22 = *(a2 + 288);
  *(v8 + 304) = *(a2 + 304);
  *(v8 + 272) = v21;
  *(v8 + 288) = v22;
  *(v8 + 256) = v20;
  v23 = *(a1 + 560);
  if (!v23)
  {
LABEL_14:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](a1 + 520, v23 - 1);
}

uint64_t re::RealityDataPipe::tryGetProjectiveMeshShadowBuilderInputGlobalData(re::RealityDataPipe *this)
{
  if (*(this + 70))
  {
    return re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](this + 520, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetProjectiveMeshShadowBuilderInputGlobalDataArray(re::RealityDataPipe *this)
{
  if (*(this + 70))
  {
    return this + 520;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addMeshShadowPerFrameUpdateData(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 616);
  v5 = *(a1 + 584);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity((a1 + 576), (v4 + 4) >> 2);
    v5 = *(a1 + 584);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 592))
  {
    v6 = a1 + 600;
  }

  else
  {
    v6 = *(a1 + 608);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 616);
  ++*(a1 + 624);
  v8 = (v7 + 208 * (v4 & 3));
  v9 = a2[4];
  v11 = a2[1];
  v10 = a2[2];
  v8[3] = a2[3];
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  v12 = a2[8];
  v14 = a2[5];
  v13 = a2[6];
  v8[7] = a2[7];
  v8[8] = v12;
  v8[5] = v14;
  v8[6] = v13;
  v15 = a2[12];
  v17 = a2[9];
  v16 = a2[10];
  v8[11] = a2[11];
  v8[12] = v15;
  v8[9] = v17;
  v8[10] = v16;
  *v8 = *a2;
  v18 = *(a1 + 616);
  if (!v18)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::OpenSkyData,4ul>::operator[](a1 + 576, v18 - 1);
}

uint64_t re::RealityDataPipe::tryGetMeshShadowPerFrameUpdateData(re::RealityDataPipe *this)
{
  if (*(this + 77))
  {
    return re::BucketArray<re::OpenSkyData,4ul>::operator[](this + 576, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMeshShadowPerFrameUpdateDataArray(re::RealityDataPipe *this)
{
  if (*(this + 77))
  {
    return this + 576;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addUIShadowRenderData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 672);
  v5 = *(a1 + 640);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::UIShadowRenderData,4ul>::setBucketsCapacity((a1 + 632), (v4 + 4) >> 2);
    v5 = *(a1 + 640);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 648))
  {
    v6 = a1 + 656;
  }

  else
  {
    v6 = *(a1 + 664);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 672);
  ++*(a1 + 680);
  v8 = v7 + 48 * (v4 & 3);
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  *v8 = *a2;
  *a2 = 0;
  v9 = *(v8 + 8);
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  LODWORD(v10) = *(v8 + 28);
  *(v8 + 28) = *(a2 + 28);
  *(a2 + 28) = v10;
  LODWORD(v10) = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v10;
  LODWORD(v10) = *(v8 + 36);
  *(v8 + 36) = *(a2 + 36);
  *(a2 + 36) = v10;
  ++*(v8 + 40);
  v11 = *(a1 + 672);
  if (!v11)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::UIShadowRenderData,4ul>::operator[](a1 + 632, v11 - 1);
}

uint64_t re::RealityDataPipe::tryGetUIShadowRenderData(re::RealityDataPipe *this)
{
  if (*(this + 84))
  {
    return re::BucketArray<re::UIShadowRenderData,4ul>::operator[](this + 632, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetUIShadowRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 84))
  {
    return this + 632;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addIBLContext(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::IBLContext,4ul>::addUninitialized(a1 + 688);
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  v6 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v4 + 16);
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v4 + 32);
  *(v4 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v4 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v4 + 48) = *(a2 + 48);
  v9 = *(a1 + 728);
  if (v9)
  {

    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1 + 688, v9 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::RealityDataPipe::tryGetIBLContext(re::RealityDataPipe *this)
{
  if (*(this + 91))
  {
    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 688, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetIBLContextArray(re::RealityDataPipe *this)
{
  if (*(this + 91))
  {
    return this + 688;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addIBLContext(re::RealityDataPipe *this, re::IBLContext *a2)
{
  v4 = re::BucketArray<re::IBLContext,4ul>::addUninitialized(this + 688);
  re::DynamicArray<re::IBL>::DynamicArray(v4, a2);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 48) = *(a2 + 12);
  v6 = *(this + 91);
  if (v6)
  {

    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 688, v6 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::RealityDataPipe::addBlurPlanesRenderFrameData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 784);
  v5 = *(a1 + 752);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::setBucketsCapacity((a1 + 744), (v4 + 4) >> 2);
    v5 = *(a1 + 752);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 760))
  {
    v6 = a1 + 768;
  }

  else
  {
    v6 = *(a1 + 776);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 784);
  ++*(a1 + 792);
  v8 = v7 + 88 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  *(v8 + 72) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = 0;
  *(v8 + 64) = 0;
  v12 = *(a2 + 48);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 48) = v12;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v13 = *(v8 + 56);
  *(v8 + 56) = *(a2 + 56);
  *(a2 + 56) = v13;
  v14 = *(v8 + 72);
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 72) = v14;
  ++*(a2 + 64);
  ++*(v8 + 64);
  *(v8 + 80) = *(a2 + 80);
  v15 = *(a1 + 784);
  if (!v15)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](a1 + 744, v15 - 1);
}

uint64_t re::RealityDataPipe::tryGetBlurPlanesRenderFrameData(re::RealityDataPipe *this)
{
  if (*(this + 98))
  {
    return re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](this + 744, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetBlurPlanesRenderFrameDataArray(re::RealityDataPipe *this)
{
  if (*(this + 98))
  {
    return this + 744;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addTintContext(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 840);
  v5 = *(a1 + 808);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::TintContext,4ul>::setBucketsCapacity((a1 + 800), (v4 + 4) >> 2);
    v5 = *(a1 + 808);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 816))
  {
    v6 = a1 + 824;
  }

  else
  {
    v6 = *(a1 + 832);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 840);
  ++*(a1 + 848);
  v8 = (v7 + 32 * (v4 & 3));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = *(a1 + 840);
  if (!v10)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](a1 + 800, v10 - 1);
}

uint64_t re::RealityDataPipe::tryGetTintContext(re::RealityDataPipe *this)
{
  if (*(this + 105))
  {
    return re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](this + 800, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetTintContextArray(re::RealityDataPipe *this)
{
  if (*(this + 105))
  {
    return this + 800;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addSceneName(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 896);
  v5 = *(a1 + 864);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 856), (v4 + 4) >> 2);
    v5 = *(a1 + 864);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 872))
  {
    v6 = a1 + 880;
  }

  else
  {
    v6 = *(a1 + 888);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 896);
  ++*(a1 + 904);
  v8 = v7 + 40 * (v4 & 3);
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 8) = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v8 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v10 = *(a2 + 24);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 24) = v10;
  v11 = *(a1 + 896);
  if (!v11)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 856, v11 - 1);
}

uint64_t re::RealityDataPipe::tryGetSceneName(re::RealityDataPipe *this)
{
  if (*(this + 112))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 856, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneNameArray(re::RealityDataPipe *this)
{
  if (*(this + 112))
  {
    return this + 856;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addMeshSceneCollection(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::MeshSceneCollection,4ul>::addUninitialized(a1 + 912);
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  v6 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v4 + 16);
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v4 + 32);
  *(v4 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v4 + 24);
  v9 = *(a1 + 952);
  if (v9)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 912, v9 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::RealityDataPipe::tryGetMeshSceneCollection(re::RealityDataPipe *this)
{
  if (*(this + 119))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 912, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMeshSceneCollectionArray(re::RealityDataPipe *this)
{
  if (*(this + 119))
  {
    return this + 912;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addMeshSceneCollection(uint64_t a1, uint64_t *a2)
{
  v4 = re::BucketArray<re::MeshSceneCollection,4ul>::addUninitialized(a1 + 912);
  re::DynamicArray<re::MeshScene>::DynamicArray(v4, a2);
  v6 = *(a1 + 952);
  if (v6)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 912, v6 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::RealityDataPipe::addCameraViewArray(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1008);
  v5 = *(a1 + 976);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 968), (v4 + 4) >> 2);
    v5 = *(a1 + 976);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 984))
  {
    v6 = a1 + 992;
  }

  else
  {
    v6 = *(a1 + 1000);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1008);
  ++*(a1 + 1016);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1008);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 968, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetCameraViewArray(re::RealityDataPipe *this)
{
  if (*(this + 126))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 968, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetCameraViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 126))
  {
    return this + 968;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addCameraMultiViewArray(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1064);
  v5 = *(a1 + 1032);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1024), (v4 + 4) >> 2);
    v5 = *(a1 + 1032);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1040))
  {
    v6 = a1 + 1048;
  }

  else
  {
    v6 = *(a1 + 1056);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1064);
  ++*(a1 + 1072);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1064);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1024, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetCameraMultiViewArray(re::RealityDataPipe *this)
{
  if (*(this + 133))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1024, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetCameraMultiViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 133))
  {
    return this + 1024;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addEmbeddedStereoContentCameraViewArray(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1120);
  v5 = *(a1 + 1088);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1080), (v4 + 4) >> 2);
    v5 = *(a1 + 1088);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1096))
  {
    v6 = a1 + 1104;
  }

  else
  {
    v6 = *(a1 + 1112);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1120);
  ++*(a1 + 1128);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1120);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1080, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraViewArray(re::RealityDataPipe *this)
{
  if (*(this + 140))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1080, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 140))
  {
    return this + 1080;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addEmbeddedStereoContentCameraMultiViewArray(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1176);
  v5 = *(a1 + 1144);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1136), (v4 + 4) >> 2);
    v5 = *(a1 + 1144);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1152))
  {
    v6 = a1 + 1160;
  }

  else
  {
    v6 = *(a1 + 1168);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1176);
  ++*(a1 + 1184);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1176);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1136, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraMultiViewArray(re::RealityDataPipe *this)
{
  if (*(this + 147))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1136, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraMultiViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 147))
  {
    return this + 1136;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addStaticTextInfo(uint64_t a1, void *a2)
{
  v4 = *(a1 + 1232);
  v5 = *(a1 + 1200);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::StaticTextInfo,4ul>::setBucketsCapacity((a1 + 1192), (v4 + 4) >> 2);
    v5 = *(a1 + 1200);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1208))
  {
    v6 = a1 + 1216;
  }

  else
  {
    v6 = *(a1 + 1224);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  v8 = *(a1 + 1232);
  ++*(a1 + 1240);
  *(v7 + 8 * (v4 & 3)) = *a2;
  *(a1 + 1232) = v8 + 1;
  if (v8 == -1)
  {
LABEL_12:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<unsigned long,4ul>::operator[](a1 + 1192, v8);
}

uint64_t re::RealityDataPipe::tryGetStaticTextInfo(re::RealityDataPipe *this)
{
  if (*(this + 154))
  {
    return re::BucketArray<unsigned long,4ul>::operator[](this + 1192, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetStaticTextInfoArray(re::RealityDataPipe *this)
{
  if (*(this + 154))
  {
    return this + 1192;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addRenderTextArray(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1288);
  v5 = *(a1 + 1256);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1248), (v4 + 4) >> 2);
    v5 = *(a1 + 1256);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1264))
  {
    v6 = a1 + 1272;
  }

  else
  {
    v6 = *(a1 + 1280);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1288);
  ++*(a1 + 1296);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1288);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1248, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetRenderTextArray(re::RealityDataPipe *this)
{
  if (*(this + 161))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1248, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderTextArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 161))
  {
    return this + 1248;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addVFXSceneArray(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1344);
  v5 = *(a1 + 1312);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1304), (v4 + 4) >> 2);
    v5 = *(a1 + 1312);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1320))
  {
    v6 = a1 + 1328;
  }

  else
  {
    v6 = *(a1 + 1336);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1344);
  ++*(a1 + 1352);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1344);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1304, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetVFXSceneArray(re::RealityDataPipe *this)
{
  if (*(this + 168))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1304, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetVFXSceneArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 168))
  {
    return this + 1304;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addRenderGraphFileProviderArray(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::DynamicArray<re::RenderGraphFileProvider>,4ul>::addUninitialized(a1 + 1360);
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  v6 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v4 + 16);
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v4 + 32);
  *(v4 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v4 + 24);
  v9 = *(a1 + 1400);
  if (v9)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1360, v9 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::RealityDataPipe::tryGetRenderGraphFileProviderArray(re::RealityDataPipe *this)
{
  if (*(this + 175))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1360, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderGraphFileProviderArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 175))
  {
    return this + 1360;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addRenderGraphFileProviders(uint64_t a1, uint64_t *a2)
{
  v4 = re::BucketArray<re::DynamicArray<re::RenderGraphFileProvider>,4ul>::addUninitialized(a1 + 1360);
  re::DynamicArray<re::RenderGraphFileProvider>::DynamicArray(v4, a2);
  v6 = *(a1 + 1400);
  if (v6)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1360, v6 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::RealityDataPipe::addStencilPortalMap(uint64_t a1)
{
  v2 = *(a1 + 1456);
  v3 = *(a1 + 1424);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::setBucketsCapacity((a1 + 1416), (v2 + 4) >> 2);
    v3 = *(a1 + 1424);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1432))
  {
    v4 = a1 + 1440;
  }

  else
  {
    v4 = *(a1 + 1448);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 1456);
  ++*(a1 + 1464);
  re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::SmallHashTable(v5 + 6992 * (v2 & 3));
  v7 = *(a1 + 1456);
  if (!v7)
  {
LABEL_12:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](a1 + 1416, v7 - 1);
}

uint64_t re::RealityDataPipe::tryGetStencilPortalMap(re::RealityDataPipe *this)
{
  if (*(this + 182))
  {
    return re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](this + 1416, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetStencilPortalMapArray(re::RealityDataPipe *this)
{
  if (*(this + 182))
  {
    return this + 1416;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addFilterViewMeshScenes(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1512);
  v5 = *(a1 + 1480);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::FilterViewMeshScenes,4ul>::setBucketsCapacity((a1 + 1472), (v4 + 4) >> 2);
    v5 = *(a1 + 1480);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1488))
  {
    v6 = a1 + 1496;
  }

  else
  {
    v6 = *(a1 + 1504);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1512);
  ++*(a1 + 1520);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1512);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1472, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetFilterViewMeshScenes(re::RealityDataPipe *this)
{
  if (*(this + 189))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1472, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetFilterViewMeshScenesArray(re::RealityDataPipe *this)
{
  if (*(this + 189))
  {
    return this + 1472;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addProbeLightingEnabledMetadata(uint64_t a1)
{
  v2 = *(a1 + 1568);
  v3 = *(a1 + 1536);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::setBucketsCapacity((a1 + 1528), (v2 + 4) >> 2);
    v3 = *(a1 + 1536);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v4 = *(a1 + 1568);
  ++*(a1 + 1576);
  *(a1 + 1568) = v4 + 1;
  if (v4 == -1)
  {
    goto LABEL_9;
  }

  return re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](a1 + 1528, v4);
}

unint64_t re::RealityDataPipe::tryGetProbeLightingEnabledMetadata(re::RealityDataPipe *this)
{
  if (*(this + 196))
  {
    return re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](this + 1528, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetProbeLightingEnabledMetadataArray(re::RealityDataPipe *this)
{
  if (*(this + 196))
  {
    return this + 1528;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addSceneCRWSReferencePosition(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 1624);
  v5 = *(a1 + 1592);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::SceneCRWSReferencePosition,4ul>::setBucketsCapacity((a1 + 1584), (v4 + 4) >> 2);
    v5 = *(a1 + 1592);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1600))
  {
    v6 = a1 + 1608;
  }

  else
  {
    v6 = *(a1 + 1616);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1624);
  ++*(a1 + 1632);
  *(v7 + 16 * (v4 & 3)) = *a2;
  v8 = *(a1 + 1624);
  if (!v8)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 1584, v8 - 1);
}

uint64_t re::RealityDataPipe::tryGetSceneCRWSReferencePosition(re::RealityDataPipe *this)
{
  if (*(this + 203))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 1584, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneCRWSReferencePositionArray(re::RealityDataPipe *this)
{
  if (*(this + 203))
  {
    return this + 1584;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addPlanarReflectionContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1680);
  v5 = *(a1 + 1648);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1640), (v4 + 4) >> 2);
    v5 = *(a1 + 1648);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1656))
  {
    v6 = a1 + 1664;
  }

  else
  {
    v6 = *(a1 + 1672);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1680);
  ++*(a1 + 1688);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1680);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1640, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetPlanarReflectionContext(re::RealityDataPipe *this)
{
  if (*(this + 210))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1640, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetPlanarReflectionContextArray(re::RealityDataPipe *this)
{
  if (*(this + 210))
  {
    return this + 1640;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addMeshSortingCollection(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1736);
  v5 = *(a1 + 1704);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MeshSortingCollection,4ul>::setBucketsCapacity((a1 + 1696), (v4 + 4) >> 2);
    v5 = *(a1 + 1704);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1712))
  {
    v6 = a1 + 1720;
  }

  else
  {
    v6 = *(a1 + 1728);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1736);
  ++*(a1 + 1744);
  v8 = v7 + 200 * (v4 & 3);
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, a2);
  *(v8 + 80) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 48), (a2 + 48));
  *(v8 + 128) = 0;
  *(v8 + 112) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 132) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 96), (a2 + 96));
  *(v8 + 144) = 0u;
  v8 += 144;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (a2 + 144));
  *(v8 + 48) = *(a2 + 192);
  v10 = *(a1 + 1736);
  if (!v10)
  {
LABEL_12:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::MeshSortingCollection,4ul>::operator[](a1 + 1696, v10 - 1);
}

uint64_t re::RealityDataPipe::tryGetMeshSortingCollection(re::RealityDataPipe *this)
{
  if (*(this + 217))
  {
    return re::BucketArray<re::MeshSortingCollection,4ul>::operator[](this + 1696, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMeshSortingCollectionArray(re::RealityDataPipe *this)
{
  if (*(this + 217))
  {
    return this + 1696;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addSceneUnderstandingFlagEmitterData(uint64_t a1, int *a2)
{
  v4 = *(a1 + 1792);
  v5 = *(a1 + 1760);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::setBucketsCapacity((a1 + 1752), (v4 + 4) >> 2);
    v5 = *(a1 + 1760);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1768))
  {
    v6 = a1 + 1776;
  }

  else
  {
    v6 = *(a1 + 1784);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1792);
  ++*(a1 + 1800);
  v8 = (v7 - (v4 & 3) + 8 * (v4 & 3));
  v9 = *a2;
  *(v8 + 3) = *(a2 + 3);
  *v8 = v9;
  v10 = *(a1 + 1792);
  if (!v10)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](a1 + 1752, v10 - 1);
}

uint64_t re::RealityDataPipe::tryGetSceneUnderstandingFlagEmitterData(re::RealityDataPipe *this)
{
  if (*(this + 224))
  {
    return re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](this + 1752, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneUnderstandingFlagEmitterDataArray(re::RealityDataPipe *this)
{
  if (*(this + 224))
  {
    return this + 1752;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addRenderCallbacks(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1848);
  v5 = *(a1 + 1816);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity((a1 + 1808), (v4 + 4) >> 2);
    v5 = *(a1 + 1816);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1824))
  {
    v6 = a1 + 1832;
  }

  else
  {
    v6 = *(a1 + 1840);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1848);
  ++*(a1 + 1856);
  v8 = v7 + 56 * (v4 & 3);
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = 0u;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 44) = 0x7FFFFFFFLL;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 24);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  LODWORD(v11) = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  LODWORD(v11) = *(v8 + 36);
  *(v8 + 36) = *(a2 + 36);
  *(a2 + 36) = v11;
  LODWORD(v11) = *(v8 + 40);
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = v11;
  LODWORD(v11) = *(v8 + 44);
  *(v8 + 44) = *(a2 + 44);
  *(a2 + 44) = v11;
  v12 = *(a1 + 1848);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1 + 1808, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetRenderCallbacks(re::RealityDataPipe *this)
{
  if (*(this + 231))
  {
    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1808, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderCallbacksArray(re::RealityDataPipe *this)
{
  if (*(this + 231))
  {
    return this + 1808;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addDepthMitigationRenderData(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 1904);
  v5 = *(a1 + 1872);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::DepthMitigationRenderData,4ul>::setBucketsCapacity((a1 + 1864), (v4 + 4) >> 2);
    v5 = *(a1 + 1872);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1880))
  {
    v6 = a1 + 1888;
  }

  else
  {
    v6 = *(a1 + 1896);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1904);
  ++*(a1 + 1912);
  v8 = (v7 + 140 * (v4 & 3));
  v9 = a2[4];
  v11 = a2[1];
  v10 = a2[2];
  v8[3] = a2[3];
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  v13 = a2[6];
  v12 = a2[7];
  v14 = a2[5];
  *(v8 + 124) = *(a2 + 124);
  v8[6] = v13;
  v8[7] = v12;
  v8[5] = v14;
  *v8 = *a2;
  v15 = *(a1 + 1904);
  if (!v15)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](a1 + 1864, v15 - 1);
}

uint64_t re::RealityDataPipe::tryGetDepthMitigationRenderData(re::RealityDataPipe *this)
{
  if (*(this + 238))
  {
    return re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](this + 1864, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetDepthMitigationRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 238))
  {
    return this + 1864;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addDepthMitigationReductionRenderData(uint64_t a1, void *a2)
{
  v4 = *(a1 + 1960);
  v5 = *(a1 + 1928);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::DepthMitigationReductionRenderData,4ul>::setBucketsCapacity((a1 + 1920), (v4 + 4) >> 2);
    v5 = *(a1 + 1928);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1936))
  {
    v6 = a1 + 1944;
  }

  else
  {
    v6 = *(a1 + 1952);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  v8 = *(a1 + 1960);
  ++*(a1 + 1968);
  *(v7 + 8 * (v4 & 3)) = *a2;
  *a2 = 0;
  *(a1 + 1960) = v8 + 1;
  if (v8 == -1)
  {
LABEL_12:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<unsigned long,4ul>::operator[](a1 + 1920, v8);
}

uint64_t re::RealityDataPipe::tryGetDepthMitigationReductionRenderData(re::RealityDataPipe *this)
{
  if (*(this + 245))
  {
    return re::BucketArray<unsigned long,4ul>::operator[](this + 1920, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetDepthMitigationReductionRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 245))
  {
    return this + 1920;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::addSceneUnderstandingDepthRenderData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2016);
  v5 = *(a1 + 1984);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::setBucketsCapacity((a1 + 1976), (v4 + 4) >> 2);
    v5 = *(a1 + 1984);
  }

  if (v5 <= v4 >> 2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (*(a1 + 1992))
  {
    v6 = a1 + 2000;
  }

  else
  {
    v6 = *(a1 + 2008);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2016);
  ++*(a1 + 2024);
  v8 = v7 + 56 * (v4 & 3);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 16) = v10;
  *(v8 + 32) = v11;
  *v8 = v9;
  v12 = *(a1 + 2016);
  if (!v12)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1 + 1976, v12 - 1);
}

uint64_t re::RealityDataPipe::tryGetSceneUnderstandingDepthRenderData(re::RealityDataPipe *this)
{
  if (*(this + 252))
  {
    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1976, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneUnderstandingDepthRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 252))
  {
    return this + 1976;
  }

  else
  {
    return 0;
  }
}