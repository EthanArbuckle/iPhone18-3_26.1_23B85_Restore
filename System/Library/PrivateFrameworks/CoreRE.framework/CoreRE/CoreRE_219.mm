void re::StencilPtInjectionNode::~StencilPtInjectionNode(id *this)
{
  re::DynamicArray<re::DynamicString>::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::DynamicArray<re::DynamicString>::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = (a2 + 2);
      v7 = &v6[64 * v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, v4 << 6);
      }

      memcpy(&v8[8 * v4], v7, v5 << 6);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, v3 << 6);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

double re::internal::Callable<re::StencilPtInjectionNode::executeForPortal(re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 27);
  if ((*(a2 + 145) & 1) == 0)
  {
    *(a2 + 145) = 1;
  }

  *(a2 + 146) = v4;
  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(**(a1 + 16) + 192, (a2 + 88));
  if (v5)
  {
    v7 = v5;
    v8 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](**(a1 + 24) + 56, *(a2 + 84));
    v9 = 0;
    LODWORD(v10) = 0;
    HIDWORD(v10) = 0;
    *(&v10 + 4) = v7->u32[1];
    *&v11 = 0;
    *(&v11 + 1) = v7->u32[2];
    v12 = vnegq_f32(v7[1]);
    v12.i32[3] = 1.0;
    v13 = *v8;
    v14 = v8[1];
    v15 = v8[2];
    v16 = v8[3];
    v20[0] = v7->u32[0];
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    do
    {
      v21[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v20[v9])), v14, *&v20[v9], 1), v15, v20[v9], 2), v16, v20[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    result = *v21;
    v17 = v21[1];
    v18 = v21[2];
    v19 = v21[3];
    *v8 = v21[0];
    v8[1] = v17;
    v8[2] = v18;
    v8[3] = v19;
  }

  return result;
}

uint64_t re::internal::Callable<re::StencilPtInjectionNode::executeForPortal(re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::StencilPtInjectionNode::executeForPortal(re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D14BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re16MeshPassInfoDataE";
  if (("N2re16MeshPassInfoDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re16MeshPassInfoDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,7ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<re::FilteredMeshPass,7ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,7ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 6uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,8ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<unsigned long long,8ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

void re::UIShadowRenderGraphNode::execute(const char **this, uint64_t a2)
{
  v198 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C0BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0BD8))
  {
    _MergedGlobals_533 = re::hashString("UIShadowCaster", v114);
    __cxa_guard_release(&qword_1EE1C0BD8);
  }

  v4 = re::RenderGraphDataStore::tryGet<re::UIShadowRenderData>(*(a2 + 1168), "UIShadowRenderData", "RenderFrame");
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if ((atomic_load_explicit(&qword_1EE1C0BE8, memory_order_acquire) & 1) == 0)
  {
    v115 = __cxa_guard_acquire(&qword_1EE1C0BE8);
    if (v115)
    {
      qword_1EE1C0BE0 = re::getCombinedScopeHash(v115, v116, v117);
      __cxa_guard_release(&qword_1EE1C0BE8);
    }
  }

  v6 = re::RenderGraphDataStore::tryGet<re::SceneArrayData>(*(a2 + 1168), qword_1EE1C0BE0);
  if (!v6)
  {
    v65 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, "UIShadowRenderGraphNode::execute: Missing SceneArrayData. Skipping node execution.", buf, 2u);
    }

    return;
  }

  v7 = v6;
  v126 = v5;
  v8 = &v153;
  if (*(a2 + 1352))
  {
    goto LABEL_117;
  }

  v125 = 0;
LABEL_7:
  v9 = *(*a2 + 32);
  v155 = 0;
  v153 = 0u;
  v154 = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  v10 = *(v7 + 24);
  v127 = a2;
  if (!v10)
  {
LABEL_52:
    v66 = v126;
    v130 = *(v126 + 32);
    if (!v130)
    {
      goto LABEL_60;
    }

    v67 = 0;
    v68 = *(v126 + 16);
    while (1)
    {
      v69 = *v68;
      v68 += 56;
      if (v69 < 0)
      {
        goto LABEL_61;
      }

      if (v130 == ++v67)
      {
        LODWORD(v67) = *(v126 + 32);
        goto LABEL_61;
      }
    }
  }

  v11 = *(v7 + 40);
  v118 = &v11[v10];
  v12 = &qword_1EE1C0000;
  LODWORD(v130) = 1065353216;
  __asm { FMOV            V9.2S, #1.0 }

  while (1)
  {
    v120 = v11;
    v18 = *v11;
    if ((atomic_load_explicit(&qword_1EE1C0BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0BF8))
    {
      qword_1EE1C0BF0 = re::hashString("MeshScenes", v64);
      __cxa_guard_release(&qword_1EE1C0BF8);
    }

    v19 = v12[382];
    v20 = strlen(v18);
    v21 = 0x9E3779B97F4A7C17;
    if (v20)
    {
      MurmurHash3_x64_128(v18, v20, 0, buf);
      v21 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
    }

    v22 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(*(a2 + 1168), ((v19 >> 2) + (v19 << 6) + v21) ^ v19);
    v23 = v22 ? v22 + 8 : 0;
    v121 = *(v23 + 40);
    if (v121)
    {
      break;
    }

LABEL_46:
    v11 = v120 + 1;
    a2 = v127;
    v12 = &qword_1EE1C0000;
    if (v120 + 1 == v118)
    {
      goto LABEL_52;
    }
  }

  v24 = 0;
  v119 = v23;
  while (1)
  {
    v122 = v24;
    v25 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v23, v24);
    v27 = *(v25 + 16);
    if (v27)
    {
      break;
    }

LABEL_45:
    v24 = v122 + 1;
    v23 = v119;
    if (v122 + 1 == v121)
    {
      goto LABEL_46;
    }
  }

  v28 = 0;
  v123 = v25;
  while (1)
  {
    v29 = *(v25 + 32) + 736 * v28;
    if (*(v29 + 717) == 1 && *(v29 + 472) != 0.0)
    {
      break;
    }

LABEL_44:
    if (++v28 >= v27)
    {
      goto LABEL_45;
    }
  }

  v124 = v28;
  *&v179 = *(v25 + 32) + 736 * v28;
  *(&v179 + 1) = **(v29 + 112);
  *&v180 = *(*(v29 + 112) + 8);
  v30 = *(v29 + 8);
  *&v181 = 0;
  *(&v181 + 1) = v30;
  v182 = xmmword_1E3047670;
  v183 = xmmword_1E3047680;
  v184 = xmmword_1E30476A0;
  v185 = xmmword_1E30474D0;
  v186 = 0uLL;
  if (*(v29 + 56))
  {
    v187 = *(v29 + 48);
    v128 = *(&v187 + 1);
    if (*(&v187 + 1))
    {
      goto LABEL_25;
    }

LABEL_43:
    v25 = v123;
    v27 = *(v123 + 16);
    v28 = v124;
    goto LABEL_44;
  }

  *&v187 = &v181;
  *(&v187 + 1) = 1;
  v128 = 1;
LABEL_25:
  v31 = 0;
  while (1)
  {
    *&v193 = &v179;
    *(&v193 + 1) = v31;
    v129 = v31;
    v32 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v193, v26);
    v34 = 0;
    v35 = *(v29 + 128);
    v36 = *(v29 + 144);
    v37 = *(v29 + 160);
    v38 = *(v29 + 176);
    v39 = v32[2];
    v40 = v32[3];
    v41 = v32[4];
    v150[0] = v32[1];
    v150[1] = v39;
    v150[2] = v40;
    v150[3] = v41;
    do
    {
      *&buf[v34 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(v150[v34])), v36, *&v150[v34], 1), v37, v150[v34], 2), v38, v150[v34], 3);
      ++v34;
    }

    while (v34 != 4);
    v133 = v158;
    v136 = *buf;
    v131 = v160;
    v132 = v159;
    v42 = *v193;
    v43 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(&v193, v33);
    v44 = re::Slice<re::internal::BindPointImplBase const*>::range(v42, *v43, v43[1]);
    if (v26)
    {
      break;
    }

LABEL_42:
    v31 = v129 + 1;
    if (v129 + 1 == v128)
    {
      goto LABEL_43;
    }
  }

  v45 = v44;
  v46 = v26;
  v47 = 0;
  while (2)
  {
    v48 = *(v45 + v47);
    re::globalAllocators(v44);
    v49 = (*(*v9 + 32))(v9, 336, 16);
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = 0u;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0u;
    *(v49 + 72) = 0u;
    *(v49 + 88) = 0u;
    *(v49 + 104) = 0u;
    *(v49 + 120) = 0;
    *(v49 + 192) = 0;
    *(v49 + 200) = 0;
    *(v49 + 208) = 0;
    *(v49 + 224) = 0;
    *(v49 + 128) = 0u;
    *(v49 + 144) = 0u;
    *(v49 + 160) = 0u;
    *(v49 + 176) = 0;
    *(v49 + 184) = v9;
    *(v49 + 232) = xmmword_1E304F3C0;
    *(v49 + 248) = 0;
    *(v49 + 252) = 10854;
    *(v49 + 256) = _D9;
    *(v49 + 264) = 0;
    *(v49 + 272) = 0;
    *(v49 + 320) = 0;
    *(&v158 + 1) = re::globalAllocators(v49)[2];
    *buf = &unk_1F5D14CB8;
    *&v159 = buf;
    v50 = (*(*v9 + 16))(v9, v49, buf);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
    if (*(v29 + 200))
    {
      *(v50 + 7) = **(v29 + 192);
      if (!*(v29 + 304))
      {
        goto LABEL_58;
      }

      *(v50 + 8) = **(v29 + 296);
      v52 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v50, _MergedGlobals_533);
      if (!v53)
      {
        goto LABEL_59;
      }

      v54 = *v52;
      v55 = *(v29 + 512);
      *&buf[8] = 0;
      *&v158 = 0;
      *buf = v55;
      *(&v158 + 1) = v48;
      *&v159 = 0;
      *(&v159 + 1) = v50;
      *&v160 = 0;
      DWORD2(v160) = -65280;
      HIDWORD(v160) = v54;
      LODWORD(v161) = 0;
      v162 = v136;
      v163 = v133;
      v164 = v132;
      v165 = v131;
      v171 = 0;
      v170 = 0;
      v172 = 0;
      v173 = 0;
      v166 = 0;
      v167 = 0;
      v169 = 0;
      v168 = 0;
      v174 = 25172350;
      v175 = 0x7FFFFFFFLL;
      v176 = 0xFFFFFFFFLL;
      v177 = 0;
      v178 = 0;
      v56 = *(v29 + 512);
      v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) >> 27));
      v58 = v57 ^ (v57 >> 31);
      if (v153)
      {
        v59 = v58 % DWORD2(v154);
        v60 = *(*(&v153 + 1) + 4 * v59);
        if (v60 != 0x7FFFFFFF)
        {
          while (*(v154 + (v60 << 6) + 8) != v56)
          {
            v60 = *(v154 + (v60 << 6)) & 0x7FFFFFFF;
            if (v60 == 0x7FFFFFFF)
            {
              goto LABEL_39;
            }
          }

          v63 = v154 + (v60 << 6) + 16;
LABEL_41:
          re::DynamicArray<re::MeshPartDrawContext>::add(v63, buf);
          if (++v47 == v46)
          {
            goto LABEL_42;
          }

          continue;
        }
      }

      else
      {
        LODWORD(v59) = 0;
      }

LABEL_39:
      v61 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v153, v59, v58);
      v62 = *(v29 + 512);
      *(v61 + 16) = 0;
      v63 = v61 + 16;
      *(v63 - 8) = v62;
      *(v63 + 32) = 0;
      *(v63 + 8) = 0;
      *(v63 + 16) = 0;
      *(v63 + 24) = 1;
      ++v156;
      goto LABEL_41;
    }

    break;
  }

  re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash();
  __break(1u);
LABEL_58:
  re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash();
  __break(1u);
LABEL_59:
  re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash();
  __break(1u);
LABEL_60:
  LODWORD(v67) = 0;
LABEL_61:
  if (v67 != v130)
  {
    a2 = 24;
    do
    {
      v70 = *(v66 + 16) + 224 * v67;
      v71 = v70 + 16;
      v72 = (*(*v9 + 32))(v9, 328, 8);
      re::DrawTable::DrawTable(v72, v9);
      v73 = *(v70 + 192);
      if (v73)
      {
        v74 = 0;
        v75 = (*(v70 + 176) + 8);
        v76 = 0uLL;
        while (1)
        {
          v77 = *v75;
          v75 += 6;
          if (v77 < 0)
          {
            break;
          }

          if (v73 == ++v74)
          {
            LODWORD(v74) = *(v70 + 192);
            break;
          }
        }
      }

      else
      {
        LODWORD(v74) = 0;
        v76 = 0uLL;
      }

      if (v74 != v73)
      {
        v78 = DWORD2(v154);
        v80 = *(&v153 + 1);
        v79 = v153;
        v81 = *(v70 + 192);
        v82 = v154;
        v137 = v73;
        v134 = DWORD2(v154);
        v83 = v153;
        do
        {
          if (v79)
          {
            v84 = *(*(v71 + 160) + 24 * v74 + 16);
            v85 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27));
            v86 = *(v80 + 4 * ((v85 ^ (v85 >> 31)) % v78));
            if (v86 != 0x7FFFFFFF)
            {
              v87 = v86;
              while (*(v82 + (v87 << 6) + 8) != v84)
              {
                v87 = *(v82 + (v87 << 6)) & 0x7FFFFFFF;
                if (v87 == 0x7FFFFFFF)
                {
                  goto LABEL_84;
                }
              }

              while (*(v82 + (v86 << 6) + 8) != v84)
              {
                v86 = *(v82 + (v86 << 6)) & 0x7FFFFFFF;
                if (v86 == 0x7FFFFFFF)
                {
                  v86 = 0x7FFFFFFFLL;
                  break;
                }
              }

              v88 = v82 + (v86 << 6);
              v89 = *(v88 + 32);
              if (v89)
              {
                v90 = *(v88 + 48);
                v91 = 240 * v89;
                do
                {
                  v92 = *v127;
                  v151[0] = v76;
                  v151[1] = v76;
                  v152 = 0;
                  re::addDrawCall(v72, v90, v92, 1u, v151);
                  v76 = 0uLL;
                  v90 += 240;
                  v91 -= 240;
                }

                while (v91);
                v81 = *(v71 + 176);
                LODWORD(v73) = v137;
                v78 = v134;
                v80 = v83 >> 64;
                v79 = v83;
              }
            }
          }

LABEL_84:
          if (v81 <= v74 + 1)
          {
            v93 = v74 + 1;
          }

          else
          {
            v93 = v81;
          }

          while (v93 - 1 != v74)
          {
            LODWORD(v74) = v74 + 1;
            if ((*(*(v71 + 160) + 24 * v74 + 8) & 0x80000000) != 0)
            {
              goto LABEL_91;
            }
          }

          LODWORD(v74) = v93;
LABEL_91:
          ;
        }

        while (v74 != v73);
      }

      if (*(v72 + 5))
      {
        v94 = *v71;
        v95 = *(v71 + 16);
        v96 = *(v71 + 48);
        v159 = *(v71 + 32);
        v160 = v96;
        *buf = v94;
        v158 = v95;
        v161 = xmmword_1E3047670;
        v162 = xmmword_1E3047680;
        v163 = xmmword_1E30476A0;
        v164 = xmmword_1E30474D0;
        v97 = *(v71 + 64);
        v98 = *(v71 + 80);
        v99 = *(v71 + 112);
        v181 = *(v71 + 96);
        v182 = v99;
        v179 = v97;
        v180 = v98;
        v183 = xmmword_1E3047670;
        v184 = xmmword_1E3047680;
        v185 = xmmword_1E30476A0;
        v186 = xmmword_1E30474D0;
        re::DrawTableSlice::DrawTableSlice(v150, v72);
        v100 = [objc_msgSend(MEMORY[0x1E6974128] alloc)];
        v101 = [objc_msgSend(v100 colorAttachments)];
        v7 = v71 + 136;
        [v101 setTexture_];
        [v101 setLoadAction_];
        [v101 setClearColor_];
        v102 = [v101 setStoreAction_];
        v147 = 0;
        HIBYTE(v148) = 0;
        this = v142;
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v149 = -1;
        if (!v145)
        {
          v139 = 0;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v193 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v188 = 136315906;
          *&v188[4] = "operator[]";
          *&v188[12] = 1024;
          *&v188[14] = 468;
          v189 = 2048;
          v190 = 0;
          v191 = 2048;
          v192 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_115:
          v139 = 0;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v193 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v188 = 136315906;
          *&v188[4] = "operator[]";
          *&v188[12] = 1024;
          *&v188[14] = 468;
          v189 = 2048;
          v190 = 0;
          v191 = 2048;
          v192 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_116:
          v139 = 0;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v193 = 0u;
          v8 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v188 = 136315906;
          *&v188[4] = "operator[]";
          *&v188[12] = 1024;
          *&v188[14] = 468;
          v189 = 2048;
          v190 = 0;
          v191 = 2048;
          v192 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_117:
          v125 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((a2 + 1352), this[2], 0);
          goto LABEL_7;
        }

        **(&v145 + 1) = xmmword_1E3063230;
        if (!v145)
        {
          goto LABEL_115;
        }

        if (!*(&v143 + 1))
        {
          goto LABEL_116;
        }

        v104 = v144;
        *v105.f32 = vcvt_f32_u32(*(v71 + 128));
        v105.i64[1] = v105.i64[0];
        *v144 = vrndaq_f32(vmulq_f32(**(&v145 + 1), v105));
        *(v104 + 16) = 0x3F80000000000000;
        v146 = 2;
        v142[0] = 0;
        v148 = 0;
        v106 = re::RenderFrameBox::get((*(*(v127 + 1) + 112) + 328), *(*v127 + 40));
        v138 = *(re::RenderFrame::currentCommandBuffer(v106) + 2);
        v141 = v138;
        re::mtl::CommandBuffer::makeRenderCommandEncoder(&v141, v100, &v139);
        re::ns::String::String(&v193, "UIShadow");
        re::mtl::RenderCommandEncoder::setLabel(&v139, &v193);

        (v140[20])(*v140, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"UIShadow" encoding:4]);
        re::RenderGraphContext::rtInfo(v127, *(v127 + 5), &v193);
        *&v193 = 0x4600000001;
        v108 = *v127;
        v107 = *(v127 + 1);
        v109 = *(v127 + 3);
        *v188 = 134217472;
        *&v188[8] = 134217472;
        v188[16] = 0;
        v110 = *(v127 + 5);
        v135 = *(v110 + 16);
        v111 = *(v110 + 32);
        v112 = re::RenderGraphContext::rtResolution(v127);
        re::encodeDrawCalls(&v139, v150, v108, v107, v109, &v193, v188, "UIShadowCaster", v135, *(&v135 + 1), v111, buf, &v179, v142, v112, v125, 0, 0, 0, 0, 0);
        (v140[21])(*v140, sel_popDebugGroup);
        (v140[33])(*v140, sel_endEncoding);
        re::mtl::mps::ImageGaussianBlur::ImageGaussianBlur(v188, (*(v127 + 1) + 208), 4.0);
        re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(v188, &v141, v7);

        re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v139);
        if (*(&v144 + 1))
        {
          if (v145)
          {
            (*(**(&v144 + 1) + 40))();
            v145 = 0uLL;
          }

          *(&v144 + 1) = 0;
        }

        if (v143 && *(&v143 + 1))
        {
          (*(*v143 + 40))();
        }

        if (v100)
        {
        }
      }

      v66 = v126;
      v113 = *(v126 + 32);
      if (v113 <= v67 + 1)
      {
        v113 = v67 + 1;
      }

      while (v113 - 1 != v67)
      {
        LODWORD(v67) = v67 + 1;
        if ((*(*(v126 + 16) + 224 * v67) & 0x80000000) != 0)
        {
          goto LABEL_111;
        }
      }

      LODWORD(v67) = v113;
LABEL_111:
      ;
    }

    while (v67 != v130);
  }

  re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v153);
}

void re::UIShadowRenderGraphNode::~UIShadowRenderGraphNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::UIShadowRenderGraphNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D14CB8;
  return result;
}

void *re::internal::Callable<re::UIShadowRenderGraphNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D14CB8;
  return result;
}

uint64_t re::UploadMultiSceneConstantsNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v166 = *MEMORY[0x1E69E9840];
  v4 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(*(a2 + 146), "ProbeContext", "RenderFrame");
  v5 = re::RenderGraphDataStore::tryGet<re::Slice<re::UberClippingParametersEntry>>(*(a2 + 146), "Clipping", "RenderFrame");
  v133 = re::RenderGraphDataStore::tryGet<re::Slice<unsigned short>>(*(a2 + 146), "Clipping", "RenderFrame");
  v6 = &_MergedGlobals_534;
  if ((atomic_load_explicit(&qword_1EE1C0C08, memory_order_acquire) & 1) == 0)
  {
LABEL_136:
    if (__cxa_guard_acquire(&qword_1EE1C0C08))
    {
      *v6 = re::hashString("SceneArray", v130);
      __cxa_guard_release((v6 + 8));
    }
  }

  v7 = strlen(this[4]);
  v8 = 0x9E3779B97F4A7C17;
  if (v7)
  {
    MurmurHash3_x64_128(this[4], v7, 0, &v155);
    v8 = ((*(&v155 + 1) - 0x61C8864680B583E9 + (v155 << 6) + (v155 >> 2)) ^ v155) - 0x61C8864680B583E9;
  }

  v132 = this;
  v9 = re::RenderGraphDataStore::get<re::SceneArrayData>(*(a2 + 146), (v8 + (*v6 << 6) + (*v6 >> 2)) ^ *v6);
  re::MaterialManager::resizeScenes(*(*(a2 + 1) + 24), *(v9 + 24));
  if ((atomic_load_explicit((v6 + 0x18), memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C18))
  {
    qword_1EE1C0C10 = re::hashString("ProjectiveMeshShadow", v131);
    __cxa_guard_release(&qword_1EE1C0C18);
  }

  v10 = qword_1EE1C0C10;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v155);
  v138 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>>(*(a2 + 146), ((v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + ((*(&v155 + 1) - 0x61C8864680B583E9 + (v155 << 6) + (v155 >> 2)) ^ v155)) ^ v10);
  if (*(v9 + 24))
  {
    v11 = 0;
    v12 = 0;
    v139 = v4;
    v136 = v9;
    v137 = v8;
    do
    {
      v145 = v12;
      v13 = *(*(v9 + 40) + 8 * v11);
      v14 = strlen(v13);
      if (v14)
      {
        MurmurHash3_x64_128(v13, v14, 0, &v155);
        v15 = (*(&v155 + 1) - 0x61C8864680B583E9 + (v155 << 6) + (v155 >> 2)) ^ v155;
      }

      else
      {
        v15 = 0;
      }

      if ((atomic_load_explicit(&qword_1EE1C0C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C28))
      {
        qword_1EE1C0C20 = re::hashString("LightContext", v110);
        __cxa_guard_release(&qword_1EE1C0C28);
      }

      v16 = v15 - 0x61C8864680B583E9;
      v141 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::LightContexts>>(*(a2 + 146), (v15 - 0x61C8864680B583E9 + (qword_1EE1C0C20 << 6) + (qword_1EE1C0C20 >> 2)) ^ qword_1EE1C0C20);
      if ((atomic_load_explicit(&qword_1EE1C0C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C38))
      {
        qword_1EE1C0C30 = re::hashString("IBLContextOverride", v111);
        __cxa_guard_release(&qword_1EE1C0C38);
      }

      v17 = *(a2 + 146);
      v18 = "N2re23IBLContextOverrideScopeE";
      if (("N2re23IBLContextOverrideScopeE" & 0x8000000000000000) != 0)
      {
        v19 = 5381;
        v20 = ("N2re23IBLContextOverrideScopeE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v18 = v19;
          v21 = *v20++;
          v19 = (33 * v19) ^ v21;
        }

        while (v21);
      }

      if (!*(v17 + 64) || (v22 = (((v16 + (qword_1EE1C0C30 << 6) + (qword_1EE1C0C30 >> 2)) ^ qword_1EE1C0C30) - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18, v23 = *(*(v17 + 72) + 4 * (v22 % *(v17 + 88))), v23 == 0x7FFFFFFF))
      {
LABEL_20:
        v25 = 0;
      }

      else
      {
        v24 = *(v17 + 80);
        while (*(v24 + 24 * v23 + 8) != v22)
        {
          v23 = *(v24 + 24 * v23) & 0x7FFFFFFF;
          if (v23 == 0x7FFFFFFF)
          {
            goto LABEL_20;
          }
        }

        v25 = *(v24 + 24 * v23 + 16);
      }

      if ((atomic_load_explicit(&qword_1EE1C0C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C48))
      {
        qword_1EE1C0C40 = re::hashString("RenderGraphDataPipeData", v112);
        __cxa_guard_release(&qword_1EE1C0C48);
      }

      v26 = re::RenderGraphDataStore::tryGet<re::SceneCRWSReferencePosition>(*(a2 + 146), (v8 + (qword_1EE1C0C40 << 6) + (qword_1EE1C0C40 >> 2)) ^ qword_1EE1C0C40);
      if (v13 && !v26)
      {
        v26 = re::RenderGraphDataStore::tryGet<re::SceneCRWSReferencePosition>(*(a2 + 146), (v16 + (qword_1EE1C0C40 << 6) + (qword_1EE1C0C40 >> 2)) ^ qword_1EE1C0C40);
      }

      if (v26)
      {
        v153 = *v26;
      }

      else
      {
        v153 = 0uLL;
      }

      v27 = re::MaterialManager::sceneConstants(*(*(a2 + 1) + 24), v11);
      *v27 = v153;
      v28 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>>(*(a2 + 146), (v8 + (qword_1EE1C0C10 << 6) + (qword_1EE1C0C10 >> 2)) ^ qword_1EE1C0C10);
      v140 = v15;
      if (v13 && !v28)
      {
        v28 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>>(*(a2 + 146), (v16 + (qword_1EE1C0C10 << 6) + (qword_1EE1C0C10 >> 2)) ^ qword_1EE1C0C10);
      }

      v143 = v28;
      v29 = re::MaterialManager::sceneBuffers(*(*(a2 + 1) + 24), v11);
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x20000uLL, 0x100uLL, &v155);
      v30 = *(&v155 + 1);
      v4 = v156;
      if (v5)
      {
        v31 = v5[1];
        if (v31)
        {
          v135 = v25;
          v134 = *(&v155 + 1);
          v32 = v155;
          this = DWORD2(v155);
          v33 = v155 + DWORD2(v155);
          if (v31 >= 0x400)
          {
            v6 = 1024;
          }

          else
          {
            v6 = v5[1];
          }

          bzero((v155 + DWORD2(v155)), 0x10000uLL);
          bzero((v33 + 98304), 0x8000uLL);
          v35 = 0;
          v36 = v153;
          v37 = v32 + 98304;
          v38 = 64;
          do
          {
            v39 = v5[1];
            if (v39 <= v35)
            {
              re::internal::assertLog(6, v34, *v36.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v39);
              _os_crash();
              __break(1u);
              goto LABEL_136;
            }

            v40 = (this + v37);
            v41 = (this + v32);
            v42 = (*v5 + v38);
            v43 = v42[1];
            *v40 = *v42;
            v40[1] = v43;
            v45 = v42[-2];
            v44 = v42[-1];
            v46 = v42[-3];
            *v41 = v42[-4];
            v41[1] = v46;
            v41[2] = v45;
            v41[3] = v44;
            v44.i32[0] = *(this + v32 + 12);
            v47 = (this + v32 + 28);
            v48 = (this + v32 + 44);
            v44.i32[1] = *v47;
            v44.i32[2] = *v48;
            v49 = vsubq_f32(v44, v36);
            v41->i32[3] = v49.i32[0];
            *v47 = v49.i32[1];
            *v48 = v49.i32[2];
            ++v35;
            v41[3] = vcvt_hight_f16_f32(vcvt_f16_f32(vmaxnmq_f32(vcvtq_f32_f16(*(this + v32 + 48)), 0)), vmaxnmq_f32(vcvtq_f32_f16(*(this + v32 + 56)), 0));
            v37 += 32;
            v38 += 96;
            v32 += 64;
          }

          while (v6 != v35);
          v25 = v135;
          v30 = v134;
          if (v133)
          {
            v50 = *(v133 + 8);
            if (v50)
            {
              if (v50 >= 0x4000)
              {
                v51 = 0x4000;
              }

              else
              {
                v51 = *(v133 + 8);
              }

              bzero((v33 + 0x10000), 0x8000uLL);
              v52 = 2 * v51;
              v25 = v135;
              memcpy((v33 + 0x10000), *v133, v52);
              v30 = v134;
            }
          }
        }
      }

      v150 = v4;
      v151 = 0;
      v152 = v30;
      *&v155 = 0x29136C0FCC2;
      v53 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29, &v155);
      re::BufferTable::setBuffer(v29, *(*(v29 + 1) + 16 * v53 + 8), &v150);
      v54 = re::MaterialManager::lightBuffers(*(*(a2 + 1) + 24), v11);
      if (v141)
      {
        re::LightContexts::createConstantBuffer(v141 + 8, *a2, &v153, v54);
      }

      if ((atomic_load_explicit(&qword_1EE1C0C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C58))
      {
        qword_1EE1C0C50 = re::hashString("RenderGraphDataPipeData", v113);
        __cxa_guard_release(&qword_1EE1C0C58);
      }

      v55 = qword_1EE1C0C50;
      if (v25)
      {
        v56 = *(v25 + 8);
        v57 = strlen(v56);
        v58 = 0x9E3779B97F4A7C17;
        if (v57)
        {
          MurmurHash3_x64_128(v56, v57, 0, &v155);
          v58 = ((*(&v155 + 1) - 0x61C8864680B583E9 + (v155 << 6) + (v155 >> 2)) ^ v155) - 0x61C8864680B583E9;
        }

        v59 = (v55 >> 2) + (v55 << 6) + v58;
      }

      else
      {
        v59 = v16 + (qword_1EE1C0C50 << 6) + (qword_1EE1C0C50 >> 2);
      }

      v60 = re::RenderGraphDataStore::tryGet<re::IBLContext>(*(a2 + 146), v59 ^ v55);
      v61 = re::MaterialManager::sceneTextures(*(*(a2 + 1) + 24), v11);
      if (v60)
      {
        re::ColorManager::computeWPCMatrix((*(*(a2 + 1) + 120) + 2048), *(*(a2 + 1) + 96), &v155);
        re::IBLContext::createConstantBuffer(v60, *a2, v54, &v155);
        re::IBLContext::updateSceneTextures(v60, v61);
      }

      else
      {
        v155 = 0uLL;
        v157 = 0;
        v156 = 0;
        v158 = 0;
        v159 = 0;
        LODWORD(v160) = 0;
        v62 = *a2;
        v147 = xmmword_1E3047670;
        v148 = xmmword_1E3047680;
        v149 = xmmword_1E30476A0;
        re::IBLContext::createConstantBuffer(&v155, v62, v54, &v147);
        re::IBLContext::updateSceneTextures(&v155, v61);
        if (v159)
        {

          v159 = 0;
        }

        re::DynamicArray<re::IBL>::deinit(&v155);
      }

      if ((atomic_load_explicit(&qword_1EE1C0C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0C68))
      {
        qword_1EE1C0C60 = re::hashString("VirtualEnvironmentProbeContextOverride", v114);
        __cxa_guard_release(&qword_1EE1C0C68);
      }

      v63 = *(a2 + 146);
      v64 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContextOverride>(v63, (v16 + (qword_1EE1C0C60 << 6) + (qword_1EE1C0C60 >> 2)) ^ qword_1EE1C0C60);
      v65 = qword_1EE1C0C50;
      if (v64)
      {
        v66 = v64;
        v67 = *(v64 + 8);
        v68 = strlen(v67);
        v69 = 0x9E3779B97F4A7C17;
        if (v68)
        {
          MurmurHash3_x64_128(v67, v68, 0, &v155);
          v69 = ((*(&v155 + 1) - 0x61C8864680B583E9 + (v155 << 6) + (v155 >> 2)) ^ v155) - 0x61C8864680B583E9;
          v63 = *(a2 + 146);
        }

        v70 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v63, ((v65 >> 2) + (v65 << 6) + v69) ^ v65);
        v71 = *(v66 + 16) * *(v66 + 20);
      }

      else
      {
        v70 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v63, (v16 + (qword_1EE1C0C50 << 6) + (qword_1EE1C0C50 >> 2)) ^ qword_1EE1C0C50);
        v71 = 1.0;
      }

      v73 = v139;
      v74 = 0x9E3779B97F4A7C17;
      if ([**a2 supportsFamily:5001])
      {
        v75 = 0;
        if (!v70)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v75 = re::mtl::Device::supportsArgumentBuffers(*a2, v72) ^ 1;
        if (!v70)
        {
          goto LABEL_76;
        }
      }

      if ((v75 & 1) == 0)
      {
        v76 = re::MaterialManager::sceneTextures(*(*(a2 + 1) + 24), v11);
        v77 = v76;
        v78 = 1.0;
        if (*(v70 + 96) == 1)
        {
          v142 = v76;
          v79 = strlen(*(v70 + 112));
          if (v79)
          {
            MurmurHash3_x64_128(*(v70 + 112), v79, 0, &v155);
            v74 = ((*(&v155 + 1) - 0x61C8864680B583E9 + (v155 << 6) + (v155 >> 2)) ^ v155) - 0x61C8864680B583E9;
          }

          v80 = *(a2 + 146);
          v81 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContextOverride>(v80, (v74 + (qword_1EE1C0C60 << 6) + (qword_1EE1C0C60 >> 2)) ^ qword_1EE1C0C60);
          v82 = qword_1EE1C0C50;
          if (v81)
          {
            v83 = v81;
            v84 = *(v81 + 8);
            v85 = strlen(v84);
            v86 = 0x9E3779B97F4A7C17;
            if (v85)
            {
              MurmurHash3_x64_128(v84, v85, 0, &v155);
              v86 = ((*(&v155 + 1) - 0x61C8864680B583E9 + (v155 << 6) + (v155 >> 2)) ^ v155) - 0x61C8864680B583E9;
              v80 = *(a2 + 146);
            }

            v87 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v80, ((v82 >> 2) + (v82 << 6) + v86) ^ v82);
            v78 = *(v83 + 16) * *(v83 + 20);
          }

          else
          {
            v87 = re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContext>(v80, (v74 + (qword_1EE1C0C50 << 6) + (qword_1EE1C0C50 >> 2)) ^ qword_1EE1C0C50);
          }

          v73 = v139;
          v77 = v142;
        }

        else
        {
          v87 = 0;
        }

        re::VirtualEnvironmentProbeContext::createConstantBuffer(v70, *a2, v54, v87, v71, v78);
        re::VirtualEnvironmentProbeContext::createTextureBuffer(v70, *a2, v54, v87);
        re::VirtualEnvironmentProbeContext::updateSceneTextures(v70, v77, v87);
        v89 = v138;
        if (!v73)
        {
          goto LABEL_98;
        }

        goto LABEL_88;
      }

LABEL_76:
      v158 = 0;
      v156 = 0;
      v155 = 0uLL;
      v157 = 0;
      v160 = xmmword_1E3047670;
      v161 = xmmword_1E3047680;
      v162 = xmmword_1E30476A0;
      v163 = 0;
      re::VirtualEnvironmentProbeContext::createConstantBuffer(&v155, *a2, v54, 0, v71, 1.0);
      TextureBuffer = re::VirtualEnvironmentProbeContext::createTextureBuffer(&v155, *a2, v54, 0);
      v89 = v138;
      if (v163 == 1)
      {
        if (v164)
        {
          if (v164)
          {
          }
        }

        v164 = 0;
        v165 = &str_67;
      }

      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(&v155);
      if (!v139)
      {
        goto LABEL_98;
      }

LABEL_88:
      v90 = re::MaterialManager::sceneTextures(*(*(a2 + 1) + 24), v11);
      v91 = [*v73 textureType];
      if (v91 == 3)
      {
        *&v155 = 0x1AA47CB53A9AC861;
        v93 = &v155;
        v95 = v90;
        v94 = v73;
      }

      else
      {
        if (v91 == 5)
        {
          *&v155 = 0x24E8D221D19BF998;
          re::TextureTable::setTexture(v90, &v155, v73);
          *&v155 = 0;
          v92 = 0x319D4D8796A12B1FLL;
        }

        else
        {
          if (v91 != 6)
          {
            goto LABEL_96;
          }

          *&v155 = 0x3F800981E521C7A1;
          re::TextureTable::setTexture(v90, &v155, v73);
          *&v155 = 0;
          v92 = 0x150A18CBFF11727ALL;
        }

        *&v147 = v92;
        v93 = &v147;
        v94 = v73 + 1;
        v95 = v90;
      }

      re::TextureTable::setTexture(v95, v93, v94);
LABEL_96:
      *&v147 = 0x7831721862C9B2CBLL;
      *&v155 = v73[2];
      v157 = 0;
      LODWORD(v158) = 0;
      HIDWORD(v158) = [v73[2] length];
      re::BufferTable::setBuffer(v29, &v147, &v155);
      if (v157 != -1)
      {
        (off_1F5D14E50[v157])(&v154, &v155);
      }

LABEL_98:
      *&v147 = 0;
      *&v148 = 0;
      DWORD2(v147) = 0;
      if (v89)
      {
        if (v143)
        {
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 8uLL, 4uLL, &v155);
          if (v155)
          {
            v96 = *(&v155 + 1);
            v97 = v156;
            v98 = *(v143 + 24);
            if (v98)
            {
              v99 = (*(v143 + 40) + 64);
              v100 = 72 * v98;
              while (*v99 != v140)
              {
                v99 += 9;
                v100 -= 72;
                if (!v100)
                {
                  goto LABEL_107;
                }
              }

              *(v155 + DWORD2(v155)) = *(v99 - 8);
            }

LABEL_107:
            *&v147 = v97;
            DWORD2(v147) = 0;
            *&v148 = v96;
          }
        }
      }

      if ((re::BufferView::isValid(&v147) & 1) == 0)
      {
        v101 = *(*(*(a2 + 1) + 24) + 760);
        v102 = [v101 length];
        *&v147 = v101;
        DWORD2(v147) = 0;
        LODWORD(v148) = 0;
        DWORD1(v148) = v102;
        if (v101)
        {
        }
      }

      *&v155 = 0x441AC0ECAF42AD04;
      v103 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29, &v155);
      re::BufferTable::setBuffer(v29, *(*(v29 + 1) + 16 * v103 + 8), &v147);
      *&v147 = 0;
      *&v148 = 0;
      DWORD2(v147) = 0;
      if (v89 && (v104 = *(v89 + 20), v104))
      {
        v105 = 96 * v104;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 96 * v104, 0x10uLL, &v155);
        v106 = v156;
        v144 = *(&v155 + 1);
        memcpy((v155 + DWORD2(v155)), *(v89 + 48), v105);
        *&v147 = v106;
        DWORD2(v147) = 0;
        *&v148 = v144;
      }

      else
      {
        v107 = *(*(*(a2 + 1) + 24) + 856);
        v108 = [v107 length];
        *&v147 = v107;
        DWORD2(v147) = 0;
        LODWORD(v148) = 0;
        DWORD1(v148) = v108;
        if (v107)
        {
        }
      }

      *&v155 = 0xDFC20BDF4EDA5B3;
      v109 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29, &v155);
      re::BufferTable::setBuffer(v29, *(*(v29 + 1) + 16 * v109 + 8), &v147);
      v11 = (v145 + 1);
      v9 = v136;
      v8 = v137;
      v12 = v145 + 1;
    }

    while (*(v136 + 24) > v11);
  }

  v115 = re::RenderGraphDataStore::tryGet<re::AnchorTransformData>(*(a2 + 146), "AnchorTransformData", v132[4]);
  if (v115)
  {
    v116 = v115;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), *(v115 + 16) << 8, 0x100uLL, &v155);
    v117 = *(&v155 + 1);
    v118 = v156;
    if (*(v116 + 16))
    {
      v119 = 0;
      v120 = 0;
      v146 = *(&v155 + 1);
      v121 = DWORD2(v155) + v155 + 104;
      do
      {
        v122 = (*(v116 + 32) + v119);
        v124 = v122[2];
        v123 = v122[3];
        v125 = v122[1];
        *(v121 - 40) = *v122;
        *(v121 - 24) = v125;
        *(v121 - 8) = v124;
        *(v121 + 8) = v123;
        v167 = __invert_f4(*(v121 - 40));
        *(v121 - 104) = v167;
        *(v121 + 80) = v167.columns[2].i32[0];
        *(v121 + 72) = vzip1q_s32(v167.columns[0], v167.columns[1]).u64[0];
        *(v121 + 96) = v167.columns[2].i32[1];
        *(v121 + 88) = vtrn2q_s32(v167.columns[0], v167.columns[1]).u64[0];
        *(v121 + 112) = v167.columns[2].i32[2];
        *(v121 + 104) = vzip1q_s32(vdupq_laneq_s32(v167.columns[0], 2), vdupq_laneq_s32(v167.columns[1], 2)).u64[0];
        v167.columns[0].i64[0] = *(v121 - 40);
        v167.columns[1].i32[0] = *(v121 - 32);
        v167.columns[2].i64[0] = *(v121 - 24);
        v167.columns[3].i64[0] = *(v121 - 8);
        v126 = *v121;
        v167.columns[1].i32[1] = *(v121 - 16);
        *(v121 + 32) = v167.columns[3].i32[0];
        *(v121 + 24) = vzip1_s32(*v167.columns[0].f32, *v167.columns[2].f32);
        *(v121 + 48) = v167.columns[3].i32[1];
        *(v121 + 40) = vzip2_s32(*v167.columns[0].f32, *v167.columns[2].f32);
        *(v121 + 64) = v126;
        *(v121 + 56) = v167.columns[1].i64[0];
        ++v120;
        v119 += 64;
        v121 += 256;
      }

      while (v120 < *(v116 + 16));
      v117 = v146;
    }
  }

  else
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x100uLL, 0x100uLL, &v155);
    v117 = *(&v155 + 1);
    v118 = v156;
    v127 = (v155 + DWORD2(v155));
    *v127 = xmmword_1E3047670;
    v127[1] = xmmword_1E3047680;
    v127[2] = xmmword_1E30476A0;
    v127[3] = xmmword_1E30474D0;
    v127[4] = xmmword_1E3047670;
    v127[5] = xmmword_1E3047680;
    v127[6] = xmmword_1E30476A0;
    v127[7] = xmmword_1E30474D0;
    v127[8] = xmmword_1E3047670;
    v127[9] = xmmword_1E3047680;
    v127[10] = xmmword_1E30476A0;
    v127[11] = xmmword_1E3047670;
    v127[12] = xmmword_1E3047680;
    v127[13] = xmmword_1E30476A0;
  }

  v128 = *(*(*(a2 + 1) + 24) + 720);
  *&v147 = 0x478674A22C6B2A1ALL;
  *&v155 = v118;
  DWORD2(v155) = 0;
  v156 = v117;
  return re::BufferTable::setBuffer(v128, &v147, &v155);
}

void re::UploadTonemapConstantsNode::execute(re::UploadTonemapConstantsNode *this, re::RenderGraphContext *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0C78, memory_order_acquire) & 1) == 0)
  {
    v22 = __cxa_guard_acquire(&qword_1EE1C0C78);
    if (v22)
    {
      qword_1EE1C0C70 = re::getCombinedScopeHash(v22, v23, v24);
      __cxa_guard_release(&qword_1EE1C0C78);
    }
  }

  v4 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(*(a2 + 146), qword_1EE1C0C70);
  v5 = re::RenderGraphContext::metalBuffer(a2, this + 264);
  v7 = [*re::BufferSlice::buffer(v5 v6)];
  *v7 = *(v4 + 8);
  v8 = *(v4 + 40);
  v9 = *(v4 + 72);
  v10 = *(v4 + 24);
  v7[3] = *(v4 + 56);
  v7[4] = v9;
  v7[1] = v10;
  v7[2] = v8;
  v11 = *(v4 + 104);
  v12 = *(v4 + 120);
  v13 = *(v4 + 88);
  *(v7 + 32) = *(v4 + 136);
  v7[6] = v11;
  v7[7] = v12;
  v7[5] = v13;
  v14 = *(*(*(a2 + 1) + 24) + 720);
  v29 = 0x1C6D7B14F4E32CD0;
  re::BufferTable::setBuffer(v14, &v29, v5);
  v15 = *(*(*(a2 + 1) + 24) + 656);
  v27[0] = *(this + 35);
  v27[1] = *(this + 36);
  v16 = *(v4 + 152);
  if (v16)
  {
    v17 = *(v4 + 160);
    re::RenderGraphContext::metalTexture(a2, v27, 0, 0, &v28);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v16;
    v33 = vdupq_n_s64(1uLL);
    [v28 replaceRegion:&v29 mipmapLevel:0 withBytes:v17 bytesPerRow:4 * v16];
    v29 = 0xB3E5B3C154101;
    re::TextureTable::setTexture(v15, &v29, &v28);
    v29 = 0;
    if (v28)
    {
    }
  }

  v26[0] = *(this + 37);
  v26[1] = *(this + 38);
  v18 = *(v4 + 176);
  if (v18)
  {
    v19 = *(v4 + 184);
    re::RenderGraphContext::metalTexture(a2, v26, 0, 0, &v28);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v18;
    v33 = vdupq_n_s64(1uLL);
    [v28 replaceRegion:&v29 mipmapLevel:0 withBytes:v19 bytesPerRow:4 * v18];
    v29 = 0x645EADD8982CBD05;
    re::TextureTable::setTexture(v15, &v29, &v28);
    v29 = 0;
    if (v28)
    {
    }
  }

  v25[0] = *(this + 39);
  v25[1] = *(this + 40);
  v20 = *(v4 + 200);
  if (v20)
  {
    v21 = *(v4 + 208);
    re::RenderGraphContext::metalTexture(a2, v25, 0, 0, &v28);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v20;
    v33 = vdupq_n_s64(1uLL);
    [v28 replaceRegion:&v29 mipmapLevel:0 withBytes:v21 bytesPerRow:4 * v20];
    v29 = 0x259D0C231F804627;
    re::TextureTable::setTexture(v15, &v29, &v28);
    v29 = 0;
    if (v28)
    {
    }
  }
}

void re::UploadMultiSceneConstantsNode::~UploadMultiSceneConstantsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::UploadTonemapConstantsNode::~UploadTonemapConstantsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::get<re::SceneArrayData>(uint64_t a1, uint64_t a2)
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

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::LightContexts>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::RenderGraphDataStore::tryGet<re::VirtualEnvironmentProbeContextOverride>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re38VirtualEnvironmentProbeContextOverrideE";
  if (("N2re38VirtualEnvironmentProbeContextOverrideE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re38VirtualEnvironmentProbeContextOverrideE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::add(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  v6 = *a2;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (*a1)
  {
    v9 = v8 % *(a1 + 24);
    v10 = *(*(a1 + 8) + 4 * v9);
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *&v6;
      v12 = *(a1 + 16);
      if (*(v12 + 24 * v10 + 4) == v11)
      {
        return v12 + 24 * v10 + 8;
      }

      while (1)
      {
        LODWORD(v10) = *(v12 + 24 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v12 + 24 * v10 + 4) == v11)
        {
          return v12 + 24 * v10 + 8;
        }
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v14 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(a1, v9, v8);
  *(v14 + 4) = *a2;
  *(v14 + 8) = *a3;
  result = v14 + 8;
  ++*(a1 + 40);
  return result;
}

void re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(uint64_t *a1, double a2, double a3, float32x4_t a4, double a5, float32x4_t a6)
{
  v6 = a1;
  v268 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v189 = a1[5];
  v190 = a1[4];
  v191 = a1[6];
  v192 = a1[3];
  v258 = 0;
  v259 = 0;
  v261 = 0;
  v262 = 0;
  v264 = 0;
  v209 = 0;
  v9 = *(*(v8 + 8) + 96);
  if (v9)
  {
    v213.i64[0] = 0x7FA75CCDD0CC4AC6;
    v213.i64[1] = "overrides:disablefrustumculling";
    v10 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v9, &v213, &v209);
    if (v213.i8[0])
    {
      if (v213.i8[0])
      {
      }
    }
  }

  if (*(v6 + 64) == 1 && *(v7 + 872) == 1 && (v209 & 1) == 0)
  {
    LOWORD(v203) = 256;
    re::buildCullingFrustum(v7 + 64, (v7 + 144), *(v7 + 890), &v203, &v213, a4, a6);
    re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::move(&v258, &v213);
    ++v259;
    re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::move(&v261, v230);
    ++v262;
    v264 = v257;
    if (v230[0])
    {
      v11 = &v230[18 * v230[0] + 2];
      v12 = &v230[2];
      do
      {
        *v12 = 0;
        ++*(v12 + 2);
        v12 += 18;
      }

      while (v12 != v11);
    }

    if (v213.i64[0])
    {
      v13 = &v213 + 7 * v213.i64[0] + 1;
      v14 = v214;
      do
      {
        v14->i64[0] = 0;
        ++v14->i32[2];
        v14 += 7;
      }

      while (v14 != v13);
    }
  }

  v15 = *(*v8 + 32);
  v206 = 0;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  v207 = 0x7FFFFFFFLL;
  v188 = v15;
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v204, v15, 3);
  v208 = 0;
  v16 = *(v6 + 8);
  v17 = *(v6 + 16);
  v18 = *(v6 + 24);
  v19 = *(v6 + 56);
  v194 = *v6;
  v187 = *(**v6 + 32);
  if ((atomic_load_explicit(&qword_1EE1C0C90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_213;
  }

  while (1)
  {
    v193 = v8;
    if (*(v18 + 16))
    {
      v20 = *(v18 + 24);
    }

    else
    {
      v20 = (v18 + 17);
    }

    v21 = qword_1EE1C0C88;
    v22 = strlen(v20);
    v23 = 0x9E3779B97F4A7C17;
    if (v22)
    {
      MurmurHash3_x64_128(v20, v22, 0, &v213);
      v23 = ((v213.i64[1] - 0x61C8864680B583E9 + (v213.i64[0] << 6) + (v213.i64[0] >> 2)) ^ v213.i64[0]) - 0x61C8864680B583E9;
    }

    v24 = re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(*(*v6 + 1168), ((v21 >> 2) + (v21 << 6) + v23) ^ v21);
    if (v24)
    {
      v25 = *(v24 + 132) > 0;
    }

    else
    {
      v25 = 0;
    }

    v208 = v25;
    if ((atomic_load_explicit(&qword_1EE1C0CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CA0))
    {
      qword_1EE1C0C98 = re::hashString("RenderGraphDataPipeData", v178);
      __cxa_guard_release(&qword_1EE1C0CA0);
    }

    if (*(v18 + 16))
    {
      v26 = *(v18 + 24);
    }

    else
    {
      v26 = (v18 + 17);
    }

    v18 = qword_1EE1C0C98;
    v27 = strlen(v26);
    v28 = 0x9E3779B97F4A7C17;
    if (v27)
    {
      MurmurHash3_x64_128(v26, v27, 0, &v213);
      v28 = ((v213.i64[1] - 0x61C8864680B583E9 + (v213.i64[0] << 6) + (v213.i64[0] >> 2)) ^ v213.i64[0]) - 0x61C8864680B583E9;
    }

    v29 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(v194[146], ((v18 >> 2) + (v18 << 6) + v28) ^ v18);
    if (!v29)
    {
      goto LABEL_135;
    }

    v8 = v29;
    *&v203 = v29;
    if (!v16[6])
    {
      re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash();
      __break(1u);
LABEL_211:
      v212 = 0;
      v215 = 0u;
      v216 = 0u;
      memset(v214, 0, sizeof(v214));
      v213 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v266 = 136315906;
      *&v266[4] = "operator[]";
      *&v266[12] = 1024;
      *&v266[14] = 797;
      *&v266[18] = 2048;
      *&v266[20] = 0;
      *&v266[28] = 2048;
      *&v266[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_212;
    }

    re::RenderCamera::computeLocalTransform((v16 + 8), &v213);
    v31 = vmulq_f32(v214[1], v214[1]);
    *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
    *v31.f32 = vrsqrte_f32(v32);
    *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
    v265 = vmulq_n_f32(vnegq_f32(v214[1]), vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
    v33 = v16[9];
    v211.i64[0] = v16[8];
    v211.i64[1] = v33;
    if (!v17[8])
    {
      goto LABEL_211;
    }

    if (v17[3])
    {
      break;
    }

LABEL_212:
    v212 = 0;
    v215 = 0u;
    v216 = 0u;
    memset(v214, 0, sizeof(v214));
    v213 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v266 = 136315906;
    *&v266[4] = "operator[]";
    *&v266[12] = 1024;
    *&v266[14] = 797;
    *&v266[18] = 2048;
    *&v266[20] = 0;
    *&v266[28] = 2048;
    *&v266[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_213:
    if (__cxa_guard_acquire(&qword_1EE1C0C90))
    {
      qword_1EE1C0C88 = re::hashString("RenderGraphDataPipeData", v177);
      __cxa_guard_release(&qword_1EE1C0C90);
    }
  }

  v34 = 0;
  v35 = v17[10];
  v36 = v17[5];
  v37 = *v35;
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  v41 = v36[1];
  v42 = v36[2];
  v43 = v36[3];
  *v266 = *v36;
  *&v266[16] = v41;
  *&v266[32] = v42;
  v267 = v43;
  do
  {
    *(&v213 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*&v266[v34])), v38, *&v266[v34], 1), v39, *&v266[v34], 2), v40, *&v266[v34], 3);
    v34 += 16;
  }

  while (v34 != 64);
  v197 = v214[0];
  v198 = v213;
  v195 = v215;
  v196 = v214[1];
  memset(v266, 0, 36);
  *&v266[36] = 0x7FFFFFFFLL;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v266, v187, 3);
  v46 = *(v8 + 128);
  if (v46)
  {
    v47 = 0;
    v48 = *(v8 + 112);
    while (1)
    {
      v49 = *v48;
      v48 += 32;
      if (v49 < 0)
      {
        break;
      }

      if (v46 == ++v47)
      {
        LODWORD(v47) = *(v8 + 128);
        break;
      }
    }
  }

  else
  {
    LODWORD(v47) = 0;
  }

  while (v47 != v46)
  {
    v62 = *(v8 + 112);
    v213 = xmmword_1E3047670;
    v214[0] = xmmword_1E3047680;
    v63 = v62 + (v47 << 7);
    v214[1] = xmmword_1E30476A0;
    v215 = xmmword_1E30474D0;
    LOBYTE(v212) = 0;
    v64 = re::RenderGraphMeshNodeBase::computeSortDistance(v63 + 16, &v213, (v63 + 48), (v63 + 64), &v211, &v265, 0, &v212, 0.0, COERCE_DOUBLE(1065353216), 0.0078125, 0.0, v44, v45);
    *&v212 = v64;
    v213.i8[0] = 0;
    v65 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::add(v266, &v212, &v213);
    v66 = (*v65)++;
    v213 = 0uLL;
    *&v214[0] = 0;
    v67 = 0xBF58476D1CE4E5B9 * (*(v63 + 8) ^ (*(v63 + 8) >> 30));
    re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v204, (v63 + 8), (0x94D049BB133111EBLL * (v67 ^ (v67 >> 27))) ^ ((0x94D049BB133111EBLL * (v67 ^ (v67 >> 27))) >> 31), &v213);
    if (v213.i32[3] == 0x7FFFFFFF)
    {
      v68 = re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v204, v213.u32[2], v213.u64[0]);
      v69 = *(v63 + 8);
      *(v68 + 16) = 0;
      v70 = v68 + 16;
      *(v68 + 8) = v69;
      *(v68 + 24) = 0;
      ++HIDWORD(v207);
    }

    else
    {
      v70 = v205 + 40 * v213.u32[3] + 16;
    }

    *v70 = v64;
    *(v70 + 8) = v66;
    *(v70 + 9) = *(v63 + 97);
    if (*(v63 + 96) == 1)
    {
      v71 = *(v63 + 16);
      v72 = *(v63 + 32);
      v73 = vcgtq_f32(v71, v72);
      v73.i32[3] = v73.i32[2];
      v74 = vmaxvq_u32(v73);
      v75.i64[0] = 0x3F0000003F000000;
      v75.i64[1] = 0x3F0000003F000000;
      v76 = vmulq_f32(vaddq_f32(v71, v72), v75);
      v77 = v74 < 0;
      if (v74 >= 0)
      {
        v78 = v76.i64[1];
      }

      else
      {
        v78 = 0;
      }

      if (v77)
      {
        v79 = 0;
      }

      else
      {
        v79 = v76.i64[0];
      }

      v86.i64[0] = v79;
      v86.i64[1] = v78;
      v80 = vsubq_f32(v211, v86);
      v81 = vmulq_f32(v80, v80);
      *&v82 = v81.f32[2] + vaddv_f32(*v81.f32);
      *v81.f32 = vrsqrte_f32(v82);
      *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32)));
      v83 = vsubq_f32(v72, v71);
      v83.i32[3] = 0;
      v84 = vmaxnmq_f32(v83, 0);
      v85 = vmulq_f32(v84, v84);
      v86.f32[3] = sqrtf(v85.f32[2] + vaddv_f32(*v85.f32)) * 0.5;
      v199 = vmulq_n_f32(v80, vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32))).f32[0]);
      v87 = vaddq_f32(v86, vmulq_n_f32(v199, v86.f32[3]));
      v88 = *(v63 + 80);
      v89 = vmulq_f32(v88, v88);
      if (fabsf(v89.f32[2] + vaddv_f32(*v89.f32)) >= 1.0e-10)
      {
        v90 = v265;
        if ((atomic_load_explicit(&qword_1EE1C0D38, memory_order_acquire) & 1) == 0)
        {
          v185 = v87;
          v186 = v86;
          v183 = v90;
          v184 = v88;
          v99 = __cxa_guard_acquire(&qword_1EE1C0D38);
          v90 = v183;
          v88 = v184;
          v87 = v185;
          v86 = v186;
          if (v99)
          {
            re::Defaults::floatValue("depthBiasGroupNormalAngleCosine", v100, &v213);
            v101 = v213.f32[1];
            if (!v213.i8[0])
            {
              v101 = 0.5;
            }

            _MergedGlobals_535 = LODWORD(v101);
            __cxa_guard_release(&qword_1EE1C0D38);
            v90 = v183;
            v88 = v184;
            v87 = v185;
            v86 = v186;
          }
        }

        v91 = vmulq_f32(v88, vnegq_f32(v90));
        if ((v91.f32[2] + vaddv_f32(*v91.f32)) > *&_MergedGlobals_535)
        {
          v87 = v86;
        }
      }

      v92 = vaddq_f32(v195, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, v87.f32[0]), v197, *v87.f32, 1), v196, v87, 2));
      v93 = 1.0;
      if (v92.f32[3] > 0.0)
      {
        v92.f32[0] = v92.f32[2] / v92.f32[3];
        if ((v92.f32[2] / v92.f32[3]) > 0.9999)
        {
          v92.f32[0] = 0.9999;
        }

        if (v92.f32[0] >= 0.0)
        {
          v93 = v92.f32[0];
        }

        else
        {
          v93 = 0.0;
        }
      }

      v94 = nextafterf(v93, 10.0);
      v95 = vmulq_f32(v199, *(v63 + 80));
      v96 = v94 - v93;
      if ((v95.f32[2] + vaddv_f32(*v95.f32)) <= 0.0)
      {
        v97 = -256.0;
      }

      else
      {
        v97 = 256.0;
      }

      *(v70 + 4) = v96 * v97;
    }

    else
    {
      *(v70 + 4) = 0;
    }

    v98 = *(v8 + 128);
    if (v98 <= v47 + 1)
    {
      v98 = v47 + 1;
    }

    while (v98 - 1 != v47)
    {
      LODWORD(v47) = v47 + 1;
      if ((*(*(v8 + 112) + (v47 << 7)) & 0x80000000) != 0)
      {
        goto LABEL_90;
      }
    }

    LODWORD(v47) = v98;
