BOOL re::anonymous namespace::isDepthOnly(re::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8828, memory_order_acquire) & 1) == 0)
  {
    v9 = this;
    v4 = __cxa_guard_acquire(&qword_1EE1B8828);
    this = v9;
    if (v4)
    {
      qword_1EE1B8820 = re::hashString("FadeDepthPrepass", v3);
      __cxa_guard_release(&qword_1EE1B8828);
      this = v9;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1B8838, memory_order_acquire) & 1) == 0)
  {
    v10 = this;
    v6 = __cxa_guard_acquire(&qword_1EE1B8838);
    this = v10;
    if (v6)
    {
      qword_1EE1B8830 = re::hashString("VFXDepthWrite", v5);
      __cxa_guard_release(&qword_1EE1B8838);
      this = v10;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1B8848, memory_order_acquire) & 1) == 0)
  {
    v11 = this;
    v8 = __cxa_guard_acquire(&qword_1EE1B8848);
    this = v11;
    if (v8)
    {
      qword_1EE1B8840 = re::hashString("VFXFadeOpaqueDepthWrite", v7);
      __cxa_guard_release(&qword_1EE1B8848);
      this = v11;
    }
  }

  return qword_1EE1B8820 == this || qword_1EE1B8830 == this || qword_1EE1B8840 == this;
}

void ___ZN2re17bucketVFXMeshPartERNS_19MeshPartDrawContextEPKNS_28MaterialParameterTableLayersERKNS_12FrameContextERNS_9HashTableImNS_12MeshPassInfoENS_17PrecalculatedHashENS_7EqualToImEELb0ELb0EEEPvb_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a1 + 64) & 1) != 0 || *(*(a1 + 56) + 248) == 1)
  {
    [*(a1 + 32) set_textureTable:*a3];
    [*(a1 + 32) set_bufferTable:*(a3 + 8)];
    [*(a1 + 32) set_samplerTable:*(a3 + 16)];
    [*(a1 + 32) set_constantTable:*(a3 + 24)];
    [*(a1 + 32) set_viewports:*(a3 + 32)];
    [*(a1 + 32) set_renderTargetInfo:*(a3 + 40)];
    [*(a1 + 32) set_patchHandler:*(a3 + 56)];
    [*(a1 + 32) set_stateOverride:*(a3 + 88)];
    [*(a1 + 32) set_isDrawingBlur:*(a3 + 89)];
    v7 = *(a3 + 64);
    v8 = *(a3 + 80);
    [*(a1 + 32) set_stencilInfo:&v7];
    LODWORD(v6) = *(a3 + 84);
    [*(a1 + 32) set_fadeOpacity:v6];
    [*(a1 + 32) set_isFadeOpaque:*(a1 + 65)];
    [*(a1 + 32) set_dynamicFunctionConstants:*(a3 + 48)];
    [*(a1 + 32) set_isDepthOnly:*(a1 + 66)];
    [*(a1 + 32) set_meshStats:*(a3 + 96)];
    [*(a1 + 40) setEncoder:v5 state:*(a3 + 104)];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, *a2, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::MeshPassInfo>(a1, &v7, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v8) + 16;
  }
}

void ___ZN2re12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 hasCustomHandler])
  {
    [v3 boundingBoxMin];
    v22 = v4;
    v5 = [v3 boundingBoxMax];
    v21 = v6;
    re::globalAllocators(v5);
    v7 = *(**(a1 + 40) + 32);
    v8 = (*(*v7 + 32))(v7, 544, 16);
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 80) = 0u;
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
    *(v8 + 128) = 0u;
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
    *(v8 + 176) = 0u;
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
    *(v8 + 224) = 0u;
    *(v8 + 240) = 0u;
    *(v8 + 256) = 0u;
    *(v8 + 272) = 0u;
    *(v8 + 200) = 1;
    *(v8 + 216) = 0;
    *(v8 + 224) = 0;
    *(v8 + 208) = 0;
    *(v8 + 232) = 0;
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
    *(v8 + 240) = 0;
    *(v8 + 264) = 0;
    *(v8 + 272) = 0u;
    *(v8 + 288) = 0u;
    *(v8 + 288) = 0u;
    *(v8 + 304) = 0u;
    *(v8 + 304) = 0;
    *(v8 + 320) = 0;
    *(v8 + 328) = 0;
    *(v8 + 336) = 0;
    *(v8 + 344) = 0;
    *(v8 + 352) = xmmword_1E3047670;
    *(v8 + 368) = xmmword_1E3047680;
    *(v8 + 384) = xmmword_1E30476A0;
    *(v8 + 400) = xmmword_1E30474D0;
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    *(v8 + 416) = vnegq_f32(v9);
    *(v8 + 432) = v9;
    *(v8 + 456) = 0;
    *(v8 + 448) = 0;
    *(v8 + 458) = 0;
    *(v8 + 488) = 0;
    *(v8 + 496) = &str_67;
    *(v8 + 512) = 0;
    *(v8 + 520) = 3;
    *(v8 + 524) = 0x180197E00000001;
    *(v8 + 460) = -1;
    *(v8 + 468) = -1;
    *(v8 + 473) = -1;
    v10 = re::globalAllocators(v8)[2];
    v27[0] = &unk_1F5D04768;
    v30 = v10;
    v31 = v27;
    v11 = (*(*v7 + 16))(v7, v8, v27);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v27);
    re::StringID::destroyString((v11 + 488));
    *(v11 + 488) = 0x8B87378FFD0D002ALL;
    *(v11 + 496) = "VFX Particles";
    *(v11 + 416) = v22;
    *(v11 + 432) = v21;
    *(v11 + 520) = [v3 primitiveType];
    *(v11 + 458) = [v3 materialType];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 24);
    *(v12 + 24) = v13 + 1;
    v14 = [v3 customHandler];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke_2;
    aBlock[3] = &unk_1E871F398;
    v24 = v14;
    v15 = v14;
    v16 = _Block_copy(aBlock);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v25[0] = v16;
    v25[1] = v17;
    v26 = 1;
    v19 = *(a1 + 72);
    v20 = *(v18 + 592);
    if (!v20)
    {
      v20 = *(v18 + 512);
    }

    v27[0] = *(v18 + 512);
    v27[1] = v20;
    v28 = v19;
    v29 = 0;
    v30 = v13;
    LODWORD(v31) = 0;
    v32 = 0;
    v33 = v11;
    v34 = v18 + 128;
    v35 = v11 + 416;
    v36 = *(v11 + 458);
    v37 = v18 + 504;
    v38 = 0;
    v39 = *(v18 + 440);
    v40 = *(v18 + 448);
    v41 = v25;
    v42 = 0;
    (*(**(a1 + 64) + 16))(*(a1 + 64), v27);
  }
}

void _ZNK2re8internal8CallableIZZNS_12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb_E3__0FvPvEJEEclEOSC_(uint64_t a1, re::AttributeTable **a2)
{
  v2 = *a2;
  re::StringID::destroyString((*a2 + 488));
  re::FixedArray<re::StringID>::deinit(v2 + 41);

  re::AttributeTable::~AttributeTable(v2);
}

void *_ZNK2re8internal8CallableIZZNS_12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb_E3__0FvPvEJEE9cloneIntoESC_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04768;
  return result;
}

void *_ZN2re8internal8CallableIZZNS_12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb_E3__0FvPvEJEE8moveIntoESC_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04768;
  return result;
}

void _ZNK2re8internal8CallableIZZNS_34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb0_E3__1FvPvEJEEclEOSB_(uint64_t a1, re::AttributeTable **a2)
{
  v2 = *a2;
  re::StringID::destroyString((*a2 + 488));
  re::FixedArray<re::StringID>::deinit(v2 + 41);

  re::AttributeTable::~AttributeTable(v2);
}

void *_ZNK2re8internal8CallableIZZNS_34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb0_E3__1FvPvEJEE9cloneIntoESB_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D047C0;
  return result;
}

void *_ZN2re8internal8CallableIZZNS_34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb0_E3__1FvPvEJEE8moveIntoESB_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D047C0;
  return result;
}

uint64_t *re::BucketArray<re::MeshPartDrawContext,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshPartDrawContext,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::MeshPartDrawContext,128ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 7)
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
        v5 = (*(**v3 + 32))(*v3, 30720, 0);
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

uint64_t re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](a1, i);
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

uint64_t re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 7)
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

  return *(v3 + 8 * (a2 >> 7)) + 240 * (a2 & 0x7F);
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

  if (*(a1 + 8) <= a2 >> 7)
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

  return *(v3 + 8 * (a2 >> 7)) + 240 * (a2 & 0x7F);
}

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::MeshPassInfo>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  re::BucketArray<RESubscriptionHandle,8ul>::swap(v7 + 16, a4);
  *(v9 + 56) = *(a4 + 56);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 80 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 80 * v4;
}

void re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0;
        v11 = v8 + 16;
        *(v8 + 8) = v10;
        *(v8 + 24) = 0;
        *(v8 + 32) = 1;
        *(v8 + 64) = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v8 + 40) = 0;
        result = re::BucketArray<RESubscriptionHandle,8ul>::swap(v8 + 16, v9 + 16);
        *(v11 + 56) = *(v9 + 72);
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

double re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4 + 16;
          re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(v8);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
          v3 = *(a1 + 8);
        }

        v4 += 80;
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

uint64_t re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 7)
  {
    re::BucketArray<re::MeshPartDrawContext,128ul>::setBucketsCapacity(a1, (v2 + 128) >> 7);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 7)
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

  v5 = *(v4 + 8 * (v2 >> 7));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 240 * (v2 & 0x7F);
}

__n128 re::CameraStreamContext::init(re::CameraStreamContext *this)
{
  v2 = MEMORY[0x1E69E9B18];
  v50 = 0x11844F475DLL;
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  v25 = *MEMORY[0x1E69E9B18];
  v26 = v3;
  v4 = *(MEMORY[0x1E69E9B18] + 48);
  v27 = *(MEMORY[0x1E69E9B18] + 32);
  v28 = v4;
  v29 = v25;
  v30 = v3;
  v31 = v27;
  v32 = v4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = MEMORY[0x1E69E9B10];
  v7 = *(MEMORY[0x1E69E9B10] + 16);
  v6 = *(MEMORY[0x1E69E9B10] + 32);
  v33 = *MEMORY[0x1E69E9B10];
  v34 = v7;
  v35 = v6;
  v36 = 0u;
  *v37 = 0u;
  v38 = 0u;
  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(this + 16, &v50, &v25);
  if (v37[1])
  {
  }

  if (v36 && *(&v36 + 1))
  {
    (*(*v36 + 40))();
  }

  v50 = 0x21F05F00586;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v9 = v2[3];
  v27 = v2[2];
  v28 = v9;
  v29 = v25;
  v30 = v8;
  v31 = v27;
  v32 = v9;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v5[1];
  v10 = v5[2];
  v33 = *v5;
  v34 = v11;
  v35 = v10;
  v36 = 0u;
  *v37 = 0u;
  v38 = 0u;
  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(this + 16, &v50, &v25);
  if (v37[1])
  {
  }

  if (v36 && *(&v36 + 1))
  {
    (*(*v36 + 40))();
  }

  v13 = *(this + 435);
  if (!v13)
  {
    v14 = (this + 48);
    v15 = *(this + 4);
    LODWORD(v16) = 416;
    v18 = (this + 416 * v15 + 48);
    goto LABEL_20;
  }

  v14 = (this + 1712);
  v15 = *(this + 436);
  if (v15)
  {
    v16 = 0;
    v17 = *(this + 216);
    while ((*v17 & 0x80000000) == 0)
    {
      v17 += 104;
      if (v15 == ++v16)
      {
        LODWORD(v16) = *(this + 436);
        break;
      }
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v18 = (this + 1712);
  while (1)
  {
LABEL_20:
    while (v13)
    {
      if (v15 == v16)
      {
        return result;
      }

      v19 = v14[1].n128_u64[0] + 416 * v16;
      result = *(v19 + 176);
      v20 = *(v19 + 144);
      DWORD1(v20) = *(v19 + 164);
      *(v19 + 224) = result.n128_u64[0];
      *(v19 + 232) = v20;
      v21 = v16 + 1;
      if (v14[2].n128_u32[0] <= (v16 + 1))
      {
        LODWORD(v16) = v16 + 1;
      }

      else
      {
        LODWORD(v16) = v14[2].n128_u32[0];
      }

      while (v16 != v21)
      {
        v22 = v21;
        v23 = *(v14[1].n128_u64[0] + 416 * v21++);
        if (v23 < 0)
        {
          LODWORD(v16) = v22;
          goto LABEL_20;
        }
      }
    }

    if (v14 == v18)
    {
      return result;
    }

    result = v14[11];
    v24 = v14[9];
    v24.n128_u32[1] = v14[10].n128_u32[1];
    v14[14].n128_u64[0] = result.n128_u64[0];
    v14[14].n128_u64[1] = v24.n128_u64[0];
    v14 += 26;
  }
}

id re::CameraStreamManager::context@<X0>(re::CameraStreamManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F5D04818;
  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::SmallHashTable(a2 + 16, this + 32);
  *(a2 + 1776) = *(this + 112);
  *(a2 + 1792) = *(this + 113);
  *(a2 + 1808) = *(this + 114);
  *(a2 + 1824) = *(this + 460);
  *(a2 + 1760) = *(this + 111);
  *(a2 + 1832) = *(this + 231);
  result = *(this + 232);
  *(a2 + 1840) = result;
  return result;
}

uint64_t re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = result;
  v93 = *MEMORY[0x1E69E9840];
  if (!*(result + 1724))
  {
    v8 = (result + 16);
    v7 = *(result + 16);
    v9 = *a2;
    if (!v7)
    {
LABEL_21:
      v36 = *(a3 + 96);
      v89 = *(a3 + 112);
      v37 = *(a3 + 144);
      v90 = *(a3 + 128);
      v91 = v37;
      v92 = *(a3 + 160);
      v38 = *(a3 + 32);
      v85 = *(a3 + 48);
      v39 = *(a3 + 80);
      v86 = *(a3 + 64);
      v87 = v39;
      v88 = v36;
      v40 = *(a3 + 16);
      v82 = *a3;
      v83 = v40;
      v84 = v38;
      v41 = *(a3 + 352);
      v42 = *(a3 + 368);
      v43 = *(a3 + 320);
      v78 = *(a3 + 336);
      v79 = v41;
      v44 = *(a3 + 384);
      v80 = v42;
      v81 = v44;
      v45 = *(a3 + 288);
      v46 = *(a3 + 304);
      v47 = *(a3 + 256);
      v74 = *(a3 + 272);
      v75 = v45;
      v76 = v46;
      v77 = v43;
      v48 = *(a3 + 192);
      v49 = *(a3 + 224);
      v50 = *(a3 + 240);
      v70 = *(a3 + 208);
      v71 = v49;
      v51 = *(a3 + 176);
      v52 = *(a3 + 184);
      *(a3 + 176) = 0;
      *(a3 + 184) = 0;
      *(a3 + 192) = 0;
      *(a3 + 200) = 0;
      v72 = v50;
      v73 = v47;
      if (*v8 >= 4uLL)
      {
        re::internal::assertLog(4, a2, *&v48, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash();
        __break(1u);
      }

      else
      {
        v53 = v89;
        v54 = result + 416 * *v8;
        v55 = v91;
        *(v54 + 176) = v90;
        *(v54 + 192) = v55;
        *(v54 + 208) = v92;
        v56 = v85;
        v57 = v87;
        *(v54 + 112) = v86;
        *(v54 + 128) = v57;
        *(v54 + 144) = v88;
        *(v54 + 160) = v53;
        v58 = v83;
        *(v54 + 48) = v82;
        *(v54 + 64) = v58;
        *(v54 + 80) = v84;
        *(v54 + 96) = v56;
        v59 = v78;
        v60 = v80;
        v61 = v81;
        *(v54 + 400) = v79;
        *(v54 + 416) = v60;
        *(v54 + 432) = v61;
        v62 = v74;
        v63 = v76;
        v64 = v77;
        *(v54 + 336) = v75;
        *(v54 + 352) = v63;
        *(v54 + 368) = v64;
        *(v54 + 384) = v59;
        v65 = v70;
        v66 = v71;
        *(v54 + 240) = v48;
        *(v54 + 256) = v65;
        v67 = v72;
        v68 = v73;
        *(v54 + 272) = v66;
        *(v54 + 288) = v67;
        *(v54 + 32) = v9;
        *(v54 + 224) = v51;
        *(v54 + 232) = v52;
        *(v54 + 304) = v68;
        *(v54 + 320) = v62;
        v69 = *(result + 16);
        ++*(result + 24);
        *(result + 16) = v69 + 1;
        if (v69 == -1)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
          _os_crash();
          __break(1u);
        }
      }

      return result;
    }

    v10 = 416 * v7;
    v11 = 32;
    v12 = 416 * v7;
    do
    {
      if (*(result + v11) == v9)
      {
        return result;
      }

      v11 += 416;
      v12 -= 416;
    }

    while (v12);
    if ((v7 & 0xFFFFFFFC) == 0)
    {
      goto LABEL_21;
    }

    v6 = result + 1696;
    if (!*(result + 1696))
    {
      v13 = *result;
      if (!*result)
      {
      }

      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v5 + 1696, v13, 8);
      if (!*v8)
      {
        goto LABEL_20;
      }

      v10 = 416 * *v8;
    }

    v14 = v5 + 224;
    do
    {
      v70 = 0uLL;
      v15 = *(v14 - 192);
      *&v71 = 0;
      v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(v5 + 1696, (v14 - 192), v16 ^ (v16 >> 31), &v70);
      if (HIDWORD(v70) == 0x7FFFFFFF)
      {
        v17 = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v5 + 1696, DWORD2(v70), v70);
        *(v17 + 8) = *(v14 - 192);
        v19 = *(v14 - 32);
        v18 = *(v14 - 16);
        v20 = *(v14 - 48);
        *(v17 + 128) = *(v14 - 64);
        *(v17 + 144) = v20;
        *(v17 + 160) = v19;
        *(v17 + 176) = v18;
        v22 = *(v14 - 96);
        v21 = *(v14 - 80);
        v23 = *(v14 - 112);
        *(v17 + 64) = *(v14 - 128);
        *(v17 + 80) = v23;
        *(v17 + 96) = v22;
        *(v17 + 112) = v21;
        v25 = *(v14 - 160);
        v24 = *(v14 - 144);
        *(v17 + 16) = *(v14 - 176);
        *(v17 + 32) = v25;
        *(v17 + 48) = v24;
        *(v17 + 200) = 0;
        *(v17 + 208) = 0;
        *(v17 + 192) = 0;
        *(v17 + 192) = *v14;
        *v14 = 0;
        *(v17 + 200) = *(v14 + 8);
        *(v14 + 8) = 0;
        v26 = *(v17 + 208);
        *(v17 + 208) = *(v14 + 16);
        *(v14 + 16) = v26;
        *(v17 + 216) = *(v14 + 24);
        *(v14 + 24) = 0;
        v27 = *(v14 + 144);
        v29 = *(v14 + 96);
        v28 = *(v14 + 112);
        *(v17 + 320) = *(v14 + 128);
        *(v17 + 336) = v27;
        *(v17 + 288) = v29;
        *(v17 + 304) = v28;
        v30 = *(v14 + 160);
        v31 = *(v14 + 176);
        v32 = *(v14 + 208);
        *(v17 + 384) = *(v14 + 192);
        *(v17 + 400) = v32;
        *(v17 + 352) = v30;
        *(v17 + 368) = v31;
        v33 = *(v14 + 32);
        v34 = *(v14 + 48);
        v35 = *(v14 + 80);
        *(v17 + 256) = *(v14 + 64);
        *(v17 + 272) = v35;
        *(v17 + 224) = v33;
        *(v17 + 240) = v34;
        ++*(v5 + 1736);
      }

      v14 += 416;
      v10 -= 416;
    }

    while (v10);
LABEL_20:
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear((v5 + 16));
    goto LABEL_3;
  }

  v6 = result + 1696;
LABEL_3:

  return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(v6, a2, a3);
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v28);
  if (HIDWORD(v29) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 416 * HIDWORD(v29) + 16;
  }

  v7 = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v29, v28);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v10 = *(a3 + 144);
  v9 = *(a3 + 160);
  v11 = *(a3 + 128);
  *(v7 + 128) = *(a3 + 112);
  *(v7 + 144) = v11;
  *(v7 + 160) = v10;
  *(v7 + 176) = v9;
  v13 = *(a3 + 80);
  v12 = *(a3 + 96);
  v14 = *(a3 + 64);
  *(v7 + 64) = *(a3 + 48);
  *(v7 + 80) = v14;
  *(v7 + 96) = v13;
  *(v7 + 112) = v12;
  v16 = *(a3 + 16);
  v15 = *(a3 + 32);
  *(v7 + 16) = *a3;
  *(v7 + 32) = v16;
  *(v7 + 48) = v15;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 192) = 0;
  v17 = *(a3 + 184);
  *(v7 + 192) = *(a3 + 176);
  *(v7 + 200) = v17;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v18 = *(v7 + 208);
  *(v7 + 208) = *(a3 + 192);
  *(a3 + 192) = v18;
  *(v7 + 216) = *(a3 + 200);
  *(a3 + 200) = 0;
  v19 = *(a3 + 320);
  v21 = *(a3 + 272);
  v20 = *(a3 + 288);
  *(v7 + 320) = *(a3 + 304);
  *(v7 + 336) = v19;
  *(v7 + 288) = v21;
  *(v7 + 304) = v20;
  v22 = *(a3 + 336);
  v23 = *(a3 + 352);
  v24 = *(a3 + 384);
  *(v7 + 384) = *(a3 + 368);
  *(v7 + 400) = v24;
  *(v7 + 352) = v22;
  *(v7 + 368) = v23;
  v25 = *(a3 + 208);
  v26 = *(a3 + 224);
  v27 = *(a3 + 256);
  *(v7 + 256) = *(a3 + 240);
  *(v7 + 272) = v27;
  *(v7 + 224) = v25;
  *(v7 + 240) = v26;
  ++*(a1 + 40);
  return result;
}

void re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 416 * v10, 16);
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

void *re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 416 * *result;
    v3 = result + 26;
    do
    {
      v4 = v3[3];
      if (v4)
      {

        v3[3] = 0;
      }

      result = re::FixedArray<CoreIKTransform>::deinit(v3);
      *(v3 - 24) = 0;
      v3 += 52;
      v2 -= 416;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 416 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 416 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 416 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 416 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 416 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 416 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 416 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 416 * v4;
}

void re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, v9);
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 224;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 224) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 - 216) ^ (*(v7 - 216) >> 30));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = (*(a2 + 16) + v6);
        *(result + 8) = *(v10 - 27);
        v11 = *(v10 - 13);
        v12 = *(v10 - 11);
        *(result + 32) = *(v10 - 12);
        *(result + 48) = v12;
        *(result + 16) = v11;
        v14 = *(v10 - 10);
        v13 = *(v10 - 9);
        v15 = *(v10 - 7);
        *(result + 96) = *(v10 - 8);
        *(result + 112) = v15;
        *(result + 64) = v14;
        *(result + 80) = v13;
        v17 = *(v10 - 6);
        v16 = *(v10 - 5);
        v18 = *(v10 - 3);
        *(result + 160) = *(v10 - 4);
        *(result + 176) = v18;
        *(result + 128) = v17;
        *(result + 144) = v16;
        *(result + 192) = 0;
        *(result + 200) = 0;
        *(result + 208) = 0;
        v19 = *(v10 - 3);
        *(result + 192) = *(v10 - 4);
        *(result + 200) = v19;
        *(v10 - 4) = 0;
        *(v10 - 3) = 0;
        v20 = *(result + 208);
        *(result + 208) = *(v10 - 2);
        *(v10 - 2) = v20;
        *(result + 216) = *(v10 - 1);
        *(v10 - 1) = 0;
        v21 = v10[7];
        v23 = v10[4];
        v22 = v10[5];
        *(result + 320) = v10[6];
        *(result + 336) = v21;
        *(result + 288) = v23;
        *(result + 304) = v22;
        v24 = v10[8];
        v25 = v10[9];
        v26 = v10[11];
        *(result + 384) = v10[10];
        *(result + 400) = v26;
        *(result + 352) = v24;
        *(result + 368) = v25;
        v27 = v10[1];
        v29 = v10[2];
        v28 = v10[3];
        *(result + 224) = *v10;
        *(result + 240) = v27;
        *(result + 256) = v29;
        *(result + 272) = v28;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 416;
    }

    while (v5 < v2);
  }

  return result;
}

double re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::free(uint64_t result, unsigned int a2)
{
  v2 = *(result + 16) + 416 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    *(v2 + 8) = 0;
    v3 = *(v2 + 216);
    if (v3)
    {

      *(v2 + 216) = 0;
    }

    return re::FixedArray<CoreIKTransform>::deinit((v2 + 192));
  }

  return result;
}

