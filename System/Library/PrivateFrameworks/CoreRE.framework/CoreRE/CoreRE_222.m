void *re::RenderGraphBlurGenerationNode::execute(char **this, re::RenderGraphContext *a2)
{
  v2 = this;
  result = re::RenderGraphDataStore::tryGet<re::BlurGenerationContext>(*(a2 + 146), "BlurGenerationContext", this[4]);
  if (result)
  {
    v4 = result;
    v64 = 0;
    v61[1] = 0;
    v62 = 0;
    v61[0] = 0;
    v63 = 0;
    if (*result)
    {
      v5 = v2;
      v6 = result[2];
      v61[0] = *result;
      re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(v61, v6);
      ++v63;
      v7 = v4[2];
      if (v7 >= v62)
      {
        re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(v61, v4[2]);
        std::__copy_impl::operator()[abi:nn200100]<re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *>(v4[4], (v4[4] + 24 * v62), v64);
        if (v62 != v7)
        {
          v11 = v4[4];
          v12 = v11 + 24 * v7;
          v13 = v11 + 24 * v62;
          v14 = &v64[3 * v62];
          do
          {
            *v14 = *v13;
            v14[1] = *(v13 + 8);
            *(v14 + 16) = *(v13 + 16);
            v13 += 24;
            v14 += 3;
          }

          while (v13 != v12);
        }
      }

      else
      {
        std::__copy_impl::operator()[abi:nn200100]<re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *>(v4[4], (v4[4] + 24 * v7), v64);
        if (v7 != v62)
        {
          v8 = 24 * v62 - 24 * v7;
          v9 = &v64[3 * v7 + 1];
          do
          {
            if (*v9)
            {

              *v9 = 0;
            }

            v10 = *(v9 - 1);
            if (v10)
            {

              *(v9 - 1) = 0;
            }

            v9 += 3;
            v8 -= 24;
          }

          while (v8);
        }
      }

      v62 = v7;
      v2 = v5;
    }

    v15 = *(*a2 + 32);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v60 = 0x7FFFFFFFLL;
    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v57, v15, 3);
    if (v62)
    {
      v16 = v64;
      v17 = &v64[3 * v62];
      do
      {
        v18 = *v16;
        v19 = [v18 protectionOptions];
        v20 = v16[1];
        if (v20)
        {
        }

        v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
        v22 = v21 ^ (v21 >> 31);
        if (v57)
        {
          v23 = *(*(&v57 + 1) + 4 * (v22 % DWORD2(v58)));
          if (v23 != 0x7FFFFFFF)
          {
            while (*(v58 + (v23 << 6) + 8) != v19)
            {
              v23 = *(v58 + (v23 << 6)) & 0x7FFFFFFF;
              if (v23 == 0x7FFFFFFF)
              {
                goto LABEL_24;
              }
            }

            v26 = v58 + (v23 << 6) + 16;
            goto LABEL_31;
          }

LABEL_24:
          v54 = 0uLL;
          v55 = 0;
          v56 = 0;
          v53 = v15;
          re::DynamicArray<float *>::setCapacity(&v53, 0);
          v24 = v22 % DWORD2(v58);
          v25 = *(*(&v57 + 1) + 4 * v24);
          if (v25 != 0x7FFFFFFF)
          {
            while (*(v58 + (v25 << 6) + 8) != v19)
            {
              v25 = *(v58 + (v25 << 6)) & 0x7FFFFFFF;
              if (v25 == 0x7FFFFFFF)
              {
                goto LABEL_29;
              }
            }

            v26 = v58 + (v25 << 6) + 16;
            v20 = v53;
            if (v53 && v56)
            {
              v20 = (*(*v53 + 40))();
            }

            goto LABEL_31;
          }
        }

        else
        {
          v54 = 0uLL;
          v55 = 0;
          v56 = 0;
          v53 = v15;
          re::DynamicArray<float *>::setCapacity(&v53, 0);
          LODWORD(v24) = 0;
        }

LABEL_29:
        v20 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v57, v24, v22);
        *(v20 + 2) = v53;
        v26 = (v20 + 16);
        *(v20 + 1) = v19;
        *(v20 + 24) = v54;
        v53 = 0;
        v54 = 0uLL;
        *(v20 + 6) = v56;
        *(v20 + 10) = 1;
        ++HIDWORD(v60);
LABEL_31:
        v27 = *(v26 + 8);
        v28 = *(v26 + 16);
        if (v28 >= v27)
        {
          v29 = v28 + 1;
          if (v27 < v28 + 1)
          {
            if (*v26)
            {
              v30 = 2 * v27;
              v31 = v27 == 0;
              v32 = 8;
              if (!v31)
              {
                v32 = v30;
              }

              if (v32 <= v29)
              {
                v33 = v29;
              }

              else
              {
                v33 = v32;
              }

              re::DynamicArray<float *>::setCapacity(v26, v33);
            }

            else
            {
              re::DynamicArray<float *>::setCapacity(v26, v29);
              ++*(v26 + 24);
            }
          }

          v28 = *(v26 + 16);
        }

        *(*(v26 + 32) + 8 * v28) = v16;
        *(v26 + 16) = v28 + 1;
        ++*(v26 + 24);
        if (v18)
        {
        }

        v16 += 3;
      }

      while (v16 != v17);
    }

    if (v59)
    {
      v34 = 0;
      v35 = v58;
      while (1)
      {
        v36 = *v35;
        v35 += 16;
        if (v36 < 0)
        {
          break;
        }

        if (v59 == ++v34)
        {
          LODWORD(v34) = v59;
          break;
        }
      }
    }

    else
    {
      LODWORD(v34) = 0;
    }

    if (v34 != v59)
    {
      v37 = v58;
      v49 = v59;
      while (1)
      {
        v38 = (v37 + (v34 << 6));
        re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, v38[1], &v52);
        v39 = v38[4];
        if (v39)
        {
          break;
        }

LABEL_68:
        re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v52, 1);

        if (v49 <= v34 + 1)
        {
          v48 = v34 + 1;
        }

        else
        {
          v48 = v49;
        }

        while (v48 - 1 != v34)
        {
          LODWORD(v34) = v34 + 1;
          if ((*(v37 + (v34 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_75;
          }
        }

        LODWORD(v34) = v48;
LABEL_75:
        if (v34 == v49)
        {
          goto LABEL_76;
        }
      }

      v40 = v38[6];
      v41 = 8 * v39;
      while (1)
      {
        v42 = *v40;
        v51 = 0;
        v43 = *(v42 + 16);
        v44 = (v2 + 36);
        if (*(v42 + 16))
        {
          if (v43 == 2)
          {
            v44 = (v2 + 38);
          }

          else
          {
            v45 = 0;
            v44 = (v2 + 37);
            if (v43 != 1)
            {
              goto LABEL_65;
            }
          }
        }

        NS::SharedPtr<MTL::Buffer>::operator=(&v51, v44);
        v45 = v51;
LABEL_65:
        [v52 setComputePipelineState:v45];
        [v52 setTexture:*v42 atIndex:0];
        [v52 setTexture:v42[1] atIndex:1];
        v46 = [*v42 height];
        [v52 setThreadgroupMemoryLength:(8 * v46 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
        v47 = [*v42 height];
        v53 = [*v42 width];
        v54 = vdupq_n_s64(1uLL);
        v65 = v47;
        v66 = v54;
        [v52 dispatchThreadgroups:&v53 threadsPerThreadgroup:&v65];
        if (v51)
        {
        }

        ++v40;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_76:
    re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v57);
    return re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v61);
  }

  return result;
}

void re::RenderGraphBlurGenerationNode::~RenderGraphBlurGenerationNode(re::RenderGraphBlurGenerationNode *this)
{
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  v3 = *(this + 37);
  if (v3)
  {

    *(this + 37) = 0;
  }

  v4 = *(this + 36);
  if (v4)
  {

    *(this + 36) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  v3 = *(this + 37);
  if (v3)
  {

    *(this + 37) = 0;
  }

  v4 = *(this + 36);
  if (v4)
  {

    *(this + 36) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void **std::__copy_impl::operator()[abi:nn200100]<re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *,re::RenderGraphBlurGenerationData *>(void **result, void **a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(a3, v5);
      result = NS::SharedPtr<MTL::Buffer>::operator=((a3 + 8), v5 + 1);
      *(a3 + 16) = *(v5 + 16);
      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

unint64_t re::MXIOffscreenMeshNode::setup(re::MXIOffscreenMeshNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  *(a2 + 592) = 1;
  re::RenderGraphNode::setup(this, a2, a3);
  if (*(this + 280))
  {
    v4 = *(this + 36);
  }

  else
  {
    v4 = this + 281;
  }

  result = strlen(v4);
  if (result)
  {
    result = MurmurHash3_x64_128(v4, result, 0, v7);
    v6 = (v7[1] + (v7[0] << 6) + (v7[0] >> 2) - 0x61C8864680B583E9) ^ v7[0];
  }

  else
  {
    v6 = 0;
  }

  *(this + 41) = v6;
  return result;
}

void re::MXIOffscreenMeshNode::execute(re::MXIOffscreenMeshNode *this, re::RenderGraphContext *a2)
{
  v3 = this;
  v173 = *MEMORY[0x1E69E9840];
  v151[2] = &unk_1F5D153E8;
  v152 = 256;
  v4 = *(a2 + 146);
  v5 = "N2re20MXIReprojectionStateE";
  if (("N2re20MXIReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re20MXIReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  if (!*(v4 + 64))
  {
    goto LABEL_12;
  }

  v9 = (*(*(a2 + 5) + 48) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v10 = *(*(v4 + 72) + 4 * (v9 % *(v4 + 88)));
  if (v10 == 0x7FFFFFFF)
  {
    goto LABEL_12;
  }

  v11 = *(v4 + 80);
  while (*(v11 + 24 * v10 + 8) != v9)
  {
    v10 = *(v11 + 24 * v10) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v11 + 24 * v10 + 16);
  if (!v12 || (v152 = *(v12 + 8), (v152 & 0x100) != 0))
  {
LABEL_12:
    re::RenderGraphContext::acquireManagedRenderCommandEncoder(v151, a2, 0);
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v151);
  }

  if (!*(v3 + 41))
  {
    v20 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v21 = "materialTechniqueName must be set for MXIOffscreenMeshNode to execute.";
LABEL_40:
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, v21, &buf, 2u);
    return;
  }

  v13 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v14 = *(*a2 + 32);
  v15 = (*(*v14 + 32))(v14, 56, 8);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 24) = 0;
  *(v15 + 48) = 0;
  re::BucketArray<re::MeshPartDrawContext,128ul>::init(v15, v14, 1uLL);
  v16 = *(a2 + 146);
  v17 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(v16, *(*(a2 + 5) + 48));
  if (!v17)
  {
    v20 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v21 = "MXIOffscreenMeshNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    goto LABEL_40;
  }

  v18 = v17;
  v135 = v15;
  if (*(v17 + 40))
  {
    v19 = *(v17 + 48);
  }

  else
  {
    v19 = (v17 + 41);
  }

  MurmurHash3_x64_128("Camera", 6uLL, 0, &buf);
  v22 = (v160 - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf;
  v23 = strlen(v19);
  v24 = 0x9E3779B97F4A7C17;
  if (v23)
  {
    MurmurHash3_x64_128(v19, v23, 0, &buf);
    v24 = ((v160 - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf) - 0x61C8864680B583E9;
  }

  v25 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(v16, ((v22 >> 2) + (v22 << 6) + v24) ^ v22);
  if (!v25)
  {
    v25 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
  }

  v26 = *(v18 + 8);
  if (!*(v26 + 8))
  {
    v20 = *re::graphicsLogObjects(v25);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v21 = "MXIOffscreenMeshNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    goto LABEL_40;
  }

  v140 = v25;
  v132 = v14;
  v27 = *(v3 + 76);
  v143 = *(v18 + 8);
  v28 = *(v26 + 56);
  v29 = *(a2 + 146);
  MurmurHash3_x64_128("MeshScenes", 0xAuLL, 0, &buf);
  v30 = buf;
  v31 = v160;
  v32 = strlen(v28);
  v33 = 0x9E3779B97F4A7C17;
  if (v32)
  {
    MurmurHash3_x64_128(v28, v32, 0, &buf);
    v33 = ((v160 - 0x61C8864680B583E9 + (buf << 6) + (buf >> 2)) ^ buf) - 0x61C8864680B583E9;
  }

  v34 = "N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x8000000000000000) != 0)
  {
    v35 = ("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v36 = 5381;
    do
    {
      v34 = v36;
      v37 = *v35++;
      v36 = (33 * v36) ^ v37;
    }

    while (v37);
  }

  v38 = v143;
  if (*(v29 + 64))
  {
    v39 = (v31 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
    v40 = ((((v39 >> 2) + (v39 << 6) + v33) ^ v39) - 0x61C8864680B583E9 + (v34 << 6) + (v34 >> 2)) ^ v34;
    v41 = *(*(v29 + 72) + 4 * (v40 % *(v29 + 88)));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(v29 + 80);
      while (*(v42 + 24 * v41 + 8) != v40)
      {
        v41 = *(v42 + 24 * v41) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v43 = *(v42 + 24 * v41 + 16);
      if (v43)
      {
        v150 = 0;
        v128 = *(v43 + 48);
        if (!v128)
        {
LABEL_120:
          if (*(v135 + 40))
          {
            buf = v135;
            LOBYTE(v160) = 0;
            *(&v160 + 6) = 65280;
            BYTE10(v160) = 1;
            v148[0] = 0;
            if (*(v3 + 280))
            {
              v121 = *(v3 + 36);
            }

            else
            {
              v121 = v3 + 281;
            }

            memset(v171, 0, 24);
            v145 = *(v3 + 308);
            if (v145 == 1)
            {
              v147 = *(v3 + 325);
              v146 = *(v3 + 309);
            }

            re::RenderGraphMeshNodeBase::sortAndDrawMeshPartsInternal(v3, a2, &buf, 1uLL, 0, 0, v140, 2, v148, 0, v121, v171, 0, &v145);
          }

          return;
        }

        v44 = 0;
        v45 = 0;
        v130 = v3 + 281;
        __asm { FMOV            V9.2S, #1.0 }

        v144 = v3;
        v126 = v43;
        while (1)
        {
          v129 = v45;
          v50 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v43 + 8, v45);
          v52 = *(v50 + 16);
          if (v52)
          {
            break;
          }

LABEL_119:
          v45 = v129 + 1;
          v43 = v126;
          if (v129 + 1 == v128)
          {
            goto LABEL_120;
          }
        }

        v53 = *(v50 + 32);
        v54 = v53 + 736 * v52;
        v127 = v54;
        while (1)
        {
          if (v27 <= 4 && ((1 << v27) & 0x13) != 0)
          {
            v55 = *(v53 + 512);
            if (v55 != *(v38 + 8))
            {
              v56 = *(v38 + 24);
              goto LABEL_51;
            }
          }

          else
          {
            if ((v27 & 0xFFFFFFFE) != 2)
            {
              goto LABEL_59;
            }

            v55 = *(v53 + 512);
            if (v55 != *(v38 + 16))
            {
              v56 = *(v38 + 32);
LABEL_51:
              if (v55 != v56)
              {
                goto LABEL_59;
              }
            }
          }

          if ((*(v53 + 524) & *(v13 + 904)) != 0)
          {
            buf = v53;
            v160 = **(v53 + 112);
            v57 = *(v53 + 8);
            v161[0] = 0;
            v161[1] = v57;
            v162 = xmmword_1E3047670;
            v163 = xmmword_1E3047680;
            v164 = xmmword_1E30476A0;
            v165 = xmmword_1E30474D0;
            v166 = 0;
            v167 = 0;
            if (!*(v53 + 56))
            {
              *&v168 = v161;
              *(&v168 + 1) = 1;
              v131 = 1;
LABEL_62:
              v58 = 0;
              while (2)
              {
                v149[0] = &buf;
                v149[1] = v58;
                v59 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v149, v51);
                v60 = 0;
                v61 = *(v53 + 128);
                v62 = *(v53 + 144);
                v63 = *(v53 + 160);
                v64 = *(v53 + 176);
                v65 = v59[2];
                v66 = v59[3];
                v67 = v59[4];
                *v169 = v59[1];
                *&v169[16] = v65;
                *&v169[32] = v66;
                v170 = v67;
                do
                {
                  *&v171[v60] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(*&v169[v60])), v62, *&v169[v60], 1), v63, *&v169[v60], 2), v64, *&v169[v60], 3);
                  v60 += 16;
                }

                while (v60 != 64);
                v138 = *&v171[16];
                v139 = *v171;
                v136 = *&v171[48];
                v137 = *&v171[32];
                if (v44)
                {
                  v68 = 0;
                  v69 = 0;
                  goto LABEL_73;
                }

                v70 = *(v38 + 216);
                if (v70)
                {
                  if (!*(v140 + 3))
                  {
                    goto LABEL_130;
                  }

                  v71 = 0;
                  v72 = *(v140 + 5);
                  v73 = *v72;
                  v74 = v72[1];
                  v75 = v72[2];
                  v76 = v72[3];
                  *v169 = *v171;
                  *&v169[16] = *&v171[16];
                  *&v169[32] = *&v171[32];
                  v170 = *&v171[48];
                  do
                  {
                    *&v171[v71] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*&v169[v71])), v74, *&v169[v71], 1), v75, *&v169[v71], 2), v76, *&v169[v71], 3);
                    v71 += 16;
                  }

                  while (v71 != 64);
                  *v169 = *v171;
                  *&v169[16] = *&v171[16];
                  *&v169[32] = *&v171[32];
                  v170 = *&v171[48];
                  if (!*(v140 + 8))
                  {
LABEL_131:
                    v153 = 0;
                    v172 = 0u;
                    memset(v171, 0, sizeof(v171));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v154 = 136315906;
                    *&v154[4] = "operator[]";
                    *&v154[12] = 1024;
                    *&v154[14] = 797;
                    *&v154[18] = 2048;
                    *&v154[20] = 0;
                    *&v154[28] = 2048;
                    *&v154[30] = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_132:
                    re::internal::assertLog(6, v117, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
                    _os_crash();
                    __break(1u);
                    goto LABEL_133;
                  }

                  v77 = *(v140 + 10);
                  v78 = v77[2];
                  v80 = *v77;
                  v79 = v77[1];
                  v155 = v77[3];
                  *&v154[16] = v79;
                  *&v154[32] = v78;
                  *v154 = v80;
                  re::MXIContext::ReprojectionContext::notifyFrame(v70, v38 + 224, v169, v154, *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL, v152, &v150, v171);
                  v68 = v171[0];
                  v156 = *&v171[1];
                  v157 = *&v171[17];
                  v158[0] = *&v171[33];
                  *(v158 + 15) = *&v171[48];
                  v69 = v172;
LABEL_73:
                  v81 = 1;
                }

                else
                {
                  v68 = 0;
                  v69 = 0;
                  v81 = 0;
                }

                v82 = *(a2 + 1);
                v83 = *(v82 + 112);
                v142 = v81;
                v141 = v58;
                if (v83)
                {
                  v84 = *(v83 + 320);
                }

                else
                {
                  v84 = 0;
                }

                v85 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v84, *(*(v82 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v82 + 144) + 16) << 60));
                re::PerFrameAllocatorGPU::allocInternal(v85, 8uLL, 0x10uLL, 0, v169);
                v58 = v169;
                v86 = *&v169[8];
                *(*v169 + *&v169[8]) = *(v38 + 96);
                *v171 = **&v169[24];
                *&v171[24] = 0;
                *&v171[32] = v86;
                *&v171[36] = 8;
                v87 = *a2;
                *v154 = 0xD9B2155075A987DLL;
                re::BufferTable::setBuffer((v87 + 480), v154, v171);
                if (*&v171[24] != -1)
                {
                  (off_1F5D16AB0[*&v171[24]])(v154, v171);
                }

                re::PerFrameAllocatorGPU::allocInternal(v85, 8uLL, 0x10uLL, 0, v169);
                v88 = *(v38 + 104);
                v89 = *&v169[8];
                v90 = (*v169 + *&v169[8]);
                *v90 = v150;
                v90[1] = v88;
                *v171 = **&v169[24];
                *&v171[24] = 0;
                *&v171[32] = v89;
                *&v171[36] = 8;
                v91 = *a2;
                *v154 = 0x44D3F5F0CE6A1982;
                re::BufferTable::setBuffer((v91 + 480), v154, v171);
                if (*&v171[24] != -1)
                {
                  (off_1F5D16AB0[*&v171[24]])(v154, v171);
                }

                if (v69)
                {
                  re::PerFrameAllocatorGPU::allocInternal(v85, 0x40uLL, 0x10uLL, 0, v169);
                  v122 = *&v169[8];
                  v123 = *v169 + *&v169[8];
                  *v123 = v68;
                  v124 = v157;
                  *(v123 + 1) = v156;
                  *(v123 + 17) = v124;
                  *(v123 + 33) = v158[0];
                  *(v123 + 48) = *(v158 + 15);
                  *v171 = **&v169[24];
                  *&v171[24] = 0;
                  *&v171[32] = v122;
                  *&v171[36] = 64;
                  v125 = *a2;
                  *v154 = 0x2657CB62B5D6B400;
                  re::BufferTable::setBuffer((v125 + 480), v154, v171);
                  if (*&v171[24] != -1)
                  {
                    (off_1F5D16AB0[*&v171[24]])(v154, v171);
                  }

                  return;
                }

                PassTechniqueMapping = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v149, v92);
                v94 = *(PassTechniqueMapping + 8);
                _CF = v94 >= *PassTechniqueMapping;
                v96 = v94 - *PassTechniqueMapping;
                if (_CF)
                {
                  v97 = v96;
                }

                else
                {
                  v97 = 0;
                }

                if (v96 == 0 || !_CF)
                {
LABEL_111:
                  v119 = *re::graphicsLogObjects(PassTechniqueMapping);
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                  {
                    v120 = v130;
                    if (*(v144 + 280))
                    {
                      v120 = *(v144 + 36);
                    }

                    *v171 = 136315138;
                    *&v171[4] = v120;
                    _os_log_impl(&dword_1E1C61000, v119, OS_LOG_TYPE_DEFAULT, "MeshPart should have %s technique mapping", v171, 0xCu);
                  }

LABEL_115:
                  v58 = v141 + 1;
                  v38 = v143;
                  v44 = v142;
                  if (v141 + 1 == v131)
                  {
                    goto LABEL_58;
                  }

                  continue;
                }

                break;
              }

              v98 = 0;
              v99 = 0;
LABEL_88:
              v133 = v98;
              while (1)
              {
                v100 = *v149[0];
                v101 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v149, v51);
                v102 = re::Slice<re::internal::BindPointImplBase const*>::range(v100, *v101, v101[1]);
                if (v103 <= v99)
                {
                  re::internal::assertLog(6, v103, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v99, v103);
                  _os_crash();
                  __break(1u);
LABEL_130:
                  *v154 = 0;
                  v172 = 0u;
                  memset(v171, 0, sizeof(v171));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v169 = 136315906;
                  *&v169[4] = "operator[]";
                  *&v169[12] = 1024;
                  *&v169[14] = 797;
                  *&v169[18] = 2048;
                  *&v169[20] = 0;
                  *&v169[28] = 2048;
                  *&v169[30] = 0;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_131;
                }

                v104 = *(v102 + 8 * v99);
                PassTechniqueMapping = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(v149, v99);
                v58 = PassTechniqueMapping;
                if (*(v53 + 200) <= PassTechniqueMapping)
                {
                  v107 = *re::graphicsLogObjects(PassTechniqueMapping);
                  PassTechniqueMapping = os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT);
                  if (PassTechniqueMapping)
                  {
                    v108 = *(v53 + 200);
                    *v171 = 134218496;
                    *&v171[4] = v99;
                    *&v171[12] = 1024;
                    *&v171[14] = v58;
                    *&v171[18] = 2048;
                    *&v171[20] = v108;
                    _os_log_impl(&dword_1E1C61000, v107, OS_LOG_TYPE_DEFAULT, "MeshPart %lu has materialIndex %d out of scope (%lu)", v171, 0x1Cu);
                  }
                }

                else
                {
                  v58 = PassTechniqueMapping;
                  v105 = *(*(v53 + 192) + 8 * PassTechniqueMapping);
                  if (v105)
                  {
                    v106 = *(v144 + 41);
                    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                    {
                      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                    }

                    PassTechniqueMapping = re::MaterialParameterTable::tryGetPassTechniqueMapping((v105 + 304), v106, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
                    if (PassTechniqueMapping)
                    {
                      re::globalAllocators(PassTechniqueMapping);
                      v109 = (*(*v132 + 32))(v132, 336, 16);
                      *v109 = 0u;
                      *(v109 + 16) = 0u;
                      *(v109 + 32) = 0u;
                      *(v109 + 48) = 0;
                      *(v109 + 56) = 0u;
                      *(v109 + 72) = 0u;
                      *(v109 + 88) = 0u;
                      *(v109 + 104) = 0u;
                      *(v109 + 120) = 0;
                      *(v109 + 192) = 0;
                      *(v109 + 200) = 0;
                      *(v109 + 208) = 0;
                      *(v109 + 224) = 0;
                      *(v109 + 128) = 0u;
                      *(v109 + 144) = 0u;
                      *(v109 + 160) = 0u;
                      *(v109 + 176) = 0;
                      *(v109 + 184) = v132;
                      *(v109 + 232) = xmmword_1E304F3C0;
                      *(v109 + 248) = 0;
                      *(v109 + 252) = 10854;
                      *(v109 + 256) = _D9;
                      *(v109 + 264) = 0;
                      *(v109 + 272) = 0;
                      *(v109 + 320) = 0;
                      *&v171[24] = re::globalAllocators(v109)[2];
                      *&v171[32] = v171;
                      *v171 = &unk_1F5D16AD0;
                      v110 = (*(*v132 + 16))(v132, v109, v171);
                      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v171);
                      *(v110 + 7) = v105;
                      v112 = *(v53 + 288);
                      if (v112)
                      {
                        if (v112 > v58)
                        {
                          v112 = *(*(v53 + 280) + 8 * v58);
                          goto LABEL_103;
                        }

LABEL_133:
                        re::internal::assertLog(6, v111, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v58, v112);
                        _os_crash();
                        __break(1u);
LABEL_134:
                        re::internal::assertLog(6, v111, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v58, v113);
                        _os_crash();
                        __break(1u);
                      }

LABEL_103:
                      *(v110 + 9) = v112;
                      v113 = *(v53 + 336);
                      if (v113 <= *(v104 + 458))
                      {
                        v114 = 0;
                      }

                      else
                      {
                        if (v113 <= v58)
                        {
                          goto LABEL_134;
                        }

                        v114 = *(*(v53 + 328) + 8 * v58);
                      }

                      *(v110 + 10) = v114;
                      v58 = *(v53 + 512);
                      v115 = *(v104 + 528);
                      v116 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v110, *(v144 + 41));
                      if (!v117)
                      {
                        goto LABEL_132;
                      }

                      v134 = *v116;
                      v118 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v135);
                      *v118 = v58;
                      *(v118 + 8) = 0;
                      *(v118 + 16) = 0;
                      *(v118 + 24) = v104;
                      *(v118 + 32) = 0;
                      *(v118 + 40) = v110;
                      *(v118 + 48) = 0;
                      *(v118 + 56) = -65280;
                      *(v118 + 60) = v134;
                      *(v118 + 64) = 0;
                      *(v118 + 80) = v139;
                      *(v118 + 96) = v138;
                      *(v118 + 112) = v137;
                      *(v118 + 128) = v136;
                      *(v118 + 172) = 0;
                      *(v118 + 176) = 0;
                      *(v118 + 184) = 0;
                      *(v118 + 192) = 0;
                      *(v118 + 144) = 0;
                      *(v118 + 152) = 0;
                      *(v118 + 168) = 0;
                      *(v118 + 160) = 0;
                      *(v118 + 196) = v115;
                      *(v118 + 200) = -NAN;
                      *(v118 + 208) = 0;
                      *(v118 + 212) = 0xFFFFFFFFLL;
                      ++v99;
                      v98 = 1;
                      *(v118 + 224) = 0;
                      *(v118 + 232) = 0;
                      if (v99 >= v97)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_88;
                    }
                  }
                }

                if (++v99 >= v97)
                {
                  if (v133)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_111;
                }
              }
            }

            v168 = *(v53 + 48);
            v131 = *(&v168 + 1);
            if (*(&v168 + 1))
            {
              goto LABEL_62;
            }

