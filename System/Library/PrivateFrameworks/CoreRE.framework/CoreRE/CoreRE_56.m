uint64_t std::__copy_impl::operator()[abi:nn200100]<re::VideoMetalTextures const*,re::VideoMetalTextures const*,re::VideoMetalTextures*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v7;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      *(a4 + 73) = *(v5 + 73);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a4 + 96, (a4 + 96), *(v5 + 96));
      for (i = 104; i != 128; i += 8)
      {
        objc_storeStrong((a4 + i), *(v5 + i));
      }

      v5 += 128;
      a4 += 128;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::DynamicInlineArray<NS::SharedPtr<MTL::Texture>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v11 = a2 + 2;
    v12 = a1 + 2;
    if (v4)
    {
      v13 = 8 * v4;
      v14 = (a1 + 2);
      v15 = (a2 + 2);
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v14++, v15++);
        v13 -= 8;
      }

      while (v13);
      v4 = *a1;
    }

    if (v4 != v3)
    {
      v16 = &v11[v4];
      v17 = &v12[v4];
      v18 = 8 * v3 - 8 * v4;
      do
      {
        v19 = *v16++;
        *v17++ = v19;
        v18 -= 8;
      }

      while (v18);
    }
  }

  else
  {
    v5 = a1 + 2;
    if (v3)
    {
      v6 = (a2 + 2);
      v7 = 8 * v3;
      v8 = (a1 + 2);
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v8++, v6++);
        v7 -= 8;
      }

      while (v7);
      v4 = *a1;
    }

    if (v3 != v4)
    {
      v9 = &v5[v3];
      v10 = 8 * v4 - 8 * v3;
      do
      {
        if (*v9)
        {

          *v9 = 0;
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  *a1 = v3;
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v12 = a2 + 2;
    v13 = a1 + 2;
    if (v4)
    {
      v14 = 8 * v4;
      v15 = (a1 + 2);
      v16 = (a2 + 2);
      do
      {
        v17 = *v16++;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v15, v15, v17);
        ++v15;
        v14 -= 8;
      }

      while (v14);
      v4 = *a1;
    }

    if (v4 != v3)
    {
      v18 = &v12[v4];
      v19 = &v13[v4];
      v20 = v19;
      v21 = 8 * v3 - 8 * v4;
      do
      {
        *v20++ = 0;
        v22 = *v18++;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v19, v19, v22);
        v19 = v20;
        v21 -= 8;
      }

      while (v21);
    }
  }

  else
  {
    v5 = a1 + 2;
    if (v3)
    {
      v6 = (a2 + 2);
      v7 = 8 * v3;
      v8 = (a1 + 2);
      do
      {
        v9 = *v6++;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v8, v8, v9);
        ++v8;
        v7 -= 8;
      }

      while (v7);
      v4 = *a1;
    }

    if (v3 != v4)
    {
      v10 = &v5[v3];
      v11 = 8 * v4 - 8 * v3;
      do
      {
        if (*v10)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v10);
        }

        *v10++ = 0;
        v11 -= 8;
      }

      while (v11);
    }
  }

  *a1 = v3;
}

void *re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::copy(void *result, void *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *result;
  v5 = *a2 - *result;
  if (*a2 >= *result)
  {
    v6 = (a2 + 2);
    v7 = &v6[32 * v4];
    v8 = result + 2;
    if (v4)
    {
      memmove(result + 2, v6, 32 * v4 - 7);
    }

    result = memcpy(&v8[4 * v4], v7, 32 * v5);
  }

  else if (v3)
  {
    result = memmove(result + 2, a2 + 2, 32 * v3 - 7);
  }

  *v2 = v3;
  return result;
}

void re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v5 = a1 + 2;
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram>*>(&v13, a2 + 2, &v3[2 * *a1], v5);
    v8 = *a1;
    if (*a1 != v4)
    {
      v9 = &v3[2 * v8];
      v10 = &v5[2 * v8];
      do
      {
        v11 = v9[1];
        *v10 = *v9;
        v10[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v9 += 2;
        v10 += 2;
      }

      while (v9 != &v3[2 * v4]);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram>*>(&v12, a2 + 2, &v3[2 * v4], v5);
    if (v4 != *a1)
    {
      v6 = 16 * *a1 - 16 * v4;
      v7 = &a1[2 * v4 + 3];
      do
      {
        if (*v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*v7);
        }

        v7 += 2;
        v6 -= 16;
      }

      while (v6);
    }
  }

  *a1 = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram> const*,std::shared_ptr<re::VideoHistogram>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 1uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 16 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_weak(*v3);
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

void re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v12 = a2 + 2;
    v13 = a1 + 2;
    if (v4)
    {
      v14 = 8 * v4;
      v15 = (a1 + 2);
      v16 = (a2 + 2);
      do
      {
        v17 = *v16++;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v15, v15, v17);
        ++v15;
        v14 -= 8;
      }

      while (v14);
      v4 = *a1;
    }

    if (v4 != v3)
    {
      v18 = &v12[v4];
      v19 = &v13[v4];
      v20 = v19;
      v21 = 8 * v3 - 8 * v4;
      do
      {
        *v20++ = 0;
        v22 = *v18++;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v19, v19, v22);
        v19 = v20;
        v21 -= 8;
      }

      while (v21);
    }
  }

  else
  {
    v5 = a1 + 2;
    if (v3)
    {
      v6 = (a2 + 2);
      v7 = 8 * v3;
      v8 = (a1 + 2);
      do
      {
        v9 = *v6++;
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v8, v8, v9);
        ++v8;
        v7 -= 8;
      }

      while (v7);
      v4 = *a1;
    }

    if (v3 != v4)
    {
      v10 = &v5[v3];
      v11 = 8 * v4 - 8 * v3;
      do
      {
        if (*v10)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v10);
        }

        *v10++ = 0;
        v11 -= 8;
      }

      while (v11);
    }
  }

  *a1 = v3;
}

void std::__shared_ptr_emplace<re::VideoPSEProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CC4BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void *re::RigRuntimeData::clear(re::RigRuntimeData *this)
{
  *(this + 1) = -1;
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 2);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
  re::FixedArray<re::RigEvaluation>::deinit(this + 8);
  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 25);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 28);

  return re::FixedArray<re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>>::deinit(this + 34);
}

void *re::FixedArray<re::RigEvaluation>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 1528 * v2;
      do
      {
        re::DynamicArray<re::internal::RigIKCall>::deinit(v5 + v4 + 1488);
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1464));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1440));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1416));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1392));
        re::FixedArray<re::FixedArray<unsigned int>>::deinit((v5 + v4 + 1368));
        re::FixedArray<re::FixedArray<unsigned int>>::deinit((v5 + v4 + 1344));
        re::FixedArray<re::internal::RigIKCall>::deinit((v5 + v4 + 1320));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1296));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1272));
        re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v5 + v4 + 1224));
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v5 + v4 + 1176));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 1152));
        re::RigDefinition::~RigDefinition((v5 + v4 + 8));
        v4 += 1528;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v4);
        v4 += 40;
        v5 -= 40;
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

void *re::FixedArray<re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v4);
        v4 += 40;
        v5 -= 40;
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

void re::RigRuntimeData::update(re::RigRuntimeData *this, const re::RigAsset *a2, const re::MeshAsset *a3, const re::MeshNameMap *a4, uint64_t a5)
{
  if (*(this + 1) != a5)
  {
    if (!*this)
    {
      *this = *a2;
    }

    re::RigRuntimeData::resetRigEvaluations(this, a2);
    re::RigRuntimeData::setRigEntryHandles(this, a2, a3, a4);
    *(this + 1) = a5;
    *(this + 296) = 0;
  }
}

void re::RigRuntimeData::resetRigEvaluations(re::RigRuntimeData *this, const re::RigAsset *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  re::RigRuntimeData::clear(this);
  v4 = *(a2 + 2);
  v5 = *this;
  buf[0] = -1;
  re::FixedArray<unsigned long>::init<unsigned long const&>(this + 5, v5, v4, buf);
  v7 = *this;
  *(this + 8) = *this;
  *(this + 9) = v4;
  if (v4)
  {
    if (v4 < 0x2AE3DA78A0D674)
    {
      v8 = (*(*v7 + 32))(v7, 1528 * v4, 8);
      *(this + 10) = v8;
      if (!v8)
      {
        goto LABEL_33;
      }

      v10 = v8;
      v11 = v4 - 1;
      if (v4 != 1)
      {
        do
        {
          bzero(v10, 0x5F0uLL);
          *(v10 + 1212) = 0x7FFFFFFF;
          *(v10 + 1224) = 0u;
          *(v10 + 1240) = 0u;
          *(v10 + 1256) = 0x7FFFFFFF00000000;
          v12 = v10 + 1272;
          *(v10 + 1520) = 0;
          *(v10 + 1272) = 0u;
          *(v10 + 1288) = 0u;
          *(v10 + 1304) = 0u;
          *(v10 + 1320) = 0u;
          *(v10 + 1336) = 0u;
          *(v10 + 1352) = 0u;
          *(v10 + 1368) = 0u;
          *(v10 + 1384) = 0u;
          *(v10 + 1400) = 0u;
          *(v10 + 1416) = 0u;
          *(v10 + 1432) = 0u;
          *(v10 + 1448) = 0u;
          *(v10 + 1464) = 0u;
          *(v10 + 1480) = 0u;
          *(v10 + 1512) = 0;
          v10 += 1528;
          *(v12 + 224) = 0u;
          --v11;
        }

        while (v11);
      }

      bzero(v10, 0x5F0uLL);
      v13 = 0;
      *(v10 + 1212) = 0x7FFFFFFF;
      *(v10 + 1224) = 0u;
      *(v10 + 1240) = 0u;
      *(v10 + 1256) = 0x7FFFFFFF00000000;
      *(v10 + 1520) = 0;
      *(v10 + 1272) = 0u;
      *(v10 + 1288) = 0u;
      *(v10 + 1304) = 0u;
      *(v10 + 1320) = 0u;
      *(v10 + 1336) = 0u;
      *(v10 + 1352) = 0u;
      *(v10 + 1368) = 0u;
      *(v10 + 1384) = 0u;
      *(v10 + 1400) = 0u;
      *(v10 + 1416) = 0u;
      *(v10 + 1432) = 0u;
      *(v10 + 1448) = 0u;
      *(v10 + 1464) = 0u;
      *(v10 + 1480) = 0u;
      *(v10 + 1496) = 0u;
      *(v10 + 1512) = 0;
      while (1)
      {
        v14 = *(a2 + 2);
        if (v14 <= v13)
        {
          break;
        }

        v14 = *(this + 9);
        if (v14 <= v13)
        {
          goto LABEL_30;
        }

        v15 = (*(a2 + 4) + 1144 * v13);
        v16 = re::RigEvaluation::init((*(this + 10) + 1528 * v13), *this, v15, &v23);
        if (v23)
        {
          if (v13 < *(a2 + 7))
          {
            v17 = *(v15 + 140);
            if (v17)
            {
              v18 = 0;
              v19 = (*(a2 + 9) + 16 * v13);
              v20 = *(v15 + 142);
              while (!re::StringID::operator==(v20, v19))
              {
                ++v18;
                v20 += 4;
                if (v17 == v18)
                {
                  goto LABEL_17;
                }
              }

              v14 = *(this + 6);
              if (v14 <= v13)
              {
                goto LABEL_31;
              }

              *(*(this + 7) + 8 * v13) = v18;
            }
          }
        }

        else
        {
          v21 = *re::assetsLogObjects(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = &v28[13];
            if (v28[12])
            {
              v22 = v29;
            }

            LODWORD(buf[0]) = 134218242;
            *(buf + 4) = v13;
            WORD2(buf[1]) = 2080;
            *(&buf[1] + 6) = v22;
            _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Rig entry %zu has an invalid rig definition: %s.", buf, 0x16u);
          }
        }

LABEL_17:
        if (v23 & 1) == 0 && *&v28[4] && (v28[12])
        {
          (*(**&v28[4] + 40))();
        }

        if (++v13 == v4)
        {
          return;
        }
      }

      *v30 = 0;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 797;
      v27 = 2048;
      *v28 = v13;
      *&v28[8] = 2048;
      *&v28[10] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      v31 = 1024;
      v32 = 468;
      v33 = 2048;
      v34 = v13;
      v35 = 2048;
      v36 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      v31 = 1024;
      v32 = 468;
      v33 = 2048;
      v34 = v13;
      v35 = 2048;
      v36 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 1528, v4);
    _os_crash();
    __break(1u);
LABEL_33:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }
}

void re::RigRuntimeData::setRigEntryHandles(re::RigRuntimeData *this, const re::RigAsset *a2, const re::MeshAsset *a3, const re::MeshNameMap *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(this + 2, *this, *(a4 + 54));
  v7 = *(a2 + 12);
  if (v7)
  {
    v8 = 0;
    v28 = *(a2 + 12);
    v29 = a2;
    v30 = a3;
    do
    {
      v9 = *(a2 + 12);
      if (v9 <= v8)
      {
        goto LABEL_33;
      }

      v10 = *(a2 + 14) + (v8 << 6);
      v11 = *(v10 + 56);
      if (*(this + 9) > v11 && *(*(this + 10) + 1528 * v11 + 1176))
      {
        v12 = *(a3 + 156);
        if (v12 < 2)
        {
LABEL_10:
          v13 = 0;
        }

        else
        {
          v13 = 1;
          while (1)
          {
            v14 = re::MeshAsset::skeletonAtIndex(a3, v13);
            if (re::StringID::operator==(v14, (v10 + 40)))
            {
              break;
            }

            if (v12 == ++v13)
            {
              goto LABEL_10;
            }
          }
        }

        re::MeshNameMap::meshInstancePartsForIdentifier(a4, v10, buf);
        *v35 = a3;
        *&v35[8] = a4;
        *&v35[16] = *buf;
        v38 = v48;
        v39 = 0;
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v35[24], &buf[8]);
        v15 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[8]);
        v16 = *&v35[16];
        if (*&v35[16])
        {
          v32 = v35;
          v33 = 0;
          goto LABEL_16;
        }

        v17 = *re::assetsLogObjects(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(v10 + 16);
          *buf = 134218242;
          *&buf[4] = v8;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Mesh rig %zu did not apply to any known mesh: %s.", buf, 0x16u);
        }

        v16 = *&v35[16];
        v32 = v35;
        v33 = 0;
        if (*&v35[16])
        {
          do
          {
LABEL_16:
            v19 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(&v32);
            *buf = v33;
            v20 = (*(*v32[7] + 16))(v32[7], buf);
            *buf = v33;
            v21 = (*(*v32[7] + 16))(v32[7], buf);
            v22 = *(v19 + 224);
            if (v22)
            {
              if (*(v22 + 8) > WORD2(v21))
              {
                v9 = WORD2(v21);
                if (v13 == *(*(v22 + 16) + 88 * WORD2(v21) + 4))
                {
                  v23 = v20;
                  v24 = *(this + 3);
                  if (v24 <= v20)
                  {
                    v34 = 0;
                    v49 = 0u;
                    v50 = 0u;
                    v48 = 0u;
                    memset(buf, 0, sizeof(buf));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v40 = 136315906;
                    *&v40[4] = "operator[]";
                    v41 = 1024;
                    v42 = 468;
                    v43 = 2048;
                    v44 = v20;
                    v45 = 2048;
                    v46 = v24;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_31:
                    v34 = 0;
                    v49 = 0u;
                    v50 = 0u;
                    v48 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v9 = MEMORY[0x1E69E9C10];
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v40 = 136315906;
                    *&v40[4] = "operator[]";
                    v41 = 1024;
                    v42 = 468;
                    v43 = 2048;
                    v44 = v20;
                    v45 = 2048;
                    v46 = v24;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_32:
                    v34 = 0;
                    v49 = 0u;
                    v50 = 0u;
                    v48 = 0u;
                    memset(buf, 0, sizeof(buf));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v40 = 136315906;
                    *&v40[4] = "operator[]";
                    v41 = 1024;
                    v42 = 468;
                    v43 = 2048;
                    v44 = v9;
                    v45 = 2048;
                    v46 = v23;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_33:
                    *v40 = 0;
                    v49 = 0u;
                    v50 = 0u;
                    v48 = 0u;
                    memset(buf, 0, sizeof(buf));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v35 = 136315906;
                    *&v35[4] = "operator[]";
                    *&v35[12] = 1024;
                    *&v35[14] = 797;
                    *&v35[18] = 2048;
                    *&v35[20] = v8;
                    v36 = 2048;
                    v37 = v9;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

                  v25 = (*(this + 4) + 24 * v20);
                  if (!*v25)
                  {
                    re::FixedArray<unsigned int>::init<unsigned int const&>(v25, *this, *(v19 + 56), &re::RigRuntimeData::kInvalidRigDefinitionIndex);
                    v24 = *(this + 3);
                  }

                  if (v24 <= v20)
                  {
                    goto LABEL_31;
                  }

                  v26 = *(this + 4) + 24 * v20;
                  v23 = *(v26 + 8);
                  if (v23 <= v9)
                  {
                    goto LABEL_32;
                  }

                  *(*(v26 + 16) + 4 * v9) = *(v10 + 56);
                }
              }
            }

            v27 = ++v33;
          }

          while (v32 != v35 || v27 != v16);
        }

        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v35[24]);
        a2 = v29;
        a3 = v30;
        v7 = v28;
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void re::RigRuntimeData::update(re::Allocator **this, uint64_t a2, re::MeshAsset *a3, uint64_t a4, uint64_t a5, re *a6, re::Allocator *a7, re::Allocator *a8)
{
  v115 = *MEMORY[0x1E69E9840];
  if (this[1] != a8)
  {
    v11 = this;
    v12 = *this;
    if (!*this)
    {
      v12 = *(a2 + 120);
      *this = v12;
    }

    if (!this[12])
    {
      this[24] = a7;
      re::RigEnvironment::init((this + 12), v12);
    }

    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::removeLast(v11 + 96);
    re::RigEnvironment::pushEnvironmentScope((v11 + 96));
    *(v11 + 152) = a5;
    re::makeBindNode(a6, v98);
    if ((v11 + 160) != v98)
    {
      re::BindNode::copy((v11 + 160), v98);
    }

    re::BindNode::deinit(v98);
    *(v11 + 88) = a2 + 120;
    v92 = a2;
    if (*(a2 + 136))
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v92[2];
        if (v17 <= v16)
        {
          goto LABEL_121;
        }

        re::StringID::StringID(&v95, (v92[4] + v14));
        v17 = v92[17];
        if (v17 <= v16)
        {
          goto LABEL_122;
        }

        re::RigEnvironment::insertRigGraphNode((v11 + 96), &v95, (v92[19] + v15), v104);
        if ((v104[0] & 1) == 0)
        {
          v19 = *re::assetsLogObjects(v18);
          v18 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (v104[32])
            {
              v20 = v105;
            }

            else
            {
              v20 = &v104[33];
            }

            *buf = 134218754;
            *&buf[4] = v16;
            *&buf[12] = 2080;
            *&buf[14] = v96;
            *&buf[22] = 1024;
            *&buf[24] = *&v104[8];
            *&buf[28] = 2080;
            *&buf[30] = v20;
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Could not insert rig graph node %zu (%s). [%d] %s", buf, 0x26u);
          }
        }

        if ((v104[0] & 1) == 0)
        {
          v18 = *&v104[24];
          if (*&v104[24])
          {
            if (v104[32])
            {
              v18 = (*(**&v104[24] + 40))();
            }
          }
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        ++v16;
        v15 += 200;
        v14 += 216;
      }

      while (v16 < *(*(v11 + 88) + 16));
    }

    re::RigRuntimeData::clear(v11);
    re::FixedArray<re::FixedArray<unsigned int>>::init<>((v11 + 16), *v11, *(a4 + 216));
    v21 = v92;
    v22 = v92[7];
    *(v11 + 208) = v22;
    if (v22)
    {
      if (v22 > 0x666666666666666)
      {
LABEL_125:
        re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v22);
        _os_crash();
        __break(1u);
        goto LABEL_126;
      }

      *(v11 + 216) = v24;
      if (!v24)
      {
LABEL_126:
        re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
        goto LABEL_127;
      }

      v27 = v22 - 1;
      if (v22 != 1)
      {
        do
        {
          *(v24 + 32) = 0;
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          *v24 = 0;
          *(v24 + 24) = 0;
          v24 += 40;
          --v27;
        }

        while (v27);
      }

      *(v24 + 32) = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      *v24 = 0;
      *(v24 + 24) = 0;
    }

    v94 = v11;
    if (v22)
    {
      v13 = 0;
      i = buf;
      v87 = v22;
      while (1)
      {
        v17 = *(v21 + 56);
        if (v17 <= v13)
        {
          goto LABEL_124;
        }

        v30 = *(v21 + 72) + (v13 << 6);
        *buf = v13;
        v31 = *re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(v11 + 224, (v30 + 56), buf);
        v17 = *(a3 + 156);
        if (v17 < 2)
        {
          v32 = 0;
        }

        else
        {
          v32 = 1;
          while (1)
          {
            v33 = *(re::MeshAsset::skeletonAtIndex(a3, v32) + 8);
            v34 = strlen(v33);
            v35 = *(v30 + 48);
            v36 = strlen(v35);
            v104[0] = 0;
            if (&v33[v34] != std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(v33, &v33[v34], v35, &v35[v36]))
            {
              break;
            }

            if (v17 == ++v32)
            {
              v32 = 0;
              break;
            }
          }
        }

        re::MeshNameMap::meshInstancePartsForIdentifier(a4, v30, buf);
        *v104 = a3;
        *&v104[8] = a4;
        *&v104[16] = *buf;
        v106 = *&buf[32];
        v107 = 0;
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v104[24], &buf[8]);
        v37 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[8]);
        v38 = *&v104[16];
        v90 = v30;
        v91 = v31;
        v89 = v13;
        if (*&v104[16])
        {
          v95 = v104;
          v96 = 0;
          break;
        }

        v39 = *re::assetsLogObjects(v37);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(v30 + 16);
          *buf = 134218242;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = v40;
          _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Mesh rig graph %zu did not apply to any known mesh: %s.", buf, 0x16u);
        }

        v38 = *&v104[16];
        v95 = v104;
        v96 = 0;
        if (*&v104[16])
        {
          break;
        }

LABEL_72:
        v28 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v104[24]);
        v13 = v89 + 1;
        v11 = v94;
        v21 = v92;
        if (v89 + 1 == v87)
        {
          goto LABEL_73;
        }
      }

      while (1)
      {
        v41 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(&v95);
        *buf = v96;
        v42 = (*(*v95[7] + 16))(v95[7], buf);
        *buf = v96;
        v43 = (*(*v95[7] + 16))(v95[7], buf);
        v44 = *(v41 + 224);
        if (v44)
        {
          if (*(v44 + 8) > WORD2(v43))
          {
            v21 = WORD2(v43);
            v45 = *(*(v44 + 16) + 88 * WORD2(v43) + 4);
            if (v32 == v45 && *(a3 + 156) > v45)
            {
              v16 = v42;
              v11 = v94[3];
              if (v11 <= v42)
              {
                goto LABEL_117;
              }

              v17 = 24;
              v47 = (v94[4] + 24 * v42);
              if (!*v47)
              {
                re::FixedArray<unsigned int>::init<unsigned int const&>(v47, *v94, *(v41 + 56), &re::RigRuntimeData::kInvalidRigDefinitionIndex);
                v11 = v94[3];
              }

              if (v11 <= v42)
              {
                goto LABEL_118;
              }

              v48 = v94[4] + 24 * v42;
              v17 = *(v48 + 8);
              if (v17 <= v21)
              {
                goto LABEL_119;
              }

              v11 = v91;
              *(*(v48 + 16) + 4 * v21) = *(v90 + 56);
              v17 = v94[26];
              if (v17 <= v91)
              {
                goto LABEL_120;
              }

              v49 = v94[27] + 40 * v91;
              if (!*v49)
              {
                *v49 = *v94;
                re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v49, 0);
                ++*(v49 + 24);
                v50 = re::MeshAsset::skeletonAtIndex(a3, v32);
                v17 = v94[26];
                v11 = v91;
                if (v17 <= v91)
                {
                  goto LABEL_123;
                }

                v52 = v50;
                v21 = *(v50 + 24);
                if (*(v50 + 24))
                {
                  break;
                }
              }
            }
          }
        }