LABEL_90:
    ;
  }

  if (HIDWORD(v205) && !re::RenderGraphDataStore::tryGet<re::MeshSortGroupCameraData>(v194[146], *(v194[5] + 48)))
  {
    v102 = v194[146];
    v103 = "N2re23MeshSortGroupCameraDataE";
    if (("N2re23MeshSortGroupCameraDataE" & 0x8000000000000000) != 0)
    {
      v104 = ("N2re23MeshSortGroupCameraDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v105 = 5381;
      do
      {
        v103 = v105;
        v106 = *v104++;
        v105 = (33 * v105) ^ v106;
      }

      while (v106);
    }

    v213.i64[0] = (*(v194[5] + 48) - 0x61C8864680B583E9 + (v103 << 6) + (v103 >> 2)) ^ v103;
    v107 = (*(**(v102 + 8) + 32))(*(v102 + 8), 56, 8);
    *v107 = &unk_1F5D15018;
    *(v107 + 24) = 0u;
    *(v107 + 40) = 0;
    *(v107 + 8) = 0u;
    *(v107 + 44) = 0x7FFFFFFFLL;
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v107 + 8, v187, 3);
    v212 = v107;
    v108 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v102 + 64, &v213, &v212);
    v109 = *v108;
    v110 = (*v108 + 8);
    if (v110 != &v204)
    {
      if (*v110)
      {
        if (*(v109 + 36))
        {
          v111 = *(v109 + 32);
          if (v111)
          {
            memset_pattern16(*(v109 + 16), &unk_1E304C660, 4 * v111);
          }

          v112 = *(v109 + 40);
          if (v112)
          {
            v113 = *(v109 + 24);
            do
            {
              if ((*v113 & 0x80000000) != 0)
              {
                *v113 &= ~0x80000000;
              }

              v113 += 10;
              --v112;
            }

            while (v112);
          }

          *(v109 + 36) = 0;
          *(v109 + 40) = 0;
          v114 = *(v109 + 48) + 1;
          *(v109 + 44) = 0x7FFFFFFF;
          *(v109 + 48) = v114;
        }

        if (v204)
        {
          if (*(v109 + 32) < HIDWORD(v205))
          {
            re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v110, HIDWORD(v205));
          }

          re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(v110, &v204);
          ++*(v109 + 48);
        }
      }

      else if (v204)
      {
        if (HIDWORD(v205) <= 3)
        {
          v176 = 3;
        }

        else
        {
          v176 = HIDWORD(v205);
        }

        re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(*v108 + 8, v204, v176);
        re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(v110, &v204);
      }
    }
  }

  v50 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>>(v194[146], *(v194[5] + 48));
  if (v50)
  {
    v51 = v19 == 0;
  }

  else
  {
    v51 = 0;
  }

  if (v51)
  {
    v19 = v50 + 8;
  }

  else
  {
    if (!v19)
    {
      v52 = v194[146];
      v53 = "N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x8000000000000000) != 0)
      {
        v54 = ("N2re27RenderGraphDataStoreWrapperINS_20MeshRenderPassGroupsEEE" & 0x7FFFFFFFFFFFFFFFLL);
        v55 = 5381;
        do
        {
          v53 = v55;
          v56 = *v54++;
          v55 = (33 * v55) ^ v56;
        }

        while (v56);
      }

      v212 = (*(v194[5] + 48) - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53;
      v57 = (*(**(v52 + 8) + 32))(*(v52 + 8), 56, 8);
      v213 = 0u;
      memset(v214, 0, 20);
      *(&v214[1] + 4) = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v213, v187, 3);
      *v57 = &unk_1F5D14FD8;
      *(v57 + 8) = v213;
      v213 = 0uLL;
      *(v57 + 24) = *&v214[0];
      *&v214[0] = 0;
      *(v57 + 32) = *(&v214[0] + 1);
      *(v57 + 40) = *&v214[1];
      *(v214 + 8) = xmmword_1E3058120;
      *(v57 + 48) = 1;
      re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v213);
      v213.i64[0] = v57;
      v19 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v52 + 64, &v212, &v213) + 8;
    }

    v58 = *(v8 + 176);
    if (v58)
    {
      v59 = 0;
      v60 = *(v8 + 160);
      while (1)
      {
        v61 = *v60;
        v60 += 44;
        if (v61 < 0)
        {
          break;
        }

        if (v58 == ++v59)
        {
          LODWORD(v59) = *(v8 + 176);
          break;
        }
      }
    }

    else
    {
      LODWORD(v59) = 0;
    }

    if (v59 != v58)
    {
      while (2)
      {
        v115 = *(v8 + 160) + 176 * v59;
        v213 = 0uLL;
        *&v214[0] = 0;
        v117 = *(v115 + 8);
        v116 = (v115 + 8);
        v118 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v117 ^ (v117 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v117 ^ (v117 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v19, v116, v118 ^ (v118 >> 31), &v213);
        if (v213.i32[3] == 0x7FFFFFFF)
        {
          v121 = re::HashTable<unsigned long long,re::MeshRenderPassGroups::RenderPassGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v19, v213.u32[2], v213.u64[0]);
          v122 = *v116;
          *(v121 + 16) = 0u;
          v123 = v121 + 16;
          *(v121 + 8) = v122;
          *(v121 + 80) = 0u;
          *(v121 + 96) = 0u;
          *(v121 + 48) = 0u;
          *(v121 + 64) = 0u;
          *(v121 + 32) = 0u;
          *(v121 + 96) = 1;
          ++*(v19 + 40);
        }

        else
        {
          v123 = *(v19 + 16) + (v213.u32[3] << 7) + 16;
        }

        v124 = (v116 + 1);
        *(v123 + 5) = *(v124 + 32);
        *(v123 + 6) = *(v124 + 33);
        if (*(v123 + 16))
        {
          if (*(v124 + 80))
          {
            v125 = *(v124 + 96);
            v126 = *(v124 + 112);
            *(v123 + 64) = *(v124 + 128);
            goto LABEL_125;
          }

          *(v123 + 16) = 0;
        }

        else if (*(v124 + 80))
        {
          *(v123 + 16) = 1;
          v125 = *(v124 + 96);
          v126 = *(v124 + 112);
          *(v123 + 64) = *(v124 + 128);
LABEL_125:
          *(v123 + 32) = v125;
          *(v123 + 48) = v126;
        }

        v213 = xmmword_1E3047670;
        v214[0] = xmmword_1E3047680;
        v214[1] = xmmword_1E30476A0;
        v215 = xmmword_1E30474D0;
        v210 = 5;
        LOBYTE(v212) = 0;
        v127 = re::RenderGraphMeshNodeBase::computeSortDistance(v124, &v213, &v210, (v124 + 48), &v211, &v265, 0, &v212, 0.0, COERCE_DOUBLE(1065353216), 0.0078125, 0.0, v119, v120);
        v213.f32[0] = v127;
        LOBYTE(v212) = 0;
        v128 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::add(v266, &v213, &v212);
        v129 = (*v128)++;
        *v123 = v127;
        *(v123 + 4) = v129;
        *(v123 + 9) = *(v124 + 66);
        v130 = *(v8 + 176);
        if (v130 <= v59 + 1)
        {
          v130 = v59 + 1;
        }

        while (v130 - 1 != v59)
        {
          LODWORD(v59) = v59 + 1;
          if ((*(*(v8 + 160) + 176 * v59) & 0x80000000) != 0)
          {
            goto LABEL_133;
          }
        }

        LODWORD(v59) = v130;
LABEL_133:
        if (v59 == v58)
        {
          break;
        }

        continue;
      }
    }
  }

  *(&v203 + 1) = v19;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v266);
LABEL_135:
  if (*(v194 + 338))
  {
    re::DrawCallRecorder::saveSortingDebugInformation((v194 + 169), &v203);
  }

  memset(v266, 0, 36);
  *&v266[36] = 0x7FFFFFFFLL;
  re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v266, v188, 3);
  if (*(v192 + 16))
  {
    v131 = *(v192 + 24);
  }

  else
  {
    v131 = (v192 + 17);
  }

  v132 = strlen(v131);
  v133 = 0x9E3779B97F4A7C17;
  if (v132)
  {
    MurmurHash3_x64_128(v131, v132, 0, &v213);
    v133 = ((v213.i64[1] - 0x61C8864680B583E9 + (v213.i64[0] << 6) + (v213.i64[0] >> 2)) ^ v213.i64[0]) - 0x61C8864680B583E9;
  }

  if ((atomic_load_explicit(&qword_1EE1C0CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CB0))
  {
    qword_1EE1C0CA8 = re::hashString("DynamicFunctionConstants", v179);
    __cxa_guard_release(&qword_1EE1C0CB0);
  }

  v134 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(v193 + 1168), (v133 + (qword_1EE1C0CA8 << 6) + (qword_1EE1C0CA8 >> 2)) ^ qword_1EE1C0CA8);
  if (v134)
  {
    v135 = v134 + 8;
  }

  else
  {
    v135 = 0;
  }

  if ((atomic_load_explicit(&qword_1EE1C0CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CC0))
  {
    qword_1EE1C0CB8 = re::hashString("LightContext", v180);
    __cxa_guard_release(&qword_1EE1C0CC0);
  }

  v136 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::LightContexts>>(*(v193 + 1168), (v133 + (qword_1EE1C0CB8 << 6) + (qword_1EE1C0CB8 >> 2)) ^ qword_1EE1C0CB8);
  v137 = *(v189 + 8);
  v200 = v136;
  v138 = *(v190 + 8);
  if (v136)
  {
    v139 = v136 + 8;
  }

  else
  {
    v139 = 0;
  }

  v140 = *(v6 + 80);
  v141 = *(v6 + 66);
  v142 = *(v7 + 865);
  v213.i64[0] = v193;
  *(&v214[0] + 1) = &v203;
  v214[1] = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = v191 + 16;
  v226 = &v258;
  v228 = 0;
  v227 = 0;
  v229 = 0;
  memset(&v230[1], 0, 32);
  LODWORD(v230[0]) = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0xFFFF0100FFFF0100;
  v234 = 0;
  v235 = v141;
  *&v214[0] = &unk_1F5D08FC8;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  v239 = 0;
  v240 = 0;
  v241 = xmmword_1E304F3C0;
  v242 = 0;
  strcpy(v243, "f*");
  v243[3] = v142;
  v244 = 1065353216;
  v245 = 1065353216;
  v247 = 0;
  v246 = 0;
  v248 = 0;
  v249 = -1;
  v250 = 0;
  v251 = 0;
  v252 = 1;
  v253 = v138;
  v254 = v137;
  v255 = v140;
  v256 = v135;
  v201 = *(v7 + 840);
  if (v201)
  {
    if (v136)
    {
      v143 = *(v136 + 297);
    }

    else
    {
      v143 = 0;
    }

    if ((atomic_load_explicit(&qword_1EE1C0D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D48))
    {
      qword_1EE1C0D40 = re::hashString("RenderGraphDataPipeData", v181);
      __cxa_guard_release(&qword_1EE1C0D48);
    }

    v144 = qword_1EE1C0D40;
    if (*(v192 + 16))
    {
      v145 = *(v192 + 24);
    }

    else
    {
      v145 = (v192 + 17);
    }

    v146 = strlen(v145);
    v147 = 0x9E3779B97F4A7C17;
    if (v146)
    {
      MurmurHash3_x64_128(v145, v146, 0, &v265);
      v147 = ((v265.i64[1] - 0x61C8864680B583E9 + (v265.i64[0] << 6) + (v265.i64[0] >> 2)) ^ v265.i64[0]) - 0x61C8864680B583E9;
    }

    v148 = re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(*(v193 + 1168), ((v144 >> 2) + (v144 << 6) + v147) ^ v144);
    v149 = *(v201 + 40);
    if (v149)
    {
      v150 = v148;
      for (i = 0; i != v149; ++i)
      {
        v152 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v201, i);
        v153 = *(v152 + 16);
        if (v153)
        {
          v154 = *(v152 + 32);
          v155 = 736 * v153;
          do
          {
            v265.i32[0] = 0;
            {
              v156 = !re::mesh_traversal::traverseMeshScene(v214, v154, v265.u32[0]) || v150 == 0;
              if (!v156 && (*(v7 + 864) & 1) != 0)
              {
                *(v150 + 136) |= (v154[33].i8[4] & 2) != 0;
              }
            }

            v154 += 46;
            v155 -= 736;
          }

          while (v155);
        }
      }
    }
  }

  v202 = *(v7 + 848);
  if (v202)
  {
    if (v200)
    {
      v157 = *(v200 + 297);
    }

    else
    {
      v157 = 0;
    }

    v158 = 0x9E3779B97F4A7C17;
    if ((atomic_load_explicit(&qword_1EE1C0D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D58))
    {
      qword_1EE1C0D50 = re::hashString("RenderGraphDataPipeData", v182);
      __cxa_guard_release(&qword_1EE1C0D58);
    }

    v159 = qword_1EE1C0D50;
    if (*(v192 + 16))
    {
      v160 = *(v192 + 24);
    }

    else
    {
      v160 = (v192 + 17);
    }

    v161 = strlen(v160);
    if (v161)
    {
      MurmurHash3_x64_128(v160, v161, 0, &v265);
      v158 = ((v265.i64[1] - 0x61C8864680B583E9 + (v265.i64[0] << 6) + (v265.i64[0] >> 2)) ^ v265.i64[0]) - 0x61C8864680B583E9;
    }

    v162 = re::RenderGraphDataStore::tryGet<re::DepthMitigationRenderData>(*(v193 + 1168), ((v159 >> 2) + (v159 << 6) + v158) ^ v159);
    v163 = *(v202 + 40);
    if (v163)
    {
      v164 = v162;
      for (j = 0; j != v163; ++j)
      {
        v166 = re::BucketArray<re::DynamicArray<re::CameraView>,4ul>::operator[](v202, j);
        v167 = *(v166 + 16);
        if (v167)
        {
          v168 = *(v166 + 32);
          v169 = v167 << 10;
          do
          {
            v265.i32[0] = 0;
            {
              v170 = !re::mesh_traversal::traverseVFXScene(v214, v168, v213.i64[0], v265.i32[0]) || v164 == 0;
              if (!v170 && (*(v7 + 864) & 1) != 0)
              {
                *(v164 + 136) |= (*(v168 + 532) & 2) != 0;
              }
            }

            v168 += 1024;
            v169 -= 1024;
          }

          while (v169);
        }
      }
    }
  }

  *&v214[0] = &unk_1F5D034D8;
  for (k = 256; k != 176; k -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(&v213 + k);
  }

  re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v266);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v204);
  if (v261)
  {
    v172 = &v263[9 * v261];
    v173 = v263;
    do
    {
      *v173 = 0;
      ++*(v173 + 2);
      v173 += 9;
    }

    while (v173 != v172);
  }

  if (v258)
  {
    v174 = &v260[7 * v258];
    v175 = v260;
    do
    {
      *v175 = 0;
      ++*(v175 + 2);
      v175 += 7;
    }

    while (v175 != v174);
  }
}

void re::RenderGraphCameraSetupNode::execute(const char **this, float32x4_t *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v63, 5034, 0);
  v4 = re::RenderGraphDataStore::get<re::CameraData>(a2[73].i64[0], *(a2[2].i64[1] + 48));
  v5 = &qword_1EE1C0CC8;
  if ((atomic_load_explicit(&qword_1EE1C0CD0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v6 = re::RenderGraphDataStore::get<re::RendererGlobals>(a2[73].i64[0], *v5);
    v7 = re::RenderGraphDataStore::get<re::SceneScope>(a2[73].i64[0], *(a2[2].i64[1] + 48));
    if ((atomic_load_explicit(v5 + 24, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0CE0))
    {
      qword_1EE1C0CD8 = re::hashString("DynamicFunctionConstants", v61);
      __cxa_guard_release(&qword_1EE1C0CE0);
    }

    v8 = qword_1EE1C0CD8;
    v9 = strlen(this[4]);
    if (v9)
    {
      MurmurHash3_x64_128(this[4], v9, 0, &v66);
      v10 = ((*(&v66 + 1) - 0x61C8864680B583E9 + (v66 << 6) + (v66 >> 2)) ^ v66) - 0x61C8864680B583E9;
    }

    else
    {
      v10 = 0x9E3779B97F4A7C17;
    }

    v11 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a2[73].i64[0], ((v8 >> 2) + (v8 << 6) + v10) ^ v8);
    if (v11)
    {
      v12 = (v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(*(v6 + 8) + 32);
    v14 = this[37];
    if (v14)
    {
      v15 = (this + 34);
    }

    else
    {
      v15 = v12;
    }

    if (v14)
    {
      if (v11)
      {
        v15 = (this + 34);
        *&v66 = v11 + 8;
        v16 = *(v11 + 24);
        if (v16 >= 0x10)
        {
          v17 = 0;
          v18 = *(v11 + 8);
          v19 = v16 >> 4;
          while (1)
          {
            v20 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v18), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v66 + 1) = v20 ^ 0xFFFFLL;
            if (v20 != 0xFFFFLL)
            {
              break;
            }

            v17 -= 16;
            ++v18;
            if (!--v19)
            {
              goto LABEL_23;
            }
          }

          v21 = __clz(__rbit64(v20 ^ 0xFFFFLL));
          v22 = v21 - v17;
          *&v67 = v21 - v17;
          if (v21 + 1 != v17)
          {
            do
            {
              v23 = *(v66 + 8) + 16 * v22;
              if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 34, v23) == -1)
              {
                re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd((this + 34), v23, (v23 + 8));
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v66);
              v22 = v67;
            }

            while (v67 != -1);
          }
        }
      }
    }

LABEL_23:
    if (re::RenderGraphDataStore::tryGet<re::CameraMatrices>(a2[73].i64[0], *(a2[2].i64[1] + 48)))
    {
      break;
    }

    v24 = a2[73].i64[0];
    v25 = *(a2[2].i64[1] + 48);
    v65 = 0;
    {
      re::introspect<re::CameraMatrices>(BOOL)::info = re::introspect_CameraMatrices(0);
    }

    v64 = re::introspect<re::CameraMatrices>(BOOL)::info;
    v26 = strlen(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6));
    v62 = v7;
    if (v26)
    {
      MurmurHash3_x64_128(*(re::introspect<re::CameraMatrices>(BOOL)::info + 6), v26, 0, &v66);
      v27 = (*(&v66 + 1) - 0x61C8864680B583E9 + (v66 << 6) + (v66 >> 2)) ^ v66;
    }

    else
    {
      v27 = 0;
    }

    v65 = v27;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v24 + 176, &v65, &v64);
    *&v66 = (v25 - 0x61C8864680B583E9 + (v65 << 6) + (v65 >> 2)) ^ v65;
    v28 = (*(**(v24 + 8) + 32))(*(v24 + 8), 176, 16);
    v64 = re::CameraMatrices::CameraMatrices(v28, v13, *(v4 + 890));
    v29 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v24 + 64, &v66, &v64);
    if (!*(v4 + 890))
    {
LABEL_37:
      v42.i64[0] = 0x7F0000007FLL;
      v42.i64[1] = 0x7F0000007FLL;
      a2[4] = vnegq_f32(v42);
      a2[5] = v42;
      v7 = v62;
      break;
    }

    v5 = 0;
    v31 = *v29;
    v32 = v4 + 144;
    v33 = (v4 + 64);
    while (1)
    {
      v34 = *(v4 + 128);
      if (v34 <= v5)
      {
        break;
      }

      if (*(v32 + 80) == 1)
      {
        v35 = *(v32 + 96);
        v36 = *(v32 + 112);
        v37 = *(v32 + 144);
        v68 = *(v32 + 128);
        v69 = v37;
        v66 = v35;
        v67 = v36;
      }

      else
      {
        re::Projection::cullingProjectionMatrix(v32, &v66);
      }

      re::DynamicArray<re::Matrix4x4<float>>::add((v31 + 48), &v66);
      v39 = *(v4 + 128);
      if (v39 <= v5)
      {
        goto LABEL_47;
      }

      re::Projection::cullingProjectionMatrix(v32, &v66);
      re::DynamicArray<re::Matrix4x4<float>>::add((v31 + 88), &v66);
      v41 = *(v4 + 48);
      if (v41 <= v5)
      {
        goto LABEL_48;
      }

      re::RenderCamera::computeInverseTransform(v33, &v66);
      re::DynamicArray<re::Matrix4x4<float>>::add((v31 + 8), &v66);
      v5 = (v5 + 1);
      v33 += 2;
      v32 += 240;
      if (v5 >= *(v4 + 890))
      {
        goto LABEL_37;
      }
    }

    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v34);
    _os_crash();
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v39);
    _os_crash();
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v41);
    _os_crash();
    __break(1u);
LABEL_49:
    v58 = __cxa_guard_acquire(&qword_1EE1C0CD0);
    if (v58)
    {
      *v5 = re::getCombinedScopeHash(v58, v59, v60);
      __cxa_guard_release(v5 + 1);
    }
  }

  if (!re::RenderGraphDataStore::tryGet<re::MeshPassInfoData>(a2[73].i64[0], *(a2[2].i64[1] + 48)))
  {
    v43 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(a2[73].i64[0], *(a2[2].i64[1] + 48));
    v44 = a2[73].i64[0];
    v45 = "N2re16MeshPassInfoDataE";
    if (("N2re16MeshPassInfoDataE" & 0x8000000000000000) != 0)
    {
      v46 = ("N2re16MeshPassInfoDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v47 = 5381;
      do
      {
        v45 = v47;
        v48 = *v46++;
        v47 = (33 * v47) ^ v48;
      }

      while (v48);
    }

    *&v66 = (*(a2[2].i64[1] + 48) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
    v49 = (*(**(v44 + 8) + 32))(*(v44 + 8), 16, 8);
    *v49 = &unk_1F5D10F80;
    v49[1] = 0;
    v65 = v49;
    v50 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v44 + 64, &v66, &v65);
    v51 = (*(*v13 + 32))(v13, 48, 8);
    *v51 = 0u;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0;
    *(v51 + 36) = 0x7FFFFFFFLL;
    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v51, v13, 3);
    *(v50 + 8) = v51;
    v52 = re::RenderGraphDataStore::get<re::CameraMatrices>(a2[73].i64[0], *(a2[2].i64[1] + 48));
    *&v66 = a2;
    *(&v66 + 1) = v4;
    *&v67 = v52;
    *(&v67 + 1) = v7;
    *&v68 = v6;
    *(&v68 + 1) = v50;
    v69 = v43;
    v70 = *(this + 132);
    v71 = 0;
    v72 = *(v4 + 876);
    if (v72 == 1)
    {
      v73 = *(v4 + 880);
    }

    v74 = v15;
    re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(&v66, v53, v54, v55, v56, v57);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v63);
}

void re::RenderGraphMultiViewCameraSetupNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v131 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v105, 5034, 0);
  v3 = re::RenderGraphDataStore::get<re::CameraArrayData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v101 = a2;
  v4 = *(a2 + 146);
  v5 = "N2re27MeshLodSelectInputArrayDataE";
  if (("N2re27MeshLodSelectInputArrayDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re27MeshLodSelectInputArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v9 = 0x9E3779B97F4A7C17;
  v10 = 0x7FFFFFFFLL;
  if (*(v4 + 64))
  {
    v11 = (*(*(a2 + 5) + 48) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
    v12 = *(*(v4 + 72) + 4 * (v11 % *(v4 + 88)));
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(v4 + 80);
      v10 = 0x7FFFFFFFLL;
      while (*(v13 + 24 * v12 + 8) != v11)
      {
        v12 = *(v13 + 24 * v12) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v10 = v12;
    }
  }

LABEL_11:
  v102 = *(*(v4 + 80) + 24 * v10 + 16);
  v14 = &qword_1EE1C0CE8;
  if ((atomic_load_explicit(&qword_1EE1C0CF0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v99 = re::RenderGraphDataStore::get<re::RendererGlobals>(*(v101 + 146), *v14);
    v98 = re::RenderGraphDataStore::get<re::SceneScope>(*(v101 + 146), *(*(v101 + 5) + 48));
    if ((atomic_load_explicit(v14 + 24, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D00))
    {
      qword_1EE1C0CF8 = re::hashString("DynamicFunctionConstants", v95);
      __cxa_guard_release(&qword_1EE1C0D00);
    }

    v15 = qword_1EE1C0CF8;
    v16 = strlen(this[4]);
    if (v16)
    {
      MurmurHash3_x64_128(this[4], v16, 0, &v107);
      v17 = ((*(&v107 + 1) + v9 + (v107 << 6) + (v107 >> 2)) ^ v107) + v9;
    }

    else
    {
      v17 = v9;
    }

    v18 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(v101 + 146), ((v15 >> 2) + (v15 << 6) + v17) ^ v15);
    v19 = v18 + 8;
    if (!v18)
    {
      v19 = 0;
    }

    v97 = v19;
    v104 = *(*(v99 + 8) + 32);
    v20 = *(v101 + 146);
    v21 = "N2re19CameraMatricesArrayE";
    v22 = "N2re19CameraMatricesArrayE";
    if (("N2re19CameraMatricesArrayE" & 0x8000000000000000) != 0)
    {
      v23 = ("N2re19CameraMatricesArrayE" & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    v26 = *(*(v101 + 5) + 48) + v9;
    v27 = v20 + 64;
    v103 = v3;
    if (!*(v20 + 64))
    {
      goto LABEL_28;
    }

    v28 = (v26 + (v22 << 6) + (v22 >> 2)) ^ v22;
    v29 = *(*(v20 + 72) + 4 * (v28 % *(v20 + 88)));
    if (v29 == 0x7FFFFFFF)
    {
      goto LABEL_28;
    }

    v30 = *(v20 + 80);
    while (*(v30 + 24 * v29 + 8) != v28)
    {
      v29 = *(v30 + 24 * v29) & 0x7FFFFFFF;
      if (v29 == 0x7FFFFFFF)
      {
        goto LABEL_28;
      }
    }

    if (!*(v30 + 24 * v29 + 16))
    {
LABEL_28:
      v31 = *(v3 + 16);
      if (("N2re19CameraMatricesArrayE" & 0x8000000000000000) != 0)
      {
        v32 = ("N2re19CameraMatricesArrayE" & 0x7FFFFFFFFFFFFFFFLL);
        v33 = 5381;
        do
        {
          v21 = v33;
          v34 = *v32++;
          v33 = (33 * v33) ^ v34;
        }

        while (v34);
      }

      *&v107 = (v26 + (v21 << 6) + (v21 >> 2)) ^ v21;
      v35 = (*(**(v20 + 8) + 32))(*(v20 + 8), 48, 8);
      *v35 = &unk_1F5D15058;
      *(v35 + 40) = 0;
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 8) = v104;
      re::DynamicArray<re::CameraMatrices>::setCapacity((v35 + 8), v31);
      ++*(v35 + 32);
      *&v128[0] = v35;
      v36 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v27, &v107, v128);
      v3 = v103;
      if (*(v103 + 16))
      {
        v37 = 0;
        v38 = *v36;
        v39 = 64;
        v40 = 144;
        while (1)
        {
          v41 = *(v3 + 24);
          v42 = v41 + 960 * v37;
          v43 = re::CameraMatrices::CameraMatrices(&v107, v104, *(v42 + 890));
          if (*(v42 + 890))
          {
            break;
          }

LABEL_42:
          v54 = *(v38 + 16);
          v55 = *(v38 + 24);
          v3 = v103;
          if (v55 >= v54)
          {
            v56 = v55 + 1;
            if (v54 < v55 + 1)
            {
              if (*(v38 + 8))
              {
                v57 = 2 * v54;
                v58 = v54 == 0;
                v59 = 8;
                if (!v58)
                {
                  v59 = v57;
                }

                if (v59 <= v56)
                {
                  v60 = v56;
                }

                else
                {
                  v60 = v59;
                }

                re::DynamicArray<re::CameraMatrices>::setCapacity((v38 + 8), v60);
              }

              else
              {
                re::DynamicArray<re::CameraMatrices>::setCapacity((v38 + 8), v56);
                ++*(v38 + 32);
              }
            }

            v55 = *(v38 + 24);
          }

          v61 = *(v38 + 40) + 176 * v55;
          *(v61 + 40) = 0;
          *v61 = &unk_1F5D03790;
          *(v61 + 8) = 0;
          *(v61 + 16) = 0;
          *(v61 + 24) = 0;
          *(v61 + 32) = 0;
          *(v61 + 8) = *(&v107 + 1);
          *(&v107 + 1) = 0;
          *(v61 + 16) = v108;
          *&v108 = 0;
          v62 = *(v61 + 24);
          *(v61 + 24) = *(&v108 + 1);
          *(&v108 + 1) = v62;
          v63 = *(v61 + 40);
          *(v61 + 40) = *(&v109 + 1);
          *(&v109 + 1) = v63;
          LODWORD(v109) = v109 + 1;
          ++*(v61 + 32);
          *(v61 + 80) = 0;
          *(v61 + 56) = 0;
          *(v61 + 64) = 0;
          *(v61 + 48) = 0;
          *(v61 + 72) = 0;
          *(v61 + 48) = v110;
          *&v110 = 0;
          *(v61 + 56) = *(&v110 + 1);
          *(&v110 + 1) = 0;
          v64 = *(v61 + 64);
          *(v61 + 64) = v111;
          *&v111 = v64;
          v65 = *(v61 + 80);
          *(v61 + 80) = v112;
          v112 = v65;
          ++DWORD2(v111);
          ++*(v61 + 72);
          *(v61 + 120) = 0;
          *(v61 + 96) = 0;
          *(v61 + 104) = 0;
          *(v61 + 88) = 0;
          *(v61 + 112) = 0;
          *(v61 + 88) = v113;
          v113 = 0;
          *(v61 + 96) = v114;
          v114 = 0;
          v66 = *(v61 + 104);
          *(v61 + 104) = v115;
          v115 = v66;
          v67 = *(v61 + 120);
          *(v61 + 120) = v117;
          v117 = v67;
          ++v116;
          ++*(v61 + 112);
          LODWORD(v67) = v118;
          *(v61 + 128) = v118;
          if (v67 == 1)
          {
            *(v61 + 144) = v119;
          }

          *(v61 + 160) = v120;
          ++*(v38 + 24);
          ++*(v38 + 32);
          if (v113)
          {
            if (v117)
            {
              (*(*v113 + 40))();
            }

            v117 = 0;
            v114 = 0;
            v115 = 0;
            v113 = 0;
            ++v116;
          }

          if (v110)
          {
            if (v112)
            {
              (*(*v110 + 40))();
            }

            v112 = 0;
            *&v111 = 0;
            v110 = 0uLL;
            ++DWORD2(v111);
          }

          if (*(&v107 + 1) && *(&v109 + 1))
          {
            (*(**(&v107 + 1) + 40))();
          }

          ++v37;
          v39 += 960;
          v40 += 960;
          if (*(v103 + 16) <= v37)
          {
            goto LABEL_67;
          }
        }

        v9 = 0;
        v45 = (v41 + v39);
        v3 = v41 + v40;
        while (1)
        {
          v46 = *(v42 + 128);
          if (v46 <= v9)
          {
            break;
          }

          if (*(v3 + 80) == 1)
          {
            v47 = *(v3 + 96);
            v48 = *(v3 + 112);
            v49 = *(v3 + 144);
            v128[2] = *(v3 + 128);
            v129 = v49;
            v128[0] = v47;
            v128[1] = v48;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v3, v128);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add(&v110, v128);
          v51 = *(v42 + 128);
          if (v51 <= v9)
          {
            goto LABEL_88;
          }

          re::Projection::cullingProjectionMatrix(v3, v128);
          re::DynamicArray<re::Matrix4x4<float>>::add(&v113, v128);
          v53 = *(v42 + 48);
          if (v53 <= v9)
          {
            goto LABEL_89;
          }

          re::RenderCamera::computeInverseTransform(v45, v128);
          re::DynamicArray<re::Matrix4x4<float>>::add((&v107 + 8), v128);
          ++v9;
          v45 += 2;
          v3 += 240;
          if (v9 >= *(v42 + 890))
          {
            goto LABEL_42;
          }
        }

        re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v9, v46);
        _os_crash();
        __break(1u);
LABEL_88:
        re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v9, v51);
        _os_crash();
        __break(1u);
LABEL_89:
        re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v9, v53);
        _os_crash();
        __break(1u);
        goto LABEL_90;
      }
    }

LABEL_67:
    if (re::RenderGraphDataStore::tryGet<re::MeshPassInfoArrayData>(*(v101 + 146), *(*(v101 + 5) + 48)))
    {
      goto LABEL_86;
    }

    v9 = *(v3 + 16);
    v14 = *(v101 + 146);
    v68 = "N2re21MeshPassInfoArrayDataE";
    if (("N2re21MeshPassInfoArrayDataE" & 0x8000000000000000) != 0)
    {
      v69 = ("N2re21MeshPassInfoArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v70 = 5381;
      do
      {
        v68 = v70;
        v71 = *v69++;
        v70 = (33 * v70) ^ v71;
      }

      while (v71);
    }

    *&v107 = (*(*(v101 + 5) + 48) - 0x61C8864680B583E9 + (v68 << 6) + (v68 >> 2)) ^ v68;
    v73 = (*(*v14[1] + 32))(v14[1], 32, 8);
    *v73 = &unk_1F5D15098;
    v73[1] = v104;
    v73[2] = v9;
    v73[3] = 0;
    if (!v9)
    {
      goto LABEL_78;
    }

    if (v9 >> 60)
    {
      goto LABEL_93;
    }

    v74 = (*(*v104 + 32))(v104, 16 * v9, 8);
    v73[3] = v74;
    if (v74)
    {
      break;
    }

LABEL_94:
    re::internal::assertLog(4, v75, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_95:
    v92 = __cxa_guard_acquire(&qword_1EE1C0CF0);
    if (v92)
    {
      *v14 = re::getCombinedScopeHash(v92, v93, v94);
      __cxa_guard_release(v14 + 1);
    }
  }

  v76 = v9 - 1;
  if (v9 != 1)
  {
    v77 = v74;
    do
    {
      *v74 = &unk_1F5D10F80;
      v74[1] = 0;
      v74 += 2;
      v77 += 2;
      --v76;
    }

    while (v76);
  }

  *v74 = &unk_1F5D10F80;
  v74[1] = 0;
LABEL_78:
  *&v128[0] = v73;
  v78 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v14 + 8), &v107, v128);
  if (*(v3 + 16))
  {
    v79 = 0;
    v80 = 0;
    v38 = 0;
    v81 = *v78;
    v82 = 880;
    v96 = *v78;
    while (1)
    {
      v9 = *(v102 + 16);
      if (v9 <= v38)
      {
        break;
      }

      v9 = *(v81 + 16);
      if (v9 <= v38)
      {
        goto LABEL_91;
      }

      v9 = *(v3 + 24);
      v83 = *(v102 + 24);
      v84 = *(v81 + 24) + v80;
      v3 = v104;
      v85 = (*(*v104 + 32))(v104, 48, 8);
      *v85 = 0u;
      *(v85 + 16) = 0u;
      *(v85 + 32) = 0;
      *(v85 + 36) = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v85, v104, 3);
      *(v84 + 8) = v85;
      v86 = re::RenderGraphDataStore::get<re::CameraMatricesArray>(*(v101 + 146), *(*(v101 + 5) + 48));
      *&v107 = v101;
      *(&v107 + 1) = v9 + v82 - 880;
      if (!*(v86 + 24))
      {
        goto LABEL_92;
      }

      *&v108 = *(v86 + 40);
      *(&v108 + 1) = v98;
      *&v109 = v99;
      *(&v109 + 1) = v84;
      v110 = (v83 + v79);
      LOWORD(v111) = *(this + 132);
      BYTE2(v111) = 0;
      BYTE4(v111) = *(v9 + v82 - 4);
      if (BYTE4(v111) == 1)
      {
        DWORD2(v111) = *(v9 + v82);
      }

      v112 = v97;
      re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(&v107, v87, v88, v89, v90, v91);
      ++v38;
      v3 = v103;
      v80 += 16;
      v79 += 320;
      v82 += 960;
      v81 = v96;
      if (*(v103 + 16) <= v38)
      {
        goto LABEL_86;
      }
    }

LABEL_90:
    *v121 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v128[0]) = 136315906;
    *(v128 + 4) = "operator[]";
    WORD6(v128[0]) = 1024;
    *(v128 + 14) = 476;
    WORD1(v128[1]) = 2048;
    *(&v128[1] + 4) = v38;
    WORD6(v128[1]) = 2048;
    *(&v128[1] + 14) = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_91:
    *v121 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v128[0]) = 136315906;
    *(v128 + 4) = "operator[]";
    WORD6(v128[0]) = 1024;
    *(v128 + 14) = 468;
    WORD1(v128[1]) = 2048;
    *(&v128[1] + 4) = v38;
    WORD6(v128[1]) = 2048;
    *(&v128[1] + 14) = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_92:
    v106 = 0;
    v129 = 0u;
    v130 = 0u;
    memset(v128, 0, sizeof(v128));
    v14 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v121 = 136315906;
    *&v121[4] = "operator[]";
    v122 = 1024;
    v123 = 797;
    v124 = 2048;
    v125 = 0;
    v126 = 2048;
    v127 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_93:
    re::internal::assertLog(6, v72, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v9);
    _os_crash();
    __break(1u);
    goto LABEL_94;
  }

LABEL_86:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v105);
}

void *re::allocInfo_RenderGraphCameraSetupNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0D78, "RenderGraphCameraSetupNode");
    __cxa_guard_release(&qword_1EE1C0D08);
  }

  return &unk_1EE1C0D78;
}

void re::initInfo_RenderGraphCameraSetupNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xC7B124D2A1079044;
  v18[1] = "RenderGraphCameraSetupNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C0D10, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C0D10);
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
      qword_1EE1C0D60 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "frustumCulling";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C0D68 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "isForShadowMap";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x10900000004;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C0D70 = v16;
      __cxa_guard_release(&qword_1EE1C0D10);
    }
  }

  *(this + 2) = 0x16000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C0D60;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphCameraSetupNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphCameraSetupNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphCameraSetupNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphCameraSetupNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::RenderGraphCameraSetupNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D14E70;
  *(v3 + 132) = 0;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 42) = 0;
  result = NAN;
  *(v3 + 43) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphCameraSetupNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D14E70;
  *(v1 + 132) = 0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 42) = 0;
  result = NAN;
  *(v1 + 43) = -1;
  return result;
}

void *re::allocInfo_RenderGraphMultiViewCameraSetupNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0D20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0E08, "RenderGraphMultiViewCameraSetupNode");
    __cxa_guard_release(&qword_1EE1C0D20);
  }

  return &unk_1EE1C0E08;
}

void re::initInfo_RenderGraphMultiViewCameraSetupNode(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0xAEB515AB82B4F4E8;
  v12[1] = "RenderGraphMultiViewCameraSetupNode";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C0D30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C0D30);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1C0D18;
      if (!qword_1EE1C0D18)
      {
        v8 = re::allocInfo_RenderGraphCameraSetupNode(v6);
        qword_1EE1C0D18 = v8;
        re::initInfo_RenderGraphCameraSetupNode(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "RenderGraphCameraSetupNode";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1C0D28 = v10;
      __cxa_guard_release(&qword_1EE1C0D30);
    }
  }

  *(this + 2) = 0x16000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C0D28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMultiViewCameraSetupNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::RenderGraphMultiViewCameraSetupNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *(v3 + 132) = 0;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 42) = 0;
  result = NAN;
  *(v3 + 43) = -1;
  *v3 = &unk_1F5D14F00;
  return result;
}

void re::internal::defaultDestruct<re::RenderGraphMultiViewCameraSetupNode>(uint64_t a1, uint64_t a2, id *a3)
{
  *a3 = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a3 + 34));

  re::RenderGraphNode::~RenderGraphNode(a3);
}

double re::internal::defaultConstructV2<re::RenderGraphMultiViewCameraSetupNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *(v1 + 132) = 0;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 42) = 0;
  result = NAN;
  *(v1 + 43) = -1;
  *v1 = &unk_1F5D14F00;
  return result;
}

void re::internal::defaultDestructV2<re::RenderGraphMultiViewCameraSetupNode>(id *a1)
{
  *a1 = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 34));

  re::RenderGraphNode::~RenderGraphNode(a1);
}

void re::RenderGraphCameraSetupNode::~RenderGraphCameraSetupNode(id *this)
{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMultiViewCameraSetupNode::~RenderGraphMultiViewCameraSetupNode(id *this)
{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D14E70;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D14FD8;
  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 1);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshRenderPassGroups>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D14FD8;
  re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
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
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<float,unsigned char,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 4) = *(v17 - 4);
                *(v18 + 8) = *v17;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
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
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = *(a1 + 16);
      *&v15[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v8 = *&v15[32];
      *(a1 + 24) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 2) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11[2] % *(a1 + 24));
            *(v12 + 8) = *(v11 - 1);
            v13 = *v11;
            *(v12 + 24) = *(v11 + 2);
            *(v12 + 16) = v13;
          }

          v11 += 5;
          --v10;
        }

        while (v10);
      }

      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

uint64_t re::RenderGraphDataStore::tryGet<re::MeshSortGroupCameraData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23MeshSortGroupCameraDataE";
  if (("N2re23MeshSortGroupCameraDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23MeshSortGroupCameraDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

void re::MeshSortGroupCameraData::~MeshSortGroupCameraData(re::MeshSortGroupCameraData *this)
{
  *this = &unk_1F5D15018;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);
}

{
  *this = &unk_1F5D15018;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::MeshSortingContext::MeshSortGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 24) = *(v8 + 24);
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshRenderPassGroups::RenderPassGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::MeshRenderPassGroups::RenderPassGroupSortData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v17 + 112) % *(a1 + 24));
                v13 = *&v31[16];
                v20 = *&v31[16] + v17;
                *(v19 + 8) = *(*&v31[16] + v17 + 8);
                v21 = *(v20 + 23);
                *(v19 + 16) = *(v20 + 16);
                *(v19 + 23) = v21;
                v22 = *(v20 + 32);
                *(v19 + 32) = v22;
                if (v22 == 1)
                {
                  v23 = *(v20 + 48);
                  v24 = *(v20 + 80);
                  *(v19 + 64) = *(v20 + 64);
                  *(v19 + 80) = v24;
                  *(v19 + 48) = v23;
                }

                *(v19 + 96) = *(v20 + 96);
                v16 = *&v31[32];
              }

              ++v18;
              v17 += 128;
            }

            while (v18 < v16);
          }

          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + (v5 << 7));
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + (v5 << 7));
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + (v5 << 7);
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v28 + 112) = a3;
  *(v29 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v25 + (v5 << 7);
}

BOOL re::anonymous namespace::shouldDrawMeshForCamera(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  v5 = *(a1 + 8);
  if ((*(a2 + 524) & *(v5 + 904)) == 0 || *(a1 + 65) == 1 && *(v5 + 873) == 1 && *(a2 + 689) != 1)
  {
    return 0;
  }

  if (a5)
  {
    v10 = *(a2 + 520);
  }

  else
  {
    if (!a3)
    {
      return (*(a1 + 68) != 1 || *(a1 + 72) == *(a2 + 520)) && (*(a1 + 65) != 1 || (*(v5 + 873) & 1) != 0 || *(a2 + 715) == 1);
    }

    v11 = *(a2 + 512);
    v19 = *(a2 + 520);
    v18 = v11;
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v19) ^ ((0xBF58476D1CE4E5B9 * v19) >> 27));
    re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a3 + 56, &v19, v12 ^ (v12 >> 31), v20);
    if (v21 == 0x7FFFFFFF)
    {
      v10 = 0;
    }

    else
    {
      v13 = *(a3 + 72) + 72 * v21;
      v14 = v13 + 8;
      v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v13 + 16, &v18, v15 ^ (v15 >> 31), v20);
      if (v21 == 0x7FFFFFFF)
      {
        v16 = 0;
      }

      else
      {
        v16 = (*(v14 + 24) + 32 * v21 + 16);
      }

      if (!v16)
      {
        v16 = v14;
      }

      v10 = *v16;
    }
  }

  *a4 = v10;
  return (*(a1 + 68) != 1 || *(a1 + 72) == *(a2 + 520)) && (*(a1 + 65) != 1 || (*(v5 + 873) & 1) != 0 || *(a2 + 715) == 1);
}

uint64_t re::RenderGraphDataStore::get<re::CameraArrayData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re15CameraArrayDataE";
  if (("N2re15CameraArrayDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re15CameraArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

void re::CameraMatricesArray::~CameraMatricesArray(re::CameraMatricesArray *this)
{
  re::DynamicArray<re::CameraMatrices>::deinit(this + 8);
}

{
  re::DynamicArray<re::CameraMatrices>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::CameraMatrices>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::CameraMatrices>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
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
        v10 = 176 * v9;
        v11 = v7;
        do
        {
          re::CameraMatrices::CameraMatrices(v11, v8);
          re::DynamicArray<unsigned long>::deinit(v8 + 88);
          re::DynamicArray<unsigned long>::deinit(v8 + 48);
          re::DynamicArray<unsigned long>::deinit(v8 + 8);
          v8 += 176;
          v11 += 176;
          v10 -= 176;
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

uint64_t re::CameraMatrices::CameraMatrices(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  *result = &unk_1F5D03790;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
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
  LODWORD(v10) = *(a2 + 128);
  *(result + 128) = v10;
  if (v10 == 1)
  {
    *(result + 144) = *(a2 + 144);
  }

  *(result + 160) = *(a2 + 160);
  return result;
}

uint64_t re::DynamicArray<re::CameraMatrices>::deinit(uint64_t a1)
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
        v5 = 176 * v4;
        v6 = v3 + 88;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 176;
          v5 -= 176;
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

uint64_t re::RenderGraphDataStore::tryGet<re::MeshPassInfoArrayData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re21MeshPassInfoArrayDataE";
  if (("N2re21MeshPassInfoArrayDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re21MeshPassInfoArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
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

void re::MeshPassInfoArrayData::~MeshPassInfoArrayData(re::MeshPassInfoArrayData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::get<re::CameraMatricesArray>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re19CameraMatricesArrayE";
  if (("N2re19CameraMatricesArrayE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re19CameraMatricesArrayE" & 0x7FFFFFFFFFFFFFFFLL);
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

void re::RenderGraphEmitterRegistry::~RenderGraphEmitterRegistry(re::RenderGraphEmitterRegistry *this)
{
  v1 = this;
  {
    if (this)
    {
      re::introspect<re::RenderGraphEmitterBase>(BOOL)::info = re::introspect_RenderGraphEmitterBase(0);
    }
  }

  v2 = *(re::introspect<re::RenderGraphEmitterBase>(BOOL)::info + 8);
  v3 = *v2;
  if (**v2 != 2)
  {
    v4 = (v2 + 1);
    do
    {
      v5 = *v4++;
      v3 = v5;
    }

    while (*v5 != 2);
  }

  *(v3 + 1) = 0;
  v6 = *(v1 + 2);
  if (v6)
  {
    v7 = *(v1 + 4);
    v8 = 40 * v6;
    do
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = re::globalAllocators(this);
        this = (*(*v10[2] + 40))(v10[2], v9);
      }

      *v7 = 0;
      v7 += 5;
      v8 -= 40;
    }

    while (v8);
  }

  re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(v1);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 5);
  re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(v1);
}

uint64_t re::RenderGraphEmitterRegistry::init(re::RenderGraphEmitterRegistry *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 112, 8);
  result = re::RenderGraphEmitterRegistry::RenderGraphEmitterRegistry(v2);
  re::RenderGraphEmitterRegistry::m_instance = result;
  return result;
}

re *re::internal::destroyPersistent<re::RenderGraphEmitterRegistry>(re *result, uint64_t a2, re::RenderGraphEmitterRegistry *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::RenderGraphEmitterRegistry::~RenderGraphEmitterRegistry(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::RenderGraphEmitterRegistry::registerEmitter(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = re::introspectionSharedMutex(a1);
  v24 = 0;
  lock = (a1 + 104);
  v22 = 0;
  std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(&v23, &lock);
  v4 = (**a2)(a2, 1);
  v5 = (*(*a2 + 8))(a2);
  v6 = (*(*a2 + 16))(a2);
  v7 = strlen(v6);
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], v7 + 1, 0);
  memcpy(v9, v6, v7 + 1);
  v10 = strlen(v9);
  if (v10)
  {
    MurmurHash3_x64_128(v9, v10, 0, &v25);
    v11 = &v25.var1[64 * *&v25.var0 - 0x61C8864680B583E9 + (*&v25.var0 >> 2)] ^ *&v25.var0;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  *&v25.var0 = v9;
  v25.var1 = v4;
  v26 = 0;
  v27 = v11;
  v28 = v5;
  re::DynamicArray<re::IntrospectionPolymorphicType>::add(a1, &v25);
  re::SerializedReference<re::IntrospectionBase const*>::reset(&v25.var1);
  *(a1 + 88) = *(a1 + 16);
  *(a1 + 96) = *(a1 + 32);
  v19 = *(v4 + 32);
  if (v6)
  {
    v12 = *v6;
    if (*v6)
    {
      v13 = v6[1];
      if (v13)
      {
        v14 = (v6 + 2);
        do
        {
          v12 = 31 * v12 + v13;
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  *&v25.var0 = 2 * v12;
  v25.var1 = v6;
  if (*&v25.var0)
  {
    if (*&v25.var0)
    {
    }
  }

  *&v25.var0 = 0;
  v25.var1 = 0;
  v26 = 0;
  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 40, &v20, v17 ^ (v17 >> 31), &v25);
  if (HIDWORD(v25.var1) == 0x7FFFFFFF)
  {
    v18 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 40, v25.var1, *&v25.var0);
    *(v18 + 8) = v20;
    *(v18 + 16) = a2;
    ++*(a1 + 80);
  }

  if (v22 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  if (v24 == 1)
  {
    std::__shared_mutex_base::unlock(v23);
  }
}

void re::RenderGraphEmitterRegistry::registryItem(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2;
  os_unfair_lock_lock(this + 26);
  v5 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(&this[10], &v7);
  if (v5)
  {
    *(a3 + 8) = *v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  os_unfair_lock_unlock(this + 26);
}

uint64_t re::RenderGraphEmitterRegistry::RenderGraphEmitterRegistry(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0x7FFFFFFFLL;
  *(this + 88) = 0;
  v1 = this + 88;
  *(this + 96) = 0;
  *(this + 104) = 0;
  v2 = &unk_1EE187000;
  {
    v9 = this + 88;
    v10 = this;
    v2 = &unk_1EE187000;
    v8 = v7;
    v1 = v9;
    this = v10;
    if (v8)
    {
      re::introspect<re::RenderGraphEmitterBase>(BOOL)::info = re::introspect_RenderGraphEmitterBase(0);
      v2 = &unk_1EE187000;
      v1 = v9;
      this = v10;
    }
  }

  v3 = *(v2[192] + 64);
  v4 = *v3;
  if (**v3 != 2)
  {
    v5 = (v3 + 1);
    do
    {
      v6 = *v5++;
      v4 = v6;
    }

    while (*v6 != 2);
  }

  *(v4 + 1) = v1;
  return this;
}

void re::DepthPatchNode::configure(re::DepthPatchNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 35))
  {
    re::AssetHandle::loadAsync((this + 272));
  }
}

void re::DepthPatchNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v112 = *MEMORY[0x1E69E9840];
  if (re::GraphicsFeatureFlags::enableDepthPatch(void)::onceToken != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if (re::GraphicsFeatureFlags::enableDepthPatch(void)::gEnableDepthPatch != 1)
    {
      return;
    }

    v4 = re::RenderGraphDataStore::tryGet<re::DepthPatchData>(*(a2 + 146), *(*(a2 + 5) + 48));
    if (!v4)
    {
      return;
    }

    v5 = v4;
    if (!*(v4 + 24))
    {
      return;
    }

    v6 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 34));
    if (!v6)
    {
      return;
    }

    v7 = *(v6 + 222);
    if (*(v5 + 88) == 1)
    {
      if ((atomic_load_explicit(&qword_1EE1C0EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0EA0))
      {
        _MergedGlobals_536 = re::hashString("DepthPatchStencilMask", v58);
        __cxa_guard_release(&qword_1EE1C0EA0);
      }

      re::RenderGraphContext::makeFullscreenDrawCall(a2, v7, "FullscreenDrawCall", 0, 0, 0, 0, 0, &v86);
      v8 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v95, _MergedGlobals_536);
      if (v9)
      {
        HIDWORD(v90) = *v8;
        if (!*(a2 + 338))
        {
          v10 = 0;
LABEL_11:
          v78 = 1;
          v79 = __const__ZN2re20FeatureStencilStates17getDepthPatchInfoENS0_15DepthPatchUsageE_kWriteStInfo;
          v80 = 0x80;
          re::encodeFullscreenDrawCall(&v86, "DepthPatchStencilMask", a2, v10, 0, &v78, 0);
          goto LABEL_12;
        }
      }

      else
      {
        re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
      }

      v10 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, this[2], "DepthPatchStencilMask");
      goto LABEL_11;
    }

LABEL_12:
    v11 = *(*a2 + 32);
    re::globalAllocators(v6);
    v12 = (*(*v11 + 32))(v11, 336, 16);
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0;
    *(v12 + 192) = 0;
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
    *(v12 + 224) = 0;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 176) = 0;
    *(v12 + 184) = v11;
    *(v12 + 232) = xmmword_1E304F3C0;
    *(v12 + 248) = 0;
    *(v12 + 252) = 10854;
    __asm { FMOV            V0.2S, #1.0 }

    *(v12 + 256) = _D0;
    *(v12 + 264) = 0;
    *(v12 + 272) = 0;
    *(v12 + 320) = 0;
    v18 = re::globalAllocators(v12)[2];
    v86.n128_u64[0] = &unk_1F5D15168;
    v88 = v18;
    v89 = &v86;
    v19 = (*(*v11 + 16))(v11, v12, &v86);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v86);
    *(v19 + 7) = v7;
    if ((atomic_load_explicit(&qword_1EE1C0EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0EB0))
    {
      qword_1EE1C0EA8 = re::hashString("DepthPatch", v57);
      __cxa_guard_release(&qword_1EE1C0EB0);
    }

    v20 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v19, qword_1EE1C0EA8);
    if (!v21)
    {
      re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
      goto LABEL_38;
    }

    v22 = *v20;
    v86 = 0uLL;
    v23 = *(a2 + 193);
    v87 = 0;
    v88 = v23;
    v89 = 0;
    v90 = v19;
    v91 = 0;
    v92 = -65280;
    v93 = v22;
    v94 = 0;
    v102 = 0;
    v101 = 0;
    v103 = 0;
    v104 = 0;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    memset(v100, 0, sizeof(v100));
    v105 = 25172350;
    v106 = 0x7FFFFFFFLL;
    v107 = 0xFFFFFFFFLL;
    v109 = 0;
    v108 = 0;
    v24 = (*(*v11 + 32))(v11, 328, 8);
    re::DrawTable::DrawTable(v24, v11);
    v25 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(a2 + 146), *(*(a2 + 5) + 48));
    v26 = *a2;
    v27 = *(v25 + 160);
    v28 = *(v5 + 24);
    v75[0] = 0;
    v76 = 0;
    v77 = 0;
    re::addInstancedDrawCall(v24, &v86, v26, v27, v28, v75);
    if (!*(v5 + 24))
    {
      break;
    }

    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = *(v5 + 64);
      if (v31 <= v29)
      {
        break;
      }

      v32 = 0;
      v33 = *(v5 + 40) + 32 * v29;
      v34 = *v33;
      v35 = *(v33 + 16);
      v36 = vcgtq_f32(*v33, v35);
      v36.i32[3] = v36.i32[2];
      LODWORD(v33) = vmaxvq_u32(v36);
      v37.i64[0] = 0x3F0000003F000000;
      v37.i64[1] = 0x3F0000003F000000;
      v38 = vmulq_f32(vaddq_f32(v34, v35), v37);
      v39 = v38.i32[2];
      _NF = v33 < 0;
      v40 = v38.i64[0];
      if (_NF)
      {
        v39 = 0;
        v40 = 0;
      }

      *&v41 = v40;
      *(&v41 + 1) = __PAIR64__(1.0, v39);
      v42 = vsubq_f32(v35, v34);
      v42.i32[3] = 0;
      v43 = vmulq_f32(vmaxnmq_f32(v42, 0), v37);
      *&v44 = 0;
      *(&v44 + 1) = v43.u32[2];
      LODWORD(v45) = 0;
      HIDWORD(v45) = v43.i32[1];
      v46 = v43.i32[0];
      v47 = (*(v5 + 80) + (v29 << 6));
      v48 = *v47;
      v49 = v47[1];
      v50 = v47[2];
      v51 = v47[3];
      *v110 = v46;
      *&v110[16] = v45;
      *&v110[32] = v44;
      v111 = v41;
      do
      {
        *(&v81 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*&v110[v32])), v49, *&v110[v32], 1), v50, *&v110[v32], 2), v51, *&v110[v32], 3);
        v32 += 16;
      }

      while (v32 != 64);
      v61 = v82;
      v62 = v81;
      v59 = v84;
      v60 = v83;
      v52 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](v24 + 56, v29);
      *v52 = v62;
      v52[1] = v61;
      v52[2] = v60;
      v52[3] = v59;
      v29 = ++v30;
      if (*(v5 + 24) <= v30)
      {
        goto LABEL_22;
      }
    }

    v63[0] = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v110 = 136315906;
    *&v110[4] = "operator[]";
    *&v110[12] = 1024;
    *&v110[14] = 797;
    *&v110[18] = 2048;
    *&v110[20] = v29;
    *&v110[28] = 2048;
    *&v110[30] = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    dispatch_once(&re::GraphicsFeatureFlags::enableDepthPatch(void)::onceToken, &__block_literal_global_10_3);
  }