LABEL_58:
            v3 = v144;
            v54 = v127;
          }

LABEL_59:
          v53 += 736;
          if (v53 == v54)
          {
            goto LABEL_119;
          }
        }
      }
    }
  }
}

void *re::allocInfo_MXIOffscreenMeshNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_550))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2900, "MXIOffscreenMeshNode");
    __cxa_guard_release(&_MergedGlobals_550);
  }

  return &unk_1EE1C2900;
}

void re::initInfo_MXIOffscreenMeshNode(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x8F675D4BB4FE81D8;
  v14[1] = "MXIOffscreenMeshNode";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2878, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2878);
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
      qword_1EE1C28D8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "materialTechniqueName";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C28E0 = v12;
      __cxa_guard_release(&qword_1EE1C2878);
    }
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C28D8;
  *(this + 9) = re::internal::defaultConstruct<re::MXIOffscreenMeshNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIOffscreenMeshNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIOffscreenMeshNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIOffscreenMeshNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultDestruct<re::MXIOffscreenMeshNode>(uint64_t a1, uint64_t a2, id *a3)
{
  re::DynamicString::deinit((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

void re::internal::defaultDestructV2<re::MXIOffscreenMeshNode>(id *a1)
{
  re::DynamicString::deinit((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void re::MXIMRCNode::execute(re::MXIMRCNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v7 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "MXIMRCNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    v9 = buf;
    goto LABEL_13;
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8))
  {
    v7 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 0;
    v8 = "MXIMRCNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    v9 = &v11;
    goto LABEL_13;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    v7 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = 0;
    v8 = "MXIMRCNode::execute had invalid reprojectionContext.";
    v9 = &v10;
LABEL_13:
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    return;
  }

  if ((*(v6 + 256) & 1) == 0)
  {

    re::RenderGraphMRCNode::execute(this, a2);
  }
}

uint64_t re::MXIAlphaComputeNode::setupEncoder(uint64_t a1, void *a2, id *a3)
{
  v5 = *(re::RenderGraphDataStore::get<re::MXIFrameData>(a2[146], *(a2[5] + 48)) + 8);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 8uLL, 8uLL, &v14);
  v6 = v16;
  *(v14 + v15) = v5[12];
  [*a3 setBuffer:v6 offset:? atIndex:?];
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x10uLL, 0x10uLL, &v14);
  v8 = v15;
  v9 = *(v5[27] + 244);
  if (v9 <= 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 1.0 / v9;
  }

  *&v7 = *(v5 + 108);
  *(&v7 + 2) = v10;
  *(v14 + v15) = v7;
  v11 = v16;
  v12 = *a3;

  return [v12 setBuffer:v11 offset:v8 atIndex:3];
}

void re::MXIAlphaComputeNode::execute(re::MXIAlphaComputeNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v6 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v7 = "MXIAlphaComputeNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    v8 = buf;
    goto LABEL_9;
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8) || *(v5 + 74) == 1)
  {
    v6 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 0;
    v7 = "MXIAlphaComputeNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    v8 = &v11;
    goto LABEL_9;
  }

  v9 = *(v5 + 216);
  if (v9)
  {
    if ((*(v9 + 256) & 1) == 0)
    {

      re::RenderGraphComputeNodeBase::execute(this, a2);
    }
  }

  else
  {
    v6 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "MXIAlphaComputeNode::execute had invalid reprojectionContext.";
      v8 = &v10;
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }
}

void re::MXIBlurNode::execute(re::MXIBlurNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v6 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v7 = "MXIBlurNode::execute ran with an invalid MXIFrameData. Was this graph meant to be emitted?";
    v8 = buf;
    goto LABEL_12;
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8))
  {
    v6 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 0;
    v7 = "MXIBlurNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
    v8 = &v9;
LABEL_12:
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    return;
  }

  if (*(v5 + 116) >= 0.001)
  {
    *(this + 66) = 1084227584;
    *(this + 268) = 1;

    re::RenderGraphMPSImageGaussianBlurNode::execute(this, a2);
  }
}

void *re::allocInfo_MXIBlurNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2880))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2990, "MXIBlurNode");
    __cxa_guard_release(&qword_1EE1C2880);
  }

  return &unk_1EE1C2990;
}

void re::initInfo_MXIBlurNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x1D16BE1E19AF24ELL;
  v10[1] = "MXIBlurNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C2890, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2890);
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
      qword_1EE1C2888 = v8;
      __cxa_guard_release(&qword_1EE1C2890);
    }
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2888;
  *(this + 9) = re::internal::defaultConstruct<re::MXIBlurNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIBlurNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIBlurNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIBlurNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::MXIBlurNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 134) = 0;
  *(result + 34) = 0;
  *(result + 35) = 0;
  *result = &unk_1F5D16750;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::MXIBlurNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 134) = 0;
  *(result + 34) = 0;
  *(result + 35) = 0;
  *result = &unk_1F5D16750;
  return result;
}

uint64_t *re::MXIColorConversionTileNode::configure(re::MXIColorConversionTileNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  re::DynamicString::setCapacity(&v20, 0);
  memset(&v25[1], 0, 64);
  v11 = "EnableManualSrgbConversion";
  v12 = 26;
  re::DynamicString::operator=(&v20, &v11);
  v24 = 53;
  memset(v25, 0, sizeof(v25));
  re::DynamicArray<re::TechniqueFunctionConstant>::add((this + 400), &v20);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::DynamicString::setCapacity(&v11, 0);
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v10[0] = "EnablePremultiplyAlphaInSrgb";
  v10[1] = 28;
  re::DynamicString::operator=(&v11, v10);
  v15 = 65589;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  re::DynamicArray<re::TechniqueFunctionConstant>::add((this + 400), &v11);
  re::AssetHandle::loadNow(*(this + 34), 0);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

void re::MXIColorConversionTileNode::execute(re::MXIColorConversionTileNode *this, re::RenderGraphContext *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v4)
  {
    v7 = 1;
LABEL_10:
    v10 = *(this + 4);
    v11 = strlen(*(this + 3));
    if (v11)
    {
      MurmurHash3_x64_128(*(this + 3), v11, 0, buf);
      v12 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
    }

    else
    {
      v12 = 0;
    }

    v13 = strlen(v10);
    if (v13)
    {
      MurmurHash3_x64_128(v10, v13, 0, buf);
      v14 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
    }

    else
    {
      v14 = 0x9E3779B97F4A7C17;
    }

    v15 = *(a2 + 146);
    v16 = "N2re23MXIColorConversionStateE";
    if (("N2re23MXIColorConversionStateE" & 0x8000000000000000) != 0)
    {
      v17 = ("N2re23MXIColorConversionStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v16 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    if (!*(v15 + 64) || (v20 = ((((v12 >> 2) + (v12 << 6) + v14) ^ v12) - 0x61C8864680B583E9 + (v16 << 6) + (v16 >> 2)) ^ v16, v21 = *(*(v15 + 72) + 4 * (v20 % *(v15 + 88))), v21 == 0x7FFFFFFF))
    {
LABEL_24:
      LOBYTE(v23) = 0;
    }

    else
    {
      v22 = *(v15 + 80);
      while (*(v22 + 24 * v21 + 8) != v20)
      {
        v21 = *(v22 + 24 * v21) & 0x7FFFFFFF;
        if (v21 == 0x7FFFFFFF)
        {
          goto LABEL_24;
        }
      }

      v23 = *(v22 + 24 * v21 + 16);
      if (v23)
      {
        v24 = v7 & *(v23 + 9);
        LOBYTE(v23) = *(v23 + 8);
        if (v23)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    v24 = 0;
LABEL_26:
    if ((v24 & 1) == 0)
    {
      return;
    }

LABEL_27:
    v25 = v23 & 1;
    if (*(this + 441) != v25)
    {
      *(this + 441) = v25;
      if (!*(this + 52))
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_41;
      }

      v26 = *(this + 54);
      *(v26 + 84) = 0u;
      *(v26 + 68) = 0u;
      *(v26 + 52) = 0u;
      *(v26 + 36) = 0u;
      *(v26 + 36) = *(this + 441);
      *(this + 440) = 1;
    }

    v27 = v24 & 1;
    if (*(this + 442) == v27)
    {
LABEL_33:
      re::RenderGraphMRCNode::execute(this, a2);
      return;
    }

    *(this + 442) = v27;
    if (*(this + 52) > 1uLL)
    {
      v28 = *(this + 54);
      *(v28 + 188) = 0u;
      *(v28 + 172) = 0u;
      *(v28 + 156) = 0u;
      *(v28 + 140) = 0u;
      *(v28 + 140) = *(this + 442);
      *(this + 440) = 1;
      goto LABEL_33;
    }

LABEL_41:
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(v4 + 1);
  if (!v5 || !*(v5 + 8))
  {
    v8 = *re::graphicsLogObjects(v4);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = "MXIMRCNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
LABEL_8:
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    return;
  }

  v6 = *(v5 + 216);
  if (v6)
  {
    v7 = *(v6 + 256);
    goto LABEL_10;
  }

  v8 = *re::graphicsLogObjects(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "MXIMRCNode::execute had invalid reprojectionContext.";
    goto LABEL_8;
  }
}

void *re::allocInfo_MXIColorConversionTileNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2898))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2A20, "MXIColorConversionTileNode");
    __cxa_guard_release(&qword_1EE1C2898);
  }

  return &unk_1EE1C2A20;
}

void re::initInfo_MXIColorConversionTileNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x69F946F693D4FD6;
  v10[1] = "MXIColorConversionTileNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C28A8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C28A8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphMRCNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphMRCNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C28A0 = v8;
      __cxa_guard_release(&qword_1EE1C28A8);
    }
  }

  *(this + 2) = 0x1C000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C28A0;
  *(this + 9) = re::internal::defaultConstruct<re::MXIColorConversionTileNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIColorConversionTileNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIColorConversionTileNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIColorConversionTileNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphMRCNode *re::internal::defaultConstruct<re::MXIColorConversionTileNode>(int a1, int a2, re::RenderGraphMRCNode *this)
{
  *(this + 54) = 0;
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
  result = re::RenderGraphMRCNode::RenderGraphMRCNode(this);
  *result = &unk_1F5D168B8;
  *(result + 220) = 0;
  *(result + 442) = 0;
  return result;
}