LABEL_70:
        v63 = ++v96;
        if (v95 == v104 && v63 == v38)
        {
          goto LABEL_72;
        }
      }

      v13 = 0;
      v11 = 0;
      v53 = (v94[27] + 40 * v91);
      v17 = 8;
      while (1)
      {
        v54 = v52[3];
        if (v54 <= v11)
        {
          break;
        }

        v16 = *(v52[4] + v17);
        v55 = strlen(v16);
        *buf = v16;
        *&buf[8] = v55;
        v57 = v52[6];
        if (v57 <= v11)
        {
          goto LABEL_113;
        }

        v58 = *(v52[7] + 4 * v11);
        if (v58 == -1)
        {
          v58 = -1;
        }

        *&buf[16] = v58;
        v59 = v52[12];
        if (v59 <= v11)
        {
          goto LABEL_114;
        }

        v60 = (v52[13] + v13);
        buf[32] = 1;
        v62 = v60[1];
        v61 = v60[2];
        v100 = *v60;
        v101 = v62;
        v102 = v61;
        v103 = 0;
        re::DynamicArray<re::RigHierarchyJointDescription>::add(v53, buf);
        ++v11;
        v13 += 48;
        v17 += 16;
        if (v21 == v11)
        {
          goto LABEL_70;
        }
      }

      re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v54);
      _os_crash();
      __break(1u);
LABEL_113:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v57);
      _os_crash();
      __break(1u);
LABEL_114:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v59);
      _os_crash();
      __break(1u);
LABEL_115:
      *v108 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 797;
      *&v104[18] = 2048;
      *&v104[20] = i;
      *&v104[28] = 2048;
      *&v104[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_116:
      *v108 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 468;
      *&v104[18] = 2048;
      *&v104[20] = i;
      *&v104[28] = 2048;
      *&v104[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v97 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      v109 = 1024;
      v110 = 468;
      v111 = 2048;
      v112 = v16;
      v113 = 2048;
      v114 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_118:
      v97 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      v109 = 1024;
      v110 = 468;
      v111 = 2048;
      v112 = v16;
      v113 = 2048;
      v114 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_119:
      v97 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      v109 = 1024;
      v110 = 468;
      v111 = 2048;
      v112 = v21;
      v113 = 2048;
      v114 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v97 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      v109 = 1024;
      v110 = 468;
      v111 = 2048;
      v112 = v11;
      v113 = 2048;
      v114 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_121:
      *v108 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 797;
      *&v104[18] = 2048;
      *&v104[20] = v16;
      *&v104[28] = 2048;
      *&v104[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_122:
      v97 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      v109 = 1024;
      v110 = 797;
      v111 = 2048;
      v112 = v16;
      v113 = 2048;
      v114 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v97 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      v109 = 1024;
      v110 = 468;
      v111 = 2048;
      v112 = v11;
      v113 = 2048;
      v114 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_124:
      *v108 = 0;
      v100 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      v22 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      *&v104[12] = 1024;
      *&v104[14] = 797;
      *&v104[18] = 2048;
      *&v104[20] = v13;
      *&v104[28] = 2048;
      *&v104[30] = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_125;
    }

LABEL_73:
    v22 = *(v21 + 136);
    *(v11 + 280) = v22;
    if (v22)
    {
      if (v22 > 0x666666666666666)
      {
LABEL_127:
        re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v22);
        _os_crash();
        __break(1u);
LABEL_128:
        re::internal::assertLog(4, v66, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
      }

      *(v11 + 288) = v65;
      if (!v65)
      {
        goto LABEL_128;
      }

      v67 = v22 - 1;
      if (v22 != 1)
      {
        do
        {
          *(v65 + 32) = 0;
          *(v65 + 8) = 0;
          *(v65 + 16) = 0;
          *v65 = 0;
          *(v65 + 24) = 0;
          v65 += 40;
          --v67;
        }

        while (v67);
      }

      *(v65 + 32) = 0;
      *(v65 + 8) = 0;
      *(v65 + 16) = 0;
      *v65 = 0;
      *(v65 + 24) = 0;
    }

    v68 = *(v21 + 136);
    if (v68)
    {
      for (i = 0; i < v68; ++i)
      {
        v69 = *(v21 + 96);
        if (v69)
        {
          v16 = *(v21 + 112);
          v70 = v16 + 40 * v69;
          do
          {
            if (i == *(v16 + 32))
            {
              v17 = *(v21 + 136);
              if (v17 <= i)
              {
                goto LABEL_115;
              }

              v71 = *(v21 + 152) + 200 * i;
              v72 = *(v71 + 16);
              if (v72)
              {
                v73 = 0;
                v74 = *(v71 + 32);
                while (!re::StringID::operator==(v16, v74))
                {
                  v73 = (v73 + 1);
                  v74 += 5;
                  if (v72 == v73)
                  {
                    goto LABEL_91;
                  }
                }

                v13 = v73;
LABEL_91:
                v11 = v94;
              }

              v17 = *(v11 + 280);
              if (v17 <= i)
              {
                goto LABEL_116;
              }

              v75 = *(v11 + 288) + 40 * i;
              v76 = re::StringID::StringID(buf, (v16 + 16));
              *&buf[16] = v13;
              v77 = *(v75 + 8);
              v78 = *(v75 + 16);
              if (v78 >= v77)
              {
                v79 = v78 + 1;
                if (v77 < v78 + 1)
                {
                  if (*v75)
                  {
                    v80 = 2 * v77;
                    v81 = v77 == 0;
                    v82 = 8;
                    if (!v81)
                    {
                      v82 = v80;
                    }

                    if (v82 <= v79)
                    {
                      v83 = v79;
                    }

                    else
                    {
                      v83 = v82;
                    }

                    v76 = re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(v75, v83);
                  }

                  else
                  {
                    v76 = re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(v75, v79);
                    ++*(v75 + 24);
                  }
                }

                v78 = *(v75 + 16);
                v21 = v92;
              }

              v84 = (*(v75 + 32) + 24 * v78);
              v85 = buf[0];
              *v84 = *v84 & 0xFFFFFFFFFFFFFFFELL | buf[0] & 1;
              *v84 = *buf & 0xFFFFFFFFFFFFFFFELL | v85 & 1;
              v84[1] = *&buf[8];
              *buf = 0;
              *&buf[8] = &str_67;
              v84[2] = *&buf[16];
              ++*(v75 + 16);
              ++*(v75 + 24);
              if (buf[0])
              {
                if (buf[0])
                {
                }
              }
            }

            v16 += 40;
          }

          while (v16 != v70);
          v68 = *(v21 + 136);
        }
      }
    }

    *(v11 + 8) = a8;
    *(v11 + 296) = 1;
  }
}

double re::RigRuntimeData::constructRigCommands@<D0>(re *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned int **a5@<X4>, void *a6@<X5>, unsigned int **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, void *a11, re::BindNode **a12)
{
  if (*(a1 + 296) == 1)
  {
    return re::RigRuntimeData::constructRigCommandsForRigGraph(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
  }

  *&result = re::RigRuntimeData::constructRigCommandsForRig(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11).n128_u64[0];
  return result;
}

double re::RigRuntimeData::constructRigCommandsForRigGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, re::BindNode **a11)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v99 = v14;
  v16 = v15;
  v104 = v17;
  v19 = v18;
  v108 = v20;
  v22 = v21;
  v23 = v13;
  v25 = v24;
  v216 = *MEMORY[0x1E69E9840];
  v156 = v26;
  v27 = 0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30));
  re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v13 + 224, &v156, (0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) ^ ((0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) >> 31), &v199);
  if (v199.n128_u32[3] == 0x7FFFFFFF || (v28 = *(v23[30] + 24 * v199.n128_u32[3] + 8), v23[26] <= v28) || (v29 = (v23[27] + 40 * v28), !*v29))
  {
    re::DynamicString::format("Invalid rig entry handle: %u.", &v199, v156);
    v81 = v199;
    v82 = v200;
    *v25 = 0;
    *(v25 + 8) = 100;
    *(v25 + 16) = re::AssetErrorCategory(void)::instance;
    *(v25 + 24) = v81;
    *(v25 + 40) = v82;
    return v81.n128_f64[0];
  }

  v98 = v25;
  memset(v135, 0, sizeof(v135));
  v136 = 0x7FFFFFFFLL;
  memset(v137, 0, sizeof(v137));
  v138 = 0;
  v139 = 0x7FFFFFFFLL;
  memset(v140, 0, sizeof(v140));
  v155 = 0;
  memset(v142, 0, sizeof(v142));
  v141 = 0;
  v143 = 0;
  memset(v144, 0, sizeof(v144));
  v145 = 0;
  v148 = 0;
  v147 = 0u;
  v146 = 0u;
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0;
  v101 = v23;
  v31 = *v23;
  v30 = (v23 + 12);
  v100 = v30;
  re::RigHierarchy::init(v135, v30, v31, a9, v29[4], v29[2]);
  v33 = v19[1];
  v105 = v22;
  if (v33)
  {
    v34 = *v19;
    v102 = &(*v19)[v33];
    v12 = 0x3F8000003F800000;
    v11 = 0x3F80000000000000;
    while (1)
    {
      v35 = *v34;
      v36 = *(v22 + 17);
      if (v36 <= v35)
      {
        break;
      }

      v37 = v108[1];
      if (v37 <= v35)
      {
        goto LABEL_146;
      }

      v106 = v34;
      v38 = *(v22 + 19) + 24 * v35;
      v30 = *(v38 + 8);
      if (v30)
      {
        v39 = 0;
        v40 = (*v108 + 48 * v35);
        v41 = 8;
        while (1)
        {
          v199.n128_u64[1] = 1065353216;
          v199.n128_u64[0] = 0x3F8000003F800000;
          *(&v200 + 1) = 0x3F80000000000000;
          *&v200 = 0;
          v201 = 0uLL;
          re::EvaluationTree::createInputRegister(a9, &v199, v167);
          v199.n128_u64[1] = 1065353216;
          v199.n128_u64[0] = 0x3F8000003F800000;
          *(&v200 + 1) = 0x3F80000000000000;
          *&v200 = 0;
          v201 = 0uLL;
          re::DynamicArray<re::EvaluationSRT>::add((a10 + 41), v167);
          re::DynamicArray<re::Matrix3x3<float>>::add((a10 + 86), &v199);
          v42 = a10[43] - 1;
          *&v158[0] = a10;
          *(&v158[0] + 1) = v42;
          re::makeSkeletalPoseJointBindNode(v40, v39, &v199);
          re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(*&v158[0], v158, &v199, 0);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v199.n128_i64[1]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v199.n128_i64[1]);
          v35 = *(v38 + 8);
          if (v35 <= v39)
          {
            break;
          }

          v43 = strlen(*(*(v38 + 16) + v41));
          v199.n128_u64[0] = *(*(v38 + 16) + v41);
          v199.n128_u64[1] = v43;
          re::RigHierarchy::setLocalSpaceJointTransform(v135, &v199, v167, v132);
          if ((v132[0] & 1) == 0 && v133)
          {
            if (BYTE8(v133))
            {
              (*(*v133 + 40))();
            }

            v134 = 0u;
            v133 = 0u;
          }

          v39 = (v39 + 1);
          v41 += 16;
          if (v30 == v39)
          {
            goto LABEL_17;
          }
        }

        *v182 = 0;
        v203 = 0u;
        v202 = 0u;
        v201 = 0u;
        v200 = 0u;
        v199 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        v205 = 1024;
        v206 = 476;
        v207 = 2048;
        v208 = v39;
        v209 = 2048;
        v210 = v35;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_85:
        *v167 = 0;
        v203 = 0u;
        v202 = 0u;
        v201 = 0u;
        v200 = 0u;
        v199 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        v205 = 1024;
        v206 = 797;
        v207 = 2048;
        v208 = v40;
        v209 = 2048;
        v210 = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_86:
        *&v158[0] = 0;
        v203 = 0u;
        v202 = 0u;
        v201 = 0u;
        v200 = 0u;
        v199 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        v205 = 1024;
        v206 = 797;
        v207 = 2048;
        v208 = v40;
        v209 = 2048;
        v210 = v35;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_87:
        *&v158[0] = 0;
        v203 = 0u;
        v202 = 0u;
        v201 = 0u;
        v200 = 0u;
        v199 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v204 = 136315906;
        *&v204[4] = "operator[]";
        v205 = 1024;
        v206 = 476;
        v207 = 2048;
        v208 = v40;
        v209 = 2048;
        v210 = v35;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_88:
        *&v158[2] = 0;
        v80 = v98;
        goto LABEL_104;
      }

LABEL_17:
      v22 = v105;
      v34 = v106 + 1;
      if (v106 + 1 == v102)
      {
        goto LABEL_18;
      }
    }

    *v167 = 0;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    v206 = 797;
    v207 = 2048;
    v208 = v35;
    v209 = 2048;
    v210 = v36;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_146:
    re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v37);
    _os_crash();
    __break(1u);
LABEL_147:
    *v167 = 0;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    v206 = 797;
    v207 = 2048;
    v208 = v36;
    v209 = 2048;
    v210 = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_148:
    re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v46);
    _os_crash();
    __break(1u);
LABEL_149:
    v121 = 0;
    memset(v167, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v182 = 136315906;
    *&v182[4] = "operator[]";
    *&v182[12] = 1024;
    *&v182[14] = 789;
    *&v182[18] = 2048;
    *&v182[20] = v12;
    v183 = 2048;
    *v184 = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_150:
    v113 = 0;
    v160 = 0u;
    v159 = 0u;
    memset(v158, 0, sizeof(v158));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v163 = 136315906;
    *(v35 + 228) = "operator[]";
    WORD2(v164) = 1024;
    *(v35 + 238) = 468;
    WORD5(v164) = 2048;
    *(v35 + 244) = v11;
    WORD2(v165) = 2048;
    *(v35 + 254) = v36;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_151:
    re::internal::assertLog(6, v65, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v66);
    _os_crash();
    __break(1u);
LABEL_152:
    re::internal::assertLog(6, v68, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v69);
    _os_crash();
    __break(1u);
LABEL_153:
    re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v72);
    _os_crash();
    __break(1u);
    goto LABEL_154;
  }

LABEL_18:
  v44 = v16[1];
  if (v44)
  {
    v45 = *v16;
    v103 = &(*v16)[v44];
    v30 = &v199;
    while (1)
    {
      v36 = *v45;
      v35 = *(v22 + 22);
      if (v35 <= v36)
      {
        goto LABEL_147;
      }

      v46 = v104[1];
      if (v46 <= v36)
      {
        goto LABEL_148;
      }

      v107 = v45;
      v12 = *(v22 + 24) + 24 * v36;
      v109 = *(v12 + 8);
      if (v109)
      {
        break;
      }

LABEL_33:
      v22 = v105;
      v45 = v107 + 1;
      if (v107 + 1 == v103)
      {
        goto LABEL_34;
      }
    }

    v47 = 0;
    v40 = 0;
    v48 = *v104 + 40 * v36;
    v11 = 8;
    while (1)
    {
      v39 = *(v48 + 16);
      if (v39 <= v40)
      {
        goto LABEL_85;
      }

      v49 = *(v48 + 32);
      v199.n128_u32[0] = 4;
      v200 = 0uLL;
      v199.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a9 + 228), &v199);
      v199.n128_u64[0] = a9[230] - 1;
      re::DynamicArray<unsigned long>::add(a9 + 21, &v199);
      re::DynamicArray<re::Matrix4x4<float>>::add((a9 + 61), v49 + v47);
      v39 = *(a9[25] + 8 * a9[23] - 8);
      v202 = 0u;
      v201 = 0u;
      v200 = 0u;
      v199 = 0u;
      *v204 = v39;
      re::DynamicArray<unsigned long>::add(a10 + 21, v204);
      re::DynamicArray<re::Matrix4x4<float>>::add((a10 + 66), &v199);
      v50 = a10[23] - 1;
      *v167 = a10;
      *&v167[8] = v50;
      v35 = *(v48 + 16);
      if (v35 <= v40)
      {
        goto LABEL_86;
      }

      re::EvaluationInputHandle<re::Matrix4x4<float>>::bindEvaluationInput<re::Matrix4x4<float>>(v167, (*(v48 + 32) + v47));
      v35 = *(v12 + 8);
      if (v35 <= v40)
      {
        goto LABEL_87;
      }

      v35 = *(*(v12 + 16) + v11);
      v51 = strlen(v35);
      v199.n128_u64[0] = v35;
      v199.n128_u64[1] = v51;
      re::RigHierarchy::setModelSpaceJointTransform(v135, &v199, v39, v129);
      if ((v129[0] & 1) == 0 && v130)
      {
        if (BYTE8(v130))
        {
          (*(*v130 + 40))();
        }

        v131 = 0u;
        v130 = 0u;
      }

      v40 = (v40 + 1);
      v11 += 16;
      v47 += 64;
      if (v109 == v40)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  v52 = v101[11];
  v36 = v156;
  v30 = *(v52 + 16);
  if (v30 <= v156)
  {
LABEL_154:
    *v167 = 0;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    v206 = 797;
    v207 = 2048;
    v208 = v36;
    v209 = 2048;
    v210 = v30;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_155;
  }

  v53 = *(v52 + 32);
  v128 = 0;
  v125[1] = 0;
  v126 = 0;
  v125[0] = 0;
  v127 = 0;
  v30 = v101[35];
  if (v30 <= v156)
  {
LABEL_155:
    *v167 = 0;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    v206 = 476;
    v207 = 2048;
    v208 = v36;
    v209 = 2048;
    v210 = v30;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_156:
    *&v158[0] = 0;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v167 = 136315906;
    *&v167[4] = "operator[]";
    *&v167[12] = 1024;
    *&v167[14] = 789;
    *&v167[18] = 2048;
    *&v167[20] = 0;
    *&v167[28] = 2048;
    *&v167[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v157 = 0;
    v160 = 0u;
    v159 = 0u;
    memset(v158, 0, sizeof(v158));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    *(v22 + 1) = "operator[]";
    v213 = 1024;
    *(v22 + 14) = 468;
    v214 = 2048;
    *(v22 + 5) = v11;
    v215 = 2048;
    *(v22 + 30) = v36;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_158:
    re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  v11 = v53 + 200 * v156;
  v54 = v101[36] + 40 * v156;
  re::DynamicArray<re::RigDataValue>::resize(v125, *(v54 + 16) + 1);
  re::RigGraphNode::inputValue(v11, v100, a9, *v101, 0, v204);
  v36 = v211;
  v55 = *v135;
  *(v211 + 16) = *&v135[16];
  *v36 = v55;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v36 + 24), &v135[24]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v36 + 72), v137);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=((v36 + 120), v140);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=((v36 + 160), &v142[1]);
  re::DynamicArray<re::StringID>::operator=((v36 + 200), v144 + 1);
  re::DynamicArray<unsigned long>::operator=((v36 + 240), &v146 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=((v36 + 280), &v149 + 1);
  re::DynamicArray<unsigned long>::operator=((v36 + 320), &v152 + 1);
  if (!v126)
  {
    goto LABEL_156;
  }

  re::RigDataValue::operator=(v128, v204);
  v56 = *(v54 + 16);
  if (v56)
  {
    v36 = a11;
    v57 = (*(v54 + 32) + 16);
    v30 = 24 * v56;
    v22 = v100;
    while (1)
    {
      v12 = *v57;
      re::RigGraphNode::inputValue(v11, v100, a9, *v101, *v57, &v199);
      v58 = strlen(*(v57 - 1));
      if (LOBYTE(v158[0]) != 1)
      {
        break;
      }

      v35 = v126;
      if (v126 <= v12)
      {
        goto LABEL_149;
      }

      re::RigDataValue::operator=(&v128[36 * v12], &v199);
      re::RigDataValue::~RigDataValue(&v199);
      v57 += 3;
      v30 -= 24;
      if (!v30)
      {
        goto LABEL_42;
      }
    }

    *v167 = *(v158 + 8);
    re::DynamicString::DynamicString(&v167[16], (&v158[1] + 8));
    *v98 = 0;
    *(v98 + 8) = *v167;
    v85 = *&v167[40];
    *(v98 + 24) = *&v167[16];
    *(v98 + 48) = v85;
    *(v98 + 32) = *&v167[24];
    if (*(&v158[1] + 1) && (v158[2] & 1) != 0)
    {
      (*(**(&v158[1] + 1) + 40))();
    }

    re::RigDataValue::~RigDataValue(&v199);
    goto LABEL_132;
  }

LABEL_42:
  re::EvaluationContextManager::EvaluationContextManager(&v199);
  re::EvaluationContextManager::init(&v199, *v101);
  v185 = 0;
  *&v184[2] = 0;
  v186 = 1;
  v189 = 0;
  v187 = 0;
  v188 = 0;
  v190 = 0;
  v193 = 0;
  v191 = 0;
  v192 = 0;
  v198 = 0;
  v195 = 0u;
  v196 = 0u;
  v194 = 0;
  v197 = 0;
  v59 = *v101;
  *&v182[16] = v100;
  v182[24] = 0;
  *v182 = v59;
  *&v182[8] = 0;
  re::RigGraphCompilation::init(&v184[2], v59);
  re::RigGraphSystem::compile(v182, v11, a9, &v199, v128, v126, &v121);
  if (v121 != 1)
  {
    *(v98 + 8) = v122;
    v83 = v123;
    v123 = 0u;
    v84 = v124;
    v124 = 0u;
    *v98 = 0;
    *(v98 + 24) = v83;
    *(v98 + 40) = v84;
LABEL_128:
    if (v123 && (BYTE8(v123) & 1) != 0)
    {
      (*(*v123 + 40))(v123, v124);
    }

    goto LABEL_131;
  }

  *v167 = 0;
  memset(&v167[32], 0, 64);
  v168 = 0;
  v169 = 1;
  v172 = 0;
  v170 = 0;
  v171 = 0;
  v173 = 0;
  v176 = 0;
  v174 = 0;
  v175 = 0;
  v177 = 0;
  v181 = 0;
  v178 = 0u;
  v179 = 0u;
  v180 = 0;
  re::RigGraphCompilation::operator=(&v167[88], &v122);
  v60 = v99;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v167[40], *v101, v99[1]);
  re::FixedArray<re::EvaluationSRT>::init<>(&v167[64], *v101, v99[1]);
  if (!*(&v179 + 1))
  {
    goto LABEL_158;
  }

  v35 = v158;
  if (v99[1])
  {
    v62 = 0;
    v11 = 0;
    v22 = &v212;
    v30 = *(v181 + 184);
    v63 = 8;
    while (1)
    {
      v64 = strlen(*(*v60 + v63));
      *&v158[0] = *(*v60 + v63);
      *(&v158[0] + 1) = v64;
      re::RigHierarchy::getModelSpaceJointTransform(v30, v158, v117);
      if ((v117[0] & 1) == 0)
      {
        v158[0] = v118;
        re::DynamicString::DynamicString(&v158[1], &v119);
        *v98 = 0;
        *(v98 + 8) = v158[0];
        v86 = *(&v158[2] + 1);
        *(v98 + 24) = *&v158[1];
        *(v98 + 48) = v86;
        *(v98 + 32) = *(&v158[1] + 8);
        goto LABEL_99;
      }

      v36 = *&v167[48];
      if (*&v167[48] <= v11)
      {
        goto LABEL_150;
      }

      *(*&v167[56] + 8 * v11) = v118;
      v66 = v60[1];
      if (v66 <= v11)
      {
        goto LABEL_151;
      }

      v36 = *(*v60 + v63);
      v67 = strlen(v36);
      *&v158[0] = v36;
      *(&v158[0] + 1) = v67;
      re::RigHierarchy::getLocalSpaceJointScale(v30, v158, &v163);
      if ((v163 & 1) == 0)
      {
        v158[0] = v164;
        re::DynamicString::DynamicString(&v158[1], &v165);
        *v98 = 0;
        *(v98 + 8) = v158[0];
        v87 = *(&v158[2] + 1);
        *(v98 + 24) = *&v158[1];
        *(v98 + 48) = v87;
        *(v98 + 32) = *(&v158[1] + 8);
        goto LABEL_95;
      }

      v69 = v60[1];
      if (v69 <= v11)
      {
        goto LABEL_152;
      }

      v36 = *(*v60 + v63);
      v70 = strlen(v36);
      *&v158[0] = v36;
      *(&v158[0] + 1) = v70;
      re::RigHierarchy::getLocalSpaceJointRotation(v30, v158, &v113);
      if ((v113 & 1) == 0)
      {
        break;
      }

      v72 = v60[1];
      if (v72 <= v11)
      {
        goto LABEL_153;
      }

      v73 = strlen(*(*v60 + v63));
      *&v158[0] = *(*v60 + v63);
      *(&v158[0] + 1) = v73;
      re::RigHierarchy::getLocalSpaceJointTranslation(v30, v158, v110);
      v74 = v110[0];
      if (v110[0] == 1)
      {
        v36 = *&v167[72];
        if (*&v167[72] <= v11)
        {
          goto LABEL_157;
        }

        v75 = v111;
        v76 = v114;
        v77 = (*&v167[80] + v62);
        *v77 = v164;
        v77[1] = v76;
        v77[2] = v75;
      }

      else
      {
        v158[0] = v111;
        re::DynamicString::DynamicString(&v158[1], v112);
        *v98 = 0;
        *(v98 + 8) = v158[0];
        v78 = *(&v158[2] + 1);
        *(v98 + 24) = *&v158[1];
        *(v98 + 48) = v78;
        *(v98 + 32) = *(&v158[1] + 8);
        if ((v110[0] & 1) == 0 && v112[0])
        {
          if (v112[1])
          {
            (*(*v112[0] + 40))();
          }

          memset(v112, 0, sizeof(v112));
        }
      }

      if (v113 & 1) == 0 && v115 && (v116)
      {
        (*(*v115 + 40))();
      }

      if (v163 & 1) == 0 && v165 && (v166)
      {
        (*(*v165 + 40))();
      }

      if (v117[0] & 1) == 0 && v119 && (v120)
      {
        (*(*v119 + 40))();
      }

      if (!v74)
      {
        goto LABEL_118;
      }

      ++v11;
      v60 = v99;
      v63 += 16;
      v62 += 24;
      if (v11 >= v99[1])
      {
        goto LABEL_75;
      }
    }

    v158[0] = v114;
    re::DynamicString::DynamicString(&v158[1], &v115);
    *v98 = 0;
    *(v98 + 8) = v158[0];
    v88 = *(&v158[2] + 1);
    *(v98 + 24) = *&v158[1];
    *(v98 + 48) = v88;
    *(v98 + 32) = *(&v158[1] + 8);
    if (v113 & 1) == 0 && v115 && (v116)
    {
      (*(*v115 + 40))();
    }

LABEL_95:
    if (v163 & 1) == 0 && v165 && (v166)
    {
      (*(*v165 + 40))();
    }

LABEL_99:
    if (v117[0] & 1) == 0 && v119 && (v120)
    {
      (*(*v119 + 40))();
    }
  }

  else
  {
LABEL_75:
    v79 = *v167;
    *v167 = 0;
    *&v158[0] = v79;
    v39 = (v158 + 8);
    if (!*&v167[32])
    {
      goto LABEL_88;
    }

    v80 = v98;
    if (*&v167[32] == &v167[8])
    {
      *&v158[2] = v158 + 8;
      (*(**&v167[32] + 24))();
    }

    else
    {
      *&v158[2] = *&v167[32];
      *&v167[32] = 0;
    }

LABEL_104:
    v89 = *&v167[40];
    v90 = *&v167[48];
    *&v167[40] = 0u;
    *(&v158[2] + 1) = v89;
    *&v159 = v90;
    v91 = *&v167[72];
    v92 = *&v167[80];
    *&v167[72] = 0u;
    *(v35 + 56) = *&v167[56];
    *&v167[56] = 0;
    *&v167[64] = 0;
    *(&v160 + 1) = v91;
    v161 = v92;
    re::RigGraphCompilation::RigGraphCompilation(v162, &v167[88]);
    *v80 = 1;
    v93 = *&v158[0];
    v94 = *&v158[2];
    *&v158[0] = 0;
    *(v80 + 8) = v93;
    if (v94)
    {
      if (v94 == v39)
      {
        *(v80 + 40) = v80 + 16;
        (*(*v94 + 24))(v94);
      }

      else
      {
        *(v80 + 40) = v94;
        *&v158[2] = 0;
      }
    }

    else
    {
      *(v80 + 40) = 0;
    }

    v95 = v159;
    *(v80 + 48) = *(&v158[2] + 1);
    *(v80 + 56) = v95;
    *(&v158[2] + 1) = 0;
    *&v159 = 0;
    *(v80 + 64) = *(v35 + 56);
    *(&v159 + 1) = 0;
    *&v160 = 0;
    v96 = v161;
    *(v80 + 80) = *(&v160 + 1);
    *(v80 + 88) = v96;
    *(&v160 + 1) = 0;
    v161 = 0;
    re::RigGraphCompilation::RigGraphCompilation(v80 + 96, v162);
    re::RigGraphCompilation::~RigGraphCompilation(v162);
    if (v160)
    {
      if (*(&v160 + 1))
      {
        (*(*v160 + 40))(v160, v161);
        *(&v160 + 1) = 0;
        v161 = 0;
      }

      *&v160 = 0;
    }

    if (*(&v158[2] + 1))
    {
      if (v159)
      {
        (*(**(&v158[2] + 1) + 40))(*(&v158[2] + 1), *(&v159 + 1));
        v159 = 0uLL;
      }

      *(&v158[2] + 1) = 0;
    }

    std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](v158);
  }