LABEL_22:
  if (*(v5 + 88))
  {
    if (*(this + 269))
    {
      v53 = &__const__ZN2re20FeatureStencilStates17getDepthPatchInfoENS0_15DepthPatchUsageE_kReadForImmersiveEnvironmentStInfo;
    }

    else
    {
      v53 = &__const__ZN2re20FeatureStencilStates17getDepthPatchInfoENS0_15DepthPatchUsageE_kReadStInfo;
    }

    v73 = *v53;
    v74 = *(v53 + 16);
    v54 = 1;
  }

  else
  {
    v54 = 0;
  }

  if (*(v24 + 5))
  {
    re::DrawTableSlice::DrawTableSlice(&v81, v24);
    v63[0] = "DepthPatchPass";
    v63[1] = &v81;
    v55 = *(v25 + 80);
    v63[2] = *(v25 + 40);
    v63[3] = v55;
    v63[4] = 0;
    v64 = *(v25 + 160);
    v65 = 0;
    v66 = 0;
    v67 = v54;
    if (v54)
    {
      v68 = v73;
      v69 = v74;
    }

    v70 = 0;
    if (*(a2 + 338))
    {
LABEL_38:
      v56 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, this[2], "DepthPatchPass");
    }

    else
    {
      v56 = 0;
    }

    v71 = v56;
    v72 = 0;
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v110);
    re::RenderGraphContext::encodeDrawCalls(a2, v110, v63);
  }
}

void *re::allocInfo_DepthPatchNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0EB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0EE0, "DepthPatchNode");
    __cxa_guard_release(&qword_1EE1C0EB8);
  }

  return &unk_1EE1C0EE0;
}

void re::initInfo_DepthPatchNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xF6EF85110940D60ELL;
  v18[1] = "DepthPatchNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C0EC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C0EC0);
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
      qword_1EE1C0EC8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "renderToSeparateTarget";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10D00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C0ED0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "depthPatchMaterial";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1C0ED8 = v16;
      __cxa_guard_release(&qword_1EE1C0EC0);
    }
  }

  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C0EC8;
  *(this + 9) = re::internal::defaultConstruct<re::DepthPatchNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DepthPatchNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::DepthPatchNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::DepthPatchNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::DepthPatchNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *(result + 66) = 1;
  *(result + 134) = 0;
  *result = &unk_1F5D150C0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::DepthPatchNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *(result + 66) = 1;
  *(result + 134) = 0;
  *result = &unk_1F5D150C0;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 34) = 0;
  return result;
}

void re::DepthPatchNode::~DepthPatchNode(id *this)
{
  *this = &unk_1F5D150C0;
  re::AssetHandle::~AssetHandle((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D150C0;
  re::AssetHandle::~AssetHandle((this + 34));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::DepthPatchNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15168;
  return result;
}

void *re::internal::Callable<re::DepthPatchNode::execute(re::RenderGraphContext &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D15168;
  return result;
}

__n128 re::RenderGraphEmitterBase::initRuntimeSettings@<Q0>(re::RenderGraphEmitterBase *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  re::RenderGraphEmitterRegistry::registryItem(re::RenderGraphEmitterRegistry::m_instance, a2, v10);
  if (v10[0])
  {
    v6 = (**v11)(v11, 0);
    re::makeBindNode(v6, this, &v12);
    if ((this + 16) != &v12)
    {
      re::BindNode::move((this + 16), &v12);
    }

    result.n128_f64[0] = re::BindNode::deinit(&v12);
    *a3 = 1;
  }

  else
  {
    re::DynamicString::format("Unregistered RenderGraphEmitter with typeHash %lu.", &v12, a2);
    result = v12;
    v8 = v13;
    v9 = v14;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
  }

  return result;
}

void re::RenderGraphEmitterBase::execute(re::RenderGraphEmitterBase *this, re::RenderManager *a2)
{
  v3 = this;
  v4 = *(a2 + 14);
  if (v4)
  {
    this = re::RenderFrameBox::get((v4 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v5 = this;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 524);
  if (v6 >= 2)
  {
    v7 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Only one workload per frame is currently supported. Only the last workload will be executed.", v8, 2u);
    }

    v6 = *(v5 + 524);
  }

  if (v6)
  {
    (*(*v3 + 48))(v3, a2, *(*(v5 + 526) + 8 * v6 - 8));
  }
}

uint64_t re::RenderGraphEmitterBase::execute(re::RenderGraphEmitterBase *this, re::RenderManager *a2, re::RenderFrameWorkload *a3)
{
  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = re::RenderFrameBox::get((v5 + 328), *(a3 + 19));
  }

  else
  {
    v6 = 0;
  }

  re::RenderFrameWorkload::beforeEmit(a3);
  v7 = *(*this + 56);

  return v7(this, v6);
}

uint64_t re::RenderGraphEmitterBase::setRuntimeSetting(re::BindNode **this, const re::IntrospectionBase *a2, const char *a3, char *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &str_67;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v22 >> 31) ^ (v22 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v22 >> 31) ^ (v22 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((this + 11), &v22, v8 ^ (v8 >> 31), v31);
  if (*&v31[12] == 0x7FFFFFFF)
  {
    *&v31[8] = 0;
    v32 = 0uLL;
    LODWORD(v33) = 0;
    *(&v33 + 1) = 0;
    *&v34[0] = 0;
    *(&v34[0] + 1) = &str_67;
    v21[0] = a3;
    v21[1] = strlen(a3);
    re::BindNode::bindPoint(this + 2, a2, v21, buf);
    *v31 = *buf;
    re::DynamicArray<re::RigDataValue>::operator=(&v31[8], &buf[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    v9 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
    v10 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      re::StringID::operator=(v34, &v22);
      re::DynamicArray<re::BindPointAndPath>::add(this + 6, v31);
      *buf = *(this + 16) - 1;
      v11 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((this + 11), &v22, buf);
      v12 = v11;
    }

    else
    {
      v13 = *re::graphicsLogObjects(v9);
      v11 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        *buf = 136315138;
        *&buf[4] = a3;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Failed to find binding path [%s].", buf, 0xCu);
      }

      v12 = 0;
    }

    if (v34[0])
    {
      if (v34[0])
      {
      }
    }

    *&v34[0] = 0;
    *(&v34[0] + 1) = &str_67;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v31[8]);
    v14 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v31[8]);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (this[13] + 32 * *&v31[12] + 24);
  }

  v15 = *v12;
  v16 = this[8];
  if (v16 <= v15)
  {
    v21[0] = 0;
    memset(v34, 0, sizeof(v34));
    v32 = 0u;
    v33 = 0u;
    *v31 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v25 = 1024;
    v26 = 789;
    v27 = 2048;
    v28 = v15;
    v29 = 2048;
    v30 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v17 = re::BindPoint::valueUntyped((this[10] + 64 * v15));
  *&v31[8] = 0;
  *&v32 = 0;
  if ((v14 & 1) == 0)
  {
    v19 = *re::graphicsLogObjects(v14);
    v14 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *v31 = 136315138;
      *&v31[4] = a3;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Failed to perform deep copy into binding path [%s].", v31, 0xCu);
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 1;
LABEL_18:
  if (v22)
  {
    if (v22)
    {
    }
  }

  return v18;
}

void *re::allocInfo_RenderGraphEmitterBase(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_537, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_537))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0F88, "RenderGraphEmitterBase");
    __cxa_guard_release(&_MergedGlobals_537);
  }

  return &unk_1EE1C0F88;
}

void re::initInfo_RenderGraphEmitterBase(re *this, re::IntrospectionBase *a2)
{
  v9[0] = 0xB2BF4B7174817E0ELL;
  v9[1] = "RenderGraphEmitterBase";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1C0F80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C0F80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = (*(*v6 + 32))(v6, 16, 8);
      *v7 = 2;
      *(v7 + 8) = 0;
      qword_1EE1C0F78 = v7;
      __cxa_guard_release(&qword_1EE1C0F80);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1C0F78;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void re::guided_filter_occlusion::encodeGuidedFilterOcclusionCommands(uint64_t a1)
{
  re::SyncMechanism::sync(*(a1 + 16));
  re::mtl::CommandBuffer::makeComputeCommandEncoder((a1 + 8), &v103);
  v2 = *(a1 + 48);
  [v103 setTexture:*v2 atIndex:0];
  [v103 setTexture:*(v2 + 8) atIndex:1];
  [v103 setTexture:*(v2 + 32) atIndex:2];
  v3 = *(*(a1 + 56) + 88);
  v4 = v103;
  [v4 setComputePipelineState:v3];

  v5 = [*(v2 + 32) width];
  v6 = [*(v2 + 32) height];
  v7.i64[0] = v5;
  v7.i64[1] = v6;
  v8 = vdupq_n_s64(0x3FB0000000000000uLL);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v7), v8)));
  v108 = 1;
  v98 = v8;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v103 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  v9 = *(a1 + 48);
  [v103 setTexture:*(v9 + 16) atIndex:0];
  [v103 setTexture:*(v9 + 48) atIndex:1];
  LODWORD(v110[0]) = *(*(re::RenderGraphDataStore::get<re::CameraMatrices>(*(*a1 + 1168), *(*(*a1 + 40) + 48)) + 80) + 56);
  [v103 setBytes:v110 length:4 atIndex:2];
  v10 = *(*(a1 + 56) + 104);
  v11 = v103;
  [v11 setComputePipelineState:v10];

  v12 = [*(v9 + 56) width];
  v13 = [*(v9 + 56) height];
  v14.i64[0] = v12;
  v14.i64[1] = v13;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v14), v98)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v103 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  [v103 endEncoding];
  re::SyncMechanism::sync(*(a1 + 16));
  v15 = *(*(a1 + 32) + 16);
  v16 = *(a1 + 8);
  v17 = *(v9 + 56);
  v18 = *(v9 + 48);
  v19 = v16;
  v20 = v15;
  [v20 encodeToCommandBuffer:v19 sourceTexture:v18 destinationTexture:v17];

  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  re::mtl::CommandBuffer::makeComputeCommandEncoder((a1 + 8), v110);
  [v110[0] setTexture:*(*(a1 + 24) + 16) atIndex:0];
  [v110[0] setTexture:*(*(a1 + 24) + 24) atIndex:1];
  [v110[0] setTexture:*(v21 + 88) atIndex:2];
  [v110[0] setBytes:*(a1 + 24) + 48 length:64 atIndex:3];
  v23 = *(*(a1 + 56) + 80);
  v24 = v110[0];
  [v24 setComputePipelineState:v23];

  v25 = *(*(a1 + 24) + 160);
  v26.i64[0] = v25;
  v26.i64[1] = HIDWORD(v25);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v26), v98)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  [v110[0] endEncoding];
  re::SyncMechanism::sync(*(a1 + 16));
  v27 = *(a1 + 8);
  v28 = *(v21 + 80);
  v29 = *(*(a1 + 32) + 24);
  v30 = *(v21 + 88);
  v31 = v27;
  v32 = v29;
  [v32 encodeToCommandBuffer:v31 sourceTexture:v30 destinationTexture:v28];

  re::SyncMechanism::sync(*(a1 + 16));
  v33 = *(*(a1 + 32) + 40);
  v34 = *(a1 + 8);
  v35 = *(v22 + 24);
  v36 = *(v21 + 80);
  v37 = v34;
  v38 = v33;
  [v38 encodeToCommandBuffer:v37 sourceTexture:v36 destinationTexture:v35];

  re::SyncMechanism::sync(*(a1 + 16));
  v39 = *(a1 + 48);
  v40 = objc_alloc(MEMORY[0x1E6974568]);
  v41 = *(*(a1 + 24) + 112);
  v42 = [v40 initWithDevice:*(*(*a1 + 8) + 208) kernelWidth:v41 kernelHeight:v41];
  v43 = *(a1 + 8);
  v44 = *(v39 + 32);
  v45 = *(v39 + 40);
  v46 = v44;
  v47 = v43;
  [v42 encodeToCommandBuffer:v47 sourceTexture:v46 destinationTexture:v45];

  re::SyncMechanism::sync(*(a1 + 16));
  v48 = *(a1 + 48);
  re::mtl::CommandBuffer::makeComputeCommandEncoder((a1 + 8), v110);
  [v110[0] setTexture:*(v48 + 32) atIndex:0];
  [v110[0] setTexture:*(v48 + 40) atIndex:1];
  [v110[0] setTexture:*(v48 + 16) atIndex:2];
  [v110[0] setTexture:*(v48 + 24) atIndex:3];
  [v110[0] setTexture:*(v48 + 56) atIndex:4];
  LODWORD(v102) = *(*(re::RenderGraphDataStore::get<re::CameraMatrices>(*(*a1 + 1168), *(*(*a1 + 40) + 48)) + 80) + 56);
  [v110[0] setBytes:&v102 length:4 atIndex:0];
  [v110[0] setTexture:*(v48 + 64) atIndex:5];
  v49 = *(*(a1 + 56) + 96);
  v50 = v110[0];
  [v50 setComputePipelineState:v49];

  v51 = [*(v48 + 64) width];
  v52 = [*(v48 + 64) height];
  v53.i64[0] = v51;
  v53.i64[1] = v52;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v53), v98)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  [v110[0] endEncoding];

  re::SyncMechanism::sync(*(a1 + 16));
  v102 = *(*(a1 + 40) + 8);
  v101 = *(*(a1 + 40) + 32);
  if ((*(a1 + 65) & 1) != 0 || *(a1 + 64) == 1)
  {
    NS::SharedPtr<MTL::Buffer>::operator=(&v102, *(a1 + 40));
    NS::SharedPtr<MTL::Buffer>::operator=(&v101, (*(a1 + 40) + 24));
  }

  re::mtl::CommandBuffer::makeComputeCommandEncoder((a1 + 8), &v100);
  v54 = *(a1 + 48);
  v55 = *(*(a1 + 24) + 176);
  [v100 setTexture:*(v54 + 64) atIndex:0];
  [v100 setTexture:*(v54 + 96) atIndex:1];
  v56 = *(a1 + 24);
  LOWORD(v110[0]) = *(v56 + 128);
  HIDWORD(v110[0]) = *(v56 + 152);
  [v100 setBytes:v110 length:8 atIndex:0];
  v57 = *(*(a1 + 56) + 64);
  v58 = v100;
  [v58 setComputePipelineState:v57];

  v59.i64[0] = v55;
  v59.i64[1] = HIDWORD(v55);
  v99 = vdupq_n_s64(0x3FB0000000000000uLL);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v59), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v100 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  v60 = *(a1 + 48);
  v61 = *(*(a1 + 24) + 176);
  [v100 setTexture:*(v60 + 64) atIndex:0];
  [v100 setTexture:*(v60 + 104) atIndex:1];
  v62 = *(*(a1 + 56) + 72);
  v63 = v100;
  [v63 setComputePipelineState:v62];

  v59.i64[0] = v61;
  v59.i64[1] = HIDWORD(v61);
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v59), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v100 dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  [v100 endEncoding];
  re::SyncMechanism::sync(*(a1 + 16));
  v64 = *(a1 + 40);
  v65 = *(a1 + 8);
  v66 = v64[3];
  v67 = *(*(a1 + 48) + 104);
  v68 = *v64;
  v69 = **(a1 + 32);
  v70 = *(*(a1 + 48) + 96);
  v71 = v66;
  v72 = v67;
  v73 = v65;
  v74 = v69;
  [v74 encodeRegressionToCommandBuffer:v73 sourceTexture:v72 guidanceTexture:v71 weightsTexture:v70 destinationCoefficientsTexture:v68];

  re::SyncMechanism::sync(*(a1 + 16));
  v75 = *(a1 + 40);
  v76 = *(a1 + 24);
  v77 = *(v76 + 136);
  LODWORD(v61) = *(v76 + 140);
  re::mtl::CommandBuffer::makeComputeCommandEncoder((a1 + 8), v110);
  [v110[0] setTexture:*(v75 + 24) atIndex:0];
  [v110[0] setTexture:v101 atIndex:1];
  [v110[0] setTexture:*v75 atIndex:2];
  [v110[0] setTexture:v102 atIndex:3];
  [v110[0] setTexture:*(v75 + 16) atIndex:6];
  v109 = v77;
  [v110[0] setBytes:&v109 length:4 atIndex:7];
  v104 = v61;
  [v110[0] setBytes:&v104 length:4 atIndex:8];
  v78 = *(*(a1 + 56) + 56);
  v79 = v110[0];
  [v79 setComputePipelineState:v78];

  v80 = [*(v75 + 16) width];
  v81 = [*(v75 + 16) height];
  v82.i64[0] = v80;
  v82.i64[1] = v81;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v82), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  [v110[0] endEncoding];

  re::SyncMechanism::sync(*(a1 + 16));
  v83 = *(a1 + 48);
  v84 = *(a1 + 8);
  v85 = *(v83 + 80);
  v86 = *(v83 + 112);
  v87 = **(a1 + 32);
  v88 = *(*(a1 + 40) + 16);
  v89 = v85;
  v90 = v84;
  v91 = v87;
  [v91 encodeReconstructionToCommandBuffer:v90 guidanceTexture:v89 coefficientsTexture:v88 destinationTexture:v86];

  re::SyncMechanism::sync(*(a1 + 16));
  v92 = *(a1 + 48);
  re::mtl::CommandBuffer::makeComputeCommandEncoder((a1 + 8), v110);
  [v110[0] setTexture:*(v92 + 112) atIndex:0];
  [v110[0] setTexture:*(v92 + 120) atIndex:1];
  v109 = (*(*(a1 + 24) + 156) * 5.0) + 1.0;
  [v110[0] setBytes:&v109 length:4 atIndex:2];
  v93 = *(*(a1 + 56) + 48);
  v94 = v110[0];
  [v94 setComputePipelineState:v93];

  v95 = [*(v92 + 120) width];
  v96 = [*(v92 + 120) height];
  v97.i64[0] = v95;
  v97.i64[1] = v96;
  v107 = vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vcvtq_f64_u64(v97), v99)));
  v108 = 1;
  v105 = re::guided_filter_occlusion::kDefaulThreadsPerGroup;
  v106 = 1;
  [v110[0] dispatchThreadgroups:&v107 threadsPerThreadgroup:&v105];
  [v110[0] endEncoding];

  re::SyncMechanism::sync(*(a1 + 16));
  if (v101)
  {
  }

  if (v102)
  {
  }
}

void re::RenderGraphTonemapNode::execute(re::RenderGraphTonemapNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v38, 5060, 0);
  if ((*(this + 532) & 1) == 0)
  {
    re::TonemapUserParameters::computeRenderParameters((this + 472), buf);
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x84uLL, 4uLL, &v39);
    v19 = v41;
    v20 = v40;
    v21 = v39 + v40;
    *(v21 + 80) = v34;
    *(v21 + 96) = v35;
    *(v21 + 112) = v36;
    *(v21 + 128) = v37;
    *(v21 + 16) = v30;
    *(v21 + 32) = v31;
    *(v21 + 48) = v32;
    *(v21 + 64) = v33;
    *v21 = *buf;
    v22 = *a2;
    v28 = 0x1C6D7B14F4E32CD0;
    v39 = v19;
    LODWORD(v40) = 0;
    v41 = v20;
    v16 = (v22 + 480);
    v17 = &v28;
    v18 = &v39;
    goto LABEL_6;
  }

  if ((atomic_load_explicit(&qword_1EE1C1020, memory_order_acquire) & 1) == 0)
  {
    v25 = __cxa_guard_acquire(&qword_1EE1C1020);
    if (v25)
    {
      _MergedGlobals_538 = re::getCombinedScopeHash(v25, v26, v27);
      __cxa_guard_release(&qword_1EE1C1020);
    }
  }

  v4 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(*(a2 + 146), _MergedGlobals_538);
  if (v4)
  {
    v5 = v4;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x84uLL, 4uLL, buf);
    v6 = v30;
    v7 = *&buf[8];
    v8 = *buf + *&buf[8];
    *v8 = *(v5 + 8);
    v9 = *(v5 + 24);
    v10 = *(v5 + 40);
    v11 = *(v5 + 72);
    *(v8 + 48) = *(v5 + 56);
    *(v8 + 64) = v11;
    *(v8 + 16) = v9;
    *(v8 + 32) = v10;
    v12 = *(v5 + 88);
    v13 = *(v5 + 104);
    v14 = *(v5 + 120);
    *(v8 + 128) = *(v5 + 136);
    *(v8 + 96) = v13;
    *(v8 + 112) = v14;
    *(v8 + 80) = v12;
    v15 = *a2;
    v39 = 0x1C6D7B14F4E32CD0;
    *buf = v6;
    *&buf[8] = 0;
    *&v30 = v7;
    v16 = (v15 + 480);
    v17 = &v39;
    v18 = buf;
LABEL_6:
    re::BufferTable::setBuffer(v16, v17, v18);
    re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
    v23 = *a2;
    *buf = 0x1C6D7B14F4E32CD0;
    re::BufferTable::removeBuffer((v23 + 480), buf);
    goto LABEL_7;
  }

  v24 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "RenderGraphTonemapNode expects TonemapParametersData from the render graph data store but there isn't any. Will skip the execution.", buf, 2u);
  }

LABEL_7:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v38);
}

void *re::allocInfo_RenderGraphTonemapNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1028))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1050, "RenderGraphTonemapNode");
    __cxa_guard_release(&qword_1EE1C1028);
  }

  return &unk_1EE1C1050;
}

void re::initInfo_RenderGraphTonemapNode(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 0xB3170E0D645236E8;
  v17[1] = "RenderGraphTonemapNode";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1C1030, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1030);
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
      qword_1EE1C1038 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_TonemapUserParameters(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "tonemapUserParameters";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1D800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1C1040 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "tonemappingSharedParamsEnabled";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x21400000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1C1048 = v15;
      __cxa_guard_release(&qword_1EE1C1030);
    }
  }

  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C1038;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphTonemapNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphTonemapNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphTonemapNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphTonemapNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

void re::RenderGraphTonemapNode::~RenderGraphTonemapNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

double re::RenderGraphTonemapNode::RenderGraphTonemapNode(re::RenderGraphTonemapNode *this)
{
  *(this + 58) = 0;
  v1 = (this + 472);
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
  v2 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v2 = &unk_1F5D15220;
  result = 0.00000175476111;
  *v1 = xmmword_1E3054790;
  v1[1] = xmmword_1E304F3C0;
  *(v2 + 504) = 0;
  *(v2 + 508) = 0x3F8000003F800000;
  *(v2 + 516) = 0;
  *(v2 + 65) = 0x3F80000000000000;
  *(v2 + 528) = 0;
  *(v2 + 532) = 0;
  return result;
}

uint64_t re::encodeMeshPassForPortal(uint64_t a1, uint64_t a2)
{
  v4 = *(**(a2 + 64) + 32);
  v5 = (*(*v4 + 32))(v4, 328, 8);
  re::DrawTable::DrawTable(v5, *(**(a2 + 64) + 32));
  v6 = *(a2 + 64);
  v7 = *(a2 + 8);
  if (*(v7 + 16))
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = (v7 + 17);
  }

  if (*(v6 + 1352))
  {
    v9 = re::DrawCallRecorder::allocateDrawCallRecorderGroup((v6 + 1352), v8, "encodeMeshPassForPortal");
  }

  else
  {
    v9 = 0;
  }

  result = re::makePortalSurfaceDrawcall(a2, v5, v9, 0);
  if (*(v5 + 5))
  {
    v11 = re::RenderGraphDataStore::get<re::CameraMatrices>(*(*(a2 + 64) + 1168), *(*(*(a2 + 64) + 40) + 48));
    re::DrawTableSlice::DrawTableSlice(v22, v5);
    v13[0] = *(a2 + 24);
    v13[1] = v22;
    v12 = *(v11 + 80);
    v13[2] = *(v11 + 40);
    v13[3] = v12;
    v13[4] = 0;
    v14 = *(v11 + 160);
    v15 = 2;
    v16 = 256;
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = 0;
    v20 = v9;
    v21 = 0;
    return re::RenderGraphContext::encodeDrawCalls(*(a2 + 64), a1, v13);
  }

  return result;
}