void re::CameraStreamContext::~CameraStreamContext(re::CameraStreamContext *this)
{
  v2 = *(this + 230);
  if (v2)
  {

    *(this + 230) = 0;
  }

  v3 = *(this + 229);
  if (v3)
  {

    *(this + 229) = 0;
  }

  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(this + 16);
}

{
  v2 = *(this + 230);
  if (v2)
  {

    *(this + 230) = 0;
  }

  v3 = *(this + 229);
  if (v3)
  {

    *(this + 229) = 0;
  }

  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::SmallHashTable(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0;
  *(a1 + 1732) = 0x7FFFFFFFLL;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::copy(v4, (a2 + 16));
    ++*(a1 + 24);
  }

  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=((a1 + 1696), a2 + 1696);
  return a1;
}

_DWORD *re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(_DWORD *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (a1[6] < v4)
        {
          re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(a1, a2);
        ++a1[10];
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

        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::copy(void *a1, uint64_t *a2)
{
  v3 = (a2 + 2);
  v4 = *a2;
  v5 = (a1 + 2);
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>*>(v3, v3 + 416 * *a1, v5);
    if (*a1 != v4)
    {
      v10 = v3 + 416 * v4;
      v11 = 416 * *a1 + 208;
      v12 = a2 + v11;
      v13 = a1 + v11;
      do
      {
        *(v13 - 24) = *(v12 - 192);
        v14 = *(v12 - 176);
        v15 = *(v12 - 144);
        *(v13 - 10) = *(v12 - 160);
        *(v13 - 9) = v15;
        *(v13 - 11) = v14;
        v16 = *(v12 - 128);
        v17 = *(v12 - 112);
        v18 = *(v12 - 80);
        *(v13 - 6) = *(v12 - 96);
        *(v13 - 5) = v18;
        *(v13 - 8) = v16;
        *(v13 - 7) = v17;
        v19 = *(v12 - 64);
        v20 = *(v12 - 48);
        v21 = *(v12 - 16);
        *(v13 - 2) = *(v12 - 32);
        *(v13 - 1) = v21;
        *(v13 - 4) = v19;
        *(v13 - 3) = v20;
        re::FixedArray<double>::FixedArray(v13, v12);
        *(v13 + 3) = *(v12 + 24);
        v22 = *(v12 + 80);
        v24 = *(v12 + 32);
        v23 = *(v12 + 48);
        *(v13 + 4) = *(v12 + 64);
        *(v13 + 5) = v22;
        *(v13 + 2) = v24;
        *(v13 + 3) = v23;
        v25 = *(v12 + 144);
        v27 = *(v12 + 96);
        v26 = *(v12 + 112);
        *(v13 + 8) = *(v12 + 128);
        *(v13 + 9) = v25;
        *(v13 + 6) = v27;
        *(v13 + 7) = v26;
        v28 = *(v12 + 208);
        v30 = *(v12 + 160);
        v29 = *(v12 + 176);
        *(v13 + 12) = *(v12 + 192);
        *(v13 + 13) = v28;
        *(v13 + 10) = v30;
        *(v13 + 11) = v29;
        v31 = v12 + 224;
        v12 += 416;
        v13 += 416;
      }

      while (v31 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>*>(v3, v3 + 416 * v4, v5);
    if (v4 != *a1)
    {
      v6 = -416 * v4 + 416 * *a1;
      v7 = &a1[52 * v4 + 26];
      do
      {
        v8 = v7[3];
        if (v8)
        {

          v7[3] = 0;
        }

        re::FixedArray<CoreIKTransform>::deinit(v7);
        *(v7 - 24) = 0;
        v7 += 52;
        v6 -= 416;
      }

      while (v6);
    }
  }

  *a1 = v4;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams> const*,re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a3 + 192;
    v5 = a1 + 208;
    do
    {
      v6 = v5 - 208;
      *(v4 - 192) = *(v5 - 208);
      v7 = (v4 - 192);
      v8 = *(v5 - 192);
      v9 = *(v5 - 160);
      v7[2] = *(v5 - 176);
      v7[3] = v9;
      v7[1] = v8;
      v10 = *(v5 - 144);
      v11 = *(v5 - 128);
      v12 = *(v5 - 96);
      v7[6] = *(v5 - 112);
      v7[7] = v12;
      v7[4] = v10;
      v7[5] = v11;
      v13 = *(v5 - 80);
      v14 = *(v5 - 64);
      v15 = *(v5 - 32);
      v7[10] = *(v5 - 48);
      v7[11] = v15;
      v7[8] = v13;
      v7[9] = v14;
      if (v4 - 192 != v5 - 208)
      {
        v16 = *(v5 - 16);
        if (*v4)
        {
          if (!v16)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (v16)
        {
          re::FixedArray<double>::init<>(v4, v16, *(v5 - 8));
LABEL_9:
          re::FixedArray<double>::copy(v4, *(v5 - 8), *v5);
        }
      }

LABEL_10:
      NS::SharedPtr<MTL::Buffer>::operator=((v4 + 24), (v5 + 8));
      v17 = *(v5 + 64);
      v19 = *(v5 + 16);
      v18 = *(v5 + 32);
      *(v4 + 64) = *(v5 + 48);
      *(v4 + 80) = v17;
      *(v4 + 32) = v19;
      *(v4 + 48) = v18;
      v20 = *(v5 + 128);
      v22 = *(v5 + 80);
      v21 = *(v5 + 96);
      *(v4 + 128) = *(v5 + 112);
      *(v4 + 144) = v20;
      *(v4 + 96) = v22;
      *(v4 + 112) = v21;
      result = *(v5 + 176);
      v24 = *(v5 + 192);
      v26 = *(v5 + 144);
      v25 = *(v5 + 160);
      *(v4 + 192) = result;
      *(v4 + 208) = v24;
      *(v4 + 160) = v26;
      *(v4 + 176) = v25;
      v4 += 416;
      v5 += 416;
    }

    while (v6 + 416 != a2);
  }

  return result;
}

void *re::FixedArray<double>::copy(void *result, uint64_t a2, const void *a3)
{
  if (result[1] == a2)
  {
    if (a2)
    {
      v5 = result[2];

      return memmove(v5, a3, 8 * a2);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<double>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<double>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<double>::copy(a1, *(a2 + 8), *(a2 + 16));
  }

  return a1;
}

id re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(id result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 + v5 + 8) ^ (*(v7 + v5 + 8) >> 30));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v11 = *(a2 + 16) + v5;
        *(v10 + 8) = *(v11 + 8);
        v13 = *(v11 + 32);
        v12 = *(v11 + 48);
        *(v10 + 16) = *(v11 + 16);
        *(v10 + 32) = v13;
        *(v10 + 48) = v12;
        v14 = *(v11 + 112);
        v16 = *(v11 + 64);
        v15 = *(v11 + 80);
        *(v10 + 96) = *(v11 + 96);
        *(v10 + 112) = v14;
        *(v10 + 64) = v16;
        *(v10 + 80) = v15;
        v17 = *(v11 + 176);
        v19 = *(v11 + 128);
        v18 = *(v11 + 144);
        *(v10 + 160) = *(v11 + 160);
        *(v10 + 176) = v17;
        *(v10 + 128) = v19;
        *(v10 + 144) = v18;
        re::FixedArray<double>::FixedArray((v10 + 192), v11 + 192);
        result = *(v11 + 216);
        *(v10 + 216) = result;
        v20 = *(v11 + 272);
        v22 = *(v11 + 224);
        v21 = *(v11 + 240);
        *(v10 + 256) = *(v11 + 256);
        *(v10 + 272) = v20;
        *(v10 + 224) = v22;
        *(v10 + 240) = v21;
        v23 = *(v11 + 336);
        v25 = *(v11 + 288);
        v24 = *(v11 + 304);
        *(v10 + 320) = *(v11 + 320);
        *(v10 + 336) = v23;
        *(v10 + 288) = v25;
        *(v10 + 304) = v24;
        v26 = *(v11 + 400);
        v28 = *(v11 + 352);
        v27 = *(v11 + 368);
        *(v10 + 384) = *(v11 + 384);
        *(v10 + 400) = v26;
        *(v10 + 352) = v28;
        *(v10 + 368) = v27;
        v2 = *(a2 + 32);
      }

      v5 += 416;
    }
  }

  return result;
}

void re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

uint64_t re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable(uint64_t a1)
{
  re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear((a1 + 16));
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(a1 + 1696);
  *a1 = 0;
  *(a1 + 8) = 0;
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(a1 + 1696);
  re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear((a1 + 16));
  return a1;
}

char *re::MeshInstanceCollection::make(re::MeshInstanceCollection *this)
{
  if (this <= 3)
  {
    v1 = 3;
  }

  else
  {
    v1 = this;
  }

  v2 = objc_opt_class();
  Instance = class_createInstance(v2, 0xA8uLL);
  *(Instance + 24) = 0u;
  *(Instance + 10) = 0;
  *(Instance + 8) = 0u;
  *(Instance + 44) = 0x7FFFFFFFLL;
  *(Instance + 11) = 0;
  *(Instance + 8) = 0;
  *(Instance + 9) = 0;
  *(Instance + 20) = 0;
  *(Instance + 7) = 0;
  v5 = re::DynamicArray<re::StringID>::setCapacity(Instance + 7, v1);
  ++*(Instance + 20);
  *(Instance + 16) = 0;
  *(Instance + 13) = 0;
  *(Instance + 14) = 0;
  *(Instance + 30) = 0;
  *(Instance + 12) = 0;
  v6 = re::DynamicArray<re::StringID>::setCapacity(Instance + 12, v1);
  ++*(Instance + 30);
  *(Instance + 21) = 0;
  *(Instance + 18) = 0;
  *(Instance + 19) = 0;
  *(Instance + 40) = 0;
  *(Instance + 17) = 0;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(Instance + 17, v1);
  ++*(Instance + 40);
  return Instance;
}

id re::MeshInstanceCollection::makeCopy(re::MeshInstanceCollection *this, const re::MeshInstanceCollection *a2)
{
  v3 = objc_opt_class();
  Instance = class_createInstance(v3, 0xA8uLL);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(Instance + 8, this + 8);
  re::DynamicArray<re::StringID>::DynamicArray(Instance + 56, this + 7);
  re::DynamicArray<re::StringID>::DynamicArray(Instance + 96, this + 12);
  re::DynamicArray<re::GenericSRT<float>>::DynamicArray(Instance + 136, this + 17);
  return Instance;
}

void re::MeshInstanceCollection::beginCOWMutation(re::MeshInstanceCollection **this, re::MeshInstanceCollection **a2)
{
  if (CFGetRetainCount(*this) != 1)
  {
    v4 = *this;
    *this = re::MeshInstanceCollection::makeCopy(*this, v3);

    CFRelease(v4);
  }
}

uint64_t re::DrawCallRecorder::evaluteRecorderMode(re::DrawCallRecorder *this, const re::RenderManager *a2)
{
  if (qword_1EE1B8868 != -1)
  {
    dispatch_once(&qword_1EE1B8868, &__block_literal_global_39);
  }

  if (_MergedGlobals_439)
  {
    return 1;
  }

  result = *(this + 12);
  if (result)
  {
    v10 = 0x422F4464C0EC2900;
    v11 = "drawcallrecording:takeSnapshotNow";
    v12 = 0;
    v4 = re::DebugSettingsManager::getWithErrorCode<BOOL>(result, &v10, &v12);
    if (v4)
    {
      if (v10)
      {
        if (v10)
        {
        }
      }
    }

    else
    {
      v5 = v12;
      if (v10)
      {
        if (v10)
        {
        }
      }

      if (v5)
      {
        v9 = *(this + 12);
        v10 = 0x422F4464C0EC2900;
        v11 = "drawcallrecording:takeSnapshotNow";
        v12 = 0;
        re::DebugSettingsManager::setWithErrorCode<BOOL>(v9, &v10, &v12);
        re::StringID::destroyString(&v10);
        return 1;
      }
    }

    v6 = *(this + 12);
    v10 = 0x184FB450F9DBB738;
    v11 = "drawcallrecording:record";
    v12 = 0;
    v7 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v6, &v10, &v12);
    if (v7)
    {
      if (v10)
      {
        if (v10)
        {
        }
      }

      return 0;
    }

    v8 = v12;
    if (v10)
    {
      if (v10)
      {
      }
    }

    return (v8 & 1) != 0;
  }

  return result;
}

uint64_t re::DrawCallRecorder::DrawCallRecorder(uint64_t a1, const re::RenderManager *a2, re::DrawCallRecorder *this, uint64_t a4)
{
  *a1 = re::DrawCallRecorder::evaluteRecorderMode(this, a2);
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  re::BucketArray<re::DrawCallRecorderGroup,16ul>::init(a1 + 16, a4, 1uLL);
  v8 = *(a1 + 8);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 108) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 72, v8, 3);
  v9 = *(a1 + 8);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 156) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 120, v9, 3);
  *(a1 + 168) = *a2;
  *(a1 + 176) = *(this + 371) & *this;
  return a1;
}

unint64_t re::DrawCallRecorder::allocateDrawCallRecorderGroup(re::Allocator **this, const char *a2, const char *a3)
{
  re::DrawCallRecorderGroup::DrawCallRecorderGroup(&v18, a2, a3, this[1]);
  v4 = re::BucketArray<re::DrawCallRecorderGroup,16ul>::addUninitialized((this + 2));
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = v19;
  *v4 = v18;
  v6 = v20;
  *(v4 + 24) = v21;
  v21 = 0;
  v7 = *(v4 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  v18 = 0;
  v19 = v7;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v8 = *(&v22 + 1);
  *(v4 + 32) = v22;
  v20 = 0;
  v9 = v23;
  *(v4 + 56) = *(&v23 + 1);
  *(&v23 + 1) = 0;
  v10 = *(v4 + 40);
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  *&v23 = 0;
  *&v22 = 0;
  *(&v22 + 1) = v10;
  *(v4 + 96) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0u;
  v11 = v26;
  *(v4 + 64) = v24;
  *(v4 + 104) = 0;
  *(v4 + 80) = v11;
  v12 = *(&v26 + 1);
  *(v4 + 72) = v25;
  v25 = 0;
  *(v4 + 88) = v12;
  v26 = 0u;
  *(v4 + 104) = v28;
  ++v27;
  ++*(v4 + 96);
  *(v4 + 144) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 112) = *(&v28 + 1);
  v28 = 0u;
  *(v4 + 120) = v29;
  v29 = 0u;
  *(v4 + 136) = v30;
  *(v4 + 144) = DWORD2(v30);
  *(v4 + 148) = 0x17FFFFFFFLL;
  *(v4 + 148) = HIDWORD(v30);
  v30 = xmmword_1E3058120;
  *(v4 + 192) = 0;
  *(v4 + 184) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = 0u;
  v13 = v32;
  *(v4 + 160) = v31;
  *(v4 + 168) = v13;
  v31 = 0;
  *(v4 + 176) = *(&v32 + 1);
  v32 = 0u;
  *(v4 + 192) = v34;
  v34 = 0;
  ++v33;
  ++*(v4 + 184);
  LODWORD(v9) = v35;
  *(v4 + 208) = v35;
  if (v9 == 1)
  {
    v14 = v37;
    *(v4 + 224) = v36;
    *(v4 + 240) = v14;
  }

  re::DynamicArray<re::EncodedDrawCallDetails>::deinit(&v31);
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(&v28 + 1);
  re::DynamicArray<re::DirectionalLightInfo>::deinit(&v25);
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v22 = 0u;
    v23 = 0u;
  }

  if (v18 && (v19 & 1) != 0)
  {
    (*(*v18 + 40))();
  }

  v16 = this[7];
  if (v16)
  {
    return re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[]((this + 2), v16 - 1);
  }

  re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
  result = _os_crash();
  __break(1u);
  return result;
}

re::DynamicString *re::DrawCallRecorder::savePerEntityDebugInformation(re::DrawCallRecorder *this, unint64_t a2, const re::DynamicString *a3, const re::DynamicString *a4)
{
  v8 = this + 72;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  if (!*(this + 9) || (v11 = *(*(this + 10) + 4 * (v10 % *(this + 24))), v11 == 0x7FFFFFFF))
  {
LABEL_6:
    v13 = *(this + 1);
    memset(v16, 0, 36);
    *&v16[36] = 0x7FFFFFFFLL;
    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v16, v13, 3);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v17, v8, a2, v10);
    if (HIDWORD(v18) == 0x7FFFFFFF)
    {
      v14 = re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v8, v18, v17);
      *(v14 + 8) = a2;
      *(v14 + 16) = *v16;
      *v16 = 0uLL;
      *(v14 + 32) = *&v16[16];
      *&v16[16] = 0;
      *(v14 + 40) = *&v16[24];
      *&v16[24] = xmmword_1E3058120;
      *(v14 + 56) = 1;
      ++*(this + 28);
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v16);
  }

  else
  {
    v12 = *(this + 11);
    while (*(v12 + 72 * v11 + 8) != a2)
    {
      v11 = *(v12 + 72 * v11) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v16, v8, a2, v10);
  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(*(this + 11) + 72 * *&v16[12] + 16, a3, a4);
}

__n128 re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v8 = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
  if (*a1)
  {
    v9 = v8 % *(a1 + 24);
    v10 = *(*(a1 + 8) + 4 * v9);
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(a1 + 16);
      if (*(v11 + 96 * v10 + 8) == v6)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v10) = *(v11 + 96 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v11 + 96 * v10 + 8) == v6)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v12 = re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  *(v12 + 8) = *a2;
  result = *a3;
  v14 = *(a3 + 16);
  v15 = *(a3 + 48);
  *(v12 + 48) = *(a3 + 32);
  *(v12 + 64) = v15;
  *(v12 + 16) = result;
  *(v12 + 32) = v14;
  ++*(a1 + 40);
  return result;
}