LABEL_118:
  re::RigGraphCompilation::~RigGraphCompilation(&v167[88]);
  if (*&v167[64])
  {
    if (*&v167[72])
    {
      (*(**&v167[64] + 40))(*&v167[64], *&v167[80]);
      *&v167[72] = 0;
      *&v167[80] = 0;
    }

    *&v167[64] = 0;
  }

  if (*&v167[40])
  {
    if (*&v167[48])
    {
      (*(**&v167[40] + 40))(*&v167[40], *&v167[56]);
      *&v167[48] = 0uLL;
    }

    *&v167[40] = 0;
  }

  std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](v167);
  if ((v121 & 1) == 0)
  {
    goto LABEL_128;
  }

  re::RigGraphCompilation::~RigGraphCompilation(&v122);
LABEL_131:
  re::RigGraphCompilation::~RigGraphCompilation(&v184[2]);
  re::EvaluationContextManager::~EvaluationContextManager(&v199);
LABEL_132:
  re::RigDataValue::~RigDataValue(v204);
  re::DynamicArray<re::RigDataValue>::deinit(v125);
  if (*(&v152 + 1))
  {
    if (v155)
    {
      (*(**(&v152 + 1) + 40))(*(&v152 + 1), v155);
    }

    v155 = 0;
    v153 = 0uLL;
    *(&v152 + 1) = 0;
    ++v154;
  }

  if (*(&v149 + 1))
  {
    if (v152)
    {
      (*(**(&v149 + 1) + 40))(*(&v149 + 1), v152);
    }

    *&v152 = 0;
    v150 = 0uLL;
    *(&v149 + 1) = 0;
    ++v151;
  }

  if (*(&v146 + 1))
  {
    if (v149)
    {
      (*(**(&v146 + 1) + 40))(*(&v146 + 1), v149);
    }

    *&v149 = 0;
    v147 = 0uLL;
    *(&v146 + 1) = 0;
    ++v148;
  }

  re::DynamicArray<re::StringID>::deinit(v144 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v142[1]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v140);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v137);
  v81.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v135[24]);
  return v81.n128_f64[0];
}

__n128 re::RigRuntimeData::constructRigCommandsForRig@<Q0>(re *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned int **a5@<X4>, void *a6@<X5>, unsigned int **a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, void *a11)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a1 + 9) > a2 && (v12 = a1, v13 = a2, v14 = (*(a1 + 10) + 1528 * a2), v14[147]))
  {
    re::RigEvaluation::reset(*(a1 + 10) + 1528 * a2);
    v19 = *(v12 + 6);
    if (v19 <= v13)
    {
      goto LABEL_35;
    }

    v41 = a9;
    v40 = a8;
    v19 = a11;
    v50 = v14;
    re::RigEvaluation::setDefaultPose(v14, *(*(v12 + 7) + 8 * v13));
    v21 = a5[1];
    v45 = a3;
    if (v21)
    {
      v22 = *a5;
      v42 = &(*a5)[v21];
      v23 = 0x3F8000003F800000;
      v24 = 0x3F80000000000000;
      while (1)
      {
        v13 = *v22;
        v25 = a3[17];
        if (v25 <= v13)
        {
          goto LABEL_31;
        }

        v26 = a4[1];
        if (v26 <= v13)
        {
          goto LABEL_32;
        }

        v48 = v22;
        v27 = a3[19] + 24 * v13;
        v25 = *(v27 + 8);
        if (v25)
        {
          break;
        }

LABEL_12:
        v22 = v48 + 1;
        a3 = v45;
        if (v48 + 1 == v42)
        {
          goto LABEL_13;
        }
      }

      v28 = 0;
      v12 = (*a4 + 48 * v13);
      v13 = 8;
      while (1)
      {
        v61.n128_u64[0] = 0x3F8000003F800000;
        v61.n128_u64[1] = 1065353216;
        *&v62 = 0;
        *(&v62 + 1) = 0x3F80000000000000;
        v63 = 0uLL;
        re::EvaluationTree::createInputRegister(a10, &v61, &v52);
        v61.n128_u64[0] = 0x3F8000003F800000;
        v61.n128_u64[1] = 1065353216;
        *&v62 = 0;
        *(&v62 + 1) = 0x3F80000000000000;
        v63 = 0uLL;
        re::DynamicArray<re::EvaluationSRT>::add((a11 + 41), &v52);
        re::DynamicArray<re::Matrix3x3<float>>::add((a11 + 86), &v61);
        v29 = (a11[43] - 1);
        v51[0] = a11;
        v51[1] = v29;
        re::makeSkeletalPoseJointBindNode(v12, v28, &v61);
        re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(v51[0], v51, &v61, 0);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v61.n128_i64[1]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v61.n128_i64[1]);
        v30 = *(v27 + 8);
        if (v30 <= v28)
        {
          break;
        }

        re::RigEvaluation::bindLocalSpaceJointInput(v50, *(*(v27 + 16) + v13), &v52);
        v28 = (v28 + 1);
        v13 += 16;
        if (v25 == v28)
        {
          goto LABEL_12;
        }
      }

      v53 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v54 = 136315906;
      *&v54[4] = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v28;
      v59 = 2048;
      v60 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_28;
    }

LABEL_13:
    v31 = a7[1];
    if (v31)
    {
      v32 = *a7;
      v43 = &(*a7)[v31];
      while (1)
      {
        v13 = *v32;
        v24 = a3[22];
        if (v24 <= v13)
        {
          goto LABEL_33;
        }

        v33 = a6[1];
        if (v33 <= v13)
        {
          goto LABEL_34;
        }

        v47 = v32;
        v24 = a3[24] + 24 * v13;
        v49 = *(v24 + 8);
        if (v49)
        {
          break;
        }

LABEL_23:
        a3 = v45;
        v32 = v47 + 1;
        if (v47 + 1 == v43)
        {
          goto LABEL_24;
        }
      }

      v34 = 0;
      v23 = 0;
      v13 = *a6 + 40 * v13;
      v25 = 8;
      while (1)
      {
        v30 = *(v13 + 16);
        if (v30 <= v23)
        {
          break;
        }

        v35 = *(v13 + 32);
        v61.n128_u32[0] = 4;
        v62 = 0uLL;
        v61.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a10 + 228), &v61);
        v61.n128_u64[0] = a10[230] - 1;
        re::DynamicArray<unsigned long>::add(a10 + 21, &v61);
        re::DynamicArray<re::Matrix4x4<float>>::add((a10 + 61), v35 + v34);
        v36 = *(a10[25] + 8 * a10[23] - 8);
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        *v54 = v36;
        re::DynamicArray<unsigned long>::add(a11 + 21, v54);
        re::DynamicArray<re::Matrix4x4<float>>::add((a11 + 66), &v61);
        v37 = a11[23] - 1;
        v52.n128_u64[0] = a11;
        v52.n128_u64[1] = v37;
        v12 = *(v13 + 16);
        if (v12 <= v23)
        {
          goto LABEL_29;
        }

        re::EvaluationInputHandle<re::Matrix4x4<float>>::bindEvaluationInput<re::Matrix4x4<float>>(&v52, (*(v13 + 32) + v34));
        v12 = *(v24 + 8);
        if (v12 <= v23)
        {
          goto LABEL_30;
        }

        re::RigEvaluation::bindModelSpaceJointInput(v50, *(*(v24 + 16) + v25), v36);
        ++v23;
        v25 += 16;
        v34 += 64;
        if (v49 == v23)
        {
          goto LABEL_23;
        }
      }

LABEL_28:
      v52.n128_u64[0] = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v54 = 136315906;
      *&v54[4] = "operator[]";
      v55 = 1024;
      v56 = 797;
      v57 = 2048;
      v58 = v23;
      v59 = 2048;
      v60 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v51[0] = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v54 = 136315906;
      *&v54[4] = "operator[]";
      v55 = 1024;
      v56 = 797;
      v57 = 2048;
      v58 = v23;
      v59 = 2048;
      v60 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v51[0] = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v54 = 136315906;
      *&v54[4] = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v23;
      v59 = 2048;
      v60 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v52.n128_u64[0] = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v54 = 136315906;
      *&v54[4] = "operator[]";
      v55 = 1024;
      v56 = 797;
      v57 = 2048;
      v58 = v13;
      v59 = 2048;
      v60 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v26);
      _os_crash();
      __break(1u);
LABEL_33:
      v52.n128_u64[0] = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v54 = 136315906;
      *&v54[4] = "operator[]";
      v55 = 1024;
      v56 = 797;
      v57 = 2048;
      v58 = v13;
      v59 = 2048;
      v60 = v24;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_34:
      re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v33);
      _os_crash();
      __break(1u);
LABEL_35:
      v52.n128_u64[0] = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v54 = 136315906;
      *&v54[4] = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v13;
      v59 = 2048;
      v60 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_24:
    re::RigEvaluation::constructEvaluationCommands(v50, *v40, *(v40 + 8), a10, v41);
  }

  else
  {
    re::DynamicString::format("Invalid rig entry handle: %u.", &v61, a2);
    result = v61;
    v39 = v62;
    *a9 = 0;
    *(a9 + 8) = 100;
    *(a9 + 16) = re::AssetErrorCategory(void)::instance;
    *(a9 + 24) = result;
    *(a9 + 40) = v39;
  }

  return result;
}

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 8;
  }

  v7 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 4) = *a2;
  *(v7 + 8) = *a3;
  result = v7 + 8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::EvaluationInputHandle<re::Matrix4x4<float>>::bindEvaluationInput<re::Matrix4x4<float>>(void **a1, const re::IntrospectionBase *a2)
{
  v3 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    *v6 = a2;
    v3 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    a2 = *v6;
    if (v5)
    {
      re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
      v3 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      a2 = *v6;
    }
  }

  re::makeBindPoint(*(v3 + 131), a2, &v7);
  re::EvaluationContextManager::bindInputHandle<re::Matrix4x4<float>>(*a1, a1, &v7);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
}

double re::RigRuntimeData::makeRigHierarchyForPose(re::RigRuntimeData *this, const re::MeshAsset *a2, const re::SkeletalPoseDefinitionAsset *a3, uint64_t a4, const re::BindPoint *a5, const re::RigEnvironment *a6, re::EvaluationTree *a7, re::EvaluationContextManager *a8)
{
  v35 = this;
  v88[5] = *MEMORY[0x1E69E9840];
  memset(v43, 0, sizeof(v43));
  v44 = 0x7FFFFFFFLL;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v47 = 0x7FFFFFFFLL;
  memset(v48, 0, sizeof(v48));
  v63 = 0;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  v51 = 0;
  memset(v52, 0, sizeof(v52));
  v53 = 0;
  v56 = 0;
  v55 = 0u;
  v54 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v8 = *(a3 + 37);
  if (!v8)
  {
LABEL_20:
    v24 = v64;
    v25 = v65;
    v26 = v66[0];
    *v35 = 0;
    *(v35 + 1) = 6002;
    *(v35 + 2) = &re::AnimationErrorCategory(void)::instance;
    *(v35 + 24) = v24;
    *(v35 + 5) = v25;
    *(v35 + 6) = v26;
    goto LABEL_43;
  }

  v11 = *(a3 + 39);
  v12 = v11 + (v8 << 6);
  v13 = *(a2 + 156);
  v36 = (a2 + 640);
  while (1)
  {
    v14 = v12 - 64;
    if (*(v12 - 4) == a4)
    {
      break;
    }

LABEL_19:
    v12 -= 64;
    if (v14 == v11)
    {
      goto LABEL_20;
    }
  }

  re::MeshNameMap::meshInstancePartsForIdentifier(v36, (v12 - 64), &v64);
  v86[0] = a2;
  v86[1] = v36;
  v87 = v64;
  v88[3] = v66[1];
  v88[4] = 0;
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(v88, &v64 + 8);
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v64 + 8);
  v41 = v86;
  v42 = 0;
  v15 = v87;
  if (!v87)
  {
LABEL_18:
    this = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v88);
    v11 = *(a3 + 39);
    goto LABEL_19;
  }

  v16 = (v12 - 24);
  while (1)
  {
    v17 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(&v41);
    *&v64 = v42;
    v18 = (*(*v41[7] + 16))(v41[7], &v64);
    v19 = *(v17 + 224);
    if (v19)
    {
      if (*(v19 + 8) > WORD2(v18))
      {
        v20 = *(*(v19 + 16) + 88 * WORD2(v18) + 4);
        if (v13 > v20)
        {
          if (*v16 >= 0xFFFFFFFFFFFFFFFELL && (*v16 & 1) == 0 && !**(v12 - 16))
          {
            break;
          }

          v21 = re::MeshAsset::skeletonAtIndex(a2, v20);
          if (re::StringID::operator==((v12 - 24), v21))
          {
            break;
          }
        }
      }
    }

    v22 = ++v42;
    if (v41 == v86 && v22 == v15)
    {
      goto LABEL_18;
    }
  }

  if (*(a2 + 35) > v20 && (v27 = re::AssetHandle::loadedAsset<re::SkeletonAsset>((*(a2 + 37) + 24 * v20))) != 0)
  {
    v28 = (v27 + 88);
  }

  else
  {
    v27 = re::MeshAsset::skeletonAtIndex(a2, v20);
    v28 = v27;
  }

  v29 = re::RigHierarchy::bindRigHierarchyPose(v43, a7, a8, a5, v38);
  if ((v38[0] & 1) == 0 && v39)
  {
    if (BYTE8(v39))
    {
      (*(*v39 + 40))(v29);
    }

    v40 = 0u;
    v39 = 0u;
  }

  re::RigHierarchy::RigHierarchy(&v64, v43);
  *v35 = 1;
  re::RigHierarchy::RigHierarchy(v35 + 8, &v64);
  if (v81)
  {
    if (v85)
    {
      (*(*v81 + 40))();
    }

    v85 = 0;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    ++v84;
  }

  if (v76)
  {
    if (v80)
    {
      (*(*v76 + 40))();
    }

    v80 = 0;
    v77 = 0;
    v78 = 0;
    v76 = 0;
    ++v79;
  }

  if (v71)
  {
    if (v75)
    {
      (*(*v71 + 40))();
    }

    v75 = 0;
    v72 = 0;
    v73 = 0;
    v71 = 0;
    ++v74;
  }

  re::DynamicArray<re::StringID>::deinit(&v70);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v69);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v68);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v67);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v66);
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v88);
LABEL_43:
  if (*(&v60 + 1))
  {
    if (v63)
    {
      (*(**(&v60 + 1) + 40))();
    }

    v63 = 0;
    v61 = 0uLL;
    *(&v60 + 1) = 0;
    ++v62;
  }

  if (*(&v57 + 1))
  {
    if (v60)
    {
      (*(**(&v57 + 1) + 40))();
    }

    *&v60 = 0;
    v58 = 0uLL;
    *(&v57 + 1) = 0;
    ++v59;
  }

  if (*(&v54 + 1))
  {
    if (v57)
    {
      (*(**(&v54 + 1) + 40))();
    }

    *&v57 = 0;
    v55 = 0uLL;
    *(&v54 + 1) = 0;
    ++v56;
  }

  re::DynamicArray<re::StringID>::deinit(&v52[8]);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v50[8]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v48);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v45);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v43[24]);
}