uint64_t re::makePortalSurfaceDrawcall(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v5 = a1;
  v142 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (*(v6 + 16))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = (v6 + 17);
  }

  v8 = *a1;
  v9 = v111;
  v10 = 0x9E3779B97F4A7C17;
  v11 = strlen(v7);
  v12 = 0x9E3779B97F4A7C17;
  if (v11)
  {
    MurmurHash3_x64_128(v7, v11, 0, &v121);
    v12 = (((*(&v121 + 1) - 0x61C8864680B583E9 + (v121 << 6) + (v121 >> 2)) ^ v121) - 0x61C8864680B583E9);
  }

  if ((atomic_load_explicit(&qword_1EE1C10F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v13 = *(v5 + 64);
    v14 = qword_1EE1C10E8;
    v15 = strlen(*(v5 + 16));
    if (v15)
    {
      MurmurHash3_x64_128(*(v5 + 16), v15, 0, &v121);
      v10 += (*(v9 + 232) + v10 + (*(v9 + 224) << 6) + (*(v9 + 224) >> 2)) ^ *(v9 + 224);
    }

    v16 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(*(v13 + 1168), ((v14 >> 2) + (v14 << 6) + v10) ^ v14);
    v17 = v16 + 8;
    if (!v16)
    {
      v17 = 0;
    }

    v93 = v17;
    if ((atomic_load_explicit(&qword_1EE1C1100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1100))
    {
      qword_1EE1C10F8 = re::hashString("RenderGraphDataPipeData", v81);
      __cxa_guard_release(&qword_1EE1C1100);
    }

    v94 = re::RenderGraphDataStore::tryGet<re::MeshSortingCollection>(*(*(v5 + 64) + 1168), (&v12[4 * qword_1EE1C10F8] + (qword_1EE1C10F8 >> 2)) ^ qword_1EE1C10F8);
    v84 = re::RenderGraphDataStore::tryGet<re::MeshSortGroupCameraData>(*(*(v5 + 64) + 1168), *(*(*(v5 + 64) + 40) + 48));
    result = re::RenderGraphDataStore::get<re::CameraData>(*(*(v5 + 64) + 1168), *(*(*(v5 + 64) + 40) + 48));
    v102 = result;
    v111[0] = v8 + 32;
    v20 = *(v8 + 144);
    v111[1] = *v20;
    v21 = *(v8 + 40);
    v111[2] = v20[1];
    v112[0] = 0;
    v112[1] = v21;
    v113 = xmmword_1E3047670;
    v114 = xmmword_1E3047680;
    *(v9 + 80) = xmmword_1E30476A0;
    *(v9 + 96) = xmmword_1E30474D0;
    *(v9 + 112) = 0;
    *(v9 + 120) = 0;
    if (*(v8 + 88))
    {
      break;
    }

    *(v9 + 128) = v112;
    *(v9 + 136) = 1;
    v82 = 1;
LABEL_16:
    v22 = 0;
    v97 = (v8 + 544);
    v12 = &v121;
    if (v4)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v85 = v23;
    __asm { FMOV            V9.2S, #1.0 }

    v92 = v5;
    while (1)
    {
      v110[0] = v111;
      v110[1] = v22;
      v83 = v22;
      v29 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v110, v19);
      v31 = 0;
      v32 = *(v8 + 160);
      v33 = *(v8 + 176);
      v34 = *(v8 + 192);
      v35 = *(v8 + 208);
      v36 = v29[2];
      v37 = v29[3];
      v38 = v29[4];
      *(v9 + 144) = v29[1];
      *(v9 + 160) = v36;
      *(v9 + 176) = v37;
      *(v9 + 192) = v38;
      do
      {
        *&v122[v31 * 8 - 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v117[v31 - 1])), v33, v117[v31 - 1], 1), v34, *&v117[v31 - 1], 2), v35, *&v117[v31 - 1], 3);
        v31 += 2;
      }

      while (v31 != 8);
      v90 = *(v9 + 240);
      v91 = *(v9 + 224);
      v88 = *(v9 + 272);
      v89 = *(v9 + 256);
      v39 = *v110[0];
      v40 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::renderGroupInstance(v110, v30);
      result = re::Slice<re::internal::BindPointImplBase const*>::range(v39, *v40, v40[1]);
      v95 = v19;
      v96 = result;
      if (v19)
      {
        break;
      }

LABEL_83:
      v22 = v83 + 1;
      if (v83 + 1 == v82)
      {
        return result;
      }
    }

    v41 = 0;
    v4 = 0;
    while (1)
    {
      v42 = *(v96 + 8 * v4);
      v43 = re::MeshScene::RenderGroupInstanceIteration::RenderGroupInstanceIterItem::materialIndexForPart(v110, v4);
      v44 = v43;
      if (v4 >= *(v8 + 56))
      {
        v100 = 0;
      }

      else
      {
        v100 = *(*(v8 + 48) + 4 * v4);
      }

      if (v4 >= *(v8 + 72))
      {
        v99 = 0;
      }

      else
      {
        v99 = *(*(v8 + 64) + 8 * v4);
      }

      re::globalAllocators(v43);
      v45 = *(**(v5 + 64) + 32);
      v10 = (*(*v45 + 32))(v45, 336, 16);
      v46 = *(**(v5 + 64) + 32);
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0u;
      *(v10 + 48) = 0;
      *(v10 + 120) = 0;
      *(v10 + 104) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 192) = 0;
      *(v10 + 200) = 0;
      *(v10 + 208) = 0;
      *(v10 + 224) = 0;
      *(v10 + 176) = 0;
      *(v10 + 184) = v46;
      *(v10 + 144) = 0u;
      *(v10 + 160) = 0u;
      *(v10 + 128) = 0u;
      *(v10 + 232) = xmmword_1E304F3C0;
      *(v10 + 248) = 0;
      *(v10 + 252) = 10854;
      *(v10 + 256) = _D9;
      *(v10 + 264) = 0;
      *(v10 + 272) = 0;
      *(v10 + 320) = 0;
      *(v9 + 248) = re::globalAllocators(v10)[2];
      *(v9 + 256) = &v121;
      *(v9 + 224) = &unk_1F5D152C8;
      v47 = (*(*v45 + 16))(v45, v10, &v121);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v121);
      if (*(v8 + 232) > v44)
      {
        *(v47 + 56) = *(*(v8 + 224) + 8 * v44);
      }

      if (*(v8 + 336) > v44)
      {
        *(v47 + 64) = *(*(v8 + 328) + 8 * v44);
      }

      if (*(v8 + 320) > v44)
      {
        *(v47 + 72) = *(*(v8 + 312) + 8 * v44);
      }

      if (*(v8 + 368) > v44)
      {
        *(v47 + 80) = *(*(v8 + 360) + 8 * v44);
      }

      *(v47 + 88) = *(v8 + 376);
      *(v47 + 200) = *(v8 + 448);
      *(v47 + 256) = *(v8 + 508);
      v49 = 0;
      if (v94 && (v50 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v94, v97)) != 0)
      {
        v48 = v50;
        v51 = *(v50 + 8);
        if (v84)
        {
          v10 = v42;
          v52 = 0xBF58476D1CE4E5B9 * (*v50 ^ (*v50 >> 30));
          re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v84 + 8, v50, (0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) ^ ((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) >> 31), &v121);
          if (HIDWORD(v121) != 0x7FFFFFFF)
          {
            v49 = *(*(v84 + 24) + 40 * HIDWORD(v121) + 20);
          }
        }
      }

      else
      {
        v51 = 0;
      }

      v53 = *(v8 + 504);
      *&v54 = v53;
      DWORD1(v54) = *(v8 + 728);
      *(&v54 + 1) = *(v8 + 732);
      *(v47 + 232) = v54;
      *(v47 + 248) = *(v8 + 740);
      *(v47 + 252) = *(v8 + 744);
      v98 = v51;
      if ((*(v47 + 272) & 1) == 0)
      {
        v55 = 0uLL;
        if ((*(v8 + 576) & 1) == 0)
        {
          goto LABEL_52;
        }

        *(v47 + 272) = 1;
LABEL_50:
        v56 = *(v8 + 608);
        *(v47 + 288) = *(v8 + 592);
        *(v47 + 304) = v56;
        goto LABEL_51;
      }

      if (*(v8 + 576))
      {
        goto LABEL_50;
      }

      *(v47 + 272) = 0;
LABEL_51:
      v55 = 0uLL;
LABEL_52:
      *(v47 + 320) = *(v8 + 624);
      v5 = *(v8 + 450) != 0;
      v9 = v53 != 1.0 || *(v8 + 450) != 0;
      v57 = (*(v42 + 528) ^ *(*(v47 + 56) + 296)) & ~*(*(v47 + 56) + 300) | *(*(v47 + 56) + 300) & *(*(v47 + 56) + 296);
      v58 = *(v8 + 528);
      v101 = v42;
      if (v58)
      {
        if (v58 <= v4)
        {
          goto LABEL_86;
        }

        v59 = re::MaterialRenderFlags::flattenToOverrideFlags((*(v8 + 520) + v41));
        v55 = 0uLL;
        v57 = (v57 ^ v59) & ~HIDWORD(v59) | HIDWORD(v59) & v59;
      }

      v10 = *(v8 + 540);
      v60 = *(v8 + 536);
      if ((atomic_load_explicit(&qword_1EE1C1108, memory_order_acquire) & 1) == 0)
      {
        v77 = __cxa_guard_acquire(&qword_1EE1C1108);
        v55 = 0uLL;
        if (v77)
        {
          re::Defaults::BOOLValue("enableDitherForStencilPortals", v78, &v121);
          if (v121)
          {
            v79 = BYTE1(v121);
          }

          else
          {
            v79 = 1;
          }

          _MergedGlobals_539 = v79;
          __cxa_guard_release(&qword_1EE1C1108);
          v55 = 0uLL;
        }
      }

      v61 = (2 * v5) | _MergedGlobals_539 & v9 & 1;
      v5 = v92;
      if (*(v102 + 865) == 1)
      {
        v62 = *(v47 + 248);
        v63 = v62 <= 0.0;
        if (v62 > 1.0)
        {
          v63 = 1;
        }

        if ((v63 | *(v92 + 72)))
        {
          v64 = 128;
        }

        else
        {
          v64 = 192;
        }

        v61 |= v64;
      }

      if (*(v8 + 408))
      {
        v65 = v8 + 384;
      }

      else
      {
        v65 = 0;
      }

      v9 = v111;
      *&v121 = v65;
      *(&v121 + 1) = v93;
      *v122 = v55;
      *&v122[16] = v55;
      *&v122[32] = v55;
      *&v122[48] = v55;
      *&v123 = 0;
      WORD4(v123) = v61;
      *(v47 + 120) = v55;
      *(v47 + 104) = v121;
      if ((v47 + 104) != &v121)
      {
        v66 = *(v47 + 144);
        *&v122[8] = *(v47 + 128);
        v67 = *(v47 + 184);
        *&v122[56] = *(v47 + 176);
        *&v123 = v67;
        *(v47 + 128) = v55;
        *(v47 + 144) = v55;
        *&v122[24] = v66;
        v68 = *(v47 + 160);
        *(v47 + 160) = v55;
        *(v47 + 176) = v55;
        *&v122[40] = v68;
      }

      *(v47 + 192) = v61;
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v122[8]);
      result = re::MaterialParameterTableLayers::resolveTechniqueIndices(v47, v92[4]);
      if (!v19)
      {
        break;
      }

      v69 = *result;
      if (*result != -1)
      {
        v70 = 0;
        v121 = *v97;
        *v122 = v99;
        *&v122[8] = v101;
        *&v122[16] = v101 + 416;
        *&v122[24] = v47;
        *&v122[36] = 0xFFFF010000000000;
        *&v122[32] = v100;
        *&v122[44] = v69;
        v123 = v91;
        v124 = v90;
        v125 = v89;
        v126 = v88;
        v132 = 0;
        *&v122[48] = 0;
        v131 = 0;
        v133 = 0;
        v134 = 0;
        v127 = 0;
        v128 = 0;
        v130 = 0;
        v129 = 0;
        v135 = (v60 ^ v57) & ~v10 | v60 & v10;
        v136 = v98;
        v137 = 0x7FFFFFFF;
        v138 = v49;
        v139 = 0xFFFFFFFFLL;
        v140 = 0;
        v141 = 0;
        if (a3)
        {
          v73 = *(a3 + 64);
          v119 = 0;
          v117[1] = 0;
          v117[2] = 0;
          v118 = 0;
          v116 = v73;
          v117[0] = v73;
          re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity(v117, 0);
          ++v118;
          v74 = *v97;
          v75 = *(v101 + 496);
          v109[0] = 0;
          re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(&v116, v74, v75, v109);
          v76 = re::DrawCallRecorderGroup::recordDrawCallMeshPartsDetails(re::DrawCallMeshPartsDetails const&)::nextIndex++;
          v120 = v76;
          re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(a3 + 112, &v120, &v116);
          v70 = v120;
          re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v117);
        }

        v71 = *v92[8];
        v72 = *(v102 + 890);
        v103[0] = 1;
        v104 = v70;
        v105 = 256;
        v106 = *(v92 + 5);
        v107 = *(v92 + 56);
        v108 = 0;
        result = re::addDrawCall(a2, &v121, v71, v72, v103);
        *(result + 144) = v85;
        v9 = v111;
      }

      ++v4;
      v41 += 20;
      if (v95 == v4)
      {
        goto LABEL_83;
      }
    }

    re::internal::assertLog(6, 0, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_86:
    re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v58);
    _os_crash();
    __break(1u);
LABEL_87:
    if (__cxa_guard_acquire(&qword_1EE1C10F0))
    {
      qword_1EE1C10E8 = re::hashString("DynamicFunctionConstants", v80);
      __cxa_guard_release(&qword_1EE1C10F0);
    }
  }

  v115 = *(v8 + 80);
  v82 = *(v9 + 136);
  if (v82)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t re::encodeMaterialPassForPortalScene(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = *(result + 72);
    if (*(v2 + 338))
    {
      v3 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v2 + 169, *(result + 8), *(result + 16));
      v2 = *(v1 + 72);
    }

    else
    {
      v3 = 0;
    }

    v4 = (*(**(*v2 + 4) + 32))(*(*v2 + 4), 328, 8);
    re::DrawTable::DrawTable(v4, *(**(v1 + 72) + 32), 8uLL);
    re::makePortalSceneDrawcalls(v1, v4, v3);
    *(*(v1 + 72) + 1553) = 4;
    re::DrawTableSlice::DrawTableSlice(v16, v4);
    v7[0] = *(v1 + 16);
    v7[1] = v16;
    v5 = *(v1 + 56);
    v6 = *(v5 + 80);
    v7[2] = *(v5 + 40);
    v7[3] = v6;
    v7[4] = 0;
    v8 = *(v5 + 160);
    v9 = *(v1 + 68);
    v10 = 0;
    v11 = *(v1 + 69);
    v12 = 0;
    v13 = 0;
    v14 = v3;
    v15 = 0;
    result = re::RenderGraphContext::encodeDrawCalls(*(v1 + 72), *v1, v7);
    *(*(v1 + 72) + 1553) = 0;
  }

  return result;
}