_anonymous_namespace_ *re::DrawCallRecorder::saveSortingDebugInformation(_anonymous_namespace_ *result, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 8) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = result;
    v6 = *(v2 + 20);
    if (v6)
    {
      v7 = 0;
      v8 = *(v2 + 8);
      while (1)
      {
        v9 = *v8;
        v8 += 10;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(v2 + 20);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    if (v7 != v6)
    {
      do
      {
        v10 = (*(v2 + 8) + 40 * v7);
        v12 = v10[1];
        v11 = v10[2];
        v13 = v10[3];
        v27 = a2;
        v28 = v5;
        re::DrawCallRecorder::saveSortingDebugInformation(re::MeshSortingContext &)::$_0::operator()(&v27, v12, v11, "RenderPassGroup", 0);
        result = re::DrawCallRecorder::saveSortingDebugInformation(re::MeshSortingContext &)::$_0::operator()(&v27, v12, v13, "FadeGroup", 1);
        v14 = *(v2 + 20);
        if (v14 <= v7 + 1)
        {
          v14 = v7 + 1;
        }

        while (v14 - 1 != v7)
        {
          LODWORD(v7) = v7 + 1;
          if ((*(*(v2 + 8) + 40 * v7) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        LODWORD(v7) = v14;
LABEL_18:
        ;
      }

      while (v7 != v6);
      v2 = *a2;
    }

    v15 = *(v2 + 8);
    if (v15)
    {
      v16 = 0;
      v17 = *(v2 + 2);
      while (1)
      {
        v18 = *v17;
        v17 += 32;
        if (v18 < 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          LODWORD(v16) = *(v2 + 8);
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    while (v16 != v15)
    {
      v19 = *(v2 + 2) + (v16 << 7);
      v21 = *(v19 + 8);
      v20 = *(v19 + 16);
      v22 = *(v19 + 24);
      re::DynamicString::format(v5[1], "%llu", &v25, v20);
      re::DrawCallRecorder::savePerEntityDebugInformation(v5, v21, &v27, &v25);
      if (v25 && (v26 & 1) != 0)
      {
        (*(*v25 + 40))();
      }

      v23 = v27;
      if (v27 && (v28 & 1) != 0)
      {
        v23 = (*v27)[5]();
      }

      re::DynamicString::format(v5[1], "%d", &v25, v22);
      re::DrawCallRecorder::savePerEntityDebugInformation(v5, v21, &v27, &v25);
      if (v25 && (v26 & 1) != 0)
      {
        (*(*v25 + 40))();
      }

      result = v27;
      if (v27 && (v28 & 1) != 0)
      {
        result = (*v27)[5]();
      }

      v24 = *(v2 + 8);
      if (v24 <= v16 + 1)
      {
        v24 = v16 + 1;
      }

      while (v24 - 1 != v16)
      {
        LODWORD(v16) = v16 + 1;
        if ((*(*(v2 + 2) + (v16 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_46;
        }
      }

      LODWORD(v16) = v24;
LABEL_46:
      ;
    }
  }

  return result;
}

uint64_t re::DrawCallRecorder::saveSortingDebugInformation(re::MeshSortingContext &)::$_0::operator()(re::DynamicString ***a1, unint64_t a2, unint64_t a3, const char *a4, char a5)
{
  v34 = a3;
  v6 = *a1;
  v7 = **a1;
  result = v7 + 144;
  if (*(v7 + 18))
  {
    v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    v10 = v9 ^ (v9 >> 31);
    v11 = *(*(v7 + 19) + 4 * (v10 % *(v7 + 42)));
    if (v11 != 0x7FFFFFFF)
    {
      v15 = a1[1];
      v16 = *(v7 + 20);
      while (*(v16 + 176 * v11 + 8) != a3)
      {
        v11 = *(v16 + 176 * v11) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          return result;
        }
      }

      v17 = v6[1];
      if (*v17)
      {
        v18 = *(*(v17 + 1) + 4 * (v10 % *(v17 + 6)));
        if (v18 != 0x7FFFFFFF)
        {
          v19 = *(v17 + 2);
          while (*(v19 + (v18 << 7) + 8) != a3)
          {
            v18 = *(v19 + (v18 << 7)) & 0x7FFFFFFF;
            if (v18 == 0x7FFFFFFF)
            {
              return result;
            }
          }

          re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(result, &v34, v10, &v35);
          v20 = *(v7 + 20) + 176 * v37;
          v21 = *(v20 + 80);
          v22 = (*a1)[1];
          v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) >> 27));
          v24 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v22, &v34, v23 ^ (v23 >> 31), &v35);
          v25 = *(*(v22 + 16) + (v37 << 7) + 16);
          if (v21)
          {
            v26 = re::DynamicString::format(v15[1], "group sort-point based on %d custom sort point(s)", &v31, v21);
          }

          else
          {
          }

          if (v32)
          {
            v27 = *&v33[7];
          }

          else
          {
            v27 = v33;
          }

          re::DynamicString::format(v15[1], "%llu with group distance %f (%s)", &v29, v34, v25, v27);
          re::DrawCallRecorder::savePerEntityDebugInformation(v15, a2, &v35, &v29);
          if (v29 && (v30 & 1) != 0)
          {
            (*(*v29 + 40))();
          }

          if (v35 && (v36 & 1) != 0)
          {
            (*(*v35 + 40))();
          }

          v29 = v34;
          v35 = 0;
          v36 = a5;
          v38 = *(v20 + 16);
          v39 = *(v20 + 32);
          v40 = *(v20 + 64);
          v28 = re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add((v15 + 15), &v29, &v35);
          result = v31;
          if (v31)
          {
            if (v32)
            {
              return (*(*v31 + 40))(v28);
            }
          }
        }
      }
    }
  }

  return result;
}

const char *getCompareFunctionCString(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "Never";
  }

  else
  {
    return off_1E871F420[(a1 - 1)];
  }
}

uint64_t boxStringForVisualizer(re::DynamicString *a1, re::DynamicString *this, float32x4_t *a3, float *a4)
{
  v4 = a4[1];
  v5 = a4[2];
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = vmulq_n_f32(*a3, *a4);
  v10 = vmlaq_n_f32(v9, v6, v4);
  v11 = vaddq_f32(v8, vmlaq_n_f32(v10, v7, v5));
  v12 = vdivq_f32(v11, vdupq_laneq_s32(v11, 3));
  v13 = a4[5];
  v14 = vmulq_n_f32(*a3, a4[4]);
  v15 = vmlaq_n_f32(v14, v6, v4);
  v16 = vaddq_f32(v8, vmlaq_n_f32(v15, v7, v5));
  v17 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
  v18 = vmlaq_n_f32(v14, v6, v13);
  v19 = vaddq_f32(v8, vmlaq_n_f32(v18, v7, v5));
  v20 = vdivq_f32(v19, vdupq_laneq_s32(v19, 3));
  v21 = vmlaq_n_f32(v9, v6, v13);
  v22 = vaddq_f32(v8, vmlaq_n_f32(v21, v7, v5));
  v23 = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
  v24 = a4[6];
  v25 = vaddq_f32(v8, vmlaq_n_f32(v10, v7, v24));
  v26 = vdivq_f32(v25, vdupq_laneq_s32(v25, 3));
  v27 = vaddq_f32(v8, vmlaq_n_f32(v15, v7, v24));
  v28 = vdivq_f32(v27, vdupq_laneq_s32(v27, 3));
  v29 = vaddq_f32(v8, vmlaq_n_f32(v18, v7, v24));
  v30 = vdivq_f32(v29, vdupq_laneq_s32(v29, 3));
  v31 = vaddq_f32(v8, vmlaq_n_f32(v21, v7, v24));
  v32 = vdivq_f32(v31, vdupq_laneq_s32(v31, 3));
  return re::DynamicString::format(this, "%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f", a1, v12.f32[0], v12.f32[1], v12.f32[2], v17.f32[0], v17.f32[1], v17.f32[2], v20.f32[0], v20.f32[1], v20.f32[2], v23.f32[0], v23.f32[1], v23.f32[2], v26.f32[0], v26.f32[1], v26.f32[2], v28.f32[0], v28.f32[1], v28.f32[2], v30.f32[0], v30.f32[1], v30.f32[2], v32.f32[0], v32.f32[1], v32.f32[2]);
}

uint64_t re::DrawCallRecorder::dumpDrawCallsToTextFile(re::DrawCallRecorder *this)
{
  v8 = this;
  v251 = *MEMORY[0x1E69E9840];
  v9 = *(this + 7);
  if (v9)
  {
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      v10 += *(re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](v8 + 16, i) + 176);
    }

    v12 = v10 << 10;
  }

  else
  {
    v12 = 0;
  }

  re::basicLocalWallTime("HH.mm.ss.SSS", &buf);
  if (BYTE8(buf))
  {
    v14 = v241;
  }

  else
  {
    v14 = &buf + 9;
  }

  if (buf && (BYTE8(buf) & 1) != 0)
  {
    (*(*buf + 40))();
  }

  v15 = *(v8 + 1);
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = v15;
  re::DynamicString::setCapacity(&v224, v12);
  v16 = *(v8 + 1);
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = v16;
  re::DynamicString::setCapacity(&v220, v12);
  re::DynamicString::appendf(&v224, "DrawCallRecorder Version %s\n", "2.0.0");
  re::DynamicString::appendf(&v224, "Frame: %llu\n", *(v8 + 21) & 0xFFFFFFFFFFFFFFFLL);
  if (v229)
  {
    v17 = v231;
  }

  else
  {
    v17 = v230;
  }

  v18 = re::DynamicString::appendf(&v224, "Local Time: %s\n\n", v17);
  v170 = v8;
  v164 = *(v8 + 7);
  if (v164)
  {
    v19 = 0;
    v20 = 0;
    v169 = 0;
    while (1)
    {
      v165 = v20;
      v18 = re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](v8 + 16, v20);
      if (v18[22])
      {
        v21 = v18;
        re::DynamicString::DynamicString(&v218, v18);
        v22 = 0;
        v23 = BYTE8(v218);
        if (BYTE8(v218))
        {
          v24 = v219;
        }

        else
        {
          v24 = &v218 + 9;
        }

        do
        {
          v25 = strcmp(v24, off_1E871F3E0[v22]);
          if (v25)
          {
            v26 = v22 == 3;
          }

          else
          {
            v26 = 1;
          }

          ++v22;
        }

        while (!v26);
        v172 = v25;
        if (v218)
        {
          if (v23)
          {
            (*(*v218 + 40))();
          }

          v218 = 0u;
          v219 = 0u;
        }

        v27 = (v21[1] & 1) != 0 ? v21[2] : v21 + 9;
        v28 = (v21[5] & 1) != 0 ? v21[6] : v21 + 41;
        v18 = re::DynamicString::appendf(&v224, "Group [%s] [%s]\n\n", v27, v28);
        if (v21[22])
        {
          break;
        }
      }

LABEL_253:
      v20 = v165 + 1;
      if (v165 + 1 == v164)
      {
        v1 = v7;
        v6 = *&v6;
        v4 = *&v4;
        v3 = v166;
        v2 = v167;
        v5 = *&v5;
        goto LABEL_256;
      }
    }

    v29 = 0;
    v173 = v21;
    while (1)
    {
      v171 = v29;
      v30 = v21[24] + 344 * v29;
      re::DynamicString::appendf(&v224, "          Draw-Call #: %zu\n", v19);
      if (*(v30 + 336) == 1)
      {
        re::DynamicString::appendf(&v224, "          Technique: (VFX, details unavailable)\n");
      }

      else
      {
        re::DynamicString::appendf(&v224, "          Technique: %s VertexShader: %s FragmentShader: %s\n");
      }

      if (*(v30 + 96) == 1)
      {
        v31 = *(v30 + 104);
        v32 = *(v30 + 120);
        v33 = *(v30 + 136);
        v212 = *(v30 + 152);
        v210 = v32;
        v211 = v33;
        v209 = v31;
        v213 = *(v30 + 156);
        if (v213 == 1)
        {
          v214 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v215, (v30 + 160));
        v34 = *(v30 + 200);
        buf = v209;
        v241 = v210;
        v242 = v211;
        LODWORD(v243) = v212;
        BYTE4(v243) = v213;
        if (v213 == 1)
        {
          BYTE5(v243) = v214;
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(&v243 + 8, v215);
        v36 = (v34 & 2) == 0 && DWORD1(v242) != 0;
        if (v245)
        {
          v37 = v244;
          if (v244)
          {
            v38 = (v245 + 28);
            do
            {
              v39 = (v34 & 2) == 0 && *v38 != 0;
              v36 |= v39;
              v38 += 8;
              --v37;
            }

            while (v37);
          }

          if (*(&v243 + 1))
          {
            (*(**(&v243 + 1) + 40))(*(&v243 + 1));
          }
        }

        if (v36)
        {
          v40 = "On";
        }

        else
        {
          v40 = "Off";
        }

        v41 = *(v30 + 104);
        v42 = *(v30 + 120);
        v43 = *(v30 + 136);
        v202 = *(v30 + 152);
        v200 = v42;
        v201 = v43;
        v199 = v41;
        v203 = *(v30 + 156);
        if (v203 == 1)
        {
          v204 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v205, (v30 + 160));
        v44 = v199;
        v45 = BYTE1(v199);
        v168 = v19;
        if (v208)
        {
          v46 = v206;
          if (v206)
          {
            v47 = (v208 + 1);
            do
            {
              v44 = (*(v47 - 1) | v44 & 1) != 0;
              v48 = *v47;
              v47 += 32;
              v45 = (v48 | v45 & 1) != 0;
              --v46;
            }

            while (v46);
          }
        }

        v49 = "FixedFunction";
        if ((v45 & *(v8 + 176)) != 0)
        {
          v49 = "Programmable";
        }

        if (v44)
        {
          v50 = v49;
        }

        else
        {
          v50 = "Off";
        }

        v51 = *(v30 + 104);
        v52 = *(v30 + 120);
        v53 = *(v30 + 136);
        v193 = *(v30 + 152);
        v191 = v52;
        v192 = v53;
        v190 = v51;
        v194 = *(v30 + 156);
        if (v194 == 1)
        {
          v195 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v196, (v30 + 160));
        if ((BYTE2(v190) & ~*(v30 + 200)) != 0)
        {
          v54 = "On";
        }

        else
        {
          v54 = "Off";
        }

        v55 = *(v30 + 120);
        v56 = *(v30 + 136);
        v57 = *(v30 + 104);
        v184 = *(v30 + 152);
        v182 = v55;
        v183 = v56;
        v181 = v57;
        v185 = *(v30 + 156);
        if (v185 == 1)
        {
          v186 = *(v30 + 157);
        }

        re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v187, (v30 + 160));
        if ((*(v30 + 200) & 4) != 0)
        {
          v58 = 7;
        }

        else
        {
          v58 = BYTE10(v181);
        }

        CompareFunctionCString = getCompareFunctionCString(v58);
        v60 = 0;
        v61 = *(v30 + 201);
        v62 = *(v30 + 209);
        *&buf = v61;
        *(&buf + 1) = v62;
        do
        {
          v63 = 0;
          v64 = *(&buf + v60 + 2);
          v65 = *(&buf + v60 + 4);
          v66 = *(&buf + v60 + 5);
          LOBYTE(v174) = *(&buf + v60 + 6);
          BYTE1(v174) = v66;
          BYTE2(v174) = v65;
          do
          {
            if (*(&v174 + v63))
            {
              v67 = v64 == 0;
            }

            else
            {
              v67 = 1;
            }

            if (!v67)
            {
              v68 = CompareFunctionCString;
              v69 = v40;
              v70 = "On";
              goto LABEL_95;
            }

            ++v63;
          }

          while (v63 != 3);
          v60 += 8;
        }

        while (v60 != 16);
        v68 = CompareFunctionCString;
        v69 = v40;
        v70 = "Off";
LABEL_95:
        v71 = 0;
        *&buf = v61;
        *(&buf + 1) = v62;
        while (1)
        {
          v72 = &buf + v71;
          if (*(&buf + v71))
          {
            v73 = v72[3];
            if (v72[3])
            {
              v74 = v73 == 7;
            }

            else
            {
              v74 = 1;
            }

            if (!v74)
            {
              CompareFunctionCString = getCompareFunctionCString(v72[3]);
            }

            if (v73 != 7 && v73 != 0)
            {
              break;
            }
          }

          v71 += 8;
          if (v71 == 16)
          {
            CompareFunctionCString = "None";
            break;
          }
        }

        re::DynamicString::appendf(&v224, "          State: ColorWrite: %s AlphaBlending: %s DepthWrite: %s DepthCompare: %s StencilWrite: %s StencilTest: %s\n", v69, v50, v54, v68, v70, CompareFunctionCString);
        v19 = v168;
        v8 = v170;
        if (v187[0])
        {
          if (v189)
          {
            (*(*v187[0] + 40))();
          }

          v189 = 0;
          memset(v187, 0, sizeof(v187));
          ++v188;
        }

        if (v196[0])
        {
          if (v198)
          {
            (*(*v196[0] + 40))();
          }

          v198 = 0;
          memset(v196, 0, sizeof(v196));
          ++v197;
        }

        if (v205[0])
        {
          if (v208)
          {
            (*(*v205[0] + 40))();
          }

          v208 = 0;
          v205[1] = 0;
          v206 = 0;
          v205[0] = 0;
          ++v207;
        }

        if (v215[0])
        {
          if (v217)
          {
            (*(*v215[0] + 40))();
          }

          v217 = 0;
          memset(v215, 0, sizeof(v215));
          ++v216;
        }

        v76 = *(v30 + 200);
        if (v76)
        {
          v77 = v76 & 3;
          if (v77 == 1)
          {
            v78 = "ColorOnly";
          }

          else
          {
            v78 = "DepthOnly";
            if (v77 != 2)
            {
              v78 = "";
              if (v77 == 3)
              {
                v78 = "NoWrite";
              }
            }
          }

          v26 = (v76 & 4) == 0;
          v79 = "NoDepthCompare";
          if (v26)
          {
            v79 = "";
          }

          re::DynamicString::format("%s%s", &buf, v78, v79);
          v80 = &buf + 9;
          if (BYTE8(buf))
          {
            v80 = v241;
          }

          re::DynamicString::appendf(&v224, "          StateOverride: %s\n", v80);
          if (buf && (BYTE8(buf) & 1) != 0)
          {
            (*(*buf + 40))();
          }
        }
      }

      re::DynamicString::appendf(&v224, "          Draw Details: ");
      if (*(v30 + 336) == 1)
      {
        re::DynamicString::appendf(&v224, "(VFX, details unavailable)\n");
      }

      else
      {
        v81 = (*(v30 + 256) & 1) != 0 ? *(v30 + 264) : v30 + 257;
        v162 = *(v30 + 244);
        v163 = v81;
        v161 = *(v30 + 240);
        re::DynamicString::appendf(&v224, "InstanceCount: %zu InstanceOffset: %d VertexCount: %d IndexCount: %d TechniqueIndex: %d DrawCallType: %s\n");
      }

      if (*(v30 + 280) == 1 && *(v30 + 312))
      {
        break;
      }

LABEL_247:
      v21 = v173;
      if (*(v173 + 208) == 1)
      {
        v7 = *(v173 + 224);
        LODWORD(v6) = *(v173 + 228);
        LODWORD(v4) = *(v173 + 232);
        v166 = *(v173 + 240);
        v167 = *(v173 + 244);
        if (v169)
        {
          v131 = v169;
        }

        else
        {
          v131 = 1;
        }

        v169 = v131;
        LODWORD(v5) = *(v173 + 248);
      }

      ++v19;
      v18 = re::DynamicString::appendf(&v224, "\n");
      v29 = v171 + 1;
      if ((v171 + 1) >= *(v173 + 176))
      {
        goto LABEL_253;
      }
    }

    v82 = 0;
    while (1)
    {
      v83 = (*(v30 + 328) + 56 * v82);
      re::DynamicString::appendf(&v224, "          Mesh %zu: \n", v82);
      if (*v83)
      {
        re::DynamicString::appendf(&v224, "             Entity ID: %llu\n", *v83);
      }

      if (*(v83 + 8) == 1)
      {
        if (v83[3])
        {
          v84 = v83[4];
        }

        else
        {
          v84 = v83 + 25;
        }

        re::DynamicString::appendf(&v224, "             MeshPart Name: %s\n", v84);
      }

      if (*(v83 + 48) != 1)
      {
        goto LABEL_221;
      }

      v85 = *(v83 + 13);
      if (*(v173 + 88) <= v85)
      {
        goto LABEL_221;
      }

      v179[0] = *(v83 + 48);
      v180 = v85;
      SortingContextUnsafe = re::DrawCallRecorderGroup::getSortingContextUnsafe(v173, v179);
      v87 = SortingContextUnsafe;
      v88 = (*(SortingContextUnsafe + 8) & 1) != 0 ? *(SortingContextUnsafe + 16) : (SortingContextUnsafe + 9);
      re::DynamicString::appendf(&v224, "             Sort Key: %s\n", v88);
      if (v172)
      {
        goto LABEL_221;
      }

      v89 = *(v8 + 1);
      v90 = re::DynamicString::DynamicString(&v177, v173);
      v91 = *v83;
      if ((*(v30 + 96) & 1) == 0)
      {
        break;
      }

      v92 = v19;
      v93 = *(v30 + 104);
      v94 = *(v30 + 120);
      v95 = *(v30 + 136);
      LODWORD(v243) = *(v30 + 152);
      v241 = v94;
      v242 = v95;
      buf = v93;
      BYTE4(v243) = *(v30 + 156);
      if (BYTE4(v243) == 1)
      {
        BYTE5(v243) = *(v30 + 157);
      }

      v90 = re::DynamicArray<re::RenderAttachmentState>::DynamicArray(&v243 + 8, (v30 + 160));
      v97 = (*(v30 + 200) & 2) == 0 && DWORD1(v242) != 0;
      if (!v245)
      {
        goto LABEL_181;
      }

      v98 = v244;
      if (v244)
      {
        v99 = (v245 + 28);
        do
        {
          v100 = (*(v30 + 200) & 2) == 0 && *v99 != 0;
          v97 |= v100;
          v99 += 8;
          --v98;
        }

        while (v98);
      }

      v90 = *(&v243 + 1);
      if (*(&v243 + 1))
      {
        v90 = (*(**(&v243 + 1) + 40))(*(&v243 + 1));
        if ((v97 & 1) == 0)
        {
          goto LABEL_183;
        }
      }

      else
      {
LABEL_181:
        if ((v97 & 1) == 0)
        {
          goto LABEL_183;
        }
      }

      v101 = "color_enabled";
LABEL_184:
      v102 = v178;
      if ((BYTE8(v177) & 1) == 0)
      {
        v102 = &v177 + 9;
      }

      v19 = v92;
      re::DynamicString::format(v89, "%s_entity%llu_draw%zu_mesh%zu", &v236, v102, v91, v92, v82, v162, v163);
      v103 = *(v87 + 128);
      v104 = *(v87 + 144);
      v105 = *(v87 + 148);
      v106 = *(v87 + 152);
      if (v237)
      {
        v107 = v239;
      }

      else
      {
        v107 = v238;
      }

      if (v175)
      {
        v108 = v176[0];
      }

      else
      {
        v108 = &v175 + 1;
      }

      v109 = *(v87 + 80);
      buf = *(v87 + 64);
      v241 = v109;
      v110 = *(v87 + 112);
      v242 = *(v87 + 96);
      v243 = v110;
      v111 = *(v87 + 48);
      v232[0] = *(v87 + 32);
      v232[1] = v111;
      boxStringForVisualizer(&v233, v89, &buf, v232);
      v112 = v235;
      if (v234)
      {
        v112 = *&v235[7];
      }

      if (v103)
      {
        v113 = v104;
      }

      else
      {
        v113 = 0.0;
      }

      if (v103)
      {
        v114 = v105;
      }

      else
      {
        v114 = 0.0;
      }

      if (v103)
      {
        v115 = v106;
      }

      else
      {
        v115 = 0.0;
      }

      re::DynamicString::format(v89, "visualize mesh_part %zu %s %s %s %d %f %f %f\n", &v249, v19, v107, v108, v112, *(v87 + 128), *&v113, *&v114, *&v115);
      if (v233 && (v234 & 1) != 0)
      {
        (*(*v233 + 40))();
      }

      v116 = &v249 + 9;
      if (BYTE8(v249))
      {
        v116 = v250;
      }

      re::DynamicString::appendf(&v220, "%s", v116);
      if (v249 && (BYTE8(v249) & 1) != 0)
      {
        (*(*v249 + 40))();
      }

      v8 = v170;
      if (v236 && (v237 & 1) != 0)
      {
        (*(*v236 + 40))();
      }

      if (v174 && (v175 & 1) != 0)
      {
        (*(*v174 + 40))();
      }

      if (v177)
      {
        if (BYTE8(v177))
        {
          (*(*v177 + 40))();
        }

        v177 = 0u;
        v178 = 0u;
      }

LABEL_221:
      v117 = *v83;
      if (*v83)
      {
        v118 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v117 ^ (v117 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v117 ^ (v117 >> 30))) >> 27));
        v119 = v118 ^ (v118 >> 31);
        re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, v8 + 72, *v83, v119);
        if (HIDWORD(buf) != 0x7FFFFFFF)
        {
          re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&buf, v8 + 72, v117, v119);
          v120 = *(v8 + 11) + 72 * HIDWORD(buf);
          v121 = *(v120 + 48);
          if (v121)
          {
            v122 = 0;
            v123 = *(v120 + 32);
            while (1)
            {
              v124 = *v123;
              v123 += 20;
              if (v124 < 0)
              {
                break;
              }

              if (v121 == ++v122)
              {
                LODWORD(v122) = *(v120 + 48);
                break;
              }
            }
          }

          else
          {
            LODWORD(v122) = 0;
          }

          if (v122 != v121)
          {
            v125 = *(v120 + 32);
            do
            {
              v126 = v125 + 80 * v122;
              if (*(v126 + 16))
              {
                v127 = *(v126 + 24);
              }

              else
              {
                v127 = (v126 + 17);
              }

              v128 = v126 + 40;
              if (*(v128 + 8))
              {
                v129 = *(v128 + 16);
              }

              else
              {
                v129 = (v128 + 9);
              }

              re::DynamicString::appendf(&v224, "             %s: %s\n", v127, v129);
              if (*(v120 + 48) <= (v122 + 1))
              {
                v130 = v122 + 1;
              }

              else
              {
                v130 = *(v120 + 48);
              }

              v125 = *(v120 + 32);
              while (v130 - 1 != v122)
              {
                LODWORD(v122) = v122 + 1;
                if ((*(v125 + 80 * v122) & 0x80000000) != 0)
                {
                  goto LABEL_245;
                }
              }

              LODWORD(v122) = v130;
LABEL_245:
              ;
            }

            while (v122 != v121);
          }
        }
      }

      if (++v82 >= *(v30 + 312))
      {
        goto LABEL_247;
      }
    }

    v92 = v19;
LABEL_183:
    v101 = "color_disabled";
    goto LABEL_184;
  }

  LOBYTE(v169) = 0;
LABEL_256:
  v132 = *(v8 + 38);
  if (v132)
  {
    v133 = 0;
    v134 = *(v8 + 17);
    while (1)
    {
      v135 = *v134;
      v134 += 24;
      if (v135 < 0)
      {
        break;
      }

      if (v132 == ++v133)
      {
        LODWORD(v133) = *(v8 + 38);
        break;
      }
    }
  }

  else
  {
    LODWORD(v133) = 0;
  }

  while (v133 != v132)
  {
    v136 = *(v8 + 17) + 96 * v133;
    v137 = v8;
    if (*(v136 + 24))
    {
      v138 = "fade";
    }

    else
    {
      v138 = "default";
    }

    if (v175)
    {
      v139 = v176[0];
    }

    else
    {
      v139 = &v175 + 1;
    }

    v140 = *(v136 + 8);
    v141 = *(v137 + 1);
    buf = xmmword_1E3047670;
    v241 = xmmword_1E3047680;
    v242 = xmmword_1E30476A0;
    v243 = xmmword_1E30474D0;
    v249 = *(v136 + 32);
    v250 = *(v136 + 48);
    boxStringForVisualizer(&v236, v141, &buf, &v249);
    if (v237)
    {
      v142 = v239;
    }

    else
    {
      v142 = v238;
    }

    re::DynamicString::appendf(&v220, "visualize rpg %s %llu %s\n", v139, v140, v142);
    if (v236 && (v237 & 1) != 0)
    {
      (*(*v236 + 40))();
    }

    v18 = v174;
    if (v174 && (v175 & 1) != 0)
    {
      v18 = (*(*v174 + 40))();
    }

    v8 = v170;
    v143 = *(v170 + 38);
    if (v143 <= v133 + 1)
    {
      v143 = v133 + 1;
    }

    while (v143 - 1 != v133)
    {
      LODWORD(v133) = v133 + 1;
      if ((*(*(v170 + 17) + 96 * v133) & 0x80000000) != 0)
      {
        goto LABEL_284;
      }
    }

    LODWORD(v133) = v143;
LABEL_284:
    ;
  }

  if (v169)
  {
    re::DynamicString::appendf(&v220, "visualize sorting_camera %f %f %f %f %f %f\n", v1, v6, v4, v3, v2, v5);
  }

  if (v221)
  {
    v144 = v222;
  }

  else
  {
    v144 = &v221 + 1;
  }

  re::DynamicString::appendf(&v224, "\n\nDrawCallRecorder Visualizer commands:\n%s", v144);
  re::defaultTemporaryDirectoryPath(&v174);
  if (v174)
  {
    if (v176[0])
    {
      v146 = v176[1];
    }

    else
    {
      v146 = v176 + 1;
    }

    v147 = v230;
    if (v229)
    {
      v147 = v231;
    }

    re::DynamicString::format(*(v8 + 1), "%s/draw_calls__timestamp%s__frame%llu.txt", &v236, v146, v147, *(v8 + 21) & 0xFFFFFFFFFFFFFFFLL, v161);
    v246.__loc_ = 0;
    *&buf = &unk_1F5D049C0;
    v246.__vftable = &unk_1F5D049E8;
    *(&buf + 1) = 0;
    std::ios_base::init(&v246, &v241 + 8);
    v248 = -1;
    v247 = 0;
    MEMORY[0x1E6906010](&v241 + 8);
    v148 = std::filebuf::open();
    v149 = (&buf + *(buf - 24));
    if (v148)
    {
      v150 = 0;
    }

    else
    {
      v150 = v149->__rdstate_ | 4;
    }

    std::ios_base::clear(v149, v150);
    if ((*(&v242 + *(buf - 24)) & 5) != 0)
    {
      v153 = *re::graphicsLogObjects(v152);
      if (!os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
LABEL_318:
        MEMORY[0x1E6906020](&v241 + 8);
        std::iostream::~basic_iostream();
        MEMORY[0x1E6906460](&v246);
        if (v236 && (v237 & 1) != 0)
        {
          (*(*v236 + 40))();
        }

        goto LABEL_321;
      }

      if (v237)
      {
        v154 = v239;
      }

      else
      {
        v154 = v238;
      }

      LODWORD(v249) = 136315138;
      *(&v249 + 4) = v154;
      v155 = "DrawCallRecorder couldn't write to file %s";
    }

    else
    {
      if (v225)
      {
        v156 = v226;
      }

      else
      {
        v156 = &v225 + 1;
      }

      v157 = strlen(v156);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v241, v156, v157);
      v158 = std::filebuf::close();
      if (!v158)
      {
        std::ios_base::clear((&buf + *(buf - 24)), *(&v242 + *(buf - 24)) | 4);
      }

      v153 = *re::graphicsLogObjects(v158);
      if (!os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_318;
      }

      if (v237)
      {
        v159 = v239;
      }

      else
      {
        v159 = v238;
      }

      LODWORD(v249) = 136315138;
      *(&v249 + 4) = v159;
      v155 = "DrawCallRecorder wrote to %s";
    }

    _os_log_impl(&dword_1E1C61000, v153, OS_LOG_TYPE_DEFAULT, v155, &v249, 0xCu);
    goto LABEL_318;
  }

  v151 = *re::graphicsLogObjects(v145);
  if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1E1C61000, v151, OS_LOG_TYPE_DEFAULT, "DrawCallRecorder couldn't determine a path to write to", &buf, 2u);
  }