uint64_t re::AssetHandle::loadedAsset<re::SkeletonAsset>(re::SkeletonAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::SkeletonAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void re::anonymous namespace::setCompilationValueForBoundInput(uint64_t a1, uint64_t a2, const re::RigEnvironment *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, re::BindNode **a8)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a2;
  v15 = a1;
  v16 = &v157;
  v161 = *MEMORY[0x1E69E9840];
  v91 = a6;
  v92 = a7;
  v17 = *(a2 + 32);
  if (v17 <= 5)
  {
    if (*(a2 + 32) <= 2u)
    {
      if (v17 == 1)
      {
        v98 = a6;
        v99[0] = a7;
        v100.n128_u32[0] = 0;
        v122[0].n128_u32[0] = 0;
        memset(&v122[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 208), v122);
        v122[0].n128_u64[0] = v13[210] - 1;
        re::DynamicArray<unsigned long>::add(v13 + 1, v122);
        re::DynamicArray<int>::add(v13 + 41, &v100);
        v9 = *(v13[5] + 8 * v13[3] - 8);
        v100.n128_u32[0] = 0;
        v122[0].n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add(v12 + 1, v122);
        re::DynamicArray<int>::add(v12 + 46, &v100);
        v42 = v12[3];
        {
          re::introspect<int>(BOOL)::info = re::introspect_int(0, v81);
        }

        v11 = v137;
        re::BindNode::bindPointWithOverride(a8, re::introspect<int>(BOOL)::info, &v98, v137);
        if (!*&v137[24])
        {
          goto LABEL_169;
        }

        v43 = *v137;
        {
          re::introspect<int>(BOOL)::info = re::introspect_int(0, v84);
        }

        if (v43 != re::introspect<int>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v95 = (v42 - 1);
        if (v42 - 1 >= a5[93])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 91, v42);
        }

        else if (*(a5[95] + 56 * (v42 - 1) + 24))
        {
          goto LABEL_169;
        }

        v73 = v15;
        re::DynamicArray<unsigned long>::add(a5 + 136, &v95);
        v100.n128_u64[0] = *v137;
        re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v100.n128_i64[1], &v137[8]);
        v101[32] = 0;
        v24 = v95;
        v25 = a5[93];
        if (v25 > v95)
        {
          v74 = a5[95];
          goto LABEL_168;
        }

        goto LABEL_214;
      }

      if (v17 == 2)
      {
        v98 = a6;
        v99[0] = a7;
        v100.n128_u32[0] = 0;
        v122[0].n128_u32[0] = 1;
        memset(&v122[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 213), v122);
        v122[0].n128_u64[0] = v13[215] - 1;
        re::DynamicArray<unsigned long>::add(v13 + 6, v122);
        re::DynamicArray<int>::add(v13 + 46, &v100);
        v9 = *(v13[10] + 8 * v13[8] - 8);
        v100.n128_u32[0] = 0;
        v122[0].n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add(v12 + 6, v122);
        re::DynamicArray<int>::add(v12 + 51, &v100);
        v32 = v12[8];
        {
          re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v82);
        }

        v11 = v137;
        re::BindNode::bindPointWithOverride(a8, re::introspect<unsigned int>(BOOL)::info, &v98, v137);
        if (!*&v137[24])
        {
          goto LABEL_169;
        }

        v33 = *v137;
        {
          re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v86);
        }

        if (v33 != re::introspect<unsigned int>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v95 = (v32 - 1);
        if (v32 - 1 >= a5[98])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 96, v32);
        }

        else if (*(a5[100] + 56 * (v32 - 1) + 24))
        {
          goto LABEL_169;
        }

        v73 = v15;
        re::DynamicArray<unsigned long>::add(a5 + 141, &v95);
        v100.n128_u64[0] = *v137;
        re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v100.n128_i64[1], &v137[8]);
        v101[32] = 0;
        v24 = v95;
        v25 = a5[98];
        if (v25 > v95)
        {
          v74 = a5[100];
          goto LABEL_168;
        }

LABEL_217:
        v97[0] = 0;
        v123 = 0u;
        memset(v122, 0, sizeof(v122));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v157.n128_u32[0] = 136315906;
        *(v16->n128_u64 + 4) = "operator[]";
        v157.n128_u16[6] = 1024;
        *(&v16->n128_u32[3] + 2) = 789;
        WORD1(v158) = 2048;
        *(v16[1].n128_u64 + 4) = v24;
        WORD2(v159) = 2048;
        *(&v16[1].n128_u64[1] + 6) = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      switch(v17)
      {
        case 3u:
          v98 = a6;
          v99[0] = a7;
          v100.n128_u32[0] = 0;
          v122[0].n128_u32[0] = 2;
          memset(&v122[0].n128_i8[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 218), v122);
          v122[0].n128_u64[0] = v13[220] - 1;
          re::DynamicArray<unsigned long>::add(v13 + 11, v122);
          re::DynamicArray<float>::add((v13 + 51), &v100);
          v9 = *(v13[15] + 8 * v13[13] - 8);
          v100.n128_u32[0] = 0;
          v122[0].n128_u64[0] = v9;
          re::DynamicArray<unsigned long>::add(v12 + 11, v122);
          re::DynamicArray<float>::add((v12 + 56), &v100);
          v49 = v12[13];
          {
            re::introspect<float>(BOOL)::info = re::introspect_float(0, v83);
          }

          v11 = v137;
          re::BindNode::bindPointWithOverride(a8, re::introspect<float>(BOOL)::info, &v98, v137);
          if (!*&v137[24])
          {
            goto LABEL_169;
          }

          v50 = *v137;
          {
            re::introspect<float>(BOOL)::info = re::introspect_float(0, v85);
          }

          if (v50 != re::introspect<float>(BOOL)::info)
          {
            goto LABEL_169;
          }

          v95 = (v49 - 1);
          if (v49 - 1 >= a5[103])
          {
            re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 101, v49);
          }

          else if (*(a5[105] + 56 * (v49 - 1) + 24))
          {
            goto LABEL_169;
          }

          v73 = v15;
          re::DynamicArray<unsigned long>::add(a5 + 146, &v95);
          v100.n128_u64[0] = *v137;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v100.n128_i64[1], &v137[8]);
          v101[32] = 0;
          v24 = v95;
          v25 = a5[103];
          if (v25 > v95)
          {
            v74 = a5[105];
            goto LABEL_168;
          }

          goto LABEL_216;
        case 4u:
          v98 = a6;
          v99[0] = a7;
          memset(v122, 0, 48);
          v100.n128_u32[0] = 3;
          *v101 = 0uLL;
          v100.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 223), &v100);
          v100.n128_u64[0] = v13[225] - 1;
          re::DynamicArray<unsigned long>::add(v13 + 16, &v100);
          re::DynamicArray<re::Matrix3x3<float>>::add((v13 + 56), v122);
          v9 = *(v13[20] + 8 * v13[18] - 8);
          memset(v122, 0, 48);
          v100.n128_u64[0] = v9;
          re::DynamicArray<unsigned long>::add(v12 + 16, &v100);
          re::DynamicArray<re::Matrix3x3<float>>::add((v12 + 61), v122);
          v40 = v12[18];
          {
            re::introspect<re::Matrix3x3<float>>(BOOL)::info = re::introspect_Matrix3x3F(0);
          }

          v11 = v137;
          re::BindNode::bindPointWithOverride(a8, re::introspect<re::Matrix3x3<float>>(BOOL)::info, &v98, v137);
          if (!*&v137[24])
          {
            goto LABEL_169;
          }

          v41 = *v137;
          {
            re::introspect<re::Matrix3x3<float>>(BOOL)::info = re::introspect_Matrix3x3F(0);
          }

          if (v41 != re::introspect<re::Matrix3x3<float>>(BOOL)::info)
          {
            goto LABEL_169;
          }

          v95 = (v40 - 1);
          if (v40 - 1 >= a5[108])
          {
            re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 106, v40);
          }

          else if (*(a5[110] + 56 * (v40 - 1) + 24))
          {
            goto LABEL_169;
          }

          v73 = v15;
          re::DynamicArray<unsigned long>::add(a5 + 151, &v95);
          v100.n128_u64[0] = *v137;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v100.n128_i64[1], &v137[8]);
          v101[32] = 0;
          v24 = v95;
          v25 = a5[108];
          if (v25 > v95)
          {
            v74 = a5[110];
            goto LABEL_168;
          }

LABEL_212:
          v97[0] = 0;
          v123 = 0u;
          memset(v122, 0, sizeof(v122));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v157.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v157.n128_u16[6] = 1024;
          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v158) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v159) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_213:
          v97[0] = 0;
          v123 = 0u;
          memset(v122, 0, sizeof(v122));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v157.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v157.n128_u16[6] = 1024;
          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v158) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v159) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_214:
          v97[0] = 0;
          v123 = 0u;
          memset(v122, 0, sizeof(v122));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v157.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v157.n128_u16[6] = 1024;
          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v158) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v159) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_215:
          v97[0] = 0;
          v123 = 0u;
          memset(v122, 0, sizeof(v122));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v157.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v157.n128_u16[6] = 1024;
          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v158) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v159) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_216:
          v97[0] = 0;
          v123 = 0u;
          memset(v122, 0, sizeof(v122));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v157.n128_u32[0] = 136315906;
          *(v16->n128_u64 + 4) = "operator[]";
          v157.n128_u16[6] = 1024;
          *(&v16->n128_u32[3] + 2) = 789;
          WORD1(v158) = 2048;
          *(v16[1].n128_u64 + 4) = v24;
          WORD2(v159) = 2048;
          *(&v16[1].n128_u64[1] + 6) = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_217;
        case 5u:
          *v137 = a6;
          *&v137[8] = a7;
          memset(v122, 0, sizeof(v122));
          v100.n128_u32[0] = 4;
          *v101 = 0uLL;
          v100.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v100);
          v100.n128_u64[0] = v13[230] - 1;
          re::DynamicArray<unsigned long>::add(v13 + 21, &v100);
          re::DynamicArray<re::Matrix4x4<float>>::add((v13 + 61), v122);
          v20 = *(v13[25] + 8 * v13[23] - 8);
          memset(v122, 0, sizeof(v122));
          v100.n128_u64[0] = v20;
          re::DynamicArray<unsigned long>::add(v12 + 21, &v100);
          re::DynamicArray<re::Matrix4x4<float>>::add((v12 + 66), v122);
          v21 = v12[23] - 1;
          v100.n128_u64[0] = v12;
          v100.n128_u64[1] = v21;
          {
            re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
          }

          re::BindNode::bindPointWithOverride(a8, re::introspect<re::Matrix4x4<float>>(BOOL)::info, v137, v122);
          re::EvaluationContextManager::bindInputHandle<re::Matrix4x4<float>>(v100.n128_u64[0], &v100, v122);
          *(v14 + 96) = 2;
          *(v14 + 176) = v20;
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v122[0].n128_i64[1]);
          v22 = &v122[0].n128_u64[1];
          goto LABEL_170;
      }
    }

    goto LABEL_236;
  }

  if (*(a2 + 32) <= 9u)
  {
    switch(v17)
    {
      case 6u:
        v98 = a6;
        v99[0] = a7;
        v100 = xmmword_1E30474D0;
        v122[0].n128_u32[0] = 5;
        memset(&v122[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 233), v122);
        v122[0].n128_u64[0] = v13[235] - 1;
        re::DynamicArray<unsigned long>::add(v13 + 26, v122);
        re::DynamicArray<re::Vector3<float>>::add((v13 + 66), &v100);
        v9 = *(v13[30] + 8 * v13[28] - 8);
        v122[0] = xmmword_1E30474D0;
        v100.n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add(v12 + 26, &v100);
        re::DynamicArray<re::Vector3<float>>::add((v12 + 71), v122);
        v44 = v12[28];
        {
          re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        }

        v11 = v137;
        re::BindNode::bindPointWithOverride(a8, re::introspect<re::Quaternion<float>>(BOOL)::info, &v98, v137);
        if (!*&v137[24])
        {
          goto LABEL_169;
        }

        v45 = *v137;
        {
          re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        }

        if (v45 != re::introspect<re::Quaternion<float>>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v95 = (v44 - 1);
        if (v44 - 1 >= a5[118])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 116, v44);
        }

        else if (*(a5[120] + 56 * (v44 - 1) + 24))
        {
          goto LABEL_169;
        }

        v73 = v15;
        re::DynamicArray<unsigned long>::add(a5 + 161, &v95);
        v100.n128_u64[0] = *v137;
        re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v100.n128_i64[1], &v137[8]);
        v101[32] = 0;
        v24 = v95;
        v25 = a5[118];
        if (v25 > v95)
        {
          v74 = a5[120];
          goto LABEL_168;
        }

        goto LABEL_215;
      case 7u:
        v98 = a6;
        v99[0] = a7;
        v100.n128_u64[0] = 0;
        v122[0].n128_u32[0] = 6;
        memset(&v122[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 238), v122);
        v122[0].n128_u64[0] = v13[240] - 1;
        re::DynamicArray<unsigned long>::add(v13 + 31, v122);
        re::DynamicArray<unsigned long>::add(v13 + 71, &v100);
        v9 = *(v13[35] + 8 * v13[33] - 8);
        v100.n128_u64[0] = 0;
        v122[0].n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add(v12 + 31, v122);
        re::DynamicArray<unsigned long>::add(v12 + 76, &v100);
        v13 = v12[33];
        v8 = &unk_1EE187000;
        {
          re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        }

        v11 = v137;
        re::BindNode::bindPointWithOverride(a8, re::introspect<re::Vector2<float>>(BOOL)::info, &v98, v137);
        if (!*&v137[24])
        {
          goto LABEL_169;
        }

        v12 = *v137;
        {
LABEL_56:
          if (v12 != v8[48])
          {
            goto LABEL_169;
          }

          v95 = v13 - 1;
          if (v13 - 1 >= a5[123])
          {
            re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 121, v13);
          }

          else if (*(a5[125] + 56 * (v13 - 1) + 24))
          {
            goto LABEL_169;
          }

          v73 = v15;
          re::DynamicArray<unsigned long>::add(a5 + 166, &v95);
          v100.n128_u64[0] = *v137;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v100.n128_i64[1], &v137[8]);
          v101[32] = 0;
          v24 = v95;
          v25 = a5[123];
          if (v25 > v95)
          {
            v74 = a5[125];
LABEL_168:
            v75 = v74 + 56 * v24;
            *v75 = v100.n128_u64[0];
            re::DynamicArray<re::RigDataValue>::operator=(v75 + 8, &v100.n128_i64[1]);
            *(v75 + 48) = v101[32];
            re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v100.n128_i64[1]);
            re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v100.n128_i64[1]);
            v15 = v73;
            goto LABEL_169;
          }

          goto LABEL_211;
        }

LABEL_237:
        {
          v8[48] = re::introspect_Vector2F(0);
        }

        goto LABEL_56;
      case 8u:
        v98 = a6;
        v99[0] = a7;
        v100 = 0u;
        v122[0].n128_u32[0] = 7;
        memset(&v122[0].n128_i8[8], 0, 24);
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 243), v122);
        v122[0].n128_u64[0] = v13[245] - 1;
        re::DynamicArray<unsigned long>::add(v13 + 36, v122);
        re::DynamicArray<re::Vector3<float>>::add((v13 + 76), &v100);
        v9 = *(v13[40] + 8 * v13[38] - 8);
        v122[0] = 0u;
        v100.n128_u64[0] = v9;
        re::DynamicArray<unsigned long>::add(v12 + 36, &v100);
        re::DynamicArray<re::Vector3<float>>::add((v12 + 81), v122);
        v18 = v12[38];
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        }

        v11 = v137;
        re::BindNode::bindPointWithOverride(a8, re::introspect<re::Vector3<float>>(BOOL)::info, &v98, v137);
        if (!*&v137[24])
        {
          goto LABEL_169;
        }

        v19 = *v137;
        {
          {
            re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
          }
        }

        if (v19 != re::introspect<re::Vector3<float>>(BOOL)::info)
        {
          goto LABEL_169;
        }

        v95 = (v18 - 1);
        if (v18 - 1 >= a5[128])
        {
          re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a5 + 126, v18);
          goto LABEL_154;
        }

        if (!*(a5[130] + 56 * (v18 - 1) + 24))
        {
LABEL_154:
          v73 = v15;
          re::DynamicArray<unsigned long>::add(a5 + 171, &v95);
          v100.n128_u64[0] = *v137;
          re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v100.n128_i64[1], &v137[8]);
          v101[32] = 0;
          v24 = v95;
          v25 = a5[128];
          if (v25 > v95)
          {
            v74 = a5[130];
            goto LABEL_168;
          }

          goto LABEL_213;
        }

LABEL_169:
        *(v14 + 96) = 2;
        *(v14 + 176) = v9;
        re::DynamicArray<re::BindPoint::BindPointData>::deinit((v11 + 8));
        v22 = (v11 + 8);
LABEL_170:
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v22);
        goto LABEL_171;
    }

LABEL_236:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported type.", "!Unreachable code", "setCompilationValueForBoundInput", 691);
    _os_crash();
    __break(1u);
    goto LABEL_237;
  }

  v9 = a3;
  if (v17 != 10)
  {
    if (v17 == 11)
    {
      if (*(a2 + 256))
      {
        v35 = 0;
        do
        {
          v37 = re::RigDataValue::attributeValue(v14, v35);
          re::DynamicString::format("%.*s[%zu]", &v100, a7, v11, v35);
          if (v100.n128_u8[8])
          {
            v38 = *v101;
          }

          else
          {
            v38 = &v100.n128_i8[9];
          }

          if (v100.n128_u8[8])
          {
            v39 = v100.n128_u64[1] >> 1;
          }

          else
          {
            v39 = v100.n128_u8[8] >> 1;
          }

          if ((v122[0].n128_u8[0] & 1) == 0 && v122[1].n128_u64[1])
          {
            if (v122[2].n128_u8[0])
            {
              (*(*v122[1].n128_u64[1] + 40))();
            }

            memset(&v122[1].n128_i8[8], 0, 32);
          }

          if (v100.n128_u64[0] && (v100.n128_u8[8] & 1) != 0)
          {
            (*(*v100.n128_u64[0] + 40))();
          }

          ++v35;
          v14 = a2;
        }

        while (v35 < *(a2 + 256));
      }

      v15 = a1;
      goto LABEL_171;
    }

    if (v17 == 13)
    {
      if (*(a2 + 40) >> 1 == 82389)
      {
        v23 = *(a2 + 48);
        if (v23 == "SRT" || !strcmp(v23, "SRT"))
        {
          *v137 = v11;
          *&v137[8] = a7;
          v122[0].n128_u64[1] = 1065353216;
          v122[0].n128_u64[0] = 0x3F8000003F800000;
          v122[1].n128_u64[1] = 0x3F80000000000000;
          v122[1].n128_u64[0] = 0;
          v122[2] = 0uLL;
          re::EvaluationTree::createInputRegister(v13, v122, &v100);
          v122[0].n128_u64[1] = 1065353216;
          v122[0].n128_u64[0] = 0x3F8000003F800000;
          v122[1].n128_u64[1] = 0x3F80000000000000;
          v122[1].n128_u64[0] = 0;
          v122[2] = 0uLL;
          re::DynamicArray<re::EvaluationSRT>::add((a5 + 41), &v100);
          re::DynamicArray<re::Matrix3x3<float>>::add((a5 + 86), v122);
          v66 = a5[43] - 1;
          v157.n128_u64[0] = a5;
          v157.n128_u64[1] = v66;
          {
            re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
          }

          re::BindNode::bindPointWithOverride(a8, re::introspect<re::GenericSRT<float>>(BOOL)::info, v137, v122);
          re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(v157.n128_u64[0], &v157, v122, 0);
          v67 = re::RigDataValue::attributeValue(v14, 0);
          v68 = v100.n128_u64[0];
          *(v67 + 96) = 2;
          *(v67 + 176) = v68;
          v69 = re::RigDataValue::attributeValue(v14, 1uLL);
          v70 = v100.n128_u64[1];
          *(v69 + 96) = 2;
          *(v69 + 176) = v70;
          v71 = re::RigDataValue::attributeValue(v14, 2uLL);
          v72 = *v101;
          *(v71 + 96) = 2;
          *(v71 + 176) = v72;
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v122[0].n128_i64[1]);
          v22 = &v122[0].n128_u64[1];
          goto LABEL_170;
        }
      }

      v87 = v15;
      if (!*(v14 + 256))
      {
LABEL_43:
        v15 = v87;
LABEL_171:
        *v15 = 1;
        return;
      }

      v16 = 0;
      v24 = 8;
      v25 = "%.*s.%s";
      while (1)
      {
        v26 = re::RigDataValue::attributeValue(v14, v16);
        v27 = v14;
        v28 = *(v14 + 72);
        if (v28 <= v16)
        {
          break;
        }

        v29 = v26;
        re::DynamicString::format("%.*s.%s", v122, a7, v11, *(*(v27 + 88) + v24));
        if (v122[0].n128_u8[8])
        {
          v30 = v122[1].n128_u64[0];
        }

        else
        {
          v30 = &v122[0].n128_i8[9];
        }

        if (v122[0].n128_u8[8])
        {
          v31 = v122[0].n128_u64[1] >> 1;
        }

        else
        {
          v31 = v122[0].n128_u8[8] >> 1;
        }

        if ((v100.n128_u8[0] & 1) == 0 && *&v101[8])
        {
          if (v101[16])
          {
            (*(**&v101[8] + 40))();
          }

          memset(&v101[8], 0, 32);
        }

        if (v122[0].n128_u64[0] && (v122[0].n128_u8[8] & 1) != 0)
        {
          (*(*v122[0].n128_u64[0] + 40))();
        }

        v16 = (v16 + 1);
        v14 = a2;
        v24 += 32;
        if (v16 >= *(a2 + 256))
        {
          goto LABEL_43;
        }
      }

      v157.n128_u64[0] = 0;
      v123 = 0u;
      memset(v122, 0, sizeof(v122));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      *&v137[14] = 797;
      *&v137[18] = 2048;
      *&v137[20] = v16;
      *&v137[28] = 2048;
      *&v137[30] = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_211:
      v97[0] = 0;
      v123 = 0u;
      memset(v122, 0, sizeof(v122));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v157.n128_u32[0] = 136315906;
      *(v16->n128_u64 + 4) = "operator[]";
      v157.n128_u16[6] = 1024;
      *(&v16->n128_u32[3] + 2) = 789;
      WORD1(v158) = 2048;
      *(v16[1].n128_u64 + 4) = v24;
      WORD2(v159) = 2048;
      *(&v16[1].n128_u64[1] + 6) = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_212;
    }

    goto LABEL_236;
  }

  memset(v101, 0, sizeof(v101));
  v100 = 0u;
  v102 = 0x7FFFFFFFLL;
  memset(v103, 0, sizeof(v103));
  v104 = 0;
  v105 = 0x7FFFFFFFLL;
  memset(v106, 0, sizeof(v106));
  v121 = 0;
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  v114 = 0;
  v113 = 0u;
  v112 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0;
  v118 = 0u;
  v119 = 0u;
  v120 = 0;
  {
    re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
  }

  re::BindNode::bindPointWithOverride(a8, re::introspect<re::SkeletalPose>(BOOL)::info, &v91, &v98);
  v46 = re::BindPoint::valueUntyped(&v98);
  if (!v46 || (v47 = *(v46 + 10)) == 0 || !*(v47 + 40))
  {
    v122[0].n128_u64[0] = ".";
    v122[0].n128_u64[1] = 1;
    re::StringSlice::findLastOf(&v91, v122, 0, v97);
    v122[0].n128_u64[0] = "]";
    v122[0].n128_u64[1] = 1;
    re::StringSlice::findLastOf(&v91, v122, 0, &v95);
    v122[0].n128_u64[0] = "[";
    v122[0].n128_u64[1] = 1;
    LastOf = re::StringSlice::findLastOf(&v91, v122, 0, v93);
    if (LOBYTE(v97[0]) == 1 && v95 == 1 && v93[0] == 1 && v96 > v94)
    {
      v52 = v15;
      v122[0].n128_u64[0] = re::Slice<char>::range(&v91, 0, v97[1]);
      v122[0].n128_u64[1] = v53;
      {
        re::introspect<re::ecs2::SkeletalPoseComponent>(BOOL)::info = re::ecs2::introspect_SkeletalPoseComponent(0);
      }

      re::BindNode::bindPoint(a8, re::introspect<re::ecs2::SkeletalPoseComponent>(BOOL)::info, v122, v137);
      v54 = re::BindPoint::valueUntyped(v137);
      if (!v54)
      {
        v122[0].n128_u8[0] = 0;
        v122[0].n128_u64[1] = 6002;
        v122[1].n128_u64[0] = &re::AnimationErrorCategory(void)::instance;
        *(&v122[1] + 8) = v157;
        v122[2].n128_u64[1] = v158;
        v122[3].n128_u64[0] = v159;
LABEL_209:
        v15 = v52;
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v137[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v137[8]);
        goto LABEL_174;
      }

      v55 = v54;
      v56 = *(*(v54 + 16) + 192);
      if (v56)
      {
        v57 = re::AssetHandle::loadedAsset<re::MeshAsset>((v56 + 32));
        if (v57)
        {
          v58 = v57;
          v59 = v96 - (v94 + 1);
          v60 = re::Slice<char>::operator[](v91, v92, v94 + 1);
          if (v157.n128_u8[8])
          {
            v61 = v158;
          }

          else
          {
            v61 = &v157.n128_i8[9];
          }

          v62 = atoi(v61);
          v63 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((v55 + 32));
          if (v63)
          {
            v64 = v63;
          }

          else
          {
            v64 = (v55 + 152);
          }

          RigHierarchyForPose = re::RigRuntimeData::makeRigHierarchyForPose(v122, v58, v64, v62, &v98, v9, v13, a5);
          if (v157.n128_u64[0] && (v157.n128_u8[8] & 1) != 0)
          {
            (*(*v157.n128_u64[0] + 40))(RigHierarchyForPose);
          }

          goto LABEL_209;
        }
      }

      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v137[8]);
      LastOf = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v137[8]);
      v15 = v52;
    }

    v122[0].n128_u8[0] = 0;
    v122[0].n128_u64[1] = 6002;
    v122[1].n128_u64[0] = &re::AnimationErrorCategory(void)::instance;
    *(&v122[1] + 8) = *v137;
    v122[2].n128_u64[1] = *&v137[16];
    v122[3].n128_u64[0] = *&v137[24];
    goto LABEL_174;
  }

  v48 = re::RigHierarchy::bindRigHierarchyPose(&v100, v13, v12, &v98, &v157);
  if ((v157.n128_u8[0] & 1) == 0 && v159)
  {
    if (BYTE8(v159))
    {
      (*(*v159 + 40))(v48);
    }

    v160 = 0u;
    v159 = 0u;
  }

  re::RigHierarchy::RigHierarchy(v137, &v100);
  v122[0].n128_u8[0] = 1;
  re::RigHierarchy::RigHierarchy(&v122[0].n128_i64[1], v137);
  if (v152)
  {
    if (v156)
    {
      (*(*v152 + 40))();
    }

    v156 = 0;
    v153 = 0;
    v154 = 0;
    v152 = 0;
    ++v155;
  }

  if (v147)
  {
    if (v151)
    {
      (*(*v147 + 40))();
    }

    v151 = 0;
    v148 = 0;
    v149 = 0;
    v147 = 0;
    ++v150;
  }

  if (v142)
  {
    if (v146)
    {
      (*(*v142 + 40))();
    }

    v146 = 0;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    ++v145;
  }

  re::DynamicArray<re::StringID>::deinit(&v141);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v140);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(&v139);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v138);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v137[24]);