uint64_t re::addPortalDrawcallByEntityId(uint64_t a1, uint64_t a2, re::Allocator **a3, char *a4, uint64_t a5, int a6, unsigned int a7, unsigned int a8, __int128 a9)
{
  v139 = __PAIR64__(a8, a7);
  *(&v141 + 1) = a5;
  v138 = a4;
  *(&v142 + 1) = a2;
  v241[6] = *MEMORY[0x1E69E9840];
  *(&v150 + 1) = a1;
  v10 = re::RenderGraphDataStore::tryGet<re::SceneScope>(a3[146], *(a3[5] + 6));
  v11 = re::RenderGraphDataStore::get<re::CameraData>(a3[146], *(a3[5] + 6));
  WORD3(v150) = 256;
  result = re::buildCullingFrustum(v11 + 64, (v11 + 144), *(v11 + 890), &v150 + 6, v198, v12, v13);
  if (v10)
  {
    if (*(v10 + 16))
    {
      v15 = *(v10 + 24);
    }

    else
    {
      v15 = (v10 + 17);
    }

    v16 = strlen(v15);
    if (v16)
    {
      MurmurHash3_x64_128(v15, v16, 0, &v223);
      v16 = ((v224 - 0x61C8864680B583E9 + (v223 << 6) + (v223 >> 2)) ^ v223);
    }

    result = re::RenderGraphContext::tryGetRenderGraphDataPipe(a3, v16);
    if (result)
    {
      result = (*(*result + 832))(result);
      v18 = *(result + 40);
      if (v18)
      {
        v19 = result;
        v20 = 0;
        *&v140 = a9;
        v133 = &v239;
        v134 = v236;
        v126 = &v228;
        v127 = &v231;
        v137 = a3 + 169;
        *&v142 = &v151 + 9;
        v122 = &v152;
        v123 = &v193;
        *&v17 = 16842752;
        *v132 = v17;
        *&v17 = 134217472;
        *v131 = v17;
        *&v17 = 50364417;
        *v124 = v17;
        v129 = result;
        v130 = v11;
        v128 = *(result + 40);
        do
        {
          result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v19, v20);
          v21 = result;
          if (*(result + 6972))
          {
            v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(&v150 + 1) ^ (*(&v150 + 1) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(&v150 + 1) ^ (*(&v150 + 1) >> 30))) >> 27));
            result = re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(result + 6944, &v150 + 1, v22 ^ (v22 >> 31), &v223);
            if (HIDWORD(v224) == 0x7FFFFFFF)
            {
              goto LABEL_155;
            }

            v23 = *(v21 + 6960) + 864 * HIDWORD(v224) + 16;
          }

          else
          {
            v32 = *(result + 16);
            if (!v32)
            {
              goto LABEL_155;
            }

            v33 = 864 * v32;
            v23 = result + 48;
            while (*(v23 - 16) != *(&v150 + 1))
            {
              v23 += 864;
              v33 -= 864;
              if (!v33)
              {
                goto LABEL_155;
              }
            }
          }

          if ((*(v23 + 556) & *(v11 + 904)) != 0)
          {
            LOBYTE(v143) = 1;
            BYTE1(v143) = BYTE4(v139);
            *(&v143 + 2) = v132[0];
            BYTE6(v143) = 0;
            HIBYTE(v143) = v139;
            v144 = 0;
            v145 = 0;
            v146 = *v140;
            if (v146 == 1)
            {
              v147 = *(v140 + 1);
            }

            v148 = 0;
            re::CameraData::CameraData(&v223, *(*a3 + 4));
            v24 = *(v23 + 8);
            v25 = *(*a3 + 4);
            *(&v140 + 1) = &unk_1F5D06A20;
            v172 = &unk_1F5D06A20;
            re::DynamicString::DynamicString(&v173, v24, v25);
            v169 = &unk_1F5D03570;
            *&v170 = LODWORD(v131[0]);
            *(&v170 + 1) = LODWORD(v131[0]);
            v26 = strlen(*(v23 + 8));
            v27 = 0x9E3779B97F4A7C17;
            if (v26)
            {
              MurmurHash3_x64_128(*(v23 + 8), v26, 0, v202);
              v27 = ((*&v202[8] - 0x61C8864680B583E9 + (*v202 << 6) + (*v202 >> 2)) ^ *v202) - 0x61C8864680B583E9;
            }

            *&v141 = v27;
            v28 = re::RenderGraphDataStore::get<re::CameraData>(a3[146], *(a3[5] + 6));
            re::DynamicString::operator=(&v224, (v28 + 8));
            re::DynamicInlineArray<re::RenderCamera,2ul>::operator=(&v226, (v28 + 48));
            if (&v223 != v28)
            {
              re::DynamicInlineArray<re::Projection,2ul>::copy(&v229, (v28 + 128));
              ++v230;
            }

            re::DynamicInlineArray<re::Matrix4x4<float>,2ul>::operator=(&v232, (v28 + 624));
            re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(&v234, (v28 + 768));
            v30 = *(v28 + 832);
            v29 = *(v28 + 848);
            v31 = *(v28 + 816);
            *(v134 + 42) = *(v28 + 858);
            v134[1] = v30;
            v134[2] = v29;
            *v134 = v31;
            if (v237)
            {
              if ((*(v28 + 876) & 1) == 0)
              {
                v237 = 0;
                goto LABEL_31;
              }

LABEL_30:
              v238 = *(v28 + 880);
            }

            else if (*(v28 + 876))
            {
              v237 = 1;
              goto LABEL_30;
            }

LABEL_31:
            v34 = *(v28 + 884);
            *(v133 + 13) = *(v28 + 897);
            *v133 = v34;
            re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v241, v28 + 920);
            v35 = strlen(*(&v141 + 1));
            *v202 = *(&v141 + 1);
            *&v202[8] = v35;
            re::DynamicString::operator=(&v224, v202);
            if ((atomic_load_explicit(&qword_1EE1C1118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1118))
            {
              qword_1EE1C1110 = re::hashString("MeshScenes", v99);
              __cxa_guard_release(&qword_1EE1C1118);
            }

            v36 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>>(a3[146], (v141 + (qword_1EE1C1110 << 6) + (qword_1EE1C1110 >> 2)) ^ qword_1EE1C1110);
            v37 = v36 + 8;
            if (!v36)
            {
              v37 = 0;
            }

            v236[3] = v37;
            MurmurHash3_x64_128("VFXScenes", 9uLL, 0, v202);
            v38 = (*&v202[8] - 0x61C8864680B583E9 + (*v202 << 6) + (*v202 >> 2)) ^ *v202;
            v39 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>>(a3[146], (v141 + (v38 << 6) + (v38 >> 2)) ^ v38);
            v40 = v39 + 8;
            if (!v39)
            {
              v40 = 0;
            }

            v236[4] = v40;
            if (BYTE4(v143) == 1)
            {
              *&v170 = LODWORD(v124[0]);
              *(&v170 + 1) = LODWORD(v124[0]);
              v171 = 0x80;
            }

            else
            {
              v171 = 0;
              v170 = xmmword_1E3108696;
            }

            v218 = &unk_1F5D12920;
            v219 = 0;
            if (*(v23 + 784) == 1)
            {
              v219 = 1;
              v41 = *(v23 + 816);
              v220 = *(v23 + 800);
              v221 = v41;
            }

            v222 = *(v23 + 832);
            if ((atomic_load_explicit(&qword_1EE1C1128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1128))
            {
              qword_1EE1C1120 = re::hashString("SceneIndex", v100);
              __cxa_guard_release(&qword_1EE1C1128);
            }

            v168[0] = re::RenderGraphContext::tryGetPipelineCompilationData(a3, *(a3[5] + 6));
            v168[1] = &v172;
            v168[2] = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(a3[146], (v141 + (qword_1EE1C1120 << 6) + (qword_1EE1C1120 >> 2)) ^ qword_1EE1C1120);
            v168[3] = &v169;
            v168[4] = re::RenderGraphDataStore::tryGet<re::ViewportData>(a3[146], *(a3[5] + 6));
            v168[5] = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(a3[146], *(a3[5] + 6));
            v168[6] = re::RenderGraphDataStore::tryGet<re::TintContextData>(a3[146], *(a3[5] + 6));
            v168[7] = re::RenderGraphDataStore::tryGet<re::VRRData>(a3[146], *(a3[5] + 6));
            v168[8] = re::RenderGraphDataStore::tryGet<re::TriangleFillModeData>(a3[146], *(a3[5] + 6));
            v168[9] = &v218;
            v166 = &unk_1F5D10F80;
            v167 = 0;
            re::CameraMatrices::CameraMatrices(v207, *(*a3 + 4), v240);
            if ((atomic_load_explicit(&qword_1EE1C1138, memory_order_acquire) & 1) == 0)
            {
              v101 = __cxa_guard_acquire(&qword_1EE1C1138);
              if (v101)
              {
                qword_1EE1C1130 = re::getCombinedScopeHash(v101, v102, v103);
                __cxa_guard_release(&qword_1EE1C1138);
              }
            }

            v42 = re::RenderGraphDataStore::get<re::RendererGlobals>(a3[146], qword_1EE1C1130);
            if ((atomic_load_explicit(&qword_1EE1C1148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1148))
            {
              qword_1EE1C1140 = re::hashString("DynamicFunctionConstants", v104);
              __cxa_guard_release(&qword_1EE1C1148);
            }

            v43 = qword_1EE1C1140;
            v44 = strlen(*(&v141 + 1));
            v45 = 0x9E3779B97F4A7C17;
            if (v44)
            {
              MurmurHash3_x64_128(*(&v141 + 1), v44, 0, v202);
              v45 = ((*&v202[8] - 0x61C8864680B583E9 + (*v202 << 6) + (*v202 >> 2)) ^ *v202) - 0x61C8864680B583E9;
            }

            v46 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(a3[146], ((v43 >> 2) + (v43 << 6) + v45) ^ v43);
            if (v46)
            {
              v47 = v46 + 8;
            }

            else
            {
              v47 = 0;
            }

            v48 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(a3[146], *(a3[5] + 6));
            v49 = (*(**(*a3 + 4) + 32))(*(*a3 + 4), 48, 8);
            v50 = *(*a3 + 4);
            *(v49 + 32) = 0;
            *v49 = 0u;
            *(v49 + 16) = 0u;
            *(v49 + 36) = 0x7FFFFFFFLL;
            re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v49, v50, 3);
            v167 = v49;
            if (v240)
            {
              v52 = 0;
              v54 = v126;
              v53 = v127;
              do
              {
                if (v229 <= v52)
                {
                  re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v52, v229);
                  _os_crash();
                  __break(1u);
LABEL_197:
                  re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v52, v58);
                  _os_crash();
                  __break(1u);
LABEL_198:
                  re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v52, v60);
                  _os_crash();
                  __break(1u);
                }

                if (*(v53 + 80) == 1)
                {
                  v55 = *(v53 + 7);
                  *v202 = *(v53 + 6);
                  *&v202[16] = v55;
                  v56 = *(v53 + 9);
                  *&v202[32] = *(v53 + 8);
                  *&v202[48] = v56;
                }

                else
                {
                  re::Projection::cullingProjectionMatrix(v53, v202);
                }

                re::DynamicArray<re::Matrix4x4<float>>::add(v210, v202);
                v58 = v229;
                if (v229 <= v52)
                {
                  goto LABEL_197;
                }

                re::Projection::cullingProjectionMatrix(v53, v202);
                re::DynamicArray<re::Matrix4x4<float>>::add(v214, v202);
                v60 = v226;
                if (v226 <= v52)
                {
                  goto LABEL_198;
                }

                re::RenderCamera::computeInverseTransform(v54, v202);
                re::DynamicArray<re::Matrix4x4<float>>::add(v208, v202);
                ++v52;
                v54 += 2;
                v53 += 30;
              }

              while (v52 < v240);
            }

            v61 = *(*a3 + 4);
            v151 = 0u;
            v152 = 0u;
            LODWORD(v153) = 0;
            *(&v153 + 4) = 0x7FFFFFFFLL;
            re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v151, v61, 3);
            *v202 = a3;
            *&v202[8] = &v223;
            *&v202[16] = v207;
            *&v202[24] = &v172;
            *&v202[32] = v42;
            *&v202[40] = &v166;
            *&v202[48] = v48;
            *&v202[56] = &v151;
            v202[64] = v143;
            *&v202[65] = 0;
            v202[68] = 0;
            v204 = v47;
            re::RenderGraphCameraSetupNode::setupDrawCallsForCamera(v202, v62, v63, v64, v65, v66);
            re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v151);
            if ((atomic_load_explicit(&qword_1EE1C1150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1150))
            {
              qword_1EE1C11D0 = 0x2476C06B76;
              qword_1EE1C11D8 = "VCABlur";
              unk_1EE1C11E0 = 5231452;
              qword_1EE1C11E8 = "True";
              __cxa_guard_release(&qword_1EE1C1150);
            }

            if ((atomic_load_explicit(&qword_1EE1C1158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1158))
            {
              qword_1EE1C11F0 = 0x4CB6D3AA6EABE92CLL;
              qword_1EE1C11F8 = "Transparent_BackCompat";
              unk_1EE1C1200 = 5231452;
              qword_1EE1C1208 = "True";
              __cxa_guard_release(&qword_1EE1C1158);
            }

            if ((atomic_load_explicit(&qword_1EE1C1160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1160))
            {
              re::StringID::StringID(v202, &qword_1EE1C11D0);
              re::StringID::StringID(&v202[16], &unk_1EE1C11E0);
              qword_1EE1C1210 = *v202;
              unk_1EE1C1218 = *&v202[8];
              *&v202[8] = &str_67;
              *v202 = 0;
              qword_1EE1C1228 = *&v202[24];
              *&v202[24] = &str_67;
              *&v202[16] = 0;
              re::StringID::destroyString(&v202[16]);
              re::StringID::destroyString(v202);
              __cxa_guard_release(&qword_1EE1C1160);
            }

            if ((atomic_load_explicit(&qword_1EE1C1168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1168))
            {
              re::StringID::StringID(v202, &qword_1EE1C11F0);
              re::StringID::StringID(&v202[16], &unk_1EE1C1200);
              re::StringID::StringID(&v202[32], &qword_1EE1C11D0);
              re::StringID::StringID(&v202[48], &unk_1EE1C11E0);
              qword_1EE1C1240 = *&v202[16];
              xmmword_1EE1C1230 = *v202;
              *&v202[8] = &str_67;
              *v202 = 0;
              unk_1EE1C1248 = *&v202[24];
              *&v202[24] = &str_67;
              *&v202[16] = 0;
              unk_1EE1C1258 = *&v202[40];
              *&v202[40] = &str_67;
              *&v202[32] = 0;
              qword_1EE1C1268 = *&v202[56];
              v105 = 64;
              *&v202[56] = &str_67;
              *&v202[48] = 0;
              do
              {
                re::StringID::destroyString(&v201[v105 + 288]);
                re::StringID::destroyString(&v201[v105 + 272]);
                v105 -= 32;
              }

              while (v105);
              __cxa_guard_release(&qword_1EE1C1168);
            }

            if (BYTE5(v143) == 1)
            {
              *v202 = &xmmword_1EE1C1230;
              *&v202[8] = 2;
              v67 = re::Slice<re::TechniqueTagFilter>::range(v202, 0, 1uLL);
              *&v135 = v68;
              *(&v135 + 1) = v67;
              v69 = 0;
              v70 = 0;
            }

            else
            {
              v70 = &qword_1EE1C1210;
              v69 = 1;
              *&v135 = 2;
              *(&v135 + 1) = &xmmword_1EE1C1230;
            }

            if ((v143 & 0x100) == 0 && BYTE6(v143) == 1)
            {
              if ((atomic_load_explicit(&qword_1EE1C11C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C11C8))
              {
                qword_1EE1C11C0 = re::hashString("PlattersOnly", v107);
                __cxa_guard_release(&qword_1EE1C11C8);
              }

              MeshPartBucket = re::MeshPassInfoData::getMeshPartBucket(&v166, qword_1EE1C11C0);
              v72 = *(*a3 + 4);
              v197 = 0;
              v195 = 0;
              v194[0] = 0;
              v194[1] = 0;
              v196 = 0;
              v191 = 0;
              v192 = 0;
              if (MeshPartBucket)
              {
                *v202 = MeshPartBucket;
                v202[8] = 0;
                *&v202[14] = 65280;
                v202[18] = 0;
                MeshPartBucket = re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(&v191, v202);
                v73 = v191;
              }

              else
              {
                v73 = 0;
              }

              v190[0] = v123;
              v190[1] = v73;
              if (*v137)
              {
                MeshPartBucket = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v137, v144, "BlurPlatterMeshDraw");
                v74 = MeshPartBucket;
              }

              else
              {
                v74 = 0;
              }

              *v202 = 0;
              *&v202[8] = v70;
              *&v202[16] = v69;
              memset(&v202[24], 0, 48);
              v203 = re::globalAllocators(MeshPartBucket)[2];
              v204 = 0;
              LOWORD(v205) = 1;
              BYTE4(v205) = 0;
              v206 = 0;
              re::RenderGraphMeshNodeBase::sortMeshParts(0, v123, v73, a3, v74, v202, v72, &v176, v116, v117, SHIDWORD(v117), v118, v119, v120, v121, v122, v123, v124[0], v124[1], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v132[0], v132[1], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, SBYTE4(v145), SBYTE5(v145), SBYTE6(v145), SHIBYTE(v145), v146, v149, v150, v151, v152, v153, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
              re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v194, &v176);
              if (v176)
              {
                if (v179)
                {
                  (*(*v176 + 40))();
                }

                v179 = 0;
                v176 = 0;
                v177 = 0uLL;
                LODWORD(v178) = v178 + 1;
              }

              re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(&v202[40]);
              if (v195)
              {
                v75 = (*(*v72 + 32))(v72, 328, 8);
                v189 = re::DrawTable::DrawTable(v75, v72, (v195 + 127) >> 7);
                v188 = re::RenderGraphDataStore::tryGet<re::VCARenderData>(a3[146], *(a3[5] + 6));
                if (*(v75 + 320) != 1)
                {
                  (**(v75 + 280))(v75 + 280);
                }

                *(v75 + 280) = &unk_1F5D15320;
                *(v75 + 288) = &v143;
                *(v75 + 296) = &v188;
                *(v75 + 304) = &v189;
                *(v75 + 320) = 0;
                LOBYTE(v151) = 0;
                BYTE4(v152) = 0;
                v155 = 0;
                LOBYTE(v157) = 0;
                v153 = 0uLL;
                LOBYTE(v154) = 0;
                v116 = v74;
                v117 = &v151;
                re::RenderGraphMeshNodeBase::makeDrawCallsFromMeshParts(v190, v197, v195, a3, v75, v211, v207, 0);
                if (*(v189 + 5))
                {
                  re::DrawTableSlice::DrawTableSlice(v202, v189);
                  v76 = 0;
                  v176 = "StencilBlurSetStencil";
                  *&v177 = v202;
                  *(&v177 + 1) = v209;
                  v178 = v213;
                  v179 = 0;
                  v180 = v217;
                  v181 = 2;
                  v182 = 256;
                  v183 = __const__ZN2re20FeatureStencilStates18getStencilBlurInfoENS0_16StencilBlurUsageE_kWriteStInfo;
                  v184 = 0;
                  v185 = 0;
                  if (*v137)
                  {
                    v76 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v137, v144, "StencilBlurSetStencil");
                  }

                  v186 = v76;
                  v187 = 0;
                  re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a3, v175);
                  re::RenderGraphContext::encodeDrawCalls(a3, v175, &v176);
                }
              }

              else
              {
                re::RenderGraphContext::acquireManagedRenderCommandEncoder(v202, a3, 0);
                re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v202);
              }

              if (v194[0] && v197)
              {
                (*(*v194[0] + 40))();
              }
            }

            if (*v137)
            {
              v77 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v137, "Portal", "makePortalDrawcalls");
            }

            else
            {
              v77 = 0;
            }

            v78 = strlen(v138);
            if (v78)
            {
              MurmurHash3_x64_128(v138, v78, 0, v202);
              v79 = (*&v202[8] - 0x61C8864680B583E9 + (*v202 << 6) + (*v202 >> 2)) ^ *v202;
            }

            else
            {
              v79 = 0;
            }

            v80 = strlen(*(&v141 + 1));
            v81 = 0x9E3779B97F4A7C17;
            if (v80)
            {
              MurmurHash3_x64_128(*(&v141 + 1), v80, 0, v202);
              v81 = ((*&v202[8] - 0x61C8864680B583E9 + (*v202 << 6) + (*v202 >> 2)) ^ *v202) - 0x61C8864680B583E9;
            }

            v82 = re::RenderGraphDataStore::get<re::SceneScope>(a3[146], ((v79 >> 2) + (v79 << 6) + v81) ^ v79);
            if (BYTE4(v143) == 1)
            {
              if ((atomic_load_explicit(&qword_1EE1C1178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1178))
              {
                qword_1EE1C1170 = re::hashString("StencilIncrement", v106);
                __cxa_guard_release(&qword_1EE1C1178);
              }

              *v202 = v23;
              *&v202[8] = v82;
              *&v202[16] = *(&v141 + 1);
              *&v202[24] = "StencilIncrement";
              *&v202[32] = qword_1EE1C1170;
              *&v202[40] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kIncrementStInfo;
              v202[56] = HIBYTE(v148) | 0x80;
              v202[41] = v148;
              v202[49] = v148;
              *&v202[64] = a3;
              LOBYTE(v203) = HIBYTE(v143);
              re::makePortalSurfaceDrawcall(v202, *(&v142 + 1), v77, 0);
              if ((v143 & 0x100000000) != 0 && (v143 & 0x100) == 0)
              {
                if ((atomic_load_explicit(&qword_1EE1C1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1188))
                {
                  qword_1EE1C1180 = re::hashString("DepthBufferClear", v110);
                  __cxa_guard_release(&qword_1EE1C1188);
                }

                if ((atomic_load_explicit(&qword_1EE1C1198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1198))
                {
                  qword_1EE1C1190 = re::hashString("DepthBufferClearNoColor", v111);
                  __cxa_guard_release(&qword_1EE1C1198);
                }

                v83 = &qword_1EE1C1190;
                if (!BYTE3(v143))
                {
                  v83 = &qword_1EE1C1180;
                }

                v84 = *v83;
                v85 = "DepthBufferClear";
                if (BYTE3(v143))
                {
                  v85 = "DepthBufferClearNoColor";
                }

                *v202 = v23;
                *&v202[8] = v82;
                *&v202[16] = *(&v141 + 1);
                *&v202[24] = v85;
                *&v202[32] = v84;
                *&v202[40] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDepthClearStInfo;
                v202[56] = 0x80;
                v202[41] = 0x80;
                v202[49] = 0x80;
                *&v202[64] = a3;
                LOBYTE(v203) = HIBYTE(v143);
                re::makePortalSurfaceDrawcall(v202, *(&v142 + 1), v77, 0);
              }
            }

            v136 = v82;
            v86 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(a3[146], (v141 + (qword_1EE1C1120 << 6) + (qword_1EE1C1120 >> 2)) ^ qword_1EE1C1120);
            if ((v143 & 0x100) == 0)
            {
              v87 = v86;
              v88 = v145;
              if (v145)
              {
                if (*(v145 + 16))
                {
                  v89 = 0;
                  v90 = 0;
                  do
                  {
                    v91 = *(v88 + 32) + v89;
                    if (*(v91 + 8))
                    {
                      v92 = *(v91 + 16);
                    }

                    else
                    {
                      v92 = (v91 + 9);
                    }

                    re::DynamicString::operator+(v202, v92, &v151);
                    if (*v202 && (v202[8] & 1) != 0)
                    {
                      (*(**v202 + 40))();
                    }

                    v93 = strlen(v92);
                    if (v93)
                    {
                      MurmurHash3_x64_128(v92, v93, 0, v202);
                      v93 = (*&v202[8] - 0x61C8864680B583E9 + (*v202 << 6) + (*v202 >> 2)) ^ *v202;
                    }

                    v94 = re::MeshPassInfoData::getMeshPartBucket(&v166, v93);
                    if (v94)
                    {
                      v176 = v94;
                      LOBYTE(v177) = 0;
                      *(&v177 + 6) = 65280;
                      BYTE10(v177) = 1;
                      *v202 = v168;
                      *&v202[8] = "Portal";
                      v95 = v142;
                      if (BYTE8(v151))
                      {
                        v95 = v152;
                      }

                      *&v202[16] = v95;
                      *&v202[24] = &v176;
                      *&v202[48] = 0;
                      *&v202[32] = 1uLL;
                      *&v202[56] = v207;
                      *&v202[64] = 2;
                      *&v202[68] = 2;
                      v203 = a3;
                      LOBYTE(v204) = 1;
                      v205 = v87;
                      re::makePortalSceneDrawcalls(v202, *(&v142 + 1), v77);
                    }

                    v86 = v151;
                    if (v151 && (BYTE8(v151) & 1) != 0)
                    {
                      v86 = (*(*v151 + 40))();
                    }

                    ++v90;
                    v88 = v145;
                    v89 += 32;
                  }

                  while (*(v145 + 16) > v90);
                }
              }

              else
              {
                *&v151 = 0;
                DWORD2(v151) = 0;
                re::rendergraph_helper::getOcclusionMeshPasses(v202);
                re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v166, &v151, v202);
                *v202 = v168;
                *&v202[8] = "Portal";
                *&v202[16] = "Portal_Occlusion";
                *&v202[24] = v122;
                *&v202[48] = 0;
                *&v202[32] = v151;
                *&v202[56] = v207;
                *&v202[64] = 1;
                *&v202[68] = 0;
                v203 = a3;
                LOBYTE(v204) = 1;
                v205 = v87;
                re::makePortalSceneDrawcalls(v202, *(&v142 + 1), v77);
                *&v151 = 0;
                DWORD2(v151) = 0;
                re::rendergraph_helper::getOpaqueMeshPasses(v202);
                re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v166, &v151, v202);
                *v202 = v168;
                *&v202[8] = "Portal";
                *&v202[16] = "Portal_Opaque";
                *&v202[24] = v122;
                *&v202[48] = 0;
                *&v202[32] = v151;
                *&v202[56] = v207;
                *&v202[64] = 1;
                *&v202[68] = 2;
                v203 = a3;
                LOBYTE(v204) = 1;
                v205 = v87;
                re::makePortalSceneDrawcalls(v202, *(&v142 + 1), v77);
                *&v151 = 0;
                DWORD2(v151) = 0;
                re::rendergraph_helper::getSkyboxMeshPasses(v202);
                re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(&v166, &v151, v202);
                *v202 = v168;
                *&v202[8] = "Portal";
                *&v202[16] = "Portal_Skybox";
                *&v202[24] = v122;
                *&v202[48] = 0;
                *&v202[32] = v151;
                *&v202[56] = v207;
                *&v202[64] = 1;
                *&v202[68] = 2;
                v203 = a3;
                LOBYTE(v204) = 1;
                v205 = v87;
                re::makePortalSceneDrawcalls(v202, *(&v142 + 1), v77);
                *&v151 = 0;
                DWORD2(v151) = 0;
                re::rendergraph_helper::getTransparentMeshPasses(v202);
                re::rendergraph_helper::populateMeshPassArray<7ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,7ul>>(&v166, &v151, v202);
                *v202 = v168;
                *&v202[8] = "Portal";
                *&v202[16] = "Portal_Transparent";
                *&v202[24] = v122;
                *&v202[32] = v151;
                *&v202[40] = *(&v135 + 1);
                *&v202[48] = v135;
                *&v202[56] = v207;
                *&v202[64] = 2;
                *&v202[68] = 2;
                v203 = a3;
                LOBYTE(v204) = 1;
                v205 = v87;
                re::makePortalSceneDrawcalls(v202, *(&v142 + 1), v77);
                *&v151 = 0;
                DWORD2(v151) = 0;
                re::rendergraph_helper::getRenderOnTopMeshPasses(v202);
                re::rendergraph_helper::populateMeshPassArray<8ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,8ul>>(&v166, &v151, v202);
                *v202 = v168;
                *&v202[8] = "Portal";
                *&v202[16] = "Portal_RenderOnTop";
                *&v202[24] = v122;
                *&v202[32] = v151;
                *&v202[40] = *(&v135 + 1);
                *&v202[48] = v135;
                *&v202[56] = v207;
                *&v202[64] = 2;
                *&v202[68] = 2;
                v203 = a3;
                LOBYTE(v204) = 1;
                v205 = v87;
                re::makePortalSceneDrawcalls(v202, *(&v142 + 1), v77);
              }
            }

            v18 = v128;
            v19 = v129;
            if (BYTE4(v143) == 1 && (v143 & 0x100) == 0)
            {
              if ((atomic_load_explicit(&qword_1EE1C11A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C11A8))
              {
                qword_1EE1C11A0 = re::hashString("DepthBufferPatchAndStencilDecrement", v108);
                __cxa_guard_release(&qword_1EE1C11A8);
              }

              if ((atomic_load_explicit(&qword_1EE1C11B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C11B8))
              {
                qword_1EE1C11B0 = re::hashString("DepthBufferPatchAndStencilDecrementNoFragmentFunction", v109);
                __cxa_guard_release(&qword_1EE1C11B8);
              }

              v96 = &qword_1EE1C11B0;
              if (!BYTE2(v143))
              {
                v96 = &qword_1EE1C11A0;
              }

              v97 = *v96;
              v98 = "DepthBufferPatchAndStencilDecrement";
              if (BYTE2(v143))
              {
                v98 = "DepthBufferPatchAndStencilDecrementNoFragmentFunction";
              }

              *v202 = v23;
              *&v202[8] = v136;
              *&v202[16] = *(&v141 + 1);
              *&v202[24] = v98;
              *&v202[32] = v97;
              *&v202[40] = __const__ZN2re20FeatureStencilStates13getPortalInfoENS0_11PortalUsageEhh_kDecrementStInfo;
              v202[56] = 0x80;
              v202[41] = 0x80;
              v202[49] = 0x80;
              *&v202[64] = a3;
              LOBYTE(v203) = HIBYTE(v143);
              re::makePortalSurfaceDrawcall(v202, *(&v142 + 1), v77, 1);
            }

            v11 = v130;
            if (v214[0])
            {
              if (v216)
              {
                (*(*v214[0] + 40))();
              }

              v216 = 0;
              memset(v214, 0, sizeof(v214));
              ++v215;
            }

            if (v210[0])
            {
              if (v213)
              {
                (*(*v210[0] + 40))();
              }

              v213 = 0;
              v210[1] = 0;
              v211 = 0;
              v210[0] = 0;
              ++v212;
            }

            if (v208[0] && v209)
            {
              (*(*v208[0] + 40))();
            }

            v172 = *(&v140 + 1);
            if (v173 && (v174 & 1) != 0)
            {
              (*(*v173 + 40))();
            }

            re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v241);
            ++v235;
            ++v233;
            ++v230;
            v234 = 0;
            v232 = 0;
            v229 = 0;
            v226 = 0;
            ++v227;
            result = v224;
            if (v224 && (v225 & 1) != 0)
            {
              result = (*(*v224 + 40))();
            }
          }

LABEL_155:
          ++v20;
        }

        while (v20 != v18);
      }
    }
  }

  if (v200[0])
  {
    v112 = &v200[18 * v200[0] + 2];
    v113 = v201;
    do
    {
      *v113 = 0;
      ++*(v113 + 2);
      v113 += 144;
    }

    while (v113 != v112);
  }

  if (v198[0])
  {
    v114 = &v198[14 * v198[0] + 2];
    v115 = &v199;
    do
    {
      *v115 = 0;
      ++*(v115 + 2);
      v115 += 14;
    }

    while (v115 != v114);
  }

  return result;
}

void *re::internal::Callable<re::makePortalSurfaceDrawcall(re::EncodeMeshPassForPortalArgs const&,re::DrawTable *,re::DrawCallRecorderGroup *,re::PortalRenderContext const&,BOOL)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D152C8;
  return result;
}

void *re::internal::Callable<re::makePortalSurfaceDrawcall(re::EncodeMeshPassForPortalArgs const&,re::DrawTable *,re::DrawCallRecorderGroup *,re::PortalRenderContext const&,BOOL)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D152C8;
  return result;
}

double re::internal::Callable<re::makePortalDrawcalls(re::DrawTable *,re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 27);
  if ((*(a2 + 145) & 1) == 0)
  {
    *(a2 + 145) = 1;
  }

  *(a2 + 146) = v4;
  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(**(a1 + 16) + 192, (a2 + 88));
  if (v5)
  {
    v7 = v5;
    v8 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](**(a1 + 24) + 56, *(a2 + 84));
    v9 = 0;
    LODWORD(v10) = 0;
    HIDWORD(v10) = 0;
    *(&v10 + 4) = v7->u32[1];
    *&v11 = 0;
    *(&v11 + 1) = v7->u32[2];
    v12 = vnegq_f32(v7[1]);
    v12.i32[3] = 1.0;
    v13 = *v8;
    v14 = v8[1];
    v15 = v8[2];
    v16 = v8[3];
    v20[0] = v7->u32[0];
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    do
    {
      v21[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v20[v9])), v14, *&v20[v9], 1), v15, v20[v9], 2), v16, v20[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    result = *v21;
    v17 = v21[1];
    v18 = v21[2];
    v19 = v21[3];
    *v8 = v21[0];
    v8[1] = v17;
    v8[2] = v18;
    v8[3] = v19;
  }

  return result;
}

uint64_t re::internal::Callable<re::makePortalDrawcalls(re::DrawTable *,re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D15320;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::makePortalDrawcalls(re::DrawTable *,re::StencilPortal const&,re::RenderGraphContext &,char const*,char const*,char const*,re::PortalRenderContext const&)::$_0::operator() const(void)::{lambda(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)#1},void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D15320;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::RenderGraphMPSNodeBase::getCommandBufferWithProtectionOptions@<X0>(re::RenderGraphMPSNodeBase *this@<X0>, re::RenderGraphContext *a2@<X1>, void *a3@<X8>)
{
  v6 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
  v7 = *(re::RenderFrame::currentCommandBuffer(v6) + 2);
  *a3 = v7;
  v8 = *(this + 30);
  v9 = 0;
  if (v8)
  {
    v10 = *(this + 32);
    v11 = v8 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v10, 0, 0, &v19);
      v12 = [v19 protectionOptions];
      if (v19)
      {
      }

      v9 |= v12;
      v10 += 64;
      v11 -= 64;
    }

    while (v11);
  }

  v13 = *(this + 20);
  if (v13)
  {
    v14 = *(this + 22);
    v15 = v13 << 6;
    do
    {
      v16 = re::RenderGraphContext::metalBuffer(a2, v14);
      v9 |= [*re::BufferSlice::buffer(v16 v17)];
      v14 += 64;
      v15 -= 64;
    }

    while (v15);
  }

  result = [v7 protectionOptions];
  if (result != v9)
  {
    return [v7 setProtectionOptions:v9];
  }

  return result;
}

uint64_t re::RenderGraphMPSNodeBase::getViewports@<X0>(re::RenderGraphContext *a1@<X1>, const unint64_t *a2@<X2>, const unint64_t *a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v9 = *(*a1 + 32);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v10 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a1 + 146), *(*(a1 + 5) + 48));
  if (v10)
  {
    v11 = *(v10 + 64);
  }

  else
  {
    v11 = 1;
  }

  re::FixedArray<re::mtl::Viewport>::init<>(a4, v9, v11);
  re::FixedArray<re::Vector4<float>>::init<>(&v19, v9, v11);
  v12 = re::RenderGraphDataStore::tryGet<re::ViewportData>(*(a1 + 146), *(*(a1 + 5) + 48));
  re::RenderGraphContext::selectViewport(a1, v12, a4, &v19, 0);
  v13 = a4[1];
  if (v13)
  {
    v14 = *a2;
    v15 = *a3;
    v16 = (a4[2] + 12);
    do
    {
      if (*(v16 - 1) == 0.0 && *v16 == 0.0)
      {
        *(v16 - 1) = v14;
        *v16 = v15;
      }

      v16 += 6;
      --v13;
    }

    while (v13);
  }

  result = v19;
  if (v19)
  {
    v18 = v20 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    return (*(*v19 + 40))();
  }

  return result;
}

void *re::allocInfo_DefaultDepthFormatData(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_540))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C12D0, "DefaultDepthFormatData");
    __cxa_guard_release(&_MergedGlobals_540);
  }

  return &unk_1EE1C12D0;
}

void re::initInfo_DefaultDepthFormatData(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xDE1393FAFE3F606;
  v14[1] = "DefaultDepthFormatData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C1278, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1278);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C12A0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::mtl::introspect_PixelFormat(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "format";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C12A8 = v12;
      __cxa_guard_release(&qword_1EE1C1278);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000010;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C12A0;
  *(this + 9) = re::internal::defaultConstruct<re::DefaultDepthFormatData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DefaultDepthFormatData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DefaultDepthFormatData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DefaultDepthFormatData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_DefaultStencilFormatData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1280))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C1360, "DefaultStencilFormatData");
    __cxa_guard_release(&qword_1EE1C1280);
  }

  return &unk_1EE1C1360;
}

void re::initInfo_DefaultStencilFormatData(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x5D8C4433CA9F5DF8;
  v14[1] = "DefaultStencilFormatData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C1288, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1288);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C12B0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::mtl::introspect_PixelFormat(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "format";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C12B8 = v12;
      __cxa_guard_release(&qword_1EE1C1288);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C12B0;
  *(this + 9) = re::internal::defaultConstruct<re::DefaultStencilFormatData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DefaultStencilFormatData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DefaultStencilFormatData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DefaultStencilFormatData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::allocInfo_ForceClearData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C1290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C1290))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C13F0, "ForceClearData");
    __cxa_guard_release(&qword_1EE1C1290);
  }

  return &unk_1EE1C13F0;
}