re::RenderGraphMRCNode *re::internal::defaultConstructV2<re::MXIColorConversionTileNode>(uint64_t a1)
{
  *(a1 + 432) = 0;
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
  result = re::RenderGraphMRCNode::RenderGraphMRCNode(a1);
  *result = &unk_1F5D168B8;
  *(result + 220) = 0;
  *(result + 442) = 0;
  return result;
}

void re::MXIFullscreenNode::execute(re::MXIFullscreenNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v4)
  {
    v5 = *(v4 + 1);
    if (v5 && *(v5 + 8) && *(v5 + 74) != 1)
    {
      if (*(v5 + 216))
      {
        v9 = *(this + 119) - 1;
        if (v9 > 3)
        {
          if (*(this + 360) == 1)
          {
            *(this + 360) = 0;
          }
        }

        else
        {
          v10 = 0x1010102u >> (8 * v9);
          v11 = qword_1E3109428[v9];
          if ((*(this + 360) & 1) == 0)
          {
            *(this + 360) = 1;
          }

          *(this + 361) = v11;
          *(this + 369) = v11;
          *(this + 377) = v10;
        }

        *(this + 48) = *(v4 + 8);
        if (*(*(v5 + 216) + 256) == 1)
        {
          if (!*(this + 472))
          {
            return;
          }
        }

        else if (*(this + 472))
        {
          return;
        }

        re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
      }

      else
      {
        v6 = *re::graphicsLogObjects(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 0;
          v7 = "MXIFullscreenNode::execute had invalid reprojectionContext.";
          v8 = &v12;
          goto LABEL_8;
        }
      }
    }

    else if ((atomic_exchange(re::MXIFullscreenNode::execute(re::RenderGraphContext &)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v6 = *re::graphicsLogObjects(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "MXIFullscreenNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
        v8 = buf;
LABEL_8:
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }
  }
}

void *re::allocInfo_MXIFullscreenNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C28B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C28B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2AB0, "MXIFullscreenNode");
    __cxa_guard_release(&qword_1EE1C28B0);
  }

  return &unk_1EE1C2AB0;
}

void re::initInfo_MXIFullscreenNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xDDFF3E6A4FBCD7F6;
  v18[1] = "MXIFullscreenNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C28B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C28B8);
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
      qword_1EE1C28E8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_int(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "stencilStep";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1DC00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C28F0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "renderOnReprojectionFrames";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1D800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C28F8 = v16;
      __cxa_guard_release(&qword_1EE1C28B8);
    }
  }

  *(this + 2) = 0x1E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C28E8;
  *(this + 9) = re::internal::defaultConstruct<re::MXIFullscreenNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIFullscreenNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIFullscreenNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIFullscreenNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstruct<re::MXIFullscreenNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
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
  *result = &unk_1F5D16970;
  *(result + 472) = 1;
  *(result + 119) = 0;
  return result;
}

re::RenderGraphFullscreenNode *re::internal::defaultConstructV2<re::MXIFullscreenNode>(uint64_t a1)
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
  *result = &unk_1F5D16970;
  *(result + 472) = 1;
  *(result + 119) = 0;
  return result;
}

void re::MXIMeshCrackNode::execute(re::MXIMeshCrackNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::MXIFrameData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (v4)
  {
    v5 = *(v4 + 1);
    if (v5 && *(v5 + 8) && *(v5 + 74) != 1)
    {
      v9 = *(v5 + 216);
      if (v9)
      {
        if (*(v9 + 256) == 1)
        {
          v10 = *(this + 92) - 1;
          if (v10 > 3)
          {
            if (*(this + 347) == 1)
            {
              *(this + 347) = 0;
            }
          }

          else
          {
            v11 = 0x1010102u >> (8 * v10);
            v12 = qword_1E3109428[v10];
            if ((*(this + 347) & 1) == 0)
            {
              *(this + 347) = 1;
            }

            *(this + 348) = v12;
            *(this + 356) = v12;
            *(this + 364) = v11;
          }

          re::RenderGraphMeshNode::execute(this, a2);
        }
      }

      else
      {
        v6 = *re::graphicsLogObjects(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 0;
          v7 = "MXIMeshCrackNode::execute had invalid reprojectionContext.";
          v8 = &v13;
          goto LABEL_8;
        }
      }
    }

    else if ((atomic_exchange(re::MXIMeshCrackNode::execute(re::RenderGraphContext &)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v6 = *re::graphicsLogObjects(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "MXIMeshCrackNode::execute ran with an invalid MXIContext. Was this graph meant to be emitted?";
        v8 = buf;
LABEL_8:
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }
  }
}

void *re::allocInfo_MXIMeshCrackNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C28C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C28C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2B40, "MXIMeshCrackNode");
    __cxa_guard_release(&qword_1EE1C28C0);
  }

  return &unk_1EE1C2B40;
}

void re::initInfo_MXIMeshCrackNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x7C4AF479AC00D822;
  v10[1] = "MXIMeshCrackNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1C28D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C28D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphMeshNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphMeshNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C28C8 = v8;
      __cxa_guard_release(&qword_1EE1C28D0);
    }
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C28C8;
  *(this + 9) = re::internal::defaultConstruct<re::MXIMeshCrackNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MXIMeshCrackNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::MXIMeshCrackNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::MXIMeshCrackNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphMeshNode *re::internal::defaultConstruct<re::MXIMeshCrackNode>(int a1, int a2, re::RenderGraphMeshNode *this)
{
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
  *(this + 349) = 0u;
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(this);
  *result = &unk_1F5D16A18;
  *(result + 92) = 3;
  return result;
}

re::RenderGraphMeshNode *re::internal::defaultConstructV2<re::MXIMeshCrackNode>(_OWORD *a1)
{
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 349) = 0u;
  result = re::RenderGraphMeshNode::RenderGraphMeshNode(a1);
  *result = &unk_1F5D16A18;
  *(result + 92) = 3;
  return result;
}

void re::MXIOffscreenMeshNode::~MXIOffscreenMeshNode(id *this)
{
  re::DynamicString::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::DynamicString::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIMRCNode::~MXIMRCNode(re::MXIMRCNode *this)
{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIBlurNode::~MXIBlurNode(re::MXIBlurNode *this)
{
  re::RenderGraphMPSImageGaussianBlurNode::~RenderGraphMPSImageGaussianBlurNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIAlphaComputeNode::~MXIAlphaComputeNode(re::MXIAlphaComputeNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIColorConversionTileNode::~MXIColorConversionTileNode(re::MXIColorConversionTileNode *this)
{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIFullscreenNode::~MXIFullscreenNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

void re::MXIMeshCrackNode::~MXIMeshCrackNode(id *this)
{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::MXIOffscreenMeshNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D16AD0;
  return result;
}

void *re::internal::Callable<re::MXIOffscreenMeshNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D16AD0;
  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::MXIFrameData>(uint64_t a1, uint64_t a2)
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

re::MXIOffscreenMeshNode *re::MXIOffscreenMeshNode::MXIOffscreenMeshNode(re::MXIOffscreenMeshNode *this)
{
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *(v2 + 66) = 1;
  *(v2 + 268) = 0;
  *v2 = &unk_1F5D165F0;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  re::DynamicString::setCapacity(this + 34, 0);
  *(this + 76) = 0;
  *(this + 308) = 0;
  *(this + 41) = 0;
  return this;
}

void re::GuidedFilterOcclusionManager::generatePerFrameGuidedFilterOcclusionData(re::GuidedFilterOcclusionManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F5CF56C8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = (a2 + 16);
  *(a2 + 24) = 0;
  v5 = *this;
  if (*this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v4, this);
      NS::SharedPtr<MTL::Buffer>::operator=((a2 + 24), this + 1);
      v6 = *(this + 2);
      *(a2 + 48) = *(this + 1);
      *(a2 + 64) = v6;
      v7 = *(this + 3);
      v8 = *(this + 4);
      *(a2 + 80) = v7;
      *(a2 + 96) = v8;
      LODWORD(v7) = *(this + 54);
      *(a2 + 184) = *(this + 144);
      v9 = exp2(v7);
      *v10.i64 = simd_quaternion(*(this + 240));
      v43 = v10;
      *v11.i64 = simd_quaternion(*(this + 80));
      v12 = vmulq_f32(v43, xmmword_1E3100CF0);
      v13 = vnegq_f32(v11);
      v14 = vtrn2q_s32(v11, vtrn1q_s32(v11, v13));
      v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v13, 8uLL), *v12.f32, 1), vextq_s8(v14, v14, 8uLL), v12.f32[0]);
      v16 = vrev64q_s32(v11);
      v16.i32[0] = v13.i32[1];
      v16.i32[3] = v13.i32[2];
      LODWORD(v17) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v12, 3), v16, v12, 2), v15).i32[3];
      if (v17 > 1.0)
      {
        v17 = 1.0;
      }

      v18 = acosf(v17);
      v19 = ((v18 + v18) * 180.0) / 3.14159265;
      if (*(this + 48) >= v19)
      {
        v20 = *(this + 38) + 1;
        v21 = v20 < 2;
      }

      else
      {
        v20 = 0;
        v21 = 1;
      }

      *(this + 38) = v20;
      *(a2 + 185) = v21;
      v22 = *(this + 6);
      *(this + 15) = *(this + 5);
      *(this + 16) = v22;
      v23 = *(this + 8);
      *(this + 17) = *(this + 7);
      *(this + 18) = v23;
      v24 = [*(a2 + 16) width];
      v25 = [*(a2 + 16) height];
      v26 = COERCE_FLOAT(*(this + 28));
      v27 = COERCE_FLOAT(HIDWORD(*(this + 28)));
      if (v26 <= v27)
      {
        v28 = COERCE_FLOAT(HIDWORD(*(this + 28)));
      }

      else
      {
        v28 = COERCE_FLOAT(*(this + 28));
      }

      if (v26 >= v27)
      {
        v26 = COERCE_FLOAT(HIDWORD(*(this + 28)));
      }

      v30 = *(this + 52);
      v29 = *(this + 53);
      v31 = vcvtas_u32_f32((v29 * v26) / v28);
      v32 = v30 * v25 / v24;
      v33 = round((acosf(*(this + 4)) * 180.0) / 3.14159265);
      v34 = v33 == 90.0;
      if (v33 == -90.0)
      {
        v34 = 1;
      }

      v35 = !v34;
      if (v34)
      {
        v36 = v31;
      }

      else
      {
        v36 = v29;
      }

      if (v35)
      {
        v37 = v31;
      }

      else
      {
        v37 = v29;
      }

      v38 = 16 * v9;
      LODWORD(v5) = v36 / v38 * v38;
      v39 = v37 / v38 * v38;
      *(a2 + 160) = v5;
      *(a2 + 164) = v39;
      *(a2 + 176) = v5 / v9;
      *(a2 + 180) = v39 / v9;
      *(a2 + 168) = v30;
      *(a2 + 172) = v32;
      v40 = *(this + 10);
      LODWORD(v40) = HIDWORD(v40);
      HIDWORD(v40) = *(this + 10);
      *(a2 + 152) = *(this + 25);
      v41 = *(this + 23);
      v42 = vrev64_s32(*(this + 176));
      *(a2 + 112) = v40;
      *(a2 + 144) = *(this + 49);
      *(a2 + 128) = v42;
      *(a2 + 136) = v41;
      *(a2 + 148) = *(this + 48);
      LOBYTE(v5) = 1;
    }
  }

  *(a2 + 8) = v5;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

uint64_t re::SceneUnderstandingManager::setDepthFeatheringEnabled(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
  }

  return this;
}

void **re::SceneUnderstandingManager::setGuidedFilterOcclusionCameraFeed(uint64_t a1, void **a2, void **a3)
{
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 16), a2);

  return NS::SharedPtr<MTL::Buffer>::operator=((a1 + 24), a3);
}

double re::SceneUnderstandingManager::SceneUnderstandingManager(re::SceneUnderstandingManager *this)
{
  *this = &unk_1F5D16B28;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 160) = 0;
  *(this + 1) = 0u;
  *(this + 11) = xmmword_1E3109450;
  *(this + 24) = 0x400000007;
  *(this + 25) = 0x3EE147AE3F19999ALL;
  *(this + 26) = 0x93F19999ALL;
  *(this + 27) = 0x3E6147AE3F19999ALL;
  *(this + 28) = 0x20000000200;
  *(this + 58) = 1;
  *(this + 30) = 0;
  *(this + 16) = xmmword_1E3047670;
  *(this + 17) = xmmword_1E3047680;
  result = 0.0;
  *(this + 18) = xmmword_1E30476A0;
  *(this + 19) = xmmword_1E30474D0;
  *(this + 40) = 0;
  return result;
}

void re::SceneUnderstandingManager::~SceneUnderstandingManager(re::SceneUnderstandingManager *this)
{
  *this = &unk_1F5D16B28;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }
}

{
  re::SceneUnderstandingManager::~SceneUnderstandingManager(this);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_SceneUnderstandingService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_551, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_551))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C2BD8, "SceneUnderstandingService");
    __cxa_guard_release(&_MergedGlobals_551);
  }

  return &unk_1EE1C2BD8;
}

void re::initInfo_SceneUnderstandingService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x751DCB99112AFALL;
  v6[1] = "SceneUnderstandingService";
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
  *(this + 8) = &re::initInfo_SceneUnderstandingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::TypeRegistry *re::createTypeRegistry(uint64_t a1, re::Allocator *a2)
{
  v2 = a2;
  v83 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 864, 8);
  *(&v77 + 1) = 0xFFFFFFFFLL;
  *&v78 = 0;
  *(&v78 + 1) = 0xFFFFFFFFLL;
  *&v79 = 0;
  *(&v79 + 1) = 0xFFFFFFFFLL;
  *&v80 = 0;
  *(&v80 + 1) = 0xFFFFFFFFLL;
  *&v81 = 0;
  *(&v81 + 1) = 0xFFFFFFFFLL;
  v75[0] = v2;
  v75[1] = a1;
  v76 = re::TypeRegistry::TypeRegistry(v4, v2);
  *&v77 = 0;
  *&v60[0] = 6059476;
  *(&v60[0] + 1) = "BOOL";
  re::TypeBuilderHelper::registerBasic<BOOL>(v76, v60, &v74);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 6104748;
  *(&v60[0] + 1) = "char";
  re::TypeBuilderHelper::registerBasic<BOOL>(v4, v60, &v73);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 0x161EEF7A2;
  *(&v60[0] + 1) = "double";
  re::TypeBuilderHelper::registerBasic<double>(v4, v60, &v72);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 195052728;
  *(&v60[0] + 1) = "float";
  re::TypeBuilderHelper::registerBasic<float>(v4, v60, &v71);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 218827000;
  *(&v60[0] + 1) = "short";
  re::TypeBuilderHelper::registerBasic<short>(v4, v60, &v70);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 208862;
  *(&v60[0] + 1) = "int";
  re::TypeBuilderHelper::registerBasic<int>(v4, v60, &v69);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 6655224;
  *(&v60[0] + 1) = "long";
  re::TypeBuilderHelper::registerBasic<long>(v4, v60, &v68);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 0x1947BDF6CLL;
  *(&v60[0] + 1) = "size_t";
  re::TypeBuilderHelper::registerBasic<long>(v4, v60, &v67);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *&v60[0] = 0x2CE93EC744;
  *(&v60[0] + 1) = "int64_t";
  re::TypeBuilderHelper::registerBasic<long>(v4, v60, &v66);
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  v61 = 0x31CD534126;
  v62 = "uint8_t";
  re::TypeBuilderHelper::registerBasic<BOOL>(v4, &v61, v60);
  v78 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 0x607DD0D4E68;
  v62 = "uint16_t";
  re::TypeBuilderHelper::registerBasic<short>(v4, &v61, v60);
  v79 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 0x607DD0F01DCLL;
  v62 = "uint32_t";
  re::TypeBuilderHelper::registerBasic<int>(v4, &v61, v60);
  v80 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 0x607DD11CB1ALL;
  v62 = "uint64_t";
  re::TypeBuilderHelper::registerBasic<long>(v4, &v61, v60);
  v81 = v60[0];
  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 218827000;
  v62 = "short";
  __s[0] = 0x2CE93A4A92;
  __s[1] = "int16_t";
  re::TypeRegistry::typeID(v4, &v61, v60);
  re::TypeRegistry::declareTypeAlias(v4, v60, __s);
  if (__s[0])
  {
    if (__s[0])
    {
    }
  }

  if (v61)
  {
    if (v61)
    {
    }
  }

  v61 = 208862;
  v62 = "int";
  __s[0] = 0x2CE93BFE06;
  __s[1] = "int32_t";
  re::TypeRegistry::typeID(v4, &v61, v60);
  re::TypeRegistry::declareTypeAlias(v4, v60, __s);
  if (__s[0])
  {
    if (__s[0])
    {
    }
  }

  if (v61)
  {
    if (v61)
    {
    }
  }

  re::TypeBuilderHelper::registerCString(v4, &v65);
  re::TypeBuilderHelper::registerDynamicString(v4, &v64);
  re::TypeBuilderHelper::registerStringID(v4, &v63);
  re::StackScratchAllocator::StackScratchAllocator(&v61);
  re::TypeBuilder::TypeBuilder(v60, &v61);
  __s[0] = 0x258C98EAAF29A10ALL;
  __s[1] = "CallbackSerializerAttribute";
  v59[0] = 0;
  v59[1] = 0xFFFFFFFFLL;
  v20 = re::TypeBuilder::beginObjectType(v60, __s, 1, 1, 8uLL, 8uLL, v59);
  if (__s[0])
  {
    if (__s[0])
    {
    }
  }

  re::TypeBuilder::commitTo(v60, v4, __s);
  v77 = *__s;
  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = 0;
    v24 = *(a1 + 16);
    while (1)
    {
      v25 = *v24;
      v24 += 14;
      if (v25 < 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        LODWORD(v23) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  v26 = *(a1 + 32);
  if (v23 == v22)
  {
LABEL_71:
    if (v26)
    {
      v29 = 0;
      v30 = *(a1 + 16);
      while (1)
      {
        v31 = *v30;
        v30 += 14;
        if (v31 < 0)
        {
          break;
        }

        if (v26 == ++v29)
        {
          LODWORD(v29) = v26;
          break;
        }
      }
    }

    else
    {
      LODWORD(v29) = 0;
    }

    if (v29 != v26)
    {
      v32 = v26;
      v52 = v2;
      while (1)
      {
        v33 = *(*(a1 + 16) + 56 * v29 + 40);
        if (*(v33 + 16) == 8)
        {
          v34 = *(v33 + 56);
          if (v34)
          {
            break;
          }
        }

LABEL_102:
        if (v32 <= v29 + 1)
        {
          v47 = v29 + 1;
        }

        else
        {
          v47 = v32;
        }

        while (v47 - 1 != v29)
        {
          LODWORD(v29) = v29 + 1;
          if ((*(*(a1 + 16) + 56 * v29) & 0x80000000) != 0)
          {
            goto LABEL_109;
          }
        }

        LODWORD(v29) = v47;
LABEL_109:
        if (v29 == v26)
        {
          goto LABEL_115;
        }
      }

      v51 = *(a1 + 16);
      v35 = *(v33 + 64);
      v53 = v35 + 8 * v34;
      while (1)
      {
        if (**v35 == 2)
        {
          v36 = *(*v35 + 8);
          if (v36)
          {
            v37 = *v36;
            if (*v36)
            {
              break;
            }
          }
        }

LABEL_100:
        v35 += 8;
        if (v35 == v53)
        {
          v32 = *(a1 + 32);
          goto LABEL_102;
        }
      }

      v38 = *(v36 + 1);
      v39 = v38 + 40 * v37;
      v40 = v38 + 8;
      while (1)
      {
        v41 = v40 - 8;
        __s[0] = *(v40 - 8);
        v56 = 0;
        v42 = *(v40 + 8);
        if (v42)
        {
          if (*(v42 + 8))
          {
            v43 = *(v42 + 16);
          }

          else
          {
            v43 = (v42 + 9);
          }

          v44 = re::SerializedReference<re::IntrospectionBase const*>::setString(&__s[1], v43, *v42);
        }

        else
        {
          v44 = re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
          __s[1] = *v40;
        }

        v45 = *(v40 + 16);
        v58 = *(v40 + 24);
        v57 = v45;
        {
          v48 = *re::foundationSerializationLogObjects(v44);
          v2 = v52;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            if (*(v51 + 56 * v29 + 16))
            {
              v50 = *(v51 + 56 * v29 + 24);
            }

            else
            {
              v50 = v51 + 56 * v29 + 17;
            }

            *buf = 136315138;
            *&buf[4] = v50;
            _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "Invalid polymorphic table in type %s", buf, 0xCu);
          }

          re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
          goto LABEL_113;
        }

        if (!*buf)
        {
          break;
        }

        re::TypeRegistry::makeStringID(v4, __s[0], &v54);
        re::TypeRegistry::overridePolymorphicObjectName(v4, buf, &v54);
        if (*&v54.var0)
        {
          if (*&v54.var0)
          {
          }
        }

        re::TypeRegistry::overrideCustomClassID(v4, buf, v57);
        re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
        v40 += 40;
        if (v41 + 40 == v39)
        {
          goto LABEL_100;
        }
      }

      re::SerializedReference<re::IntrospectionBase const*>::reset(&__s[1]);
      v2 = v52;
      if (v4)
      {
        goto LABEL_114;
      }
    }
  }

  else
  {
    while (1)
    {
      v27 = *(a1 + 16) + 56 * v23;
      if (!__s[0])
      {
        break;
      }

      v26 = *(a1 + 32);
      if (v26 <= v23 + 1)
      {
        v28 = v23 + 1;
      }

      else
      {
        v28 = *(a1 + 32);
      }

      while (v28 - 1 != v23)
      {
        LODWORD(v23) = v23 + 1;
        if ((*(*(a1 + 16) + 56 * v23) & 0x80000000) != 0)
        {
          goto LABEL_70;
        }
      }

      LODWORD(v23) = v28;
LABEL_70:
      if (v23 == v22)
      {
        goto LABEL_71;
      }
    }

LABEL_113:
    if (v4)
    {
LABEL_114:
      re::TypeRegistry::~TypeRegistry(v4);
      (*(*v2 + 40))(v2, v4);
      v4 = 0;
    }
  }