LABEL_174:
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v99);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v99);
  if (*(&v118 + 1))
  {
    if (v121)
    {
      (*(**(&v118 + 1) + 40))();
    }

    v121 = 0;
    v119 = 0uLL;
    *(&v118 + 1) = 0;
    ++v120;
  }

  if (*(&v115 + 1))
  {
    if (v118)
    {
      (*(**(&v115 + 1) + 40))();
    }

    *&v118 = 0;
    v116 = 0uLL;
    *(&v115 + 1) = 0;
    ++v117;
  }

  if (*(&v112 + 1))
  {
    if (v115)
    {
      (*(**(&v112 + 1) + 40))();
    }

    *&v115 = 0;
    v113 = 0uLL;
    *(&v112 + 1) = 0;
    ++v114;
  }

  re::DynamicArray<re::StringID>::deinit(v110 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v108[8]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v106);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v103);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v101[8]);
  v76 = v122[0].n128_u8[0];
  if (v122[0].n128_u8[0])
  {
    v77 = *(a2 + 184);
    v78 = *(v122 + 8);
    *(v77 + 16) = v122[1].n128_u64[1];
    *v77 = v78;
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v77 + 24), &v122[2]);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v77 + 72), v124);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v77 + 120, v125);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v77 + 160, v126);
    re::DynamicArray<re::StringID>::operator=(v77 + 200, v127);
    re::DynamicArray<unsigned long>::operator=(v77 + 240, v128);
    re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v77 + 280, v131);
    re::DynamicArray<unsigned long>::operator=(v77 + 320, v134);
  }

  else
  {
    v100 = *(v122 + 8);
    re::DynamicString::DynamicString(v101, &v122[1].n128_i8[8]);
    v79 = *&v101[16];
    *v15 = 0;
    v80 = *v101;
    *(v15 + 8) = v100;
    *(v15 + 24) = v80;
    *(v15 + 40) = v79;
  }

  if (v122[0].n128_u8[0] == 1)
  {
    if (v134[0])
    {
      if (v136)
      {
        (*(*v134[0] + 40))();
      }

      v136 = 0;
      memset(v134, 0, sizeof(v134));
      ++v135;
    }

    if (v131[0])
    {
      if (v133)
      {
        (*(*v131[0] + 40))();
      }

      v133 = 0;
      memset(v131, 0, sizeof(v131));
      ++v132;
    }

    if (v128[0])
    {
      if (v130)
      {
        (*(*v128[0] + 40))();
      }

      v130 = 0;
      memset(v128, 0, sizeof(v128));
      ++v129;
    }

    re::DynamicArray<re::StringID>::deinit(v127);
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v126);
    re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v125);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v124);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v122[2]);
  }

  else if (v122[1].n128_u64[1] && (v122[2].n128_u8[0] & 1) != 0)
  {
    (*(*v122[1].n128_u64[1] + 40))();
  }

  if (v76)
  {
    goto LABEL_171;
  }
}

uint64_t re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(a1);
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

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void re::EvaluationContextManager::bindInputHandle<re::Matrix4x4<float>>(void *a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3[3])
  {
    v5 = *a3;
    v6 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    {
      *v13 = a2;
      v6 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      a2 = *v13;
      if (v12)
      {
        re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
        v6 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
        a2 = *v13;
      }
    }

    if (v5 == *(v6 + 131))
    {
      v7 = *(a2 + 8);
      v17[0] = v7;
      if (v7 >= a1[113])
      {
        re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a1 + 111, v7 + 1);
      }

      else if (*(a1[115] + 56 * v7 + 24))
      {
        return;
      }

      re::DynamicArray<unsigned long>::add(a1 + 156, v17);
      v14 = *a3;
      re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v15, a3 + 1);
      v16 = 0;
      v8 = v17[0];
      v9 = a1[113];
      if (v9 <= v17[0])
      {
        v17[1] = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v11 = v9;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 789;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[115] + 56 * v17[0];
      *v10 = v14;
      re::DynamicArray<re::RigDataValue>::operator=(v10 + 8, v15);
      *(v10 + 48) = v16;
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
    }
  }
}

uint64_t re::Slice<char>::operator[](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return a1 + a3;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, a2, v3, v4);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigRuntimeData::RigGraphRunTimeBoundParameter>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = (v8 + 24 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v13 = *(v8 + 2);
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = &str_67;
          v11[2] = v13;
          re::StringID::destroyString(v8);
          v8 = (v8 + 24);
          v11 += 3;
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

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 24 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 24 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 16) = a3;
  ++*(a1 + 28);
  return v7 + 24 * v5;
}

void re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, a2);
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
      re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 16) % *(v4 + 24));
        v7 = *(a2 + 16);
        *(result + 4) = *(v7 + v5 + 4);
        *(result + 8) = *(v7 + v5 + 8);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::RigHierarchy::RigHierarchy(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 60) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 24), a2 + 3);
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 108) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 72), a2 + 9);
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  v5 = *(a2 + 16);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = v5;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v6 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 17) = v6;
  v7 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 19);
  *(a2 + 19) = v7;
  ++*(a2 + 36);
  ++*(a1 + 144);
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  v8 = *(a2 + 21);
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 168) = v8;
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  v9 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 22);
  *(a2 + 22) = v9;
  v10 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 24);
  *(a2 + 24) = v10;
  ++*(a2 + 46);
  ++*(a1 + 184);
  *(a1 + 232) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  v11 = *(a2 + 26);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 208) = v11;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  v12 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 27);
  *(a2 + 27) = v12;
  v13 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 29) = v13;
  ++*(a2 + 56);
  ++*(a1 + 224);
  *(a1 + 272) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  v14 = *(a2 + 31);
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 248) = v14;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  v15 = *(a1 + 256);
  *(a1 + 256) = *(a2 + 32);
  *(a2 + 32) = v15;
  v16 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 34);
  *(a2 + 34) = v16;
  ++*(a2 + 66);
  ++*(a1 + 264);
  *(a1 + 312) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  v17 = *(a2 + 36);
  *(a1 + 280) = *(a2 + 35);
  *(a1 + 288) = v17;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  v18 = *(a1 + 296);
  *(a1 + 296) = *(a2 + 37);
  *(a2 + 37) = v18;
  v19 = *(a1 + 312);
  *(a1 + 312) = *(a2 + 39);
  *(a2 + 39) = v19;
  ++*(a2 + 76);
  ++*(a1 + 304);
  *(a1 + 352) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  v20 = *(a2 + 41);
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 328) = v20;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  v21 = *(a1 + 336);
  *(a1 + 336) = *(a2 + 42);
  *(a2 + 42) = v21;
  v22 = *(a1 + 352);
  *(a1 + 352) = *(a2 + 44);
  *(a2 + 44) = v22;
  ++*(a2 + 86);
  ++*(a1 + 344);
  return a1;
}

void re::introspect_ImageDimensionsMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1964E8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1964F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1964F0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE196568, "ImageDimensionsMode", 4, 4, 1, 1);
      qword_1EE196568 = &unk_1F5D0C658;
      qword_1EE1965A8 = &re::introspect_ImageDimensionsMode(BOOL)::enumTable;
      dword_1EE196578 = 9;
      __cxa_guard_release(&qword_1EE1964F0);
    }

    if (_MergedGlobals_77)
    {
      break;
    }

    _MergedGlobals_77 = 1;
    re::IntrospectionRegistry::add(&qword_1EE196568, a2);
    v35 = 0xFF96F997A9010256;
    v36 = "ImageDimensionsMode";
    v39 = 0x607DD0F01DCLL;
    v40 = "uint32_t";
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
      v6 = qword_1EE1965A8;
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
      xmmword_1EE196588 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1964E8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "UseSource";
      qword_1EE196530 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "DownsampleFactor";
      qword_1EE196538 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "UseOverride";
      qword_1EE196540 = v34;
      __cxa_guard_release(&qword_1EE1964E8);
    }
  }
}

void re::introspect_TextureMipmapMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1964F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE196500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196500))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1965B0, "TextureMipmapMode", 4, 4, 1, 1);
      qword_1EE1965B0 = &unk_1F5D0C658;
      qword_1EE1965F0 = &re::introspect_TextureMipmapMode(BOOL)::enumTable;
      dword_1EE1965C0 = 9;
      __cxa_guard_release(&qword_1EE196500);
    }

    if (byte_1EE1964E1)
    {
      break;
    }

    byte_1EE1964E1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1965B0, a2);
    v37 = 0xE21B701012C6474CLL;
    v38 = "TextureMipmapMode";
    v41 = 0x607DD0F01DCLL;
    v42 = "uint32_t";
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
      v6 = qword_1EE1965F0;
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
      xmmword_1EE1965D0 = v39;
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
    v28 = __cxa_guard_acquire(&qword_1EE1964F8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 2;
      *(v30 + 2) = "None";
      qword_1EE196548 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "AllocateOnly";
      qword_1EE196550 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 0;
      *(v34 + 2) = "AllocateAndGenerateOnGPU";
      qword_1EE196558 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "AllocateAndGenerateOnCPU";
      qword_1EE196560 = v36;
      __cxa_guard_release(&qword_1EE1964F8);
    }
  }
}

void *re::allocInfo_TextureLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196508))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196640, "TextureLoadDescriptorParameters");
    __cxa_guard_release(&qword_1EE196508);
  }

  return &unk_1EE196640;
}

void re::initInfo_TextureLoadDescriptorParameters(re *this, re::IntrospectionBase *a2)
{
  v40[0] = 0x3CC0D7AC778599B4;
  v40[1] = "TextureLoadDescriptorParameters";
  if (v40[0])
  {
    if (v40[0])
    {
    }
  }

  *(this + 2) = v41;
  if ((atomic_load_explicit(&qword_1EE196510, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196510);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "bundle";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1965F8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "resource";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196600 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_TextureSemantic(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "semantic";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE196608 = v17;
      v18 = re::introspectionAllocator(v17);
      re::introspect_ImageDimensionsMode(v18, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "dimensionsMode";
      *(v20 + 16) = &qword_1EE196568;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4400000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE196610 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_int(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "downsampleFactor";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x4800000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE196618 = v24;
      v25 = re::introspectionAllocator(v24);
      re::introspect_TextureMipmapMode(v25, v26);
      v27 = (*(*v25 + 32))(v25, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "mipmapMode";
      *(v27 + 16) = &qword_1EE1965B0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x4C00000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE196620 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::IntrospectionInfo<re::DynamicString>::get(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "aliasName";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x5000000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE196628 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_TextureCompressionType(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "compressionType";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x7000000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE196630 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = re::introspect_ASTCCompressionOptions(1);
      v38 = (*(*v36 + 32))(v36, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "astcCompressionOptions";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x7400000009;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE196638 = v38;
      __cxa_guard_release(&qword_1EE196510);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1965F8;
  *(this + 9) = re::internal::defaultConstruct<re::TextureLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TextureLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::TextureLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::TextureLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v39 = v41;
}

void *re::internal::defaultConstruct<re::TextureLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[3] = 0u;
  v3[2] = 0u;
  v5 = re::DynamicString::setCapacity(v3 + 4, 0);
  v3[5] = 0u;
  v3[6] = 0u;
  v3 += 5;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 12) = 0;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
  return result;
}

double re::internal::defaultDestruct<re::TextureLoadDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 80));
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::TextureLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 3) = 0u;
  *(v1 + 2) = 0u;
  v3 = re::DynamicString::setCapacity(v1 + 4, 0);
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  v1 = (v1 + 80);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 12) = 0;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::TextureLoadDescriptorParameters>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 80));
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

uint64_t re::TextureAssetProvider::TextureAssetProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 40) = 0;
  v6 = (a1 + 40);
  *a1 = &unk_1F5CC4BF8;
  *(a1 + 48) = 0;
  v7 = (a1 + 48);
  *(a1 + 56) = 65793;
  *(a1 + 61) = 1;
  v8 = a1 + 61;
  *(a1 + 64) = 0;
  if ((atomic_load_explicit(&qword_1EE196528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196528))
  {
    qword_1EE196520 = re::internal::getOrCreateInfo("TextureLoadDescriptorParameters", re::allocInfo_TextureLoadDescriptorParameters, re::initInfo_TextureLoadDescriptorParameters, &unk_1EE196518, 0);
    v8 = a1 + 61;
    __cxa_guard_release(&qword_1EE196528);
  }

  re::TextureAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE196520;
  *(a1 + 24) = a3;
  *(a1 + 32) = a2;
  v9 = re::ServiceLocator::serviceOrNull<re::ImportGraphicsResources>(a3);
  if (v9)
  {
    re::ImportGraphicsContext::ImportGraphicsContext(&v15, v9);
    if (v6 != &v15)
    {
      v10 = v15;
      v15 = 0;
      v11 = *v6;
      *v6 = v10;
    }

    if (v7 != &v16)
    {
      v12 = v16;
      v16 = 0;
      v13 = *v7;
      *v7 = v12;
    }

    *(a1 + 56) = v17;
    *(a1 + 58) = v18;
    if (*(a1 + 59))
    {
      if ((v19 & 1) == 0)
      {
        *(a1 + 59) = 0;
LABEL_14:
        *v8 = *v21;
        *(v8 + 7) = *&v21[7];

        goto LABEL_15;
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      *(a1 + 59) = 1;
    }

    *(a1 + 60) = v20;
    goto LABEL_14;
  }

  re::ServiceLocator::serviceOrNull<re::RenderManager>(a3);
LABEL_15:
  *(a1 + 72) = *(a2 + 2008);
  return a1;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ImportGraphicsResources>(uint64_t a1)
{
  {
    re::introspect<re::ImportGraphicsResources>(BOOL)::info = re::introspect_ImportGraphicsResources(0);
  }

  v2 = re::introspect<re::ImportGraphicsResources>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

void re::TextureAssetProvider::~TextureAssetProvider(re::TextureAssetProvider *this)
{
  *this = &unk_1F5CC4BF8;
  *(this + 9) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::TextureAssetProvider::~TextureAssetProvider(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::TextureAssetProvider::makeDescriptor@<X0>(re::TextureAssetProvider *this@<X0>, const re::DynamicString *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v9 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v30 = "TextureImage";
  v31 = 12;
  v10 = re::DynamicString::operator=(a4, &v30);
  v11 = *re::TextureAsset::assetType(v10);
  v12 = strlen(v11);
  v30 = v11;
  v31 = v12;
  v13 = re::DynamicString::operator=((a4 + 112), &v30);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v14 = re::DynamicString::setCapacity(&v30, 0);
  *(&v34 + 1) = 0;
  v35 = 0uLL;
  v15 = re::DynamicString::setCapacity(&v34, 0);
  *(&v37 + 1) = 0;
  v38 = 0uLL;
  re::DynamicString::setCapacity(&v37, 0);
  *&v39[16] = 0;
  *&v39[4] = 0;
  v39[12] = 0;
  re::DynamicString::operator=(&v30, this);
  re::DynamicString::operator=(&v34, a2);
  v16 = *(a3 + 2);
  LODWORD(v36) = *(a3 + 14);
  DWORD1(v36) = v16;
  *(&v36 + 1) = *(a3 + 2);
  *v39 = *(a3 + 6);
  *&v39[4] = *(a3 + 28);
  re::DynamicString::DynamicString(v24, &v30);
  re::DynamicString::DynamicString(v25, &v34);
  v26 = v36;
  re::DynamicString::DynamicString(v27, &v37);
  v28 = *v39;
  v29 = *&v39[16];
  re::AssetLoadDescriptor::setIntrospectableData(a4, re::TextureAssetProvider::s_loadDescriptorParametersIntrospect, v24, 0);
  if (v27[0])
  {
    if (v27[1])
    {
      (*(*v27[0] + 40))();
    }

    memset(v27, 0, sizeof(v27));
  }

  if (v25[0])
  {
    if (v25[1])
    {
      (*(*v25[0] + 40))();
    }

    memset(v25, 0, sizeof(v25));
  }

  if (*&v24[0])
  {
    if (BYTE8(v24[0]))
    {
      (*(**&v24[0] + 40))();
    }

    memset(v24, 0, sizeof(v24));
  }

  if (v37)
  {
    if (BYTE8(v37))
    {
      (*(*v37 + 40))(v37, v38, v17, v18, v19, v20, v21, v22);
    }

    v37 = 0u;
    v38 = 0u;
  }

  if (v34)
  {
    if (BYTE8(v34))
    {
      (*(*v34 + 40))(v34, v35, v17, v18, v19, v20, v21, v22);
    }

    v34 = 0u;
    v35 = 0u;
  }

  result = v30;
  if (v30)
  {
    if (v31)
    {
      return (*(*v30 + 40))(v30, v32, v17, v18, v19, v20, v21, v22);
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::TextureLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE196528, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE196528);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE196520 = re::internal::getOrCreateInfo("TextureLoadDescriptorParameters", re::allocInfo_TextureLoadDescriptorParameters, re::initInfo_TextureLoadDescriptorParameters, &unk_1EE196518, 0);
      __cxa_guard_release(&qword_1EE196528);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE196520;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

re::DynamicString *re::TextureAssetProvider::load@<X0>(os_unfair_lock_s **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v8 = re::DynamicString::setCapacity(&v70, 0);
  *(&v74 + 1) = 0;
  v75 = 0uLL;
  v9 = re::DynamicString::setCapacity(&v74, 0);
  *(&v79 + 1) = 0;
  v80 = 0uLL;
  re::DynamicString::setCapacity(&v79, 0);
  v83 = 0;
  v81 = 0;
  v82 = 0;
  if (*(a2 + 1))
  {
    v10 = *(a2 + 2);
  }

  else
  {
    v10 = a2 + 9;
  }

  v11 = strcmp(v10, "TextureImage");
  v12 = v11;
  v13 = *re::TextureAsset::assetType(v11);
  if (*(a2 + 15))
  {
    v14 = *(a2 + 16);
  }

  else
  {
    v14 = a2 + 121;
  }

  v15 = strcmp(v14, v13);
  if (v12 | v15)
  {
    v16 = "TextureAssetProvider called with invalid scheme name/type.";
LABEL_21:
    v68 = 0;
    *v69 = v59[0];
    *&v69[16] = v59[1];
LABEL_22:
    re::DynamicString::DynamicString(v59, v69);
    *a3 = 0;
    v21 = *(&v59[1] + 1);
    *(a3 + 8) = *&v59[0];
    *(a3 + 32) = v21;
    *(a3 + 16) = *(v59 + 8);
    goto LABEL_23;
  }

  v17 = re::AssetLoadDescriptor::getIntrospectableData<re::TextureLoadDescriptorParameters>(a2, &v70);
  if ((v17 & 1) == 0)
  {
    v16 = "Failed to deserialize parameters.";
    goto LABEL_21;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  re::DynamicString::setCapacity(&v42, 0);
  if (BYTE8(v79))
  {
    v18 = *(&v79 + 1) >> 1;
  }

  else
  {
    v18 = BYTE8(v79) >> 1;
  }

  if (v18)
  {
    v19 = this[9];
    re::DynamicString::DynamicString(&v49, &v79);
    re::NamedFileRegistry::tryGetFilePathFor(v19, &v49, v59);
    if (v49)
    {
      if (BYTE8(v49))
      {
        (*(*v49 + 40))();
      }

      v49 = 0u;
      v50 = 0u;
    }

    v20 = v59[0];
    if (v59[0])
    {
      re::DynamicString::operator=(&v42, (v59 + 8));
    }

    else
    {
      if (BYTE8(v79))
      {
        v27 = v80;
      }

      else
      {
        v27 = &v79 + 9;
      }

      re::DynamicString::format("No file found for Alias: '%s'", v37, v27);
      v68 = 0;
      *v69 = v37[0];
      *&v69[16] = v37[1];
    }

    if (LOBYTE(v59[0]) == 1 && *(&v59[0] + 1) && (v59[1] & 1) != 0)
    {
      (*(**(&v59[0] + 1) + 40))();
    }

    if (v20)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v23 = *&this[4][504]._os_unfair_lock_opaque;
    re::DynamicString::DynamicString(v36, &v70);
    re::BundleFilePathRegistry::findWithBundleID(v23, v36, &v84);
    v24 = *&v36[0];
    if (*&v36[0])
    {
      if (BYTE8(v36[0]))
      {
        v24 = (*(**&v36[0] + 40))();
      }

      memset(v36, 0, 32);
    }

    if (v84)
    {
      if (BYTE8(v74))
      {
        v25 = v75;
      }

      else
      {
        v25 = &v74 + 9;
      }

      v26 = re::Bundle::pathForResource(&v84, v25, &v42);
      if (v26)
      {

LABEL_57:
        re::DynamicString::DynamicString(v59, &v42);
        v68 = 1;
        *v69 = *&v59[0];
        *&v69[24] = *(&v59[1] + 1);
        *&v69[8] = *(v59 + 8);
        goto LABEL_64;
      }

      v28 = &v74;
    }

    else
    {
      v28 = &v70;
    }

    re::DynamicString::operator+(v37, v28, v59);
    v29 = v59[0];
    memset(v59, 0, 32);
    v68 = 0;
    *v69 = v29;
    *&v69[16] = v59[1];
    if (*&v37[0] && (BYTE8(v37[0]) & 1) != 0)
    {
      (*(**&v37[0] + 40))();
    }
  }

LABEL_64:
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))();
  }

  if ((v68 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v69[8])
  {
    v30 = *&v69[16];
  }

  else
  {
    v30 = &v69[9];
  }

  re::FileTextureProvider::FileTextureProvider(v59, (this + 5), LOBYTE(this[4][544]._os_unfair_lock_opaque), v30);
  v49 = v59[3];
  v50 = v59[4];
  *v51 = v60[0];
  *&v51[12] = *(v60 + 12);
  v52 = v61;
  v53 = v62;
  v54 = v63;
  re::FixedArray<short>::FixedArray(&v55, v64);
  v58 = v65;
  DWORD2(v49) = v77;
  *&v50 = v78;
  *&v51[24] = v76;
  if (v76 == 6)
  {
    if (v49 == 2)
    {
      LODWORD(v49) = 0;
    }

    if (DWORD1(v49) == 3)
    {
      DWORD1(v49) = 0;
    }
  }

  else
  {
    *&v49 = 0x300000002;
  }

  re::TextureProvider::setOptions(v59, &v49);
  re::TextureAssetLoader::createTextureAssetDataFromProvider(v59, &v42);
  if (v42)
  {
    TextureAsset = re::TextureAsset::makeTextureAsset((this + 5), &v46, &v47, *(v48 + 88), *(v48 + 56));
    if (TextureAsset)
    {
      v32 = TextureAsset;
      memset(v37, 0, sizeof(v37));
      re::DynamicString::setCapacity(v37, 0);
      v40 = 0;
      v41 = 0;
      v38 = v32;
      v39 = 0;
      re::DynamicString::operator=(v37, (a2 + 112));
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v39, v48);
      re::types::Ok<re::AssetLoadResult>::Ok(v36, v37);
      *a3 = 1;
      *(a3 + 8) = *&v36[0];
      *(a3 + 32) = *(&v36[1] + 1);
      *(a3 + 16) = *(v36 + 8);
      v33 = v36[3];
      *(a3 + 40) = v36[2];
      *(a3 + 56) = v33;
      if (v39)
      {

        v39 = 0;
      }

      if (*&v37[0] && (BYTE8(v37[0]) & 1) != 0)
      {
        (*(**&v37[0] + 40))();
      }
    }

    else
    {
      v34 = v37[0];
      v35 = v37[1];
      *a3 = 0;
      *(a3 + 8) = v34;
      *(a3 + 24) = v35;
    }
  }

  else
  {
    re::DynamicString::DynamicString(v37, &v43);
    *a3 = 0;
    *(a3 + 8) = *&v37[0];
    *(a3 + 32) = *(&v37[1] + 1);
    *(a3 + 16) = *(v37 + 8);
  }

  if (v42 == 1)
  {
    (*v43)(&v43);
  }

  else if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))();
  }

  if (v55)
  {
    if (v56)
    {
      (*(*v55 + 40))();
      v56 = 0;
      v57 = 0;
    }

    v55 = 0;
  }

  *&v59[0] = &unk_1F5CC4C98;
  if (v66)
  {
    if (BYTE8(v66))
    {
      (*(*v66 + 40))();
    }

    v66 = 0u;
    v67 = 0u;
  }

  re::TextureProvider::~TextureProvider(v59);
LABEL_23:
  if (*v69 && (v69[8] & 1) != 0)
  {
    (*(**v69 + 40))();
  }

  if (v79)
  {
    if (BYTE8(v79))
    {
      (*(*v79 + 40))();
    }

    v79 = 0u;
    v80 = 0u;
  }

  if (v74)
  {
    if (BYTE8(v74))
    {
      (*(*v74 + 40))();
    }

    v74 = 0u;
    v75 = 0u;
  }

  result = v70;
  if (v70)
  {
    if (v71)
    {
      return (*(*v70 + 40))();
    }
  }

  return result;
}

__n128 re::TextureAssetProvider::resolveChild@<Q0>(re::TextureAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v9;
  v7 = v10;
  v8 = v11;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

re::DynamicString *re::TextureAssetProvider::getDescription(re::TextureAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v5 = re::DynamicString::setCapacity(&v31, 0);
  *(&v35 + 1) = 0;
  v36 = 0uLL;
  v6 = re::DynamicString::setCapacity(&v35, 0);
  *(&v41 + 1) = 0;
  v42 = 0uLL;
  re::DynamicString::setCapacity(&v41, 0);
  v45 = 0;
  v43 = 0;
  v44 = 0;
  if (!re::AssetLoadDescriptor::getIntrospectableData<re::TextureLoadDescriptorParameters>(a2, &v31))
  {
    v29 = "mangled";
    v30[0] = 7;
    re::DynamicString::operator=(a3, &v29);
    goto LABEL_43;
  }

  if (BYTE8(v41))
  {
    v7 = *(&v41 + 1) >> 1;
  }

  else
  {
    v7 = BYTE8(v41) >> 1;
  }

  if (v7)
  {
    v29 = "AliasName:";
    v30[0] = 10;
    re::DynamicString::operator=(a3, &v29);
    v8 = &v41;
  }

  else
  {
    v9 = re::DynamicString::operator=(a3, &v31);
    re::DynamicString::append(v9, "/", 1uLL);
    v8 = &v35;
  }

  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = v8 + 9;
  v13 = (v10 & 1) == 0;
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v10 >> 1;
  v16 = v10 >> 1;
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  re::DynamicString::append(a3, v14, v17);
  if (v37 <= 6)
  {
    v18 = strlen(off_1E871B0E0[v37]);
    re::DynamicString::append(a3, off_1E871B0E0[v37], v18);
  }

  if (v38 == 2)
  {
    v19 = "/override";
    v20 = a3;
    v21 = 9;
LABEL_31:
    re::DynamicString::append(v20, v19, v21);
    goto LABEL_32;
  }

  if (v38 != 1)
  {
    if (v38)
    {
      goto LABEL_32;
    }

    v19 = "/source";
    v20 = a3;
    v21 = 7;
    goto LABEL_31;
  }

  re::DynamicString::format("/downsample=%d", &v29, v39);
  v22 = v30[0] & 1;
  if (v30[0])
  {
    v23 = v30[1];
  }

  else
  {
    v23 = v30 + 1;
  }

  if (v30[0])
  {
    v24 = v30[0] >> 1;
  }

  else
  {
    v24 = LOBYTE(v30[0]) >> 1;
  }

  re::DynamicString::append(a3, v23, v24);
  if (v29 && v22)
  {
    (*(*v29 + 40))();
  }

LABEL_32:
  if (v40 <= 1)
  {
    if (v40)
    {
      if (v40 != 1)
      {
        goto LABEL_43;
      }

      v25 = "/allocate";
      v26 = a3;
      v27 = 9;
      goto LABEL_42;
    }

    v25 = "/GPU";
    goto LABEL_41;
  }

  if (v40 == 3)
  {
    v25 = "/CPU";
LABEL_41:
    v26 = a3;
    v27 = 4;
    goto LABEL_42;
  }

  if (v40 != 2)
  {
    goto LABEL_43;
  }

  v25 = "/-";
  v26 = a3;
  v27 = 2;
LABEL_42:
  re::DynamicString::append(v26, v25, v27);
LABEL_43:
  if (v41)
  {
    if (BYTE8(v41))
    {
      (*(*v41 + 40))();
    }

    v41 = 0u;
    v42 = 0u;
  }

  if (v35)
  {
    if (BYTE8(v35))
    {
      (*(*v35 + 40))();
    }

    v35 = 0u;
    v36 = 0u;
  }

  result = v31;
  if (v31)
  {
    if (v32)
    {
      return (*(*v31 + 40))();
    }
  }

  return result;
}

void re::TextureProvider::~TextureProvider(re::TextureProvider *this)
{
  *this = &unk_1F5D0B348;
  re::internal::TextureProviderProperties::~TextureProviderProperties((this + 216));

  re::FixedArray<CoreIKTransform>::deinit(this + 18);
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  re::DynamicString::deinit((this + 8));
}

{
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::ResourceTextureProvider::~ResourceTextureProvider(re::ResourceTextureProvider *this)
{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

__n128 re::TextureProvider::tryReadHeaderBytes@<Q0>(re::TextureProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v7;
  v5 = v8;
  v6 = v9;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

const void *re::TextureProvider::tryCreateOrDetachImage(re::TextureProvider *this)
{
  v1 = (*(*this + 56))(this);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

uint64_t re::TextureProvider::doneWithSource(re::TextureProvider *this)
{
  result = *(this + 22);
  if (result)
  {
    result = (*(result + 16))();
    *(this + 22) = 0;
  }

  return result;
}

uint64_t *re::ARReferenceObjectAsset::assetType(re::ARReferenceObjectAsset *this)
{
  {
    re::ARReferenceObjectAsset::assetType(void)::type = "ARReferenceObject";
    qword_1EE1C68A0 = 0;
    re::AssetType::generateCompiledExtension(&re::ARReferenceObjectAsset::assetType(void)::type);
  }

  return &re::ARReferenceObjectAsset::assetType(void)::type;
}

BOOL re::ARReferenceObjectAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (!v3)
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(*(a3 + 8));
  v8 = (*(*a2 + 16))(a2, BytePtr, Length);
  return v8 == CFDataGetLength(*(a3 + 8));
}

uint64_t re::ARReferenceObjectAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  memset(length, 0, sizeof(length));
  v4 = (*(*a3 + 16))(a3, &length[1], length);
  v5 = v4;
  if (v4)
  {
    *(a2 + 8) = CFDataCreate(*MEMORY[0x1E695E480], *&length[1], length[0]);
  }

  else
  {
    v6 = *re::assetTypesLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "ARReferenceObjectAsset: Empty input stream, failed to deserialize", v8, 2u);
    }
  }

  return v5;
}

uint64_t re::ARReferenceObjectAssetLoader::unloadAsset(re::ARReferenceObjectAssetLoader *this, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
    a2[1] = 0;
  }

  v4 = *(*re::globalAllocators(v3)[2] + 40);

  return v4();
}

uint64_t re::ARReferenceObjectAssetLoader::introspectionType(re::ARReferenceObjectAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1966F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1966F8))
  {
    qword_1EE1966F0 = re::internal::getOrCreateInfo("ARReferenceObjectAsset", re::allocInfo_ARReferenceObjectAsset, re::initInfo_ARReferenceObjectAsset, &unk_1EE1966E8, 0);
    __cxa_guard_release(&qword_1EE1966F8);
  }

  return qword_1EE1966F0;
}