LABEL_321:
  if (v174 == 1 && v175 && (v176[0] & 1) != 0)
  {
    (*(*v175 + 40))();
  }

  if (v220 && (v221 & 1) != 0)
  {
    (*(*v220 + 40))();
  }

  if (v224 && (v225 & 1) != 0)
  {
    (*(*v224 + 40))();
  }

  result = v228;
  if (v228)
  {
    if (v229)
    {
      return (*(*v228 + 40))();
    }
  }

  return result;
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x1E6906020](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v2);
  return a1;
}

void re::DrawCallRecorder::~DrawCallRecorder(re::DrawCallRecorder *this)
{
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 15);
  re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::BucketArray<re::DrawCallRecorderGroup,16ul>::deinit(this + 16);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 16);
}

void ___ZL45drawCallRecordingEnabledByEnvironmentVariablev_block_invoke()
{
  re::readBooleanEnvironmentVariable("ENABLE_DRAW_CALL_RECORDER", v1);
  if (v1[0])
  {
    v0 = v1[1];
  }

  else
  {
    v0 = 0;
  }

  _MergedGlobals_439 = v0;
}

uint64_t re::DynamicArray<re::EncodedDrawCallDetails>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 344 * v4;
        do
        {
          v7 = v3 + v5;
          if (*(v3 + v5 + 280) == 1)
          {
            re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v7 + 296);
          }

          re::DynamicString::deinit((v7 + 248));
          if (*(v7 + 96) == 1)
          {
            re::DynamicArray<unsigned long>::deinit(v3 + v5 + 160);
          }

          re::DynamicString::deinit((v3 + v5 + 64));
          re::DynamicString::deinit((v3 + v5 + 32));
          re::DynamicString::deinit((v3 + v5));
          v5 += 344;
        }

        while (v6 != v5);
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

uint64_t re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(uint64_t a1)
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
        v6 = (v3 + 16);
        do
        {
          if (*(v6 - 8) == 1)
          {
            re::DynamicString::deinit(v6);
          }

          v6 = (v6 + 56);
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

double re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(v6 + v4 + 16);
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

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x1E6906020](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E6906460);
}

{
  v1 = a1 + 52;
  MEMORY[0x1E6906020](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v1);

  JUMPOUT(0x1E6906520);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6906020](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1E6906460);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x1E6906020](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v1 + 54);

  JUMPOUT(0x1E6906520);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x1E6906020](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x1E6906460](v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DebugSettingsManager::setWithErrorCode<BOOL>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  std::mutex::lock((a1 + 48));
  v6 = re::DebugSettingsManager::contains<BOOL>(a1, a2);
  if (!v6)
  {
    v7 = *a3 | 0x200000000;
    v8 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v13);
    v9 = *(a1 + 16) + 40 * v14;
    v11 = *(v9 + 24);
    v10 = v9 + 24;
    if ((v11 & 1) == 0)
    {
      *v10 = 1;
    }

    *(v10 + 4) = v7;
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

void *re::BucketArray<re::DrawCallRecorderGroup,16ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DrawCallRecorderGroup,16ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::DrawCallRecorderGroup,16ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 16 * a2)
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
          result = (*(**v3 + 32))(*v3, 4096, 0);
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

void re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_18, 4 * v10);
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

void re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_103, 4 * v10);
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

uint64_t re::BucketArray<re::DrawCallRecorderGroup,16ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](a1, i);
      re::DynamicArray<re::EncodedDrawCallDetails>::deinit((v4 + 20));
      re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v4 + 14);
      re::DynamicArray<re::DirectionalLightInfo>::deinit((v4 + 9));
      re::DynamicString::deinit((v4 + 4));
      re::DynamicString::deinit(v4);
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

double re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

uint64_t re::BucketArray<re::DrawCallRecorderGroup,16ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 16 * v3)
  {
    re::BucketArray<re::DrawCallRecorderGroup,16ul>::setBucketsCapacity(a1, (v2 + 16) >> 4);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 4)
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

  v5 = *(v4 + 8 * (v2 >> 4));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + ((v2 & 0xF) << 8);
}

unint64_t re::BucketArray<re::DrawCallRecorderGroup,16ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 4)) + ((a2 & 0xF) << 8);
}

uint64_t re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          *&v27[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v13 = *&v27[32];
          *(a1 + 24) = v14;
          ++*&v27[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v27[16] + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(*&v27[16] + v16 + 64) % *(a1 + 24));
                v19 = *&v27[16] + v16;
                v20 = *(*&v27[16] + v16 + 8);
                *(v18 + 16) = 0u;
                v18 += 16;
                *(v18 - 8) = v20;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v18, (v19 + 16));
                v15 = *&v27[32];
              }

              ++v17;
              v16 += 72;
            }

            while (v17 < v15);
          }

          re::HashTable<unsigned long long,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
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
    v22 = *(v21 + 72 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 72 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 72 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 64) = a3;
  ++*(a1 + 28);
  return v21 + 72 * v5;
}

uint64_t re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DrawCallRecorder::RenderPassGroupDebugInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v17 + 80) % *(a1 + 24));
                v13 = *&v30[16];
                v20 = (*&v30[16] + v17);
                *(v19 + 8) = *(*&v30[16] + v17 + 8);
                v22 = v20[3];
                v21 = v20[4];
                v23 = v20[2];
                *(v19 + 16) = v20[1];
                *(v19 + 32) = v23;
                *(v19 + 48) = v22;
                *(v19 + 64) = v21;
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 96;
            }

            while (v18 < v16);
          }

          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 96 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 96 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 96 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 80) = a3;
  ++*(a1 + 28);
  return v24 + 96 * v5;
}

uint64_t re::determineClippingNeeds(uint64_t a1, void *a2, unsigned int a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v8 = *a4;
  v7 = a4[1];
  v9 = vsubq_f32(v7, *a4);
  v9.i32[3] = 0;
  v10 = vmaxnmq_f32(v9, 0);
  if (vmuls_lane_f32(vmuls_lane_f32(v10.f32[0], *v10.f32, 1), v10, 2) <= 0.00001)
  {
    return 3;
  }

  v11 = 0;
  v12 = 0;
  v74 = 0uLL;
  v75 = 0uLL;
  v72 = 0uLL;
  v73 = 0uLL;
  v70 = 0uLL;
  v71 = 0uLL;
  v68 = 0uLL;
  v69 = 0uLL;
  v13.i64[0] = 0x7F0000007FLL;
  v13.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v13);
  v15 = *a6;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  do
  {
    if ((v12 & 2) != 0)
    {
      v19 = 20;
    }

    else
    {
      v19 = 4;
    }

    v20 = *(a5 + v19);
    if (v12 >= 4)
    {
      v21 = 24;
    }

    else
    {
      v21 = 8;
    }

    v22 = vaddq_f32(v18, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, *(a5 + (v11 & 0x10))), v16, v20), v17, *(a5 + v21)));
    v23 = vdupq_laneq_s32(v22, 3);
    v24 = vdivq_f32(v22, v23);
    *(&v68 + v12) = v24;
    v14.i32[3] = 0;
    v24.i32[3] = 0;
    v14 = vminnmq_f32(v14, v24);
    v13.i32[3] = 0;
    v13 = vmaxnmq_f32(v13, v24);
    ++v12;
    v11 += 16;
  }

  while (v12 != 8);
  v25 = vcgtq_f32(v8, vaddq_f32(v14, vdupq_n_s32(0x3C23D70Au)));
  v25.i32[3] = v25.i32[2];
  if ((vmaxvq_u32(v25) & 0x80000000) != 0 || (v26 = vcgtq_f32(vaddq_f32(v14, vdupq_n_s32(0xBC23D70A)), v7), v26.i32[3] = v26.i32[2], (vmaxvq_u32(v26) & 0x80000000) != 0) || (v27 = vcgtq_f32(v8, vaddq_f32(v13, vdupq_n_s32(0x3C23D70Au))), v27.i32[3] = v27.i32[2], (vmaxvq_u32(v27) & 0x80000000) != 0) || (v28 = vcgtq_f32(vaddq_f32(v13, vdupq_n_s32(0xBC23D70A)), v7), v28.i32[3] = v28.i32[2], (vmaxvq_u32(v28) & 0x80000000) != 0))
  {
    v65 = vcgtq_f32(v8, v13);
    v65.i32[3] = v65.i32[2];
    if ((vmaxvq_u32(v65) & 0x80000000) == 0)
    {
      v66 = vcgtq_f32(v14, v7);
      v66.i32[3] = v66.i32[2];
      if ((vmaxvq_u32(v66) & 0x80000000) == 0)
      {
        return a3 == 0;
      }
    }

    return 3;
  }

  v29 = *(a1 + 8);
  if (!v29)
  {
    return 2;
  }

  v30 = 0;
  v31 = *(a1 + 32);
  if (*(a1 + 16))
  {
    v31 = a1 + 24;
  }

  v32 = a2[1];
  v33 = vdupq_n_s32(0xBC23D70A);
  __asm { FMOV            V3.4S, #1.0 }

  v38.i64[0] = 0x3F0000003F000000;
  v38.i64[1] = 0x3F0000003F000000;
  result = 2;
  while (1)
  {
    if (v32 <= *(v31 + 2 * v30))
    {
      re::internal::assertLog(6, a2, 0.0, 0.0, *v33.i64, *_Q3.i64, 0.0000305175853, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v31 + 2 * v30), v32, v68, v69, v70, v71, v72, v73, v74, v75);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v40 = 0;
    v41 = *a2 + 96 * *(v31 + 2 * v30);
    v42 = vcgtz_f32(*(v41 + 64));
    v16.i64[0] = *v41;
    v43.i64[0] = 0;
    v43.i64[1] = *(v41 + 8);
    v23.i64[0] = *(v41 + 16);
    v44.i64[0] = 0;
    v44.i64[1] = *(v41 + 24);
    v6.i64[0] = *(v41 + 32);
    v45.i64[0] = 0;
    v45.i64[1] = *(v41 + 40);
    v46 = vzip1q_s32(v16, v6);
    v47 = vzip2q_s32(v43, v45);
    v48 = vzip1q_s32(v23, 0);
    v49 = vzip2q_s32(v44, xmmword_1E30474D0);
    v23 = vzip1q_s32(v46, v48);
    v50 = vzip2q_s32(v46, v48);
    v6 = vzip1q_s32(v47, v49);
    v51 = vzip2q_s32(v47, v49);
    v52.i64[0] = 0x7F0000007FLL;
    v52.i64[1] = 0x7F0000007FLL;
    v53 = vnegq_f32(v52);
    do
    {
      v18.i32[2] = *(v41 + 44);
      v18.i32[1] = *(v41 + 28);
      v18.i32[0] = *(v41 + 12);
      v54 = vsubq_f32(*(&v68 + v40), v18);
      v55 = vaddq_f32(v51, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v54.f32[0]), v50, *v54.f32, 1), v6, v54, 2));
      v56 = vdivq_f32(v55, vdupq_laneq_s32(v55, 3));
      v53.i32[3] = 0;
      v56.i32[3] = 0;
      v53 = vminnmq_f32(v53, v56);
      v52.i32[3] = 0;
      v52 = vmaxnmq_f32(v52, v56);
      v40 += 16;
    }

    while (v40 != 128);
    v57 = vpmin_u32(v42, v42).u32[0];
    if (v57 < 0)
    {
      break;
    }

    v58.i64[0] = vcvtq_f32_f16(*(v41 + 48)).u64[0];
    _H7 = *(v41 + 52);
    __asm { FCVT            S7, H7 }

    v58.i64[1] = _S7;
    v61.i64[0] = vcvtq_f32_f16(*(v41 + 56)).u64[0];
    _H17 = *(v41 + 60);
    __asm { FCVT            S17, H17 }

    v61.i64[1] = _S17;
    v64 = vmulq_f32(vsubq_f32(_Q3, vaddq_f32(vmaxnmq_f32(v58, v61), v33)), v38);
    v18 = vcgeq_f32(v64, vabsq_f32(v53));
    v18.i32[3] = v18.i32[2];
    if ((vminvq_u32(v18) & 0x80000000) == 0)
    {
      break;
    }

    v16 = vcgeq_f32(v64, vabsq_f32(v52));
    v16.i32[3] = v16.i32[2];
    if ((vminvq_u32(v16) & 0x80000000) == 0)
    {
      break;
    }

    if (++v30 == v29)
    {
      return result;
    }
  }

  return v30 >= a3 && v57 >= 0;
}

uint64_t re::RenderFrame::RenderFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 112);
  if (v15)
  {
    v15 = *(v15 + 296);
  }

  *a1 = v15;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a3;
  re::RenderGraphDataStore::RenderGraphDataStore(a1 + 32, a5);
  re::RenderFrameData::RenderFrameData(a1 + 264, *(*(*(a2 + 112) + 296) + 688), a6);
  *(a1 + 352) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 360) = &str_122;
  *(a1 + 368) = &str_122;
  *(a1 + 376) = 0;
  *(a1 + 384) = a5;
  *(a1 + 392) = a6;
  *(a1 + 400) = a7;
  *(a1 + 408) = a8;
  *(a1 + 416) = a5;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 484) = 0u;
  *(a1 + 500) = 0x7FFFFFFFLL;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0x7FFFFFFFLL;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 660) = 0u;
  *(a1 + 676) = 0x7FFFFFFFLL;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1;
  *(a1 + 712) = 0u;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 1;
  *(a1 + 3296) = 0u;
  *(a1 + 3352) = 0;
  *(a1 + 3360) = 0;
  *(a1 + 3336) = 0u;
  *(a1 + 3448) = 0u;
  *(a1 + 3464) = 0u;
  *(a1 + 3480) = 0;
  *(a1 + 3520) = 0;
  *(a1 + 3504) = 0u;
  *(a1 + 3488) = 0u;
  *(a1 + 3400) = 0;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0u;
  *(a1 + 3408) = 0u;
  *(a1 + 3424) = 0u;
  *(a1 + 3440) = 0;
  *(a1 + 3556) = 0u;
  *(a1 + 3528) = 0u;
  *(a1 + 3544) = 0u;
  *(a1 + 3572) = 0x7FFFFFFFLL;
  *(a1 + 3616) = 0;
  *(a1 + 3600) = 0u;
  *(a1 + 3584) = 0u;
  *(a1 + 3620) = 0x7FFFFFFFLL;
  *(a1 + 3664) = 0;
  *(a1 + 3656) = 0;
  *(a1 + 3648) = 0;
  *(a1 + 3632) = 0u;
  v16 = re::RenderGraphResourceDescriptions::RenderGraphResourceDescriptions((a1 + 3672));
  *(a1 + 3992) = 0;
  *(a1 + 3984) = 0;
  *(a1 + 3968) = 0u;
  *(a1 + 4000) = 0u;
  *(a1 + 4016) = 0u;
  *(a1 + 4032) = 0;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4068) = 0u;
  *(a1 + 4088) = 0u;
  *(a1 + 4104) = 0u;
  *(a1 + 4120) = 0;
  *(a1 + 4128) = 0u;
  *(a1 + 4144) = 0u;
  *(a1 + 4160) = 0;
  *(a1 + 4200) = 0;
  *(a1 + 4168) = 0u;
  *(a1 + 4184) = 0u;
  *(a1 + 4240) = 0;
  *(a1 + 4224) = 0u;
  *(a1 + 4208) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0;
  *(a1 + 4288) = 0u;
  *(a1 + 4304) = 0u;
  *(a1 + 4320) = 0;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0u;
  *(a1 + 4360) = 0;
  *(a1 + 4368) = 0u;
  *(a1 + 4384) = 0u;
  *(a1 + 4400) = 0;
  *(a1 + 4408) = 0u;
  *(a1 + 4424) = 0u;
  *(a1 + 4440) = 0u;
  *(a1 + 4452) = 0u;
  *(a1 + 4500) = 0u;
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0u;
  *(a1 + 4516) = 0x7FFFFFFFLL;
  *(a1 + 4528) = 850045863;
  *(a1 + 4600) = 0;
  *(a1 + 4568) = 0u;
  *(a1 + 4584) = 0u;
  *(a1 + 4536) = 0u;
  *(a1 + 4552) = 0u;
  *(a1 + 4608) = 1;
  *(a1 + 4616) = 0u;
  if (a4)
  {
    v18 = re::globalAllocators(v16);
    v19 = (*(*v18[2] + 32))(v18[2], 160, 8);
    ArcSharedObject::ArcSharedObject(v19, 0);
    *v19 = &unk_1F5D04B08;
    v20 = re::Allocator::Allocator((v19 + 24), "RenderGraphStringAllocator", 1);
    *(v19 + 24) = &unk_1F5D046F8;
    *(v19 + 112) = 0u;
    *(v19 + 128) = 0u;
    *(v19 + 144) = 0;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = 0u;
    *(v19 + 92) = 0u;
    *(v19 + 148) = 0x7FFFFFFFLL;
    v21 = *(a1 + 4048);
    *(a1 + 4048) = v19;
    if (v21)
    {

      v19 = *(a1 + 4048);
    }

    *(v19 + 64) = 0;
    *(v19 + 72) = 1024;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 88) = 0;
    *(v19 + 96) = 0;
    v26 = 0;
    v27 = 0xEE74EC71D35974;
    v25 = 0x6A3DF053A9B45F3DLL;
    re::RenderFrame::registerExternalTexture(a1, &v26, &v27, &v25, 0);
    *(a1 + 560) = *(a1 + 392);
    re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity((a1 + 560), 0);
    ++*(a1 + 584);
    *(a1 + 600) = *(a1 + 392);
    re::DynamicArray<re::RenderFrame::PickupAction>::setCapacity((a1 + 600), 0);
    ++*(a1 + 624);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 464, *(a1 + 392), 3);
    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1 + 512, *(a1 + 392), 3);
    re::make::shared::object<re::RenderFrameBounds>(v22, &v27);
    v23 = *(a1 + 456);
    *(a1 + 456) = v27;
    v27 = v23;
    if (v23)
    {
    }

    return a1;
  }

  else
  {
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) RenderFrame requires a ColorManager", "colorManager", "RenderFrame", 155);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::RenderFrame::registerExternalTexture(uint64_t a1, id *a2, void *a3, void *a4, uint64_t a5)
{
  if (*(a1 + 352) == 1 && (*(a1 + 449) & 1) == 0)
  {
    re::DynamicString::format("External texture '%s' cannot be registered inside of a provide() callback. Type scope: '%s', Graph scope: '%s'", &v11, a5, *(a1 + 360), *(a1 + 368));
    v14.n128_u64[0] = 2002;
    v14.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v15 = v11;
    v17 = v13;
    v16 = v12;
    v9 = re::DynamicArray<re::DetailedError>::add((a1 + 3376), &v14);
    if (v15)
    {
      if (v16)
      {
        (*(*v15 + 40))(v9);
      }
    }
  }

  v10 = *a2;
  v14.n128_u64[0] = ((*a3 << 6) + (*a3 >> 2) + *a4 - 0x61C8864680B583E9) ^ *a3;
  re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(a1 + 3536, v14.n128_u64, &v10);
  if (v10)
  {
  }
}

void re::RenderFrame::~RenderFrame(re::RenderFrame *this)
{
  v2 = *(this + 524);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(this + 526);
      v5 = *(v4 + 8 * i);
      if (v5)
      {

        *(v4 + 8 * i) = 0;
        v2 = *(this + 524);
      }
    }
  }

  re::DynamicArray<re::RenderFrame::ProvideCall>::deinit(this + 560);
  re::DynamicArray<re::RenderFrame::PickupAction>::deinit(this + 600);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 58);
  v6.n128_f64[0] = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(this + 64);
  if (*(this + 409))
  {
    v7 = *(this + 410);
    if (v7)
    {
      if (*(this + 3288))
      {
        v8 = (this + 3296);
      }

      else
      {
        v8 = *(this + 413);
      }

      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        (*(*v10 + 2))(v10, v6);
        objc_destroyWeak(v10 + 1);
        v10[1] = 0;
        v9 -= 8;
      }

      while (v9);
    }
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3272);
  v11 = *(this + 57);
  if (v11)
  {

    *(this + 57) = 0;
  }

  v12 = *(this + 506);
  if (v12)
  {

    *(this + 506) = 0;
  }

  re::RenderFrame::onCommandBuffersComplete(this);
  re::RenderFrame::onFrameComplete(this);
  if (*(this + 574))
  {
    v13 = *(this + 575);
    if (v13)
    {
      if (*(this + 4608))
      {
        v14 = this + 4616;
      }

      else
      {
        v14 = *(this + 578);
      }

      v15 = 24 * v13;
      v16 = (v14 + 16);
      do
      {
        v17 = *v16;
        v16 += 3;

        v15 -= 24;
      }

      while (v15);
    }

    v18 = *(this + 1152);
    if ((v18 & 1) == 0)
    {
      (*(**(this + 574) + 40))(*(this + 574), *(this + 578));
      v18 = *(this + 1152);
    }

    *(this + 574) = 0;
    *(this + 575) = 0;
    *(this + 1152) = (v18 | 1) + 2;
  }

  std::mutex::~mutex((this + 4528));
  re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 4480);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 4440);
  if (*(this + 552))
  {
    v19 = *(this + 553);
    if (v19)
    {
      v20 = *(this + 554);
      v21 = 32 * v19;
      do
      {
        v22 = *v20;
        v20 += 4;

        v21 -= 32;
      }

      while (v21);
      (*(**(this + 552) + 40))(*(this + 552), *(this + 554));
      *(this + 553) = 0;
      *(this + 554) = 0;
    }

    *(this + 552) = 0;
  }

  v23 = *(this + 547);
  if (v23)
  {
    v24 = *(this + 551);
    if (v24)
    {
      v25 = *(this + 549);
      if (v25)
      {
        v26 = v24 + 48 * v25;
        v27 = *(this + 551);
        do
        {
          *v27 = 0;
          ++*(v27 + 8);
          v27 += 48;
        }

        while (v27 != v26);
      }

      (*(*v23 + 40))(v23);
    }

    *(this + 551) = 0;
    *(this + 548) = 0;
    *(this + 549) = 0;
    *(this + 547) = 0;
    ++*(this + 1100);
  }

  v28 = *(this + 542);
  if (v28)
  {
    v29 = *(this + 546);
    if (v29)
    {
      v30 = *(this + 544);
      if (v30)
      {
        v31 = 8 * v30;
        do
        {
          if (*v29)
          {

            *v29 = 0;
          }

          ++v29;
          v31 -= 8;
        }

        while (v31);
        v28 = *(this + 542);
        v29 = *(this + 546);
      }

      (*(*v28 + 40))(v28, v29);
    }

    *(this + 546) = 0;
    *(this + 543) = 0;
    *(this + 544) = 0;
    *(this + 542) = 0;
    ++*(this + 1090);
  }

  v32 = *(this + 537);
  if (v32)
  {
    v33 = *(this + 541);
    if (v33)
    {
      v34 = *(this + 539);
      if (v34)
      {
        v35 = 24 * v34;
        do
        {
          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v33);
          v33 = (v33 + 24);
          v35 -= 24;
        }

        while (v35);
        v32 = *(this + 537);
        v33 = *(this + 541);
      }

      (*(*v32 + 40))(v32, v33);
    }

    *(this + 541) = 0;
    *(this + 538) = 0;
    *(this + 539) = 0;
    *(this + 537) = 0;
    ++*(this + 1080);
  }

  v36 = (this + 4176);
  v37 = *(this + 532);
  if (v37)
  {
    v38 = *(this + 536);
    if (v38)
    {
      v39 = *(this + 534);
      if (v39)
      {
        v40 = 8 * v39;
        do
        {
          if (*v38)
          {

            *v38 = 0;
          }

          ++v38;
          v40 -= 8;
        }

        while (v40);
        v37 = *(this + 532);
        v38 = *(this + 536);
      }

      (*(*v37 + 40))(v37, v38);
    }

    *(this + 536) = 0;
    *(this + 533) = 0;
    *(this + 534) = 0;
    *(this + 532) = 0;
    ++*(this + 1070);
  }

  v41 = *(this + 527);
  if (v41)
  {
    v42 = *(this + 531);
    if (v42)
    {
      v43 = *(this + 529);
      if (v43)
      {
        v44 = 104 * v43;
        v45 = (v42 + 32);
        do
        {
          re::DynamicString::deinit(v45);
          v46 = *(v45 - 2);
          if (v46)
          {

            *(v45 - 2) = 0;
          }

          v47 = *(v45 - 3);
          if (v47)
          {

            *(v45 - 3) = 0;
          }

          *(v45 - 4) = 0;
          v45 = (v45 + 104);
          v44 -= 104;
        }

        while (v44);
        v41 = *(this + 527);
        v42 = *(this + 531);
      }

      (*(*v41 + 40))(v41, v42);
    }

    *(this + 531) = 0;
    *(this + 528) = 0;
    *(this + 529) = 0;
    *(this + 527) = 0;
    ++*(this + 1060);
  }

  v48 = *v36;
  if (*v36)
  {
    v49 = *(this + 526);
    if (v49)
    {
      v50 = *(this + 524);
      if (v50)
      {
        v51 = 8 * v50;
        do
        {
          if (*v49)
          {

            *v49 = 0;
          }

          v49 += 8;
          v51 -= 8;
        }

        while (v51);
        v48 = *(this + 522);
        v49 = *(this + 526);
      }

      (*(*v48 + 40))(v48, v49);
    }

    *(this + 526) = 0;
    *(this + 523) = 0;
    *(this + 524) = 0;
    *v36 = 0;
    ++*(this + 1050);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 4136);
  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::deinit(this + 4096);
  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::deinit(this + 4056);
  v52 = *(this + 506);
  if (v52)
  {

    *(this + 506) = 0;
  }

  re::DynamicArray<re::AutomaticSpecifyScopeParameters>::deinit(this + 4008);
  re::DynamicArray<re::RenderGraphScopeOutput>::deinit(this + 3968);
  re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions((this + 3672));
  re::DynamicArray<re::RenderGraph>::deinit(this + 3632);
  re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(this + 448);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 3536);
  re::RenderGraphProcessorContainer::~RenderGraphProcessorContainer((this + 3416));
  re::DynamicArray<re::DetailedError>::deinit(this + 3376);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 3336);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3272);
  re::DynamicOverflowArray<re::PatchTransform,5ul>::deinit(this + 688);
  re::HashTable<unsigned long,re::CameraLateLatch,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 80);
  re::DynamicArray<re::RenderFrame::PickupAction>::deinit(this + 600);
  re::DynamicArray<re::RenderFrame::ProvideCall>::deinit(this + 560);
  re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(this + 64);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 58);
  v53 = *(this + 57);
  if (v53)
  {

    *(this + 57) = 0;
  }

  re::RenderFrameData::~RenderFrameData((this + 264));
  re::RenderGraphDataStore::deinit((this + 32));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 26);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 144);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 12);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 6);
}