LABEL_115:
  re::TypeBuilder::~TypeBuilder(v60, v21);
  re::StackScratchAllocator::~StackScratchAllocator(&v61);
  return v4;
}

void anonymous namespace::getTypeID(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v110 = *MEMORY[0x1E69E9840];
  v8 = a4[2];
  v9 = *(a2 + 16);
  v10 = a2 + 9;
  if ((*(a2 + 8) & 1) == 0)
  {
    v9 = (a2 + 9);
  }

  if (v9)
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = v9[1];
      if (v12)
      {
        v13 = (v9 + 2);
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

  *&buf[8] = v9;
  *buf = 2 * v11;
  v15 = re::TypeRegistry::typeID(v8, buf, &v88);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  if (v88)
  {
    *a1 = v88;
    return;
  }

  if (!a3)
  {
    v18 = a4[1];
    v19 = re::Hash<re::DynamicString>::operator()(buf, a2);
    v20 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v18, a2, v19, buf);
    if (*&buf[12] == 0x7FFFFFFF || (a3 = *(*(v18 + 16) + 56 * *&buf[12] + 40)) == 0)
    {
      v21 = *re::foundationSerializationLogObjects(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 8))
        {
          v71 = *(a2 + 16);
        }

        else
        {
          v71 = v10;
        }

        *buf = 136315138;
        *&buf[4] = v71;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Invalid introspection info. Type name: %s", buf, 0xCu);
      }

      *a1 = 0;
      *(a1 + 8) = 0xFFFFFFFFLL;
      return;
    }
  }

  v16 = *(a3 + 16);
  if (v16 > 0xD)
  {
    v17 = 0;
  }

  else
  {
    v17 = byte_1E31094C0[v16];
  }

  re::StringID::StringID(&v86, a2);
  if (*(a3 + 16) == 8)
  {
    StructureVersion = re::introspectionFindStructureVersion(a3, v22);
  }

  else
  {
    StructureVersion = 1;
  }

  re::TypeRegistry::declareType(&v86, a4[2], v17, StructureVersion, 0, buf);
  v88 = *buf;
  v85 = *buf;
  v24 = a4[2];
  v26 = *(a3 + 20);
  v25 = *(a3 + 24);
  re::StackScratchAllocator::StackScratchAllocator(v107);
  re::TypeBuilder::TypeBuilder(buf, v107);
  v28 = 0;
  v29 = *(a3 + 16);
  if (v29 <= 6)
  {
    if (v29 <= 2)
    {
      if (v29 == 1)
      {
        {
          goto LABEL_124;
        }

        v28 = *&v100[0] != 0;
        if (!*&v100[0])
        {
          goto LABEL_184;
        }

        v101 = v100[0];
        re::TypeBuilder::beginPointerType(buf, &v86, 1, v26, v25, &v101, 1);
      }

      else
      {
        if (v29 != 2)
        {
          goto LABEL_184;
        }

        {
          goto LABEL_124;
        }

        v28 = *&v100[0] != 0;
        if (!*&v100[0])
        {
          goto LABEL_184;
        }

        v101 = v100[0];
        re::TypeBuilder::beginArrayType(buf, &v86, &v101, *(a3 + 64));
      }

LABEL_127:
      v99 = v85;
      v50 = &v99;
      goto LABEL_183;
    }

    if (v29 != 3 && v29 != 4 && v29 != 5)
    {
      goto LABEL_184;
    }

    {
      v28 = *&v100[0] != 0;
      if (!*&v100[0])
      {
        goto LABEL_184;
      }

      v101 = v100[0];
      re::TypeBuilder::beginListType(buf, &v86, 1, v26, v25, &v101);
      goto LABEL_126;
    }

LABEL_124:
    v28 = 0;
    goto LABEL_184;
  }

  if (v29 > 8)
  {
    switch(v29)
    {
      case 9:
        if (*(a3 + 64))
        {
          v51 = *(a3 + 20) - 1;
          if (v51 <= 7 && ((0x8Bu >> v51) & 1) != 0)
          {
            v52 = (a4 + qword_1E31094D0[v51]);
            if (*v52)
            {
              v100[0] = *v52;
              v53 = re::TypeBuilder::beginEnumType(buf, &v86, 1, -2, v100);
              v54 = *(a3 + 64);
              v55 = *(v54 + 1);
              v56 = *v54;
              v57 = 8 * v56;
              v84 = v56;
              if (v56)
              {
                v58 = 8 * v56;
                v59 = v55;
                do
                {
                  v60 = *v59;
                  if (**v59 == 1)
                  {
                    v61 = *(v60 + 1);
                    v62 = *(v60 + 2);
                    *&v101.var0 = 0;
                    v101.var1 = &str_67;
                    re::TypeBuilder::addEnumConstant(buf, v61, &v101);
                    if (*&v101.var0)
                    {
                      if (*&v101.var0)
                      {
                      }
                    }
                  }

                  ++v59;
                  v58 -= 8;
                }

                while (v58);
              }

              if (v86 >> 1 == 0x4848FE09E6F816FDLL)
              {
                if (__s1 == "RERotationOrder" || (v53 = strcmp(__s1, "RERotationOrder"), !v53))
                {
                  *&v101.var0 = 174834;
                  v101.var1 = "XYZ";
                  re::TypeBuilder::addEnumConstant(buf, 0, &v101);
                  re::StringID::destroyString(&v101);
                  *&v101.var0 = 176814;
                  v101.var1 = "YZX";
                  re::TypeBuilder::addEnumConstant(buf, 1, &v101);
                  re::StringID::destroyString(&v101);
                  *&v101.var0 = 178614;
                  v101.var1 = "ZXY";
                  re::TypeBuilder::addEnumConstant(buf, 2, &v101);
                  re::StringID::destroyString(&v101);
                  *&v101.var0 = 174894;
                  v101.var1 = "XZY";
                  re::TypeBuilder::addEnumConstant(buf, 3, &v101);
                  re::StringID::destroyString(&v101);
                  *&v101.var0 = 176694;
                  v101.var1 = "YXZ";
                  re::TypeBuilder::addEnumConstant(buf, 4, &v101);
                  re::StringID::destroyString(&v101);
                  *&v101.var0 = 178674;
                  v101.var1 = "ZYX";
                  re::TypeBuilder::addEnumConstant(buf, 5, &v101);
                  re::StringID::destroyString(&v101);
                  *&v101.var0 = 130597342;
                  v101.var1 = "Count";
                  re::TypeBuilder::addEnumConstant(buf, 6, &v101);
                  re::StringID::destroyString(&v101);
                  *&v101.var0 = 0x1FB01113AELL;
                  v101.var1 = "Invalid";
                  re::TypeBuilder::addEnumConstant(buf, 7, &v101);
                  re::StringID::destroyString(&v101);
                }
              }

              if (v84)
              {
                do
                {
                  v63 = *v55;
                  if (**v55 == 2)
                  {
                    v64 = *(v63 + 1);
                    v65 = *(v63 + 2);
                    *&v101.var0 = 0;
                    v101.var1 = &str_67;
                    re::TypeBuilder::addEnumConstantRenaming(buf, v64, &v101);
                    if (*&v101.var0)
                    {
                      if (*&v101.var0)
                      {
                      }
                    }
                  }

                  ++v55;
                  v57 -= 8;
                }

                while (v57);
              }

              v101 = v85;
              re::TypeBuilder::commitTo(buf, &v101);
              v28 = 1;
              goto LABEL_184;
            }
          }
        }

        break;
      case 11:
        *&v100[0] = 0;
        *(&v100[0] + 1) = 0xFFFFFFFFLL;
        v28 = 1;
        re::TypeBuilder::beginObjectType(buf, &v86, 1, -2, v26, v25, v100);
        v66 = (*(**a4 + 32))(*a4, 8, 8);
        *v66 = 0;
        v101 = *(a4 + 3);
        re::TypeBuilder::addAttribute(buf, &v101, v66, -1, 1);
        re::TypeBuilder::setIsCallbackSerializer(buf, 1);
LABEL_126:
        re::TypeBuilder::setIsIncomplete(buf, 1);
        goto LABEL_127;
      case 13:
        {
          v28 = *&v100[0] != 0;
          if (!*&v100[0])
          {
            goto LABEL_184;
          }

          v101 = v100[0];
          re::TypeBuilder::beginOptionalType(buf, &v86, v26, v25, &v101);
          goto LABEL_126;
        }

        break;
      default:
        goto LABEL_184;
    }

    goto LABEL_124;
  }

  if (v29 == 7)
  {
    {
      if (*&v100[0])
      {
        v28 = *&v101.var0 != 0;
        if (*&v101.var0)
        {
          v99 = v100[0];
          v95 = v101;
          re::TypeBuilder::beginDictionaryType(buf, &v86, 1, v26, v25, &v99, &v95);
          re::TypeBuilder::setIsIncomplete(buf, 1);
          v106 = v85;
          v50 = &v106;
          goto LABEL_183;
        }

        goto LABEL_184;
      }
    }

    goto LABEL_124;
  }

  *&v106.var0 = 0;
  v106.var1 = 0xFFFFFFFFLL;
  TypeID = re::TypeBuilder::beginObjectType(buf, &v86, 1, -2, v26, v25, &v106);
  v31 = *(a3 + 64);
  v32 = *(a3 + 56);
  v33 = 8 * v32;
  v83 = *(a3 + 56);
  if (!v32)
  {
    v49 = 0;
LABEL_129:
    v67 = v86;
    v68 = v86 >> 1;
    if (v86 >> 1 > 0x30E420B6B6B86DA7)
    {
      switch(v68)
      {
        case 0x30E420B6B6B86DA8uLL:
          v69 = __s1;
          if (__s1 == "AnchorComponent")
          {
            goto LABEL_160;
          }

          v70 = "AnchorComponent";
          break;
        case 0x61364BE27E2A4A64uLL:
          v69 = __s1;
          if (__s1 == "BodyTrackingComponent")
          {
            goto LABEL_160;
          }

          v70 = "BodyTrackingComponent";
          break;
        case 0x6AED206A3BA9D6E9uLL:
          v69 = __s1;
          if (__s1 == "ClusterShadowMarkerComponent")
          {
            goto LABEL_160;
          }

          v70 = "ClusterShadowMarkerComponent";
          break;
        default:
          goto LABEL_153;
      }
    }

    else
    {
      switch(v68)
      {
        case 0x10DD8B3803C67A90uLL:
          v69 = __s1;
          if (__s1 == "AnchoringComponent")
          {
            goto LABEL_160;
          }

          v70 = "AnchoringComponent";
          break;
        case 0x1F68485107138B4BuLL:
          v69 = __s1;
          if (__s1 == "SimpleComponent")
          {
            goto LABEL_160;
          }

          v70 = "SimpleComponent";
          break;
        case 0x2E6717DB96117F50uLL:
          v69 = __s1;
          if (__s1 == "PhysicsOriginComponent")
          {
            goto LABEL_160;
          }

          v70 = "PhysicsOriginComponent";
          break;
        default:
LABEL_153:
          if ((v49 & 1) == 0 || (TypeID = strlen(__s1), TypeID < 0xF) || (*__s1 == 0x6F436D6F74737543 ? (v72 = *(__s1 + 7) == 0x746E656E6F706D6FLL) : (v72 = 0), !v72))
          {
LABEL_161:
            if (v67 >> 1 == 0x29AC414532D4AF9DLL)
            {
              if (__s1 == "RenderGraphFillBufferNode" || (TypeID = strcmp(__s1, "RenderGraphFillBufferNode"), !TypeID))
              {
                *&v99.var0 = 0xA3C1F00635C716B4;
                v99.var1 = "RenderGraphNode";
                re::TypeRegistry::typeID(v24, &v99, &v101);
                re::TypeBuilder::setObjectSuperClass(buf, &v101);
                re::StringID::destroyString(&v99);
                v67 = v86;
              }
            }

            if (v67 >> 1 == 0x7FEDDCE41DFF568DLL)
            {
              v73 = __s1;
              if (__s1 != "RenderGraphSpecifyTargetOperation")
              {
                v74 = "RenderGraphSpecifyTargetOperation";
LABEL_171:
                TypeID = strcmp(v73, v74);
                if (TypeID)
                {
                  goto LABEL_173;
                }
              }
            }

            else
            {
              if (v67 >> 1 != 0x775B4322064CEE52)
              {
                goto LABEL_173;
              }

              v73 = __s1;
              if (__s1 != "RenderGraphSpecifyLaneOperation")
              {
                v74 = "RenderGraphSpecifyLaneOperation";
                goto LABEL_171;
              }
            }

            *&v95.var0 = 0x3AAEC69498BCCC9ELL;
            v95.var1 = "RenderGraphSpecifyOperationBase";
            re::TypeRegistry::typeID(v24, &v95, &v99);
            re::TypeBuilder::setObjectSuperClass(buf, &v99);
            re::StringID::destroyString(&v95);
            goto LABEL_173;
          }

LABEL_160:
          *&v101.var0 = 0x6DAE480279BALL;
          v101.var1 = "Component";
          re::TypeRegistry::typeID(v24, &v101, v100);
          re::TypeBuilder::setObjectSuperClass(buf, v100);
          re::StringID::destroyString(&v101);
          v67 = v86;
          goto LABEL_161;
      }
    }

    TypeID = strcmp(v69, v70);
    if (!TypeID)
    {
      goto LABEL_160;
    }

    goto LABEL_153;
  }

  v82 = 0;
  v34 = 8 * v32;
  v35 = v31;
  do
  {
    v36 = *v35;
    v37 = **v35;
    if (v37 > 3)
    {
      if (v37 == 4)
      {
        if (v36[1] == 1)
        {
          TypeID = re::TypeBuilder::setHideObjectWithOneMember(buf, 1);
        }
      }

      else if (v37 == 6)
      {
        v38 = *(v36 + 1);
        if (v38 > v109)
        {
          TypeID = re::TypeBuilder::setVersion(buf, v38);
        }
      }
    }

    else if (v37 == 1)
    {
      {
        goto LABEL_199;
      }

      if (!v105)
      {
        goto LABEL_199;
      }

      v39 = v36[10];
      if (v39 <= 1)
      {
        if (!v39)
        {
          v103 = v105;
          re::StringID::StringID(v100, *(v36 + 1));
          re::TypeBuilder::addObjectMember(buf, 0xFFFFFFFFLL, &v103, v100, v36[9]);
          re::StringID::destroyString(v100);
          v44 = *(v36 + 1);
          TypeID = strlen(v44);
          if (TypeID == 6)
          {
            v46 = *v44 == 1701470831 && *(v44 + 4) == 29795;
            BYTE4(v82) |= v46;
          }

          goto LABEL_91;
        }

        if (v39 != 1)
        {
          goto LABEL_91;
        }

        re::TypeRegistry::typeInfo(v24, &v105, &v101);
        if (v101.var0 != 1 || v102 != 9)
        {
          goto LABEL_199;
        }

        re::TypeBuilder::TypeBuilder(v100, v107);
        re::DynamicString::format("%s::%s", &v99, __s1, *(v36 + 1));
        re::StringID::StringID(v98, &v99);
        re::TypeInfo::referencedType(&v101.var1, &v95);
        v40 = *v96;
        v97[0] = *&v95.var0;
        v97[1] = v40;
        v94 = *(a4 + 11);
        re::TypeBuilder::beginArrayType(v100, v98, v97, &v94, 0);
        re::StringID::destroyString(v98);
        re::TypeBuilder::commitTo(v100, v24, &v95);
        if (!*&v95.var0)
        {
          goto LABEL_195;
        }

        v93 = v95;
        re::StringID::StringID(v98, *(v36 + 1));
        v42 = v36[9];
        v43 = &v93;
LABEL_87:
        re::TypeBuilder::addObjectMember(buf, 0xFFFFFFFFLL, v43, v98, v42);
        re::StringID::destroyString(v98);
        if (*&v99.var0 && (v99.var1 & 1) != 0)
        {
          (*(**&v99.var0 + 40))();
        }

        re::TypeBuilder::~TypeBuilder(v100, v48);
        goto LABEL_91;
      }

      if (v39 == 2)
      {
        re::TypeRegistry::typeInfo(v24, &v105, &v101);
        if (v101.var0 != 1 || v102 != 9)
        {
          goto LABEL_199;
        }

        re::TypeBuilder::TypeBuilder(v100, v107);
        re::DynamicString::format("%s::%s", &v99, __s1, *(v36 + 1));
        re::StringID::StringID(v98, &v99);
        re::TypeInfo::referencedType(&v101.var1, &v95);
        v47 = *v96;
        v92[0] = *&v95.var0;
        v92[1] = v47;
        re::TypeBuilder::beginPointerType(v100, v98, 1, 8uLL, 8uLL, v92, 1);
        re::StringID::destroyString(v98);
        v91 = *(a4 + 11);
        re::TypeBuilder::addCustomClassIDForPointer(v100, &v91, 8);
        re::TypeBuilder::commitTo(v100, v24, &v95);
        if (!*&v95.var0)
        {
LABEL_195:
          if (*&v99.var0 && (v99.var1 & 1) != 0)
          {
            (*(**&v99.var0 + 40))();
          }

          re::TypeBuilder::~TypeBuilder(v100, v41);
LABEL_199:
          v28 = 0;
          goto LABEL_184;
        }

        v90 = v95;
        re::StringID::StringID(v98, *(v36 + 1));
        v42 = v36[9];
        v43 = &v90;
        goto LABEL_87;
      }

      if (v39 == 3)
      {
        v104 = v105;
        TypeID = re::TypeBuilder::setObjectSuperClass(buf, &v104);
        LOBYTE(v82) = 1;
      }
    }

    else if (v37 == 3)
    {
      {
        goto LABEL_199;
      }

      v89 = v100[0];
      *&v101.var0 = 0xC98E91CCDF0B5FC4;
      v101.var1 = "customClassID";
      re::TypeBuilder::addObjectMemberCustomClassID(buf, &v89, &v101, v36[6]);
      if (*&v101.var0)
      {
        if (*&v101.var0)
        {
        }
      }
    }

LABEL_91:
    ++v35;
    v34 -= 8;
  }

  while (v34);
  v49 = BYTE4(v82);
  if ((v82 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_173:
  if (v83)
  {
    do
    {
      v75 = *v31;
      if (**v31 == 5)
      {
        v76 = *(v75 + 2);
        *&v95.var0 = 0;
        v95.var1 = &str_67;
        v77 = *(v75 + 1);
        *&v105 = 0;
        *(&v105 + 1) = &str_67;
        re::TypeBuilder::addObjectMemberRenaming(buf, &v95, &v105);
        if (v105)
        {
          if (v105)
          {
          }
        }

        if (*&v95.var0)
        {
          if (*&v95.var0)
          {
          }
        }
      }

      ++v31;
      v33 -= 8;
    }

    while (v33);
  }

  v28 = 1;
  re::TypeBuilder::setIsIncomplete(buf, 1);
  v95 = v85;
  v50 = &v95;
LABEL_183:
  re::TypeBuilder::commitTo(buf, v50);
LABEL_184:
  re::TypeBuilder::~TypeBuilder(buf, v27);
  re::StackScratchAllocator::~StackScratchAllocator(v107);
  if (v28)
  {
    *a1 = v88;
  }

  else
  {
    v80 = *re::foundationSerializationLogObjects(v79);
    v79 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
    if (v79)
    {
      if (*(a2 + 8))
      {
        v81 = *(a2 + 16);
      }

      else
      {
        v81 = v10;
      }

      *buf = 136315138;
      *&buf[4] = v81;
      _os_log_error_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_ERROR, "Failed to create type info for type %s.", buf, 0xCu);
    }

    *a1 = 0;
    *(a1 + 8) = 0xFFFFFFFFLL;
  }

  if (v86)
  {
    if (v86)
    {
    }
  }
}