void re::initInfo_ForceClearData(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x1E05F5F3774B4A18;
  v14[1] = "ForceClearData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1C1298, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1C1298);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1C12C0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "forceClear";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1C12C8 = v12;
      __cxa_guard_release(&qword_1EE1C1298);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C12C0;
  *(this + 9) = re::internal::defaultConstruct<re::ForceClearData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ForceClearData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ForceClearData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ForceClearData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::getScopeRenderTargetDesc(re *this, const char *__s, const char *a3, re::RenderFrame *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = 0x9E3779B97F4A7C17;
  v9 = strlen(__s);
  if (v9)
  {
    MurmurHash3_x64_128(__s, v9, 0, &v25);
    v10 = (v26 - 0x61C8864680B583E9 + (v25 << 6) + (v25 >> 2)) ^ v25;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(a3);
  if (v11)
  {
    MurmurHash3_x64_128(a3, v11, 0, &v25);
    v8 = ((v26 - 0x61C8864680B583E9 + (v25 << 6) + (v25 >> 2)) ^ v25) - 0x61C8864680B583E9;
  }

  v12 = (v10 >> 2) + (v10 << 6) + v8;
  v13 = re::RenderGraphDataStore::tryGet<re::CameraData>(a4 + 32, v12 ^ v10);
  v14 = re::RenderGraphDataStore::get<re::MXIFrameData>(a4 + 32, v12 ^ v10);
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 44) = _D0;
  *(this + 52) = xmmword_1E30A3B60;
  *(this + 76) = -1;
  *(this + 21) = -1;
  v20 = v14[3].i32[0];
  *this = 0;
  *(this + 1) = v20;
  v21 = *(v13 + 890);
  if (v21 <= 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  *(this + 2) = v22;
  v23 = *(*&v14[1] + 64);
  *(this + 104) = 0;
  *&result = *&vadd_s32(vcvt_u32_f32(vmaxnm_f32(vmul_n_f32(vcvt_f32_s32(v14[2]), v23), 0x4000000040000000)), 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0;
  *(this + 12) = result;
  *(this + 5) = 1;
  *(this + 6) = v21;
  *(this + 40) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 7) = 1;
  *(this + 8) = -1;
  *(this + 9) = 2;
  *(this + 17) = 5;
  *(this + 18) = 32;
  return result;
}

uint64_t re::MXIProvider::initProxyMeshPart(uint64_t this, id *a2, unsigned int a3, unsigned int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(this + 96))
  {
    return this;
  }

  v5 = this;
  v39 = 0;
  if (a3 <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = a3;
  }

  v36[1] = 0;
  v37 = 0;
  if (a4 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a4;
  }

  v36[0] = 0;
  v38 = 0;
  re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v36, 2uLL);
  v8 = v7 - 1;
  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v9 = (v7 - 1) * (v6 - 1);
  v32[0] = 0;
  v34 = 0;
  re::DynamicArray<unsigned long>::resize(v32, v7 * v6);
  v10 = 0;
  v11 = 0;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      v13 = v10 + i;
      v14 = v33;
      if (v33 <= v13)
      {
        *v50 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v41 = 136315906;
        *&v41[4] = "operator[]";
        *&v41[12] = 1024;
        *&v41[14] = 789;
        *&v41[18] = 2048;
        *&v41[20] = v13;
        v42 = 2048;
        *v43 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_49:
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v50 = 136315906;
        *&v50[4] = "operator[]";
        *&v50[12] = 1024;
        *&v50[14] = 789;
        *&v50[18] = 2048;
        *&v50[20] = v13;
        *&v50[28] = 2048;
        *&v50[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_50:
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v50 = 136315906;
        *&v50[4] = "operator[]";
        *&v50[12] = 1024;
        *&v50[14] = 789;
        *&v50[18] = 2048;
        *&v50[20] = v13;
        *&v50[28] = 2048;
        *&v50[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_51:
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v50 = 136315906;
        *&v50[4] = "operator[]";
        *&v50[12] = 1024;
        *&v50[14] = 789;
        *&v50[18] = 2048;
        *&v50[20] = v13;
        *&v50[28] = 2048;
        *&v50[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v50 = 136315906;
        *&v50[4] = "operator[]";
        *&v50[12] = 1024;
        *&v50[14] = 789;
        *&v50[18] = 2048;
        *&v50[20] = v13;
        *&v50[28] = 2048;
        *&v50[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_53:
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v50 = 136315906;
        *&v50[4] = "operator[]";
        *&v50[12] = 1024;
        *&v50[14] = 789;
        *&v50[18] = 2048;
        *&v50[20] = v13;
        *&v50[28] = 2048;
        *&v50[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_54:
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v50 = 136315906;
        *&v50[4] = "operator[]";
        *&v50[12] = 1024;
        *&v50[14] = 789;
        *&v50[18] = 2048;
        *&v50[20] = v13;
        *&v50[28] = 2048;
        *&v50[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_55:
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) only support up to 2^16 - 1 indices", "numQuads * 6 < 0xFFFF", "initProxyMeshPart", 186);
        _os_crash();
        __break(1u);
      }

      *&v15 = ((i / (v6 - 1)) * 2.4) + -1.2;
      *(&v15 + 1) = ((v11 / (v7 - 1)) * 2.4) + -1.2;
      *(v35 + 8 * v13) = v15;
    }

    ++v11;
    v10 += v6;
  }

  while (v11 != v7);
  v16 = [a2[26] newBufferWithBytes:v35 length:8 * v33 options:0];
  LOWORD(v46) = 285;
  *(&v46 + 1) = v16;
  LODWORD(v48) = 0;
  DWORD2(v48) = 0;
  HIDWORD(v48) = [(_anonymous_namespace_ *)v16 length];
  v49 = 0xFFFFFFFF00000000;
  re::DynamicArray<re::NamedVertexBuffer>::add(v36, &v44);
  if (v48 != -1)
  {
    (off_1F5D153C8[v48])(v41, &v46 + 8);
  }

  LODWORD(v48) = -1;
  if (v44 && (BYTE8(v44) & 1) != 0)
  {
    (*(*v44 + 40))();
  }

  if (v16)
  {
  }

  *&v43[2] = 0;
  memset(v41, 0, sizeof(v41));
  re::DynamicArray<unsigned short>::resize(v41, 6 * v9);
  if (v9 > 10922)
  {
    goto LABEL_55;
  }

  v18 = 0;
  v19 = 0;
  v7 = *&v41[16];
  v20 = 1;
  do
  {
    v21 = 0;
    ++v19;
    v22 = *&v43[2];
    v23 = v20;
    do
    {
      v13 = v18 + v21;
      if (v7 <= v13)
      {
        goto LABEL_49;
      }

      *(v22 + 2 * v13) = v23 - 1;
      v13 = v18 + v21 + 1;
      if (v7 <= v13)
      {
        goto LABEL_50;
      }

      *(v22 + 2 * v13) = v6 + v23 - 1;
      v13 = v18 + v21 + 2;
      if (v7 <= v13)
      {
        goto LABEL_51;
      }

      *(v22 + 2 * v13) = v6 + v23;
      v13 = v18 + v21 + 3;
      if (v7 <= v13)
      {
        goto LABEL_52;
      }

      *(v22 + 2 * v13) = v23 - 1;
      v13 = v18 + v21 + 4;
      if (v7 <= v13)
      {
        goto LABEL_53;
      }

      *(v22 + 2 * v13) = v6 + v23;
      v13 = v18 + v21 + 5;
      if (v7 <= v13)
      {
        goto LABEL_54;
      }

      *(v22 + 2 * v13) = v23;
      v21 += 6;
      ++v23;
    }

    while (6 * (v6 - 1) != v21);
    v20 += v6;
    v18 += 6 * v6 - 6;
  }

  while (v19 != v8);
  v24 = [a2[26] newBufferWithBytes_length_options_];
  LOWORD(v46) = 49;
  *(&v46 + 1) = v24;
  LODWORD(v48) = 0;
  DWORD2(v48) = 0;
  HIDWORD(v48) = [(_anonymous_namespace_ *)v24 length];
  v49 = 0xFFFFFFFF00000000;
  re::DynamicArray<re::NamedVertexBuffer>::add(v36, &v44);
  if (v48 != -1)
  {
    (off_1F5D153C8[v48])(v50, &v46 + 8);
  }

  LODWORD(v48) = -1;
  v25 = v44;
  if (v44 && (BYTE8(v44) & 1) != 0)
  {
    v25 = (*(*v44 + 40))();
  }

  if (v24)
  {
  }

  v26.i64[0] = 0x7F0000007FLL;
  v26.i64[1] = 0x7F0000007FLL;
  *v50 = vnegq_f32(v26);
  *&v50[16] = v26;
  v27 = re::globalAllocators(v25);
  v28 = (*(*v27[2] + 32))(v27[2], 544, 16);
  v30 = 0x9D2E0E4D76250F84;
  v31 = "FullscreenQuad";
  v44 = xmmword_1E3047670;
  v45 = xmmword_1E3047680;
  v46 = xmmword_1E30476A0;
  v47 = xmmword_1E30474D0;
  WORD2(v40) = 0;
  LODWORD(v40) = 0;
  v29 = re::MeshPart::MeshPart(v28, &v30, 0, v39, v37, *&v41[16], v33, 1, v50, 0, &v44, &v40, -1, 0);
  *(v5 + 96) = v29;
  if (v30)
  {
    if (v30)
    {
    }
  }

  v30 = 0;
  v31 = &str_67;
  if (*v41 && *&v43[2])
  {
    (*(**v41 + 40))();
  }

  if (v32[0])
  {
    if (v35)
    {
      (*(*v32[0] + 40))();
    }
  }

  return re::DynamicArray<re::NamedVertexBuffer>::deinit(v36);
}

unint64_t re::MXIProvider::prepareFrame(re::MXIProvider *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, v64);
    v8 = (*&v64[8] - 0x61C8864680B583E9 + (*v64 << 6) + (*v64 >> 2)) ^ *v64;
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(a3);
  v10 = 0x9E3779B97F4A7C17;
  if (v9)
  {
    MurmurHash3_x64_128(a3, v9, 0, v64);
    v10 = ((*&v64[8] - 0x61C8864680B583E9 + (*v64 << 6) + (*v64 >> 2)) ^ *v64) - 0x61C8864680B583E9;
  }

  v11 = ((v8 >> 2) + (v8 << 6) + v10) ^ v8;
  v12 = re::RenderGraphDataStore::get<re::MXIFrameData>(a4 + 32, v11);
  v13 = *(v12 + 8);
  v14 = *(v13 + 40);
  v15 = *(v12 + 16);
  v16 = *(v12 + 20);
  v17 = re::AssetHandle::loadedAsset<re::MeshAsset>((v13 + 128));
  if (v17)
  {
    v18 = 32;
    if (*(v17 + 1264))
    {
      v18 = 608;
    }

    v19 = 0x9E3779B97F4A7C17;
    if (*(v17 + v18))
    {
      if (re::MeshAsset::partCountForModel(v17, 0) == 2)
      {
        v19 = 0x9E3779B97F4A7C18;
      }

      else
      {
        v19 = 0x9E3779B97F4A7C17;
      }
    }
  }

  else
  {
    v19 = 0x9E3779B97F4A7C17;
  }

  if (v15)
  {
    v20 = v16 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    return 0;
  }

  re::getScopeRenderTargetDesc(v64, __s, a3, a4);
  v45 = v19;
  if (a3)
  {
    v22 = *a3;
    if (*a3)
    {
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

      v22 &= ~0x8000000000000000;
    }
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v44 = v11;
  v62 = v22;
  v61 = 0;
  v26 = *(*a4 + 296);
  v27 = *&v64[4];
  if (*&v64[4] == 542)
  {
    *&v64[4] = 81;
  }

  v28 = 16 * v14;
  *v55 = re::kMXIOffscreenColorIDs[2 * v14] & 0x7FFFFFFFFFFFFFFFLL;
  v49 = 0x640458D72993A5BCLL;
  re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, v55, &v49, a4, v64, &v61);
  *&v64[4] = v27;
  v29 = v61;
  if (*(this + 40) == 1)
  {
    *v55 = *v64;
    *&v55[16] = *&v64[16];
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v56 = v65;
    v57 = v66;
    *&v55[12] = vshr_n_u32(vadd_s32(*&v64[12], 0xF0000000FLL), 4uLL);
    DWORD1(v58) = 3;
    *&v55[4] = 115;
    v49 = *(&re::kMXIOffscreenDepthIDs + v28) & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x640458D7299D411CLL;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v54 = xmmword_1E3062D70;
    v30 = *(v12 + 8);
    v31 = *(v30 + 96);
    v32 = *(v30 + 100);
    v29 |= v61;
    v52 = 0x203F800000;
    v53 = -1;
    v50 = ((v31 * 8.0) * v32);
    LODWORD(v49) = 2;
    v51 = 1;
    v63 = 0x27D6D33797FE5053;
    v47 = 0x27D6D33797FE5053;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v26, &v62, &v63, &v47, a4, &v49, &v48, 0);
    v50 = ((*(*(v12 + 8) + 96) * 4.0) * *(*(v12 + 8) + 100));
    v63 = 0x530399EAB9EE03DCLL;
    v47 = 0x530399EAB9EE03DCLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v26, &v62, &v63, &v47, a4, &v49, &v48, 0);
  }

  if (*(this + 45) == 1)
  {
    *v55 = *v64;
    *&v55[16] = *&v64[16];
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v56 = v65;
    v57 = v66;
    *&v55[12] = 0x20000000200;
    DWORD1(v58) = 7;
    v49 = *(&re::kMXIOffscreenLowResBlurIDs + v28) & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x181C60D9AA2CF47ALL;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v33 = v61;
    *&v55[4] = 25;
    v49 = *(&re::kMXIOffscreenLowResAlphaIDs + v28) & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x6B6FBA5B9B636FABLL;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v34 = (v33 || v61) | v29 & 1;
    v49 = *(&re::kMXIOffscreenLowResDilateAlphaIDs + v28) & 0x7FFFFFFFFFFFFFFFLL;
    v63 = 0x1137AD08C56C3000;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v26, &v62, &v49, &v63, a4, v55, &v61);
    v29 = (v34 | v61) != 0;
  }

  *v55 = &unk_1F5D153E8;
  v55[8] = v29 & 1;
  v55[9] = v29 & 1;
  v35 = "N2re20MXIReprojectionStateE";
  if (("N2re20MXIReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v36 = ("N2re20MXIReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v37 = 5381;
    do
    {
      v35 = v37;
      v38 = *v36++;
      v37 = (33 * v37) ^ v38;
    }

    while (v38);
  }

  v49 = (v44 - 0x61C8864680B583E9 + (v35 << 6) + (v35 >> 2)) ^ v35;
  v39 = (*(**(a4 + 5) + 32))(*(a4 + 5), 16, 8);
  *v39 = &unk_1F5D153E8;
  *(v39 + 8) = *&v55[8];
  v63 = v39;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 96, &v49, &v63);
  v49 = 0xE8B64BD28AB80FLL;
  v50 = "MXIProvider";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(&v49, __s, a3);
  v41 = ((ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + *&v64[24]) ^ ScopeHash;
  v42 = (*&v64[12] - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41;
  v43 = (*&v64[16] - 0x61C8864680B583E9 + (v42 << 6) + (v42 >> 2)) ^ v42;
  return (v45 + (v43 << 6) + (v43 >> 2)) ^ v43;
}

uint64_t re::MXIProvider::provide(re::MXIProvider *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v121 = *MEMORY[0x1E69E9840];
  v7 = 0x9E3779B97F4A7C17;
  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, v108);
    v9 = (*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(a3);
  v11 = 0x9E3779B97F4A7C17;
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, v108);
    v11 = ((*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108) - 0x61C8864680B583E9;
  }

  v77 = re::RenderGraphDataStore::get<re::MXIFrameData>(a4 + 32, ((v9 >> 2) + (v9 << 6) + v11) ^ v9);
  v12 = *(*(v77 + 8) + 40);
  if (a3)
  {
    v13 = *a3;
    if (*a3)
    {
      v14 = a3[1];
      if (v14)
      {
        v15 = a3 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v7 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9;
    }
  }

  else
  {
    v7 = 0x1E3779B97F4A7C16;
  }

  *&v108[4] = 0x200000000;
  *&v108[12] = -1;
  v109 = -1;
  v110 = -1;
  v112 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v113 = _D0;
  v114 = xmmword_1E30A3B60;
  v115 = 0x2000000000;
  v116 = -1;
  v117 = -1;
  v118 = -1;
  v120 = 0;
  v111 = 0;
  *v108 = 2;
  v22 = &re::kMXIOffscreenColorIDs[2 * v12];
  v23 = v22[1];
  v119 = (v7 + (*v22 << 6) + ((*v22 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v22 & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(a4, v108, v23, &v89);
  if (*(this + 40) == 1)
  {
    v24 = (&re::kMXIOffscreenDepthIDs + 16 * v12);
    v25 = v24[1];
    v119 = (v7 + (*v24 << 6) + ((*v24 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v24 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(a4, v108, v25, v100);
    v80 = *v100;
    v81 = *&v100[12];
    v78 = *&v100[8];
    re::getScopeRenderTargetDesc(v100, __s, a3, a4);
    *&v100[4] = 25;
    *&v101[12] = 3;
    v103 = 48;
    re::RenderFrame::createTarget(a4, v100, "depthAsColor[1]", v97);
    v73 = *v97;
    *&v97[20] = 1065353216;
    v71 = *&v97[12];
    v72 = *&v97[8];
    *&v97[8] = -1;
    v97[16] = 0;
    *&v97[24] = 0xFFFFFFFF00000020;
    *v97 = 2;
    v98 = -1;
    v99 = (v7 - 0x557D4C1A6C572CLL) ^ 0x27D6D33797FE5053;
    re::RenderFrame::createBuffer(a4, v97, "mxiAlphaBuff", v96);
    v76 = *&v96[0];
    v74 = HIDWORD(v96[0]);
    v75 = DWORD2(v96[0]);
    *v97 = 2;
    v99 = (v7 - 0x2A589ED6D6038809) ^ 0x530399EAB9EE03DCLL;
    re::RenderFrame::createBuffer(a4, v97, "mxiAtomicBuff", v96);
    v66 = *&v96[0];
    v64 = HIDWORD(v96[0]);
    v65 = DWORD2(v96[0]);
  }

  else
  {
    v66 = 0;
    v76 = 0;
    v73 = 0;
    v80 = 0;
    v64 = -1;
    v65 = -1;
    v74 = -1;
    v75 = -1;
    v71 = -1;
    v72 = -1;
    v78 = -1;
    v81 = -1;
  }

  if (*(this + 45) == 1)
  {
    v26 = (&re::kMXIOffscreenLowResBlurIDs + 16 * v12);
    v27 = v26[1];
    v119 = (v7 + (*v26 << 6) + ((*v26 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v26 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(a4, v108, v27, v100);
    v70 = *v100;
    v69 = *&v100[8];
    v28 = (&re::kMXIOffscreenLowResAlphaIDs + 16 * v12);
    v29 = v28[1];
    v119 = (v7 + (*v28 << 6) + ((*v28 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v28 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(a4, v108, v29, v100);
    v68 = *v100;
    v67 = *&v100[8];
    v30 = (&re::kMXIOffscreenLowResDilateAlphaIDs + 16 * v12);
    v31 = v30[1];
    v119 = (v7 + (*v30 << 6) + ((*v30 & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ *v30 & 0x7FFFFFFFFFFFFFFFLL;
    re::RenderFrame::createTarget(a4, v108, v31, v100);
    if (*(this + 42) == 1)
    {
      re::getScopeRenderTargetDesc(v100, __s, a3, a4);
      *&v100[12] = 0x20000000200;
      *&v100[4] = 253;
      *&v101[12] = 3;
      v103 = 48;
      *&v101[36] = 2;
      re::RenderFrame::createTarget(a4, v100, "LowResStencil", v97);
    }
  }

  else
  {
    v68 = 0;
    v70 = 0;
    v67 = -1;
    v69 = -1;
  }

  v32 = re::AssetHandle::loadedAsset<re::MeshAsset>((*(v77 + 8) + 128));
  if (!v32)
  {
    goto LABEL_26;
  }

  v33 = 32;
  if (*(v32 + 1264))
  {
    v33 = 608;
  }

  if (*(v32 + v33))
  {
    v87 = 0;
    v88 = -1;
    if (re::MeshAsset::partCountForModel(v32, 0) == 2)
    {
      re::getScopeRenderTargetDesc(v100, __s, a3, a4);
      *&v100[4] = 252;
      *&v101[12] = 3;
      v103 = 48;
      *&v101[36] = 2;
      re::RenderFrame::createTarget(a4, v100, "Depth", &v87);
      v82 = 1;
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
LABEL_26:
    v82 = 0;
    v87 = 0;
    v88 = -1;
  }

  v85 = 0;
  v86 = -1;
  if (*(this + 42) == 1)
  {
    re::getScopeRenderTargetDesc(v100, __s, a3, a4);
    *&v100[4] = 253;
    *&v101[12] = 3;
    v103 = 48;
    *&v101[36] = 2;
    re::RenderFrame::createTarget(a4, v100, "Stencil", &v85);
  }

  RenderGraph = re::RenderFrame::makeRenderGraph(a4, a3, 0);
  v35 = RenderGraph;
  memset(&v97[8], 0, 18);
  memset(v96 + 8, 0, 18);
  v79 = RenderGraph;
  if (*(this + 42) == 1)
  {
    v36 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(RenderGraph, "MXIOffscreenStencil");
    *v100 = "MXIStencil";
    *&v100[8] = 10;
    re::DynamicString::operator=((v36 + 272), v100);
    *(v36 + 304) = 2;
    v37 = re::RenderFrame::tryGetData<re::VRRData>(a4, __s, a3);
    if (v37 && *(v37 + 12) == 1)
    {
      *(v36 + 67) = 1;
    }

    *v100 = v89;
    *&v100[16] = 0x100000000;
    *v101 = *v97;
    *&v101[10] = *&v97[10];
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v36 + 224), v100);
    *v100 = v85;
    *&v100[8] = v86;
    *&v100[16] = 0x300000000;
    *&v101[8] = 0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v36 + 224), v100);
    if (v82)
    {
      *v100 = v87;
      *&v100[8] = v88;
      *&v100[16] = 0x200000000;
      *&v101[8] = xmmword_1E30474D0;
      *&v101[24] = 0;
      *&v101[32] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v36 + 224), v100);
    }

    if ((*(v36 + 308) & 1) == 0)
    {
      *(v36 + 308) = 1;
    }

    *(v36 + 309) = xmmword_1E3108860;
    *(v36 + 325) = 1 << v12;
    re::RenderGraphNode::configure(v36, __s, a3, a4);
    v35 = v79;
  }

  if (v82)
  {
    v38 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(v35, "MXIOffscreenOpaque");
    *v100 = v89;
    *&v100[16] = 0x100000000;
    *v101 = *v97;
    *&v101[10] = *&v97[10];
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
    if (*(this + 42) == 1)
    {
      *v100 = v85;
      *&v100[8] = v86;
      *&v100[16] = 0x300000000;
      *&v101[12] = v94;
      *&v101[8] = 0;
      *&v101[20] = v95;
      *&v101[24] = 0;
      *&v101[32] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
      if ((*(v38 + 308) & 1) == 0)
      {
        *(v38 + 308) = 1;
      }

      *(v38 + 309) = 33619713;
      *(v38 + 317) = 33619713;
      *(v38 + 325) = 1 << v12;
    }

    if (*(this + 40) == 1)
    {
      *v100 = v73;
      *&v100[8] = __PAIR64__(v71, v72);
      *&v100[16] = 0x100000001;
      *v101 = v96[0];
      *&v101[10] = *(v96 + 10);
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
      *v100 = v80;
      *&v100[8] = __PAIR64__(v81, v78);
      *&v100[16] = 0x500000002;
      *&v101[8] = xmmword_1E30474D0;
      *&v101[24] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
    }

    *v100 = v87;
    *&v100[8] = v88;
    *&v100[16] = 0x200000000;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v38 + 224), v100);
    v39 = re::RenderFrame::tryGetData<re::VRRData>(a4, __s, a3);
    if (v39 && *(v39 + 12) == 1)
    {
      *(v38 + 67) = 1;
    }

    if (*(this + 43))
    {
      v40 = "MXIEdgeProximityOpaque";
    }

    else
    {
      v40 = "MXIOffscreenOpaque";
    }

    v41 = 18;
    if (*(this + 43))
    {
      v41 = 22;
    }

    *v100 = v40;
    *&v100[8] = v41;
    re::DynamicString::operator=((v38 + 272), v100);
    re::RenderGraphNode::configure(v38, __s, a3, a4);
    v35 = v79;
  }

  v42 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(v35, "MXIOffscreen");
  *v100 = v89;
  *&v100[16] = 0x100000000;
  *v101 = *v97;
  *&v101[10] = *&v97[10];
  *&v101[32] = 0;
  *&v101[28] = 0;
  re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
  if (*(this + 42) == 1)
  {
    *v100 = v85;
    *&v100[8] = v86;
    *&v100[16] = 0x300000000;
    *&v101[12] = v94;
    *&v101[8] = 0;
    *&v101[20] = v95;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
    if ((*(v42 + 308) & 1) == 0)
    {
      *(v42 + 308) = 1;
    }

    *(v42 + 309) = 33619713;
    *(v42 + 317) = 33619713;
    *(v42 + 325) = 1 << v12;
    v35 = v79;
  }

  if (*(this + 40) == 1)
  {
    *v100 = v73;
    *&v100[8] = __PAIR64__(v71, v72);
    *&v100[16] = 0x100000001;
    *v101 = v96[0];
    *&v101[10] = *(v96 + 10);
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
    *v100 = v80;
    *&v100[8] = __PAIR64__(v81, v78);
    *&v100[16] = 0x500000002;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
  }

  if (v82)
  {
    *v100 = v87;
    *&v100[8] = v88;
    *&v100[16] = 0x200000000;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v42 + 224), v100);
  }

  v43 = re::RenderFrame::tryGetData<re::VRRData>(a4, __s, a3);
  v44 = v43;
  if (v43 && *(v43 + 12) == 1)
  {
    *(v42 + 67) = 1;
  }

  if (*(this + 43))
  {
    v45 = "MXIEdgeProximity";
  }

  else
  {
    v45 = "MXIOffscreen";
  }

  v46 = 12;
  if (*(this + 43))
  {
    v46 = 16;
  }

  *v100 = v45;
  *&v100[8] = v46;
  re::DynamicString::operator=((v42 + 272), v100);
  *(v42 + 304) = 0;
  re::RenderGraphNode::configure(v42, __s, a3, a4);
  if (*(this + 40) == 1)
  {
    v48 = re::globalAllocators(v47);
    v49 = (*(*v48[2] + 32))(v48[2], 448, 16);
    v50 = re::RenderGraphMRCNode::RenderGraphMRCNode(v49, "MXIDepthResolve");
    *v50 = &unk_1F5D16698;
    *v100 = v50;
    re::DynamicArray<re::TransitionCondition *>::add(v35, v100);
    *(v49 + 24) = *(v35 + 10);
    *(v49 + 32) = *(v35 + 12);
    *(v49 + 48) = *(v35 + 13);
    re::AssetHandle::operator=(v49 + 264, this + 6);
    *v100 = "kernelDepthFilter16FitPlane";
    *&v100[8] = 27;
    re::DynamicString::operator=((v49 + 288), v100);
    *v100 = v89;
    *v101 = 0xA00000002;
    re::DynamicArray<re::TargetRead>::add((v49 + 184), v100);
    *v100 = v73;
    *&v100[8] = __PAIR64__(v71, v72);
    *&v100[16] = 1;
    *&v100[20] = 0;
    v100[22] = 0;
    *v101 = 0xA00000002;
    re::DynamicArray<re::TargetRead>::add((v49 + 184), v100);
    *v100 = v89;
    *&v100[16] = 0x100000000;
    *v101 = *v97;
    *&v101[10] = *&v97[10];
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    *v100 = v73;
    *&v100[8] = __PAIR64__(v71, v72);
    *&v100[16] = 0x100000001;
    *v101 = v96[0];
    *&v101[10] = *(v96 + 10);
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    if (v82)
    {
      *v100 = v87;
      *&v100[8] = v88;
      *&v100[16] = 0x200000000;
      *&v101[8] = xmmword_1E30474D0;
      *&v101[24] = 0;
      *&v101[32] = 0;
      *&v101[28] = 0;
      re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    }

    *v100 = v80;
    *&v100[8] = __PAIR64__(v81, v78);
    *&v100[16] = 0x500000002;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[32] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v49 + 224), v100);
    if (v44 && *(v44 + 12) == 1)
    {
      *(v49 + 67) = 1;
    }

    *(v49 + 336) = 0x1000000010;
    *(v49 + 344) = 0;
    *v100 = 0x40000000000;
    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add((v49 + 352), v100);
    re::AssetHandle::loadNow(*(v49 + 272), 0);
    re::RenderGraphNode::configure(v49, __s, a3, a4);
    v51 = re::RenderGraph::addNode<re::MXIAlphaComputeNode>(v35, "MXIZeroAlphaBuffer");
    re::AssetHandle::operator=(v51 + 264, this + 6);
    *v100 = "kernelComputeVertexDepthAndZeroEdgeValue";
    *&v100[8] = 40;
    re::DynamicString::operator=((v51 + 288), v100);
    v52 = *(v77 + 8);
    *(v51 + 109) = *(v52 + 96);
    *(v51 + 55) = 0x100000008;
    *(v51 + 106) = 1;
    *(v51 + 107) = ((*(v52 + 100) + 7.0) * 0.125);
    *(v51 + 108) = 1;
    *v100 = v80;
    *&v100[8] = __PAIR64__(v81, v78);
    *v101 = 2;
    re::DynamicArray<re::TargetRead>::add((v51 + 184), v100);
    *v100 = v76;
    *&v100[8] = __PAIR64__(v74, v75);
    *&v100[16] = 0x500000001;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v51 + 144), v100);
    *v100 = v66;
    *&v100[8] = __PAIR64__(v64, v65);
    *&v100[16] = 0x500000004;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v51 + 144), v100);
    re::RenderGraphComputeNodeBase::configure(v51, __s, a3, a4);
    v53 = re::RenderGraph::addNode<re::MXIAlphaComputeNode>(v79, "MXIPopulateAlphaBuffer");
    re::AssetHandle::operator=(v53 + 264, this + 6);
    *v100 = "kernelComputeEdgeValue";
    *&v100[8] = 22;
    re::DynamicString::operator=((v53 + 288), v100);
    v54 = *(v77 + 8);
    *(v53 + 109) = (*(v54 + 96) + -1.0);
    *(v53 + 55) = 0x100000008;
    *(v53 + 106) = 1;
    *(v53 + 107) = (((*(v54 + 100) + -1.0) + 7.0) * 0.125);
    *(v53 + 108) = 1;
    *v100 = v80;
    v35 = v79;
    *&v100[8] = __PAIR64__(v81, v78);
    *v101 = 2;
    re::DynamicArray<re::TargetRead>::add((v53 + 184), v100);
    *v100 = v66;
    *&v100[8] = __PAIR64__(v64, v65);
    *&v100[16] = 0x500000001;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v53 + 144), v100);
    re::RenderGraphComputeNodeBase::configure(v53, __s, a3, a4);
    v55 = re::RenderGraph::addNode<re::MXIAlphaComputeNode>(v79, "MXIDilateAlphaBuffer");
    re::AssetHandle::operator=(v55 + 264, this + 6);
    *v100 = "kernelDilateEdgeValues";
    *&v100[8] = 22;
    re::DynamicString::operator=((v55 + 288), v100);
    v56 = *(v77 + 8);
    *(v55 + 109) = *(v56 + 96);
    *(v55 + 55) = 0x100000008;
    *(v55 + 106) = 1;
    *(v55 + 107) = ((*(v56 + 100) + 7.0) * 0.125);
    *(v55 + 108) = 1;
    *v100 = v66;
    *&v100[8] = __PAIR64__(v64, v65);
    *v101 = 2;
    re::DynamicArray<re::TargetRead>::add((v55 + 104), v100);
    *v100 = v76;
    *&v100[8] = __PAIR64__(v74, v75);
    *&v100[16] = 0x500000001;
    *&v101[8] = xmmword_1E30474D0;
    *&v101[24] = 0;
    *&v101[28] = 0;
    re::DynamicArray<re::TargetWrite>::add((v55 + 144), v100);
    v47 = re::RenderGraphComputeNodeBase::configure(v55, __s, a3, a4);
  }

  if (*(this + 44) == 1)
  {
    v57 = re::RenderGraph::addNode<re::MXIOffscreenMeshNode>(v35, "MXIOffscreenTreatments");
    v84 = 0uLL;
    v100[0] = 0;
    re::RenderGraphMeshNodeBase::setColorAttachment(v57, 0, &v89, &v84, 0, v100);
    if (v82)
    {
      v100[0] = 0;
      re::RenderGraphMeshNodeBase::setDepthOnlyAttachment(v57, &v87, 0, v100, 0.0);
    }

    *v100 = "MXITreatments";
    *&v100[8] = 13;
    re::DynamicString::operator=((v57 + 272), v100);
    *(v57 + 304) = 2;
    if (v44 && *(v44 + 12) == 1)
    {
      *(v57 + 67) = 1;
    }

    if (*(this + 42) == 1)
    {
      v100[0] = 0;
      re::RenderGraphMeshNodeBase::setStencilOnlyAttachment(v57, &v85, 0, 0, v100);
      if ((*(v57 + 308) & 1) == 0)
      {
        *(v57 + 308) = 1;
      }

      *(v57 + 309) = 33619713;
      *(v57 + 317) = 33619713;
      *(v57 + 325) = 1 << v12;
      v35 = v79;
    }

    re::RenderGraphNode::configure(v57, __s, a3, a4);
  }

  v58 = re::globalAllocators(v47);
  v59 = v58[2];
  v93[0] = &unk_1F5D15428;
  v93[3] = v59;
  v93[4] = v93;
  *v100 = v12;
  *&v100[8] = v89;
  *v101 = this;
  *&v101[8] = v70;
  *&v101[16] = v69;
  *&v101[24] = v68;
  *&v101[32] = v67;
  v102 = v80;
  v103 = v78;
  v104 = v81;
  v105 = v76;
  v106 = v75;
  v107 = v74;
  v60 = re::globalAllocators(v58)[2];
  v91 = v60;
  if (v60)
  {
    v60 = (*(*v60 + 32))(v60, 104, 0);
  }

  re::internal::Callable<re::MXIProvider::provide(char const*,char const*,re::RenderFrame &)::$_1,void ()(re::RenderGraphContext &)>::Callable(v60, v100);
  v92 = v61;
  v62 = re::RenderGraph::addNode(v35, "MXIProvideTextures", v93, v90);
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v90);
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v93);
  return (*(*v62 + 80))(v62, __s, a3, a4);
}

uint64_t re::RenderFrame::tryGetData<re::VRRData>(uint64_t a1, char *__s, const char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v11);
    v8 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(a3);
  if (v9)
  {
    MurmurHash3_x64_128(a3, v9, 0, &v11);
    v6 = ((v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11) - 0x61C8864680B583E9;
  }

  return re::RenderGraphDataStore::tryGet<re::VRRData>(a1 + 32, ((v8 >> 2) + (v8 << 6) + v6) ^ v8);
}