void re::ARReferenceObjectAssetLoader::makeSharedResourcePayload(REReferenceObjectPayload **a1@<X8>)
{
  v2 = objc_alloc_init(REReferenceObjectPayload);

  *a1 = v2;
}

void *re::allocInfo_ARReferenceObjectAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196700, "ARReferenceObjectAsset");
    __cxa_guard_release(&_MergedGlobals_78);
  }

  return &unk_1EE196700;
}

void re::initInfo_ARReferenceObjectAsset(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x9C4150F1F6BA78EELL;
  v11[1] = "ARReferenceObjectAsset";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1966E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1966E0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint8_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_version";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1966D8 = v9;
      __cxa_guard_release(&qword_1EE1966E0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1966D8;
  *(this + 9) = re::internal::defaultConstruct<re::ARReferenceObjectAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARReferenceObjectAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARReferenceObjectAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARReferenceObjectAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

uint64_t re::internal::defaultConstructV2<re::ARReferenceObjectAsset>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void re::RenderGraphFile::~RenderGraphFile(re::RenderGraphFile *this)
{
  re::DynamicArray<re::RenderGraphTargetData>::deinit(this + 40);
  v2 = *(this + 17);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 90);
    v5 = v2 - 1;
    v6 = 24;
    do
    {
      v7 = v3 + 1;
      if (v3 + 1 < v2)
      {
        v8 = *(this + 19);
        v9 = v8 + 16 * v3;
        v10 = (v8 + v6);
        v11 = v5;
        do
        {
          if (*(v9 + 8) == *v10)
          {
            *v10 = 0;
          }

          v10 += 2;
          --v11;
        }

        while (v11);
      }

      if (v4)
      {
        v12 = *(*(this + 19) + 16 * v3 + 8);
        v13 = *(this + 91);
        v14 = v4;
        do
        {
          if (v12 == *v13)
          {
            *v13 = 0;
          }

          v13 += 16;
          --v14;
        }

        while (v14);
      }

      --v5;
      v6 += 16;
      v3 = v7;
    }

    while (v7 != v2);
  }

  v15 = *(this + 37);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = v16++;
      if (v16 < v15)
      {
        v18 = v16;
        do
        {
          v19 = *(this + 39);
          if (*(v19 + 8 * v17) == *(v19 + 8 * v18))
          {
            *(v19 + 8 * v18) = 0;
          }

          ++v18;
        }

        while (v15 != v18);
      }
    }

    while (v16 != v15);
  }

  v20 = *(this + 90);
  if (v20)
  {
    v21 = 0;
    v22 = v20 - 1;
    v23 = 128;
    do
    {
      v24 = v21 + 1;
      if (v21 + 1 < v20)
      {
        v25 = *(this + 91);
        v26 = (v25 + (v21 << 7));
        v27 = (v25 + v23);
        v28 = v22;
        do
        {
          if (*v26 == *v27)
          {
            *v27 = 0;
          }

          v27 += 16;
          --v28;
        }

        while (v28);
      }

      --v22;
      v23 += 128;
      v21 = v24;
    }

    while (v24 != v20);
  }

  if (v2)
  {
    v29 = 16 * v2;
    v30 = (*(this + 19) + 8);
    do
    {
      re::internal::destroyPersistent<re::RenderGraphNode>(*v30);
      v30 += 2;
      v29 -= 16;
    }

    while (v29);
  }

  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(this + 160);
  v31 = re::DynamicArray<re::RenderGraphOutputData>::deinit(this + 240);
  v32 = *(this + 37);
  if (v32)
  {
    v33 = *(this + 39);
    v34 = 8 * v32;
    do
    {
      v35 = *v33;
      if (*v33)
      {
        v36 = re::globalAllocators(v31)[2];
        (**v35)(v35);
        v31 = (*(*v36 + 40))(v36, v35);
      }

      ++v33;
      v34 -= 8;
    }

    while (v34);
  }

  re::DynamicArray<unsigned long>::deinit(this + 280);
  v37 = *(this + 90);
  if (v37)
  {
    v38 = *(this + 91);
    v39 = v37 << 7;
    do
    {
      re::internal::destroyPersistent<re::RenderGraphNode>(*v38);
      v38 += 16;
      v39 -= 128;
    }

    while (v39);
  }

  re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(this + 89);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(this + 824);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(this + 784);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 92);
  re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(this + 89);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 81);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 75);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 69);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 63);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 57);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 51);
  re::DynamicString::deinit((this + 368));
  re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(this + 320);
  re::DynamicArray<unsigned long>::deinit(this + 280);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this + 240);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(this + 200);
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<re::RenderGraphBufferData>::deinit(this + 80);
  re::DynamicArray<re::RenderGraphTargetData>::deinit(this + 40);
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::RenderGraphFile::~RenderGraphFile(this);

  JUMPOUT(0x1E6906520);
}

void sub_1E204ABD8(_Unwind_Exception *a1)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v1 + 103));
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v1 + 98));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v1 + 92);
  re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(v1 + 89);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v1 + 81);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 75);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 69);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v1 + 63);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v1 + 57);
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v1 + 51);
  re::DynamicString::deinit((v1 + 46));
  re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit((v1 + 40));
  re::DynamicArray<unsigned long>::deinit((v1 + 35));
  re::DynamicArray<re::RenderGraphOutputData>::deinit((v1 + 30));
  re::DynamicArray<re::RenderGraphOutputData>::deinit((v1 + 25));
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit((v1 + 20));
  re::DynamicArray<unsigned long>::deinit((v1 + 15));
  re::DynamicArray<re::RenderGraphBufferData>::deinit((v1 + 10));
  re::DynamicArray<re::RenderGraphTargetData>::deinit((v1 + 5));
  *v1 = &unk_1F5CC5700;
  re::DynamicString::deinit((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t re::DynamicArray<re::RenderGraphTargetData>::deinit(uint64_t a1)
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
        v5 = 160 * v4;
        do
        {
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v3 + 120);
          re::AssetHandle::~AssetHandle((v3 + 88));
          re::StringID::destroyString(v3);
          v3 += 160;
          v5 -= 160;
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

re *re::internal::destroyPersistent<re::RenderGraphNode>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphOutputData>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        do
        {
          re::StringID::destroyString((v3 + 32));
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 48;
          v5 -= 48;
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

void *re::FixedArray<re::RuntimeSettingsNodeCache>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = v2 << 7;
      v5 = (result[2] + 80);
      do
      {
        re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v5);
        re::DynamicArray<re::BindPointAndPath>::deinit((v5 - 5));
        v6 = re::BindNode::deinit((v5 - 9));
        v5 += 16;
        v4 -= 128;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::RenderGraphSpecifyLaneOperation::apply(uint64_t a1, re::RenderFrame *a2)
{
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    *&v7.var0 = 0;
    v7.var1 = &str_67;
    v6 = 0;
    re::RenderFrame::applyPropertiesToScopeLane(a2, v3, v8, 0);
    return 1;
  }

  if (*(a1 + 144) == 1)
  {
    v4 = *(a1 + 24);
    *&v7.var0 = 0;
    v7.var1 = &str_67;
    v6 = 0;
    re::RenderFrame::applyPropertiesToScopeLane(a2, v4, v8, 0);
    return 1;
  }

  return 0;
}

void sub_1E204B050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re::StringID::destroyString(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::targetDescriptionFromData(uint64_t a1, uint64_t a2, StringID *a3, void *a4)
{
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = vrev64_s32(*(a2 + 20));
  v5 = *(a2 + 56);
  *(a1 + 44) = *(a2 + 48);
  *a1 = 3;
  *(a1 + 76) = -1;
  *(a1 + 84) = -1;
  v6 = *(a2 + 68);
  *(a1 + 60) = *(a2 + 64);
  *(a1 + 64) = 1;
  *(a1 + 104) = 0;
  *(a1 + 52) = v5;
  *(a1 + 68) = v6;
  *(a1 + 72) = 32;
  *(a1 + 40) = *(a2 + 96);
  v7 = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = v7;
  *(a1 + 88) = *(a2 + 40);
  *(a1 + 96) = 0;
  if (*a2)
  {
    if (*a2 == 1)
    {
      *a1 = 2;
      v9 = re::StringID::StringID(&v11, a3);
      v10 = v11;
      *(a1 + 96) = (*a4 + (v11 >> 3) + (v11 >> 1 << 6) - 0x61C8864680B583E9) ^ (v11 >> 1);
      if (v10)
      {
        if (v11)
        {
        }
      }
    }

    else
    {
      *a1 = 3;
    }
  }

  else
  {
    *a1 = 0;
  }
}

void anonymous namespace::bufferDescriptionFromData(uint64_t a1, uint64_t a2, StringID *a3, void *a4)
{
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 28);
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = 0xFFFFFFFF00000020;
  if (*a2)
  {
    if (*a2 == 1)
    {
      *a1 = 2;
      v7 = re::StringID::StringID(&v9, a3);
      v8 = v9;
      *(a1 + 40) = (*a4 + (v9 >> 3) + (v9 >> 1 << 6) - 0x61C8864680B583E9) ^ (v9 >> 1);
      if (v8)
      {
        if (v9)
        {
        }
      }
    }

    else
    {
      *a1 = 3;
    }
  }

  else
  {
    *a1 = 0;
  }
}

unint64_t re::RenderGraphFile::fillConnectionHashes(const char *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(a1);
  if (v4)
  {
    MurmurHash3_x64_128(a1, v4, 0, v14);
    v5 = (v14[1] - 0x61C8864680B583E9 + (v14[0] << 6) + (v14[0] >> 2)) ^ v14[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    v7 = a2[4];
    v8 = 32 * v6;
    do
    {
      v5 ^= (v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + re::Hash<re::DynamicString>::operator()(v14, v7);
      v7 += 32;
      v8 -= 32;
    }

    while (v8);
  }

  a2[15] = v5;
  result = re::Hash<re::DynamicString>::operator()(v14, (a2 + 5));
  v10 = result;
  a2[14] = result;
  v11 = a2[11];
  if (v11)
  {
    v12 = a2[13];
    v13 = 32 * v11;
    do
    {
      result = re::Hash<re::DynamicString>::operator()(v14, v12);
      v10 ^= (v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + result;
      v12 += 32;
      v13 -= 32;
    }

    while (v13);
  }

  a2[16] = v10;
  return result;
}

uint64_t *re::RenderGraphFile::calculateValidity@<X0>(re::RenderGraphFile *this@<X0>, uint64_t a2@<X8>)
{
  v116 = *MEMORY[0x1E69E9840];
  v112 = 1;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  re::DynamicString::setCapacity(&v108, 0);
  if (*(this + 16))
  {
    v4 = *(this + 3);
  }

  else
  {
    v4 = this + 17;
  }

  re::DynamicString::appendf(&v108, "RenderGraph (%s) Errors: ", v4);
  v106 = 0;
  memset(v105, 0, sizeof(v105));
  v107 = 0x7FFFFFFFLL;
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  v104 = 0x7FFFFFFFLL;
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  v101 = 0x7FFFFFFFLL;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v98 = 0x7FFFFFFFLL;
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v94 = 0x7FFFFFFFLL;
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 9);
    v7 = v6 + 160 * v5;
    do
    {
      v113 = *v6 >> 1;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v105, &v113);
      v8 = *(v6 + 136);
      if (v8)
      {
        v9 = *(v6 + 152);
        v10 = 136 * v8;
        do
        {
          re::RenderGraphFile::fillConnectionHashes(*(v6 + 8), v9);
          v9 += 17;
          v10 -= 136;
        }

        while (v10);
      }

      v6 += 160;
    }

    while (v6 != v7);
  }

  v11 = *(this + 12);
  if (v11)
  {
    v12 = *(this + 14);
    v13 = v12 + 88 * v11;
    do
    {
      v113 = *v12 >> 1;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v102, &v113);
      v14 = *(v12 + 64);
      if (v14)
      {
        v15 = *(v12 + 80);
        v16 = 136 * v14;
        do
        {
          re::RenderGraphFile::fillConnectionHashes(*(v12 + 8), v15);
          v15 += 17;
          v16 -= 136;
        }

        while (v16);
      }

      v12 += 88;
    }

    while (v12 != v13);
  }

  v83 = a2;
  v89 = &v112;
  v90 = &v108;
  v17 = *(this + 22);
  if (v17)
  {
    v18 = (*(this + 24) + 24);
    v19 = 56 * v17;
    do
    {
      v20 = *(v18 - 1) >> 1;
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v105, v20) && !re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v102, v20))
      {
        v21 = v89;
        if ((*v89 & 1) == 0)
        {
          re::DynamicString::append(v90, "\n", 1uLL);
          v21 = v89;
        }

        *v21 = 0;
        re::DynamicString::appendf(&v108, "Input defined with no matching target or buffer (%s).", *v18);
      }

      v18 += 7;
      v19 -= 56;
    }

    while (v19);
  }

  v22 = *(this + 17);
  if (v22)
  {
    v84 = 0;
    v23 = 0;
    v85 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = *(this + 19);
    v28 = &v27[2 * v22];
    do
    {
      v86 = v23;
      v87 = v24;
      re::RenderGraphNodeRegistry::registryItem(re::RenderGraphNodeRegistry::m_instance, *v27, v88);
      if (v88[0] == 1)
      {
        v115 = 0;
        operator new();
      }

      v29 = v89;
      if ((*v89 & 1) == 0)
      {
        re::DynamicString::append(v90, "\n", 1uLL);
        v29 = v89;
      }

      *v29 = 0;
      v30 = this + 17;
      if (*(this + 16))
      {
        v30 = *(this + 3);
      }

      re::DynamicString::appendf(&v108, "Node found with unregistered type in RenderGraph %s. Check log for error Skipping unknown polymorphic type. to find type name.", v30);
      v31 = v27[1];
      v24 = v87;
      v23 = v86;
      if (v26)
      {
        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
        for (i = *(v86 + 4 * ((v32 ^ (v32 >> 31)) % v26)); i != 0x7FFFFFFF; LODWORD(i) = *(v25 + 24 * i + 8) & 0x7FFFFFFF)
        {
          if (*(v25 + 24 * i + 16) == v31)
          {
            v34 = v89;
            if ((*v89 & 1) == 0)
            {
              re::DynamicString::append(v90, "\n", 1uLL);
              v34 = v89;
            }

            *v34 = 0;
            v35 = this + 17;
            if (*(this + 16))
            {
              v35 = *(this + 3);
            }

            re::DynamicString::appendf(&v108, "Found redundant RenderGraphNode pointer in RenderGraph %s.", v35);
            v31 = v27[1];
            v24 = v87;
            v23 = v86;
            break;
          }
        }
      }

      v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
      v37 = v36 ^ (v36 >> 31);
      if (v26)
      {
        v38 = v37 % v26;
        for (j = *(v23 + 4 * v38); j != 0x7FFFFFFF; LODWORD(j) = *(v25 + 24 * j + 8) & 0x7FFFFFFF)
        {
          if (*(v25 + 24 * j + 16) == v31)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v38 = 0;
      }

      v40 = v98;
      if (v98 == 0x7FFFFFFF)
      {
        v41 = v24;
        if (v24 == v26)
        {
          re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::setCapacity(&v95, 2 * v85);
          v26 = DWORD2(v96);
          v41 = v97;
          v38 = v37 % DWORD2(v96);
          v25 = v96;
          v84 = *(&v95 + 1);
          v31 = v27[1];
          v24 = v87;
        }

        v42 = v41 + 1;
        v97 = v42;
        v40 = v24;
        v43 = *(v25 + 24 * v24 + 8);
        v23 = v84;
      }

      else
      {
        v43 = *(v25 + 24 * v98 + 8);
        LODWORD(v98) = v43 & 0x7FFFFFFF;
        v42 = v24;
        v24 = v40;
      }

      v44 = 3 * v40;
      *(v25 + 8 * v44 + 8) = v43 | 0x80000000;
      v25 = v96;
      v45 = v96 + 8 * v44;
      *(v45 + 8) = *(v45 + 8) & 0x80000000 | *(v23 + 4 * v38);
      *v45 = v37;
      *(v45 + 16) = v31;
      *(v23 + 4 * v38) = v24;
      v85 = ++HIDWORD(v96);
      ++HIDWORD(v98);
      v24 = v42;
LABEL_54:
      v27 += 2;
    }

    while (v27 != v28);
  }

  v46 = *(this + 37);
  if (v46)
  {
    v47 = 0;
    v48 = *(this + 39);
    v49 = &v48[v46];
    do
    {
      v50 = *v48;
      (*(**v48 + 16))(&v113, *v48, v105, v102, v99);
      if ((v113 & 1) == 0)
      {
        v51 = v89;
        if ((*v89 & 1) == 0)
        {
          re::DynamicString::append(v90, "\n", 1uLL);
          v51 = v89;
        }

        *v51 = 0;
        if (BYTE8(v114))
        {
          v52 = v115;
        }

        else
        {
          v52 = &v114 + 9;
        }

        v53 = strlen(v52);
        re::DynamicString::append(&v108, v52, v53);
      }

      v54 = DWORD2(v92);
      v55 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
      v56 = v55 ^ (v55 >> 31);
      if (DWORD2(v92))
      {
        v57 = v56 % DWORD2(v92);
        v58 = *(v47 + 4 * v57);
        if (v58 != 0x7FFFFFFF)
        {
          while (*(v92 + 24 * v58 + 16) != v50)
          {
            LODWORD(v58) = *(v92 + 24 * v58 + 8) & 0x7FFFFFFF;
            if (v58 == 0x7FFFFFFF)
            {
              goto LABEL_75;
            }
          }

          v60 = v89;
          if ((*v89 & 1) == 0)
          {
            re::DynamicString::append(v90, "\n", 1uLL);
            v60 = v89;
          }

          *v60 = 0;
          v61 = this + 17;
          if (*(this + 16))
          {
            v61 = *(this + 3);
          }

          re::DynamicString::appendf(&v108, "Found redundant RenderGraphSpecifyOperationBase pointer in RenderGraph %s.", v61);
        }

LABEL_75:
        v59 = v57;
        v47 = *(&v91 + 1);
        v62 = *(*(&v91 + 1) + 4 * v57);
        if (v62 != 0x7FFFFFFF)
        {
          while (*(v92 + 24 * v62 + 16) != v50)
          {
            LODWORD(v62) = *(v92 + 24 * v62 + 8) & 0x7FFFFFFF;
            if (v62 == 0x7FFFFFFF)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_84;
        }
      }

      else
      {
        v59 = 0;
      }

LABEL_78:
      v63 = v94;
      if (v94 == 0x7FFFFFFF)
      {
        v63 = v93;
        v64 = v93;
        if (v93 == v54)
        {
          re::HashSetBase<re::RenderGraphSpecifyOperationBase *,re::RenderGraphSpecifyOperationBase *,re::internal::ValueAsKey<re::RenderGraphSpecifyOperationBase *>,re::Hash<re::RenderGraphSpecifyOperationBase *>,re::EqualTo<re::RenderGraphSpecifyOperationBase *>,true,false>::setCapacity(&v91, 2 * HIDWORD(v92));
          v64 = v93;
          v59 = v56 % DWORD2(v92);
        }

        v93 = v64 + 1;
        v65 = v92;
        v66 = *(v92 + 24 * v63 + 8);
      }

      else
      {
        v65 = v92;
        v66 = *(v92 + 24 * v94 + 8);
        LODWORD(v94) = v66 & 0x7FFFFFFF;
      }

      v67 = v65 + 24 * v63;
      *(v67 + 8) = v66 | 0x80000000;
      v47 = *(&v91 + 1);
      *(v67 + 8) = *(*(&v91 + 1) + 4 * v59) | 0x80000000;
      *v67 = v56;
      *(v67 + 16) = v50;
      *(v47 + 4 * v59) = v63;
      ++HIDWORD(v92);
      ++HIDWORD(v94);
LABEL_84:
      if (v113 & 1) == 0 && v114 && (BYTE8(v114))
      {
        (*(*v114 + 40))();
      }

      ++v48;
    }

    while (v48 != v49);
  }

  v68 = *(this + 32);
  if (v68)
  {
    v69 = (*(this + 34) + 24);
    v70 = 48 * v68;
    do
    {
      v71 = *(v69 - 1) >> 1;
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v105, v71) && !re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v102, v71))
      {
        v72 = v89;
        if ((*v89 & 1) == 0)
        {
          re::DynamicString::append(v90, "\n", 1uLL);
          v72 = v89;
        }

        *v72 = 0;
        re::DynamicString::appendf(&v108, "Output defined with no matching target or buffer (%s).", *v69);
      }

      v69 += 6;
      v70 -= 48;
    }

    while (v70);
  }

  v73 = *(this + 42);
  if (v73)
  {
    v74 = *(this + 44);
    v75 = v74 + 56 * v73;
    do
    {
      v76 = *(v74 + 32);
      if (v76)
      {
        v77 = *(v74 + 48);
        v78 = 136 * v76;
        do
        {
          re::RenderGraphFile::fillConnectionHashes(*(v74 + 8), v77);
          v77 += 17;
          v78 -= 136;
        }

        while (v78);
      }

      v74 += 56;
    }

    while (v74 != v75);
  }

  if (v112)
  {
    v79 = 1;
  }

  else
  {
    re::DynamicString::DynamicString(&v113, &v108);
    v79 = 0;
    v80 = v115;
    *(v83 + 8) = v113;
    *(v83 + 32) = v80;
    *(v83 + 16) = v114;
  }

  *v83 = v79;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v91);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v95);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v99);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v102);
  v81 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v105);
  result = v108;
  if (v108)
  {
    if (v109)
    {
      return (*(*v108 + 40))(v81);
    }
  }

  return result;
}