BOOL anonymous namespace::checkPointer(uint64_t a1)
{
  if (!a1)
  {
    v2 = *re::foundationSerializationLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Error converting PersistedSchema to TypeRegistry. Pointers are already hooked up.", v4, 2u);
    }
  }

  return a1 != 0;
}

uint64_t re::PersistedSchema::addIntrospectionGraph(re::PersistedSchema *this, const re::IntrospectionBase *a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13 = a2;
  re::getPrettyTypeName(a2, &v11);
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(this, &v11, &v13);
  v10 = 0;
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  v9 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v7, &v13);
  v14[0] = &unk_1F5D16BE0;
  v14[1] = this;
  v14[2] = v7;
  v14[3] = v14;
  {
    re::introspect<re::IntrospectionBase const*>(BOOL)::info = re::IntrospectionInfo<re::IntrospectionBase const*>::get(0);
  }

  v3 = v8;
  if (v8)
  {
    v4 = re::introspect<re::IntrospectionBase const*>(BOOL)::info;
    do
    {
      v6 = *(v10 + 8 * v3 - 8);
      v8 = v3 - 1;
      ++v9;
      re::IntrospectionWalker::walk(v4, &v6, v14);
      v3 = v8;
    }

    while (v8);
  }

  std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v14);
  if (v7[0] && v10)
  {
    (*(*v7[0] + 40))();
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

uint64_t re::PersistedSchema::introspectionInfo(re::PersistedSchema *this, char *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  *v25 = a2;
  v4 = re::Hash<re::DynamicString>::operator()(&v26, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(this, v25, v4, &v26);
  if (HIDWORD(v26) != 0x7FFFFFFF)
  {
    return *(*(this + 2) + 56 * HIDWORD(v26) + 40);
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  {
    re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v10);
  }

  *&v26 = re::introspect<BOOL>(BOOL)::info;
  {
    re::introspect<char>(BOOL)::info = re::introspect_char(0, v11);
  }

  *(&v26 + 1) = re::introspect<char>(BOOL)::info;
  {
    re::introspect<double>(BOOL)::info = re::introspect_double(0, v12);
  }

  *&v27 = re::introspect<double>(BOOL)::info;
  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v13);
  }

  *(&v27 + 1) = re::introspect<float>(BOOL)::info;
  {
    re::introspect<short>(BOOL)::info = re::introspect_short(0, v14);
  }

  *&v28 = re::introspect<short>(BOOL)::info;
  {
    re::introspect<int>(BOOL)::info = re::introspect_int(0, v15);
  }

  *(&v28 + 1) = re::introspect<int>(BOOL)::info;
  {
    re::introspect<long>(BOOL)::info = re::introspect_long(0, v16);
  }

  *&v29 = re::introspect<long>(BOOL)::info;
  {
    re::introspect<unsigned long>(BOOL)::info = re::introspect_size_t(0, v17);
  }

  *(&v29 + 1) = re::introspect<unsigned long>(BOOL)::info;
  {
    re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v18);
  }

  *&v30 = re::introspect<long long>(BOOL)::info;
  {
    re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v19);
  }

  *(&v30 + 1) = re::introspect<unsigned char>(BOOL)::info;
  {
    re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(0, v20);
  }

  *&v31 = re::introspect<unsigned short>(BOOL)::info;
  {
    re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v21);
  }

  *(&v31 + 1) = re::introspect<unsigned int>(BOOL)::info;
  {
    re::introspect<unsigned long long>(BOOL)::info = re::introspect_uint64_t(0, v22);
  }

  v5 = 0;
  v32 = re::introspect<unsigned long long>(BOOL)::info;
  while (1)
  {
    v6 = *(&v26 + v5);
    if (!strcmp(a2, *(v6 + 48)))
    {
      break;
    }

    v5 += 8;
    if (v5 == 104)
    {
      if (!strcmp(a2, "DynamicString"))
      {
        {
          re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v23);
        }

        return re::introspect<re::DynamicString>(BOOL)::info;
      }

      else
      {
        v7 = strcmp(a2, "StringID");
        if (v7)
        {
          v8 = *re::foundationSerializationLogObjects(v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 136315138;
            *&v25[4] = a2;
            _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Unknown type name in PersistedSchema '%s'", v25, 0xCu);
          }

          return 0;
        }

        else
        {
          {
            re::introspect<re::StringID>(BOOL)::info = re::IntrospectionInfo<re::StringID>::get(0, v24);
          }

          return re::introspect<re::StringID>(BOOL)::info;
        }
      }
    }
  }

  return v6;
}

__n128 anonymous namespace::serializePersistedSchemaInternal@<Q0>(_anonymous_namespace_ *a1@<X0>, int a2@<W1>, _anonymous_namespace_ *a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }

    if ((v13 & 1) == 0)
    {
      v12 = "Failed to serialized schema in binary format.";
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (a2 != 1)
  {
    v12 = "Invalid format argument.";
    goto LABEL_11;
  }

  {
    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }
  }

  v16 = *(re::introspect<re::PersistedSchema>(BOOL)::info + 2);
  if (v10)
  {
LABEL_8:
    *a4 = 1;
    return result;
  }

  v12 = "Failed to serialized schema as JSON.";
LABEL_11:
  result = v16;
  v14 = v17;
  v15 = v18;
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  return result;
}

__n128 anonymous namespace::deserializePersistedSchemaInternal@<Q0>(_anonymous_namespace_ *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = (*(*a4 + 32))(a4, 48, 8);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v10, a4, 3);
  if (!a2)
  {
    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }

    if (v16)
    {
      goto LABEL_14;
    }

    v19 = "Failed to deserialize schema from binary format.";
LABEL_21:
    result = v25;
    v20 = v26;
    v21 = v27;
    *a5 = 0;
    *(a5 + 8) = result;
    *(a5 + 24) = v20;
    *(a5 + 32) = v21;
    return result;
  }

  if (a2 != 1)
  {
    v19 = "Invalid format argument.";
    goto LABEL_21;
  }

  {
    re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
  }

  v22 = *(re::introspect<re::PersistedSchema>(BOOL)::info + 2);
  if (v25.n128_u8[0])
  {
LABEL_14:
    if (!a3)
    {
      goto LABEL_17;
    }

    {
      re::introspect<re::PersistedSchema>(BOOL)::info = re::internal::getOrCreateInfo("PersistedSchema", re::allocInfo_PersistedSchema, re::initInfo_PersistedSchema, &re::internal::introspectionInfoStorage<re::PersistedSchema>, 0);
    }

    v22.n128_u8[0] = 1;
    v25.n128_u64[0] = &unk_1F5D16C28;
    v25.n128_u64[1] = v10;
    v26 = &v22;
    v27 = &v25;
    re::IntrospectionWalker::walk(re::introspect<re::PersistedSchema>(BOOL)::info, v10, &v25);
    v17 = v22.n128_u8[0];
    v18 = std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](&v25);
    if (v17)
    {
LABEL_17:
      *a5 = 1;
      *(a5 + 8) = v10;
      return result;
    }

    v19 = "Failed to hook up schema.";
    goto LABEL_21;
  }

  if (v28)
  {
    v13 = *&v29[7];
  }

  else
  {
    v13 = v29;
  }

  re::DynamicString::format("Failed to deserialize schema from JSON. Details: %s", &v22, v13);
  result = v22;
  v14 = v23;
  v15 = v24;
  *a5 = 0;
  *(a5 + 8) = result;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  if (v25.n128_u8[0] & 1) == 0 && v27 && (v28)
  {
    (*(v27->n128_u64[0] + 40))();
  }

  return result;
}

void re::introspect_IntrospectionBasePointer(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2C78))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C3618, "IntrospectionBasePointer", 16, 8, 0, 0);
    qword_1EE1C3618 = &unk_1F5D0C698;
    qword_1EE1C3658 = re::internal::defaultConstruct<re::SerializedReference<re::IntrospectionBase const*>>;
    qword_1EE1C3680 = 0;
    qword_1EE1C3678 = 0;
    dword_1EE1C3628 = 11;
    __cxa_guard_release(&qword_1EE1C2C78);
  }

  if ((_MergedGlobals_552 & 1) == 0)
  {
    _MergedGlobals_552 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C3618, a2);
    v3[0] = 0x2DF81B3A31597722;
    v3[1] = "IntrospectionBasePointer";
    xmmword_1EE1C3638 = v4;
    if (v3[0])
    {
      if (v3[0])
      {
      }
    }
  }
}

uint64_t anonymous namespace::introspectionBaseSerialize(int a1, int a2, re **a3, re::DynamicString *this)
{
  if (*a3)
  {
    re::getPrettyTypeName(*a3, &v6);
    re::DynamicString::operator=(this, &v6);
    if (v6 && (v7 & 1) != 0)
    {
      (*(*v6 + 40))();
    }
  }

  else
  {
    v6 = "";
    v7 = 0;
    re::DynamicString::operator=(this, &v6);
  }

  return 1;
}

void re::introspectionTable_IntrospectionBase(re *this)
{
  if ((byte_1EE1C2C69 & 1) == 0)
  {
    byte_1EE1C2C69 = 1;
    if ((atomic_load_explicit(&qword_1EE1C2C80, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE1C2C80);
      if (v1)
      {
        qword_1ECF19FD0 = "IntrospectionBasic";
        v2 = qword_1EE1C2CB0;
        if (!qword_1EE1C2CB0)
        {
          v2 = re::allocInfo_IntrospectionBasic(v1);
          qword_1EE1C2CB0 = v2;
          re::initInfo_IntrospectionBasic(v2, v3);
        }

        qword_1ECF19FE0 = 0;
        unk_1ECF19FE8 = 0;
        qword_1ECF19FD8 = v2;
        dword_1ECF19FF0 = 0;
        qword_1ECF19FF8 = "IntrospectionPointer";
        v4 = qword_1EE1C2CC8;
        if (!qword_1EE1C2CC8)
        {
          v4 = re::allocInfo_IntrospectionPointer(v1);
          qword_1EE1C2CC8 = v4;
          re::initInfo_IntrospectionPointer(v4, v5);
        }

        qword_1ECF1A000 = v4;
        *algn_1ECF1A008 = 0;
        qword_1ECF1A010 = 1;
        dword_1ECF1A018 = 0;
        qword_1ECF1A020 = "IntrospectionCStyleArray";
        v6 = qword_1EE1C2CE0;
        if (!qword_1EE1C2CE0)
        {
          v6 = re::allocInfo_IntrospectionCStyleArray(v1);
          qword_1EE1C2CE0 = v6;
          re::initInfo_IntrospectionCStyleArray(v6, v7);
        }

        qword_1ECF1A028 = v6;
        unk_1ECF1A030 = 0;
        qword_1ECF1A038 = 2;
        dword_1ECF1A040 = 0;
        qword_1ECF1A048 = "IntrospectionDynamicArrayBase";
        v8 = qword_1EE1C2CF8;
        if (!qword_1EE1C2CF8)
        {
          v8 = re::allocInfo_IntrospectionDynamicArrayBase(v1);
          qword_1EE1C2CF8 = v8;
          re::initInfo_IntrospectionDynamicArrayBase(v8, v9);
        }

        qword_1ECF1A050 = v8;
        *algn_1ECF1A058 = 0;
        qword_1ECF1A060 = 3;
        dword_1ECF1A068 = 0;
        qword_1ECF1A070 = "IntrospectionFixedArrayBase";
        v10 = qword_1EE1C2D10;
        if (!qword_1EE1C2D10)
        {
          v10 = re::allocInfo_IntrospectionFixedArrayBase(v1);
          qword_1EE1C2D10 = v10;
          re::initInfo_IntrospectionFixedArrayBase(v10, v11);
        }

        qword_1ECF1A078 = v10;
        unk_1ECF1A080 = 0;
        qword_1ECF1A088 = 4;
        dword_1ECF1A090 = 0;
        qword_1ECF1A098 = "IntrospectionDataArrayBase";
        v12 = qword_1EE1C2D28;
        if (!qword_1EE1C2D28)
        {
          v12 = re::allocInfo_IntrospectionDataArrayBase(v1);
          qword_1EE1C2D28 = v12;
          re::initInfo_IntrospectionDataArrayBase(v12, v13);
        }

        qword_1ECF1A0A0 = v12;
        *algn_1ECF1A0A8 = 0;
        qword_1ECF1A0B0 = 5;
        dword_1ECF1A0B8 = 0;
        qword_1ECF1A0C0 = "IntrospectionDynamicString";
        v14 = qword_1EE1C2D48;
        if (!qword_1EE1C2D48)
        {
          v14 = re::allocInfo_IntrospectionDynamicString(v1);
          qword_1EE1C2D48 = v14;
          re::initInfo_IntrospectionDynamicString(v14, v15);
        }

        qword_1ECF1A0C8 = v14;
        unk_1ECF1A0D0 = 0;
        qword_1ECF1A0D8 = 6;
        dword_1ECF1A0E0 = 0;
        qword_1ECF1A0E8 = "IntrospectionHashTableBase";
        v16 = qword_1EE1C2D60;
        if (!qword_1EE1C2D60)
        {
          v16 = re::allocInfo_IntrospectionHashTableBase(v1);
          qword_1EE1C2D60 = v16;
          re::initInfo_IntrospectionHashTableBase(v16, v17);
        }

        qword_1ECF1A0F0 = v16;
        *algn_1ECF1A0F8 = 0;
        qword_1ECF1A100 = 7;
        dword_1ECF1A108 = 0;
        qword_1ECF1A110 = "IntrospectionStructure";
        v18 = qword_1EE1C2EA0;
        if (!qword_1EE1C2EA0)
        {
          v18 = re::allocInfo_IntrospectionStructure(v1);
          qword_1EE1C2EA0 = v18;
          re::initInfo_IntrospectionStructure(v18, v19);
        }

        qword_1ECF1A118 = v18;
        unk_1ECF1A120 = 0;
        qword_1ECF1A128 = 8;
        dword_1ECF1A130 = 0;
        qword_1ECF1A138 = "IntrospectionEnum";
        v20 = qword_1EE1C2F38;
        if (!qword_1EE1C2F38)
        {
          v20 = re::allocInfo_IntrospectionEnum(v1);
          qword_1EE1C2F38 = v20;
          re::initInfo_IntrospectionEnum(v20, v21);
        }

        qword_1ECF1A140 = v20;
        *algn_1ECF1A148 = 0;
        qword_1ECF1A150 = 9;
        dword_1ECF1A158 = 0;
        qword_1ECF1A160 = "IntrospectionStringID";
        v22 = qword_1EE1C2F58;
        if (!qword_1EE1C2F58)
        {
          v22 = re::allocInfo_IntrospectionStringID(v1);
          qword_1EE1C2F58 = v22;
          re::initInfo_IntrospectionStringID(v22, v23);
        }

        qword_1ECF1A168 = v22;
        unk_1ECF1A170 = 0;
        qword_1ECF1A178 = 10;
        dword_1ECF1A180 = 0;
        qword_1ECF1A188 = "IntrospectionCallbackSerializer";
        v24 = qword_1EE1C2F78;
        if (!qword_1EE1C2F78)
        {
          v24 = re::allocInfo_IntrospectionCallbackSerializer(v1);
          qword_1EE1C2F78 = v24;
          re::initInfo_IntrospectionCallbackSerializer(v24, v25);
        }

        qword_1ECF1A190 = v24;
        *algn_1ECF1A198 = 0;
        qword_1ECF1A1A0 = 11;
        dword_1ECF1A1A8 = 0;
        qword_1ECF1A1B0 = "IntrospectionOptionalBase";
        v26 = qword_1EE1C2F90;
        if (!qword_1EE1C2F90)
        {
          v26 = re::allocInfo_IntrospectionOptionalBase(v1);
          qword_1EE1C2F90 = v26;
          re::initInfo_IntrospectionOptionalBase(v26, v27);
        }

        qword_1ECF1A1B8 = v26;
        unk_1ECF1A1C0 = 0;
        qword_1ECF1A1C8 = 13;
        dword_1ECF1A1D0 = 0;
        __cxa_guard_release(&qword_1EE1C2C80);
      }
    }

    dword_1EE1C3000 = 13;
    qword_1EE1C3008 = &qword_1ECF19FD0;
  }
}

void *re::allocInfo_IntrospectionBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2C88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3688, "IntrospectionBase");
    __cxa_guard_release(&qword_1EE1C2C88);
  }

  return &unk_1EE1C3688;
}