void re::RenderFrame::onCommandBuffersComplete(re::RenderFrame *this)
{
  std::mutex::lock((this + 4528));
  v2 = *(this + 514);
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(this + 516) + 32);
    do
    {
      v5 = *v4;
      v4 += 5;
      (*(*v5 + 16))(v5, this + 384);
      v3 -= 40;
    }

    while (v3);
  }

  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::clear(this + 512);

  std::mutex::unlock((this + 4528));
}

uint64_t re::RenderFrame::onFrameComplete(uint64_t this)
{
  if ((*(this + 424) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 4072);
    if (v2)
    {
      v3 = 40 * v2;
      v4 = (*(this + 4088) + 32);
      do
      {
        v5 = *v4;
        v4 += 5;
        this = (*(*v5 + 16))(v5, v1 + 384);
        v3 -= 40;
      }

      while (v3);
    }

    *(v1 + 424) = 1;
  }

  return this;
}

uint64_t re::DynamicArray<re::RenderFrame::ProvideCall>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        v6 = (v3 + 16);
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v6);
          v6 += 5;
          v5 -= 40;
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

uint64_t re::DynamicArray<re::RenderFrame::PickupAction>::deinit(uint64_t a1)
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
        v5 = 80 * v4;
        v6 = (v3 + 40);
        do
        {
          *(v6 + 4) = 0;
          re::DynamicString::deinit(v6);
          re::DynamicString::deinit((v6 - 32));
          v6 = (v6 + 80);
          v5 -= 80;
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

double re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
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
          re::DynamicString::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 48;
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

unint64_t re::RenderFrame::setRenderGraphScopes(re::RenderFrame *this, const char *__s, const char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  *(this + 45) = __s;
  *(this + 46) = a3;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v10);
    v8 = (v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
  }

  else
  {
    v8 = 0;
  }

  result = strlen(a3);
  if (result)
  {
    result = MurmurHash3_x64_128(a3, result, 0, &v10);
    v6 = ((v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10) - 0x61C8864680B583E9;
  }

  *(this + 47) = ((v8 >> 2) + (v8 << 6) + v6) ^ v8;
  return result;
}

void re::RenderFrame::emitGraph(re::RenderFrame *this, const char *__s, const char *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!__s || !*__s)
  {
LABEL_59:
    re::internal::assertLog(4, __s, a3, "assertion failure: '%s' (%s:line %i) ", "typeScope != nullptr && strlen(typeScope) > 0", "emitGraph", 231);
    _os_crash();
    __break(1u);
    goto LABEL_60;
  }

  if (!a3 || !*a3)
  {
LABEL_60:
    re::internal::assertLog(4, __s, "assertion failure: '%s' (%s:line %i) ", "graphScope != nullptr && strlen(graphScope) > 0", "emitGraph", 232);
    _os_crash();
    __break(1u);
  }

  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, buf);
    v7 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
  }

  else
  {
    v7 = 0;
  }

  v8 = strlen(a3);
  if (v8)
  {
    v8 = MurmurHash3_x64_128(a3, v8, 0, buf);
    v9 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
  }

  else
  {
    v9 = 0x9E3779B97F4A7C17;
  }

  v10 = ((v7 >> 2) + (v7 << 6) + v9) ^ v7;
  v40[0] = v10;
  v11 = *(this + 122);
  if (v11)
  {
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    v13 = *(*(this + 59) + 4 * ((v12 ^ (v12 >> 31)) % v11));
    if (v13 != 0x7FFFFFFF)
    {
      v34 = *(this + 60);
      if (*(v34 + 24 * v13 + 16) == v10)
      {
LABEL_43:
        v35 = *re::graphicsLogObjects(v8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = __s;
          *&buf[12] = 2080;
          *&buf[14] = a3;
          _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Duplicate graph was emitted and skipped: %s::%s", buf, 0x16u);
        }

        return;
      }

      while (1)
      {
        LODWORD(v13) = *(v34 + 24 * v13 + 8) & 0x7FFFFFFF;
        if (v13 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v34 + 24 * v13 + 16) == v10)
        {
          goto LABEL_43;
        }
      }
    }
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 464, v40);
  v14 = strlen(__s);
  v15 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v14 + 1, 0);
  memcpy(v15, __s, v14);
  *(v15 + v14) = 0;
  v16 = strlen(a3);
  v17 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v16 + 1, 0);
  memcpy(v17, a3, v16);
  *(v17 + v16) = 0;
  re::RenderFrame::setRenderGraphScopes(this, v15, v17);
  if (*(this + 449) == 1)
  {
    re::RenderGraphManager::getProviderPointers(*this, __s, *(this + 49), buf);
    if (!*&buf[8])
    {
      goto LABEL_54;
    }

    v15 = *&buf[16];
    v19 = (8 * *&buf[8]);
    while (1)
    {
      v20 = *v15;
      if (!*v15)
      {
        break;
      }

      if ((*(*v20 + 16))(*v15, __s, a3, this))
      {
        *(this + 352) = 1;
        (*(*v20 + 24))(v20, __s, a3, this);
        *(this + 352) = 0;
      }

      ++v15;
      v19 -= 8;
      if (!v19)
      {
        v21 = *buf;
        if (*buf && *&buf[8])
        {
          v22 = *&buf[16];
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "provider", "emitGraph", 247);
    _os_crash();
    __break(1u);
LABEL_57:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) ", "providerList[index]", "emitGraph", 262);
    _os_crash();
    __break(1u);
LABEL_58:
    v40[1] = 0;
    *(v19 + 3) = 0u;
    *(v19 + 4) = 0u;
    v50 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    v44 = 468;
    v45 = 2048;
    v46 = v20;
    v47 = 2048;
    v48 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_59;
  }

  re::RenderGraphManager::getProviderPointers(*this, __s, *(this + 49), &v37);
  if (v38)
  {
    v20 = 0;
    v19 = buf;
    do
    {
      v24 = *(v39 + 8 * v20);
      if (!v24)
      {
        goto LABEL_57;
      }

      v25 = (*(*v24 + 16))(v24, __s, a3, this);
      v15 = v38;
      if (!v25)
      {
        if (v38 <= v20)
        {
          goto LABEL_58;
        }

        *(v39 + 8 * v20) = 0;
      }

      *(this + 41) ^= v25 - 0x61C8864680B583E9 + (*(this + 41) << 6) + (*(this + 41) >> 2);
      ++v20;
    }

    while (v20 < v15);
    if (v15)
    {
      *buf = *(this + 360);
      v26 = re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray(&buf[16], &v37);
      v27 = *(this + 72);
      v28 = *(this + 71);
      if (v27 >= v28)
      {
        v29 = v27 + 1;
        if (v28 < v27 + 1)
        {
          if (*(this + 70))
          {
            v30 = 2 * v28;
            v31 = v28 == 0;
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

            re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(this + 70, v33);
          }

          else
          {
            re::DynamicArray<re::RenderFrame::ProvideCall>::setCapacity(this + 70, v29);
            ++*(this + 146);
          }
        }

        v27 = *(this + 72);
      }

      v36 = *(this + 74) + 40 * v27;
      *v36 = *buf;
      re::FixedArray<re::RenderGraphProviderBase const*>::FixedArray((v36 + 16), &buf[16]);
      ++*(this + 72);
      ++*(this + 146);
      if (*&buf[16] && *&buf[24])
      {
        (*(**&buf[16] + 40))();
      }
    }
  }

  v21 = v37;
  if (v37 && v38)
  {
    v22 = v39;
LABEL_53:
    (*(*v21 + 40))(v21, v22);
  }

LABEL_54:
  *(this + 45) = &str_122;
  *(this + 46) = &str_122;
  *(this + 47) = 0;
}

void re::RenderFrame::addTargetOutput(re::RenderFrame *this, unint64_t *a2, double *a3, char *__s)
{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "addTargetOutput", 315);
    _os_crash();
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::addTargetToLane(v14, &v16, v15, 1);
  }
}

unint64_t re::RenderFrame::getScopeOutputIndex(re::RenderFrame *this, const char *__s)
{
  v2 = *(this + 498);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 500);
  v5 = strlen(__s);
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = v4 + 136 * v6;
    if (*(v8 + 8) == v5 && !memcmp(*v8, __s, v5))
    {
      break;
    }

    v6 = (v7 + 1);
    v7 = v6;
    if (v2 <= v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

uint64_t *re::DynamicArray<re::RenderGraphScopeOutput>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphScopeOutput>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 136 * v4;
  *v5 = *a2;
  v6 = *(a2 + 16);
  *(v5 + 16) = *(v5 + 16) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = &str_67;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 76) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v5 + 40), (a2 + 40));
  *(v5 + 88) = 0u;
  v5 += 88;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, (a2 + 88));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderFrame::inheritLaneProperties(re::RenderFrame *this, unint64_t *a2, double *a3, char *__s)
{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "inheritLaneProperties", 344);
    _os_crash();
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::inheritPropertiesFromLane(v14, &v16, v15);
  }
}

{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "inheritLaneProperties", 402);
    _os_crash();
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::inheritPropertiesFromLane(v14, &v16, v15);
  }
}

void re::RenderFrame::addBufferOutput(re::RenderFrame *this, unint64_t *a2, double *a3, char *__s)
{
  v4 = __s;
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    if (v4 != *(this + 46))
    {
      v11 = strlen(v4);
      v12 = re::GrowableLinearAllocator::alloc((*(this + 506) + 24), v11 + 1, 0);
      memcpy(v12, v4, v11);
      *(v12 + v11) = 0;
      v4 = v12;
    }

    v17[0] = v4;
    v17[1] = strlen(v4);
    v18 = 0;
    v19 = &str_67;
    v20 = 0;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    DWORD1(v22) = 0x7FFFFFFF;
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    DWORD1(v24) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((this + 3968), v17);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v23);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v21);
    if (v18)
    {
      if (v18)
      {
      }
    }

    v10 = *(this + 498);
    ScopeOutputIndex = v10 - 1;
  }

  else
  {
    v10 = *(this + 498);
  }

  if (v10 <= ScopeOutputIndex)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < m_scopeOutputs.size()", "addBufferOutput", 373);
    _os_crash();
    __break(1u);
  }

  else
  {
    v14 = *(this + 500) + 136 * ScopeOutputIndex;
    v16 = *a2;
    v15[0] = *a3;
    v15[1] = a3[1];
    re::RenderGraphScopeOutput::addBufferToLane(v14, &v16, v15, 1);
  }
}

void re::RenderFrame::createTarget(re::RenderFrame *this@<X0>, const re::RenderGraphTargetDescription *a2@<X1>, const char *__s@<X2>, void *a4@<X8>)
{
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format("Target '%s' cannot be created outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", &v9, __s, *(this + 45), *(this + 46));
    v12.n128_u64[0] = 2001;
    v12.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v13 = v9;
    v15 = v11;
    v14 = v10;
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), &v12);
    if (v13)
    {
      if (v14)
      {
        (*(*v13 + 40))(v8);
      }
    }
  }

  re::RenderGraphResourceDescriptions::addTarget(this + 459, a2, __s, a4);
}

void re::RenderFrame::createBuffer(re::RenderFrame *this@<X0>, const re::RenderGraphBufferDescription *a2@<X1>, const char *__s@<X2>, void *a4@<X8>)
{
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format("Buffer '%s' cannot be created outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", &v9, __s, *(this + 45), *(this + 46));
    v12.n128_u64[0] = 3001;
    v12.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v13 = v9;
    v15 = v11;
    v14 = v10;
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), &v12);
    if (v13)
    {
      if (v14)
      {
        (*(*v13 + 40))(v8);
      }
    }
  }

  re::RenderGraphResourceDescriptions::addBuffer(this + 459, a2, __s, a4);
}

uint64_t re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, unint64_t *a2, id *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  *(v6 + 8) = *a2;
  *(v6 + 16) = *a3;
  v7 = v6 + 16;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, *a2, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addInternal<unsigned long long const&,re::BufferSlice const&>(a1, &v7, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 56 * HIDWORD(v8) + 16;
  }
}

id re::RenderFrame::getExternalTexture@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1 + 3536, (a2 + 96), *(a2 + 96), v6);
  if (v7 == 0x7FFFFFFF)
  {
    result = 0;
  }

  else
  {
    result = *(*(a1 + 3552) + 24 * v7 + 16);
  }

  *a3 = result;
  return result;
}

uint64_t re::RenderFrame::registerExternalBuffer(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*(a1 + 352) == 1 && (*(a1 + 449) & 1) == 0)
  {
    re::DynamicString::format("External buffer '%s' cannot be registered inside of a provide() callback. Type scope: '%s', Graph scope: '%s'", &v14, a5, *(a1 + 360), *(a1 + 368));
    v17.n128_u64[0] = 3002;
    v17.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v18 = v14;
    v20 = v16;
    v19 = v15;
    v9 = re::DynamicArray<re::DetailedError>::add((a1 + 3376), &v17);
    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))(v18, *(&v19 + 1), v9);
      }
    }
  }

  v11[0] = 0;
  v12 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11, a2);
  v13 = *(a2 + 32);
  v17.n128_u64[0] = ((*a3 << 6) + (*a3 >> 2) + *a4 - 0x61C8864680B583E9) ^ *a3;
  result = re::HashTable<unsigned long long,re::BufferSlice,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(a1 + 3584, v17.n128_u64, v11);
  if (v12 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_1[v12])(&v17, v11);
  }

  return result;
}

uint64_t re::RenderFrame::getExternalBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1 + 3584, (a2 + 40), *(a2 + 40), v7);
  if (v8 == 0x7FFFFFFF)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v6 = *(a1 + 3600) + 56 * v8;
    *a3 = 0;
    *(a3 + 24) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a3, v6 + 16);
    *(a3 + 32) = *(v6 + 48);
  }

  return result;
}

double re::RenderFrame::tryGetInputTarget@<D0>(re::RenderFrame *this@<X0>, const char *a2@<X1>, const char *__s@<X2>, double *a4@<X8>)
{
  v4 = __s;
  v21 = *MEMORY[0x1E69E9840];
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format("Input target (lane '%s', override scope '%s') cannot be retrieved outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", v19, a2, __s, *(this + 45), *(this + 46));
    v20[0].n128_u64[0] = 2003;
    v20[0].n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v20[1].n128_u64[0] = *v19;
    v20[2].n128_u64[1] = *&v19[24];
    *(&v20[1] + 8) = *&v19[8];
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), v20);
    if (v20[1].n128_u64[0])
    {
      if (v20[1].n128_u8[8])
      {
        (*(*v20[1].n128_u64[0] + 40))(v8);
      }
    }
  }

  if (!v4)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    goto LABEL_19;
  }

  v10 = ScopeOutputIndex;
  v11 = *(this + 498);
  if (v11 <= ScopeOutputIndex)
  {
    memset(v20, 0, sizeof(v20));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v19 = 136315906;
    *&v19[4] = "operator[]";
    *&v19[12] = 1024;
    *&v19[14] = 797;
    *&v19[18] = 2048;
    *&v19[20] = v10;
    *&v19[28] = 2048;
    *&v19[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(this + 500) + 136 * ScopeOutputIndex;
  if (a2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = a2[1];
      if (v14)
      {
        v15 = a2 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20[0].n128_u64[0] = v13;
  v17 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v12 + 40, v20);
  if (!v17)
  {
LABEL_19:
    *a4 = 0.0;
    result = NAN;
    a4[1] = NAN;
  }

  else
  {
    *a4 = *(v17 + 80);
    result = *(v17 + 88);
    a4[1] = result;
  }

  return result;
}

double re::RenderFrame::tryGetInputBuffer@<D0>(re::RenderFrame *this@<X0>, const char *a2@<X1>, const char *__s@<X2>, double *a4@<X8>)
{
  v4 = __s;
  v21 = *MEMORY[0x1E69E9840];
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format("Input buffer (lane '%s', override scope '%s') cannot be retrieved outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", v19, a2, __s, *(this + 45), *(this + 46));
    v20[0].n128_u64[0] = 3003;
    v20[0].n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v20[1].n128_u64[0] = *v19;
    v20[2].n128_u64[1] = *&v19[24];
    *(&v20[1] + 8) = *&v19[8];
    v8 = re::DynamicArray<re::DetailedError>::add((this + 3376), v20);
    if (v20[1].n128_u64[0])
    {
      if (v20[1].n128_u8[8])
      {
        (*(*v20[1].n128_u64[0] + 40))(v8);
      }
    }
  }

  if (!v4)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    goto LABEL_19;
  }

  v10 = ScopeOutputIndex;
  v11 = *(this + 498);
  if (v11 <= ScopeOutputIndex)
  {
    memset(v20, 0, sizeof(v20));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v19 = 136315906;
    *&v19[4] = "operator[]";
    *&v19[12] = 1024;
    *&v19[14] = 797;
    *&v19[18] = 2048;
    *&v19[20] = v10;
    *&v19[28] = 2048;
    *&v19[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(this + 500) + 136 * ScopeOutputIndex;
  if (a2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = a2[1];
      if (v14)
      {
        v15 = a2 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20[0].n128_u64[0] = v13;
  v17 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v12 + 88, v20);
  if (!v17)
  {
LABEL_19:
    *a4 = 0.0;
    result = NAN;
    a4[1] = NAN;
  }

  else
  {
    *a4 = *(v17 + 96);
    result = *(v17 + 104);
    a4[1] = result;
  }

  return result;
}

uint64_t re::RenderFrame::specifyScopeLane(void *a1, uint64_t *a2, void **a3, const char *a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v17 = 0uLL;
  *(&v16 + 1) = 0;
  re::DynamicString::setCapacity(&v16, 0);
  HIBYTE(v18) = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0xFFFFFFFFLL;
  v22 = 0;
  v12 = *a2;
  NS::SharedPtr<MTL::Buffer>::operator=(&v13, a3);
  v8 = strlen(a4);
  v23[0] = a4;
  v23[1] = v8;
  re::DynamicString::operator=(&v16, v23);
  v18 = 257;
  v9 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((a1 + 527), &v12);
  v10 = a1[529];
  if (v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))(v9);
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v14)
  {

    v14 = 0;
  }

  if (v13)
  {
  }

  return (v10 - 1);
}

__n128 re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 56) = *(a2 + 56);
  v6 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v7 = *(a2 + 48);
  *(a2 + 56) = 0;
  v9 = *(v5 + 40);
  v8 = *(v5 + 48);
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v8;
  result = *(a2 + 64);
  v11 = *(a2 + 80);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 64) = result;
  *(v5 + 80) = v11;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 104 * v4;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 24) = *(a2 + 24);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  result = *(a2 + 64);
  v8 = *(a2 + 80);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 64) = result;
  *(v5 + 80) = v8;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrame::frameReuse_specifyScopeLane(uint64_t a1, uint64_t *a2, void **a3, char *__s1)
{
  v4 = *(a1 + 4232);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = *a2;
  for (i = *(a1 + 4248) + 65; ; i += 104)
  {
    if (*(i - 65) == v9)
    {
      v11 = (*(i - 25) & 1) != 0 ? *(i - 17) : (i - 24);
      v12 = strcmp(__s1, v11);
      if (!v12)
      {
        break;
      }
    }

    if (v4 == ++v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v18 = 0uLL;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  *v16 = 0u;
  *v17 = 0u;
  LODWORD(v17[1]) = -1;
  v19 = 0uLL;
  re::DynamicString::setCapacity(&v18, 0);
  BYTE1(v20) = 0;
  *(&v20 + 1) = 0;
  *&v21 = 0;
  *(&v21 + 1) = 0xFFFFFFFFLL;
  LOBYTE(v22) = 0;
  *(i - 65) = 0;
  NS::SharedPtr<MTL::Texture>::operator=((i - 57), &v16[1]);
  NS::SharedPtr<MTL::Texture>::operator=((i - 49), v17);
  *(i - 41) = v17[1];
  re::DynamicString::operator=((i - 33), &v18);
  v13 = v20;
  v14 = v21;
  *(i + 31) = v22;
  *(i + 15) = v14;
  *(i - 1) = v13;
  if (v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v17[0])
  {

    v17[0] = 0;
  }

  if (v16[1])
  {
  }

  *(i - 65) = *a2;
  NS::SharedPtr<MTL::Buffer>::operator=((i - 57), a3);
  v16[0] = __s1;
  v16[1] = strlen(__s1);
  re::DynamicString::operator=((i - 33), v16);
  *(i - 1) = 257;
  return v8;
}

char *re::RenderFrame::currentCommandBuffer(re::RenderFrame *this)
{
  v1 = *(this + 575);
  if (v1 && ((*(this + 4608) & 1) != 0 ? (v2 = this + 4616) : (v2 = *(this + 578)), *&v2[24 * v1 - 8]))
  {
    return &v2[24 * v1 - 24];
  }

  else
  {
    return re::RenderFrame::createQueuedCommandBuffer(this);
  }
}

uint64_t re::RenderFrame::createQueuedCommandBuffer(re::RenderFrame *this)
{
  re::RenderFrame::createCommandBuffer(this, &v5);
  re::DynamicOverflowArray<re::CommandBuffer,8ul>::add(this + 4592, &v5);
  if (*(this + 4608))
  {
    v2 = this + 4616;
  }

  else
  {
    v2 = *(this + 578);
  }

  v3 = &v2[24 * *(this + 575) - 24];

  return v3;
}

void re::RenderFrame::createCommandBuffer(re::RenderFrame *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = [objc_msgSend(MEMORY[0x1E6974008] alloc)];
  [v4 setErrorOptions_];
  if (*(*(this + 1) + 321) == 1 && (([v4 respondsToSelector_] & 1) != 0 || objc_msgSend(v4, sel_methodSignatureForSelector_, sel_setDisableFineGrainedComputePreemption_)))
  {
    [v4 setDisableFineGrainedComputePreemption_];
  }

  re::mtl::CommandQueue::makeCommandBufferWithDescriptor((*(this + 3) + 280), v4, &v5);
  re::ObjCObject::operator=((a2 + 16), &v5);
  *(a2 + 8) = 0;

  if (v4)
  {
  }
}

__n128 re::DynamicOverflowArray<re::CommandBuffer,8ul>::add(uint64_t a1, __n128 *a2)
{
  re::DynamicOverflowArray<re::CommandBuffer,8ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = (v4 + 24 * *(a1 + 8));
  result = *a2;
  *v5 = *a2;
  v7 = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  v5[1].n128_u64[0] = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::RenderFrame::specifyScopeLane(re::RenderFrame *this, const re::WeakStringID *a2, const unsigned int *a3, const char *a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v17 = 0uLL;
  *(&v16 + 1) = 0;
  re::DynamicString::setCapacity(&v16, 0);
  HIBYTE(v18) = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0xFFFFFFFFLL;
  v22 = 0;
  v12 = *a2;
  v15 = *a3;
  v8 = strlen(a4);
  v23[0] = a4;
  v23[1] = v8;
  re::DynamicString::operator=(&v16, v23);
  v18 = 257;
  v9 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((this + 4216), &v12);
  v10 = *(this + 529);
  if (v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))(v9);
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v14)
  {

    v14 = 0;
  }

  if (v13)
  {
  }

  return (v10 - 1);
}

uint64_t re::RenderFrame::specifyScopeLane(void *a1, char *a2, void **a3, const char *a4, int a5)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = -1;
  v23 = 0uLL;
  *(&v22 + 1) = 0;
  re::DynamicString::setCapacity(&v22, 0);
  HIBYTE(v24) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0xFFFFFFFFLL;
  v28 = 0;
  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = (a2 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

      v10 &= ~0x8000000000000000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = v10;
  NS::SharedPtr<MTL::Buffer>::operator=(&v20, a3);
  v14 = strlen(a4);
  v29[0] = a4;
  v29[1] = v14;
  re::DynamicString::operator=(&v22, v29);
  v24 = 257;
  HIDWORD(v27) = a5;
  v15 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((a1 + 527), &v18);
  v16 = a1[529];
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))(v15);
    }

    v22 = 0u;
    v23 = 0u;
  }

  if (v20)
  {

    v20 = 0;
  }

  if (v19)
  {
  }

  return (v16 - 1);
}