void sub_1E204C050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&a25);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&a31);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&a37);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&a43);
  v45 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit((v43 - 240));
  v46 = *(v43 - 184);
  if (v46)
  {
    if (*(v43 - 176))
    {
      (*(*v46 + 40))(v46, *(v43 - 168), v45);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(uint64_t result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *(result + 24);
  if (v5)
  {
    v6 = v4 % v5;
    v7 = *(*(result + 8) + 4 * (v4 % v5));
    if (v7 != 0x7FFFFFFF)
    {
      v8 = *(result + 16);
      if (*(v8 + 16 * v7 + 8) == v4)
      {
        return result;
      }

      while (1)
      {
        v7 = *(v8 + 16 * v7) & 0x7FFFFFFF;
        if (v7 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v8 + 16 * v7 + 8) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addAsMove(result, v6, v4, a2);
  ++*(v3 + 40);
  return result;
}

BOOL re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(a1 + 8) + 4 * (a2 % v2));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (*(v5 + 16 * v3 + 8) == a2)
  {
    return 1;
  }

  do
  {
    v3 = *(v5 + 16 * v3) & 0x7FFFFFFF;
    result = v3 != 0x7FFFFFFF;
  }

  while (v3 != 0x7FFFFFFF && *(v5 + 16 * v3 + 8) != a2);
  return result;
}

void re::RenderGraphFile::initRuntimeNodeSettings(re::RenderGraphFile *this@<X0>, uint64_t a2@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(this + 17);
  *(this + 90) = v4;
  if (v4)
  {
    if (v4 >> 57)
    {
LABEL_34:
      re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, v4);
      _os_crash();
      __break(1u);
LABEL_35:
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    *(this + 91) = v6;
    if (!v6)
    {
      goto LABEL_35;
    }

    v8 = (v4 - 1);
    if (v4 != 1)
    {
      do
      {
        *(v6 + 100) = 0uLL;
        *(v6 + 88) = 0uLL;
        *(v6 + 72) = 0uLL;
        *v6 = 0uLL;
        *(v6 + 16) = 0uLL;
        *(v6 + 32) = 0uLL;
        *(v6 + 48) = 0uLL;
        *(v6 + 64) = 0;
        *(v6 + 116) = 0x7FFFFFFFLL;
        v6 += 128;
        --v8;
      }

      while (v8);
    }

    *(v6 + 100) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0;
    *(v6 + 116) = 0x7FFFFFFFLL;
  }

  v29 = 0u;
  v28 = 0u;
  v27 = re::PassthroughAssetSerialization::instance(void)::instance;
  v26 = 0;
  if (!*(this + 17))
  {
LABEL_20:
    *a2 = 1;
    return;
  }

  v9 = 0;
  while (1)
  {
    v10 = (*(this + 19) + 16 * v9);
    if (!v10[1])
    {
      re::DynamicString::format("Invalid node data %p", &v40, v10);
      goto LABEL_25;
    }

    re::RenderGraphNodeRegistry::registryItem(re::RenderGraphNodeRegistry::m_instance, *v10, v24);
    if ((v24[0] & 1) == 0)
    {
      if (*(this + 16))
      {
        v21 = *(this + 3);
      }

      else
      {
        v21 = this + 17;
      }

      re::DynamicString::format("Node found with unregistered type in RenderGraph %s.", &v40, v21);
      v22 = v40;
      goto LABEL_28;
    }

    v4 = v25;
    v12 = (**v25)(v25, 0);
    v14 = v26;
    v15 = *(this + 90);
    if (v15 <= v26)
    {
      v31[0] = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 468;
      v36 = 2048;
      v37 = v14;
      v38 = 2048;
      v39 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v31[0] = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 468;
      v36 = 2048;
      v37 = v14;
      v38 = 2048;
      v39 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v30 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 468;
      v36 = 2048;
      v37 = v4;
      v38 = 2048;
      v39 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v30 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 468;
      v36 = 2048;
      v37 = v4;
      v38 = 2048;
      v39 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v31[0] = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v32 = 136315906;
      v33 = "operator[]";
      v34 = 1024;
      v35 = 789;
      v36 = 2048;
      v37 = v4;
      v38 = 2048;
      v39 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_34;
    }

    *(*(this + 91) + (v26 << 7)) = v13;
    v16 = (**v4)(v4, 0);
    v14 = v26;
    v15 = *(this + 90);
    if (v15 <= v26)
    {
      goto LABEL_30;
    }

    v17 = v10[1];
    v18 = *(*(this + 91) + (v26 << 7));
    *(&v40 + 1) = 0;
    *&v41 = &v27;
    {
      break;
    }

    v19 = (**v4)(v4, 0);
    v4 = v26;
    v15 = *(this + 90);
    if (v15 <= v26)
    {
      goto LABEL_31;
    }

    re::makeBindNode(v19, *(*(this + 91) + (v26 << 7)), v31);
    v4 = v26;
    v15 = *(this + 90);
    if (v15 <= v26)
    {
      goto LABEL_32;
    }

    v20 = (*(this + 91) + (v26 << 7) + 8);
    if (v20 != v31)
    {
      re::BindNode::move(v20, v31);
    }

    re::BindNode::deinit(v31);
    v4 = v26;
    v15 = *(this + 17);
    if (v15 <= v26)
    {
      goto LABEL_33;
    }

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 736, (*(*(this + 19) + 16 * v26 + 8) + 8), &v26);
    v9 = ++v26;
    if (*(this + 17) <= v26)
    {
      goto LABEL_20;
    }
  }

  re::DynamicString::format("Failed to perform deep copy into the node cache of %s.", &v40, *(v10[1] + 16));
LABEL_25:
  v22 = v40;
LABEL_28:
  v23 = v41;
  *a2 = 0;
  *(a2 + 8) = v22;
  *(a2 + 24) = v23;
}

void sub_1E204CA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  re::BindNode::deinit(va);
  _Unwind_Resume(a1);
}

double re::RenderGraphFile::initConnectionSourceDataList(_BOOL8 this)
{
  v1 = this;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v36 = 0x7FFFFFFFLL;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(this + 72);
    v4 = v3 + 160 * v2;
    do
    {
      v5 = *(v3 + 136);
      if (v5)
      {
        v6 = *(v3 + 152);
        v7 = 136 * v5;
        do
        {
          v8 = v6[8].n128_u64[0];
          this = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v34, v8);
          if (!this)
          {
            *&v33[0] = v8;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v34, v33);
            re::DynamicArray<re::RenderGraphDataStoreConnection>::add((v1 + 98), v6);
          }

          v6 = (v6 + 136);
          v7 -= 136;
        }

        while (v7);
      }

      v3 += 160;
    }

    while (v3 != v4);
  }

  v9 = v1[12];
  if (v9)
  {
    v10 = v1[14];
    v11 = v10 + 88 * v9;
    do
    {
      v12 = *(v10 + 64);
      if (v12)
      {
        v13 = *(v10 + 80);
        v14 = 136 * v12;
        do
        {
          v15 = v13[8].n128_u64[0];
          this = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v34, v15);
          if (!this)
          {
            *&v33[0] = v15;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v34, v33);
            re::DynamicArray<re::RenderGraphDataStoreConnection>::add((v1 + 98), v13);
          }

          v13 = (v13 + 136);
          v14 -= 136;
        }

        while (v14);
      }

      v10 += 88;
    }

    while (v10 != v11);
  }

  v16 = v1[42];
  memset(v33, 0, sizeof(v33));
  v17 = v1[42];
  if (v17)
  {
    v18 = v1[44];
    v19 = 56 * v17;
    do
    {
      v31[0] = *v18 >> 1;
      v32 = v18;
      v20 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(v33, v31[0]);
      if (v20 == -1)
      {
        re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(v33, v31, &v32);
      }

      else
      {
        *(*(&v33[0] + 1) + 16 * v20 + 8) = v18;
      }

      v18 += 7;
      v19 -= 56;
    }

    while (v19);
  }

  if (v1[17])
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = (v1[19] + 16 * v21);
      re::RenderGraphNodeRegistry::registryItem(re::RenderGraphNodeRegistry::m_instance, *v23, v31);
      v24 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(v33, *(v23[1] + 8) >> 1);
      if (v24 != -1)
      {
        v25 = *(*(&v33[0] + 1) + 16 * v24 + 8);
        v26 = *(v25 + 32);
        if (v26)
        {
          v27 = *(v25 + 48);
          v28 = 136 * v26;
          do
          {
            v29 = v27[8].n128_u64[0];
            if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(v34, v29))
            {
              v32 = v29;
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::add(v34, &v32);
              re::DynamicArray<re::RenderGraphDataStoreConnection>::add((v1 + 103), v27);
            }

            v27 = (v27 + 136);
            v28 -= 136;
          }

          while (v28);
        }
      }

      v21 = ++v22;
    }

    while (v1[17] > v22);
  }

  re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(v33);
  return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v34);
}

void sub_1E204CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(va);
  _Unwind_Resume(a1);
}

__n128 re::DynamicArray<re::RenderGraphDataStoreConnection>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphDataStoreConnection>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 136 * v4);
  re::DynamicArray<re::DynamicString>::DynamicArray(v5, a2);
  re::DynamicString::DynamicString(&v5[2].n128_i8[8], &a2[2].n128_i8[8]);
  re::DynamicArray<re::DynamicString>::DynamicArray(&v5[4].n128_i64[1], &a2[4].n128_i64[1]);
  result = a2[7];
  v5[8].n128_u64[0] = a2[8].n128_u64[0];
  v5[7] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

BOOL re::RenderGraphFile::fillIndexTable(re *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v40 = *MEMORY[0x1E69E9840];
  if (!a4 || !a5)
  {
    return v5 != 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  v33 = a1;
  do
  {
    v12 = *(v5 + 16);
    if (v12 <= 3)
    {
      if (v12 != 2)
      {
        if (v12 == 3)
        {
          v13 = v7 + 32 * v10;
          if (*(v13 + 8))
          {
            v14 = *(v13 + 16);
          }

          else
          {
            v14 = (v13 + 9);
          }

          if (v10 < v9)
          {
LABEL_41:
            a1 = atoi(v14);
            *(v8 + 4 * v10) = a1;
            v27 = (v5 + 48);
            goto LABEL_42;
          }

LABEL_53:
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_54:
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v5 = 0;
        if (!v12)
        {
          return v5 != 0;
        }

LABEL_48:
        v28 = *re::graphicsLogObjects(a1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Connection source type isn't supported.", buf, 2u);
        }

LABEL_50:
        v5 = 0;
        return v5 != 0;
      }

      v24 = v7 + 32 * v10;
      if (*(v24 + 8))
      {
        v14 = *(v24 + 16);
      }

      else
      {
        v14 = (v24 + 9);
      }

      if (v10 < v9)
      {
        goto LABEL_41;
      }

LABEL_52:
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_53;
    }

    if (v12 == 4)
    {
      v25 = v7 + 32 * v10;
      if (*(v25 + 8))
      {
        v14 = *(v25 + 16);
      }

      else
      {
        v14 = (v25 + 9);
      }

      if (v10 < v9)
      {
        goto LABEL_41;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_52;
    }

    if (v12 != 8)
    {
      v5 = 0;
      if (v12 == 9)
      {
        return v5 != 0;
      }

      goto LABEL_48;
    }

    v34 = v11;
    v15 = 0;
    v16 = v7 + 32 * v10;
LABEL_12:
    v17 = *(v5 + 56);
    if (!v17)
    {
      goto LABEL_50;
    }

    v18 = 0;
    v19 = 0;
    v20 = *(v5 + 64);
    while (1)
    {
      while (1)
      {
        v21 = *(v20 + 8 * v18);
        if (*v21 == 1)
        {
          break;
        }

LABEL_19:
        if (v17 == ++v18)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_25:
          v15 += v17;
          if (!v5)
          {
            return v5 != 0;
          }

          goto LABEL_12;
        }
      }

      v22 = (v16 + 9);
      if (*(v16 + 8))
      {
        v22 = *(v16 + 16);
      }

      a1 = strcmp(*(v21 + 8), v22);
      if (!a1)
      {
        break;
      }

      if (*(v21 + 40) != 3)
      {
        goto LABEL_19;
      }

      v5 = *(v21 + 16);
      v19 = 1;
      if (v17 - 1 == v18++)
      {
        goto LABEL_25;
      }
    }

    v9 = v33;
    if (v10 >= v33)
    {
      goto LABEL_54;
    }

    v26 = v15 + v18;
    v8 = a2;
    v7 = a3;
    *(a2 + 4 * v10) = v26;
    v27 = (v21 + 16);
    v6 = a4;
    v11 = v34;
LABEL_42:
    v5 = *v27;
    v10 = (v11 + 1);
    if (v6 <= v10)
    {
      break;
    }

    ++v11;
  }

  while (v5);
  return v5 != 0;
}

uint64_t re::RenderGraphFile::getCachedConnection(re::RenderGraphFile *this, const re::IntrospectionBase *a2, const re::RenderGraphDataStoreConnection *a3, const re::RenderGraphData *a4, const re::IntrospectionStructure *a5)
{
  v9 = (a3 + 120);
  v10 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 408, *(a3 + 15));
  if (!v10)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v20 = 1;
    v11 = *(a3 + 2);
    v12 = *(a3 + 11);
    *&v16 = a3;
    if (re::RenderGraphFile::fillIndexTable(*(&v18 + 1), v19, *(a3 + 4), *(a3 + 2), a2) && re::RenderGraphFile::fillIndexTable(v17, *(&v17 + 1), *(a3 + 13), *(a3 + 11), a4))
    {
      re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(this + 408, v9, &v16);
      v10 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 408, *v9);
      v14 = 1;
    }

    else
    {
      v10 = 0;
      v14 = 0;
    }

    if (v18)
    {
      if (*(&v18 + 1))
      {
        (*(*v18 + 40))(v18);
        *(&v18 + 1) = 0;
        v19 = 0;
      }

      *&v18 = 0;
    }

    if (*(&v16 + 1) && v17)
    {
      (*(**(&v16 + 1) + 40))(*(&v16 + 1));
    }

    if (!v14)
    {
      return 0;
    }
  }

  return v10;
}