void re::initInfo_IntrospectionBase(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0xAF6C477EF8EF2A18;
  v16[1] = "IntrospectionBase";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1C2C90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2C90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_IntrospectionType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 32, 8);
      *v8 = 3;
      *(v8 + 8) = &qword_1EE1C3528;
      *(v8 + 16) = 0;
      *(v8 + 24) = 16;
      qword_1EE1C30F0 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspectionTable_IntrospectionBase(v9);
      v10 = (*(*v9 + 32))(v9, 16, 8);
      *v10 = 2;
      *(v10 + 1) = &dword_1EE1C3000;
      qword_1EE1C30F8 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_int(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "size";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1400000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1C3100 = v14;
      __cxa_guard_release(&qword_1EE1C2C90);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C30F0;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

double re::internal::defaultConstruct<re::IntrospectionBase>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *v3 = &unk_1F5CACBD8;
  v3[2] = 0;
  *(v3 + 22) = 0;
  v3[4] = 0;
  *&result = 0xFFFFFFFFLL;
  v3[5] = 0xFFFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionBase>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v1 = &unk_1F5CACBD8;
  v1[2] = 0;
  *(v1 + 22) = 0;
  v1[4] = 0;
  *&result = 0xFFFFFFFFLL;
  v1[5] = 0xFFFFFFFFLL;
  return result;
}

void *re::allocInfo_IntrospectionBasic(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3718, "IntrospectionBasic");
    __cxa_guard_release(&qword_1EE1C2CA0);
  }

  return &unk_1EE1C3718;
}

void re::initInfo_IntrospectionBasic(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x3E1CA86024F61AA6;
  v15[1] = "IntrospectionBasic";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2CA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2CA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3010 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<char const*>::get(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "name";
      *(v13 + 16) = &qword_1EE1C3250;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3018 = v13;
      __cxa_guard_release(&qword_1EE1C2CA8);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3010;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionBasic>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionBasic>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionBasic>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionBasic>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::IntrospectionInfo<char const*>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2FC0))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3250);
    __cxa_guard_release(&qword_1EE1C2FC0);
  }

  if ((byte_1EE1C2C70 & 1) == 0)
  {
    byte_1EE1C2C70 = 1;
    v2 = re::introspect_char(1, a2);
    ArcSharedObject::ArcSharedObject(&qword_1EE1C3250, 0);
    qword_1EE1C3260 = 0x800000001;
    dword_1EE1C3268 = 8;
    word_1EE1C326C = 0;
    *&xmmword_1EE1C3270 = 0;
    *(&xmmword_1EE1C3270 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3250 = &unk_1F5CBD2C0;
    qword_1EE1C3280 = v2;
    qword_1EE1C3288 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&qword_1EE1C3250, &v9);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = v2[2];
      v7 = v8;
    }

    xmmword_1EE1C3270 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::IntrospectionBasic>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 22) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C558;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionBasic>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C558;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return result;
}

void *re::allocInfo_IntrospectionPointer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C37A8, "IntrospectionPointer");
    __cxa_guard_release(&qword_1EE1C2CB8);
  }

  return &unk_1EE1C37A8;
}

void re::initInfo_IntrospectionPointer(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x299410F0B7BB8444;
  v15[1] = "IntrospectionPointer";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2CC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2CC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3020 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "pointeeInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3028 = v13;
      __cxa_guard_release(&qword_1EE1C2CC0);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3020;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPointer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPointer>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPointer>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPointer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_IntrospectionCStyleArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3838, "IntrospectionCStyleArray");
    __cxa_guard_release(&qword_1EE1C2CD0);
  }

  return &unk_1EE1C3838;
}

void re::initInfo_IntrospectionCStyleArray(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x2DFB4F6972AAA2A0;
  v19[1] = "IntrospectionCStyleArray";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1C2CD8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2CD8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3108 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "elementInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3110 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_int(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "length";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C3118 = v17;
      __cxa_guard_release(&qword_1EE1C2CD8);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3108;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionCStyleArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionCStyleArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionCStyleArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionCStyleArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

re::IntrospectionCStyleArray *re::internal::defaultConstruct<re::IntrospectionCStyleArray>(int a1, int a2, re::IntrospectionCStyleArray *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::IntrospectionCStyleArray::IntrospectionCStyleArray(this);
}

re::IntrospectionCStyleArray *re::internal::defaultConstructV2<re::IntrospectionCStyleArray>(re::IntrospectionCStyleArray *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return re::IntrospectionCStyleArray::IntrospectionCStyleArray(this);
}

void *re::allocInfo_IntrospectionDynamicArrayBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2CE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C38C8, "IntrospectionDynamicArrayBase");
    __cxa_guard_release(&qword_1EE1C2CE8);
  }

  return &unk_1EE1C38C8;
}

void re::initInfo_IntrospectionDynamicArrayBase(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x9D159A3DE5177A0CLL;
  v15[1] = "IntrospectionDynamicArrayBase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2CF0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2CF0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3030 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "elementInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3038 = v13;
      __cxa_guard_release(&qword_1EE1C2CF0);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3030;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionDynamicArrayBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionDynamicArrayBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionDynamicArrayBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionDynamicArrayBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_IntrospectionFixedArrayBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3958, "IntrospectionFixedArrayBase");
    __cxa_guard_release(&qword_1EE1C2D00);
  }

  return &unk_1EE1C3958;
}

void re::initInfo_IntrospectionFixedArrayBase(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xC4BC7EA0B7596862;
  v15[1] = "IntrospectionFixedArrayBase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2D08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2D08);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3040 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "elementInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3048 = v13;
      __cxa_guard_release(&qword_1EE1C2D08);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3040;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionFixedArrayBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionFixedArrayBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionFixedArrayBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionFixedArrayBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_IntrospectionDataArrayBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C39E8, "IntrospectionDataArrayBase");
    __cxa_guard_release(&qword_1EE1C2D18);
  }

  return &unk_1EE1C39E8;
}

void re::initInfo_IntrospectionDataArrayBase(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xBC1C8D611DE318CALL;
  v15[1] = "IntrospectionDataArrayBase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2D20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2D20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3050 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "elementInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3058 = v13;
      __cxa_guard_release(&qword_1EE1C2D20);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3050;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionDataArrayBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionDataArrayBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionDataArrayBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionDataArrayBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_IntrospectionDynamicString(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3A78, "IntrospectionDynamicString");
    __cxa_guard_release(&qword_1EE1C2D30);
  }

  return &unk_1EE1C3A78;
}

void re::initInfo_IntrospectionDynamicString(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xCCE6C9CCDB070AAALL;
  v12[1] = "IntrospectionDynamicString";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C2D40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2D40);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C2D38 = v10;
      __cxa_guard_release(&qword_1EE1C2D40);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2D38;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionDynamicString>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionDynamicString>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionDynamicString>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionDynamicString>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::IntrospectionDynamicString>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0x2000000006;
  *(v3 + 24) = 8;
  *(v3 + 28) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C618;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionDynamicString>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0x2000000006;
  *(v1 + 24) = 8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C618;
  return result;
}

void *re::allocInfo_IntrospectionHashTableBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3B08, "IntrospectionHashTableBase");
    __cxa_guard_release(&qword_1EE1C2D50);
  }

  return &unk_1EE1C3B08;
}

void re::initInfo_IntrospectionHashTableBase(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x138AE0C4810624ECLL;
  v18[1] = "IntrospectionHashTableBase";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C2D58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2D58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3120 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "keyInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3128 = v13;
      v14 = re::introspectionAllocator(v13);
      re::introspect_IntrospectionBasePointer(v14, v15);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "valueInfo";
      *(v16 + 16) = &qword_1EE1C3618;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x4000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C3130 = v16;
      __cxa_guard_release(&qword_1EE1C2D58);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3120;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionHashTableBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionHashTableBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionHashTableBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionHashTableBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::IntrospectionHashTableBase *re::internal::defaultConstruct<re::IntrospectionHashTableBase>(int a1, int a2, re::IntrospectionHashTableBase *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::IntrospectionHashTableBase::IntrospectionHashTableBase(this);
}

re::IntrospectionHashTableBase *re::internal::defaultConstructV2<re::IntrospectionHashTableBase>(re::IntrospectionHashTableBase *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return re::IntrospectionHashTableBase::IntrospectionHashTableBase(this);
}

void *re::allocInfo_IntrospectionPolymorphicType(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3B98, "IntrospectionPolymorphicType");
    __cxa_guard_release(&qword_1EE1C2D68);
  }

  return &unk_1EE1C3B98;
}

void re::initInfo_IntrospectionPolymorphicType(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x6B4F0BF1FB5DBC2ALL;
  v17[1] = "IntrospectionPolymorphicType";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C2D70, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2D70);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<char const*>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "name";
      *(v8 + 16) = &qword_1EE1C3250;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C3138 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspect_IntrospectionBasePointer(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "info";
      *(v11 + 16) = &qword_1EE1C3618;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1C3140 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_uint64_t(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "typeData";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1800000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1C3148 = v15;
      __cxa_guard_release(&qword_1EE1C2D70);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3138;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicType>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicType>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicType>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicType>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

uint64_t re::internal::defaultConstruct<re::IntrospectionPolymorphicType>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 8);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicType>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_IntrospectionPolymorphicTable(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2D80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_223, "IntrospectionPolymorphicTable");
    __cxa_guard_release(&qword_1EE1C2D80);
  }

  return &_MergedGlobals_223;
}

void re::initInfo_IntrospectionPolymorphicTable(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xFE92724D704390A6;
  v11[1] = "IntrospectionPolymorphicTable";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C2D90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2D90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::IntrospectionPolymorphicType const*>::get(v6);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "table";
      *(v9 + 16) = &qword_1EE1C3290;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 1;
      *(v9 + 48) = v8;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1C2D88 = v9;
      __cxa_guard_release(&qword_1EE1C2D90);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2D88;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicTable>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicTable>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicTable>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicTable>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<re::IntrospectionPolymorphicType const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FC8);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3290);
      __cxa_guard_release(&qword_1EE1C2FC8);
    }
  }

  if ((byte_1EE1C2C71 & 1) == 0)
  {
    byte_1EE1C2C71 = 1;
    v1 = qword_1EE1C2D78;
    if (!qword_1EE1C2D78)
    {
      v1 = re::allocInfo_IntrospectionPolymorphicType(a1);
      qword_1EE1C2D78 = v1;
      re::initInfo_IntrospectionPolymorphicType(v1, v2);
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C3290, 0);
    qword_1EE1C32A0 = 0x800000001;
    dword_1EE1C32A8 = 8;
    word_1EE1C32AC = 0;
    *&xmmword_1EE1C32B0 = 0;
    *(&xmmword_1EE1C32B0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3290 = &unk_1F5CBD2C0;
    qword_1EE1C32C0 = v1;
    unk_1EE1C32C8 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&qword_1EE1C3290, &v9);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v1 + 2);
      v7 = v8;
    }

    xmmword_1EE1C32B0 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicTable>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void re::introspect_IntrospectionMemberType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2DA0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C2DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DA8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C3450, "IntrospectionMemberType", 4, 4, 1, 1);
      qword_1EE1C3450 = &unk_1F5D0C658;
      qword_1EE1C3490 = &re::introspect_IntrospectionMemberType(BOOL)::enumTable;
      dword_1EE1C3460 = 9;
      __cxa_guard_release(&qword_1EE1C2DA8);
    }

    if (byte_1EE1C2C6A)
    {
      break;
    }

    byte_1EE1C2C6A = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C3450, a2);
    v37 = 0x859EBCF7EF0CCDDELL;
    v38 = "IntrospectionMemberType";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C3490;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1C3470 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1C2DA0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Simple";
      qword_1EE1C31E0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "ArrayWithSize";
      qword_1EE1C31E8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "PolymorphicWithInlineType";
      qword_1EE1C31F0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "Parent";
      qword_1EE1C31F8 = v36;
      __cxa_guard_release(&qword_1EE1C2DA0);
    }
  }
}

void re::introspect_IntrospectionStructureAttributeType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2DB0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C2DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DB8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C3498, "IntrospectionStructureAttributeType", 4, 4, 1, 1);
      qword_1EE1C3498 = &unk_1F5D0C658;
      qword_1EE1C34D8 = &re::introspect_IntrospectionStructureAttributeType(BOOL)::enumTable;
      dword_1EE1C34A8 = 9;
      __cxa_guard_release(&qword_1EE1C2DB8);
    }

    if (byte_1EE1C2C6B)
    {
      break;
    }

    byte_1EE1C2C6B = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C3498, a2);
    v41 = 0xE05DA9CA5EB8957CLL;
    v42 = "IntrospectionStructureAttributeType";
    v45 = 208862;
    v46 = "int";
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
      v6 = qword_1EE1C34D8;
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
      xmmword_1EE1C34B8 = v43;
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
    v28 = __cxa_guard_acquire(&qword_1EE1C2DB0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 1;
      *(v30 + 2) = "Member";
      qword_1EE1C3220 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 2;
      *(v32 + 2) = "PolymorphicTable";
      qword_1EE1C3228 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 3;
      *(v34 + 2) = "PolymorphicType";
      qword_1EE1C3230 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 4;
      *(v36 + 2) = "Flags";
      qword_1EE1C3238 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 5;
      *(v38 + 2) = "RenameMember";
      qword_1EE1C3240 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 6;
      *(v40 + 16) = "ComplexVersioningFunction";
      qword_1EE1C3248 = v40;
      __cxa_guard_release(&qword_1EE1C2DB0);
    }
  }
}

void re::introspectionTable_IntrospectionStructureAttribute(re *this)
{
  if ((byte_1EE1C2C6C & 1) == 0)
  {
    byte_1EE1C2C6C = 1;
    if ((atomic_load_explicit(&qword_1EE1C2DC0, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE1C2DC0);
      if (v1)
      {
        qword_1ECF19EB8 = "IntrospectionMember";
        v2 = qword_1EE1C2DF0;
        if (!qword_1EE1C2DF0)
        {
          v2 = re::allocInfo_IntrospectionMember(v1);
          qword_1EE1C2DF0 = v2;
          re::initInfo_IntrospectionMember(v2, v3);
        }

        qword_1ECF19EC0 = v2;
        *algn_1ECF19EC8 = 0;
        qword_1ECF19ED0 = 1;
        dword_1ECF19ED8 = 0;
        qword_1ECF19EE0 = "IntrospectionPolymorphicTableAttribute";
        v4 = qword_1EE1C2E08;
        if (!qword_1EE1C2E08)
        {
          v4 = re::allocInfo_IntrospectionPolymorphicTableAttribute(v1);
          qword_1EE1C2E08 = v4;
          re::initInfo_IntrospectionPolymorphicTableAttribute(v4, v5);
        }

        qword_1ECF19EE8 = v4;
        unk_1ECF19EF0 = 0;
        qword_1ECF19EF8 = 2;
        dword_1ECF19F00 = 0;
        qword_1ECF19F08 = "IntrospectionPolymorphicTypeAttribute";
        v6 = qword_1EE1C2E20;
        if (!qword_1EE1C2E20)
        {
          v6 = re::allocInfo_IntrospectionPolymorphicTypeAttribute(v1);
          qword_1EE1C2E20 = v6;
          re::initInfo_IntrospectionPolymorphicTypeAttribute(v6, v7);
        }

        qword_1ECF19F10 = v6;
        *algn_1ECF19F18 = 0;
        qword_1ECF19F20 = 3;
        dword_1ECF19F28 = 0;
        qword_1ECF19F30 = "IntrospectionFlagsAttribute";
        v8 = qword_1EE1C2E38;
        if (!qword_1EE1C2E38)
        {
          v8 = re::allocInfo_IntrospectionFlagsAttribute(v1);
          qword_1EE1C2E38 = v8;
          re::initInfo_IntrospectionFlagsAttribute(v8, v9);
        }

        qword_1ECF19F38 = v8;
        unk_1ECF19F40 = 0;
        qword_1ECF19F48 = 4;
        dword_1ECF19F50 = 0;
        qword_1ECF19F58 = "IntrospectionRenameMemberAttribute";
        v10 = qword_1EE1C2E50;
        if (!qword_1EE1C2E50)
        {
          v10 = re::allocInfo_IntrospectionRenameMemberAttribute(v1);
          qword_1EE1C2E50 = v10;
          re::initInfo_IntrospectionRenameMemberAttribute(v10, v11);
        }

        qword_1ECF19F60 = v10;
        *algn_1ECF19F68 = 0;
        qword_1ECF19F70 = 5;
        dword_1ECF19F78 = 0;
        qword_1ECF19F80 = "IntrospectionComplexVersioningAttribute";
        v12 = qword_1EE1C2E68;
        if (!qword_1EE1C2E68)
        {
          v12 = re::allocInfo_IntrospectionComplexVersioningAttribute(v1);
          qword_1EE1C2E68 = v12;
          re::initInfo_IntrospectionComplexVersioningAttribute(v12, v13);
        }

        qword_1ECF19F88 = v12;
        unk_1ECF19F90 = 0;
        qword_1ECF19F98 = 6;
        dword_1ECF19FA0 = 0;
        qword_1ECF19FA8 = "IntrospectionCreateBindPointAttribute";
        BindPointAttribute = qword_1EE1C2E88;
        if (!qword_1EE1C2E88)
        {
          BindPointAttribute = re::allocInfo_IntrospectionCreateBindPointAttribute(v1);
          qword_1EE1C2E88 = BindPointAttribute;
          re::initInfo_IntrospectionCreateBindPointAttribute(BindPointAttribute, v15);
        }

        qword_1ECF19FB0 = BindPointAttribute;
        *algn_1ECF19FB8 = 0;
        qword_1ECF19FC0 = 7;
        dword_1ECF19FC8 = 0;
        __cxa_guard_release(&qword_1EE1C2DC0);
      }
    }

    dword_1EE1C3060 = 7;
    qword_1EE1C3068 = &qword_1ECF19EB8;
  }
}

void *re::allocInfo_IntrospectionStructureAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19498, "IntrospectionStructureAttribute");
    __cxa_guard_release(&qword_1EE1C2DC8);
  }

  return &unk_1ECF19498;
}