void *re::RenderFrame::getStreamNameForWorldRoot(re::DynamicString **this, const re::StringID *a2, uint64_t a3)
{
  v4 = (a3 + (*a2 >> 3) + (*a2 >> 1 << 6) - 0x61C8864680B583E9) ^ (*a2 >> 1);
  v11 = v4;
  if (!this[64] || (v5 = *(this[65] + v4 % *(this + 134)), v5 == 0x7FFFFFFF))
  {
LABEL_6:
    re::DynamicString::format(this[49], "%s_W%llu", &v9, *(a2 + 1), a3);
    v7 = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add((this + 64), &v11, &v9);
    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  else
  {
    v6 = this[66];
    while (*(v6 + 6 * v5 + 1) != v4)
    {
      v5 = *(v6 + 12 * v5) & 0x7FFFFFFF;
      if (v5 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    return (v6 + 48 * v5 + 16);
  }

  return v7;
}

void *re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v14);
  if (HIDWORD(v15) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 48 * HIDWORD(v15) + 16);
  }

  v6 = re::HashTable<unsigned long long,re::DynamicString,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v15, v14);
  v7 = *a2;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  result = (v6 + 16);
  result[3] = a3[3];
  v9 = *a3;
  v10 = a3[1];
  *(result - 1) = v7;
  *result = v9;
  *a3 = 0;
  v11 = a3[2];
  a3[3] = 0;
  v13 = result[1];
  v12 = result[2];
  result[1] = v10;
  result[2] = v11;
  a3[1] = v13;
  a3[2] = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t re::RenderFrame::applyPropertiesToScopeLane(re::RenderFrame *this, const char *a2, const re::RenderGraphTargetDescription *a3, const char *__s)
{
  v4 = __s;
  v31 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    re::DynamicString::format("applyPropertiesToScopeLane called on unknown graphScope %s.", v30, v4);
    re::RenderFrame::addError(this, v30);
    result = *&v30[0];
    if (*&v30[0] && (BYTE8(v30[0]) & 1) != 0)
    {
      return (*(**&v30[0] + 40))();
    }
  }

  else
  {
    if (*(this + 498) <= ScopeOutputIndex)
    {
      memset(v30, 0, sizeof(v30));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(this + 500) + 136 * ScopeOutputIndex;
    if (a2)
    {
      v10 = *a2;
      if (*a2)
      {
        v11 = a2[1];
        if (v11)
        {
          v12 = a2 + 2;
          do
          {
            v10 = 31 * v10 + v11;
            v13 = *v12++;
            v11 = v13;
          }

          while (v13);
        }

        v10 &= ~0x8000000000000000;
      }
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v30[0] = v10;
    result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v9 + 40, v30);
    if (result)
    {
      v15 = result;
      if (*(result + 16))
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = (v15[4] + v16);
          *&v30[0] = 0;
          *(&v30[0] + 1) = -1;
          v30[0] = *v18;
          result = re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v30);
          if (*result == 3)
          {
            if (!*(result + 4))
            {
              *(result + 4) = *(a3 + 1);
            }

            if (*(result + 12) == -1)
            {
              v20 = *(a3 + 3);
              *(result + 12) = v20;
              v19 = v20 == -1;
            }

            else
            {
              v19 = 0;
            }

            if (*(result + 16) == -1)
            {
              v22 = *(a3 + 4);
              *(result + 16) = v22;
              v21 = v22 == -1;
            }

            else
            {
              v21 = 0;
            }

            if (*(result + 20) == -1)
            {
              v24 = *(a3 + 5);
              *(result + 20) = v24;
              v23 = v24 == -1;
            }

            else
            {
              v23 = 0;
            }

            if (*(result + 24) == -1)
            {
              v26 = *(a3 + 6);
              *(result + 24) = v26;
              v25 = v26 == -1;
            }

            else
            {
              v25 = 0;
            }

            if (!v19 && !v21 && !v23 && !v25)
            {
              *(result + 8) = *(a3 + 2);
            }

            if (*(result + 28) == -1)
            {
              *(result + 28) = *(a3 + 7);
            }

            if (*(result + 32) == -1)
            {
              *(result + 32) = *(a3 + 8);
            }

            if (*(result + 88) == -1)
            {
              *(result + 88) = *(a3 + 11);
            }
          }

          ++v17;
          v16 += 16;
        }

        while (v15[2] > v17);
      }

      if (v15[7])
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = (v15[9] + v27);
          *&v30[0] = 0;
          *(&v30[0] + 1) = -1;
          v30[0] = *v29;
          result = re::RenderGraphResourceDescriptions::bufferDescription((this + 3672), v30);
          if (*result == 3)
          {
            if (*(result + 8) == -1)
            {
              *(result + 8) = (*(result + 20) * (*(a3 + 4) * *(a3 + 3)));
            }

            if (*(result + 32) == -1)
            {
              *(result + 32) = *(a3 + 11);
            }
          }

          ++v28;
          v27 += 16;
        }

        while (v15[7] > v28);
      }
    }
  }

  return result;
}

uint64_t re::RenderFrame::applyPropertiesToScopeLane(re::RenderFrame *this, const char *a2, const re::RenderGraphBufferDescription *a3, const char *__s)
{
  v4 = __s;
  v23 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v4 = *(this + 46);
  }

  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(this, v4);
  if (ScopeOutputIndex == -1)
  {
    re::DynamicString::format("applyPropertiesToScopeLane called on unknown graphScope %s.", v22, v4);
    re::RenderFrame::addError(this, v22);
    result = *&v22[0];
    if (*&v22[0] && (BYTE8(v22[0]) & 1) != 0)
    {
      return (*(**&v22[0] + 40))();
    }
  }

  else
  {
    if (*(this + 498) <= ScopeOutputIndex)
    {
      memset(v22, 0, sizeof(v22));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(this + 500) + 136 * ScopeOutputIndex;
    if (a2)
    {
      v10 = *a2;
      if (*a2)
      {
        v11 = a2[1];
        if (v11)
        {
          v12 = a2 + 2;
          do
          {
            v10 = 31 * v10 + v11;
            v13 = *v12++;
            v11 = v13;
          }

          while (v13);
        }

        v10 &= ~0x8000000000000000;
      }
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v22[0] = v10;
    result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v9 + 88, v22);
    if (result)
    {
      v15 = result;
      if (*(result + 56))
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = (v15[9] + v16);
          *&v22[0] = 0;
          *(&v22[0] + 1) = -1;
          v22[0] = *v18;
          result = re::RenderGraphResourceDescriptions::bufferDescription((this + 3672), v22);
          if (*result == 3)
          {
            if (*(result + 8) == -1)
            {
              *(result + 8) = *(a3 + 1);
            }

            if (*(result + 32) == -1)
            {
              *(result + 32) = *(a3 + 4);
            }
          }

          ++v17;
          v16 += 16;
        }

        while (v15[7] > v17);
      }

      if (v15[2])
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = (v15[4] + v19);
          *&v22[0] = 0;
          *(&v22[0] + 1) = -1;
          v22[0] = *v21;
          result = re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v22);
          if (*result == 3)
          {
            if (*(result + 12) == -1)
            {
              *(result + 12) = (*(result + 44) * *(a3 + 1));
            }

            if (*(result + 16) == -1)
            {
              *(result + 16) = (*(result + 48) * *(a3 + 1));
            }

            if (*(result + 88) == -1)
            {
              *(result + 88) = *(a3 + 4);
            }
          }

          ++v20;
          v19 += 16;
        }

        while (v15[2] > v20);
      }
    }
  }

  return result;
}

void re::RenderFrame::pickupScopeLane(re::RenderFrame *this, const char *a2, const char *__s, const char *a4)
{
  v4 = a4;
  if (a4)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v4 = *(this + 46);
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    if (v7)
    {
      v8 = a2 + 2;
      do
      {
        v6 = 31 * v6 + v7;
        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    v10 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  if (*(this + 449) == 1)
  {
    v20 = v10;
    re::RenderFrame::pickupScopeLaneInternal(this, &v20, __s, v4);
  }

  else
  {
    v11 = *(this + 72);
    re::DynamicString::DynamicString(&v14, __s, *(this + 49));
    re::DynamicString::DynamicString(v13, v4, *(this + 49));
    v16 = v11;
    re::DynamicString::DynamicString(v17, &v14);
    re::DynamicString::DynamicString(v18, v13);
    v19 = v10;
    v12 = re::DynamicArray<re::RenderFrame::PickupAction>::add((this + 600), &v16);
    v19 = 0;
    if (v18[0])
    {
      if (v18[1])
      {
        (*(*v18[0] + 40))(v12);
      }

      v12 = 0uLL;
      memset(v18, 0, sizeof(v18));
    }

    if (v17[0])
    {
      if (v17[1])
      {
        (*(*v17[0] + 40))(v12);
      }

      v12 = 0uLL;
      memset(v17, 0, sizeof(v17));
    }

    if (*&v13[0])
    {
      if (BYTE8(v13[0]))
      {
        (*(**&v13[0] + 40))(v12);
      }

      v12 = 0uLL;
      memset(v13, 0, sizeof(v13));
    }

    if (v14)
    {
      if (v15)
      {
        (*(*v14 + 40))(v12);
      }
    }
  }
}

double re::RenderFrame::pickupScopeLaneInternal(void *a1, unint64_t *a2, const char *a3, const char *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(a1, a3);
  if (ScopeOutputIndex == -1)
  {
    v35 = a3;
    v13 = "pickupScopeLane called with unknown srcScopeName %s.";
LABEL_6:
    re::DynamicString::format(v13, &v47, v35);
    re::RenderFrame::addError(a1, &v47);
    if (v47)
    {
      if (BYTE8(v47))
      {
        (*(*v47 + 40))();
      }
    }

    return result;
  }

  v9 = ScopeOutputIndex;
  v10 = ScopeOutputIndex;
  v11 = a1[498];
  if (v11 <= ScopeOutputIndex)
  {
    v46 = 0;
    v48 = 0u;
    memset(v49, 0, 48);
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    v55 = 789;
    v56 = 2048;
    v57 = v10;
    v58 = 2048;
    v59 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  v12 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1[500] + 136 * ScopeOutputIndex + 40, a2, (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31), &v47);
  if (HIDWORD(v47) == 0x7FFFFFFF)
  {
    v13 = "pickupScopeLane called with missing lane.";
    goto LABEL_6;
  }

  v15 = re::RenderFrame::getScopeOutputIndex(a1, a4);
  if (v15 == -1)
  {
    if (a1[46] != a4)
    {
      v16 = strlen(a4);
      v17 = re::GrowableLinearAllocator::alloc((a1[506] + 24), v16 + 1, 0);
      memcpy(v17, a4, v16);
      *(v17 + v16) = 0;
      a4 = v17;
    }

    v18 = strlen(a4);
    *&v47 = a4;
    *(&v47 + 1) = v18;
    *&v48 = 0;
    *(&v48 + 1) = &str_67;
    *v49 = 0;
    a4 = &v47;
    memset(&v49[8], 0, 48);
    v51 = 0u;
    memset(v50, 0, sizeof(v50));
    *&v49[44] = 0x7FFFFFFF;
    DWORD1(v51) = 0x7FFFFFFF;
    re::DynamicArray<re::RenderGraphScopeOutput>::add((a1 + 496), &v47);
    re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v50);
    result = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v49[8]);
    if (v48)
    {
      if (v48)
      {
      }
    }

    v15 = (*(a1 + 996) - 1);
  }

  if (v9 != v15)
  {
    v9 = a1[498];
    if (v9 > v10)
    {
      a4 = v15;
      if (v9 > v15)
      {
        v20 = a1[500];
        v21 = v20 + 136 * v10;
        v22 = (v20 + 136 * v15);
        v23 = *v22;
        *&v47 = 0;
        *(&v47 + 1) = &str_67;
        v24 = re::StringID::operator=((v21 + 16), &v47);
        if (v47)
        {
          if (v47)
          {
          }
        }

        v25 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v21 + 40, a2);
        if (v25)
        {
          v26 = v25;
          v27 = *(v25 + 88);
          if (v27 != -1)
          {
            v28 = *(v25 + 92);
            if (v28 != -1)
            {
              v45 = *a2;
              v42 = *(v25 + 80);
              v43 = v27;
              v44 = v28;
              re::RenderGraphScopeOutput::addTargetToLane(v22, &v45, &v42, 0);
              v45 = 0;
            }
          }

          if (*(v26 + 16))
          {
            v29 = 0;
            v30 = 0;
            do
            {
              v41 = *a2;
              v31 = (*(v26 + 32) + v29);
              v39 = 0;
              v40 = -1;
              v39 = *v31;
              v40 = v31[1];
              re::RenderGraphScopeOutput::inheritPropertiesFromLane(v22, &v41, &v39);
              v41 = 0;
              ++v30;
              v29 += 16;
            }

            while (*(v26 + 16) > v30);
          }

          if (*(v26 + 56))
          {
            v32 = 0;
            v33 = 0;
            do
            {
              v38 = *a2;
              v34 = (*(v26 + 72) + v32);
              v36 = 0;
              v37 = -1;
              v36 = *v34;
              v37 = v34[1];
              re::RenderGraphScopeOutput::inheritPropertiesFromLane(v22, &v38, &v36);
              v38 = 0;
              ++v33;
              v32 += 16;
            }

            while (*(v26 + 56) > v33);
          }

          *(v26 + 80) = 0;
          result = NAN;
          *(v26 + 88) = -1;
          *(v26 + 16) = 0;
          ++*(v26 + 24);
          *(v26 + 56) = 0;
          ++*(v26 + 64);
        }

        return result;
      }

LABEL_36:
      v46 = 0;
      v48 = 0u;
      memset(v49, 0, 48);
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      v55 = 789;
      v56 = 2048;
      v57 = a4;
      v58 = 2048;
      v59 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_35:
    v46 = 0;
    v48 = 0u;
    memset(v49, 0, 48);
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    v55 = 789;
    v56 = 2048;
    v57 = v10;
    v58 = 2048;
    v59 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

__n128 re::DynamicArray<re::RenderFrame::PickupAction>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderFrame::PickupAction>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  *v5 = a2->n128_u32[0];
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 32) = a2[2].n128_u64[0];
  v6 = a2[1].n128_u64[0];
  *(v5 + 8) = a2->n128_u64[1];
  a2->n128_u64[1] = 0;
  v7 = a2[1].n128_u64[1];
  a2[2].n128_u64[0] = 0;
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  a2[1].n128_u64[0] = v9;
  a2[1].n128_u64[1] = v8;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 40) = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = 0;
  v10 = *(v5 + 56);
  *(v5 + 56) = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v10;
  result = a2[4];
  *(v5 + 64) = result;
  a2[4].n128_u64[0] = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v12;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderFrame::makeRenderGraph(re::RenderFrame *this, const char *a2, unint64_t a3)
{
  if ((*(this + 352) & 1) == 0 && (*(this + 449) & 1) == 0)
  {
    re::DynamicString::format("Render graph '%s' cannot be created outside of a provide() callback. Type scope: '%s', Graph scope: '%s'", &v12, a2, *(this + 45), *(this + 46));
    v8.n128_u64[0] = 1001;
    v8.n128_u64[1] = re::RenderGraphCachingErrorCategory(void)::instance;
    v9 = v12;
    v11 = v14;
    v10 = v13;
    v6 = re::DynamicArray<re::DetailedError>::add((this + 3376), &v8);
    if (v9)
    {
      if (v10)
      {
        (*(*v9 + 40))(v6);
      }
    }
  }

  re::RenderGraph::RenderGraph(&v8, a2, a3, *(this + 45), *(this + 46), *(this + 47));
  re::DynamicArray<re::RenderGraph>::add((this + 3632), &v8);
  re::RenderGraph::~RenderGraph(&v8);
  return *(this + 458) + 112 * *(this + 456) - 112;
}

uint64_t re::DynamicArray<re::RenderGraph>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraph>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::RenderGraph::RenderGraph(*(this + 4) + 112 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphExecutable::targetDescription(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (*(a1 + 8) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 112 * v2;
}

void anonymous namespace::resourcesWithInvalidTextureBound(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_440))
  {
    byte_1EE1B8890 = 0;
    qword_1EE1B8880 = &unk_1F5CCF7F8;
    unk_1EE1B8888 = "RenderFrame allocator";
    __cxa_guard_release(&_MergedGlobals_440);
  }

  if ((atomic_load_explicit(&qword_1EE1B8878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8878))
  {
    dword_1EE1B88B8 = 0;
    xmmword_1EE1B88A8 = 0u;
    xmmword_1EE1B8898 = 0u;
    *algn_1EE1B88BC = 0x7FFFFFFFLL;
    re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&xmmword_1EE1B8898, &qword_1EE1B8880, 3);

    __cxa_guard_release(&qword_1EE1B8878);
  }
}

uint64_t re::RenderGraphExecutable::bufferDescription(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (*(a1 + 32) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 40) + 48 * v2;
}

re *re::RenderFrame::buildOrRetainCachedGraph(re::RenderFrame *this, re::RenderGraphStats *a2)
{
  v7 = this;
  v307 = *MEMORY[0x1E69E9840];
  v8 = *(this + 41);
  v9 = *(this + 529);
  if (!*(this + 42))
  {
    *(this + 42) = v8;
    *(this + 43) = v9;
  }

  v287 = 0;
  __s = 0;
  v289 = 0;
  v10 = *(this + 49);
  *v296 = 0;
  re::FixedArray<unsigned long long>::init<int>(&v287, v10, v9, v296);
  v12 = *(v7 + 49);
  v13 = *(v7 + 529);
  v278 = v13;
  v273 = a2;
  if (v13)
  {
    if (v13 >> 61)
    {
      goto LABEL_513;
    }

    v14 = 8 * v13;
    v2 = *(v7 + 529);
    v15 = (*(*v12 + 32))(v12, 8 * v13, 8);
    if (!v15)
    {
LABEL_514:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_515:
      v291[0] = 0;
      memset(v296, 0, 80);
      v267 = v45;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 468;
      v300 = 2048;
      v301 = v4;
      v302 = 2048;
      v303 = v267;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_516:
      v291[0] = 0;
      memset(v296, 0, 80);
      v268 = v46;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 468;
      v300 = 2048;
      v301 = v8;
      v302 = 2048;
      v303 = v268;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_517:
      v291[0] = 0;
      memset(v296, 0, 80);
      v269 = v46;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 468;
      v300 = 2048;
      v301 = v4;
      v302 = 2048;
      v303 = v269;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_518:
      v291[0] = 0;
      memset(v296, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 468;
      v300 = 2048;
      v301 = v8;
      v302 = 2048;
      v303 = v276;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_519:
      v291[0] = 0;
      memset(v296, 0, 80);
      v270 = v46;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 468;
      v300 = 2048;
      v301 = v4;
      v302 = 2048;
      v303 = v270;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_520:
      v291[0] = 0;
      memset(v296, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 468;
      v300 = 2048;
      v301 = v4;
      v302 = 2048;
      v303 = v276;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_521:
      v295 = 0;
      v305 = 0u;
      v306 = 0u;
      memset(v304, 0, sizeof(v304));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 797;
      v300 = 2048;
      v301 = i;
      v302 = 2048;
      v303 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_522:
      v287 = 0;
      v305 = 0u;
      v306 = 0u;
      memset(v304, 0, sizeof(v304));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v299 = 136315906;
      *&v299[4] = "operator[]";
      *&v299[12] = 1024;
      *&v299[14] = 797;
      v300 = 2048;
      v301 = i;
      v302 = 2048;
      v303 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_523:
      re::internal::assertLog(4, v227, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
      goto LABEL_524;
    }

    v3 = v15;
    v17 = v15;
    v18 = v2;
    if (v2 != 1)
    {
      v19 = v14 - 8;
      memset(v15, 255, v19);
      v18 = v278;
      v17 = (v3 + v19);
    }

    v20 = 0;
    *v17 = -1;
    v21 = xmmword_1E3049620;
    v22 = vdupq_n_s64(v2 - 1);
    v23 = vdupq_n_s64(2uLL);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, v21));
      if (v24.i8[0])
      {
        *(v3 + 8 * v20) = v20;
      }

      if (v24.i8[4])
      {
        *(v3 + 8 * v20 + 8) = v20 + 1;
      }

      v20 += 2;
      v21 = vaddq_s64(v21, v23);
    }

    while (((v18 + 1) & 0x3FFFFFFFFFFFFFFELL) != v20);
    v25 = *(v7 + 49);
    v26 = *(v7 + 529);
  }

  else
  {
    v26 = 0;
    v3 = 0;
    v25 = *(v7 + 49);
  }

  i = 0xBF58476D1CE4E5B9;
  v284 = 0;
  v285 = 0;
  v286 = 0;
  *v296 = 0;
  re::FixedArray<unsigned long long>::init<int>(&v284, v25, v26, v296);
  v27 = *(v7 + 49);
  if (*(v7 + 1058) <= 1u)
  {
    v28 = 1;
  }

  else
  {
    v28 = *(v7 + 1058);
  }

  memset(v304, 0, 36);
  *(&v304[2].var0 + 1) = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v304, v27, v28);
  if (!*(v7 + 529))
  {
    v4 = 0;
    v280 = v285;
    goto LABEL_88;
  }

  v271 = v12;
  v272 = v8;
  v4 = 0;
  v29 = v286;
  v280 = v285;
  v30 = 104;
  v31 = v289;
  v274 = 0;
  v276 = __s;
  do
  {
    v8 = *(v7 + 531) + 104 * v4;
    v295 = re::RenderFrame::SpecifyScopeLaneParameters::scopeHash(v8);
    if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v304, &v295))
    {
      goto LABEL_69;
    }

    v32 = *(v8 + 8);
    if (v32 || *(v8 + 16))
    {
      i = 0;
      v33 = 1;
      v34 = v278;
      v35 = v280;
      while (1)
      {
        if (v32)
        {
          v2 = *(v7 + 529);
          if (v2 <= i)
          {
            v291[0] = 0;
            memset(v296, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v299 = 136315906;
            *&v299[4] = "operator[]";
            *&v299[12] = 1024;
            *&v299[14] = 789;
            v300 = 2048;
            v301 = i;
            v302 = 2048;
            v303 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_484:
            v291[0] = 0;
            memset(v296, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v299 = 136315906;
            *&v299[4] = "operator[]";
            *&v299[12] = 1024;
            *&v299[14] = 789;
            v300 = 2048;
            v301 = i;
            v302 = 2048;
            v303 = v2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_485:
            *v299 = 0;
            memset(v296, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v304[0].var0 = 136315906;
            *(&v304[0].var0 + 1) = "operator[]";
            WORD2(v304[0].var1) = 1024;
            *(&v304[0].var1 + 6) = 789;
            *(&v304[1].var0 + 1) = 2048;
            *(&v304[1].var0 + 1) = v2;
            WORD2(v304[1].var1) = 2048;
            *(&v304[1].var1 + 6) = v8;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_486:
            *v299 = 0;
            memset(v296, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v304[0].var0 = 136315906;
            *(&v304[0].var0 + 1) = "operator[]";
            WORD2(v304[0].var1) = 1024;
            *(&v304[0].var1 + 6) = 789;
            *(&v304[1].var0 + 1) = 2048;
            *(&v304[1].var0 + 1) = v2;
            WORD2(v304[1].var1) = 2048;
            *(&v304[1].var1 + 6) = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_487;
          }

          if (*(*(v7 + 531) + 104 * i + 8) == v32)
          {
            break;
          }
        }

        v36 = *(v8 + 16);
        if (v36)
        {
          v2 = *(v7 + 529);
          if (v2 <= i)
          {
            goto LABEL_484;
          }

          v37 = *(v7 + 531) + 104 * i;
          if (*(v37 + 16) == v36 && *(v37 + 92) == *(v8 + 92))
          {
            break;
          }
        }

        i = v33;
        _CF = v4 >= v33++;
        if (!_CF)
        {
          goto LABEL_39;
        }
      }

      if (v278 <= v4)
      {
        goto LABEL_503;
      }

      *(v3 + 8 * v4) = i;
      if (v280 <= i)
      {
        goto LABEL_504;
      }

      if (v280 <= v4)
      {
        goto LABEL_505;
      }

      *(v29 + 8 * v4) = *(v29 + 8 * i);
      if (v276 <= i)
      {
        goto LABEL_506;
      }

      *(v31 + 8 * i) ^= v295;
LABEL_39:
      if (v278 <= v4)
      {
        goto LABEL_495;
      }

      if (*(v3 + 8 * v4) == v4)
      {
        i = 0xBF58476D1CE4E5B9;
        if (v32)
        {
          v32 = [v32 protectionOptions];
          v35 = v280;
        }

        if (v35 <= v4)
        {
          goto LABEL_501;
        }

        v39 = *(v29 + 8 * v4) | v32;
        *(v29 + 8 * v4) = v39;
        v40 = *(v8 + 16);
        if (v40)
        {
          v40 = [v40 protectionOptions];
          v39 = *(v29 + 8 * v4);
        }

        v41 = v40 | v39;
        *(v29 + 8 * v4) = v41;
        v42 = *(v7 + 55) & v41;
        *(v29 + 8 * v4) = v42;
        if (v276 <= v4)
        {
LABEL_502:
          v291[0] = 0;
          memset(v296, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = v4;
          v302 = 2048;
          v303 = v276;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_503:
          v291[0] = 0;
          memset(v296, 0, 80);
          v264 = v34;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = v4;
          v302 = 2048;
          v303 = v264;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_504:
          v291[0] = 0;
          memset(v296, 0, 80);
          v265 = v35;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = i;
          v302 = 2048;
          v303 = v265;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_505:
          v291[0] = 0;
          memset(v296, 0, 80);
          v29 = v35;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = v4;
          v302 = 2048;
          v303 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_506:
          v291[0] = 0;
          memset(v296, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = i;
          v302 = 2048;
          v303 = v276;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_507:
          *v299 = 0;
          memset(v296, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v304[0].var0 = 136315906;
          *(&v304[0].var0 + 1) = "operator[]";
          WORD2(v304[0].var1) = 1024;
          *(&v304[0].var1 + 6) = 789;
          *(&v304[1].var0 + 1) = 2048;
          *(&v304[1].var0 + 1) = v29;
          WORD2(v304[1].var1) = 2048;
          *(&v304[1].var1 + 6) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_508:
          v295 = 0;
          v305 = 0u;
          v306 = 0u;
          memset(v304, 0, sizeof(v304));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 789;
          v300 = 2048;
          v301 = v8;
          v302 = 2048;
          v303 = i;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_509:
          v287 = 0;
          v165 = v299;
          v305 = 0u;
          v306 = 0u;
          memset(v304, 0, sizeof(v304));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 789;
          v300 = 2048;
          v301 = v8;
          v302 = 2048;
          v303 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_510:
          v287 = 0;
          v170 = v299;
          v305 = 0u;
          v306 = 0u;
          memset(v304, 0, sizeof(v304));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 789;
          v300 = 2048;
          v301 = v165;
          v302 = 2048;
          v303 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_511:
          v287 = 0;
          v3 = v299;
          v305 = 0u;
          v306 = 0u;
          memset(v304, 0, sizeof(v304));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 789;
          v300 = 2048;
          v301 = v165;
          v302 = 2048;
          v303 = v170;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_512:
          v291[0] = 0;
          memset(v296, 0, 80);
          v266 = v45;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = v4;
          v302 = 2048;
          v303 = v266;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_513:
          re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v13);
          _os_crash();
          __break(1u);
          goto LABEL_514;
        }

        v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) >> 27));
        *(v31 + 8 * v4) ^= (v43 >> 31) ^ v43;
        goto LABEL_68;
      }
    }

    else
    {
      v44 = *(v8 + 24);
      v45 = v278;
      v46 = v280;
      if (v44 == -1)
      {
        re::DynamicString::format("SpecifyScopeLaneParameters index %lu does not specify a texture, texture descriptor, or render layer handle.", v296, v4);
        re::RenderFrame::addError(v7, v296);
        if (*v296 && (v296[8] & 1) != 0)
        {
          (*(**v296 + 40))();
        }

        goto LABEL_68;
      }

      v8 = 0;
      v47 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v44 ^ (v44 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v44 ^ (v44 >> 30))) >> 27));
      v274 ^= v47 ^ (v47 >> 31) ^ (((v47 ^ (v47 >> 31)) << 6) - 0x61C8864680B583E9 + ((v47 ^ (v47 >> 31)) >> 2) + v295);
      i = *(v7 + 529);
      v48 = 1;
      while (1)
      {
        if (i <= v8)
        {
          goto LABEL_493;
        }

        if (*(*(v7 + 531) + 104 * v8 + 24) == v44)
        {
          break;
        }

        v8 = v48;
        _CF = v4 >= v48++;
        if (!_CF)
        {
          goto LABEL_62;
        }
      }

      if (v278 <= v4)
      {
        goto LABEL_515;
      }

      *(v3 + 8 * v4) = v8;
      if (v280 <= v8)
      {
        goto LABEL_516;
      }

      if (v280 <= v4)
      {
        goto LABEL_517;
      }

      *(v29 + 8 * v4) = *(v29 + 8 * v8);
      if (v276 <= v8)
      {
        goto LABEL_518;
      }

      *(v31 + 8 * v8) ^= v295;
LABEL_62:
      if (v278 <= v4)
      {
        goto LABEL_512;
      }

      if (*(v3 + 8 * v4) == v4)
      {
        i = 0xBF58476D1CE4E5B9;
        if (*(v7 + 553) > v44 && (v49 = *(*(v7 + 554) + 32 * v44)) != 0)
        {
          v50 = v49;
          v51 = [v50 protectionOptions];
          v46 = v280;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        if (v46 <= v4)
        {
          goto LABEL_519;
        }

        v53 = *(v29 + 8 * v4) | v51;
        *(v29 + 8 * v4) = v53;
        v54 = *(v7 + 55) & v53;
        *(v29 + 8 * v4) = v54;
        if (v276 <= v4)
        {
          goto LABEL_520;
        }

        v55 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v54 ^ (v54 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v54 ^ (v54 >> 30))) >> 27));
        *(v31 + 8 * v4) ^= (v55 >> 31) ^ v55;

        goto LABEL_68;
      }
    }

    i = 0xBF58476D1CE4E5B9;