void sub_1E204D4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a13 && a14)
  {
    (*(*a13 + 40))();
  }

  if (a10)
  {
    if (a11)
    {
      (*(*a10 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(v8 + 8) = *a2;
    *(v8 + 16) = v9;
    re::FixedArray<unsigned int>::FixedArray((v8 + 24), (a3 + 1));
    result = re::FixedArray<unsigned int>::FixedArray((v8 + 48), (a3 + 4));
    *(v8 + 72) = *(a3 + 56);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::RenderGraphFile::hashConnection(re::RenderGraphFile *this, re::RenderFrame *a2, uint64_t a3, const re::RenderGraphDataStoreConnection *a4, uint64_t a5)
{
  re::RenderGraphDataStore::tryGetIntrospectionByNameHash(a3 + 32, *(a5 + 112), v22);
  result = re::RenderGraphDataStore::tryGetByTypeNameHash((a3 + 32), a4, *(a5 + 112));
  if (!result || v22[0] != 1)
  {
    goto LABEL_21;
  }

  v11 = result;
  v12 = v23;
  v13 = (a5 + 128);
  result = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 456, *(a5 + 128));
  v14 = result;
  if (!result)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    *v24 = 0u;
    v28 = 1;
    v15 = *(a5 + 88);
    v24[0] = a5;
    v16 = re::RenderGraphFile::fillIndexTable(v25, *(&v25 + 1), *(a5 + 104), *(a5 + 88), v12);
    if (v16)
    {
      re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 456, v13, v24);
      v14 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 456, *v13);
    }

    else
    {
      v14 = 0;
    }

    if (v26)
    {
      if (*(&v26 + 1))
      {
        (*(*v26 + 40))();
        *(&v26 + 1) = 0;
        v27 = 0;
      }

      *&v26 = 0;
    }

    result = v24[1];
    if (v24[1] && v25)
    {
      result = (*(*v24[1] + 40))();
    }

    if (!v14 || !v16)
    {
      goto LABEL_21;
    }
  }

  if (*(v14 + 56))
  {
    v24[0] = (*(*v11 + 16))(v11);
    v21 = v23;
    result = re::scanForCopy(v14 + 8, v24, &v21);
    if (result)
    {
      *(this + 1) = result;
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    *this = v20;
  }

  else
  {
LABEL_21:
    *this = 0;
  }

  return result;
}

void sub_1E204D8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a17 && a18)
  {
    (*(*a17 + 40))();
  }

  if (a14)
  {
    if (a15)
    {
      (*(*a14 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t anonymous namespace::hashMembers(uint64_t this, re::RenderFrame *a2, const re::IntrospectionBase *a3, const void *a4)
{
  v5 = this;
  v39[3] = *MEMORY[0x1E69E9840];
  v6 = *(this + 16);
  if (v6 <= 3)
  {
    if (v6)
    {
      if (v6 == 2)
      {
        v32 = *(this + 48);
        v33 = *(v32 + 16);
        if (v33 != 9 && v33 != 0)
        {
          return 0;
        }

        v11 = *(this + 64) * *(v32 + 20);
        if (!v11)
        {
          return 0;
        }

        goto LABEL_56;
      }

      if (v6 == 3)
      {
        v9 = *(*(this + 48) + 16);
        if (v9 != 9 && v9 != 0)
        {
          return 0;
        }

        v11 = (*(*this + 88))(this, a2, a3, a4) * *(*(this + 48) + 20);
        if (!v11)
        {
          return 0;
        }

        goto LABEL_56;
      }

      goto LABEL_39;
    }
  }

  else
  {
    if (v6 <= 7)
    {
      if (v6 != 4)
      {
        if (v6 == 6)
        {
          v7 = *(a2 + 1);
          if (v7)
          {
            v8 = *(a2 + 2);
          }

          else
          {
            v8 = a2 + 9;
          }

          if (v7)
          {
            v35 = v7 >> 1;
          }

          else
          {
            v35 = v7 >> 1;
          }

          if (v35)
          {
            MurmurHash3_x64_128(v8, v35, 0, buf);
            return (*(&buf[0] + 1) - 0x61C8864680B583E9 + (*&buf[0] << 6) + (*&buf[0] >> 2)) ^ *&buf[0];
          }

          return 0;
        }

        goto LABEL_39;
      }

      v30 = *(*(this + 48) + 16);
      if (v30 != 9 && v30 != 0)
      {
        return 0;
      }

      v11 = (*(*this + 80))(this, a2, a3, a4) * *(*(this + 48) + 20);
      if (!v11)
      {
        return 0;
      }

LABEL_56:
      MurmurHash3_x64_128(a2, v11, 0, buf);
      return (*(&buf[0] + 1) - 0x61C8864680B583E9 + (*&buf[0] << 6) + (*&buf[0] >> 2)) ^ *&buf[0];
    }

    if (v6 != 9)
    {
      if (v6 == 8)
      {
        if (!*(this + 56))
        {
          return 0;
        }

        v12 = 0;
        v13 = 0;
        while (1)
        {
          v14 = *(*(v5 + 64) + 8 * v12);
          if (*v14 == 1)
          {
            v15 = *(v14 + 40);
            v16 = a2 + *(v14 + 36);
            if (v15 == 3)
            {
              goto LABEL_25;
            }

            if (v15 == 1)
            {
              v17 = *(v14 + 48);
              if (v17)
              {
                v18 = *(v14 + 64);
                *__dst = 0;
                memcpy(__dst, &v16[v18], *(v17 + 20));
                v19 = __dst[0];
              }

              else
              {
                v21 = *re::graphicsLogObjects(this);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v24 = *(v14 + 8);
                  LODWORD(buf[0]) = 136315138;
                  *(buf + 4) = v24;
                  _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Connection hashing failed to get array length for member '%s'.", buf, 0xCu);
                }

                v19 = 0;
              }

              re::IntrospectionCStyleArray::IntrospectionCStyleArray(buf, *(*(v14 + 16) + 48), v19);
              *&buf[0] = &unk_1F5CB0038;
              re::SerializedReference<re::IntrospectionBase const*>::reset(v39);
              *&buf[0] = &unk_1F5CCF868;
              this = objc_destructInstance(buf + 8);
              goto LABEL_34;
            }

            if (v15)
            {
              v20 = *re::graphicsLogObjects(this);
              this = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              if (this)
              {
                LOWORD(buf[0]) = 0;
                _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Connection source type isn't supported for hashing.", buf, 2u);
              }
            }

            else
            {
LABEL_25:
              v13 ^= (v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + this;
            }
          }

LABEL_34:
          if (++v12 >= *(v5 + 56))
          {
            return v13;
          }
        }
      }

LABEL_39:
      v26 = *re::graphicsLogObjects(this);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LOWORD(buf[0]) = 0;
      v27 = "Connection source type isn't supported for hashing.";
      v28 = buf;
      goto LABEL_41;
    }
  }

  *&buf[0] = 0;
  v25 = *(this + 20);
  if (v25 >= 9)
  {
    v26 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    LOWORD(__dst[0]) = 0;
    v27 = "Connection hashing only supports basic types of up to 64 bits.";
    v28 = __dst;
LABEL_41:
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, v27, v28, 2u);
    return 0;
  }

  memcpy(buf, a2, v25);
  v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*&buf[0] ^ (*&buf[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*&buf[0] ^ (*&buf[0] >> 30))) >> 27));
  return v29 ^ (v29 >> 31);
}

void sub_1E204DE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re::IntrospectionCStyleArray::~IntrospectionCStyleArray(va);
  _Unwind_Resume(a1);
}

uint64_t re::RenderGraphFile::connectionWalker(uint64_t result, uint64_t a2, uint64_t a3, const re::IntrospectionBase *a4, re::DynamicString **a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a6 + 16))
  {
    v11 = result;
    v12 = 0;
    v13 = 1;
    while (1)
    {
      re::RenderGraphDataStore::tryGetIntrospectionByNameHash(a2 + 32, *(*(a6 + 32) + 136 * v12 + 112), v24);
      v14 = *(a6 + 16);
      if (v14 <= v12)
      {
        break;
      }

      result = re::RenderGraphDataStore::tryGetByTypeNameHash((a2 + 32), a3, *(*(a6 + 32) + 136 * v12 + 112));
      v16 = result;
      if (result && v24[0] == 1)
      {
        v6 = *(a6 + 16);
        if (v6 <= v12)
        {
          goto LABEL_15;
        }

        result = re::RenderGraphFile::getCachedConnection(v11, a4, (*(a6 + 32) + 136 * v12), v25, v15);
        v17 = result;
        if (result)
        {
          if (*(result + 56) == 1)
          {
            v18 = (*(*v16 + 16))(v16);
            v26 = v25;
            *v27 = v18;
            v22 = a4;
            v23 = a5;
            result = re::scanForCopy(v17 + 8, v27, &v26);
            if (result)
            {
              result = re::scanForCopy(v17 + 32, &v23, &v22);
              if (result)
              {
                *(&v34 + 1) = 0;
                *&v35 = 0;
                if ((result & 1) == 0)
                {
                  goto LABEL_16;
                }
              }
            }
          }
        }
      }

      v12 = v13;
      if (*(a6 + 16) <= v13++)
      {
        return result;
      }
    }

    v26 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    v28 = 1024;
    v29 = 797;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_15:
    v26 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    v28 = 1024;
    v29 = 797;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Failed to perform introspection deep copy when setting RenderGraphFile connections.", "copyResult", "connectionWalker", 704);
    _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::RenderGraphFile::prepareFrame(re::RenderGraphFile *this, char *__s, const char *a3, re::RenderFrame *a4)
{
  v5 = a3;
  v117 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = a3[1];
      if (v9)
      {
        v10 = a3 + 2;
        do
        {
          v8 = 31 * v8 + v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }

      v8 &= ~0x8000000000000000;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v107 = v8;
  v12 = *(this + 7);
  if (v12)
  {
    v13 = (*(this + 9) + 88);
    v14 = 160 * v12;
    do
    {
      if (*(v13 - 18) == 1)
      {
        v15 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v13);
        if (*(v15 + 120))
        {
          goto LABEL_121;
        }

        v16 = *(v15 + 112);
        v106 = v16;
        *&v111[0] = *(v13 - 11) >> 1;
        re::RenderFrame::registerExternalTexture(a4, &v106, v111, &v107, 0);
        if (v16)
        {

          v106 = 0;
        }
      }

      v13 = (v13 + 160);
      v14 -= 160;
    }

    while (v14);
  }

  *&v111[0] = 0x51E0F8031ADFD2D4;
  *(&v111[0] + 1) = "RenderGraphFile";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(v111, __s, v5);
  v93 = __s;
  v94 = v5;
  if ((*(a4 + 449) & 1) == 0)
  {
    if (*(this + 704))
    {
      v18 = re::Hash<re::DynamicString>::operator()(v111, this + 368) - 0x61C8864680B583E9;
      v19 = *(this + 90);
      if (v19)
      {
        v20 = *(this + 91);
        v21 = v20 + (v19 << 7);
        do
        {
          v22 = *(v20 + 56);
          if (v22)
          {
            v23 = *(v20 + 72);
            v24 = (v23 + 64 * v22);
            do
            {
              v25 = re::BindPoint::valueUntyped(v23);
              v26 = *(*v23 + 20);
              if (v26)
              {
                MurmurHash3_x64_128(v25, v26, 0, v111);
                v27 = (*(&v111[0] + 1) - 0x61C8864680B583E9 + (*&v111[0] << 6) + (*&v111[0] >> 2)) ^ *&v111[0];
              }

              else
              {
                v27 = 0;
              }

              v18 ^= (v18 << 6) - 0x61C8864680B583E9 + (v18 >> 2) + (((v27 << 6) - 0x61C8864680B583E9 + (v27 >> 2) + (*(v23 + 6) >> 1)) ^ v27);
              v23 = (v23 + 64);
            }

            while (v23 != v24);
          }

          v20 += 128;
        }

        while (v20 != v21);
      }

      *(this + 87) = v18;
      *(this + 704) = 0;
    }

    else
    {
      v18 = *(this + 87);
    }

    v28 = strlen(__s);
    if (v28)
    {
      MurmurHash3_x64_128(__s, v28, 0, v111);
      v29 = (*(&v111[0] + 1) - 0x61C8864680B583E9 + (*&v111[0] << 6) + (*&v111[0] >> 2)) ^ *&v111[0];
    }

    else
    {
      v29 = 0;
    }

    v30 = strlen(v5);
    if (v30)
    {
      v30 = MurmurHash3_x64_128(v5, v30, 0, v111);
      v31 = ((*(&v111[0] + 1) - 0x61C8864680B583E9 + (*&v111[0] << 6) + (*&v111[0] >> 2)) ^ *&v111[0]) - 0x61C8864680B583E9;
    }

    else
    {
      v31 = 0x9E3779B97F4A7C17;
    }

    ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + v18;
    v99 = ((v29 >> 2) + (v29 << 6) + v31) ^ v29;
    v32 = *(this + 100);
    if (v32)
    {
      v33 = *(this + 102);
      v34 = 136 * v32;
      do
      {
        v30 = re::RenderGraphFile::hashConnection(v111, this, a4, v99, v33);
        if (LOBYTE(v111[0]) == 1)
        {
          ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + *(&v111[0] + 1);
        }

        v33 += 136;
        v34 -= 136;
      }

      while (v34);
    }

    v35 = "N2re28RenderGraphNodeExecutionDataE";
    v36 = "N2re28RenderGraphNodeExecutionDataE";
    if (("N2re28RenderGraphNodeExecutionDataE" & 0x8000000000000000) != 0)
    {
      v37 = ("N2re28RenderGraphNodeExecutionDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    v40 = (((v99 << 6) - 0x61C8864680B583E9 + (v99 >> 2) + *(this + 50)) ^ v99) - 0x61C8864680B583E9;
    if (!*(a4 + 6))
    {
      goto LABEL_49;
    }

    v41 = (v40 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v42 = *(*(a4 + 7) + 4 * (v41 % *(a4 + 18)));
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

    v43 = *(a4 + 8);
    while (*(v43 + 24 * v42 + 8) != v41)
    {
      v42 = *(v43 + 24 * v42) & 0x7FFFFFFF;
      if (v42 == 0x7FFFFFFF)
      {
        goto LABEL_49;
      }
    }

    if (!*(v43 + 24 * v42 + 16))
    {
LABEL_49:
      v44 = &unk_1F5CC4F48;
      memset(v111 + 8, 0, 32);
      *&v111[0] = &unk_1F5CC4F48;
      *(&v111[2] + 1) = 0x7FFFFFFF00000000;
      *&v112 = 0;
      if (("N2re28RenderGraphNodeExecutionDataE" & 0x8000000000000000) != 0)
      {
        v45 = ("N2re28RenderGraphNodeExecutionDataE" & 0x7FFFFFFFFFFFFFFFLL);
        v46 = 5381;
        do
        {
          v35 = v46;
          v47 = *v45++;
          v46 = (33 * v46) ^ v47;
        }

        while (v47);
      }

      *v108 = (v40 + (v35 << 6) + (v35 >> 2)) ^ v35;
      v48 = re::globalAllocators(v30);
      v49 = (*(*v48[2] + 32))(v48[2], 56, 8);
      *v49 = &unk_1F5CC4F48;
      *(v49 + 8) = 0u;
      *(v49 + 24) = 0u;
      *(v49 + 40) = 0;
      *(v49 + 8) = *(&v111[0] + 1);
      *(v49 + 16) = *&v111[1];
      *(&v111[0] + 1) = 0;
      *&v111[1] = 0;
      *(v49 + 24) = *(&v111[1] + 1);
      *(&v111[1] + 1) = 0;
      *(v49 + 32) = *&v111[2];
      *(v49 + 40) = DWORD2(v111[2]);
      *(v49 + 44) = 0x17FFFFFFFLL;
      *(v49 + 44) = HIDWORD(v111[2]);
      v111[2] = xmmword_1E3058120;
      v114 = v49;
      v96 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 48, v108, &v114);
      *&v111[0] = &unk_1F5CC4F48;
      re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v111 + 1);
      v50 = *(this + 105);
      if (v50)
      {
        v51 = *(this + 107);
        v95 = (v51 + 136 * v50);
        while (1)
        {
          re::RenderGraphFile::hashConnection(v104, this, a4, v99, v51);
          if (v104[0] != 1)
          {
            goto LABEL_107;
          }

          MurmurHash3_x64_128("Enabled", 7uLL, 0, v111);
          if (*(v51 + 2) == 1)
          {
            v52 = *(v51 + 4);
            v53 = (*(v52 + 8) & 1) != 0 ? *(v52 + 16) : (v52 + 9);
            v54 = v111[0];
            v55 = strlen(v53);
            if (v55)
            {
              MurmurHash3_x64_128(v53, v55, 0, v111);
              v56 = (*(&v111[0] + 1) - 0x61C8864680B583E9 + (*&v111[0] << 6) + (*&v111[0] >> 2)) ^ *&v111[0];
            }

            else
            {
              v56 = 0;
            }

            if (v56 == ((*(&v54 + 1) - 0x61C8864680B583E9 + (v54 << 6) + (v54 >> 2)) ^ v54))
            {
              ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + v105;
              goto LABEL_107;
            }
          }

          v57 = *(this + 42);
          if (v57)
          {
            break;
          }

LABEL_107:
          v51 = (v51 + 136);
          if (v51 == v95)
          {
            goto LABEL_108;
          }
        }

        v58 = *(this + 44);
        v98 = v58 + 56 * v57;
LABEL_66:
        v59 = *(v58 + 32);
        if (!v59)
        {
          goto LABEL_105;
        }

        v60 = 0;
        v61 = 136 * v59;
        v62 = (*(v58 + 48) + 120);
        while (1)
        {
          v63 = *v62;
          v62 += 17;
          if (v63 != *(v51 + 15))
          {
            goto LABEL_103;
          }

          v64 = 0xBF58476D1CE4E5B9 * ((*v58 >> 31) ^ (*v58 >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 736, v58, (0x94D049BB133111EBLL * (v64 ^ (v64 >> 27))) ^ ((0x94D049BB133111EBLL * (v64 ^ (v64 >> 27))) >> 31), v111);
          v65 = *(*(this + 94) + 32 * HIDWORD(v111[0]) + 24);
          v66 = *(this + 17);
          if (v66 <= v65)
          {
            v114 = 0;
            v112 = 0u;
            v113 = 0u;
            memset(v111, 0, sizeof(v111));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            *&v108[12] = 1024;
            *&v108[14] = 797;
            *&v108[18] = 2048;
            *&v108[20] = v65;
            v109 = 2048;
            *v110 = v66;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_120;
          }

          re::RenderGraphNodeRegistry::registryItem(re::RenderGraphNodeRegistry::m_instance, *(*(this + 19) + 16 * v65), v102);
          v44 = (**v103)();
          *&v112 = 0;
          memset(v111, 0, sizeof(v111));
          re::RenderGraphDataStore::tryGetIntrospectionByNameHash(a4 + 32, *(v51 + 14), &v114);
          v68 = re::RenderGraphDataStore::tryGetByTypeNameHash((a4 + 32), v99, *(v51 + 14));
          if (v68 && v114 == 1)
          {
            CachedConnection = re::RenderGraphFile::getCachedConnection(this, v44, v51, v115, v67);
            v70 = CachedConnection;
            if (!CachedConnection || (*(CachedConnection + 56) & 1) == 0 || (v100[0] = (*(*v68 + 16))(v68), v101 = v115, !(v71 = re::scanForCopy(v70 + 8, v100, &v101))))
            {
              v78 = 1;
              goto LABEL_95;
            }

            v72 = *(v101 + 5);
            v73 = *&v111[1];
            *&v108[8] = 0uLL;
          }

          re::RenderGraphDataStore::tryGetIntrospectionByNameHash(a4 + 32, *(v51 + 14), v100);
          if (!re::RenderGraphDataStore::tryGetByTypeNameHash((a4 + 32), v99, *(v51 + 14)) || LOBYTE(v100[0]) != 1)
          {
            goto LABEL_93;
          }

          v75 = re::RenderGraphFile::getCachedConnection(this, v44, v51, v100[1], v17);
          if (v75)
          {
            if (*(v75 + 56))
            {
              break;
            }
          }

          v79 = 0;
          v80 = 1;
LABEL_94:
          v60 |= v79;
          v78 = v80 & (v79 ^ 1);
LABEL_95:
          if (*(&v111[1] + 1))
          {
            if (*&v111[2])
            {
              (*(**(&v111[1] + 1) + 40))();
              v111[2] = 0uLL;
            }

            *(&v111[1] + 1) = 0;
          }

          if (*&v111[0] && *(&v111[0] + 1))
          {
            (*(**&v111[0] + 40))();
          }

          if (!v78)
          {
LABEL_104:
            if (v60)
            {
              goto LABEL_106;
            }

LABEL_105:
            v58 += 56;
            if (v58 == v98)
            {
LABEL_106:
              __s = v93;
              v5 = v94;
              goto LABEL_107;
            }

            goto LABEL_66;
          }

LABEL_103:
          v61 -= 136;
          if (!v61)
          {
            goto LABEL_104;
          }
        }

        re::FixedArray<unsigned int>::operator=(&v111[1] + 1, v75 + 32);
        *&v112 = v44;
        v76 = strlen(*(v58 + 8));
        if (v76)
        {
          MurmurHash3_x64_128(*(v58 + 8), v76, 0, v108);
          v77 = (*&v108[8] - 0x61C8864680B583E9 + (*v108 << 6) + (*v108 >> 2)) ^ *v108;
        }

        else
        {
          v77 = 0;
        }

        v114 = v77;
        v81 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v96 + 8, &v114);
        if (v81)
        {
          re::DynamicArray<re::NodePatchData>::add(v81, v111);
        }

        else
        {
          *&v110[2] = 0;
          memset(v108, 0, sizeof(v108));
          re::DynamicArray<re::NodePatchData>::add(v108, v111);
          v82 = strlen(*(v58 + 8));
          if (v82)
          {
            MurmurHash3_x64_128(*(v58 + 8), v82, 0, &v114);
            v83 = (v115 + 64 * v114 + (v114 >> 2) - 0x61C8864680B583E9) ^ v114;
          }

          else
          {
            v83 = 0;
          }

          v101 = v83;
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v84 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) >> 27));
          re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v96 + 8, &v101, v84 ^ (v84 >> 31), &v114);
          if (HIDWORD(v115) == 0x7FFFFFFF)
          {
            v85 = re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v96 + 8, v115, v114);
            v86 = *v108;
            *(v85 + 8) = v101;
            *(v85 + 16) = v86;
            *(v85 + 24) = *&v108[8];
            memset(v108, 0, 24);
            *(v85 + 48) = *&v110[2];
            *&v110[2] = 0;
            ++*&v108[24];
            *(v85 + 40) = 1;
            ++*(v96 + 48);
          }

          re::DynamicArray<re::NodePatchData>::deinit(v108);
        }

LABEL_93:
        v80 = 0;
        v79 = 1;
        goto LABEL_94;
      }
    }
  }

LABEL_108:
  if (*(this + 17))
  {
    v65 = 0;
    v87 = 1;
    while (1)
    {
      if ((atomic_load_explicit(&qword_1EE1967A8, memory_order_acquire) & 1) == 0)
      {
        v90 = __cxa_guard_acquire(&qword_1EE1967A8);
        if (v90)
        {
          qword_1EE1967A0 = re::hashStringWithLength(v90, v91);
          __cxa_guard_release(&qword_1EE1967A8);
          __s = v93;
          v5 = v94;
        }
      }

      v44 = *(this + 17);
      if (v44 <= v65)
      {
        break;
      }

      v88 = (*(this + 19) + 16 * v65);
      if (*v88 == qword_1EE1967A0)
      {
        ScopeHash ^= (ScopeHash << 6) - 0x61C8864680B583E9 + (ScopeHash >> 2) + re::RenderGraphUpdateMaterialTextureSource::prepareFrame(__s, v5, a4, (v88[1] + 264), v17);
        v44 = *(this + 17);
      }

      v65 = v87;
      if (v44 <= v87++)
      {
        return ScopeHash;
      }
    }

LABEL_120:
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    memset(v111, 0, sizeof(v111));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v108 = 136315906;
    *&v108[4] = "operator[]";
    *&v108[12] = 1024;
    *&v108[14] = 797;
    *&v108[18] = 2048;
    *&v108[20] = v65;
    v109 = 2048;
    *v110 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  return ScopeHash;
}

unint64_t re::RenderGraphProviderBase::generateScopeHash(unint64_t *a1, char *__s, const char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, &v11);
    v7 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = strlen(a3);
  if (v8)
  {
    MurmurHash3_x64_128(a3, v8, 0, &v11);
    v9 = ((v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11) - 0x61C8864680B583E9;
  }

  else
  {
    v9 = 0x9E3779B97F4A7C17;
  }

  return ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + (((v7 >> 2) + (v7 << 6) + v9) ^ v7)) ^ v5;
}