void re::initInfo_IntrospectionStructureAttribute(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x868C2D67524F32C8;
  v12[1] = "IntrospectionStructureAttribute";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C2DD0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2DD0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_IntrospectionStructureAttributeType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 32, 8);
      *v8 = 3;
      *(v8 + 8) = &qword_1EE1C3498;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      qword_1EE1C3070 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspectionTable_IntrospectionStructureAttribute(v9);
      v10 = (*(*v9 + 32))(v9, 16, 8);
      *v10 = 2;
      *(v10 + 8) = &dword_1EE1C3060;
      qword_1EE1C3078 = v10;
      __cxa_guard_release(&qword_1EE1C2DD0);
    }
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3070;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionStructureAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionStructureAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionStructureAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionStructureAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void *re::allocInfo_IntrospectionMember(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19528, "IntrospectionMember");
    __cxa_guard_release(&qword_1EE1C2DE0);
  }

  return &unk_1ECF19528;
}

void re::initInfo_IntrospectionMember(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x857863A49FC2EC2ALL;
  v21[1] = "IntrospectionMember";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1C2DE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2DE8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v8 = re::allocInfo_IntrospectionStructureAttribute(v6);
        qword_1EE1C2DD8 = v8;
        re::initInfo_IntrospectionStructureAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionStructureAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3200 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<char const*>::get(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "name";
      *(v13 + 16) = &qword_1EE1C3250;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3208 = v13;
      v14 = re::introspectionAllocator(v13);
      re::introspect_IntrospectionBasePointer(v14, v15);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "memberInfo";
      *(v16 + 16) = &qword_1EE1C3618;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C3210 = v16;
      v17 = re::introspectionAllocator(v16);
      re::introspect_IntrospectionMemberType(v17, v18);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "memberType";
      *(v19 + 16) = &qword_1EE1C3450;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2800000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1C3218 = v19;
      __cxa_guard_release(&qword_1EE1C2DE8);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1C3200;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionMember>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionMember>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionMember>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionMember>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

uint64_t re::internal::defaultDestruct<re::IntrospectionMember>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 48);

  return re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 16);
}

uint64_t re::internal::defaultDestructV2<re::IntrospectionMember>(uint64_t a1)
{
  re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 48);

  return re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 16);
}

void *re::allocInfo_IntrospectionPolymorphicTableAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2DF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF195B8, "IntrospectionPolymorphicTableAttribute");
    __cxa_guard_release(&qword_1EE1C2DF8);
  }

  return &unk_1ECF195B8;
}

void re::initInfo_IntrospectionPolymorphicTableAttribute(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x7BCA109D2D15F12;
  v14[1] = "IntrospectionPolymorphicTableAttribute";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2E00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2E00);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v8 = re::allocInfo_IntrospectionStructureAttribute(v6);
        qword_1EE1C2DD8 = v8;
        re::initInfo_IntrospectionStructureAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionStructureAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3080 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<re::IntrospectionPolymorphicTable const*>::get(v11);
      v12 = (*(*v11 + 32))(v11, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "polymorphicTable";
      *(v12 + 16) = &qword_1EE1C32D0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C3088 = v12;
      __cxa_guard_release(&qword_1EE1C2E00);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3080;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicTableAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<re::IntrospectionPolymorphicTable const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FD0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FD0);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C32D0);
      __cxa_guard_release(&qword_1EE1C2FD0);
    }
  }

  if ((byte_1EE1C2C72 & 1) == 0)
  {
    byte_1EE1C2C72 = 1;
    v1 = qword_1EE1C2D98;
    if (!qword_1EE1C2D98)
    {
      v1 = re::allocInfo_IntrospectionPolymorphicTable(a1);
      qword_1EE1C2D98 = v1;
      re::initInfo_IntrospectionPolymorphicTable(v1, v2);
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C32D0, 0);
    qword_1EE1C32E0 = 0x800000001;
    dword_1EE1C32E8 = 8;
    word_1EE1C32EC = 0;
    *&xmmword_1EE1C32F0 = 0;
    *(&xmmword_1EE1C32F0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C32D0 = &unk_1F5CBD2C0;
    qword_1EE1C3300 = v1;
    unk_1EE1C3308 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&qword_1EE1C32D0, &v9);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v1 + 2);
      v7 = v8;
    }

    xmmword_1EE1C32F0 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicTableAttribute>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *re::allocInfo_IntrospectionPolymorphicTypeAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19648, "IntrospectionPolymorphicTypeAttribute");
    __cxa_guard_release(&qword_1EE1C2E10);
  }

  return &unk_1ECF19648;
}

void re::initInfo_IntrospectionPolymorphicTypeAttribute(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x8519B7F970D5E80ELL;
  v19[1] = "IntrospectionPolymorphicTypeAttribute";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1C2E18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2E18);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v8 = re::allocInfo_IntrospectionStructureAttribute(v6);
        qword_1EE1C2DD8 = v8;
        re::initInfo_IntrospectionStructureAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionStructureAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3150 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "polymorphicInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3158 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_int(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "polymorphicTypeOffset";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1800000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C3160 = v17;
      __cxa_guard_release(&qword_1EE1C2E18);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3150;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionPolymorphicTypeAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

uint64_t re::internal::defaultConstruct<re::IntrospectionPolymorphicTypeAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 8);
  *(a3 + 24) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionPolymorphicTypeAttribute>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 8);
  *(a1 + 24) = 0;
  return result;
}

void *re::allocInfo_IntrospectionFlagsAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF196D8, "IntrospectionFlagsAttribute");
    __cxa_guard_release(&qword_1EE1C2E28);
  }

  return &unk_1ECF196D8;
}

void re::initInfo_IntrospectionFlagsAttribute(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0xF628A0708C2B08A0;
  v16[1] = "IntrospectionFlagsAttribute";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1C2E30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2E30);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v8 = re::allocInfo_IntrospectionStructureAttribute(v6);
        qword_1EE1C2DD8 = v8;
        re::initInfo_IntrospectionStructureAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionStructureAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3090 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_uint32_t(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "flags";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x400000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1C3098 = v14;
      __cxa_guard_release(&qword_1EE1C2E30);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C3090;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionFlagsAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionFlagsAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionFlagsAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionFlagsAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void *re::allocInfo_IntrospectionRenameMemberAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19768, "IntrospectionRenameMemberAttribute");
    __cxa_guard_release(&qword_1EE1C2E40);
  }

  return &unk_1ECF19768;
}

void re::initInfo_IntrospectionRenameMemberAttribute(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x5F5C67A515547252;
  v18[1] = "IntrospectionRenameMemberAttribute";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C2E48, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2E48);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v8 = re::allocInfo_IntrospectionStructureAttribute(v6);
        qword_1EE1C2DD8 = v8;
        re::initInfo_IntrospectionStructureAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionStructureAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3168 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<char const*>::get(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "oldName";
      *(v13 + 16) = &qword_1EE1C3250;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3170 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<char const*>::get(v14, v15);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "currentName";
      *(v16 + 16) = &qword_1EE1C3250;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C3178 = v16;
      __cxa_guard_release(&qword_1EE1C2E48);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3168;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionRenameMemberAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionRenameMemberAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionRenameMemberAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionRenameMemberAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::IntrospectionRenameMemberAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionRenameMemberAttribute>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_IntrospectionComplexVersioningAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF197F8, "IntrospectionComplexVersioningAttribute");
    __cxa_guard_release(&qword_1EE1C2E58);
  }

  return &unk_1ECF197F8;
}

void re::initInfo_IntrospectionComplexVersioningAttribute(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x151FCB3FE48E5DBALL;
  v19[1] = "IntrospectionComplexVersioningAttribute";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1C2E60, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2E60);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v8 = re::allocInfo_IntrospectionStructureAttribute(v6);
        qword_1EE1C2DD8 = v8;
        re::initInfo_IntrospectionStructureAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionStructureAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3180 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "previousInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C3188 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_size_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "version";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C3190 = v17;
      __cxa_guard_release(&qword_1EE1C2E60);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3180;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionComplexVersioningAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionComplexVersioningAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionComplexVersioningAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionComplexVersioningAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

uint64_t re::internal::defaultConstruct<re::IntrospectionComplexVersioningAttribute>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 24) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a3 + 16);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionComplexVersioningAttribute>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(a1 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

void *re::allocInfo_IntrospectionCreateBindPointAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19888, "IntrospectionCreateBindPointAttribute");
    __cxa_guard_release(&qword_1EE1C2E70);
  }

  return &unk_1ECF19888;
}

void re::initInfo_IntrospectionCreateBindPointAttribute(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x5F39BBB1873362C0;
  v12[1] = "IntrospectionCreateBindPointAttribute";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C2E80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2E80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v8 = re::allocInfo_IntrospectionStructureAttribute(v6);
        qword_1EE1C2DD8 = v8;
        re::initInfo_IntrospectionStructureAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionStructureAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C2E78 = v10;
      __cxa_guard_release(&qword_1EE1C2E80);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2E78;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionCreateBindPointAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionCreateBindPointAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionCreateBindPointAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionCreateBindPointAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionCreateBindPointAttribute>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *re::allocInfo_IntrospectionStructure(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2E90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19918, "IntrospectionStructure");
    __cxa_guard_release(&qword_1EE1C2E90);
  }

  return &unk_1ECF19918;
}

void re::initInfo_IntrospectionStructure(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x14D39C8D0D949830;
  v19[1] = "IntrospectionStructure";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1C2E98, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2E98);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C3198 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<char const*>::get(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "name";
      *(v13 + 16) = &qword_1EE1C3250;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C31A0 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<re::IntrospectionStructureAttribute const* const*>::get(v14);
      v16 = re::introspect_uint32_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "structureAttributes";
      *(v17 + 16) = &qword_1EE1C3310;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4000000002;
      *(v17 + 40) = 1;
      *(v17 + 48) = v16;
      *(v17 + 56) = 0;
      *(v17 + 64) = 56;
      qword_1EE1C31A8 = v17;
      __cxa_guard_release(&qword_1EE1C2E98);
    }
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C3198;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionStructure>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionStructure>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionStructure>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionStructure>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::IntrospectionInfo<re::IntrospectionStructureAttribute const* const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FD8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FD8);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3310);
      __cxa_guard_release(&qword_1EE1C2FD8);
    }
  }

  if ((byte_1EE1C2C73 & 1) == 0)
  {
    byte_1EE1C2C73 = 1;
    if ((atomic_load_explicit(&qword_1EE1C2FE0, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_1EE1C2FE0);
      if (a1)
      {
        re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3350);
        __cxa_guard_release(&qword_1EE1C2FE0);
      }
    }

    if ((byte_1EE1C2C74 & 1) == 0)
    {
      byte_1EE1C2C74 = 1;
      v1 = qword_1EE1C2DD8;
      if (!qword_1EE1C2DD8)
      {
        v1 = re::allocInfo_IntrospectionStructureAttribute(a1);
        qword_1EE1C2DD8 = v1;
        re::initInfo_IntrospectionStructureAttribute(v1, v2);
      }

      ArcSharedObject::ArcSharedObject(&qword_1EE1C3350, 0);
      qword_1EE1C3360 = 0x800000001;
      dword_1EE1C3368 = 8;
      word_1EE1C336C = 0;
      *&xmmword_1EE1C3370 = 0;
      *(&xmmword_1EE1C3370 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C3350 = &unk_1F5CBD2C0;
      qword_1EE1C3380 = v1;
      unk_1EE1C3388 = 0;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1C3350, &v13);
      if (BYTE8(v13))
      {
        v5 = v14;
      }

      else
      {
        v5 = &v13 + 9;
      }

      if (v13 && (BYTE8(v13) & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 0xB47AF28 && (__s1 == "char*" || !strcmp(__s1, "char*")))
      {
        v7 = v13;
      }

      else
      {
        v13 = *(v1 + 2);
        v7 = v12;
      }

      xmmword_1EE1C3370 = v7;
      if (v15)
      {
        if (v15)
        {
        }
      }
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C3310, 0);
    qword_1EE1C3320 = 0x800000001;
    dword_1EE1C3328 = 8;
    word_1EE1C332C = 0;
    *&xmmword_1EE1C3330 = 0;
    *(&xmmword_1EE1C3330 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3310 = &unk_1F5CBD2C0;
    qword_1EE1C3340 = &qword_1EE1C3350;
    unk_1EE1C3348 = 0;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&qword_1EE1C3310, &v13);
    if (BYTE8(v13))
    {
      v10 = v14;
    }

    else
    {
      v10 = &v13 + 9;
    }

    if (v13 && (BYTE8(v13) & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 0xB47AF28 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      xmmword_1EE1C3330 = v13;
    }

    else
    {
      v13 = xmmword_1EE1C3370;
      xmmword_1EE1C3330 = v12;
    }

    if (v15)
    {
      if (v15)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::IntrospectionStructure>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 22) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C718;
  result = 0.0;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionStructure>(ArcSharedObject *a1)
{
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C718;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  return result;
}

void re::introspect_IntrospectionEnumAttributeType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2EA8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C2EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2EB0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C34E0, "IntrospectionEnumAttributeType", 4, 4, 1, 1);
      qword_1EE1C34E0 = &unk_1F5D0C658;
      qword_1EE1C3520 = &re::introspect_IntrospectionEnumAttributeType(BOOL)::enumTable;
      dword_1EE1C34F0 = 9;
      __cxa_guard_release(&qword_1EE1C2EB0);
    }

    if (byte_1EE1C2C6D)
    {
      break;
    }

    byte_1EE1C2C6D = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C34E0, a2);
    v33 = 0xB7843CC4D7E65C34;
    v34 = "IntrospectionEnumAttributeType";
    v37 = 208862;
    v38 = "int";
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
      v6 = qword_1EE1C3520;
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
      xmmword_1EE1C3500 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1C2EA8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 1;
      *(v30 + 2) = "Value";
      qword_1EE1C30A0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 2;
      *(v32 + 16) = "ValueRename";
      qword_1EE1C30A8 = v32;
      __cxa_guard_release(&qword_1EE1C2EA8);
    }
  }
}

void re::introspectionTable_IntrospectionEnumAttribute(re *this)
{
  if ((byte_1EE1C2C6E & 1) == 0)
  {
    byte_1EE1C2C6E = 1;
    if ((atomic_load_explicit(&qword_1EE1C2EB8, memory_order_acquire) & 1) == 0)
    {
      v1 = __cxa_guard_acquire(&qword_1EE1C2EB8);
      if (v1)
      {
        qword_1EE1C3570 = "IntrospectionEnumValue";
        v2 = qword_1EE1C2EE8;
        if (!qword_1EE1C2EE8)
        {
          v2 = re::allocInfo_IntrospectionEnumValue(v1);
          qword_1EE1C2EE8 = v2;
          re::initInfo_IntrospectionEnumValue(v2, v3);
        }

        qword_1EE1C3578 = v2;
        qword_1EE1C3580 = 0;
        qword_1EE1C3588 = 1;
        dword_1EE1C3590 = 0;
        qword_1EE1C3598 = "IntrospectionEnumValueRename";
        v4 = qword_1EE1C2F00;
        if (!qword_1EE1C2F00)
        {
          v4 = re::allocInfo_IntrospectionEnumValueRename(v1);
          qword_1EE1C2F00 = v4;
          re::initInfo_IntrospectionEnumValueRename(v4, v5);
        }

        qword_1EE1C35A0 = v4;
        qword_1EE1C35A8 = 0;
        qword_1EE1C35B0 = 2;
        dword_1EE1C35B8 = 0;
        __cxa_guard_release(&qword_1EE1C2EB8);
      }
    }

    dword_1EE1C30B0 = 2;
    qword_1EE1C30B8 = &qword_1EE1C3570;
  }
}

void *re::allocInfo_IntrospectionEnumAttribute(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2EC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF199A8, "IntrospectionEnumAttribute");
    __cxa_guard_release(&qword_1EE1C2EC0);
  }

  return &unk_1ECF199A8;
}

void re::initInfo_IntrospectionEnumAttribute(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xDB2C4E827F1D1580;
  v12[1] = "IntrospectionEnumAttribute";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C2EC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2EC8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_IntrospectionEnumAttributeType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 32, 8);
      *v8 = 3;
      *(v8 + 8) = &qword_1EE1C34E0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      qword_1EE1C30C0 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspectionTable_IntrospectionEnumAttribute(v9);
      v10 = (*(*v9 + 32))(v9, 16, 8);
      *v10 = 2;
      *(v10 + 8) = &dword_1EE1C30B0;
      qword_1EE1C30C8 = v10;
      __cxa_guard_release(&qword_1EE1C2EC8);
    }
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C30C0;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionEnumAttribute>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionEnumAttribute>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionEnumAttribute>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionEnumAttribute>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void *re::allocInfo_IntrospectionEnumValue(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2ED8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19A38, "IntrospectionEnumValue");
    __cxa_guard_release(&qword_1EE1C2ED8);
  }

  return &unk_1ECF19A38;
}