LABEL_68:
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v304, &v295);
LABEL_69:
    ++v4;
    v52 = *(v7 + 529);
  }

  while (v4 < v52);
  if (v52)
  {
    v56 = 0;
    v30 = 0;
    v57 = v278;
    v58 = v280;
    v4 = v274;
    v8 = v276;
    do
    {
      if (v276 == v30)
      {
        goto LABEL_494;
      }

      v59 = *(v31 + 8 * v30);
      v60 = *(v7 + 531);
      if (v59)
      {
        *(v60 + v56 + 80) = v59;
        if (v280 <= v30)
        {
          goto LABEL_496;
        }

        v61 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
        v4 ^= (v61 >> 31) ^ v61;
      }

      else
      {
        *(v60 + v56 + 96) = 1;
        if (v278 <= v30)
        {
          goto LABEL_498;
        }

        v2 = *(v3 + 8 * v30);
        if (v276 <= v2)
        {
LABEL_499:
          v291[0] = 0;
          memset(v296, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = v2;
          v302 = 2048;
          v303 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_500:
          v291[0] = 0;
          memset(v296, 0, 80);
          v262 = v58;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = v30;
          v302 = 2048;
          v303 = v262;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_501:
          v291[0] = 0;
          memset(v296, 0, 80);
          v263 = v35;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v299 = 136315906;
          *&v299[4] = "operator[]";
          *&v299[12] = 1024;
          *&v299[14] = 468;
          v300 = 2048;
          v301 = v4;
          v302 = 2048;
          v303 = v263;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_502;
        }

        *(v60 + v56 + 80) = *(v31 + 8 * v2);
        if (v280 <= v30)
        {
          goto LABEL_500;
        }
      }

      *(v60 + v56 + 72) = *(v29 + 8 * v30++);
      v56 += 104;
    }

    while (v52 != v30);
    v12 = v271;
    v8 = v272;
  }

  else
  {
    v12 = v271;
    v8 = v272;
    v4 = v274;
  }

LABEL_88:
  v62.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v304);
  if (v284 && v280)
  {
    (*(*v284 + 40))(v62.n128_f64[0]);
  }

  if (v12 && v278)
  {
    (*(*v12 + 40))(v12, v3, v62);
  }

  if (v287 && __s)
  {
    (*(*v287 + 40))(v62);
  }

  v63 = ((v8 << 6) - 0x61C8864680B583E9 + (v8 >> 2) + v4) ^ v8;
  *(v7 + 41) = v63;
  v64 = *(v7 + 77);
  if (v64)
  {
    v3 = 0;
    v8 = 0;
    v65 = *(v7 + 79);
    v66 = 80 * v64;
    do
    {
      v67 = v65 + v3;
      if (*(v65 + v3 + 16))
      {
        v68 = *(v67 + 24);
      }

      else
      {
        v68 = (v67 + 17);
      }

      v69 = strlen(v68);
      if (v69)
      {
        MurmurHash3_x64_128(v68, v69, 0, v296);
        v4 = (*&v296[8] - 0x61C8864680B583E9 + (*v296 << 6) + (*v296 >> 2)) ^ *v296;
      }

      else
      {
        v4 = 0;
      }

      v70 = v65 + v3;
      if (*(v65 + v3 + 48))
      {
        v71 = *(v70 + 56);
      }

      else
      {
        v71 = (v70 + 49);
      }

      v72 = strlen(v71);
      v73 = 0x9E3779B97F4A7C17;
      if (v72)
      {
        MurmurHash3_x64_128(v71, v72, 0, v296);
        v73 = ((*&v296[8] - 0x61C8864680B583E9 + (*v296 << 6) + (*v296 >> 2)) ^ *v296) - 0x61C8864680B583E9;
      }

      v74 = ((v4 >> 2) + (v4 << 6) + v73) ^ v4;
      v75 = 0xBF58476D1CE4E5B9 * (*(v65 + v3) ^ (*(v65 + v3) >> 30));
      v76 = ((v8 << 6) - 0x61C8864680B583E9 + (v8 >> 2) + ((0x94D049BB133111EBLL * (v75 ^ (v75 >> 27))) ^ ((0x94D049BB133111EBLL * (v75 ^ (v75 >> 27))) >> 31))) ^ v8;
      v8 = (((*(v65 + v3 + 72) - 0x61C8864680B583E9 + (v74 << 6) + (v74 >> 2)) ^ v74) - 0x61C8864680B583E9 + (v76 << 6) + (v76 >> 2)) ^ v76;
      v3 += 80;
    }

    while (v66 != v3);
  }

  else
  {
    v8 = 0;
  }

  v77 = ((v63 << 6) - 0x61C8864680B583E9 + (v63 >> 2) + v8) ^ v63;
  *(v7 + 256) = 1;
  v78 = (*(v7 + 24) - 0x61C8864680B583E9 + (v77 << 6) + (v77 >> 2)) ^ v77;
  *(v7 + 41) = v78;
  v79 = *(v7 + 48);
  if (*(v7 + 449) == 1)
  {
    v78 = v79 & 0xFFFFFFFFFFFFFFFLL;
    *(v7 + 41) = v79 & 0xFFFFFFFFFFFFFFFLL;
  }

  v80 = *v7;
  *v296 = v78;
  v81 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((v80 + 424), v296);
  if (v81 != -1)
  {
    *(*(v80 + 432) + 24 * v81 + 16) = v79;
    CachedGraph = re::RenderGraphManager::getCachedGraph(*v7, *(v7 + 41), *(v7 + 48));
    v83 = re::RenderFrame::fillSpecifyParameterScopeOutputs(*(v7 + 529), *(v7 + 531), CachedGraph[97], CachedGraph[95]);
    v275 = CachedGraph;
    v84 = CachedGraph[100];
    if (v84)
    {
      v85 = CachedGraph[102];
      v277 = &v85[5 * v84];
      do
      {
        v86 = *(v85 + 24);
        if (v86 == 1)
        {
          i = v85[4];
        }

        v281 = *v85;
        v87 = *(v85 + 3);
        v279 = *(v85 + 2);
        v88 = *(v85 + 16);
        memset(v296, 0, 24);
        *&v296[24] = -1;
        memset(&v296[32], 0, 32);
        re::DynamicString::setCapacity(&v296[32], 0);
        v296[65] = 0;
        *&v296[72] = 0;
        *&v296[80] = 0;
        *&v296[88] = 0xFFFFFFFFLL;
        LOBYTE(v297) = 0;
        if (v86)
        {
          v89 = *(v7 + 529);
          if (v89)
          {
            v90 = 0;
            v91 = *(v7 + 531);
            v92 = 104 * v89;
            while (1)
            {
              v93 = v91 + v90;
              if (re::RenderFrame::SpecifyScopeLaneParameters::scopeHash((v91 + v90)) == i)
              {
                break;
              }

              v90 += 104;
              if (v92 == v90)
              {
                goto LABEL_127;
              }
            }

            *v296 = *v93;
            NS::SharedPtr<MTL::Buffer>::operator=(&v296[8], (v93 + 8));
            NS::SharedPtr<MTL::Buffer>::operator=(&v296[16], (v93 + 16));
            *&v296[24] = *(v93 + 24);
            re::DynamicString::operator=(&v296[32], (v93 + 32));
            v94 = *(v93 + 64);
            v95 = *(v93 + 80);
            LOBYTE(v297) = *(v93 + 96);
            *&v296[64] = v94;
            *&v296[80] = v95;
          }
        }

LABEL_127:
        *v296 = v281;
        *&v296[24] = v279;
        *&v296[88] = v87;
        v296[64] = v88;
        v96 = re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((v7 + 4216), v296);
        if (*&v296[32])
        {
          if (v296[40])
          {
            (*(**&v296[32] + 40))(v96);
          }

          memset(&v296[32], 0, 32);
        }

        if (*&v296[16])
        {

          *&v296[16] = 0;
        }

        v83 = *&v296[8];
        if (*&v296[8])
        {
        }

        v85 += 5;
      }

      while (v85 != v277);
    }

    v29 = v273;
    v97 = v275[81];
    v98 = v275[79];
    if (v273)
    {
      v99 = 8;
      goto LABEL_138;
    }

    goto LABEL_140;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v291, 5099, *(v7 + 449) ^ 1);
  *(v7 + 352) = 1;
  if (*(v7 + 72))
  {
    v109 = 0;
    v110 = 0;
    LODWORD(v3) = 0;
    do
    {
      v8 = *(v7 + 74) + 40 * v109;
      re::RenderFrame::setRenderGraphScopes(v7, *v8, *(v8 + 8));
      if (*(v7 + 77) > v110)
      {
        v112 = v110;
        while (1)
        {
          v113 = *(v7 + 79) + 80 * v112;
          if (*v113 > v3)
          {
            break;
          }

          v290 = *(v113 + 72);
          if (*(v113 + 16))
          {
            v114 = *(v113 + 24);
          }

          else
          {
            v114 = (v113 + 17);
          }

          if (*(v113 + 48))
          {
            v115 = *(v113 + 56);
          }

          else
          {
            v115 = (v113 + 49);
          }

          v112 = (v110 + 1);
          v111.n128_f64[0] = re::RenderFrame::pickupScopeLaneInternal(v7, &v290, v114, v115);
          v290 = 0;
          v110 = v112;
          if (*(v7 + 77) <= v112)
          {
            goto LABEL_168;
          }
        }
      }

      v112 = v110;
LABEL_168:
      v116 = *(v8 + 24);
      if (v116)
      {
        v117 = *(v8 + 32);
        v4 = 8 * v116;
        do
        {
          if (*v117)
          {
            (*(**v117 + 24))(*v117, *v8, *(v8 + 8), v7, v111);
          }

          ++v117;
          v4 -= 8;
        }

        while (v4);
      }

      *(v7 + 45) = &str_122;
      *(v7 + 46) = &str_122;
      *(v7 + 47) = 0;
      v109 = (v3 + 1);
      v110 = v112;
      v3 = v109;
    }

    while (*(v7 + 72) > v109);
  }

  re::RenderFrame::fillSpecifyParameterScopeOutputs(*(v7 + 529), *(v7 + 531), *(v7 + 500), *(v7 + 498));
  v2 = *(v7 + 498);
  if (v2)
  {
    v118 = *(v7 + 500);
    v119 = (v2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v120 = xmmword_1E3049640;
    v121 = xmmword_1E3049620;
    v122 = vdupq_n_s64(v2 - 1);
    v123 = vdupq_n_s64(4uLL);
    do
    {
      v124 = vmovn_s64(vcgeq_u64(v122, v121));
      if (vuzp1_s16(v124, *v120.i8).u8[0])
      {
        v118[8] = 0;
      }

      if (vuzp1_s16(v124, *&v120).i8[2])
      {
        v118[42] = 0;
      }

      if (vuzp1_s16(*&v120, vmovn_s64(vcgeq_u64(v122, *&v120))).i32[1])
      {
        v118[76] = 0;
        v118[110] = 0;
      }

      v120 = vaddq_s64(v120, v123);
      v121 = vaddq_s64(v121, v123);
      v118 += 136;
      v119 -= 4;
    }

    while (v119);
    v29 = 0;
    v3 = 136;
    v30 = 144;
    v8 = 1;
    do
    {
      v125 = *(v7 + 500) + 136 * v29;
      v126 = *(v125 + 72);
      if (v126)
      {
        v127 = 0;
        v128 = *(v125 + 56);
        while (1)
        {
          v129 = *v128;
          v128 += 36;
          if (v129 < 0)
          {
            break;
          }

          if (v126 == ++v127)
          {
            LODWORD(v127) = *(v125 + 72);
            break;
          }
        }
      }

      else
      {
        LODWORD(v127) = 0;
      }

      if (v127 != v126)
      {
        do
        {
          v2 = *(v125 + 56) + 144 * v127;
          if (*(v2 + 104) != -1 && *(v2 + 108) != -1 && *re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), (v2 + 96)) == 3)
          {
            *(v2 + 128) = 1;
            v4 = *(v7 + 498);
            if (v4 <= v29)
            {
              goto LABEL_489;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

          v130 = *(v2 + 32);
          if (v130)
          {
            v4 = 0;
            for (i = 0; v130 > i; ++i)
            {
              v131 = *(v2 + 48) + v4;
              if (*(v131 + 12) != *(v2 + 108))
              {
                if (*re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), v131) == 3)
                {
                  *(v2 + 128) = 1;
                  v4 = *(v7 + 498);
                  if (v4 > v29)
                  {
                    ++*(*(v7 + 500) + 136 * v29 + 32);
                    break;
                  }

LABEL_487:
                  *v299 = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v304[0].var0 = 136315906;
                  *(&v304[0].var0 + 1) = "operator[]";
                  WORD2(v304[0].var1) = 1024;
                  *(&v304[0].var1 + 6) = 789;
                  *(&v304[1].var0 + 1) = 2048;
                  *(&v304[1].var0 + 1) = v29;
                  WORD2(v304[1].var1) = 2048;
                  *(&v304[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_488;
                }

                v130 = *(v2 + 32);
              }

              v4 += 16;
            }
          }

          if ((*(v2 + 128) & 1) == 0 && *(v2 + 72))
          {
            v4 = 0;
            i = 0;
            while (*re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), (*(v2 + 88) + v4)) != 3)
            {
              ++i;
              v4 += 16;
              if (*(v2 + 72) <= i)
              {
                goto LABEL_213;
              }
            }

            *(v2 + 128) = 1;
            v2 = *(v7 + 498);
            if (v2 <= v29)
            {
              goto LABEL_491;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

LABEL_213:
          v132 = *(v125 + 72);
          if (v132 <= v127 + 1)
          {
            v133 = v127 + 1;
          }

          else
          {
            v133 = *(v125 + 72);
          }

          while (v133 - 1 != v127)
          {
            LODWORD(v127) = v127 + 1;
            if ((*(*(v125 + 56) + 144 * v127) & 0x80000000) != 0)
            {
              goto LABEL_220;
            }
          }

          LODWORD(v127) = v133;
LABEL_220:
          ;
        }

        while (v127 != v132);
        v2 = *(v7 + 498);
      }

      if (v2 <= v29)
      {
        goto LABEL_497;
      }

      v134 = *(v7 + 500) + 136 * v29;
      v135 = *(v134 + 120);
      if (v135)
      {
        v136 = 0;
        v137 = *(v134 + 104);
        while (1)
        {
          v138 = *v137;
          v137 += 36;
          if (v138 < 0)
          {
            break;
          }

          if (v135 == ++v136)
          {
            LODWORD(v136) = *(v134 + 120);
            break;
          }
        }
      }

      else
      {
        LODWORD(v136) = 0;
      }

      if (v136 != v135)
      {
        do
        {
          v2 = *(v134 + 104) + 144 * v136;
          if (*(v2 + 120) != -1 && *(v2 + 124) != -1 && *re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), (v2 + 112)) == 3)
          {
            *(v2 + 128) = 1;
            v4 = *(v7 + 498);
            if (v4 <= v29)
            {
              goto LABEL_490;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

          v139 = *(v2 + 72);
          if (v139)
          {
            v4 = 0;
            for (i = 0; v139 > i; ++i)
            {
              v140 = *(v2 + 88) + v4;
              if (*(v140 + 12) != *(v2 + 124))
              {
                if (*re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), v140) == 3)
                {
                  *(v2 + 128) = 1;
                  v4 = *(v7 + 498);
                  if (v4 > v29)
                  {
                    ++*(*(v7 + 500) + 136 * v29 + 32);
                    break;
                  }

LABEL_488:
                  *v299 = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v304[0].var0 = 136315906;
                  *(&v304[0].var0 + 1) = "operator[]";
                  WORD2(v304[0].var1) = 1024;
                  *(&v304[0].var1 + 6) = 789;
                  *(&v304[1].var0 + 1) = 2048;
                  *(&v304[1].var0 + 1) = v29;
                  WORD2(v304[1].var1) = 2048;
                  *(&v304[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_489:
                  *v299 = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v304[0].var0 = 136315906;
                  *(&v304[0].var0 + 1) = "operator[]";
                  WORD2(v304[0].var1) = 1024;
                  *(&v304[0].var1 + 6) = 789;
                  *(&v304[1].var0 + 1) = 2048;
                  *(&v304[1].var0 + 1) = v29;
                  WORD2(v304[1].var1) = 2048;
                  *(&v304[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_490:
                  *v299 = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v304[0].var0 = 136315906;
                  *(&v304[0].var0 + 1) = "operator[]";
                  WORD2(v304[0].var1) = 1024;
                  *(&v304[0].var1 + 6) = 789;
                  *(&v304[1].var0 + 1) = 2048;
                  *(&v304[1].var0 + 1) = v29;
                  WORD2(v304[1].var1) = 2048;
                  *(&v304[1].var1 + 6) = v4;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_491:
                  *v299 = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v304[0].var0 = 136315906;
                  *(&v304[0].var0 + 1) = "operator[]";
                  WORD2(v304[0].var1) = 1024;
                  *(&v304[0].var1 + 6) = 789;
                  *(&v304[1].var0 + 1) = 2048;
                  *(&v304[1].var0 + 1) = v29;
                  WORD2(v304[1].var1) = 2048;
                  *(&v304[1].var1 + 6) = v2;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_492:
                  *v299 = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v304[0].var0 = 136315906;
                  *(&v304[0].var0 + 1) = "operator[]";
                  WORD2(v304[0].var1) = 1024;
                  *(&v304[0].var1 + 6) = 789;
                  *(&v304[1].var0 + 1) = 2048;
                  *(&v304[1].var0 + 1) = v29;
                  WORD2(v304[1].var1) = 2048;
                  *(&v304[1].var1 + 6) = v2;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_493:
                  v291[0] = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v299 = 136315906;
                  *&v299[4] = "operator[]";
                  *&v299[12] = 1024;
                  *&v299[14] = 789;
                  v300 = 2048;
                  v301 = v8;
                  v302 = 2048;
                  v303 = i;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_494:
                  v291[0] = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v299 = 136315906;
                  *&v299[4] = "operator[]";
                  *&v299[12] = 1024;
                  *&v299[14] = 468;
                  v300 = 2048;
                  v301 = v8;
                  v302 = 2048;
                  v303 = v8;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_495:
                  v291[0] = 0;
                  memset(v296, 0, 80);
                  v260 = v34;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v299 = 136315906;
                  *&v299[4] = "operator[]";
                  *&v299[12] = 1024;
                  *&v299[14] = 468;
                  v300 = 2048;
                  v301 = v4;
                  v302 = 2048;
                  v303 = v260;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_496:
                  v291[0] = 0;
                  memset(v296, 0, 80);
                  v29 = v58;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v299 = 136315906;
                  *&v299[4] = "operator[]";
                  *&v299[12] = 1024;
                  *&v299[14] = 468;
                  v300 = 2048;
                  v301 = v30;
                  v302 = 2048;
                  v303 = v29;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_497:
                  *v299 = 0;
                  memset(v296, 0, 80);
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v304[0].var0 = 136315906;
                  *(&v304[0].var0 + 1) = "operator[]";
                  WORD2(v304[0].var1) = 1024;
                  *(&v304[0].var1 + 6) = 789;
                  *(&v304[1].var0 + 1) = 2048;
                  *(&v304[1].var0 + 1) = v29;
                  WORD2(v304[1].var1) = 2048;
                  *(&v304[1].var1 + 6) = v2;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_498:
                  v291[0] = 0;
                  memset(v296, 0, 80);
                  v261 = v57;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v299 = 136315906;
                  *&v299[4] = "operator[]";
                  *&v299[12] = 1024;
                  *&v299[14] = 468;
                  v300 = 2048;
                  v301 = v30;
                  v302 = 2048;
                  v303 = v261;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_499;
                }

                v139 = *(v2 + 72);
              }

              v4 += 16;
            }
          }

          if ((*(v2 + 128) & 1) == 0 && *(v2 + 32))
          {
            v4 = 0;
            i = 0;
            while (*re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), (*(v2 + 48) + v4)) != 3)
            {
              ++i;
              v4 += 16;
              if (*(v2 + 32) <= i)
              {
                goto LABEL_252;
              }
            }

            *(v2 + 128) = 1;
            v2 = *(v7 + 498);
            if (v2 <= v29)
            {
              goto LABEL_492;
            }

            ++*(*(v7 + 500) + 136 * v29 + 32);
          }

LABEL_252:
          v141 = *(v134 + 120);
          if (v141 <= v136 + 1)
          {
            v142 = v136 + 1;
          }

          else
          {
            v142 = *(v134 + 120);
          }

          while (v142 - 1 != v136)
          {
            LODWORD(v136) = v136 + 1;
            if ((*(*(v134 + 104) + 144 * v136) & 0x80000000) != 0)
            {
              goto LABEL_259;
            }
          }

          LODWORD(v136) = v142;
LABEL_259:
          ;
        }

        while (v136 != v141);
        v2 = *(v7 + 498);
      }

      ++v29;
    }

    while (v2 > v29);
  }

  v143 = *(v7 + 529);
  if (v143)
  {
    v144 = 0;
    v145 = *(v7 + 531);
    do
    {
      v146 = (v145 + 104 * v144);
      v29 = *(v146 + 22);
      if (v2 >= v29)
      {
        if (v2 <= v29)
        {
          goto LABEL_507;
        }

        v147 = *(v7 + 500) + 136 * v29;
        v148 = *(v147 + 32);
        if (v148)
        {
          v149 = *(v147 + 72);
          if (v149)
          {
            v150 = 0;
            v151 = *(v147 + 56);
            while (1)
            {
              v152 = *v151;
              v151 += 36;
              if (v152 < 0)
              {
                break;
              }

              if (v149 == ++v150)
              {
                LODWORD(v150) = *(v147 + 72);
                break;
              }
            }
          }

          else
          {
            LODWORD(v150) = 0;
          }

          if (v150 != v149)
          {
            v153 = *(v147 + 56);
            v154 = *v146;
            do
            {
              v155 = v153 + 144 * v150;
              if (v154 == *(v155 + 8) && *(v155 + 128) == 1)
              {
                *(v155 + 128) = 0;
                *(v155 + 136) = v144;
                *(v147 + 32) = --v148;
              }

              if (v149 <= v150 + 1)
              {
                v156 = v150 + 1;
              }

              else
              {
                v156 = v149;
              }

              while (v156 - 1 != v150)
              {
                LODWORD(v150) = v150 + 1;
                if ((*(v153 + 144 * v150) & 0x80000000) != 0)
                {
                  goto LABEL_285;
                }
              }

              LODWORD(v150) = v156;
LABEL_285:
              ;
            }

            while (v150 != v149);
          }

          v157 = *(v147 + 120);
          if (v157)
          {
            v158 = 0;
            v159 = *(v147 + 104);
            while (1)
            {
              v160 = *v159;
              v159 += 36;
              if (v160 < 0)
              {
                break;
              }

              if (v157 == ++v158)
              {
                LODWORD(v158) = *(v147 + 120);
                break;
              }
            }
          }

          else
          {
            LODWORD(v158) = 0;
          }

          if (v158 != v157)
          {
            v161 = *(v147 + 104);
            v162 = *v146;
            do
            {
              v163 = v161 + 144 * v158;
              if (v162 == *(v163 + 8) && *(v163 + 128) == 1)
              {
                *(v163 + 128) = 0;
                *(v163 + 136) = v144;
                *(v147 + 32) = --v148;
              }

              if (v157 <= v158 + 1)
              {
                v164 = v158 + 1;
              }

              else
              {
                v164 = v157;
              }

              while (v164 - 1 != v158)
              {
                LODWORD(v158) = v158 + 1;
                if ((*(v161 + 144 * v158) & 0x80000000) != 0)
                {
                  goto LABEL_304;
                }
              }

              LODWORD(v158) = v164;
LABEL_304:
              ;
            }

            while (v158 != v157);
          }
        }
      }

      ++v144;
    }

    while (v144 != v143);
  }

  if (v2)
  {
    v165 = 0;
    v166 = 0;
    i = 257;
    do
    {
      v167 = *(v7 + 500) + 136 * v165;
      if (*(v167 + 32))
      {
        *v296 = 65290051;
        v168 = re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v167 + 40, v296);
        if (v168)
        {
          v169 = v168;
          if (*(v168 + 112) == 1)
          {
            memset(v296, 0, 24);
            *&v296[24] = -1;
            memset(&v296[32], 0, 32);
            re::DynamicString::setCapacity(&v296[32], 0);
            v296[65] = 0;
            *&v296[72] = 0;
            *&v296[80] = 0;
            *&v296[88] = 0xFFFFFFFFLL;
            LOBYTE(v297) = 0;
            v4 = *(v7 + 498);
            if (v4 <= v165)
            {
              goto LABEL_510;
            }

            re::DynamicString::operator=(&v296[32], *(v7 + 500) + 136 * v165);
            *&v296[88] = v166;
            *v296 = 65290051;
            *&v296[24] = 0;
            *&v296[64] = 257;
            re::DynamicArray<re::RenderFrame::SpecifyScopeLaneParameters>::add((v7 + 4216), v296);
            *&v304[0].var0 = *v296;
            v304[0].var1 = __PAIR64__(*&v296[88], *&v296[24]);
            *&v304[1].var0 = *&v296[64];
            LOBYTE(v304[1].var1) = 0;
            re::DynamicArray<re::AutomaticSpecifyScopeParameters>::add((v7 + 4008), v304);
            *(v169 + 112) = 0;
            *(v169 + 15) = *(v7 + 529) - 1;
            v170 = *(v7 + 498);
            if (v170 <= v165)
            {
              goto LABEL_511;
            }

            --*(*(v7 + 500) + 136 * v165 + 32);
            if (*&v296[32])
            {
              if (v296[40])
              {
                (*(**&v296[32] + 40))();
              }

              memset(&v296[32], 0, 32);
            }

            if (*&v296[16])
            {

              *&v296[16] = 0;
            }

            if (*&v296[8])
            {
            }
          }
        }
      }

      v165 = ++v166;
    }

    while (*(v7 + 498) > v166);
  }

  re::RenderFrame::specifyDepthOrStencilLaneWhenColorIsSpecified(v7, re::RenderFrame::kDepthOutputLaneID);
  re::RenderFrame::specifyDepthOrStencilLaneWhenColorIsSpecified(v7, re::RenderFrame::kStencilOutputLaneID);
  v171 = *(v7 + 553);
  __asm { FMOV            V8.2S, #1.0 }

  if (v171)
  {
    v175 = 0;
    v176 = 0;
    i = 1;
    do
    {
      if (v171 > v176 && *(*(v7 + 554) + v175))
      {
        *v296 = 3;
        memset(&v296[12], 255, 24);
        *&v296[8] = 2;
        *&v296[36] = 0;
        v296[40] = 0;
        *&v296[44] = _D8;
        *&v296[52] = xmmword_1E30A3B60;
        *&v296[68] = 0x2000000000;
        memset(&v296[76], 255, 20);
        v297 = 0;
        v298 = 0;
        *v296 = 2;
        v177 = re::StringID::StringID(v299, v304);
        v297 = ((*v299 >> 3) + 0x8756A0D28FEDB54 + (*v299 >> 1 << 6)) ^ (*v299 >> 1);
        if (v299[0])
        {
          if (v299[0])
          {
          }
        }

        *&v299[8] = &str_67;
        *v299 = 0;
        v298 = 1;
        re::RenderFrame::createTarget(v7, v296, v304[0].var1, &v287);
        re::DynamicArray<re::RenderGraphTargetHandle>::add((v7 + 3800), &v287);
        if (*&v304[0].var0)
        {
          if (*&v304[0].var0)
          {
          }
        }
      }

      else
      {
        *v296 = 0;
        *&v296[8] = -1;
        re::DynamicArray<re::RenderGraphTargetHandle>::add((v7 + 3800), v296);
      }

      ++v176;
      v171 = *(v7 + 553);
      v175 += 32;
    }

    while (v171 > v176);
  }

  if (*(v7 + 529))
  {
    v179 = 0;
    i = 0;
    v180 = &off_1E871F520;
    do
    {
      v181 = *(v7 + 531);
      v182 = v181 + v179;
      if ((*(v181 + v179 + 96) & 1) == 0)
      {
        if (*(v182 + 8))
        {
          if (*(v181 + v179 + 88) != -1)
          {
            goto LABEL_345;
          }
        }

        else
        {
          if (*(v181 + v179 + 16))
          {
            _ZF = *(v181 + v179 + 88) == -1;
          }

          else
          {
            _ZF = 1;
          }

          if (!_ZF)
          {
LABEL_345:
            *&v296[4] = 0x200000000;
            memset(&v296[12], 255, 24);
            *&v296[36] = 0;
            v296[40] = 0;
            *&v296[44] = _D8;
            *&v296[52] = xmmword_1E30A3B60;
            *&v296[68] = 0x2000000000;
            memset(&v296[76], 255, 20);
            *v296 = 2;
            v188 = v181 + v179;
            v297 = ((*(v181 + v179 + 80) << 6) + 0x8756A0D28FEDB54 + (*(v181 + v179 + 80) >> 2)) ^ *(v181 + v179 + 80);
            v298 = 1;
            if (i > 0x1F)
            {
              {
              }

              v190 = re::DynamicString::format("SpecifyLaneOp%d", v304, i);
              if (v304[0].var1)
              {
                v191 = *&v304[1].var0;
              }

              else
              {
                v191 = &v304[0].var1 + 1;
              }

              v287 = 0;
              __s = &str_67;
              if (*&v304[0].var0 && (v304[0].var1 & 1) != 0)
              {
                (*(**&v304[0].var0 + 40))();
              }

              v189 = __s;
            }

            else
            {
              v189 = *v180;
              v287 = 2 * *(v180 - 1);
              __s = v189;
            }

            re::RenderFrame::createTarget(v7, v296, v189, v304);
            if (v287)
            {
              if (v287)
              {
              }
            }

            v287 = *(v188 + 80);
            v184 = v7 + 3840;
            v185 = &v287;
            v186 = v304;
            goto LABEL_360;
          }
        }
      }

      v183 = *(v182 + 80);
      *v296 = 0;
      *&v296[8] = -1;
      *&v304[0].var0 = v183;
      v184 = v7 + 3840;
      v185 = v304;
      v186 = v296;
LABEL_360:
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v184, v185, v186);
      ++i;
      v180 += 2;
      v179 += 104;
    }

    while (*(v7 + 529) > i);
  }

  v193 = *(v7 + 498);
  if (v193)
  {
    v29 = *(v7 + 500);
    v282 = v29 + 136 * v193;
    v30 = 144;
    do
    {
      v4 = *(v29 + 72);
      if (v4)
      {
        i = 0;
        v194 = *(v29 + 56);
        do
        {
          v195 = *v194;
          v194 += 36;
          if (v195 < 0)
          {
            goto LABEL_369;
          }

          ++i;
        }

        while (v4 != i);
        i = *(v29 + 72);
      }

      else
      {
        i = 0;
      }

LABEL_369:
      while (i != v4)
      {
        v3 = *(v29 + 56) + 144 * i;
        v2 = *(v3 + 136);
        if (v2 == -1)
        {
          for (j = *(v29 + 24); ; j = *(v210 + 24))
          {
            ScopeOutputIndex = re::RenderFrame::getScopeOutputIndex(v7, j);
            if (ScopeOutputIndex == -1)
            {
              goto LABEL_382;
            }

            v208 = ScopeOutputIndex;
            v209 = *(v7 + 498);
            if (v209 <= ScopeOutputIndex)
            {
              break;
            }

            v210 = *(v7 + 500) + 136 * ScopeOutputIndex;
            if (!re::HashTable<re::WeakStringID,re::RenderGraphScopeOutput::Lane,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(v210 + 40, (v3 + 8)))
            {
              v2 = MEMORY[0x78];
              if (MEMORY[0x78] != -1)
              {
                goto LABEL_371;
              }
            }
          }

          *v299 = 0;
          memset(v296, 0, 80);
          v7 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v304[0].var0 = 136315906;
          *(&v304[0].var0 + 1) = "operator[]";
          WORD2(v304[0].var1) = 1024;
          *(&v304[0].var1 + 6) = 789;
          *(&v304[1].var0 + 1) = 2048;
          *(&v304[1].var0 + 1) = v208;
          WORD2(v304[1].var1) = 2048;
          *(&v304[1].var1 + 6) = v209;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_480:
          re::RenderGraphManager::addGraphToCache(*v7, *(v7 + 41), v208, *(v7 + 48));
          v97 = *(v208 + 648);
          v98 = *(v208 + 632);
          if (v29)
          {
            v99 = 12;
LABEL_138:
            v100 = 4;
LABEL_139:
            ++*(v29 + v100);
            ++*(v29 + v99);
          }

          goto LABEL_140;
        }

LABEL_371:
        v8 = *(v7 + 529);
        if (v8 <= v2)
        {
          goto LABEL_485;
        }

        v196 = *(v7 + 531) + 104 * v2;
        v197 = *(v3 + 32);
        if (v197)
        {
          v198 = *(v3 + 48);
          v199 = 16 * v197;
          do
          {
            v200 = re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), v198);
            if (*(v200 + 88) == -1)
            {
              *(v200 + 88) = *(v196 + 72);
            }

            v198 += 2;
            v199 -= 16;
          }

          while (v199);
        }

        v201 = *(v3 + 72);
        if (v201)
        {
          v202 = *(v3 + 88);
          v203 = 16 * v201;
          do
          {
            v204 = re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), v202);
            if (*(v204 + 32) == -1)
            {
              *(v204 + 32) = *(v196 + 72);
            }

            v202 += 2;
            v203 -= 16;
          }

          while (v203);
        }