void re::initInfo_IntrospectionEnumValue(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x14D386891822472ALL;
  v19[1] = "IntrospectionEnumValue";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1C2EE0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2EE0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2ED0;
      if (!qword_1EE1C2ED0)
      {
        v8 = re::allocInfo_IntrospectionEnumAttribute(v6);
        qword_1EE1C2ED0 = v8;
        re::initInfo_IntrospectionEnumAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionEnumAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C31B0 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_uint64_t(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "value";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1C31B8 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<char const*>::get(v15, v16);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "name";
      *(v17 + 16) = &qword_1EE1C3250;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C31C0 = v17;
      __cxa_guard_release(&qword_1EE1C2EE0);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C31B0;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionEnumValue>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionEnumValue>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionEnumValue>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionEnumValue>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::IntrospectionEnumValue>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionEnumValue>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_IntrospectionEnumValueRename(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2EF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19AC8, "IntrospectionEnumValueRename");
    __cxa_guard_release(&qword_1EE1C2EF0);
  }

  return &unk_1ECF19AC8;
}

void re::initInfo_IntrospectionEnumValueRename(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xC1C966A0A2370666;
  v19[1] = "IntrospectionEnumValueRename";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1C2EF8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2EF8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2ED0;
      if (!qword_1EE1C2ED0)
      {
        v8 = re::allocInfo_IntrospectionEnumAttribute(v6);
        qword_1EE1C2ED0 = v8;
        re::initInfo_IntrospectionEnumAttribute(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionEnumAttribute";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C31C8 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_uint64_t(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "newValue";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x800000001;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1C31D0 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<char const*>::get(v15, v16);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "oldName";
      *(v17 + 16) = &qword_1EE1C3250;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1C31D8 = v17;
      __cxa_guard_release(&qword_1EE1C2EF8);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C31C8;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionEnumValueRename>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionEnumValueRename>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionEnumValueRename>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionEnumValueRename>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::IntrospectionEnumValueRename>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionEnumValueRename>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::allocInfo_IntrospectionEnumTable(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2F08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19B58, "IntrospectionEnumTable");
    __cxa_guard_release(&qword_1EE1C2F08);
  }

  return &unk_1ECF19B58;
}

void re::initInfo_IntrospectionEnumTable(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x14D3868917E99BE4;
  v11[1] = "IntrospectionEnumTable";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C2F18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2F18);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::IntrospectionEnumAttribute const* const*>::get(v6);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "enumTable";
      *(v9 + 16) = &qword_1EE1C3390;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 1;
      *(v9 + 48) = v8;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1C2F10 = v9;
      __cxa_guard_release(&qword_1EE1C2F18);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2F10;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionEnumTable>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionEnumTable>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionEnumTable>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionEnumTable>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<re::IntrospectionEnumAttribute const* const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FE8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FE8);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3390);
      __cxa_guard_release(&qword_1EE1C2FE8);
    }
  }

  if ((byte_1EE1C2C75 & 1) == 0)
  {
    byte_1EE1C2C75 = 1;
    if ((atomic_load_explicit(&qword_1EE1C2FF0, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_1EE1C2FF0);
      if (a1)
      {
        re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C33D0);
        __cxa_guard_release(&qword_1EE1C2FF0);
      }
    }

    if ((byte_1EE1C2C76 & 1) == 0)
    {
      byte_1EE1C2C76 = 1;
      v1 = qword_1EE1C2ED0;
      if (!qword_1EE1C2ED0)
      {
        v1 = re::allocInfo_IntrospectionEnumAttribute(a1);
        qword_1EE1C2ED0 = v1;
        re::initInfo_IntrospectionEnumAttribute(v1, v2);
      }

      ArcSharedObject::ArcSharedObject(&qword_1EE1C33D0, 0);
      qword_1EE1C33E0 = 0x800000001;
      dword_1EE1C33E8 = 8;
      word_1EE1C33EC = 0;
      *&xmmword_1EE1C33F0 = 0;
      *(&xmmword_1EE1C33F0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C33D0 = &unk_1F5CBD2C0;
      qword_1EE1C3400 = v1;
      unk_1EE1C3408 = 0;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1C33D0, &v13);
      if (BYTE8(v13))
      {
        v5 = v14;
      }

      else
      {
        v5 = &v13 + 9;
      }

      if (v13 && (BYTE8(v13) & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 0xB47AF28 && (__s1 == "char*" || !strcmp(__s1, "char*")))
      {
        v7 = v13;
      }

      else
      {
        v13 = *(v1 + 2);
        v7 = v12;
      }

      xmmword_1EE1C33F0 = v7;
      if (v15)
      {
        if (v15)
        {
        }
      }
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C3390, 0);
    qword_1EE1C33A0 = 0x800000001;
    dword_1EE1C33A8 = 8;
    word_1EE1C33AC = 0;
    *&xmmword_1EE1C33B0 = 0;
    *(&xmmword_1EE1C33B0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3390 = &unk_1F5CBD2C0;
    qword_1EE1C33C0 = &qword_1EE1C33D0;
    unk_1EE1C33C8 = 0;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&qword_1EE1C3390, &v13);
    if (BYTE8(v13))
    {
      v10 = v14;
    }

    else
    {
      v10 = &v13 + 9;
    }

    if (v13 && (BYTE8(v13) & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 0xB47AF28 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      xmmword_1EE1C33B0 = v13;
    }

    else
    {
      v13 = xmmword_1EE1C33F0;
      xmmword_1EE1C33B0 = v12;
    }

    if (v15)
    {
      if (v15)
      {
      }
    }
  }
}

uint64_t re::internal::defaultConstructV2<re::IntrospectionEnumTable>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *re::allocInfo_IntrospectionEnum(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2F28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19BE8, "IntrospectionEnum");
    __cxa_guard_release(&qword_1EE1C2F28);
  }

  return &unk_1ECF19BE8;
}

void re::initInfo_IntrospectionEnum(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xAF6C477EF8F24678;
  v14[1] = "IntrospectionEnum";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C2F30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2F30);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2CB0;
      if (!qword_1EE1C2CB0)
      {
        v8 = re::allocInfo_IntrospectionBasic(v6);
        qword_1EE1C2CB0 = v8;
        re::initInfo_IntrospectionBasic(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBasic";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C30D0 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<re::IntrospectionEnumTable const*>::get(v11);
      v12 = (*(*v11 + 32))(v11, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "enumTable";
      *(v12 + 16) = &qword_1EE1C3410;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x4000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C30D8 = v12;
      __cxa_guard_release(&qword_1EE1C2F30);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C30D0;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionEnum>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionEnum>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionEnum>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionEnum>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<re::IntrospectionEnumTable const*>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1C2FF8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1C2FF8);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1C3410);
      __cxa_guard_release(&qword_1EE1C2FF8);
    }
  }

  if ((byte_1EE1C2C77 & 1) == 0)
  {
    byte_1EE1C2C77 = 1;
    v1 = qword_1EE1C2F20;
    if (!qword_1EE1C2F20)
    {
      v1 = re::allocInfo_IntrospectionEnumTable(a1);
      qword_1EE1C2F20 = v1;
      re::initInfo_IntrospectionEnumTable(v1, v2);
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1C3410, 0);
    qword_1EE1C3420 = 0x800000001;
    dword_1EE1C3428 = 8;
    word_1EE1C342C = 0;
    *&xmmword_1EE1C3430 = 0;
    *(&xmmword_1EE1C3430 + 1) = 0xFFFFFFFFLL;
    qword_1EE1C3410 = &unk_1F5CBD2C0;
    qword_1EE1C3440 = v1;
    unk_1EE1C3448 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&qword_1EE1C3410, &v9);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v1 + 2);
      v7 = v8;
    }

    xmmword_1EE1C3430 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::IntrospectionEnum>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 22) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *v3 = &unk_1F5D0C658;
  *(v3 + 64) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionEnum>(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *v1 = &unk_1F5D0C658;
  *(v1 + 64) = 0;
  return result;
}

void *re::allocInfo_IntrospectionStringID(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2F40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19C78, "IntrospectionStringID");
    __cxa_guard_release(&qword_1EE1C2F40);
  }

  return &unk_1ECF19C78;
}

void re::initInfo_IntrospectionStringID(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x8EE0D4EDE1F434ELL;
  v12[1] = "IntrospectionStringID";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C2F50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2F50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C2F48 = v10;
      __cxa_guard_release(&qword_1EE1C2F50);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2F48;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionStringID>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionStringID>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionStringID>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionStringID>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::IntrospectionStringID>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 20) = 0x800000010;
  *(v3 + 28) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C6D8;
  *(v3 + 16) = 10;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionStringID>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 20) = 0x800000010;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C6D8;
  *(v1 + 16) = 10;
  return result;
}

void *re::allocInfo_IntrospectionCallbackSerializer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2F60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19D08, "IntrospectionCallbackSerializer");
    __cxa_guard_release(&qword_1EE1C2F60);
  }

  return &unk_1ECF19D08;
}

void re::initInfo_IntrospectionCallbackSerializer(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xE6B7F5AA71E05564;
  v12[1] = "IntrospectionCallbackSerializer";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C2F70, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2F70);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C2F68 = v10;
      __cxa_guard_release(&qword_1EE1C2F70);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2F68;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionCallbackSerializer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionCallbackSerializer>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionCallbackSerializer>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionCallbackSerializer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::IntrospectionCallbackSerializer>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 22) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *v3 = &unk_1F5D0C698;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::IntrospectionCallbackSerializer>(ArcSharedObject *a1)
{
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *v1 = &unk_1F5D0C698;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  return result;
}

void *re::allocInfo_IntrospectionOptionalBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2F80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19D98, "IntrospectionOptionalBase");
    __cxa_guard_release(&qword_1EE1C2F80);
  }

  return &unk_1ECF19D98;
}

void re::initInfo_IntrospectionOptionalBase(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x9A8DDE13626C7318;
  v15[1] = "IntrospectionOptionalBase";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1C2F88, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2F88);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C2C98;
      if (!qword_1EE1C2C98)
      {
        v8 = re::allocInfo_IntrospectionBase(v6);
        qword_1EE1C2C98 = v8;
        re::initInfo_IntrospectionBase(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "IntrospectionBase";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C30E0 = v10;
      v11 = re::introspectionAllocator(v10);
      re::introspect_IntrospectionBasePointer(v11, v12);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "valueInfo";
      *(v13 + 16) = &qword_1EE1C3618;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1C30E8 = v13;
      __cxa_guard_release(&qword_1EE1C2F88);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C30E0;
  *(this + 9) = re::internal::defaultConstruct<re::IntrospectionOptionalBase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IntrospectionOptionalBase>;
  *(this + 13) = re::internal::defaultConstructV2<re::IntrospectionOptionalBase>;
  *(this + 14) = re::internal::defaultDestructV2<re::IntrospectionOptionalBase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::introspect_IntrospectionType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C2F98, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C2FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2FA0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C3528, "IntrospectionType", 4, 4, 1, 1);
      qword_1EE1C3528 = &unk_1F5D0C658;
      qword_1EE1C3568 = &re::introspect_IntrospectionType(BOOL)::enumTable;
      dword_1EE1C3538 = 9;
      __cxa_guard_release(&qword_1EE1C2FA0);
    }

    if (byte_1EE1C2C6F)
    {
      break;
    }

    byte_1EE1C2C6F = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C3528, a2);
    v51 = 0xAF6C477EF9003AEALL;
    v52 = "IntrospectionType";
    v55 = 208862;
    v56 = "int";
    v4 = v54[0];
    v5 = v54[1];
    if (v55)
    {
      if (v55)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C3568;
      v55 = v4;
      v56 = v5;
      re::TypeBuilder::beginEnumType(v54, &v51, 1, 1, &v55);
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
            *&v53.var0 = 2 * v11;
            v53.var1 = v10;
            re::TypeBuilder::addEnumConstant(v54, v15, &v53);
            if (*&v53.var0)
            {
              if (*&v53.var0)
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
              *&v53.var0 = 2 * v20;
              v53.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v54, v24, &v53);
              if (*&v53.var0)
              {
                if (*&v53.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v54, v26);
      xmmword_1EE1C3548 = v53;
      if (v51)
      {
        if (v51)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v52);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1C2F98);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Basic";
      qword_1EE1C35C0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Pointer";
      qword_1EE1C35C8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "CStyleArray";
      qword_1EE1C35D0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "DynamicArray";
      qword_1EE1C35D8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 5;
      *(v38 + 2) = "DataArray";
      qword_1EE1C35E0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 6;
      *(v40 + 2) = "DynamicString";
      qword_1EE1C35E8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 7;
      *(v42 + 2) = "HashTable";
      qword_1EE1C35F0 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 8;
      *(v44 + 2) = "Structure";
      qword_1EE1C35F8 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 9;
      *(v46 + 2) = "Enum";
      qword_1EE1C3600 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 10;
      *(v48 + 2) = "StringID";
      qword_1EE1C3608 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 8) = 11;
      *(v50 + 16) = "CallbackSerializer";
      qword_1EE1C3610 = v50;
      __cxa_guard_release(&qword_1EE1C2F98);
    }
  }
}

void *re::allocInfo_PersistedSchema(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C2FA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C2FA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1ECF19E28, "PersistedSchema");
    __cxa_guard_release(&qword_1EE1C2FA8);
  }

  return &unk_1ECF19E28;
}

void re::initInfo_PersistedSchema(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xE30C31A82622B1A8;
  v11[1] = "PersistedSchema";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1C2FB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C2FB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "types";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1C2FB0 = v9;
      __cxa_guard_release(&qword_1EE1C2FB8);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C2FB0;
  *(this + 9) = re::internal::defaultConstruct<re::PersistedSchema>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::PersistedSchema>;
  *(this + 13) = re::internal::defaultConstructV2<re::PersistedSchema>;
  *(this + 14) = re::internal::defaultDestructV2<re::PersistedSchema>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info) = &unk_1F5D16C70;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  v7 = re::IntrospectionInfo<re::IntrospectionBase const*>::get(1);
  if ((re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v8 = v7;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized = 1;
    v9 = *(v7 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, 0);
    qword_1ECF17C70 = 0x3000000007;
    dword_1ECF17C78 = v9;
    word_1ECF17C7C = 0;
    *&xmmword_1ECF17C80 = 0;
    *(&xmmword_1ECF17C80 + 1) = 0xFFFFFFFFLL;
    qword_1ECF17C90 = v6;
    unk_1ECF17C98 = 0;
    qword_1ECF17CA0 = v8;
    unk_1ECF17CA8 = 0;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info = &unk_1F5D16C70;
    re::IntrospectionRegistry::add(v10, v11);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, &v18);
    if (BYTE8(v18))
    {
      v12 = v19;
    }

    else
    {
      v12 = &v18 + 9;
    }

    if (v18 && (BYTE8(v18) & 1) != 0)
    {
      (*(*v18 + 40))();
    }

    v13 = v6[2];
    v17 = *(v8 + 32);
    v18 = v13;
    xmmword_1ECF17C80 = v16;
    if (v20)
    {
      if (v20)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v14 = re::introspectionSharedMutex(v7);
    std::__shared_mutex_base::unlock(v14);
  }

  return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::PersistedSchema>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 36) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::PersistedSchema>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 36) = 0x7FFFFFFFLL;
  return result;
}

__n128 std::__function::__func<re::PersistedSchema::addIntrospectionGraph(re::IntrospectionBase const*)::$_0,std::allocator<re::PersistedSchema::addIntrospectionGraph(re::IntrospectionBase const*)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D16BE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::PersistedSchema::addIntrospectionGraph(re::IntrospectionBase const*)::$_0,std::allocator<re::PersistedSchema::addIntrospectionGraph(re::IntrospectionBase const*)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t result, uint64_t a2, uint64_t **a3)
{
  {
    v17 = v3;
    v18 = v4;
    v5 = result;
    v6 = *(result + 8);
    result = **a3;
    v14 = result;
    if (result)
    {
      v7 = *(result + 16);
      v8 = v7 > 0xA;
      v9 = (1 << v7) & 0x441;
      if (v8 || v9 == 0)
      {
        re::getPrettyTypeName(result, &v12);
        v11 = re::Hash<re::DynamicString>::operator()(v15, &v12);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, &v12, v11, v15);
        if (v16 == 0x7FFFFFFF)
        {
          re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(v6, &v12, &v14);
          re::DynamicArray<re::TransitionCondition *>::add(*(v5 + 16), &v14);
        }

        result = v12;
        if (v12)
        {
          if (v13)
          {
            return (*(*v12 + 40))();
          }
        }
      }
    }
  }

  return result;
}

uint64_t *re::IntrospectionInfo<re::IntrospectionBase const*>::get(re *a1)
{
  v1 = a1;
  {
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info);
    }
  }

  if (v1)
  {
    if (re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
    if (re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::isInitialized)
    {
LABEL_24:
      v11 = re::introspectionSharedMutex(a1);
      std::__shared_mutex_base::unlock(v11);
      return &re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::isInitialized = 1;
  v5 = qword_1EE1C2C98;
  if (!qword_1EE1C2C98)
  {
    v5 = re::allocInfo_IntrospectionBase(a1);
    qword_1EE1C2C98 = v5;
    re::initInfo_IntrospectionBase(v5, v6);
  }

  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info, 0);
  qword_1ECF17BD0 = 0x800000001;
  dword_1ECF17BD8 = 8;
  word_1ECF17BDC = 0;
  *&xmmword_1ECF17BE0 = 0;
  *(&xmmword_1ECF17BE0 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info = &unk_1F5CBD2C0;
  qword_1ECF17BF0 = v5;
  unk_1ECF17BF8 = 0;
  re::IntrospectionRegistry::add(v7, v8);
  re::getPrettyTypeName(&re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info, &v14);
  if (BYTE8(v14))
  {
    v9 = v15;
  }

  else
  {
    v9 = &v14 + 9;
  }

  if (v14 && (BYTE8(v14) & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  if (v16 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
  {
    v10 = v14;
  }

  else
  {
    v14 = *(v5 + 2);
    v10 = v13;
  }

  xmmword_1ECF17BE0 = v10;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_24;
  }

  return &re::IntrospectionInfo<re::IntrospectionBase const*>::get(BOOL)::info;
}

__n128 std::__function::__func<re::PersistedSchema::hookupPointers(void)::$_0,std::allocator<re::PersistedSchema::hookupPointers(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D16C28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::PersistedSchema::hookupPointers(void)::$_0,std::allocator<re::PersistedSchema::hookupPointers(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t result, uint64_t a2, uint64_t **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = **(result + 16) == 1 && *(a2 + 16) == 11;
  {
    v4 = result;
    v5 = *a3;
    v6 = *(result + 8);
    re::DynamicString::DynamicString(&v13, (*a3)[1]);
    v7 = v14 >> 1;
    if ((v14 & 1) == 0)
    {
      v7 = v14 >> 1;
    }

    if (v7)
    {
      if (v14)
      {
        v8 = v15;
      }

      else
      {
        v8 = &v14 + 1;
      }

      v9 = re::PersistedSchema::introspectionInfo(v6, v8);
      if (v9)
      {
        v10 = v9;
        re::SerializedReference<re::IntrospectionBase const*>::reset(v5);
        *v5 = v10;
      }

      else
      {
        v11 = *re::foundationSerializationLogObjects(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (v14)
          {
            v12 = v15;
          }

          else
          {
            v12 = &v14 + 1;
          }

          *buf = 136315138;
          v17 = v12;
          _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Unknown type name '%s'", buf, 0xCu);
        }

        **(v4 + 16) = 0;
      }
    }

    else
    {
      re::SerializedReference<re::IntrospectionBase const*>::reset(v5);
      *v5 = 0;
    }

    result = v13;
    if (v13)
    {
      if (v14)
      {
        return (*(*v13 + 40))();
      }
    }
  }

  return result;
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::IntrospectionPointer>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 3) = 0u;
  v2 = a1 + 48;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 22) = 0;
  v3[2] = 0;
  v3[4] = 0;
  v3[5] = 0xFFFFFFFFLL;
  *v3 = &unk_1F5CBD2C0;
  v3[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  return a1;
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::IntrospectionDynamicArrayBase>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 3) = 0u;
  v2 = a1 + 48;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 22) = 0;
  v3[2] = 0;
  v3[4] = 0;
  v3[5] = 0xFFFFFFFFLL;
  *v3 = &unk_1F5CADA48;
  v3[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  return a1;
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::IntrospectionFixedArrayBase>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 3) = 0u;
  v2 = a1 + 48;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 22) = 0;
  v3[2] = 0;
  v3[4] = 0;
  v3[5] = 0xFFFFFFFFLL;
  *v3 = &unk_1F5CAE268;
  v3[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  return a1;
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::IntrospectionDataArrayBase>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 3) = 0u;
  v2 = a1 + 48;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 22) = 0;
  v3[2] = 0;
  v3[4] = 0;
  v3[5] = 0xFFFFFFFFLL;
  *v3 = &unk_1F5D0C598;
  v3[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  return a1;
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::IntrospectionOptionalBase>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 3) = 0u;
  v2 = a1 + 48;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 22) = 0;
  v3[2] = 0;
  v3[4] = 0;
  v3[5] = 0xFFFFFFFFLL;
  *v3 = &unk_1F5CBA310;
  v3[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  return a1;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
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
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(&v19, a1, a5);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void *re::IntrospectionHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
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
    v10 = *(a2 + 16) + 56 * v6;
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
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
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

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}