LABEL_382:
        LODWORD(v205) = *(v29 + 72);
        if (v205 <= i + 1)
        {
          v205 = (i + 1);
        }

        else
        {
          v205 = v205;
        }

        while (v205 - 1 != i)
        {
          i = (i + 1);
          if ((*(*(v29 + 56) + 144 * i) & 0x80000000) != 0)
          {
            goto LABEL_369;
          }
        }

        i = v205;
      }

      v4 = *(v29 + 120);
      if (v4)
      {
        i = 0;
        v211 = *(v29 + 104);
        do
        {
          v212 = *v211;
          v211 += 36;
          if (v212 < 0)
          {
            goto LABEL_420;
          }

          ++i;
        }

        while (v4 != i);
        i = *(v29 + 120);
      }

      else
      {
        i = 0;
      }

LABEL_420:
      while (i != v4)
      {
        v8 = *(v29 + 104) + 144 * i;
        v2 = *(v8 + 136);
        if (v2 != -1)
        {
          v3 = *(v7 + 529);
          if (v3 <= v2)
          {
            goto LABEL_486;
          }

          v213 = *(v7 + 531) + 104 * v2;
          v214 = *(v8 + 32);
          if (v214)
          {
            v215 = *(v8 + 48);
            v216 = 16 * v214;
            do
            {
              v217 = re::RenderGraphResourceDescriptions::targetDescription((v7 + 3672), v215);
              if (*(v217 + 88) == -1)
              {
                *(v217 + 88) = *(v213 + 72);
              }

              v215 += 2;
              v216 -= 16;
            }

            while (v216);
          }

          v218 = *(v8 + 72);
          if (v218)
          {
            v219 = *(v8 + 88);
            v220 = 16 * v218;
            do
            {
              v221 = re::RenderGraphResourceDescriptions::bufferDescription((v7 + 3672), v219);
              if (*(v221 + 32) == -1)
              {
                *(v221 + 32) = *(v213 + 72);
              }

              v219 += 2;
              v220 -= 16;
            }

            while (v220);
          }
        }

        LODWORD(v222) = *(v29 + 120);
        if (v222 <= i + 1)
        {
          v222 = (i + 1);
        }

        else
        {
          v222 = v222;
        }

        while (v222 - 1 != i)
        {
          i = (i + 1);
          if ((*(*(v29 + 104) + 144 * i) & 0x80000000) != 0)
          {
            goto LABEL_420;
          }
        }

        i = v222;
      }

      v29 += 136;
    }

    while (v29 != v282);
  }

  v3 = v7 + 3376;
  re::RenderGraphBuilder::RenderGraphBuilder(v296, (v7 + 3672), v7 + 3968, v7 + 3376);
  v223 = *(v7 + 456);
  if (v223)
  {
    v224 = *(v7 + 458);
    v225 = 112 * v223;
    do
    {
      re::RenderGraph::setup(v224, v296, (v7 + 32));
      v224 = (v224 + 112);
      v225 -= 112;
    }

    while (v225);
  }

  CompiledGraph = re::RenderGraphBuilder::createCompiledGraph(v296, v7 + 3632);
  v208 = CompiledGraph;
  if ((CompiledGraph + 784) != (v7 + 4008))
  {
    v228 = *(CompiledGraph + 784);
    v229 = *(v7 + 501);
    if (v228)
    {
      v230 = v229 == 0;
    }

    else
    {
      v230 = 1;
    }

    if (!v230 && v228 != v229)
    {
      goto LABEL_523;
    }

    *(CompiledGraph + 784) = v229;
    *(v7 + 501) = v228;
    v232 = *(CompiledGraph + 792);
    *(CompiledGraph + 792) = *(v7 + 502);
    *(v7 + 502) = v232;
    v233 = *(CompiledGraph + 800);
    *(CompiledGraph + 800) = *(v7 + 503);
    *(v7 + 503) = v233;
    v234 = *(CompiledGraph + 816);
    *(CompiledGraph + 816) = *(v7 + 505);
    *(v7 + 505) = v234;
    ++*(v7 + 1008);
    ++*(CompiledGraph + 808);
  }

  v283 = (v7 + 3376);
  v235 = *(v7 + 506);
  v236 = *(CompiledGraph + 824);
  if (v236 != v235)
  {
    if (v235)
    {
      v237 = (v235 + 8);
      v236 = *(v208 + 824);
    }

    if (v236)
    {
    }

    *(v208 + 824) = v235;
  }

  v238 = *(v7 + 529);
  if (v238)
  {
    v239 = 0;
    v240 = 0;
    v242 = *(v208 + 320);
    v241 = *(v208 + 328);
    v4 = 136;
    do
    {
      v243 = *(v7 + 531);
      v8 = *(v243 + v239 + 88);
      if (v8 != -1)
      {
        i = *(v208 + 760);
        if (i <= v8)
        {
          goto LABEL_508;
        }

        v244 = *(v208 + 776) + 136 * v8;
        v3 = v243 + v239;
        v294 = *(v243 + v239 + 80);
        if (*(v243 + v239 + 8) || *(v3 + 16))
        {
          v293 = *v3;
          v245 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v241, &v294);
          v287 = *v245;
          __s = *(v245 + 8);
          re::RenderFrame::specifyScopeLaneInternal(&v293, &v287, v244, *(v3 + 64), v208);
          v293 = 0;
        }

        else
        {
          i = *(v243 + v239 + 24);
          if (i != -1 && *(v7 + 553) > i && *(*(v7 + 554) + 32 * i))
          {
            v292 = *(v243 + v239);
            v3 = *(v242 + 16);
            if (v3 <= i)
            {
              goto LABEL_521;
            }

            v246 = (*(v242 + 32) + 16 * i);
            v284 = *v246;
            v285 = v246[1];
            re::RenderFrame::specifyScopeLaneInternal(&v292, &v284, v244, *(v243 + v239 + 64), v208);
            v292 = 0;
          }
        }

        v238 = *(v7 + 529);
      }

      ++v240;
      v239 += 104;
    }

    while (v238 > v240);
    if (v238)
    {
      v247 = 0;
      v248 = 0;
      v250 = *(v208 + 320);
      v249 = *(v208 + 328);
      v4 = 136;
      do
      {
        v251 = *(v7 + 531);
        v252 = (v251 + v247);
        v8 = *(v251 + v247 + 88);
        if (v8 != -1)
        {
          v3 = *(v208 + 760);
          if (v3 <= v8)
          {
            goto LABEL_509;
          }

          v253 = *(v208 + 776) + 136 * v8;
          v284 = *(v251 + v247 + 80);
          if (*(v251 + v247 + 8) || *(v251 + v247 + 16))
          {
            v295 = *v252;
            re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v249, &v284);
            re::RenderFrame::makeRenderGraphManagedInternal(&v295, v253, v208);
            v295 = 0;
          }

          else
          {
            i = *(v251 + v247 + 24);
            if (i != -1 && *(v7 + 553) > i && *(*(v7 + 554) + 32 * i))
            {
              v294 = *v252;
              v3 = *(v250 + 16);
              if (v3 <= i)
              {
                goto LABEL_522;
              }

              re::RenderFrame::makeRenderGraphManagedInternal(&v294, v253, v208);
              v294 = 0;
            }
          }

          v238 = *(v7 + 529);
        }

        ++v248;
        v247 += 104;
      }

      while (v238 > v248);
    }
  }

  re::RenderGraphResourceDescriptions::resolveResourceSources(v208);
  *(v7 + 352) = 0;
  re::RenderGraphBuilder::~RenderGraphBuilder(v296);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v291);
  re::RenderGraphProcessorManager::process(*v7, v208, v7 + 427);
  v29 = v273;
  if (v283 != (v208 + 576))
  {
    v255 = *v283;
    v256 = *(v208 + 576);
    if (!*v283 || !v256 || v255 == v256)
    {
      *(v7 + 422) = v256;
      *(v208 + 576) = v255;
      v257 = *(v7 + 423);
      *(v7 + 423) = *(v208 + 584);
      *(v208 + 584) = v257;
      v258 = *(v7 + 424);
      *(v7 + 424) = *(v208 + 592);
      *(v208 + 592) = v258;
      v259 = *(v7 + 426);
      *(v7 + 426) = *(v208 + 608);
      *(v208 + 608) = v259;
      ++*(v208 + 600);
      ++*(v7 + 850);
      goto LABEL_476;
    }

LABEL_524:
    re::internal::assertLog(4, v254, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
  }

LABEL_476:
  re::RenderGraphCompiled::validateAttachmentsDuringGraphBuild(v208, *(v7 + 49));
  if (!*(v7 + 424))
  {
    goto LABEL_480;
  }

  re::internal::destroyPersistent<re::RenderGraphCompiled>("buildOrRetainCachedGraph", 1017, v208);
  if (v273)
  {
    v98 = 0;
    v97 = 0;
    ++*(v273 + 1);
    v99 = 16;
    v100 = 12;
    goto LABEL_139;
  }

  v97 = 0;
  v98 = 0;
LABEL_140:
  if (*(v7 + 1127))
  {
    v101 = *(v7 + 1126);
    if (v101)
    {
      memset_pattern16(*(v7 + 561), &unk_1E304C660, 4 * v101);
    }

    if (*(v7 + 1128))
    {
      v102 = 0;
      do
      {
        re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::free(v7 + 4480, v102++);
      }

      while (v102 < *(v7 + 1128));
    }

    *(v7 + 1129) = 0x7FFFFFFF;
    *(v7 + 4508) = 0;
    ++*(v7 + 1130);
  }

  if (v98)
  {
    v103 = v97 + 112 * v98;
    do
    {
      v104 = *(v97 + 16);
      if (v104)
      {
        v105 = *(v97 + 32);
        v106 = 8 * v104;
        do
        {
          v107 = *v105++;
          (*(*v107 + 32))(v107, v7 + 4480);
          v106 -= 8;
        }

        while (v106);
      }

      v97 += 112;
    }

    while (v97 != v103);
  }

  return re::RenderGraphManager::deleteRemovedProviders(*v7);
}