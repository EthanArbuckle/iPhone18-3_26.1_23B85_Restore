uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::checkRenderOptionChanges(uint64_t result, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[39];
  v28 = v8;
  if (*(a4 + 316))
  {
    result = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a4 + 288, &v28);
    if (result)
    {
      return result;
    }

    v8 = a2[39];
    goto LABEL_10;
  }

  v9 = *(a4 + 16);
  v10 = a4 + 8 * v9 + 32;
  if (v9)
  {
    v11 = 8 * v9;
    v12 = (a4 + 32);
    while (*v12 != v8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v10;
  }

  if (v12 == v10)
  {
LABEL_10:
    v28 = v8;
    re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a4, &v28);
    result = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v13 = result;
      v14 = *re::ecs2::RenderOptions::forEntity(a3, a2);
      v15 = 24;
      while (1)
      {
        result = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v15), v13);
        if (result != -1 && (v16 & 0xFFFFFF00000000) != 0)
        {
          break;
        }

        v15 += 8;
        if (v15 == 56)
        {
          result = -1;
          break;
        }
      }

      if ((*(v7 + 32) != result) != v14)
      {
        v18 = 24;
        v19 = 0xFFFFFFFFLL;
        do
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v18), v13);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v23 = v20;
            v19 = v21;
            goto LABEL_28;
          }

          v18 += 8;
        }

        while (v18 != 56);
        v23 = -1;
LABEL_28:
        result = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(v7, v23, v19, 0);
      }
    }

    v24 = a2[43];
    if (v24)
    {
      v25 = a2[45];
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        result = re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::checkRenderOptionChanges(v7, v27, a3, a4);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::checkRenderOptionChanges(uint64_t result, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[39];
  v28 = v8;
  if (*(a4 + 316))
  {
    result = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a4 + 288, &v28);
    if (result)
    {
      return result;
    }

    v8 = a2[39];
    goto LABEL_10;
  }

  v9 = *(a4 + 16);
  v10 = a4 + 8 * v9 + 32;
  if (v9)
  {
    v11 = 8 * v9;
    v12 = (a4 + 32);
    while (*v12 != v8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v10;
  }

  if (v12 == v10)
  {
LABEL_10:
    v28 = v8;
    re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a4, &v28);
    result = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v13 = result;
      v14 = *re::ecs2::RenderOptions::forEntity(a3, a2);
      v15 = 24;
      while (1)
      {
        result = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v15), v13);
        if (result != -1 && (v16 & 0xFFFFFF00000000) != 0)
        {
          break;
        }

        v15 += 8;
        if (v15 == 56)
        {
          result = -1;
          break;
        }
      }

      if ((*(v7 + 32) != result) != v14)
      {
        v18 = 24;
        v19 = 0xFFFFFFFFLL;
        do
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v18), v13);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v23 = v20;
            v19 = v21;
            goto LABEL_28;
          }

          v18 += 8;
        }

        while (v18 != 56);
        v23 = -1;
LABEL_28:
        result = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(v7, v23, v19, 0);
      }
    }

    v24 = a2[43];
    if (v24)
    {
      v25 = a2[45];
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        result = re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::checkRenderOptionChanges(v7, v27, a3, a4);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::checkRenderOptionChanges(uint64_t result, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[39];
  v28 = v8;
  if (*(a4 + 316))
  {
    result = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a4 + 288, &v28);
    if (result)
    {
      return result;
    }

    v8 = a2[39];
    goto LABEL_10;
  }

  v9 = *(a4 + 16);
  v10 = a4 + 8 * v9 + 32;
  if (v9)
  {
    v11 = 8 * v9;
    v12 = (a4 + 32);
    while (*v12 != v8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v10;
  }

  if (v12 == v10)
  {
LABEL_10:
    v28 = v8;
    re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a4, &v28);
    result = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (result)
    {
      v13 = result;
      v14 = *re::ecs2::RenderOptions::forEntity(a3, a2);
      v15 = 24;
      while (1)
      {
        result = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v15), v13);
        if (result != -1 && (v16 & 0xFFFFFF00000000) != 0)
        {
          break;
        }

        v15 += 8;
        if (v15 == 56)
        {
          result = -1;
          break;
        }
      }

      if ((*(v7 + 32) != result) != v14)
      {
        v18 = 24;
        v19 = 0xFFFFFFFFLL;
        do
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v18), v13);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v23 = v20;
            v19 = v21;
            goto LABEL_28;
          }

          v18 += 8;
        }

        while (v18 != 56);
        v23 = -1;
LABEL_28:
        result = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(v7, v23, v19, 0);
      }
    }

    v24 = a2[43];
    if (v24)
    {
      v25 = a2[45];
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        result = re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::checkRenderOptionChanges(v7, v27, a3, a4);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::checkRenderOptionChanges(uint64_t result, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[39];
  v28 = v8;
  if (*(a4 + 316))
  {
    result = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a4 + 288, &v28);
    if (result)
    {
      return result;
    }

    v8 = a2[39];
    goto LABEL_10;
  }

  v9 = *(a4 + 16);
  v10 = a4 + 8 * v9 + 32;
  if (v9)
  {
    v11 = 8 * v9;
    v12 = (a4 + 32);
    while (*v12 != v8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v10;
  }

  if (v12 == v10)
  {
LABEL_10:
    v28 = v8;
    re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a4, &v28);
    result = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (result)
    {
      v13 = result;
      v14 = *re::ecs2::RenderOptions::forEntity(a3, a2);
      v15 = 24;
      while (1)
      {
        result = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v15), v13);
        if (result != -1 && (v16 & 0xFFFFFF00000000) != 0)
        {
          break;
        }

        v15 += 8;
        if (v15 == 56)
        {
          result = -1;
          break;
        }
      }

      if ((*(v7 + 32) != result) != v14)
      {
        v18 = 24;
        v19 = 0xFFFFFFFFLL;
        do
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v18), v13);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v23 = v20;
            v19 = v21;
            goto LABEL_28;
          }

          v18 += 8;
        }

        while (v18 != 56);
        v23 = -1;
LABEL_28:
        result = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(v7, v23, v19, 0);
      }
    }

    v24 = a2[43];
    if (v24)
    {
      v25 = a2[45];
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        result = re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::checkRenderOptionChanges(v7, v27, a3, a4);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}

void *re::BucketArray<re::LightInfoArrays,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::LightInfoArrays,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::LightInfoArrays,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 1152, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::LightInfoArrays,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::LightInfoArrays,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::LightInfoArrays,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::LightInfoArrays,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::LightInfoArrays>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](v4, i);
        re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v7 + 248);
        re::DynamicArray<re::RectAreaLightInfo>::deinit(v7 + 208);
        re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v7 + 168);
        re::DynamicArray<re::SpotLightInfo>::deinit(v7 + 128);
        re::DynamicArray<re::RectAreaLightInfo>::deinit(v7 + 88);
        re::DynamicArray<re::DirectionalLightInfo>::deinit(v7 + 48);
        re::DynamicArray<unsigned long>::deinit(v7 + 8);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v8 = *(*v2 + 40);

    return v8(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::LightInfoArrays>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF150;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::LightInfoArrays>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF150;
  a2[1] = v2;
  return a2;
}

uint64_t re::BucketArray<re::LightInfoArrays,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + 288 * (a2 & 3);
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE4C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE3C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE388;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

void re::ecs2::introspect_EmitterShape(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6BA8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6BB0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A6E68, "EmitterShape", 4, 4, 1, 1);
      qword_1EE1A6E68 = &unk_1F5D0C658;
      qword_1EE1A6EA8 = &re::ecs2::introspect_EmitterShape(BOOL)::enumTable;
      dword_1EE1A6E78 = 9;
      __cxa_guard_release(&qword_1EE1A6BB0);
    }

    if (_MergedGlobals_238)
    {
      break;
    }

    _MergedGlobals_238 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A6E68, a2);
    v43 = 0x333860152317D9E6;
    v44 = "EmitterShape";
    v47 = 208862;
    v48 = "int";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A6EA8;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1A6E88 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A6BA8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Point";
      qword_1EE1A6D80 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Sphere";
      qword_1EE1A6D88 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Box";
      qword_1EE1A6D90 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Cylinder";
      qword_1EE1A6D98 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "Plane";
      qword_1EE1A6DA0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "Torus";
      qword_1EE1A6DA8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 8) = 6;
      *(v42 + 16) = "Cone";
      qword_1EE1A6DB0 = v42;
      __cxa_guard_release(&qword_1EE1A6BA8);
    }
  }
}

void re::ecs2::introspect_BirthLocation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6BB8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6BC0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A6EB0, "BirthLocation", 4, 4, 1, 1);
      qword_1EE1A6EB0 = &unk_1F5D0C658;
      qword_1EE1A6EF0 = &re::ecs2::introspect_BirthLocation(BOOL)::enumTable;
      dword_1EE1A6EC0 = 9;
      __cxa_guard_release(&qword_1EE1A6BC0);
    }

    if (byte_1EE1A6B99)
    {
      break;
    }

    byte_1EE1A6B99 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A6EB0, a2);
    v35 = 0xEF9FC6F8AB74F2E8;
    v36 = "BirthLocation";
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
      v6 = qword_1EE1A6EF0;
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
      xmmword_1EE1A6ED0 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A6BB8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Surface";
      qword_1EE1A6CB8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Volume";
      qword_1EE1A6CC0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Vertices";
      qword_1EE1A6CC8 = v34;
      __cxa_guard_release(&qword_1EE1A6BB8);
    }
  }
}

void re::ecs2::introspect_BirthDirection(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6BC8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6BD0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A6EF8, "BirthDirection", 4, 4, 1, 1);
      qword_1EE1A6EF8 = &unk_1F5D0C658;
      qword_1EE1A6F38 = &re::ecs2::introspect_BirthDirection(BOOL)::enumTable;
      dword_1EE1A6F08 = 9;
      __cxa_guard_release(&qword_1EE1A6BD0);
    }

    if (byte_1EE1A6B9A)
    {
      break;
    }

    byte_1EE1A6B9A = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A6EF8, a2);
    v35 = 0x4590B6CDF20CB40;
    v36 = "BirthDirection";
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
      v6 = qword_1EE1A6F38;
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
      xmmword_1EE1A6F18 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A6BC8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Constant";
      qword_1EE1A6CD0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Local";
      qword_1EE1A6CD8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Normal";
      qword_1EE1A6CE0 = v34;
      __cxa_guard_release(&qword_1EE1A6BC8);
    }
  }
}

void re::ecs2::introspect_ParticleLifetimeOpacity(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6BD8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6BE0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A6F40, "ParticleLifetimeOpacity", 4, 4, 1, 1);
      qword_1EE1A6F40 = &unk_1F5D0C658;
      qword_1EE1A6F80 = &re::ecs2::introspect_ParticleLifetimeOpacity(BOOL)::enumTable;
      dword_1EE1A6F50 = 9;
      __cxa_guard_release(&qword_1EE1A6BE0);
    }

    if (byte_1EE1A6B9B)
    {
      break;
    }

    byte_1EE1A6B9B = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A6F40, a2);
    v43 = 0x72D293C0BFE398F8;
    v44 = "ParticleLifetimeOpacity";
    v47 = 208862;
    v48 = "int";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A6F80;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1A6F60 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A6BD8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "LinearFadeOut";
      qword_1EE1A6DB8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "LinearFadeIn";
      qword_1EE1A6DC0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "GradualFadeInOut";
      qword_1EE1A6DC8 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "QuickFadeInOut";
      qword_1EE1A6DD0 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "EaseFadeIn";
      qword_1EE1A6DD8 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "EaseFadeOut";
      qword_1EE1A6DE0 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 8) = 6;
      *(v42 + 16) = "Constant";
      qword_1EE1A6DE8 = v42;
      __cxa_guard_release(&qword_1EE1A6BD8);
    }
  }
}

void re::ecs2::introspect_SpawnOccasion(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6BE8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6BF0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A6F88, "SpawnOccasion", 4, 4, 1, 1);
      qword_1EE1A6F88 = &unk_1F5D0C658;
      qword_1EE1A6FC8 = &re::ecs2::introspect_SpawnOccasion(BOOL)::enumTable;
      dword_1EE1A6F98 = 9;
      __cxa_guard_release(&qword_1EE1A6BF0);
    }

    if (byte_1EE1A6B9C)
    {
      break;
    }

    byte_1EE1A6B9C = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A6F88, a2);
    v37 = 0x67D4B61924D18EC4;
    v38 = "SpawnOccasion";
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
      v6 = qword_1EE1A6FC8;
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
      xmmword_1EE1A6FA8 = v39;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A6BE8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "OnBirth";
      qword_1EE1A6D60 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 2;
      *(v32 + 2) = "OnUpdate";
      qword_1EE1A6D68 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 1;
      *(v34 + 2) = "OnDeath";
      qword_1EE1A6D70 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "OnCollide";
      qword_1EE1A6D78 = v36;
      __cxa_guard_release(&qword_1EE1A6BE8);
    }
  }
}

void re::ecs2::introspect_BillboardMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6BF8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C00))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A6FD0, "BillboardMode", 4, 4, 1, 1);
      qword_1EE1A6FD0 = &unk_1F5D0C658;
      qword_1EE1A7010 = &re::ecs2::introspect_BillboardMode(BOOL)::enumTable;
      dword_1EE1A6FE0 = 9;
      __cxa_guard_release(&qword_1EE1A6C00);
    }

    if (byte_1EE1A6B9D)
    {
      break;
    }

    byte_1EE1A6B9D = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A6FD0, a2);
    v35 = 0xEF7B4D464AB6BAC4;
    v36 = "BillboardMode";
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
      v6 = qword_1EE1A7010;
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
      xmmword_1EE1A6FF0 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A6BF8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Billboard";
      qword_1EE1A6CE8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Free";
      qword_1EE1A6CF0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "BillboardYAligned";
      qword_1EE1A6CF8 = v34;
      __cxa_guard_release(&qword_1EE1A6BF8);
    }
  }
}

void re::ecs2::introspect_ParticleSortOrder(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6C08, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C10))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A7018, "ParticleSortOrder", 4, 4, 1, 1);
      qword_1EE1A7018 = &unk_1F5D0C658;
      qword_1EE1A7058 = &re::ecs2::introspect_ParticleSortOrder(BOOL)::enumTable;
      dword_1EE1A7028 = 9;
      __cxa_guard_release(&qword_1EE1A6C10);
    }

    if (byte_1EE1A6B9E)
    {
      break;
    }

    byte_1EE1A6B9E = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A7018, a2);
    v43 = 0x7B9E2BB4FC9CB894;
    v44 = "ParticleSortOrder";
    v47 = 208862;
    v48 = "int";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A7058;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1A7038 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A6C08);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "IncreasingDepth";
      qword_1EE1A6DF0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "DecreasingDepth";
      qword_1EE1A6DF8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "IncreasingID";
      qword_1EE1A6E00 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "DecreasingID";
      qword_1EE1A6E08 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "IncreasingAge";
      qword_1EE1A6E10 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "DecreasingAge";
      qword_1EE1A6E18 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 8) = 6;
      *(v42 + 16) = "Unsorted";
      qword_1EE1A6E20 = v42;
      __cxa_guard_release(&qword_1EE1A6C08);
    }
  }
}

void re::ecs2::introspect_ParticleBlendMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6C18, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C20))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A7060, "ParticleBlendMode", 4, 4, 1, 1);
      qword_1EE1A7060 = &unk_1F5D0C658;
      qword_1EE1A70A0 = &re::ecs2::introspect_ParticleBlendMode(BOOL)::enumTable;
      dword_1EE1A7070 = 9;
      __cxa_guard_release(&qword_1EE1A6C20);
    }

    if (byte_1EE1A6B9F)
    {
      break;
    }

    byte_1EE1A6B9F = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A7060, a2);
    v35 = 0x7B9E11296A914B1CLL;
    v36 = "ParticleBlendMode";
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
      v6 = qword_1EE1A70A0;
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
      xmmword_1EE1A7080 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A6C18);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Alpha";
      qword_1EE1A6D00 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Opaque";
      qword_1EE1A6D08 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Additive";
      qword_1EE1A6D10 = v34;
      __cxa_guard_release(&qword_1EE1A6C18);
    }
  }
}

void re::ecs2::introspect_ParticleAnimationRepeatMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6C28, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C30))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A70A8, "ParticleAnimationRepeatMode", 4, 4, 1, 1);
      qword_1EE1A70A8 = &unk_1F5D0C658;
      qword_1EE1A70E8 = &re::ecs2::introspect_ParticleAnimationRepeatMode(BOOL)::enumTable;
      dword_1EE1A70B8 = 9;
      __cxa_guard_release(&qword_1EE1A6C30);
    }

    if (byte_1EE1A6BA0)
    {
      break;
    }

    byte_1EE1A6BA0 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A70A8, a2);
    v35 = 0x53F15E65CD4D5FF8;
    v36 = "ParticleAnimationRepeatMode";
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
      v6 = qword_1EE1A70E8;
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
      xmmword_1EE1A70C8 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A6C28);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "PlayOnce";
      qword_1EE1A6D18 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Looping";
      qword_1EE1A6D20 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "AutoReverse";
      qword_1EE1A6D28 = v34;
      __cxa_guard_release(&qword_1EE1A6C28);
    }
  }
}

void re::ecs2::introspect_ParticleSimulationState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A6C38, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A6C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C40))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A70F0, "ParticleSimulationState", 4, 4, 1, 1);
      qword_1EE1A70F0 = &unk_1F5D0C658;
      qword_1EE1A7130 = &re::ecs2::introspect_ParticleSimulationState(BOOL)::enumTable;
      dword_1EE1A7100 = 9;
      __cxa_guard_release(&qword_1EE1A6C40);
    }

    if (byte_1EE1A6BA1)
    {
      break;
    }

    byte_1EE1A6BA1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A70F0, a2);
    v35 = 0x90DAEB79A467BE88;
    v36 = "ParticleSimulationState";
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
      v6 = qword_1EE1A7130;
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
      xmmword_1EE1A7110 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A6C38);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Playing";
      qword_1EE1A6D30 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Paused";
      qword_1EE1A6D38 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Stop";
      qword_1EE1A6D40 = v34;
      __cxa_guard_release(&qword_1EE1A6C38);
    }
  }
}

void *re::ecs2::allocInfo_ParticleEmitter(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7138, "ParticleEmitter");
    __cxa_guard_release(&qword_1EE1A6C48);
  }

  return &unk_1EE1A7138;
}

void re::ecs2::initInfo_ParticleEmitter(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v202[0] = 0x4CD9458CE2D0B3D0;
  v202[1] = "ParticleEmitter";
  if (v202[0])
  {
    if (v202[0])
    {
    }
  }

  *(this + 2) = v203;
  if ((atomic_load_explicit(&qword_1EE1A6C50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6C50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "birthRate";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A7490 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "birthRateVariation";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A7498 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "dampingFactor";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A74A0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "spreadingAngle";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A74A8 = v21;
      v22 = re::introspectionAllocator(v21);
      v23 = re::introspect_Vector3F(1);
      v24 = (*(*v22 + 32))(v22, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "acceleration";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A74B0 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_float(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "particleSize";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x2000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1A74B8 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_float(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "particleSizeVariation";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x2400000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1A74C0 = v32;
      v33 = re::introspectionAllocator(v32);
      re::ecs2::introspect_BillboardMode(v33, v34);
      v35 = (*(*v33 + 32))(v33, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "billboardMode";
      *(v35 + 16) = &qword_1EE1A6FD0;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x2800000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1A74C8 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = re::introspect_Vector3F(1);
      v38 = (*(*v36 + 32))(v36, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "billboardAxis";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x3000000009;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1A74D0 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::introspect_float(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "axisVariation";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0x400000000ALL;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE1A74D8 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "particleMass";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0x440000000BLL;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE1A74E0 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_float(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "particleMassVariation";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0x480000000CLL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE1A74E8 = v50;
      v51 = re::introspectionAllocator(v50);
      v53 = re::introspect_double(1, v52);
      v54 = (*(*v51 + 32))(v51, 72, 8);
      *v54 = 1;
      *(v54 + 8) = "particleLifeSpan";
      *(v54 + 16) = v53;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0x500000000DLL;
      *(v54 + 40) = 0;
      *(v54 + 48) = 0;
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      qword_1EE1A74F0 = v54;
      v55 = re::introspectionAllocator(v54);
      v57 = re::introspect_double(1, v56);
      v58 = (*(*v55 + 32))(v55, 72, 8);
      *v58 = 1;
      *(v58 + 8) = "particleLifeSpanVariation";
      *(v58 + 16) = v57;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0x580000000ELL;
      *(v58 + 40) = 0;
      *(v58 + 48) = 0;
      *(v58 + 56) = 0;
      *(v58 + 64) = 0;
      qword_1EE1A74F8 = v58;
      v59 = re::introspectionAllocator(v58);
      v61 = re::introspect_float(1, v60);
      v62 = (*(*v59 + 32))(v59, 72, 8);
      *v62 = 1;
      *(v62 + 8) = "particleAngle";
      *(v62 + 16) = v61;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0x600000000FLL;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
      *(v62 + 64) = 0;
      qword_1EE1A7500 = v62;
      v63 = re::introspectionAllocator(v62);
      v65 = re::introspect_float(1, v64);
      v66 = (*(*v63 + 32))(v63, 72, 8);
      *v66 = 1;
      *(v66 + 8) = "particleAngleVariation";
      *(v66 + 16) = v65;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0x6400000010;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      qword_1EE1A7508 = v66;
      v67 = re::introspectionAllocator(v66);
      v69 = re::introspect_float(1, v68);
      v70 = (*(*v67 + 32))(v67, 72, 8);
      *v70 = 1;
      *(v70 + 8) = "particleAngularVelocity";
      *(v70 + 16) = v69;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0x6800000011;
      *(v70 + 40) = 0;
      *(v70 + 48) = 0;
      *(v70 + 56) = 0;
      *(v70 + 64) = 0;
      qword_1EE1A7510 = v70;
      v71 = re::introspectionAllocator(v70);
      v73 = re::introspect_float(1, v72);
      v74 = (*(*v71 + 32))(v71, 72, 8);
      *v74 = 1;
      *(v74 + 8) = "particleAngularVelocityVariation";
      *(v74 + 16) = v73;
      *(v74 + 24) = 0;
      *(v74 + 32) = 0x6C00000012;
      *(v74 + 40) = 0;
      *(v74 + 48) = 0;
      *(v74 + 56) = 0;
      *(v74 + 64) = 0;
      qword_1EE1A7518 = v74;
      v75 = re::introspectionAllocator(v74);
      v77 = re::introspect_float(1, v76);
      v78 = (*(*v75 + 32))(v75, 72, 8);
      *v78 = 1;
      *(v78 + 8) = "particleBounce";
      *(v78 + 16) = v77;
      *(v78 + 24) = 0;
      *(v78 + 32) = 0x7000000013;
      *(v78 + 40) = 0;
      *(v78 + 48) = 0;
      *(v78 + 56) = 0;
      *(v78 + 64) = 0;
      qword_1EE1A7520 = v78;
      v79 = re::introspectionAllocator(v78);
      v81 = re::introspect_float(1, v80);
      v82 = (*(*v79 + 32))(v79, 72, 8);
      *v82 = 1;
      *(v82 + 8) = "particleFriction";
      *(v82 + 16) = v81;
      *(v82 + 24) = 0;
      *(v82 + 32) = 0x7400000014;
      *(v82 + 40) = 0;
      *(v82 + 48) = 0;
      *(v82 + 56) = 0;
      *(v82 + 64) = 0;
      qword_1EE1A7528 = v82;
      v83 = re::introspectionAllocator(v82);
      re::ecs2::introspect_ParticleLifetimeOpacity(v83, v84);
      v85 = (*(*v83 + 32))(v83, 72, 8);
      *v85 = 1;
      *(v85 + 8) = "opacityOverLife";
      *(v85 + 16) = &qword_1EE1A6F40;
      *(v85 + 24) = 0;
      *(v85 + 32) = 0x7800000015;
      *(v85 + 40) = 0;
      *(v85 + 48) = 0;
      *(v85 + 56) = 0;
      *(v85 + 64) = 0;
      qword_1EE1A7530 = v85;
      v86 = re::introspectionAllocator(v85);
      v88 = re::introspect_float(1, v87);
      v89 = (*(*v86 + 32))(v86, 72, 8);
      *v89 = 1;
      *(v89 + 8) = "sizeMultiplierAtEndOfLifespan";
      *(v89 + 16) = v88;
      *(v89 + 24) = 0;
      *(v89 + 32) = 0x7C00000016;
      *(v89 + 40) = 0;
      *(v89 + 48) = 0;
      *(v89 + 56) = 0;
      *(v89 + 64) = 0;
      qword_1EE1A7538 = v89;
      v90 = re::introspectionAllocator(v89);
      v92 = re::introspect_float(1, v91);
      v93 = (*(*v90 + 32))(v90, 72, 8);
      *v93 = 1;
      *(v93 + 8) = "sizeMultiplierAtEndOfLifespanPower";
      *(v93 + 16) = v92;
      *(v93 + 24) = 0;
      *(v93 + 32) = 0x8000000017;
      *(v93 + 40) = 0;
      *(v93 + 48) = 0;
      *(v93 + 56) = 0;
      *(v93 + 64) = 0;
      qword_1EE1A7540 = v93;
      v94 = re::introspectionAllocator(v93);
      v95 = re::introspect_Vector4F(1);
      v96 = (*(*v94 + 32))(v94, 72, 8);
      *v96 = 1;
      *(v96 + 8) = "startColorA";
      *(v96 + 16) = v95;
      *(v96 + 24) = 0;
      *(v96 + 32) = 0x9000000018;
      *(v96 + 40) = 0;
      *(v96 + 48) = 0;
      *(v96 + 56) = 0;
      *(v96 + 64) = 0;
      qword_1EE1A7548 = v96;
      v97 = re::introspectionAllocator(v96);
      v98 = re::introspect_Vector4F(1);
      v99 = (*(*v97 + 32))(v97, 72, 8);
      *v99 = 1;
      *(v99 + 8) = "startColorB";
      *(v99 + 16) = v98;
      *(v99 + 24) = 0;
      *(v99 + 32) = 0xA000000019;
      *(v99 + 40) = 0;
      *(v99 + 48) = 0;
      *(v99 + 56) = 0;
      *(v99 + 64) = 0;
      qword_1EE1A7550 = v99;
      v100 = re::introspectionAllocator(v99);
      v102 = re::introspect_BOOL(1, v101);
      v103 = (*(*v100 + 32))(v100, 72, 8);
      *v103 = 1;
      *(v103 + 8) = "useStartColorRange";
      *(v103 + 16) = v102;
      *(v103 + 24) = 0;
      *(v103 + 32) = 0xB00000001ALL;
      *(v103 + 40) = 0;
      *(v103 + 48) = 0;
      *(v103 + 56) = 0;
      *(v103 + 64) = 0;
      qword_1EE1A7558 = v103;
      v104 = re::introspectionAllocator(v103);
      v105 = re::introspect_Vector4F(1);
      v106 = (*(*v104 + 32))(v104, 72, 8);
      *v106 = 1;
      *(v106 + 8) = "endColorA";
      *(v106 + 16) = v105;
      *(v106 + 24) = 0;
      *(v106 + 32) = 0xC00000001BLL;
      *(v106 + 40) = 0;
      *(v106 + 48) = 0;
      *(v106 + 56) = 0;
      *(v106 + 64) = 0;
      qword_1EE1A7560 = v106;
      v107 = re::introspectionAllocator(v106);
      v108 = re::introspect_Vector4F(1);
      v109 = (*(*v107 + 32))(v107, 72, 8);
      *v109 = 1;
      *(v109 + 8) = "endColorB";
      *(v109 + 16) = v108;
      *(v109 + 24) = 0;
      *(v109 + 32) = 0xD00000001CLL;
      *(v109 + 40) = 0;
      *(v109 + 48) = 0;
      *(v109 + 56) = 0;
      *(v109 + 64) = 0;
      qword_1EE1A7568 = v109;
      v110 = re::introspectionAllocator(v109);
      v112 = re::introspect_BOOL(1, v111);
      v113 = (*(*v110 + 32))(v110, 72, 8);
      *v113 = 1;
      *(v113 + 8) = "useEndColorRange";
      *(v113 + 16) = v112;
      *(v113 + 24) = 0;
      *(v113 + 32) = 0xE00000001DLL;
      *(v113 + 40) = 0;
      *(v113 + 48) = 0;
      *(v113 + 56) = 0;
      *(v113 + 64) = 0;
      qword_1EE1A7570 = v113;
      v114 = re::introspectionAllocator(v113);
      v116 = re::introspect_BOOL(1, v115);
      v117 = (*(*v114 + 32))(v114, 72, 8);
      *v117 = 1;
      *(v117 + 8) = "useEndColor";
      *(v117 + 16) = v116;
      *(v117 + 24) = 0;
      *(v117 + 32) = 0xE10000001ELL;
      *(v117 + 40) = 0;
      *(v117 + 48) = 0;
      *(v117 + 56) = 0;
      *(v117 + 64) = 0;
      qword_1EE1A7578 = v117;
      v118 = re::introspectionAllocator(v117);
      v120 = re::introspect_float(1, v119);
      v121 = (*(*v118 + 32))(v118, 72, 8);
      *v121 = 1;
      *(v121 + 8) = "colorEvolutionPower";
      *(v121 + 16) = v120;
      *(v121 + 24) = 0;
      *(v121 + 32) = 0xE40000001FLL;
      *(v121 + 40) = 0;
      *(v121 + 48) = 0;
      *(v121 + 56) = 0;
      *(v121 + 64) = 0;
      qword_1EE1A7580 = v121;
      v122 = re::introspectionAllocator(v121);
      v124 = re::introspect_float(1, v123);
      v125 = (*(*v122 + 32))(v122, 72, 8);
      *v125 = 1;
      *(v125 + 8) = "noiseStrength";
      *(v125 + 16) = v124;
      *(v125 + 24) = 0;
      *(v125 + 32) = 0xE800000020;
      *(v125 + 40) = 0;
      *(v125 + 48) = 0;
      *(v125 + 56) = 0;
      *(v125 + 64) = 0;
      qword_1EE1A7588 = v125;
      v126 = re::introspectionAllocator(v125);
      v128 = re::introspect_float(1, v127);
      v129 = (*(*v126 + 32))(v126, 72, 8);
      *v129 = 1;
      *(v129 + 8) = "noiseScale";
      *(v129 + 16) = v128;
      *(v129 + 24) = 0;
      *(v129 + 32) = 0xEC00000021;
      *(v129 + 40) = 0;
      *(v129 + 48) = 0;
      *(v129 + 56) = 0;
      *(v129 + 64) = 0;
      qword_1EE1A7590 = v129;
      v130 = re::introspectionAllocator(v129);
      v132 = re::introspect_float(1, v131);
      v133 = (*(*v130 + 32))(v130, 72, 8);
      *v133 = 1;
      *(v133 + 8) = "noiseAnimationSpeed";
      *(v133 + 16) = v132;
      *(v133 + 24) = 0;
      *(v133 + 32) = 0xF000000022;
      *(v133 + 40) = 0;
      *(v133 + 48) = 0;
      *(v133 + 56) = 0;
      *(v133 + 64) = 0;
      qword_1EE1A7598 = v133;
      v134 = re::introspectionAllocator(v133);
      v136 = re::introspect_float(1, v135);
      v137 = (*(*v134 + 32))(v134, 72, 8);
      *v137 = 1;
      *(v137 + 8) = "radialGravityStrength";
      *(v137 + 16) = v136;
      *(v137 + 24) = 0;
      *(v137 + 32) = 0xF400000023;
      *(v137 + 40) = 0;
      *(v137 + 48) = 0;
      *(v137 + 56) = 0;
      *(v137 + 64) = 0;
      qword_1EE1A75A0 = v137;
      v138 = re::introspectionAllocator(v137);
      v139 = re::introspect_Vector3F(1);
      v140 = (*(*v138 + 32))(v138, 72, 8);
      *v140 = 1;
      *(v140 + 8) = "radialGravityCenter";
      *(v140 + 16) = v139;
      *(v140 + 24) = 0;
      *(v140 + 32) = 0x10000000024;
      *(v140 + 40) = 0;
      *(v140 + 48) = 0;
      *(v140 + 56) = 0;
      *(v140 + 64) = 0;
      qword_1EE1A75A8 = v140;
      v141 = re::introspectionAllocator(v140);
      v143 = re::introspect_float(1, v142);
      v144 = (*(*v141 + 32))(v141, 72, 8);
      *v144 = 1;
      *(v144 + 8) = "vortexStrength";
      *(v144 + 16) = v143;
      *(v144 + 24) = 0;
      *(v144 + 32) = 0x11000000025;
      *(v144 + 40) = 0;
      *(v144 + 48) = 0;
      *(v144 + 56) = 0;
      *(v144 + 64) = 0;
      qword_1EE1A75B0 = v144;
      v145 = re::introspectionAllocator(v144);
      v146 = re::introspect_Vector3F(1);
      v147 = (*(*v145 + 32))(v145, 72, 8);
      *v147 = 1;
      *(v147 + 8) = "vortexDirection";
      *(v147 + 16) = v146;
      *(v147 + 24) = 0;
      *(v147 + 32) = 0x12000000026;
      *(v147 + 40) = 0;
      *(v147 + 48) = 0;
      *(v147 + 56) = 0;
      *(v147 + 64) = 0;
      qword_1EE1A75B8 = v147;
      v148 = re::introspectionAllocator(v147);
      v150 = re::introspect_BOOL(1, v149);
      v151 = (*(*v148 + 32))(v148, 72, 8);
      *v151 = 1;
      *(v151 + 8) = "isLightingEnabled";
      *(v151 + 16) = v150;
      *(v151 + 24) = 0;
      *(v151 + 32) = 0x13000000027;
      *(v151 + 40) = 0;
      *(v151 + 48) = 0;
      *(v151 + 56) = 0;
      *(v151 + 64) = 0;
      qword_1EE1A75C0 = v151;
      v152 = re::introspectionAllocator(v151);
      v154 = re::introspect_float(1, v153);
      v155 = (*(*v152 + 32))(v152, 72, 8);
      *v155 = 1;
      *(v155 + 8) = "stretchFactor";
      *(v155 + 16) = v154;
      *(v155 + 24) = 0;
      *(v155 + 32) = 0x13400000028;
      *(v155 + 40) = 0;
      *(v155 + 48) = 0;
      *(v155 + 56) = 0;
      *(v155 + 64) = 0;
      qword_1EE1A75C8 = v155;
      v156 = re::introspectionAllocator(v155);
      re::ecs2::introspect_ParticleSortOrder(v156, v157);
      v158 = (*(*v156 + 32))(v156, 72, 8);
      *v158 = 1;
      *(v158 + 8) = "sortOrder";
      *(v158 + 16) = &qword_1EE1A7018;
      *(v158 + 24) = 0;
      *(v158 + 32) = 0x13800000029;
      *(v158 + 40) = 0;
      *(v158 + 48) = 0;
      *(v158 + 56) = 0;
      *(v158 + 64) = 0;
      qword_1EE1A75D0 = v158;
      v159 = re::introspectionAllocator(v158);
      re::ecs2::introspect_ParticleBlendMode(v159, v160);
      v161 = (*(*v159 + 32))(v159, 72, 8);
      *v161 = 1;
      *(v161 + 8) = "blendMode";
      *(v161 + 16) = &qword_1EE1A7060;
      *(v161 + 24) = 0;
      *(v161 + 32) = 0x13C0000002ALL;
      *(v161 + 40) = 0;
      *(v161 + 48) = 0;
      *(v161 + 56) = 0;
      *(v161 + 64) = 0;
      qword_1EE1A75D8 = v161;
      v162 = re::introspectionAllocator(v161);
      v164 = re::introspect_AssetHandle(1, v163);
      v165 = (*(*v162 + 32))(v162, 72, 8);
      *v165 = 1;
      *(v165 + 8) = "particleImage";
      *(v165 + 16) = v164;
      *(v165 + 24) = 0;
      *(v165 + 32) = 0x1400000002BLL;
      *(v165 + 40) = 0;
      *(v165 + 48) = 0;
      *(v165 + 56) = 0;
      *(v165 + 64) = 0;
      qword_1EE1A75E0 = v165;
      v166 = re::introspectionAllocator(v165);
      v168 = re::introspect_BOOL(1, v167);
      v169 = (*(*v166 + 32))(v166, 72, 8);
      *v169 = 1;
      *(v169 + 8) = "isAnimated";
      *(v169 + 16) = v168;
      *(v169 + 24) = 0;
      *(v169 + 32) = 0x1580000002CLL;
      *(v169 + 40) = 0;
      *(v169 + 48) = 0;
      *(v169 + 56) = 0;
      *(v169 + 64) = 0;
      qword_1EE1A75E8 = v169;
      v170 = re::introspectionAllocator(v169);
      v172 = re::introspect_int64_t(1, v171);
      v173 = (*(*v170 + 32))(v170, 72, 8);
      *v173 = 1;
      *(v173 + 8) = "rowCount";
      *(v173 + 16) = v172;
      *(v173 + 24) = 0;
      *(v173 + 32) = 0x1600000002DLL;
      *(v173 + 40) = 0;
      *(v173 + 48) = 0;
      *(v173 + 56) = 0;
      *(v173 + 64) = 0;
      qword_1EE1A75F0 = v173;
      v174 = re::introspectionAllocator(v173);
      v176 = re::introspect_int64_t(1, v175);
      v177 = (*(*v174 + 32))(v174, 72, 8);
      *v177 = 1;
      *(v177 + 8) = "columnCount";
      *(v177 + 16) = v176;
      *(v177 + 24) = 0;
      *(v177 + 32) = 0x1680000002ELL;
      *(v177 + 40) = 0;
      *(v177 + 48) = 0;
      *(v177 + 56) = 0;
      *(v177 + 64) = 0;
      qword_1EE1A75F8 = v177;
      v178 = re::introspectionAllocator(v177);
      v180 = re::introspect_int64_t(1, v179);
      v181 = (*(*v178 + 32))(v178, 72, 8);
      *v181 = 1;
      *(v181 + 8) = "initialFrame";
      *(v181 + 16) = v180;
      *(v181 + 24) = 0;
      *(v181 + 32) = 0x1700000002FLL;
      *(v181 + 40) = 0;
      *(v181 + 48) = 0;
      *(v181 + 56) = 0;
      *(v181 + 64) = 0;
      qword_1EE1A7600 = v181;
      v182 = re::introspectionAllocator(v181);
      v184 = re::introspect_int64_t(1, v183);
      v185 = (*(*v182 + 32))(v182, 72, 8);
      *v185 = 1;
      *(v185 + 8) = "initialFrameVariation";
      *(v185 + 16) = v184;
      *(v185 + 24) = 0;
      *(v185 + 32) = 0x17800000030;
      *(v185 + 40) = 0;
      *(v185 + 48) = 0;
      *(v185 + 56) = 0;
      *(v185 + 64) = 0;
      qword_1EE1A7608 = v185;
      v186 = re::introspectionAllocator(v185);
      v188 = re::introspect_float(1, v187);
      v189 = (*(*v186 + 32))(v186, 72, 8);
      *v189 = 1;
      *(v189 + 8) = "frameRate";
      *(v189 + 16) = v188;
      *(v189 + 24) = 0;
      *(v189 + 32) = 0x18000000031;
      *(v189 + 40) = 0;
      *(v189 + 48) = 0;
      *(v189 + 56) = 0;
      *(v189 + 64) = 0;
      qword_1EE1A7610 = v189;
      v190 = re::introspectionAllocator(v189);
      v192 = re::introspect_float(1, v191);
      v193 = (*(*v190 + 32))(v190, 72, 8);
      *v193 = 1;
      *(v193 + 8) = "frameRateVariation";
      *(v193 + 16) = v192;
      *(v193 + 24) = 0;
      *(v193 + 32) = 0x18400000032;
      *(v193 + 40) = 0;
      *(v193 + 48) = 0;
      *(v193 + 56) = 0;
      *(v193 + 64) = 0;
      qword_1EE1A7618 = v193;
      v194 = re::introspectionAllocator(v193);
      re::ecs2::introspect_ParticleAnimationRepeatMode(v194, v195);
      v196 = (*(*v194 + 32))(v194, 72, 8);
      *v196 = 1;
      *(v196 + 8) = "animationRepeatMode";
      *(v196 + 16) = &qword_1EE1A70A8;
      *(v196 + 24) = 0;
      *(v196 + 32) = 0x18800000033;
      *(v196 + 40) = 0;
      *(v196 + 48) = 0;
      *(v196 + 56) = 0;
      *(v196 + 64) = 0;
      qword_1EE1A7620 = v196;
      v197 = re::introspectionAllocator(v196);
      v199 = re::introspect_BOOL(1, v198);
      v200 = (*(*v197 + 32))(v197, 72, 8);
      *v200 = 1;
      *(v200 + 8) = "collisions";
      *(v200 + 16) = v199;
      *(v200 + 24) = 0;
      *(v200 + 32) = 0x18C00000034;
      *(v200 + 40) = 0;
      *(v200 + 48) = 0;
      *(v200 + 56) = 0;
      *(v200 + 64) = 0;
      qword_1EE1A7628 = v200;
      __cxa_guard_release(&qword_1EE1A6C50);
    }
  }

  *(this + 2) = 0x19000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 52;
  *(this + 8) = &qword_1EE1A7490;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ParticleEmitter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ParticleEmitter>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ParticleEmitter>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ParticleEmitter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v201 = v203;
}

double re::internal::defaultConstruct<re::ecs2::ParticleEmitter>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1120403456;
  *(a3 + 4) = 0;
  *(a3 + 20) = 0;
  *(a3 + 12) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = 1017370378;
  *(a3 + 40) = 0;
  *(a3 + 48) = xmmword_1E3047680;
  *(a3 + 64) = 0x3F80000000000000;
  *(a3 + 72) = 0;
  *(a3 + 80) = xmmword_1E308A6E0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1050253722;
  *(a3 + 120) = 3;
  *(a3 + 124) = 0x3F8000003DCCCCCDLL;
  *(a3 + 144) = xmmword_1E308A6F0;
  *(a3 + 160) = xmmword_1E308A700;
  *(a3 + 176) = 0;
  *(a3 + 192) = xmmword_1E308A710;
  *(a3 + 208) = xmmword_1E308A720;
  *(a3 + 224) = 256;
  *(a3 + 228) = xmmword_1E308A730;
  *(a3 + 244) = 0;
  *(a3 + 256) = xmmword_1E3060D60;
  *(a3 + 272) = 0;
  *(a3 + 288) = xmmword_1E3047680;
  *(a3 + 304) = 0;
  *(a3 + 337) = 0;
  *(a3 + 308) = 0u;
  *(a3 + 324) = 0u;
  *(a3 + 352) = vdupq_n_s64(3uLL);
  *(a3 + 368) = 0;
  *(a3 + 376) = 0;
  *&result = 1091567616;
  *(a3 + 384) = 1091567616;
  *(a3 + 392) = 1;
  *(a3 + 396) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ParticleEmitter>(uint64_t a1)
{
  *a1 = 1120403456;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1017370378;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_1E3047680;
  *(a1 + 64) = 0x3F80000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_1E308A6E0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1050253722;
  *(a1 + 120) = 3;
  *(a1 + 124) = 0x3F8000003DCCCCCDLL;
  *(a1 + 144) = xmmword_1E308A6F0;
  *(a1 + 160) = xmmword_1E308A700;
  *(a1 + 176) = 0;
  *(a1 + 192) = xmmword_1E308A710;
  *(a1 + 208) = xmmword_1E308A720;
  *(a1 + 224) = 256;
  *(a1 + 228) = xmmword_1E308A730;
  *(a1 + 244) = 0;
  *(a1 + 256) = xmmword_1E3060D60;
  *(a1 + 272) = 0;
  *(a1 + 288) = xmmword_1E3047680;
  *(a1 + 304) = 0;
  *(a1 + 337) = 0;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 352) = vdupq_n_s64(3uLL);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *&result = 1091567616;
  *(a1 + 384) = 1091567616;
  *(a1 + 392) = 1;
  *(a1 + 396) = 0;
  return result;
}

void *re::ecs2::allocInfo_VFXEmitterComponentState(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A71C8, "VFXEmitterComponentState");
    __cxa_guard_release(&qword_1EE1A6C60);
  }

  return &unk_1EE1A71C8;
}

void re::ecs2::initInfo_VFXEmitterComponentState(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v139[0] = 0x915BBEAE8D6533B4;
  v139[1] = "VFXEmitterComponentState";
  if (v139[0])
  {
    if (v139[0])
    {
    }
  }

  *(this + 2) = v140;
  if ((atomic_load_explicit(&qword_1EE1A6C68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6C68);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_double(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "emissionDuration";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A7378 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_double(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "emissionDurationVariation";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A7380 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_double(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "idleDuration";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A7388 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_double(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "idleDurationVariation";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A7390 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_double(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "warmupDuration";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x2000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1A7398 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "loops";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x2800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1A73A0 = v29;
      v30 = re::introspectionAllocator(v29);
      re::ecs2::introspect_EmitterShape(v30, v31);
      v32 = (*(*v30 + 32))(v30, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "emitterShape";
      *(v32 + 16) = &qword_1EE1A6E68;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x2C00000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1A73A8 = v32;
      v33 = re::introspectionAllocator(v32);
      re::ecs2::introspect_BirthLocation(v33, v34);
      v35 = (*(*v33 + 32))(v33, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "birthLocation";
      *(v35 + 16) = &qword_1EE1A6EB0;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x3000000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1A73B0 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = re::introspect_Vector3F(1);
      v38 = (*(*v36 + 32))(v36, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "birthLocationVertex";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x4000000009;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1A73B8 = v38;
      v39 = re::introspectionAllocator(v38);
      re::ecs2::introspect_BirthDirection(v39, v40);
      v41 = (*(*v39 + 32))(v39, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "birthDirection";
      *(v41 + 16) = &qword_1EE1A6EF8;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x500000000ALL;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1A73C0 = v41;
      v42 = re::introspectionAllocator(v41);
      v43 = re::introspect_Vector3F(1);
      v44 = (*(*v42 + 32))(v42, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "shapeSize";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x700000000BLL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1A73C8 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_float(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "particleSpeed";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x880000000CLL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1A73D0 = v48;
      v49 = re::introspectionAllocator(v48);
      v51 = re::introspect_float(1, v50);
      v52 = (*(*v49 + 32))(v49, 72, 8);
      *v52 = 1;
      *(v52 + 8) = "particleSpeedVariation";
      *(v52 + 16) = v51;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0x8C0000000DLL;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      qword_1EE1A73D8 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = re::introspect_Vector3F(1);
      v55 = (*(*v53 + 32))(v53, 72, 8);
      *v55 = 1;
      *(v55 + 8) = "emissionDirection";
      *(v55 + 16) = v54;
      *(v55 + 24) = 0;
      *(v55 + 32) = 0x600000000ELL;
      *(v55 + 40) = 0;
      *(v55 + 48) = 0;
      *(v55 + 56) = 0;
      *(v55 + 64) = 0;
      qword_1EE1A73E0 = v55;
      v56 = re::introspectionAllocator(v55);
      v58 = re::introspect_BOOL(1, v57);
      v59 = (*(*v56 + 32))(v56, 72, 8);
      *v59 = 1;
      *(v59 + 8) = "isLocal";
      *(v59 + 16) = v58;
      *(v59 + 24) = 0;
      *(v59 + 32) = 0x940000000FLL;
      *(v59 + 40) = 0;
      *(v59 + 48) = 0;
      *(v59 + 56) = 0;
      *(v59 + 64) = 0;
      qword_1EE1A73E8 = v59;
      v60 = re::introspectionAllocator(v59);
      re::ecs2::introspect_SpawnOccasion(v60, v61);
      v62 = (*(*v60 + 32))(v60, 72, 8);
      *v62 = 1;
      *(v62 + 8) = "spawnOccasion";
      *(v62 + 16) = &qword_1EE1A6F88;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0x9000000010;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
      *(v62 + 64) = 0;
      qword_1EE1A73F0 = v62;
      v63 = re::introspectionAllocator(v62);
      v65 = re::introspect_BOOL(1, v64);
      v66 = (*(*v63 + 32))(v63, 72, 8);
      *v66 = 1;
      *(v66 + 8) = "isSpawningEnabled";
      *(v66 + 16) = v65;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0xCC00000011;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      qword_1EE1A73F8 = v66;
      v67 = re::introspectionAllocator(v66);
      v69 = re::introspect_float(1, v68);
      v70 = (*(*v67 + 32))(v67, 72, 8);
      *v70 = 1;
      *(v70 + 8) = "spawnVelocityFactor";
      *(v70 + 16) = v69;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0xD000000012;
      *(v70 + 40) = 0;
      *(v70 + 48) = 0;
      *(v70 + 56) = 0;
      *(v70 + 64) = 0;
      qword_1EE1A7400 = v70;
      v71 = re::introspectionAllocator(v70);
      v73 = re::introspect_float(1, v72);
      v74 = (*(*v71 + 32))(v71, 72, 8);
      *v74 = 1;
      *(v74 + 8) = "spawnSpreadFactor";
      *(v74 + 16) = v73;
      *(v74 + 24) = 0;
      *(v74 + 32) = 0xD400000013;
      *(v74 + 40) = 0;
      *(v74 + 48) = 0;
      *(v74 + 56) = 0;
      *(v74 + 64) = 0;
      qword_1EE1A7408 = v74;
      v75 = re::introspectionAllocator(v74);
      v77 = re::introspect_float(1, v76);
      v78 = (*(*v75 + 32))(v75, 72, 8);
      *v78 = 1;
      *(v78 + 8) = "spawnSpreadFactorVariation";
      *(v78 + 16) = v77;
      *(v78 + 24) = 0;
      *(v78 + 32) = 0xD800000014;
      *(v78 + 40) = 0;
      *(v78 + 48) = 0;
      *(v78 + 56) = 0;
      *(v78 + 64) = 0;
      qword_1EE1A7410 = v78;
      v79 = re::introspectionAllocator(v78);
      v81 = re::introspect_BOOL(1, v80);
      v82 = (*(*v79 + 32))(v79, 72, 8);
      *v82 = 1;
      *(v82 + 8) = "spawnInheritParentColor";
      *(v82 + 16) = v81;
      *(v82 + 24) = 0;
      *(v82 + 32) = 0xDC00000015;
      *(v82 + 40) = 0;
      *(v82 + 48) = 0;
      *(v82 + 56) = 0;
      *(v82 + 64) = 0;
      qword_1EE1A7418 = v82;
      v83 = re::introspectionAllocator(v82);
      v84 = v83;
      v85 = qword_1EE1A6C58;
      if (!qword_1EE1A6C58)
      {
        v85 = re::ecs2::allocInfo_ParticleEmitter(v83);
        qword_1EE1A6C58 = v85;
        re::ecs2::initInfo_ParticleEmitter(v85, v86);
      }

      v87 = (*(*v84 + 32))(v84, 72, 8);
      *v87 = 1;
      *(v87 + 8) = "mainEmitter";
      *(v87 + 16) = v85;
      *(v87 + 24) = 0;
      *(v87 + 32) = 0xF000000016;
      *(v87 + 40) = 0;
      *(v87 + 48) = 0;
      *(v87 + 56) = 0;
      *(v87 + 64) = 0;
      qword_1EE1A7420 = v87;
      v88 = re::introspectionAllocator(v87);
      v89 = v88;
      v90 = qword_1EE1A6C58;
      if (!qword_1EE1A6C58)
      {
        v90 = re::ecs2::allocInfo_ParticleEmitter(v88);
        qword_1EE1A6C58 = v90;
        re::ecs2::initInfo_ParticleEmitter(v90, v91);
      }

      v92 = (*(*v89 + 32))(v89, 72, 8);
      *v92 = 1;
      *(v92 + 8) = "spawnedEmitter";
      *(v92 + 16) = v90;
      *(v92 + 24) = 0;
      *(v92 + 32) = 0x28000000017;
      *(v92 + 40) = 0;
      *(v92 + 48) = 0;
      *(v92 + 56) = 0;
      *(v92 + 64) = 0;
      qword_1EE1A7428 = v92;
      v93 = re::introspectionAllocator(v92);
      re::ecs2::introspect_ParticleSimulationState(v93, v94);
      v95 = (*(*v93 + 32))(v93, 72, 8);
      *v95 = 1;
      *(v95 + 8) = "simulationState";
      *(v95 + 16) = &qword_1EE1A70F0;
      *(v95 + 24) = 0;
      *(v95 + 32) = 0x9800000018;
      *(v95 + 40) = 0;
      *(v95 + 48) = 0;
      *(v95 + 56) = 0;
      *(v95 + 64) = 0;
      qword_1EE1A7430 = v95;
      v96 = re::introspectionAllocator(v95);
      v98 = re::introspect_int64_t(1, v97);
      v99 = (*(*v96 + 32))(v96, 72, 8);
      *v99 = 1;
      *(v99 + 8) = "restartCount";
      *(v99 + 16) = v98;
      *(v99 + 24) = 0;
      *(v99 + 32) = 0xA000000019;
      *(v99 + 40) = 0;
      *(v99 + 48) = 0;
      *(v99 + 56) = 0;
      *(v99 + 64) = 0;
      qword_1EE1A7438 = v99;
      v100 = re::introspectionAllocator(v99);
      v102 = re::introspect_int64_t(1, v101);
      v103 = (*(*v100 + 32))(v100, 72, 8);
      *v103 = 1;
      *(v103 + 8) = "burstCount";
      *(v103 + 16) = v102;
      *(v103 + 24) = 0;
      *(v103 + 32) = 0xB00000001ALL;
      *(v103 + 40) = 0;
      *(v103 + 48) = 0;
      *(v103 + 56) = 0;
      *(v103 + 64) = 0;
      qword_1EE1A7440 = v103;
      v104 = re::introspectionAllocator(v103);
      v106 = re::introspect_int64_t(1, v105);
      v107 = (*(*v104 + 32))(v104, 72, 8);
      *v107 = 1;
      *(v107 + 8) = "burstCountVariation";
      *(v107 + 16) = v106;
      *(v107 + 24) = 0;
      *(v107 + 32) = 0xB80000001BLL;
      *(v107 + 40) = 0;
      *(v107 + 48) = 0;
      *(v107 + 56) = 0;
      *(v107 + 64) = 0;
      qword_1EE1A7448 = v107;
      v108 = re::introspectionAllocator(v107);
      v110 = re::introspect_int64_t(1, v109);
      v111 = (*(*v108 + 32))(v108, 72, 8);
      *v111 = 1;
      *(v111 + 8) = "burstRestart";
      *(v111 + 16) = v110;
      *(v111 + 24) = 0;
      *(v111 + 32) = 0xC00000001CLL;
      *(v111 + 40) = 0;
      *(v111 + 48) = 0;
      *(v111 + 56) = 0;
      *(v111 + 64) = 0;
      qword_1EE1A7450 = v111;
      v112 = re::introspectionAllocator(v111);
      v114 = re::introspect_BOOL(1, v113);
      v115 = (*(*v112 + 32))(v112, 72, 8);
      *v115 = 1;
      *(v115 + 8) = "isEmitting";
      *(v115 + 16) = v114;
      *(v115 + 24) = 0;
      *(v115 + 32) = 0xA80000001DLL;
      *(v115 + 40) = 0;
      *(v115 + 48) = 0;
      *(v115 + 56) = 0;
      *(v115 + 64) = 0;
      qword_1EE1A7458 = v115;
      v116 = re::introspectionAllocator(v115);
      v118 = re::introspect_float(1, v117);
      v119 = (*(*v116 + 32))(v116, 72, 8);
      *v119 = 1;
      *(v119 + 8) = "radialAmount";
      *(v119 + 16) = v118;
      *(v119 + 24) = 0;
      *(v119 + 32) = 0x800000001ELL;
      *(v119 + 40) = 0;
      *(v119 + 48) = 0;
      *(v119 + 56) = 0;
      *(v119 + 64) = 0;
      qword_1EE1A7460 = v119;
      v120 = re::introspectionAllocator(v119);
      v122 = re::introspect_float(1, v121);
      v123 = (*(*v120 + 32))(v120, 72, 8);
      *v123 = 1;
      *(v123 + 8) = "torusInnerRadius";
      *(v123 + 16) = v122;
      *(v123 + 24) = 0;
      *(v123 + 32) = 0x840000001FLL;
      *(v123 + 40) = 0;
      *(v123 + 48) = 0;
      *(v123 + 56) = 0;
      *(v123 + 64) = 0;
      qword_1EE1A7468 = v123;
      v124 = re::introspectionAllocator(v123);
      v126 = re::introspect_BOOL(1, v125);
      v127 = (*(*v124 + 32))(v124, 72, 8);
      *v127 = 1;
      *(v127 + 8) = "isLocalFields";
      *(v127 + 16) = v126;
      *(v127 + 24) = 0;
      *(v127 + 32) = 0x9500000020;
      *(v127 + 40) = 0;
      *(v127 + 48) = 0;
      *(v127 + 56) = 0;
      *(v127 + 64) = 0;
      qword_1EE1A7470 = v127;
      v128 = re::introspectionAllocator(v127);
      v130 = re::introspect_float(1, v129);
      v131 = (*(*v128 + 32))(v128, 72, 8);
      *v131 = 1;
      *(v131 + 8) = "simulationRate";
      *(v131 + 16) = v130;
      *(v131 + 24) = 0;
      *(v131 + 32) = 0xC800000021;
      *(v131 + 40) = 0;
      *(v131 + 48) = 0;
      *(v131 + 56) = 0;
      *(v131 + 64) = 0;
      qword_1EE1A7478 = v131;
      v132 = re::introspectionAllocator(v131);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>>::get(v132);
      v133 = (*(*v132 + 32))(v132, 72, 8);
      *v133 = 1;
      *(v133 + 8) = "collisionPlanes";
      *(v133 + 16) = &qword_1EE1A6E28;
      *(v133 + 24) = 0;
      *(v133 + 32) = 0x41000000022;
      *(v133 + 40) = 0;
      *(v133 + 48) = 0;
      *(v133 + 56) = 0;
      *(v133 + 64) = 0;
      qword_1EE1A7480 = v133;
      v134 = re::introspectionAllocator(v133);
      v136 = re::introspect_int64_t(1, v135);
      v137 = (*(*v134 + 32))(v134, 72, 8);
      *v137 = 1;
      *(v137 + 8) = "resetVersion";
      *(v137 + 16) = v136;
      *(v137 + 24) = 0;
      *(v137 + 32) = 0xE000000023;
      *(v137 + 40) = 0;
      *(v137 + 48) = 0;
      *(v137 + 56) = 0;
      *(v137 + 64) = 0;
      qword_1EE1A7488 = v137;
      __cxa_guard_release(&qword_1EE1A6C68);
    }
  }

  *(this + 2) = 0x44000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 35;
  *(this + 8) = &qword_1EE1A7378;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXEmitterComponentState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXEmitterComponentState>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXEmitterComponentState>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXEmitterComponentState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v138 = v140;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1A6CA0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A6CA0);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1A6CA0);
    }
  }

  if ((byte_1EE1A6BA2 & 1) == 0)
  {
    v1 = qword_1EE1A6C88;
    if (qword_1EE1A6C88 || (v1 = re::ecs2::allocInfo_ParticleEmitterCollisionPlane(a1), qword_1EE1A6C88 = v1, re::ecs2::initInfo_ParticleEmitterCollisionPlane(v1, v2), (byte_1EE1A6BA2 & 1) == 0))
    {
      byte_1EE1A6BA2 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A6E28, 0);
      qword_1EE1A6E38 = 0x2800000003;
      dword_1EE1A6E40 = v3;
      word_1EE1A6E44 = 0;
      *&xmmword_1EE1A6E48 = 0;
      *(&xmmword_1EE1A6E48 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A6E58 = v1;
      qword_1EE1A6E60 = 0;
      qword_1EE1A6E28 = &unk_1F5CEF230;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1A6E28, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1A6E48 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::internal::defaultDestruct<re::ecs2::VFXEmitterComponentState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 1040);
  re::AssetHandle::~AssetHandle((a3 + 960));

  re::AssetHandle::~AssetHandle((a3 + 560));
}

void re::internal::defaultDestructV2<re::ecs2::VFXEmitterComponentState>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 1040);
  re::AssetHandle::~AssetHandle((a1 + 960));

  re::AssetHandle::~AssetHandle((a1 + 560));
}

void *re::ecs2::allocInfo_ParticleEmitterCollisionPlane(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7258, "ParticleEmitterCollisionPlane");
    __cxa_guard_release(&qword_1EE1A6C78);
  }

  return &unk_1EE1A7258;
}

void re::ecs2::initInfo_ParticleEmitterCollisionPlane(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x4B80C63683AA04A4;
  v17[1] = "ParticleEmitterCollisionPlane";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1A6C80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6C80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_int64_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "handle";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x5000000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A6D48 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_Vector2F(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "extent";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 2;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A6D50 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_Matrix4x4F(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "transform";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A6D58 = v15;
      __cxa_guard_release(&qword_1EE1A6C80);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A6D48;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ParticleEmitterCollisionPlane>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ParticleEmitterCollisionPlane>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ParticleEmitterCollisionPlane>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ParticleEmitterCollisionPlane>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

double re::internal::defaultConstruct<re::ecs2::ParticleEmitterCollisionPlane>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ParticleEmitterCollisionPlane>(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

void *re::ecs2::allocInfo_VFXEmitterComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6C98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A72E8, "VFXEmitterComponent");
    __cxa_guard_release(&qword_1EE1A6C98);
  }

  return &unk_1EE1A72E8;
}

void re::ecs2::initInfo_VFXEmitterComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x1AEFD3A8FE0F79EELL;
  v15[1] = "VFXEmitterComponent";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A6C90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6C90);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A6CA8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1A6C70;
      if (!qword_1EE1A6C70)
      {
        v11 = re::ecs2::allocInfo_VFXEmitterComponentState(v9);
        qword_1EE1A6C70 = v11;
        re::ecs2::initInfo_VFXEmitterComponentState(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "currentState";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A6CB0 = v13;
      __cxa_guard_release(&qword_1EE1A6C90);
    }
  }

  *(this + 2) = 0x90000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A6CA8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXEmitterComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXEmitterComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXEmitterComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXEmitterComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219VFXEmitterComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v14 = v16;
}

unint64_t re::ecs2::ParticleEmitter::hash(re::ecs2::ParticleEmitter *this)
{
  v1 = *(this + 41);
  if (v1)
  {
    v135 = *(v1 + 792);
  }

  else
  {
    v135 = 0;
  }

  v2 = (0xBF58476D1CE4E5B9 * (*(this + 74) ^ (*(this + 74) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 74) ^ (*(this + 74) >> 30))) >> 27);
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 73) ^ (*(this + 73) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 73) ^ (*(this + 73) >> 30))) >> 27));
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 72) ^ (*(this + 72) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 72) ^ (*(this + 72) >> 30))) >> 27));
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 66) ^ (*(this + 66) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 66) ^ (*(this + 66) >> 30))) >> 27));
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 65) ^ (*(this + 65) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 65) ^ (*(this + 65) >> 30))) >> 27));
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 64) ^ (*(this + 64) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 64) ^ (*(this + 64) >> 30))) >> 27));
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 53) ^ (*(this + 53) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 53) ^ (*(this + 53) >> 30))) >> 27));
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 52) ^ (*(this + 52) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 52) ^ (*(this + 52) >> 30))) >> 27));
  v10 = ((v8 ^ (v8 >> 31)) + ((v9 ^ (v9 >> 31)) << 6) + ((v9 ^ (v9 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v9 ^ (v9 >> 31);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 55) ^ (*(this + 55) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 55) ^ (*(this + 55) >> 30))) >> 27));
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 54) ^ (*(this + 54) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 54) ^ (*(this + 54) >> 30))) >> 27));
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 49) ^ (*(this + 49) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 49) ^ (*(this + 49) >> 30))) >> 27));
  v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 48) ^ (*(this + 48) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 48) ^ (*(this + 48) >> 30))) >> 27));
  v15 = ((v13 ^ (v13 >> 31)) + ((v14 ^ (v14 >> 31)) << 6) + ((v14 ^ (v14 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v14 ^ (v14 >> 31);
  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 51) ^ (*(this + 51) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 51) ^ (*(this + 51) >> 30))) >> 27));
  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 50) ^ (*(this + 50) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 50) ^ (*(this + 50) >> 30))) >> 27));
  v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 41) ^ (*(this + 41) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 41) ^ (*(this + 41) >> 30))) >> 27));
  v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 40) ^ (*(this + 40) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 40) ^ (*(this + 40) >> 30))) >> 27));
  v20 = ((v18 ^ (v18 >> 31)) + ((v19 ^ (v19 >> 31)) << 6) + ((v19 ^ (v19 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v19 ^ (v19 >> 31);
  v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 43) ^ (*(this + 43) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 43) ^ (*(this + 43) >> 30))) >> 27));
  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 42) ^ (*(this + 42) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 42) ^ (*(this + 42) >> 30))) >> 27));
  v23 = ((v20 << 6) + (v20 >> 2) + (((v21 ^ (v21 >> 31)) + ((v22 ^ (v22 >> 31)) << 6) + ((v22 ^ (v22 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v22 ^ (v22 >> 31)) - 0x61C8864680B583E9) ^ v20;
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 37) ^ (*(this + 37) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 37) ^ (*(this + 37) >> 30))) >> 27));
  v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 36) ^ (*(this + 36) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 36) ^ (*(this + 36) >> 30))) >> 27));
  v26 = ((v24 ^ (v24 >> 31)) + ((v25 ^ (v25 >> 31)) << 6) + ((v25 ^ (v25 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v25 ^ (v25 >> 31);
  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 39) ^ (*(this + 39) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 39) ^ (*(this + 39) >> 30))) >> 27));
  v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 38) ^ (*(this + 38) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 38) ^ (*(this + 38) >> 30))) >> 27));
  v29 = ((v26 << 6) + (v26 >> 2) + (((v27 ^ (v27 >> 31)) + ((v28 ^ (v28 >> 31)) << 6) + ((v28 ^ (v28 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v28 ^ (v28 >> 31)) - 0x61C8864680B583E9) ^ v26;
  v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 14) ^ (*(this + 14) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 14) ^ (*(this + 14) >> 30))) >> 27));
  v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 13) ^ (*(this + 13) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 13) ^ (*(this + 13) >> 30))) >> 27));
  v32 = ((v30 ^ (v30 >> 31)) + ((v31 ^ (v31 >> 31)) << 6) + ((v31 ^ (v31 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v31 ^ (v31 >> 31);
  v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 12) ^ (*(this + 12) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 12) ^ (*(this + 12) >> 30))) >> 27));
  v34 = (((v33 ^ (v33 >> 31)) << 6) + ((v33 ^ (v33 >> 31)) >> 2) - 0x61C8864680B583E9 + v32) ^ v33 ^ (v33 >> 31);
  v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 6) ^ (*(this + 6) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 6) ^ (*(this + 6) >> 30))) >> 27));
  v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 5) ^ (*(this + 5) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 5) ^ (*(this + 5) >> 30))) >> 27));
  v37 = ((v35 ^ (v35 >> 31)) + ((v36 ^ (v36 >> 31)) << 6) + ((v36 ^ (v36 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v36 ^ (v36 >> 31);
  v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 4) ^ (*(this + 4) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 4) ^ (*(this + 4) >> 30))) >> 27));
  v39 = (((v38 ^ (v38 >> 31)) << 6) + ((v38 ^ (v38 >> 31)) >> 2) - 0x61C8864680B583E9 + v37) ^ v38 ^ (v38 >> 31);
  v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30))) >> 27));
  v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30))) >> 27));
  v42 = ((v40 ^ (v40 >> 31)) + (((v41 ^ (v41 >> 31)) - 0x61C8864680B583E9) << 6) + (((v41 ^ (v41 >> 31)) - 0x61C8864680B583E9) >> 2) - 0x61C8864680B583E9) ^ ((v41 ^ (v41 >> 31)) - 0x61C8864680B583E9);
  v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 2) ^ (*(this + 2) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 2) ^ (*(this + 2) >> 30))) >> 27));
  v44 = ((v43 ^ (v43 >> 31)) + (v42 << 6) + (v42 >> 2) - 0x61C8864680B583E9) ^ v42;
  v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 3) ^ (*(this + 3) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 3) ^ (*(this + 3) >> 30))) >> 27));
  v46 = (v45 ^ (v45 >> 31)) + (v44 << 6) + (v44 >> 2) - 0x61C8864680B583E9;
  v47 = (v39 + ((v46 ^ v44) << 6) + ((v46 ^ v44) >> 2) - 0x61C8864680B583E9) ^ v46 ^ v44;
  v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 8) ^ (*(this + 8) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 8) ^ (*(this + 8) >> 30))) >> 27));
  v49 = ((v48 ^ (v48 >> 31)) + (v47 << 6) + (v47 >> 2) - 0x61C8864680B583E9) ^ v47;
  v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 9) ^ (*(this + 9) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 9) ^ (*(this + 9) >> 30))) >> 27));
  v51 = ((v50 ^ (v50 >> 31)) + (v49 << 6) + (v49 >> 2) - 0x61C8864680B583E9) ^ v49;
  v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 10) ^ (*(this + 10) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 10) ^ (*(this + 10) >> 30))) >> 27));
  v53 = (v52 ^ (v52 >> 31)) + (v51 << 6) + (v51 >> 2) - 0x61C8864680B583E9;
  v54 = (v34 + ((v53 ^ v51) << 6) + ((v53 ^ v51) >> 2) - 0x61C8864680B583E9) ^ v53 ^ v51;
  v55 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 16) ^ (*(this + 16) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 16) ^ (*(this + 16) >> 30))) >> 27));
  v56 = ((v55 ^ (v55 >> 31)) + (v54 << 6) + (v54 >> 2) - 0x61C8864680B583E9) ^ v54;
  v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 17) ^ (*(this + 17) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 17) ^ (*(this + 17) >> 30))) >> 27));
  v58 = ((v57 ^ (v57 >> 31)) + (v56 << 6) + (v56 >> 2) - 0x61C8864680B583E9) ^ v56;
  v59 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 18) ^ (*(this + 18) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 18) ^ (*(this + 18) >> 30))) >> 27));
  v60 = ((v59 ^ (v59 >> 31)) + (v58 << 6) + (v58 >> 2) - 0x61C8864680B583E9) ^ v58;
  v61 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 10) ^ (*(this + 10) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 10) ^ (*(this + 10) >> 30))) >> 27));
  v62 = ((v61 ^ (v61 >> 31)) + (v60 << 6) + (v60 >> 2) - 0x61C8864680B583E9) ^ v60;
  v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 11) ^ (*(this + 11) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 11) ^ (*(this + 11) >> 30))) >> 27));
  v64 = ((v63 ^ (v63 >> 31)) + (v62 << 6) + (v62 >> 2) - 0x61C8864680B583E9) ^ v62;
  v65 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 24) ^ (*(this + 24) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 24) ^ (*(this + 24) >> 30))) >> 27));
  v66 = ((v65 ^ (v65 >> 31)) + (v64 << 6) + (v64 >> 2) - 0x61C8864680B583E9) ^ v64;
  v67 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 25) ^ (*(this + 25) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 25) ^ (*(this + 25) >> 30))) >> 27));
  v68 = ((v67 ^ (v67 >> 31)) + (v66 << 6) + (v66 >> 2) - 0x61C8864680B583E9) ^ v66;
  v69 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 26) ^ (*(this + 26) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 26) ^ (*(this + 26) >> 30))) >> 27));
  v70 = ((v69 ^ (v69 >> 31)) + (v68 << 6) + (v68 >> 2) - 0x61C8864680B583E9) ^ v68;
  v71 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 27) ^ (*(this + 27) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 27) ^ (*(this + 27) >> 30))) >> 27));
  v72 = ((v71 ^ (v71 >> 31)) + (v70 << 6) + (v70 >> 2) - 0x61C8864680B583E9) ^ v70;
  v73 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 28) ^ (*(this + 28) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 28) ^ (*(this + 28) >> 30))) >> 27));
  v74 = ((v73 ^ (v73 >> 31)) + (v72 << 6) + (v72 >> 2) - 0x61C8864680B583E9) ^ v72;
  v75 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 29) ^ (*(this + 29) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 29) ^ (*(this + 29) >> 30))) >> 27));
  v76 = ((v75 ^ (v75 >> 31)) + (v74 << 6) + (v74 >> 2) - 0x61C8864680B583E9) ^ v74;
  v77 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 30) ^ (*(this + 30) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 30) ^ (*(this + 30) >> 30))) >> 27));
  v78 = ((v77 ^ (v77 >> 31)) + (v76 << 6) + (v76 >> 2) - 0x61C8864680B583E9) ^ v76;
  v79 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 31) ^ (*(this + 31) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 31) ^ (*(this + 31) >> 30))) >> 27));
  v80 = ((v79 ^ (v79 >> 31)) + (v78 << 6) + (v78 >> 2) - 0x61C8864680B583E9) ^ v78;
  v81 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 32) ^ (*(this + 32) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 32) ^ (*(this + 32) >> 30))) >> 27));
  v82 = ((v81 ^ (v81 >> 31)) + (v80 << 6) + (v80 >> 2) - 0x61C8864680B583E9) ^ v80;
  v83 = (v29 + (v82 << 6) + (v82 >> 2) - 0x61C8864680B583E9) ^ v82;
  v84 = (v23 + (v83 << 6) + (v83 >> 2) - 0x61C8864680B583E9) ^ v83;
  v85 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 176)) ^ ((0xBF58476D1CE4E5B9 * *(this + 176)) >> 27));
  v86 = ((v85 ^ (v85 >> 31)) + (v84 << 6) + (v84 >> 2) - 0x61C8864680B583E9) ^ v84;
  v87 = ((((v15 << 6) + (v15 >> 2) + (((v16 ^ (v16 >> 31)) + ((v17 ^ (v17 >> 31)) << 6) + ((v17 ^ (v17 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v17 ^ (v17 >> 31)) - 0x61C8864680B583E9) ^ v15) + (v86 << 6) + (v86 >> 2) - 0x61C8864680B583E9) ^ v86;
  v88 = ((((v10 << 6) + (v10 >> 2) + (((v11 ^ (v11 >> 31)) + ((v12 ^ (v12 >> 31)) << 6) + ((v12 ^ (v12 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v12 ^ (v12 >> 31)) - 0x61C8864680B583E9) ^ v10) + (v87 << 6) + (v87 >> 2) - 0x61C8864680B583E9) ^ v87;
  v89 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 224)) ^ ((0xBF58476D1CE4E5B9 * *(this + 224)) >> 27));
  v90 = ((v89 ^ (v89 >> 31)) + (v88 << 6) + (v88 >> 2) - 0x61C8864680B583E9) ^ v88;
  v91 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 225)) ^ ((0xBF58476D1CE4E5B9 * *(this + 225)) >> 27));
  v92 = ((v91 ^ (v91 >> 31)) + (v90 << 6) + (v90 >> 2) - 0x61C8864680B583E9) ^ v90;
  v93 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 57) ^ (*(this + 57) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 57) ^ (*(this + 57) >> 30))) >> 27));
  v94 = ((v93 ^ (v93 >> 31)) + (v92 << 6) + (v92 >> 2) - 0x61C8864680B583E9) ^ v92;
  v95 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 58) ^ (*(this + 58) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 58) ^ (*(this + 58) >> 30))) >> 27));
  v96 = ((v95 ^ (v95 >> 31)) + (v94 << 6) + (v94 >> 2) - 0x61C8864680B583E9) ^ v94;
  v97 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 59) ^ (*(this + 59) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 59) ^ (*(this + 59) >> 30))) >> 27));
  v98 = ((v97 ^ (v97 >> 31)) + (v96 << 6) + (v96 >> 2) - 0x61C8864680B583E9) ^ v96;
  v99 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 60) ^ (*(this + 60) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 60) ^ (*(this + 60) >> 30))) >> 27));
  v100 = ((v99 ^ (v99 >> 31)) + (v98 << 6) + (v98 >> 2) - 0x61C8864680B583E9) ^ v98;
  v101 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 61) ^ (*(this + 61) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 61) ^ (*(this + 61) >> 30))) >> 27));
  v102 = ((v101 ^ (v101 >> 31)) + (v100 << 6) + (v100 >> 2) - 0x61C8864680B583E9) ^ v100;
  v103 = (((((v7 ^ (v7 >> 31)) << 6) + ((v7 ^ (v7 >> 31)) >> 2) - 0x61C8864680B583E9 + (((v5 ^ (v5 >> 31)) + ((v6 ^ (v6 >> 31)) << 6) + ((v6 ^ (v6 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v6 ^ (v6 >> 31))) ^ v7 ^ (v7 >> 31)) + (v102 << 6) + (v102 >> 2) - 0x61C8864680B583E9) ^ v102;
  v104 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 68) ^ (*(this + 68) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 68) ^ (*(this + 68) >> 30))) >> 27));
  v105 = ((v104 ^ (v104 >> 31)) + (v103 << 6) + (v103 >> 2) - 0x61C8864680B583E9) ^ v103;
  v106 = (((((v4 ^ (v4 >> 31)) << 6) + ((v4 ^ (v4 >> 31)) >> 2) - 0x61C8864680B583E9 + ((((0x94D049BB133111EBLL * v2) ^ ((0x94D049BB133111EBLL * v2) >> 31)) + ((v3 ^ (v3 >> 31)) << 6) + ((v3 ^ (v3 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v3 ^ (v3 >> 31))) ^ v4 ^ (v4 >> 31)) + (v105 << 6) + (v105 >> 2) - 0x61C8864680B583E9) ^ v105;
  v107 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 304)) ^ ((0xBF58476D1CE4E5B9 * *(this + 304)) >> 27));
  v108 = ((v107 ^ (v107 >> 31)) + (v106 << 6) + (v106 >> 2) - 0x61C8864680B583E9) ^ v106;
  v109 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 77) ^ (*(this + 77) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 77) ^ (*(this + 77) >> 30))) >> 27));
  v110 = ((v109 ^ (v109 >> 31)) + (v108 << 6) + (v108 >> 2) - 0x61C8864680B583E9) ^ v108;
  v111 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 78) ^ (*(this + 78) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 78) ^ (*(this + 78) >> 30))) >> 27));
  v112 = ((v111 ^ (v111 >> 31)) + (v110 << 6) + (v110 >> 2) - 0x61C8864680B583E9) ^ v110;
  v113 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 79) ^ (*(this + 79) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 79) ^ (*(this + 79) >> 30))) >> 27));
  v114 = ((v113 ^ (v113 >> 31)) + (v112 << 6) + (v112 >> 2) - 0x61C8864680B583E9) ^ v112;
  v115 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v1 ^ (v1 >> 30))) >> 27));
  v116 = ((v114 << 6) + (v114 >> 2) + (v135 ^ (v115 >> 31) ^ v115) - 0x61C8864680B583E9) ^ v114;
  v117 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 344)) ^ ((0xBF58476D1CE4E5B9 * *(this + 344)) >> 27));
  v118 = ((v116 << 6) + (v116 >> 2) + (v117 ^ (v117 >> 31)) - 0x61C8864680B583E9) ^ v116;
  v119 = 0xBF58476D1CE4E5B9 * (*(this + 44) ^ (*(this + 44) >> 30));
  v120 = (((0x94D049BB133111EBLL * (v119 ^ (v119 >> 27))) ^ ((0x94D049BB133111EBLL * (v119 ^ (v119 >> 27))) >> 31)) + (v118 << 6) + (v118 >> 2) - 0x61C8864680B583E9) ^ v118;
  v121 = 0xBF58476D1CE4E5B9 * (*(this + 45) ^ (*(this + 45) >> 30));
  v122 = (((0x94D049BB133111EBLL * (v121 ^ (v121 >> 27))) ^ ((0x94D049BB133111EBLL * (v121 ^ (v121 >> 27))) >> 31)) + (v120 << 6) + (v120 >> 2) - 0x61C8864680B583E9) ^ v120;
  v123 = 0xBF58476D1CE4E5B9 * (*(this + 46) ^ (*(this + 46) >> 30));
  v124 = (((0x94D049BB133111EBLL * (v123 ^ (v123 >> 27))) ^ ((0x94D049BB133111EBLL * (v123 ^ (v123 >> 27))) >> 31)) + (v122 << 6) + (v122 >> 2) - 0x61C8864680B583E9) ^ v122;
  v125 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 47) ^ (*(this + 47) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 47) ^ (*(this + 47) >> 30))) >> 27));
  v126 = ((v125 ^ (v125 >> 31)) + (v124 << 6) + (v124 >> 2) - 0x61C8864680B583E9) ^ v124;
  v127 = 0xBF58476D1CE4E5B9 * (*(this + 96) ^ (*(this + 96) >> 30));
  v128 = (((0x94D049BB133111EBLL * (v127 ^ (v127 >> 27))) ^ ((0x94D049BB133111EBLL * (v127 ^ (v127 >> 27))) >> 31)) + (v126 << 6) + (v126 >> 2) - 0x61C8864680B583E9) ^ v126;
  v129 = 0xBF58476D1CE4E5B9 * (*(this + 97) ^ (*(this + 97) >> 30));
  v130 = (((0x94D049BB133111EBLL * (v129 ^ (v129 >> 27))) ^ ((0x94D049BB133111EBLL * (v129 ^ (v129 >> 27))) >> 31)) + (v128 << 6) + (v128 >> 2) - 0x61C8864680B583E9) ^ v128;
  v131 = 0xBF58476D1CE4E5B9 * (*(this + 98) ^ (*(this + 98) >> 30));
  v132 = (((0x94D049BB133111EBLL * (v131 ^ (v131 >> 27))) ^ ((0x94D049BB133111EBLL * (v131 ^ (v131 >> 27))) >> 31)) + (v130 << 6) + (v130 >> 2) - 0x61C8864680B583E9) ^ v130;
  v133 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 396)) ^ ((0xBF58476D1CE4E5B9 * *(this + 396)) >> 27));
  return ((v133 ^ (v133 >> 31)) + (v132 << 6) + (v132 >> 2) - 0x61C8864680B583E9) ^ v132;
}

unint64_t re::ecs2::VFXEmitterComponentState::hash(re::ecs2::VFXEmitterComponentState *this)
{
  v2 = 0xBF58476D1CE4E5B9 * (*this ^ (*this >> 30));
  v3 = ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31)) - 0x61C8864680B583E9;
  v4 = 0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30));
  v5 = (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v6 = 0xBF58476D1CE4E5B9 * (*(this + 2) ^ (*(this + 2) >> 30));
  v7 = (((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31)) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v8 = 0xBF58476D1CE4E5B9 * (*(this + 3) ^ (*(this + 3) >> 30));
  v9 = (((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v10 = 0xBF58476D1CE4E5B9 * (*(this + 4) ^ (*(this + 4) >> 30));
  v11 = (((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31)) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 40)) ^ ((0xBF58476D1CE4E5B9 * *(this + 40)) >> 27));
  v13 = ((v12 ^ (v12 >> 31)) + (v11 << 6) + (v11 >> 2) - 0x61C8864680B583E9) ^ v11;
  v14 = 0xBF58476D1CE4E5B9 * (*(this + 11) ^ (*(this + 11) >> 30));
  v15 = (((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31)) + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583E9) ^ v13;
  v16 = 0xBF58476D1CE4E5B9 * (*(this + 12) ^ (*(this + 12) >> 30));
  v17 = (((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31)) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583E9) ^ v15;
  v18 = 0xBF58476D1CE4E5B9 * (*(this + 16) ^ (*(this + 16) >> 30));
  v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
  v20 = 0xBF58476D1CE4E5B9 * (*(this + 17) ^ (*(this + 17) >> 30));
  v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
  v22 = 0xBF58476D1CE4E5B9 * (*(this + 18) ^ (*(this + 18) >> 30));
  v23 = ((((v19 << 6) + (v19 >> 2) - 0x61C8864680B583E9 + ((((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31)) + (v21 << 6) + (v21 >> 2) - 0x61C8864680B583E9) ^ v21)) ^ v19) + (v17 << 6) + (v17 >> 2) - 0x61C8864680B583E9) ^ v17;
  v24 = 0xBF58476D1CE4E5B9 * (*(this + 20) ^ (*(this + 20) >> 30));
  v25 = (((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) ^ ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) >> 31)) + (v23 << 6) + (v23 >> 2) - 0x61C8864680B583E9) ^ v23;
  v26 = 0xBF58476D1CE4E5B9 * (*(this + 28) ^ (*(this + 28) >> 30));
  v27 = (0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31);
  v28 = 0xBF58476D1CE4E5B9 * (*(this + 29) ^ (*(this + 29) >> 30));
  v29 = (0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) ^ ((0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) >> 31);
  v30 = 0xBF58476D1CE4E5B9 * (*(this + 30) ^ (*(this + 30) >> 30));
  v31 = ((((v27 << 6) + (v27 >> 2) - 0x61C8864680B583E9 + ((((0x94D049BB133111EBLL * (v30 ^ (v30 >> 27))) ^ ((0x94D049BB133111EBLL * (v30 ^ (v30 >> 27))) >> 31)) + (v29 << 6) + (v29 >> 2) - 0x61C8864680B583E9) ^ v29)) ^ v27) + (v25 << 6) + (v25 >> 2) - 0x61C8864680B583E9) ^ v25;
  v32 = 0xBF58476D1CE4E5B9 * (*(this + 32) ^ (*(this + 32) >> 30));
  v33 = (((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) ^ ((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) >> 31)) + (v31 << 6) + (v31 >> 2) - 0x61C8864680B583E9) ^ v31;
  v34 = 0xBF58476D1CE4E5B9 * (*(this + 33) ^ (*(this + 33) >> 30));
  v35 = (((0x94D049BB133111EBLL * (v34 ^ (v34 >> 27))) ^ ((0x94D049BB133111EBLL * (v34 ^ (v34 >> 27))) >> 31)) + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583E9) ^ v33;
  v36 = 0xBF58476D1CE4E5B9 * (*(this + 34) ^ (*(this + 34) >> 30));
  v37 = (((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) ^ ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) >> 31)) + (v35 << 6) + (v35 >> 2) - 0x61C8864680B583E9) ^ v35;
  v38 = 0xBF58476D1CE4E5B9 * (*(this + 35) ^ (*(this + 35) >> 30));
  v39 = (((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31)) + (v37 << 6) + (v37 >> 2) - 0x61C8864680B583E9) ^ v37;
  v40 = 0xBF58476D1CE4E5B9 * (*(this + 24) ^ (*(this + 24) >> 30));
  v41 = (0x94D049BB133111EBLL * (v40 ^ (v40 >> 27))) ^ ((0x94D049BB133111EBLL * (v40 ^ (v40 >> 27))) >> 31);
  v42 = 0xBF58476D1CE4E5B9 * (*(this + 25) ^ (*(this + 25) >> 30));
  v43 = (0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) ^ ((0x94D049BB133111EBLL * (v42 ^ (v42 >> 27))) >> 31);
  v44 = 0xBF58476D1CE4E5B9 * (*(this + 26) ^ (*(this + 26) >> 30));
  v45 = ((((v41 << 6) + (v41 >> 2) - 0x61C8864680B583E9 + ((((0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) ^ ((0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) >> 31)) + (v43 << 6) + (v43 >> 2) - 0x61C8864680B583E9) ^ v43)) ^ v41) + (v39 << 6) + (v39 >> 2) - 0x61C8864680B583E9) ^ v39;
  v46 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 148)) ^ ((0xBF58476D1CE4E5B9 * *(this + 148)) >> 27));
  v47 = ((v46 ^ (v46 >> 31)) + (v45 << 6) + (v45 >> 2) - 0x61C8864680B583E9) ^ v45;
  v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 149)) ^ ((0xBF58476D1CE4E5B9 * *(this + 149)) >> 27));
  v49 = ((v48 ^ (v48 >> 31)) + (v47 << 6) + (v47 >> 2) - 0x61C8864680B583E9) ^ v47;
  v50 = 0xBF58476D1CE4E5B9 * (*(this + 38) ^ (*(this + 38) >> 30));
  v51 = (((0x94D049BB133111EBLL * (v50 ^ (v50 >> 27))) ^ ((0x94D049BB133111EBLL * (v50 ^ (v50 >> 27))) >> 31)) + (v49 << 6) + (v49 >> 2) - 0x61C8864680B583E9) ^ v49;
  v52 = 0xBF58476D1CE4E5B9 * (*(this + 20) ^ (*(this + 20) >> 30));
  v53 = (((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) ^ ((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) >> 31)) + (v51 << 6) + (v51 >> 2) - 0x61C8864680B583E9) ^ v51;
  v54 = 0xBF58476D1CE4E5B9 * (*(this + 22) ^ (*(this + 22) >> 30));
  v55 = (((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) ^ ((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) >> 31)) + (v53 << 6) + (v53 >> 2) - 0x61C8864680B583E9) ^ v53;
  v56 = 0xBF58476D1CE4E5B9 * (*(this + 23) ^ (*(this + 23) >> 30));
  v57 = (((0x94D049BB133111EBLL * (v56 ^ (v56 >> 27))) ^ ((0x94D049BB133111EBLL * (v56 ^ (v56 >> 27))) >> 31)) + (v55 << 6) + (v55 >> 2) - 0x61C8864680B583E9) ^ v55;
  v58 = 0xBF58476D1CE4E5B9 * (*(this + 24) ^ (*(this + 24) >> 30));
  v59 = (((0x94D049BB133111EBLL * (v58 ^ (v58 >> 27))) ^ ((0x94D049BB133111EBLL * (v58 ^ (v58 >> 27))) >> 31)) + (v57 << 6) + (v57 >> 2) - 0x61C8864680B583E9) ^ v57;
  v60 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 168)) ^ ((0xBF58476D1CE4E5B9 * *(this + 168)) >> 27));
  v61 = ((v60 ^ (v60 >> 31)) + (v59 << 6) + (v59 >> 2) - 0x61C8864680B583E9) ^ v59;
  v62 = 0xBF58476D1CE4E5B9 * (*(this + 50) ^ (*(this + 50) >> 30));
  v63 = (((0x94D049BB133111EBLL * (v62 ^ (v62 >> 27))) ^ ((0x94D049BB133111EBLL * (v62 ^ (v62 >> 27))) >> 31)) + (v61 << 6) + (v61 >> 2) - 0x61C8864680B583E9) ^ v61;
  v64 = 0xBF58476D1CE4E5B9 * (*(this + 36) ^ (*(this + 36) >> 30));
  v65 = (((0x94D049BB133111EBLL * (v64 ^ (v64 >> 27))) ^ ((0x94D049BB133111EBLL * (v64 ^ (v64 >> 27))) >> 31)) + (v63 << 6) + (v63 >> 2) - 0x61C8864680B583E9) ^ v63;
  v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 204)) ^ ((0xBF58476D1CE4E5B9 * *(this + 204)) >> 27));
  v67 = ((v66 ^ (v66 >> 31)) + (v65 << 6) + (v65 >> 2) - 0x61C8864680B583E9) ^ v65;
  v68 = 0xBF58476D1CE4E5B9 * (*(this + 52) ^ (*(this + 52) >> 30));
  v69 = (((0x94D049BB133111EBLL * (v68 ^ (v68 >> 27))) ^ ((0x94D049BB133111EBLL * (v68 ^ (v68 >> 27))) >> 31)) + (v67 << 6) + (v67 >> 2) - 0x61C8864680B583E9) ^ v67;
  v70 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 53) ^ (*(this + 53) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 53) ^ (*(this + 53) >> 30))) >> 27));
  v71 = ((v70 ^ (v70 >> 31)) + (v69 << 6) + (v69 >> 2) - 0x61C8864680B583E9) ^ v69;
  v72 = 0xBF58476D1CE4E5B9 * (*(this + 54) ^ (*(this + 54) >> 30));
  v73 = (((0x94D049BB133111EBLL * (v72 ^ (v72 >> 27))) ^ ((0x94D049BB133111EBLL * (v72 ^ (v72 >> 27))) >> 31)) + (v71 << 6) + (v71 >> 2) - 0x61C8864680B583E9) ^ v71;
  v74 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 220)) ^ ((0xBF58476D1CE4E5B9 * *(this + 220)) >> 27));
  v75 = ((v74 ^ (v74 >> 31)) + (v73 << 6) + (v73 >> 2) - 0x61C8864680B583E9) ^ v73;
  v76 = *(this + 28) ^ (*(this + 28) >> 30);
  v77 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v76) ^ ((0xBF58476D1CE4E5B9 * v76) >> 27));
  v78 = ((v77 ^ (v77 >> 31)) + (v75 << 6) + (v75 >> 2) - 0x61C8864680B583E9) ^ v75;
  v79 = (re::ecs2::ParticleEmitter::hash((this + 240)) + (v78 << 6) + (v78 >> 2) - 0x61C8864680B583E9) ^ v78;
  return (re::ecs2::ParticleEmitter::hash((this + 640)) + (v79 << 6) + (v79 >> 2) - 0x61C8864680B583E9) ^ v79;
}

void re::ecs2::VFXEmitterComponent::VFXEmitterComponent(re::ecs2::VFXEmitterComponent *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v3 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(v1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CEF1A8;
  re::ecs2::VFXSceneComponent::createDetachedSceneComponent((v2 + 32));
  *(v1 + 40) = 0;
  re::ecs2::VFXEmitterComponentState::VFXEmitterComponentState((v1 + 48));
  re::ecs2::VFXEmitterComponentState::VFXEmitterComponentState((v1 + 1136));
  *(v1 + 2240) = 0;
  *(v1 + 2224) = 0u;
  operator new();
}

void re::ecs2::VFXEmitterComponent::~VFXEmitterComponent(re::ecs2::VFXEmitterComponent *this)
{
  *this = &unk_1F5CEF1A8;
  v2 = (this + 2248);
  v3 = *(this + 282);
  v4 = *(this + 281);
  if (v3 != v4)
  {
    do
    {
      v5 = v3 - 40;

      v3 = v5;
    }

    while (v5 != v4);
  }

  *(this + 282) = v4;
  v8 = (this + 2272);
  std::vector<re::ecs2::VFXEmitterComponent::ParticleEmitterBinding>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = v2;
  std::vector<re::ecs2::VFXEmitterComponent::ParticleEmitterBinding>::__destroy_vector::operator()[abi:nn200100](&v8);
  v6 = *(this + 278);
  if (v6)
  {
    *(this + 279) = v6;
    operator delete(v6);
  }

  re::DynamicArray<unsigned long>::deinit(this + 2176);
  re::AssetHandle::~AssetHandle((this + 2096));
  re::AssetHandle::~AssetHandle((this + 1696));
  re::DynamicArray<unsigned long>::deinit(this + 1088);
  re::AssetHandle::~AssetHandle((this + 1008));
  re::AssetHandle::~AssetHandle((this + 608));
  v7 = *(this + 4);
  if (v7)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::VFXEmitterComponent::~VFXEmitterComponent(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::VFXEmitterComponent::loadAssetsIfNeeded(uint64_t a1, AssetService *a2, uint64_t a3, void *a4)
{
  re::ecs2::VFXEmitterComponent::loadTextureIfNeeded(a1, a2, (a1 + 608), 0);
  re::ecs2::VFXEmitterComponent::loadTextureIfNeeded(a1, a2, (a1 + 1008), 1);

  return re::ecs2::VFXEmitterComponent::loadSceneComponentIfNeeded(a1, a3, a4);
}

void re::ecs2::VFXEmitterComponent::loadTextureIfNeeded(re::ecs2::VFXEmitterComponent *this, AssetService *a2, re::AssetHandle *a3, int a4)
{
  if (*(*(this + 278) + a4) != 1)
  {
    v7 = *(a3 + 1);
    if (!v7)
    {
      (*(a2->var0 + 1))(&v14, a2, "framework:com.apple.CoreRE/particle_circle.png");
      v8 = *a3;
      *a3 = v14;
      v14 = v8;
      v9 = *(a3 + 2);
      *(a3 + 2) = v15;
      v15 = v9;
      re::AssetHandle::~AssetHandle(&v14);
      v7 = *(a3 + 1);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v10 = atomic_load((v7 + 896));
    if (v10 == 1)
    {
      return;
    }

    v11 = *(a3 + 1);
    if (v11 && (v12 = atomic_load((v11 + 896)), v12 == 2))
    {
      re::AssetHandle::AssetHandle(v13, a3);
      re::ecs2::VFXEmitterComponent::bindTexture(this, v13, a4);
      re::AssetHandle::~AssetHandle(v13);
    }

    else
    {
LABEL_8:
      re::AssetHandle::loadAsync(a3);
    }
  }
}

void *re::ecs2::VFXEmitterComponent::loadSceneComponentIfNeeded(void *result, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = result;
    if ((result[5] & 1) == 0)
    {
      v6 = result[4];
      v7 = *(a2 + 16);
      if (v7)
      {
        v8 = re::ecs2::EntityComponentCollection::getOrAdd((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v8 = *(a2 + 304);
      }

      re::AssetHandle::AssetHandle(v10, (v8 + 72));
      re::ecs2::VFXSceneComponent::setVFXFromParticleEmitter(v6, v10);
      re::AssetHandle::~AssetHandle(v10);
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v3[4] + 152, a2 + 152);
      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::operator=(*(v3[4] + 304) + 32, (*(a2 + 304) + 32));
      re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v3[4] + 104, a2 + 104);
      v9 = v3[4];
      *(v9 + 301) = 1;
      uuid_generate_random(out);
      *(v9 + 328) = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
      result = re::ecs2::VFXEmitterComponent::setBindingRuntimeData(v3, a3);
      *(v3 + 40) = 1;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
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

        re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, a2);
        ++*(a1 + 40);
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

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, a2);
      }
    }
  }

  return a1;
}

void *re::ecs2::VFXEmitterComponent::setBindingRuntimeData(void *result, void *a2)
{
  v2 = a2[1];
  if (*a2 != v2)
  {
    v3 = result;
    v4 = *a2 + 8;
    do
    {
      v5 = v3[281] + 40 * *(v4 - 8);
      re::ObjCObject::operator=((v5 + 24), v4);
      *(v5 + 32) = *(v4 + 8);
      result = memcpy(*(v5 + 16), *(v4 + 48), *(v4 + 32));
      v6 = v4 + 56;
      v4 += 64;
    }

    while (v6 != v2);
  }

  return result;
}

double re::ecs2::VFXEmitterComponent::bindTexture(uint64_t a1, re::TextureAsset *a2, int a3)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = re::ecs2::EntityComponentCollection::getOrAdd((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v8 = *(v6 + 304);
  }

  if (re::AssetHandle::loadedAsset<re::VFXAsset>((v8 + 72)))
  {
    if (*(a1 + 40) == 1)
    {
      if (*(*(a1 + 32) + 48))
      {
        v10 = re::AssetHandle::loadedAsset<re::TextureAsset>(a2);
        if (v10)
        {
          v11 = v10;
          if (a3 == 1)
          {
            v12 = "spawnTexture";
          }

          else
          {
            v12 = "mainTexture";
          }

          v13 = *(a1 + 32);
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
          if (*(v11 + 120))
          {
            v25 = std::__throw_bad_variant_access[abi:nn200100]();
            *&result = __Block_byref_object_copy__11(v25, v26).n128_u64[0];
          }

          else
          {
            v15 = v14;
            re::ecs2::VFXSceneComponent::setClientTexture(v13, v14, (v11 + 112));

            *(*(a1 + 2224) + a3) = 1;
            v16 = *(a1 + 2272);
            v17 = *(a1 + 2280);
            if (v16 != v17)
            {
              do
              {
                v18 = *(v16 + 24);
                v19 = *(v16 + 32);
                v20 = *(a1 + 32);
                v21 = MEMORY[0x1E696B098];
                v22 = *(v16 + 8);
                v23 = v18;
                v24 = [v21 valueWithPointer:v22];
                re::ecs2::VFXSceneComponent::setParameterValueForIdentifier(v20, v23, v19, v24);

                v16 += 40;
              }

              while (v16 != v17);
              v17 = *(a1 + 2280);
              v16 = *(a1 + 2272);
            }

            for (; v17 != v16; v17 -= 40)
            {
            }

            *(a1 + 2280) = v16;
          }
        }
      }
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__11(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::reserve(void *result)
{
  if ((result[2] - *result) >> 7 <= 0x40uLL)
  {
    operator new();
  }

  return result;
}

void ___ZN2re4ecs219VFXEmitterComponent32loadBindingValuesFromLegacyModelERKNS0_17VFXSceneComponentE_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = &off_1E871C908;
  do
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v3];
    if ([v4 hasPrefix:@"spawn"])
    {
      v5 = 56;
    }

    else
    {
      v5 = 48;
    }

    v6 = [*(a1 + 32) bindingWith:*(a1 + v5) named:v4];
    if (v6)
    {
      re::ecs2::VFXEmitterComponent::addBindingValue(*(a1 + 64), v6, v2, (*(*(a1 + 40) + 8) + 48));
    }

    ++v2;
    v3 += 4;
  }

  while (v2 != 130);
}

void re::ecs2::VFXEmitterComponent::addBindingValue(re::ecs2::VFXSceneComponent *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a2;
  v9 = *v8;
  v10 = [v7 identifier];
  v11 = [v10 copy];
  v12 = [v7 type];
  v13 = v12;
  v14 = a4[1];
  v15 = a4[2];
  if (v14 >= v15)
  {
    v17 = (v14 - *a4) >> 6;
    v18 = v17 + 1;
    if ((v17 + 1) >> 58)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v19 = v15 - *a4;
    if (v19 >> 5 > v18)
    {
      v18 = v19 >> 5;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFC0)
    {
      v20 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    v31 = a4;
    if (v20)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::VFXEmitterComponent::VFXBindingValue>>(v20);
    }

    v21 = v17 << 6;
    *v21 = v9;
    *(v21 + 8) = v11;
    *(v21 + 56) = 0;
    *(v21 + 16) = v13;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
    *(v21 + 48) = 1;
    v16 = (v17 << 6) + 64;
    v22 = a4[1];
    v23 = (v17 << 6) + *a4 - v22;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::ecs2::VFXEmitterComponent::VFXBindingValue>,re::ecs2::VFXEmitterComponent::VFXBindingValue*>(*a4, v22, v23);
    v24 = *a4;
    *a4 = v23;
    a4[1] = v16;
    v25 = a4[2];
    a4[2] = 0;
    v30[2] = v24;
    v30[3] = v25;
    v30[0] = v24;
    v30[1] = v24;
    std::__split_buffer<re::ecs2::VFXEmitterComponent::VFXBindingValue>::~__split_buffer(v30);
  }

  else
  {
    *v14 = v9;
    *(v14 + 8) = v11;
    *(v14 + 56) = 0;
    *(v14 + 16) = v12;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    v16 = v14 + 64;
    *(v14 + 48) = 1;
  }

  a4[1] = v16;

  v26 = a4[1];
  v27 = [v7 identifier];
  re::ecs2::VFXSceneComponent::bindingStorageWithIdentifier(a1, v27, v30);

  v28 = [v7 type];
  if (v28 <= 0xF)
  {
    if (((1 << v28) & 0xE3BE) != 0)
    {
      v29 = v26 - 40;
    }

    else if (((1 << v28) & 0x440) != 0)
    {
      v29 = v26 - 40;
      if (v8[25] == 1)
      {
        re::DynamicArray<BOOL>::resize(v29, 4uLL);
        **(v26 - 8) = *v31;
        goto LABEL_16;
      }
    }

    else
    {
      if (v28 != 12)
      {
        goto LABEL_16;
      }

      v29 = v26 - 40;
      if (v8[24] == 1)
      {
        re::DynamicArray<BOOL>::resize(v29, 8uLL);
        **(v26 - 8) = *v31;
        goto LABEL_16;
      }
    }

    re::DynamicArray<BOOL>::operator=(v29, v30);
  }

LABEL_16:
  if (v30[0] && v31)
  {
    (*(*v30[0] + 40))();
  }
}

void re::ecs2::VFXEmitterComponent::loadBindingValues(re::ecs2::VFXEmitterComponent *this@<X0>, void *a2@<X8>)
{
  if (*(this + 56))
  {
    v5 = *(this + 2);
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::getOrAdd((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }

    else
    {
      v6 = *(this + 38);
    }

    v10 = re::AssetHandle::loadedAsset<re::VFXAsset>((v6 + 72));
    if (!v10)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return;
    }

    v11 = [*(v10 + 64) scene];
    v7 = [v11 effects];

    v12 = [v7 firstObject];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 lookupObjectIDByName:@"Emitter"];
      v15 = [v13 lookupObjectIDByName:@"SecondaryEmitter"];
      v28 = 0;
      v29 = &v28;
      v30 = 0x4812000000;
      v31 = __Block_byref_object_copy__11;
      v32 = __Block_byref_object_dispose__11;
      v33 = "";
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::reserve(&v34);
      v16 = [v13 scene];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___ZN2re4ecs219VFXEmitterComponent32loadBindingValuesFromLegacyModelERKNS0_17VFXSceneComponentE_block_invoke;
      v22[3] = &unk_1E871C868;
      v25 = v14;
      v26 = v15;
      v27 = this;
      v23 = v13;
      v24 = &v28;
      [v16 performTransaction:v22];

      v17 = v29;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__init_with_size[abi:nn200100]<re::ecs2::VFXEmitterComponent::VFXBindingValue*,re::ecs2::VFXEmitterComponent::VFXBindingValue*>(a2, v17[6], v17[7], (v17[7] - v17[6]) >> 6);

      _Block_object_dispose(&v28, 8);
      v37 = &v34;
      std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](&v37);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }
  }

  else
  {
    re::ecs2::VFXSceneComponent::model(this, &v28);
    v7 = v28;

    if (v7)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x4812000000;
      v31 = __Block_byref_object_copy__11;
      v32 = __Block_byref_object_dispose__11;
      v33 = "";
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::reserve(&v34);
      v8 = [v7 scene];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = ___ZN2re4ecs219VFXEmitterComponent17loadBindingValuesERKNS0_17VFXSceneComponentE_block_invoke;
      v18[3] = &unk_1E871C8E0;
      v20 = &v28;
      v21 = this;
      v19 = v7;
      [v8 performTransaction:v18];

      v9 = v29;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__init_with_size[abi:nn200100]<re::ecs2::VFXEmitterComponent::VFXBindingValue*,re::ecs2::VFXEmitterComponent::VFXBindingValue*>(a2, v9[6], v9[7], (v9[7] - v9[6]) >> 6);

      _Block_object_dispose(&v28, 8);
      v22[0] = &v34;
      std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](v22);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }
  }
}

void ___ZN2re4ecs219VFXEmitterComponent17loadBindingValuesERKNS0_17VFXSceneComponentE_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootNode];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2re4ecs219VFXEmitterComponent17loadBindingValuesERKNS0_17VFXSceneComponentE_block_invoke_2;
  v3[3] = &unk_1E871C8B8;
  v4 = *(a1 + 40);
  [v2 enumerateChildNodesUsingBlock:v3];
}

void ___ZN2re4ecs219VFXEmitterComponent17loadBindingValuesERKNS0_17VFXSceneComponentE_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 behaviorGraph];
  v4 = [v3 bindings];

  v5 = [v2 name];
  v6 = [v5 isEqualToString:@"Emitter"];

  if ((v6 & 1) != 0 || ([v2 name], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"SecondaryEmitter"), v7, v8))
  {
    v9 = 0;
    v10 = &off_1E871C908;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v10];
      if (v6 != [v11 hasPrefix:@"spawn"])
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = ___ZN2re4ecs219VFXEmitterComponent17loadBindingValuesERKNS0_17VFXSceneComponentE_block_invoke_3;
        v16[3] = &unk_1E871C890;
        v17 = v11;
        v12 = [v4 indexOfObjectPassingTest:v16];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [v4 objectAtIndex:v12];
          v14 = [v13 description];

          re::ecs2::VFXEmitterComponent::addBindingValue(*(a1 + 40), v14, v9, (*(*(a1 + 32) + 8) + 48));
        }
      }

      ++v9;
      v10 += 4;
    }

    while (v9 != 130);
  }
}

uint64_t ___ZN2re4ecs219VFXEmitterComponent17loadBindingValuesERKNS0_17VFXSceneComponentE_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t re::ecs2::VFXEmitterComponent::update(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = this;
    v3 = *(v1 + 16);
    v4 = v3 ? re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) : *(v1 + 304);
    this = re::AssetHandle::loadedAsset<re::VFXAsset>((v4 + 72));
    if (this)
    {
      if (*(v2 + 40) == 1 && !*(*(v2 + 32) + 32))
      {
        v5 = *(v2 + 1104);
        if (v5)
        {
          v6 = *(v2 + 1120);
          v7 = v6;
          do
          {
            if (!*(v7 + 80))
            {
              v8 = 0;
              v9 = *(v2 + 32);
              v10.i64[0] = *v7;
              v11 = v86[0];
              v12 = v86[1];
              v13 = v86[2];
              v14 = v86[3];
              v15 = *(v7 + 32);
              v16 = *(v7 + 48);
              v17 = *(v7 + 64);
              v87[0] = *(v7 + 16);
              v87[1] = v15;
              v87[2] = v16;
              v87[3] = v17;
              do
              {
                *(&v88 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v87[v8])), v12, *&v87[v8], 1), v13, v87[v8], 2), v14, v87[v8], 3);
                ++v8;
              }

              while (v8 != 4);
              v18 = vzip1q_s32(v10, v10).u32[0];
              v19 = *(v9 + 448);
              if (v19)
              {
                v20 = re::ecs2::VFXSceneComponent::LegacyImpl::addCollisionPlane(COERCE_DOUBLE(v18), *&v88, *&v89, *&v90, v91[0], v19, v9);
              }

              else
              {
                v20 = [*(v9 + 72) addCollisionPlaneWithExtents:COERCE_DOUBLE(v18) transform:{*&v88, *&v89, *&v90, v91[0]}];
              }

              *(v7 + 80) = v20;
              v6 = *(v2 + 1120);
              v5 = *(v2 + 1104);
            }

            v7 += 96;
          }

          while (v7 != v6 + 96 * v5);
        }

        v21 = re::ecs2::VFXEmitterComponentState::hash((v2 + 48));
        this = re::ecs2::VFXEmitterComponentState::hash((v2 + 1136));
        if (v21 != this)
        {
          if (*(v2 + 616) != *(v2 + 1704))
          {
            **(v2 + 2224) = 0;
          }

          if (*(v2 + 1016) != *(v2 + 2104))
          {
            *(*(v2 + 2224) + 1) = 0;
          }

          v22 = *(v2 + 200);
          v23 = *(v2 + 32);
          if (v22 != *(v2 + 1288))
          {
            *(v23 + 512) = v22 != 0;
            if (v22 == 2)
            {
              *(v23 + 316) = 0;
              ++*(v23 + 324);
            }
          }

          if (*(v2 + 272) != *(v2 + 1360))
          {
            *(v23 + 316) = 0;
            ++*(v23 + 324);
          }

          *(v23 + 504) = *(v2 + 248);
          v24 = *(v2 + 2248);
          v25 = *(v2 + 2256);
          while (1)
          {
            if (v24 == v25)
            {
              v75 = *(v2 + 256);
              *(v2 + 1328) = *(v2 + 240);
              *(v2 + 1344) = v75;
              *(v2 + 1360) = *(v2 + 272);
              v76 = *(v2 + 192);
              *(v2 + 1264) = *(v2 + 176);
              *(v2 + 1280) = v76;
              v77 = *(v2 + 224);
              *(v2 + 1296) = *(v2 + 208);
              *(v2 + 1312) = v77;
              v78 = *(v2 + 128);
              *(v2 + 1200) = *(v2 + 112);
              *(v2 + 1216) = v78;
              v79 = *(v2 + 160);
              *(v2 + 1232) = *(v2 + 144);
              *(v2 + 1248) = v79;
              v80 = *(v2 + 64);
              *(v2 + 1136) = *(v2 + 48);
              *(v2 + 1152) = v80;
              v81 = *(v2 + 96);
              *(v2 + 1168) = *(v2 + 80);
              *(v2 + 1184) = v81;
              memcpy((v2 + 1376), (v2 + 288), 0x140uLL);
              re::AssetHandle::operator=(v2 + 1696, (v2 + 608));
              v82 = *(v2 + 648);
              *(v2 + 1720) = *(v2 + 632);
              *(v2 + 1736) = v82;
              *(v2 + 1752) = *(v2 + 664);
              *(v2 + 1765) = *(v2 + 677);
              memcpy((v2 + 1776), (v2 + 688), 0x140uLL);
              this = re::AssetHandle::operator=(v2 + 2096, (v2 + 1008));
              v83 = *(v2 + 1048);
              *(v2 + 2120) = *(v2 + 1032);
              *(v2 + 2136) = v83;
              *(v2 + 2152) = *(v2 + 1064);
              *(v2 + 2165) = *(v2 + 1077);
              v84 = *(v2 + 1088);
              if (*(v2 + 2176))
              {
                if (v84)
                {
                  this = re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::copy((v2 + 2176), v2 + 1088);
                }

                else
                {
                  *(v2 + 2192) = 0;
                }

                ++*(v2 + 2200);
              }

              else if (v84)
              {
                v85 = *(v2 + 1104);
                *(v2 + 2176) = v84;
                re::DynamicArray<re::RigJoint>::setCapacity((v2 + 2176), v85);
                ++*(v2 + 2200);
                this = re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::copy((v2 + 2176), v2 + 1088);
              }

              *(v2 + 2216) = *(v2 + 1128);
              return this;
            }

            v26 = v24[3];
            if (!v26)
            {
              goto LABEL_77;
            }

            v27 = v24[4];
            v28 = *v24;
            v30 = v29[24];
            if (v30 != 1)
            {
              break;
            }

            v31 = v24[1];
            if (!v31)
            {
              goto LABEL_41;
            }

            v32 = v24[2];
            if (v32)
            {
              v33 = *v31;
              v34 = *v32;
              v35 = v33 == v34;
              goto LABEL_38;
            }

LABEL_42:
            if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 0x1C)
            {
              v37 = *(v2 + 216);
              if ((v32 & 1) == 0 && v37 == *(v2 + 1304))
              {
                goto LABEL_77;
              }

              v38 = 0.0;
              if (v37)
              {
                v38 = *v31;
              }

LABEL_75:
              *&v88 = v38;
              goto LABEL_76;
            }

            if (!v32)
            {
              goto LABEL_77;
            }

            v39 = *(v2 + 2224);
            v40 = *(v2 + 2232) - v39;
            if (!v40)
            {
LABEL_73:
              if (v30)
              {
                v38 = *v31;
                goto LABEL_75;
              }

              if (v29[25] != 1)
              {
                v56 = *(v2 + 32);
                v57 = [MEMORY[0x1E696B098] valueWithPointer:v31];
                re::ecs2::VFXSceneComponent::setParameterValueForIdentifier(v56, v26, v27, v57);

                goto LABEL_77;
              }

              *&v88 = *v31;
LABEL_76:
              v54 = *(v2 + 32);
              v55 = [MEMORY[0x1E696B098] valueWithPointer:&v88];
              re::ecs2::VFXSceneComponent::setParameterValueForIdentifier(v54, v26, v27, v55);

              goto LABEL_77;
            }

            v41 = 0;
            if (v40 <= 1)
            {
              v42 = 1;
            }

            else
            {
              v42 = *(v2 + 2232) - v39;
            }

            v43 = 1;
            do
            {
              if (*(v39 + v41) != 1)
              {
                if (v41 == 1)
                {
                  if ((v28 - 129) > 0xFFFFFFFFFFFFFFF7)
                  {
                    break;
                  }

                  goto LABEL_60;
                }

                if (!v41 && (v28 - 70) <= 0x3A && ((1 << (v28 - 70)) & 0x7F80000000000FFLL) != 0)
                {
                  break;
                }
              }

LABEL_60:
              v43 = v40 > ++v41;
            }

            while (v42 != v41);
            if (!v43)
            {
              goto LABEL_73;
            }

            v44 = *(v2 + 2272);
            v45 = *(v2 + 2280);
            v46 = v24[3];
            if (v44 != v45)
            {
              while (1)
              {
                v47 = *v44;

                if (v47 == v28)
                {
                  break;
                }

                v44 += 5;
                if (v44 == v45)
                {
                  v44 = v45;
                  break;
                }
              }
            }

            v48 = *(v2 + 2280);
            if (v44 == v48)
            {
              v44 = *(v2 + 2280);
            }

            else
            {
              if (v44 + 5 != v48)
              {
                do
                {
                  v49 = v44 + 5;
                  *v44 = *(v44 + 5);
                  v50 = v44[7];
                  v51 = v44[8];
                  v44[8] = 0;
                  v52 = v44[3];
                  v44[2] = v50;
                  v44[3] = v51;

                  v44[4] = v44[9];
                  v53 = v44 + 10;
                  v44 += 5;
                }

                while (v53 != v48);
                v48 = *(v2 + 2280);
                v44 = v49;
              }

              for (; v48 != v44; v48 -= 5)
              {
              }

              *(v2 + 2280) = v44;
            }

            v58 = *(v2 + 2288);
            if (v44 >= v58)
            {
              v61 = *(v2 + 2272);
              v62 = 0xCCCCCCCCCCCCCCCDLL * ((v44 - v61) >> 3);
              v63 = v62 + 1;
              if (v62 + 1 > 0x666666666666666)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v64 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - v61) >> 3);
              if (2 * v64 > v63)
              {
                v63 = 2 * v64;
              }

              if (v64 >= 0x333333333333333)
              {
                v65 = 0x666666666666666;
              }

              else
              {
                v65 = v63;
              }

              if (v65)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::VFXEmitterComponent::ParticleEmitterBinding>>(v65);
              }

              v66 = 40 * v62;
              v67 = *v24;
              *(v66 + 16) = v24[2];
              *v66 = v67;
              *(v66 + 24) = v24[3];
              *(v66 + 32) = v24[4];
              v68 = *(v2 + 2280);
              v69 = *(v2 + 2272);
              v70 = (v66 + v69 - v68);
              if (v69 != v68)
              {
                v71 = *(v2 + 2272);
                v72 = (v66 + v69 - v68);
                do
                {
                  v73 = *v71;
                  *(v72 + 2) = v71[2];
                  *v72 = v73;
                  v74 = v71[3];
                  v71[3] = 0;
                  *(v72 + 3) = v74;
                  *(v72 + 4) = v71[4];
                  v71 += 5;
                  v72 += 40;
                }

                while (v71 != v68);
                do
                {

                  v69 += 5;
                }

                while (v69 != v68);
                v69 = *(v2 + 2272);
              }

              *(v2 + 2272) = v70;
              v60 = v66 + 40;
              *(v2 + 2280) = v66 + 40;
              *(v2 + 2288) = 0;
              if (v69)
              {
                operator delete(v69);
              }
            }

            else
            {
              v59 = *v24;
              v44[2] = v24[2];
              *v44 = v59;
              v44[3] = v24[3];
              v44[4] = v24[4];
              v60 = (v44 + 5);
            }

            *(v2 + 2280) = v60;
LABEL_77:

            v24 += 5;
          }

          v31 = v24[1];
          if (v31)
          {
            v36 = v24[2];
            if (v36)
            {
              v35 = memcmp(v24[1], v36, *(v29 + 2)) == 0;
LABEL_38:
              LODWORD(v32) = !v35;
              goto LABEL_42;
            }
          }

LABEL_41:
          LODWORD(v32) = 0;
          goto LABEL_42;
        }
      }
    }
  }

  return this;
}

double re::ecs2::VFXEmitterComponent::addCollisionPlane(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v15 = *MEMORY[0x1E69E9840];
  *v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::indexOf(a1 + 1088, v9, v8);
  if ((v8[0] & 1) == 0)
  {
    *&result = re::DynamicArray<re::RigJoint>::add((a1 + 1088), v9).n128_u64[0];
  }

  return result;
}

double re::ecs2::anonymous namespace::worldMatrixForEntity(float32x4_t *this, re::ecs2::Entity *a2)
{
  if (a2 && (v4 = re::TransformService::transformServiceFromEntity(a2, a2)) != 0)
  {

    return re::TransformService::worldMatrix(v4, a2, 0, this);
  }

  else
  {
    *this = xmmword_1E3047670;
    this[1] = xmmword_1E3047680;
    result = 0.0;
    this[2] = xmmword_1E30476A0;
    this[3] = xmmword_1E30474D0;
  }

  return result;
}

re::ecs2::Entity **re::ecs2::VFXEmitterComponent::updateCollisionPlane(re::ecs2::Entity **result, uint64_t a2, int32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v8 = result;
  v9 = result[140];
  v10 = result[138];
  if (v10)
  {
    v11 = (v9 + 96 * v10);
    v12 = 96 * v10;
    while (*(v9 + 10) != a2)
    {
      v9 = (v9 + 96);
      v12 -= 96;
      if (!v12)
      {
        v9 = v11;
        break;
      }
    }
  }

  v13 = vceq_f32(*v9, *a3.i8);
  if ((vpmin_u32(v13, v13).u32[0] & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v9 + 2), a5), vceqq_f32(*(v9 + 1), a4)), vandq_s8(vceqq_f32(*(v9 + 3), a6), vceqq_f32(*(v9 + 4), a7)))) & 0x80000000) == 0)
  {
    v14 = 0;
    v15 = v8[4];
    v16 = v25[0];
    v17 = v25[1];
    v18 = v25[2];
    v19 = v25[3];
    v26[0] = a4;
    v26[1] = a5;
    v26[2] = a6;
    v26[3] = a7;
    do
    {
      *(&v27 + v14 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(v26[v14])), v17, *&v26[v14], 1), v18, v26[v14], 2), v19, v26[v14], 3);
      ++v14;
    }

    while (v14 != 4);
    return re::ecs2::VFXSceneComponent::updateCollisionPlane(v15, a2, *vextq_s8(vzip1q_s32(0, a3), 0, 4uLL).i64, *&v27, *&v28, *&v29, *&v30);
  }

  return result;
}

double re::ecs2::VFXEmitterComponentState::VFXEmitterComponentState(re::ecs2::VFXEmitterComponentState *this)
{
  *this = 0x3FF0000000000000;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 1;
  *(this + 44) = 4;
  __asm { FMOV            V1.4S, #6.0 }

  *(this + 4) = _Q1;
  *(this + 20) = 2;
  *(this + 6) = xmmword_1E3047680;
  *(this + 7) = vdupq_n_s32(0x3DCCCCCDu);
  *(this + 8) = xmmword_1E308A740;
  *(this + 36) = 1;
  *(this + 74) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 168) = 1;
  *(this + 22) = 100;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 204) = 0;
  *(this + 52) = 1065353216;
  *(this + 28) = 0;
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 60) = 1120403456;
  *(this + 67) = 0;
  *(this + 34) = 1017370378;
  *(this + 70) = 0;
  *(this + 18) = xmmword_1E3047680;
  *(this + 38) = 0x3F80000000000000;
  *(this + 78) = 0;
  *(this + 20) = xmmword_1E308A6E0;
  *(this + 21) = 0u;
  *(this + 44) = 1050253722;
  *(this + 90) = 3;
  *(this + 24) = xmmword_1E308A6F0;
  *(this + 25) = xmmword_1E308A700;
  *(this + 416) = 0;
  *(this + 27) = xmmword_1E308A710;
  *(this + 28) = xmmword_1E308A720;
  *(this + 232) = 256;
  *(this + 121) = 0;
  *(this + 31) = xmmword_1E3060D60;
  *(this + 128) = 0;
  *(this + 33) = xmmword_1E3047680;
  *(this + 544) = 0;
  v7 = vdupq_n_s64(3uLL);
  *(this + 37) = v7;
  *(this + 38) = 0u;
  *(this + 78) = 1091567616;
  *(this + 158) = 1;
  *(this + 636) = 0;
  *(this + 160) = 1120403456;
  *(this + 167) = 0;
  *(this + 84) = 1017370378;
  *(this + 170) = 0;
  *(this + 43) = xmmword_1E3047680;
  *(this + 88) = 0x3F80000000000000;
  *(this + 178) = 0;
  *(this + 45) = xmmword_1E308A6E0;
  *(this + 46) = 0u;
  *(this + 94) = 1050253722;
  *(this + 190) = 3;
  *(this + 49) = xmmword_1E308A6F0;
  *(this + 50) = xmmword_1E308A700;
  *(this + 816) = 0;
  *(this + 52) = xmmword_1E308A710;
  *(this + 53) = xmmword_1E308A720;
  *(this + 432) = 256;
  *(this + 221) = 0;
  *(this + 56) = xmmword_1E3060D60;
  *(this + 228) = 0;
  *(this + 58) = xmmword_1E3047680;
  *(this + 944) = 0;
  *(this + 62) = v7;
  *(this + 63) = 0u;
  *(this + 128) = 1091567616;
  *(this + 258) = 1;
  *(this + 1036) = 0;
  *(this + 134) = 0;
  *(this + 266) = 0;
  *(this + 132) = 0;
  *(this + 65) = 0u;
  *(this + 244) = 0u;
  *(this + 1080) = 0;
  *(this + 260) = 0;
  *(this + 364) = 0x3F8000003DCCCCCDLL;
  *(this + 468) = xmmword_1E308A730;
  *(this + 577) = 0;
  *(this + 548) = 0u;
  *(this + 564) = 0u;
  *(this + 660) = 0;
  *(this + 644) = 0u;
  *(this + 764) = 0x3F8000003DCCCCCDLL;
  *(this + 868) = xmmword_1E308A730;
  *(this + 977) = 0;
  *(this + 948) = 0u;
  *(this + 964) = 0u;
  return result;
}

void **re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigJoint>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 96 * v5 - 8);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 96 * v5, (*(a2 + 32) + 96 * v5), 96 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 96 * v4 - 8);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1A6E28, 0);
  *(&qword_1EE1A6E38 + 6) = 0;
  qword_1EE1A6E38 = 0;
  *&xmmword_1EE1A6E48 = 0;
  *(&xmmword_1EE1A6E48 + 1) = 0xFFFFFFFFLL;
  qword_1EE1A6E28 = &unk_1F5CADA48;
  qword_1EE1A6E60 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1A6E58);
  qword_1EE1A6E28 = &unk_1F5CEF230;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigJoint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigJoint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::RigJoint>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 96 * v8);
  v9[4] = 0u;
  v9[5] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 96 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

void *re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigJoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      memset(v8 + 8, 0, 56);
      v5 = 96 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 96 * v4;
        v7 = v5 / 0x60uLL + 1;
        do
        {
          *(v6 + 24) = v8[1];
          *(v6 + 40) = v8[2];
          *(v6 + 56) = v8[3];
          *v6 = 0;
          *(v6 + 8) = v8[0];
          *(v6 + 72) = 0;
          *(v6 + 80) = 0;
          v6 += 96;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigJoint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigJoint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 96 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 96;
        v11 -= 96;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 96 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ParticleEmitterCollisionPlane>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219VFXEmitterComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

void std::vector<re::ecs2::VFXEmitterComponent::ParticleEmitterBinding>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 5;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::VFXEmitterComponent::ParticleEmitterBinding>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 24), *(v7 + v5 + 80));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        *(v8 + 16) = *(v9 + 16);
        result = re::DynamicArray<BOOL>::DynamicArray(v8 + 24, (v9 + 24));
        *(v8 + 64) = *(v9 + 64);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

void std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 64)
  {
    re::DynamicArray<unsigned long>::deinit(i - 40);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::VFXEmitterComponent::VFXBindingValue>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::ecs2::VFXEmitterComponent::VFXBindingValue>,re::ecs2::VFXEmitterComponent::VFXBindingValue*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      std::allocator_traits<std::allocator<re::ecs2::VFXEmitterComponent::VFXBindingValue>>::construct[abi:nn200100]<re::ecs2::VFXEmitterComponent::VFXBindingValue,re::ecs2::VFXEmitterComponent::VFXBindingValue,0>(a3, v6);
      v6 += 64;
      a3 += 64;
    }

    while (v6 != a2);
    do
    {
      re::DynamicArray<unsigned long>::deinit(v5 + 24);

      v5 += 64;
    }

    while (v5 != a2);
  }
}

uint64_t std::allocator_traits<std::allocator<re::ecs2::VFXEmitterComponent::VFXBindingValue>>::construct[abi:nn200100]<re::ecs2::VFXEmitterComponent::VFXBindingValue,re::ecs2::VFXEmitterComponent::VFXBindingValue,0>(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(result + 8) = v2;
  *(result + 16) = v3;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  v4 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v5 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  ++*(a2 + 48);
  ++*(result + 48);
  return result;
}

uint64_t std::__split_buffer<re::ecs2::VFXEmitterComponent::VFXBindingValue>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    re::DynamicArray<unsigned long>::deinit(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__init_with_size[abi:nn200100]<re::ecs2::VFXEmitterComponent::VFXBindingValue*,re::ecs2::VFXEmitterComponent::VFXBindingValue*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::VFXEmitterComponent::VFXBindingValue>>(a4);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t re::DynamicArray<re::ecs2::ParticleEmitterCollisionPlane>::indexOf@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 32);
  v5 = *(result + 16);
  if (v5)
  {
    v7 = result;
    v8 = v4 + 96 * v5;
    v9 = 96 * v5;
    while (1)
    {
      result = re::ecs2::ParticleEmitterCollisionPlane::operator==(v4, a2);
      if (result)
      {
        break;
      }

      v4 += 96;
      v9 -= 96;
      if (!v9)
      {
        v4 = v8;
        break;
      }
    }

    v10 = v4;
    v4 = *(v7 + 32);
    v11 = *(v7 + 16);
  }

  else
  {
    v11 = 0;
    v10 = *(result + 32);
  }

  if (v10 == v4 + 96 * v11)
  {
    v12 = 0;
  }

  else
  {
    *(a3 + 8) = 0xAAAAAAAAAAAAAAABLL * ((v10 - v4) >> 5);
    v12 = 1;
  }

  *a3 = v12;
  return result;
}

uint64_t re::ecs2::ParticleEmitterCollisionPlane::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == *(a2 + 80) && (v2 = vceq_f32(*a1, *a2), (vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0))
  {
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 32), *(a2 + 32)), vceqq_f32(*(a1 + 16), *(a2 + 16))), vandq_s8(vceqq_f32(*(a1 + 48), *(a2 + 48)), vceqq_f32(*(a1 + 64), *(a2 + 64))))) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t re::ecs2::UIGroundingShadowManager::UIGroundingShadowManager(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CEF2C8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 104) = 0u;
  v6 = a1 + 104;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0x7FFFFFFFLL;
  *(a1 + 152) = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  *(a1 + 160) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  v7 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  *(a1 + 168) = v7;
  return a1;
}

void re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_60, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

void re::ecs2::UIGroundingShadowManager::update(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 84) && !*(a1 + 132))
  {
    return;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = 0;
    v4 = (*(a1 + 72) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(a1 + 88);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    while (1)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 72) + 24 * v3 + 16));
      if (WeakRetained)
      {
        break;
      }

      v40 = *re::shadowLogObjects(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "update";
        *&buf[12] = 1024;
        *&buf[14] = 44;
        _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Dirty entities contains a null or destroyed entity. %s:%d", buf, 0x12u);
      }

LABEL_51:
      v39 = *(a1 + 88);
      if (v39 <= v3 + 1)
      {
        v39 = v3 + 1;
      }

      while (v39 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(a1 + 72) + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v3) = v39;
LABEL_57:
      if (v3 == v2)
      {
        goto LABEL_10;
      }
    }

    v11 = WeakRetained;
    *buf = WeakRetained[38];
    if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 8, buf) || (v12 = re::ecs2::EntityComponentCollection::get((v11 + 5), re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) == 0)
    {
LABEL_50:

      goto LABEL_51;
    }

    v13 = v12;
    v14 = *(v11 + 45);
    if (!*(v11 + 45))
    {
      goto LABEL_24;
    }

    v15 = (re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v16 = v11[12];
    v17 = vld1q_dup_s16(v15);
    v18 = 1;
    while (1)
    {
      v19 = vandq_s8(vceqq_s16(v17, *v16), xmmword_1E306AC00);
      v19.i16[0] = vmaxvq_u16(v19);
      if (v19.i32[0])
      {
        break;
      }

      v18 -= 8;
      ++v16;
      if (!--v14)
      {
        goto LABEL_24;
      }
    }

    if (v19.u16[0] - v18 >= *(v11 + 44))
    {
LABEL_24:
      v20 = re::CAREUtil::GetOrAddCAREComponent((v11 - 1), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0, 0, 0);
      *(v20 + 10) |= 2u;
      *(v20 + 27) = 1;
      re::ecs2::Component::markDirty(v20);
      *(v20 + 25) = 0;
      re::ecs2::Component::markDirty(v20);
      *(v20 + 26) = 0;
      *(v20 + 28) = 0;
      re::ecs2::Component::markDirty(v20);
      *(v20 + 9) = 2;
      v21 = *(*(a1 + 168) + 96);
      v45[0].i32[0] = 1067869798;
      v22 = 1067869798;
      if (v21)
      {
        *buf = 0x5E84CA874FDE9C50;
        *&buf[8] = "meshshadow:uiWallShadowIntensity";
        re::DebugSettingsManager::getWithErrorCode<float>(v21, buf, v45);
        re::StringID::destroyString(buf);
        v22 = v45[0].i32[0];
      }

      *(v20 + 8) = v22;
      re::ecs2::Component::markDirty(v20);
    }

    v46[0] = 0x3F8000003F2D42C4;
    v47 = xmmword_1E3072E30;
    v48 = 1056964608;
    v49 = 0x40000000;
    v50 = 256;
    v46[1] = 0x193F800000;
    re::internal::shadows::buildCylindricalProxyMesh(v46, buf);
    v42[0] = v13[4];
    v23 = *(a1 + 160);
    if (v23)
    {
      re::TransformService::worldMatrixForRendering(v23, (v11 - 1), 1, v44);
    }

    else
    {
      v44[0] = xmmword_1E3047670;
      v44[1] = xmmword_1E3047680;
      v44[2] = xmmword_1E30476A0;
      v44[3] = xmmword_1E30474D0;
    }

    re::internal::shadows::calcCylShadowProxyLocalTransform(v42, v44, v45);
    re::transform(buf, v45);
    re::AssetHelper::makeMeshMemoryAsset(*(a1 + 152), buf, 1, 0, 0);
    v24 = objc_loadWeakRetained(&v13[5]);
    if (!v24)
    {
      v29 = re::ecs2::EntityFactory::instance(0);
      v30 = re::ecs2::EntityFactory::make(v29, 4uLL, &v43);
      v31 = v43;
      *(v43 + 76) |= 0x400u;
      v42[0] = 0;
      v42[1] = &str_67;
      v32 = re::StringID::operator=(v31 + 36, v42);
      if (v42[0].i8[0])
      {
        if (v42[0].i8[0])
        {
        }
      }

      v33 = v43;
      v34 = *(v43 + 32);
      if (!v34)
      {
        v34 = re::ecs2::EntityComponentCollection::add((v43 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v33 = v43;
      }

      v34[4] = 0x3F8000003F800000;
      v34[5] = 1065353216;
      v34[6] = 0;
      v34[7] = 0x3F80000000000000;
      v34[8] = 0;
      v34[9] = 0;
      v35 = *(v33 + 24);
      if (!v35)
      {
        v35 = re::ecs2::EntityComponentCollection::add((v33 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
      }

      re::AssetHandle::operator=(v35 + 32, v44);
      (*(**(a1 + 152) + 8))(v42);
      re::DynamicArray<re::AssetHandle>::add((v35 + 56), v42);
      re::AssetHandle::~AssetHandle(v42);
      v36 = re::ecs2::EntityComponentCollection::getOrAdd((v43 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      *(v36 + 25) = 0;
      re::ecs2::Component::markDirty(v36);
      *(v36 + 27) = 1;
      re::ecs2::Component::markDirty(v36);
      *(v36 + 26) = 0;
      *(v36 + 28) = 0;
      re::ecs2::Component::markDirty(v36);
      v37 = *(v36 + 40) | 1;
      *(v36 + 36) = 1;
      *(v36 + 40) = v37;
      *(v36 + 44) = 257;
      re::ecs2::Component::markDirty(v36);
      re::ecs2::Component::markDirty(v36);
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 39, &v43);
      if (v43)
      {
        v38 = v43 + 8;
      }

      else
      {
        v38 = 0;
      }

      objc_storeWeak(&v13[5], v38);
      if (v43)
      {
      }

      goto LABEL_49;
    }

    v25 = objc_loadWeakRetained(&v13[5]);
    v26 = v25;
    v27 = v25 - 8;
    if (!v25)
    {
      v27 = 0;
    }

    v28 = *(v27 + 24);
    if (v28)
    {
      if (!v25)
      {
LABEL_36:
        re::AssetHandle::operator=((v28 + 4), v44);
        re::ecs2::Component::markDirty(v28);
LABEL_49:
        re::AssetHandle::~AssetHandle(v44);
        re::GeomMesh::~GeomMesh(buf);
        goto LABEL_50;
      }
    }

    else
    {
      v28 = re::ecs2::EntityComponentCollection::add((v27 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

LABEL_10:
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 120) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 6;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 136);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    re::ecs2::Entity::removeFromSceneOrParent(*(*(a1 + 120) + 24 * v7 + 16));
    v41 = *(a1 + 136);
    if (v41 <= v7 + 1)
    {
      v41 = v7 + 1;
    }

    while (v41 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(a1 + 120) + 24 * v7 + 8) & 0x80000000) != 0)
      {
        goto LABEL_71;
      }
    }

    LODWORD(v7) = v41;
LABEL_71:
    ;
  }

  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(a1 + 56);
  re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::clear(a1 + 104);
}

void re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_60, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 32);
          }
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

uint64_t (***re::ecs2::UIGroundingShadowManager::willAddSceneToECSService(re::ecs2::UIGroundingShadowManager *this, re::EventBus **a2))(void)
{
  v41 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = a2;
  v3 = a2[36];
  v21 = 0uLL;
  v22 = 1;
  v23 = 0;
  v4 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 176, &v25, &v21);
  v5 = v21.n128_u64[0];
  if (v21.n128_u64[0] && (v22 & 1) == 0)
  {
    v5 = (*(*v21.n128_u64[0] + 40))();
  }

  v39 = re::globalAllocators(v5)[2];
  v6 = (*(*v39 + 32))(v39, 32, 0);
  *v6 = &unk_1F5CEF338;
  v6[1] = this;
  v6[2] = re::ecs2::UIGroundingShadowManager::didAddUIShadowConfigurationComponent;
  v6[3] = 0;
  v40 = v6;
  v21.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v3, v38, re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v21.n128_u64[1] = v7;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v21);
  v8 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v38);
  v36 = re::globalAllocators(v8)[2];
  v9 = (*(*v36 + 32))(v36, 32, 0);
  *v9 = &unk_1F5CEF390;
  v9[1] = this;
  v9[2] = re::ecs2::UIGroundingShadowManager::willRemoveUIShadowConfigurationComponent;
  v9[3] = 0;
  v37 = v9;
  v21.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v35, re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v21.n128_u64[1] = v10;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v21);
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v35);
  v33 = re::globalAllocators(v11)[2];
  v12 = (*(*v33 + 32))(v33, 32, 0);
  *v12 = &unk_1F5CEF338;
  v12[1] = this;
  v12[2] = re::ecs2::UIGroundingShadowManager::didAddUIGroundingShadowComponent;
  v12[3] = 0;
  v34 = v12;
  v21.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v3, v32, re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v21.n128_u64[1] = v13;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v21);
  v14 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v32);
  v30 = re::globalAllocators(v14)[2];
  v15 = (*(*v30 + 32))(v30, 32, 0);
  *v15 = &unk_1F5CEF390;
  v15[1] = this;
  v15[2] = re::ecs2::UIGroundingShadowManager::willRemoveUIGroundingShadowComponent;
  v15[3] = 0;
  v31 = v15;
  v21.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v29, re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v21.n128_u64[1] = v16;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v21);
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v29);
  v27 = re::globalAllocators(v17)[2];
  v18 = (*(*v27 + 32))(v27, 32, 0);
  *v18 = &unk_1F5CEF3E8;
  v18[1] = this;
  v18[2] = re::ecs2::UIGroundingShadowManager::didChangeUIGroundingShadowComponent;
  v18[3] = 0;
  v28 = v18;
  v21.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, v26, re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v21.n128_u64[1] = v19;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v21);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v26);
}

uint64_t re::ecs2::UIGroundingShadowManager::didAddUIShadowConfigurationComponent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 312);
  location = v4;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 16) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 24);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        goto LABEL_9;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a1 + 8, v8, v6, &location, &location);
  ++*(a1 + 48);
LABEL_9:
  if (a2)
  {
    v11 = (a2 + 8);
  }

  else
  {
    v11 = 0;
  }

  objc_initWeak(&location, v11);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(a1 + 56, &location);
  objc_destroyWeak(&location);
  return 0;
}

uint64_t re::ecs2::UIGroundingShadowManager::willRemoveUIShadowConfigurationComponent(re::ecs2::UIGroundingShadowManager *a1, re::ecs2::Entity *a2)
{
  v5 = *(a2 + 39);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 8, &v5);
  re::ecs2::UIGroundingShadowManager::removeUIGroundingShadowForEntity(a1, a2);
  return 0;
}

uint64_t re::ecs2::UIGroundingShadowManager::didAddUIGroundingShadowComponent(uint64_t a1, uint64_t a2)
{
  location = *(a2 + 312);
  if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 8, &location))
  {
    objc_initWeak(&location, (a2 + 8));
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(a1 + 56, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::ecs2::UIGroundingShadowManager::willRemoveUIGroundingShadowComponent(re::ecs2::UIGroundingShadowManager *a1, re::ecs2::Entity *a2)
{
  if (a2)
  {
    v4 = a2 + 8;
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(a1 + 56, &location);
  objc_destroyWeak(&location);
  re::ecs2::UIGroundingShadowManager::removeUIGroundingShadowForEntity(a1, a2);
  return 0;
}

uint64_t re::ecs2::UIGroundingShadowManager::didChangeUIGroundingShadowComponent(uint64_t a1, uint64_t a2)
{
  location = *(a2 + 312);
  if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 8, &location))
  {
    objc_initWeak(&location, (a2 + 8));
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(a1 + 56, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

BOOL re::ecs2::UIGroundingShadowManager::willRemoveSceneFromECSService(re::ecs2::UIGroundingShadowManager *this, re::ecs2::Scene *a2)
{
  v11 = a2;
  v3 = *(a2 + 36);
  v4 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(this + 176, &v11);
  if (*(v4 + 16))
  {
    v5 = (v4 + 24);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    v7 = &v5[2 * v6];
    do
    {
      v8 = *v5;
      v9 = v5[1];
      v5 += 2;
      re::EventBus::unsubscribe(v3, v8, v9);
    }

    while (v5 != v7);
  }

  return re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 176, &v11);
}

void re::ecs2::UIGroundingShadowManager::removeUIGroundingShadowForEntity(re::ecs2::UIGroundingShadowManager *this, re::ecs2::Entity *a2)
{
  if (a2)
  {
    v4 = a2 + 8;
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(&location, v4);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(this + 56, &location);
  objc_destroyWeak(&location);
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v5)
  {
    v6 = v5;
    re::ecs2::EntityComponentCollection::remove((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    WeakRetained = objc_loadWeakRetained((v6 + 40));
    v8 = WeakRetained - 8;
    if (WeakRetained)
    {
      v9 = WeakRetained - 8;
    }

    else
    {
      v9 = 0;
    }

    location = v9;
    if (!WeakRetained)
    {
      goto LABEL_17;
    }

    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
    v11 = v10 ^ (v10 >> 31);
    v12 = *(this + 32);
    if (v12)
    {
      v13 = v11 % v12;
      v14 = *(*(this + 14) + 4 * (v11 % v12));
      if (v14 != 0x7FFFFFFF)
      {
        v15 = *(this + 15);
        if (*(v15 + 24 * v14 + 16) == v8)
        {
          goto LABEL_17;
        }

        while (1)
        {
          LODWORD(v14) = *(v15 + 24 * v14 + 8) & 0x7FFFFFFF;
          if (v14 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v15 + 24 * v14 + 16) == v9)
          {
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsCopy(this + 104, v13, v11, &location, &location);
    ++*(this + 36);
LABEL_17:
    objc_destroyWeak((v6 + 40));
    *(v6 + 40) = 0;
    if (location)
    {
    }
  }
}

void re::ecs2::UIGroundingShadowManager::~UIGroundingShadowManager(re::ecs2::UIGroundingShadowManager *this)
{
  re::ecs2::UIGroundingShadowManager::~UIGroundingShadowManager(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 22);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 13);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(this + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 1);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF338;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF338;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF390;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF3E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIGroundingShadowManager,REEventHandlerResult (re::ecs2::UIGroundingShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF3E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 24 * v9 + 8) = v12 | 0x80000000;
  v13 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v9 + 8) = *(*(a1 + 16) + 24 * v9 + 8) & 0x80000000 | *(v13 + 4 * a2);
  *(*(a1 + 16) + 24 * v9) = a3;
  v14 = *a5;
  *(*(a1 + 16) + 24 * v9 + 16) = *a5;
  if (v14)
  {
    v15 = (v14 + 8);
    v13 = *(a1 + 8);
  }

  *(v13 + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

void re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *a5 = 0;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

uint64_t re::DebugSettingsManager::getWithErrorCode<float>(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  if (!a3)
  {
    return 4;
  }

  std::mutex::lock((a1 + 48));
  v6 = re::DebugSettingsManager::contains<float>(a1, a2);
  if (!v6)
  {
    v7 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v13);
    v8 = *(a1 + 16) + 40 * v14;
    v10 = *(v8 + 24);
    v9 = v8 + 24;
    if (v10 == 1)
    {
      v11 = *(v9 + 8);
      if (v11 == 1)
      {
        *a3 = *(v9 + 4);
      }

      v6 = v11 != 1;
    }

    else
    {
      v6 = 5;
    }
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

uint64_t re::DebugSettingsManager::contains<float>(uint64_t a1, void *a2)
{
  if (*(a1 + 112) != 1)
  {
    return 3;
  }

  v12 = v2;
  v13 = v3;
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v10);
  if (v11 == 0x7FFFFFFF)
  {
    return 1;
  }

  v7 = *(a1 + 16) + 40 * v11;
  v9 = *(v7 + 24);
  v8 = v7 + 24;
  if (v9 == 1 && *(v8 + 8) != 1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void *re::ecs2::allocInfo_EmbeddedStereoContentComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_239, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_239))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7688, "EmbeddedStereoContentComponent");
    __cxa_guard_release(&_MergedGlobals_239);
  }

  return &unk_1EE1A7688;
}

void re::ecs2::initInfo_EmbeddedStereoContentComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v39[0] = 0xDF65E95A430EB7CCLL;
  v39[1] = "EmbeddedStereoContentComponent";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE1A7638, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A7638);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A7640 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::ecs2::introspect_WorldRootToken(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "worldRootToken";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A7648 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_PoseF(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "fixedPerspectivePose";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x3000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1A7650 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_BOOL(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "useFixedPerspective";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x6400000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1A7658 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_BOOL(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "allowsCrossing";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6600000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1A7660 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_BOOL(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "isStereo";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x6700000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1A7668 = v26;
      v27 = re::introspectionAllocator(v26);
      v28 = re::introspect_Vector3F(1);
      v29 = (*(*v27 + 32))(v27, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "clearColor";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x5000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1A7670 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "enableClipping";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x6500000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1A7678 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_float(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "lightingBlendDistance";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x6000000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1A7680 = v37;
      __cxa_guard_release(&qword_1EE1A7638);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1A7640;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EmbeddedStereoContentComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230EmbeddedStereoContentComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v38 = v40;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::EmbeddedStereoContentComponent>(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CDB678;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1065353216;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0x3F80000000000000;
  *(v2 + 80) = 0u;
  if (re::PortalUserDefaults::portalLightingBlendDistance(void)::onceToken != -1)
  {
    dispatch_once(&re::PortalUserDefaults::portalLightingBlendDistance(void)::onceToken, &__block_literal_global_33);
  }

  *(a1 + 96) = re::PortalUserDefaults::portalLightingBlendDistance(void)::portalLightingBlendDistance;
  *(a1 + 100) = 0x1000000;
  *(a1 + 104) = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs230EmbeddedStereoContentComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::buildCurvedCollisionShapeAssetHandle(re::ecs2 *this, re::AssetManager *a2, float a3, float a4, float a5, float a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v39 = 65548;
  v40 = 4 * (a4 > 0.0);
  v43 = a4;
  v41 = a5;
  v42 = a6;
  v44 = 0;
  v45 = 4;
  re::GeomMesh::GeomMesh(v36, 0);
  re::buildPlane(v36, &v39);
  re::internal::wrapGeometryAroundCylinder(v36, v36, 1, a3);
  inited = re::GeomMesh::accessVertexPositions(v36);
  v10 = inited;
  LODWORD(v12) = v11;
  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  v13 = (3 * v11);
  v34 = 0;
  if (v13)
  {
    inited = re::DynamicArray<int>::setCapacity(v32, v13);
  }

  v12 = v12;
  if (v12)
  {
    do
    {
      re::DynamicArray<float>::add(v32, v10);
      re::DynamicArray<float>::add(v32, v10 + 1);
      re::DynamicArray<float>::add(v32, v10 + 2);
      v10 += 4;
      --v12;
    }

    while (v12);
  }

  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  v14 = v37;
  if (3 * v37)
  {
    inited = re::DynamicArray<unsigned short>::setCapacity(v28, (3 * v37));
    v14 = v37;
  }

  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v6 = 3;
LABEL_9:
    *&v47[32] = 0;
    memset(v47, 0, 28);
    if (v14 > v16)
    {
      v17 = v38;
      if (*(v38 + 16 * v16 + 12) == -1)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      re::DynamicArray<float>::resize(v47, v14);
      v18 = 0;
      v19 = *&v47[16];
      v20 = *&v47[32];
      do
      {
        if (v19 == v18)
        {
          v46 = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v48 = 136315906;
          *&v48[4] = "operator[]";
          v49 = 1024;
          v50 = 789;
          v51 = 2048;
          v52 = v19;
          v53 = 2048;
          v54 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_34;
        }

        *(v20 + 4 * v18) = *(v15 + 4 * v18 + v17);
        ++v18;
      }

      while (v14 != v18);
      v19 = 0;
      while (1)
      {
        v17 = *&v47[16];
        if (*&v47[16] <= v19)
        {
          break;
        }

        LOWORD(v55) = *(*&v47[32] + 4 * v19);
        re::DynamicArray<unsigned short>::add(v28, &v55);
        if (v14 == ++v19)
        {
          inited = *v47;
          if (*v47 && *&v47[32])
          {
            inited = (*(**v47 + 40))();
          }

          ++v16;
          v14 = v37;
          v15 += 2;
          if (v16 < v37)
          {
            goto LABEL_9;
          }

          goto LABEL_23;
        }
      }

LABEL_34:
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v48 = 136315906;
      *&v48[4] = "operator[]";
      v49 = 1024;
      v50 = 789;
      v51 = 2048;
      v52 = v19;
      v53 = 2048;
      v54 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v48 = 136315906;
    *&v48[4] = "operator[]";
    v49 = 1024;
    v50 = 797;
    v51 = 2048;
    v52 = v16;
    v53 = 2048;
    v54 = v14;
    _os_log_send_and_compose_impl();
    inited = _os_crash_msg();
    __break(1u);
  }

  else
  {
LABEL_23:
    v15 = &re::StackScratchAllocator::s_rootsWithPersistentBlocks[17];
    {
      goto LABEL_24;
    }
  }

  inited = re::initCollision(inited);
  v21 = v15[252];
LABEL_24:
  v22 = re::globalAllocators(inited);
  if (!v33)
  {
    *v48 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 789;
    *&v47[18] = 2048;
    *&v47[20] = 0;
    *&v47[28] = 2048;
    *&v47[30] = 0;
    _os_log_send_and_compose_impl();
    v24 = _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v6 = 1;
  v23 = (*(*v21 + 152))(v21, v22[2], v35, v33 / 3, 12, v31, v29, 1, 0, 0, 1);
  re::AssetHelper::makeIndexedTriangleMeshAsset(a2, v23, 0);
  v24 = re::AssetHandle::blockUntilLoaded<re::IndexedTriangleMeshAsset>(v48);
  v21 = v24;
  v25 = v15[252];
  if (!v25)
  {
LABEL_38:
    v24 = re::initCollision(v24);
    v25 = v15[252];
  }

  v26 = re::globalAllocators(v24);
  v27 = (*(*v25 + 144))(v25, v26[2], *(v21 + 1));
  LODWORD(v57) = 0;
  v55 = 0u;
  v56 = 0u;
  *(&v57 + 4) = 0x7FFFFFFFLL;
  memset(v47, 0, 36);
  *&v47[36] = 0x7FFFFFFFLL;
  v46 = *(v21 + 1);
  re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::addOrReplace(v47, &v46, v48);
  re::AssetHelper::makeCollisionShapeAsset(a2, v27, &v55, v47, 0);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v47);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v55);
  re::AssetHandle::~AssetHandle(v48);
  if (v28[0] && v31)
  {
    (*(*v28[0] + 40))(v28[0], v31);
  }

  if (v32[0] && v35)
  {
    (*(*v32[0] + 40))(v32[0], v35);
  }

  re::GeomMesh::~GeomMesh(v36);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::IndexedTriangleMeshAsset>(re::IndexedTriangleMeshAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::IndexedTriangleMeshAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

re::AssetHandle *re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::addOrReplace(uint64_t a1, void *a2, const re::AssetHandle *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::allocEntry(a1, v11, v10);
    *(v8 + 8) = *a2;
    result = re::AssetHandle::AssetHandle((v8 + 16), a3);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::AssetHandle::operator=(*(a1 + 16) + 48 * v7 + 16, a3);
  }

  return result;
}

void re::ecs2::VideoPlayerComponentHelper::impl::~impl(id *this)
{
  re::ecs2::VideoPlayerComponentHelper::impl::removeVideoEntityHierarchy(this);
  re::AssetHandle::~AssetHandle((this + 1833));
  objc_destroyWeak(this + 1832);
  this[1832] = 0;
  objc_destroyWeak(this + 1831);
  this[1831] = 0;
  objc_destroyWeak(this + 1830);
  this[1830] = 0;
  media::OpacityAnimationEngine::~OpacityAnimationEngine((this + 1566));
  media::MediaScreenAnimationEngine::~MediaScreenAnimationEngine((this + 6));
}

void re::ecs2::VideoPlayerComponentHelper::impl::removeVideoEntityHierarchy(id *this)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 1830);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = *(WeakRetained + 3);
    if (v4 && (*(v4 + 304) & 0x80) == 0)
    {
      v5 = re::ecs2::EntityComponentCollection::get((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v6 = v5;
        LOBYTE(v14[0]) = 0;
        re::ecs2::VideoPlayerStatusComponent::setMediaInfo(v5, v14);
        LOBYTE(v14[0]) = 0;
        re::ecs2::VideoPlayerStatusComponent::setContentInfo(v6, v14);
      }

      else
      {
        v13 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14[0] = 67109120;
          v14[1] = 5808;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoPlayerStatusComp is nullptr", v14, 8u);
        }
      }
    }
  }

  v7 = objc_loadWeakRetained(this + 1830);
  if (v7)
  {
    v8 = v7;
    v9 = (v7 - 8);
    re::ecs2::Entity::setSelfEnabled((v7 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v9);
    objc_destroyWeak(this + 1830);
    this[1830] = 0;
  }

  v10 = objc_loadWeakRetained(this + 1831);
  if (v10)
  {
    v11 = v10;
    v12 = (v10 - 8);
    re::ecs2::Entity::setSelfEnabled((v10 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v12);
    objc_destroyWeak(this + 1831);
    this[1831] = 0;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(re::ecs2::VideoPlayerComponentHelper::impl *this, BOOL a2, re::ecs2::Entity *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v4 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 874;
    v5 = "VideoPlayerComponentHelper line: %d, entity is nullptr";
    goto LABEL_11;
  }

  v3 = *(this + 29);
  if (!v3)
  {
    v4 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 876;
    v5 = "VideoPlayerComponentHelper line: %d, renderOptionsComponent is nullptr";
LABEL_11:
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 8u);
    return;
  }

  *(v3 + 25) = 0;

  re::ecs2::Component::markDirty(v3);
}

void re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(uint64_t a1, unsigned __int8 *a2, __int128 *a3, re::AssetHandle *a4, re::AssetManager *a5, uint64_t a6, uint64_t a7)
{
  v248 = *MEMORY[0x1E69E9840];
  if (!a3 || !a5)
  {
    return;
  }

  v11 = a3;
  v13 = a1;
  v14 = (a1 + 8);
  if ((a1 + 8) == a2)
  {
    if (*(a1 + 10) & 1) != 0 || (*(a1 + 11))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = *a2;
    v17 = *(a1 + 9);
    if (v15 == v16 && v17 == a2[1])
    {
      *(a1 + 10) = 0;
      goto LABEL_14;
    }

    *(a1 + 10) = (v15 ^ 1) & v16;
    v18 = *a2;
    v19 = *a2 ^ 1;
    *(a1 + 11) = v15 & v19;
    *(a1 + 12) = a2[1] & ~v17 & 1;
    v20 = a2[1];
    *(a1 + 13) = v17 & ~v20 & 1;
    *(a1 + 8) = v18;
    *(a1 + 9) = v20;
    if (v15)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    if (v21)
    {
LABEL_16:
      v22 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v23 = *v14;
        v24 = a2[1];
        buf[0].i32[0] = 67109376;
        buf[0].i32[1] = v23;
        buf[0].i16[4] = 1024;
        *(&buf[0].i32[2] + 2) = v24;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Setting viewport info in VideoPlayerComponentHelper - mono viewport enabled(%d), stereo viewport enabled(%d)", buf, 0xEu);
      }

      goto LABEL_18;
    }
  }

LABEL_14:
  if ((*(a1 + 12) & 1) != 0 || *(a1 + 13) == 1)
  {
    goto LABEL_16;
  }

LABEL_18:
  v25 = *v14;
  if ((v25 & 1) == 0 && *(v13 + 9) != 1)
  {
    return;
  }

  hasVideoEntityHierarchy = re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(a1, v11);
  if (hasVideoEntityHierarchy)
  {
    v27 = *(v11 + 43);
    if (v27)
    {
      v28 = *(v11 + 45);
      v29 = 8 * v27;
      v30 = 8 * v27;
      v31 = v28;
      while (1)
      {
        v32 = *v31;
        if ((*(*v31 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
        {
          v33 = *(v32 + 296);
          if (v33 == "__InternalVPC-Screen__" || !strcmp(v33, "__InternalVPC-Screen__"))
          {
            break;
          }
        }

        ++v31;
        v30 -= 8;
        if (!v30)
        {
          v32 = 0;
          break;
        }
      }

      while (1)
      {
        v34 = *v28;
        if ((*(*v28 + 288) ^ 0x931CC76C0DD179BALL) <= 1)
        {
          v35 = *(v34 + 37);
          if (v35 == "__InternalVPC-ScreenGlowEntity__" || !strcmp(v35, "__InternalVPC-ScreenGlowEntity__"))
          {
            break;
          }
        }

        ++v28;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      v32 = 0;
LABEL_56:
      v34 = 0;
    }

    if (v25)
    {
      *&v227.var0 = 0xD0AE8347A834160;
      v227.var1 = "__InternalVPC-CyclopEye__";
      v49 = re::ecs2::Entity::findInHierarchyByName(v11, &v227);
      v50 = v49;
      if (*&v227.var0)
      {
        if (*&v227.var0)
        {
        }
      }

      *&v227.var0 = 0;
      v227.var1 = &str_67;
    }

    else
    {
      v50 = 0;
    }

    if (*(v13 + 9) == 1)
    {
      *&v226.var0 = 0x98636CD79C3E2C92;
      v226.var1 = "__InternalVPC-LeftEye__";
      v51 = re::ecs2::Entity::findInHierarchyByName(v11, &v226);
      v52 = v51;
      if (*&v226.var0)
      {
        if (*&v226.var0)
        {
        }
      }

      *&v226.var0 = 0;
      v226.var1 = &str_67;
      *&v225.var0 = 0x740B54E87609516CLL;
      v225.var1 = "__InternalVPC-RightEye__";
      v53 = re::ecs2::Entity::findInHierarchyByName(v11, &v225);
      v54 = v53;
      if (*&v225.var0)
      {
        if (*&v225.var0)
        {
        }
      }

      *&v225.var0 = 0;
      v225.var1 = &str_67;
    }

    else
    {
      v54 = 0;
      v52 = 0;
    }

    *&v224.var0 = 0x74088E8F787C2E0ELL;
    v224.var1 = "__InternalVPC-DRMEnity__";
    v55 = re::ecs2::Entity::findInHierarchyByName(v11, &v224);
    v219 = v55;
    if (*&v224.var0)
    {
      if (*&v224.var0)
      {
      }
    }

    *&v224.var0 = 0;
    v224.var1 = &str_67;
    v56 = *(v11 + 43);
    if (v56)
    {
      v221 = v50;
      v57 = v52;
      v58 = *(v11 + 45);
      v59 = 8 * v56;
      while (1)
      {
        v60 = *v58;
        if ((*(*v58 + 288) ^ 0xB71EB2016BE7B4AuLL) <= 1)
        {
          v55 = *(v60 + 296);
          if (v55 == "__InternalVPC-PortalWorld__")
          {
            break;
          }

          v55 = strcmp(v55, "__InternalVPC-PortalWorld__");
          if (!v55)
          {
            break;
          }
        }

        ++v58;
        v59 -= 8;
        if (!v59)
        {
          v60 = 0;
          break;
        }
      }

      v52 = v57;
      v50 = v221;
      if (!v32)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v60 = 0;
      if (!v32)
      {
LABEL_83:
        v61 = *re::videoLogObjects(v55);
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        buf[0].i16[0] = 0;
        v62 = "[VideoPlayerComponentHelper]->Update :: One of the Required Entites is a nullptr";
LABEL_168:
        v129 = v61;
        v130 = 2;
        goto LABEL_169;
      }
    }

LABEL_145:
    if (!re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
    {
      v61 = *re::videoLogObjects(0);
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      buf[0].i16[0] = 0;
      v62 = "[VideoPlayerComponentHelper]->Update :: VideoPlayerStatusComponent is a nullptr";
      goto LABEL_168;
    }

    v117 = v11;
    v118 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v118)
    {
      v205 = *re::videoLogObjects(0);
      if (!os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      buf[0].i64[0] = 0x62204000100;
      v62 = "VideoPlayerComponentHelper line: %d, videoPlayerComp is nullptr";
      v129 = v205;
      v130 = 8;
LABEL_169:
      _os_log_error_impl(&dword_1E1C61000, v129, OS_LOG_TYPE_ERROR, v62, buf, v130);
      return;
    }

    *(v13 + 4) = *(v118 + 184);
    if (*v13 != 1)
    {
LABEL_288:
      v202 = re::ecs2::EntityComponentCollection::get((v117 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (*(v13 + 7) != 1 && *(v13 + 2) == 1)
      {
        if (v202)
        {
          buf[0].i8[0] = 1;
          re::ecs2::VideoPlayerStatusComponent::setContentInfo(v202, buf);
          *(v13 + 7) = *(v13 + 2);
        }

        else
        {
          v203 = re::VideoDefaults::logEnabled(0);
          if (v203)
          {
            v209 = *re::videoLogObjects(v203);
            if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].i16[0] = 0;
              _os_log_impl(&dword_1E1C61000, v209, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper::impl::update] videoPlayerStatusComp is a null ptr", buf, 2u);
            }
          }
        }
      }

      return;
    }

    *v13 = 0;
    *(v13 + 14) = *(v118 + 96);
    v119 = *re::videoLogObjects(v118);
    v120 = os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT);
    if (v120)
    {
      v121 = *(v13 + 2);
      if (*(v13 + 2) || (v122 = *(v13 + 3), v122 != 1))
      {
        v122 = *(v13 + 2);
      }

      buf[0].i32[0] = 67109376;
      buf[0].i32[1] = v121;
      buf[0].i16[4] = 1024;
      *(&buf[0].i32[2] + 2) = v122;
      _os_log_impl(&dword_1E1C61000, v119, OS_LOG_TYPE_DEFAULT, "Changing VideoEntityHierarchyState: content type - %hhu, effective content type - %hhu", buf, 0xEu);
    }

    v123 = *(v32 + 32);
    if (!v123 || (*(v123 + 304) & 0x80) != 0)
    {
      v124 = *re::videoLogObjects(v120);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        buf[0].i16[0] = 0;
        _os_log_error_impl(&dword_1E1C61000, v124, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->changeVideoEntityHierarchyState :: VideoPlayerEntity is a nullptr", buf, 2u);
      }
    }

    v125 = re::ecs2::EntityComponentCollection::get((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (*(v13 + 2) != 1 && (*(v13 + 2) || *(v13 + 3) != 1))
    {
      re::ecs2::Entity::setSelfEnabled(v32, 0);
      re::ecs2::Entity::setSelfEnabled(v34, 0);
      if (v50)
      {
        re::ecs2::Entity::setSelfEnabled(v50, 0);
      }

      v132 = v219;
      if (v52)
      {
        re::ecs2::Entity::setSelfEnabled(v52, 0);
      }

      if (v54)
      {
        re::ecs2::Entity::setSelfEnabled(v54, 0);
      }

      if (v60)
      {
        re::ecs2::Entity::setSelfEnabled(v60, 0);
      }

      if (v219)
      {
        if (re::ecs2::EntityComponentCollection::add((v219 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
        {
          re::ecs2::EntityComponentCollection::remove((v219 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        re::ecs2::Entity::setSelfEnabled(v219, 0);
      }

      v133 = *re::videoLogObjects(v131);
      v134 = os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT);
      if (v134)
      {
        buf[0].i16[0] = 0;
        _os_log_impl(&dword_1E1C61000, v133, OS_LOG_TYPE_DEFAULT, "Invalid media type set for VideoEntity", buf, 2u);
      }

      goto LABEL_271;
    }

    re::ecs2::Entity::setSelfEnabled(v32, 1);
    if (!v125 || *(v125 + 25) != 1)
    {
LABEL_254:
      if (v50)
      {
        re::ecs2::Entity::setSelfEnabled(v50, 0);
      }

      v132 = v219;
      if (v52)
      {
        re::ecs2::Entity::setSelfEnabled(v52, 0);
      }

      if (v54)
      {
        re::ecs2::Entity::setSelfEnabled(v54, 0);
      }

      if (v60)
      {
        re::ecs2::Entity::setSelfEnabled(v60, 0);
      }

      if (v219)
      {
        if (re::ecs2::EntityComponentCollection::add((v219 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
        {
          re::ecs2::EntityComponentCollection::remove((v219 + 12), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        re::ecs2::Entity::setSelfEnabled(v219, 0);
      }

      v187 = *(v13 + 14);
      v188 = re::VideoDefaults::logEnabled(v126);
      if (v187 == 1)
      {
        if (v188)
        {
          v210 = *re::videoLogObjects(v188);
          if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].i16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v210, OS_LOG_TYPE_DEFAULT, "ImageBasedReflections are on", buf, 2u);
          }
        }

        v134 = re::ecs2::EntityComponentCollection::getOrAdd((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        if (v188)
        {
          v211 = *re::videoLogObjects(v188);
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].i16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v211, OS_LOG_TYPE_DEFAULT, "ImageBasedReflections are off", buf, 2u);
          }
        }

        re::ecs2::EntityComponentCollection::remove((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

LABEL_271:
      v189 = *re::videoLogObjects(v134);
      v190 = os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT);
      if (v190)
      {
        v191 = *(v32 + 304) & 1;
        buf[0].i32[0] = 67109120;
        buf[0].i32[1] = v191;
        _os_log_impl(&dword_1E1C61000, v189, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state screenEntity: %d", buf, 8u);
      }

      if (v50)
      {
        v192 = *re::videoLogObjects(v190);
        v190 = os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT);
        if (v190)
        {
          v193 = *(v50 + 76) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v193;
          _os_log_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state cyclopEyeEntity: %d", buf, 8u);
        }
      }

      if (v52)
      {
        v194 = *re::videoLogObjects(v190);
        v190 = os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT);
        if (v190)
        {
          v195 = *(v52 + 76) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v195;
          _os_log_impl(&dword_1E1C61000, v194, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state leftEyeEntity: %d", buf, 8u);
        }
      }

      if (v54)
      {
        v196 = *re::videoLogObjects(v190);
        v190 = os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT);
        if (v190)
        {
          v197 = *(v54 + 76) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v197;
          _os_log_impl(&dword_1E1C61000, v196, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state rightEyeEntity: %d", buf, 8u);
        }
      }

      if (v60)
      {
        v198 = *re::videoLogObjects(v190);
        v190 = os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT);
        if (v190)
        {
          v199 = *(v60 + 304) & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v199;
          _os_log_impl(&dword_1E1C61000, v198, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state portalWorldEntity: %d", buf, 8u);
        }
      }

      if (v132)
      {
        v200 = *re::videoLogObjects(v190);
        if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
        {
          v201 = v219[76] & 1;
          buf[0].i32[0] = 67109120;
          buf[0].i32[1] = v201;
          _os_log_impl(&dword_1E1C61000, v200, OS_LOG_TYPE_DEFAULT, "changeVideoEntityHierarchyState active state drmEntity: %d", buf, 8u);
        }
      }

      goto LABEL_288;
    }

    v127 = re::VideoDefaults::logEnabled(v126);
    if (!v127 || (v212 = *re::videoLogObjects(v127), !os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT)))
    {
LABEL_163:
      v128 = !*(v13 + 2) && *(v13 + 3) == 1 || *(v13 + 2) == 1;
      re::ecs2::Entity::setSelfEnabled(v34, v128);
      goto LABEL_254;
    }

    if (*(v13 + 2))
    {
      v213 = *(v13 + 2);
      if (v213 != 1)
      {
        goto LABEL_319;
      }
    }

    else if (*(v13 + 3) != 1)
    {
      v213 = 0;
LABEL_319:
      v214 = "Disabling";
      goto LABEL_320;
    }

    v214 = "Enabling";
    v213 = 1;
LABEL_320:
    buf[0].i32[0] = 67109378;
    buf[0].i32[1] = v213;
    buf[0].i16[4] = 2080;
    *(&buf[0].i64[1] + 2) = v214;
    _os_log_impl(&dword_1E1C61000, v212, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->changeVideoEntityHierarchyState :: content type - %hhu, %s the Screen Glow Entity", buf, 0x12u);
    v117 = v11;
    goto LABEL_163;
  }

  if (!*(v11 + 32))
  {
    hasVideoEntityHierarchy = re::ecs2::EntityComponentCollection::add((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v223 = a5;
  v217 = a4;
  v36 = re::VideoDefaults::logEnabled(hasVideoEntityHierarchy);
  if (v36)
  {
    v204 = *re::videoLogObjects(v36);
    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v204, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper::impl::buildVideoEntityHierarchy]: build video entity hierarchy", buf, 2u);
    }
  }

  v37 = 14640;
  WeakRetained = objc_loadWeakRetained((v13 + 14640));
  if (WeakRetained)
  {
    goto LABEL_37;
  }

  v63 = re::ecs2::EntityFactory::instance(0);
  v64 = re::ecs2::EntityFactory::make(v63, 4uLL, &v240);
  v65 = v240;
  if (v240)
  {
    v66 = re::VideoDefaults::logEnabled(v64);
    if (v66)
    {
      v206 = *re::videoLogObjects(v66);
      if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].i16[0] = 0;
        _os_log_impl(&dword_1E1C61000, v206, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createScreenEntity :: Created the Screen Entity and now Configuring it.", buf, 2u);
      }
    }

    buf[0].i64[0] = 0xF4664E2E6A44E25ALL;
    buf[0].i64[1] = "__InternalVPC-Screen__";
    re::StringID::operator=(v65 + 36, buf[0].i64);
    *(v65 + 76) |= 0x1400u;
    re::ecs2::Entity::setSelfEnabled(v65, 0);
    re::ecs2::EntityComponentCollection::remove((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v67 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (a7)
    {
      v68 = v67;
      buf[0] = xmmword_1E3047670;
      buf[1] = xmmword_1E3047680;
      v246[0] = xmmword_1E30476A0;
      v246[1] = xmmword_1E30474D0;
      v69 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v241 = 0u;
      *v244 = xmmword_1E30474D0;
      v239 = 0u;
      re::decomposeScaleRotationTranslation<float>(buf, &v241, v244, &v239);
      v70 = *(&v241 + 1);
      v71 = *v244;
      v72 = *&v244[8];
      v73 = v239;
      *(v69 + 32) = v241;
      *(v69 + 40) = v70;
      *(v69 + 48) = v71;
      *(v69 + 56) = v72;
      *(v69 + 64) = v73;
      v74 = *(v65 + 29);
      if (!v74)
      {
        v74 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      v74[25] = 1;
      v74[35] = 1;
      if ((v74[30] & 1) == 0)
      {
        v74[30] = 1;
      }

      v74[31] = 1;
      re::AssetHandle::AssetHandle(&v239, (a7 + 8));
      re::AssetHandle::loadAsync(&v239);
      if (v68)
      {
        v76 = *(v68 + 188);
        v77 = *(v68 + 196);
      }

      else
      {
        v77 = 0;
        v76 = 0;
      }

      DWORD2(v242) = 0;
      LODWORD(v243[0]) = 1065353216;
      *(v243 + 8) = xmmword_1E3063230;
      __asm { FMOV            V1.2S, #1.0 }

      v241 = _D1;
      BYTE12(v242) = 0;
      LODWORD(v242) = v76;
      WORD2(v242) = v77 & 1;
      v177 = re::VideoDefaults::logLevel(v75);
      if (v177 >= 2)
      {
        goto LABEL_304;
      }

      goto LABEL_239;
    }

    v136 = *re::videoLogObjects(v67);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      buf[0].i16[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v136, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->addComponentsToScreenEntity :: Since video manager is nil, can't add components to screenEntity", buf, 2u);
    }

    goto LABEL_247;
  }

  while (1)
  {
    v39 = objc_loadWeakRetained((v13 + 14648));
    v40 = v223;
    if (v39)
    {
      goto LABEL_39;
    }

    v78 = re::ecs2::EntityFactory::instance(0);
    v79 = re::ecs2::EntityFactory::make(v78, 4uLL, &v240);
    v80 = v240;
    if (!v240)
    {
      goto LABEL_40;
    }

    v81 = re::VideoDefaults::logEnabled(v79);
    if (v81)
    {
      v207 = *re::videoLogObjects(v81);
      if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].i16[0] = 0;
        _os_log_impl(&dword_1E1C61000, v207, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createScreenGlowEntity :: Created the Screen Glow Entity and now Configuring it.", buf, 2u);
      }
    }

    buf[0].i64[0] = 0x931CC76C0DD179BALL;
    buf[0].i64[1] = "__InternalVPC-ScreenGlowEntity__";
    re::StringID::operator=(v80 + 36, buf[0].i64);
    *(v80 + 76) |= 0x1400u;
    re::ecs2::Entity::setSelfEnabled(v80, 0);
    re::ecs2::EntityComponentCollection::remove((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v241 = xmmword_1E3047670;
    v242 = xmmword_1E3047680;
    v243[0] = xmmword_1E30476A0;
    v243[1] = xmmword_1E30474D0;
    v82 = re::ecs2::EntityComponentCollection::add((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    buf[0] = 0u;
    *v244 = xmmword_1E30474D0;
    v239 = 0u;
    re::decomposeScaleRotationTranslation<float>(&v241, buf, v244, &v239);
    v83 = buf[0].i64[1];
    v84 = *v244;
    v85 = *&v244[8];
    v86 = v239;
    *(v82 + 32) = buf[0].i64[0];
    *(v82 + 40) = v83;
    *(v82 + 48) = v84;
    *(v82 + 56) = v85;
    *(v82 + 64) = v86;
    v87 = *(v80 + 29);
    if (!v87)
    {
      v87 = re::ecs2::EntityComponentCollection::add((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v87[25] = 1;
    v87[35] = 1;
    if ((v87[30] & 1) == 0)
    {
      v87[30] = 1;
    }

    v87[31] = 1;
    re::AssetManager::assetHandle(v223, "engine:BuiltinRenderGraphResources/SFBSystemShell/rectLightSpill.rematerial", &v239);
    v88 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v68 = v88;
    if (v88)
    {
      v90 = *(v88 + 188);
    }

    else
    {
      v90 = 0.0;
    }

    re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(v13, v80, 1.5, 1.5, v90, v89);
    v137 = *(v80 + 24);
    if (!v137)
    {
      v137 = re::ecs2::EntityComponentCollection::add((v80 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    }

    re::DynamicArray<re::AssetHandle>::add((v137 + 56), &v239);
    v37 = v240;
    v138 = re::ecs2::EntityComponentCollection::add((v240 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v139 = re::ecs2::EntityComponentCollection::add((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v65 = v139;
    v140 = v68 ? *(v68 + 180) : 0.45;
    v142 = *(v138 + 104);
    v141 = *(v138 + 108);
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(v139, 1uLL);
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v65 + 72, 1uLL);
    if (*(v65 + 6))
    {
      break;
    }

    *&v237 = 0;
    v247 = 0u;
    memset(v246, 0, sizeof(v246));
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v244 = 136315906;
    *&v244[4] = "operator[]";
    *&v244[12] = 1024;
    *&v244[14] = 789;
    *&v244[18] = 2048;
    *&v244[20] = 0;
    *&v244[28] = 2048;
    *&v244[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_303:
    *&v237 = 0;
    v11 = &v237;
    v247 = 0u;
    memset(v246, 0, sizeof(v246));
    memset(buf, 0, sizeof(buf));
    v13 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v244 = 136315906;
    *&v244[4] = "operator[]";
    *&v244[12] = 1024;
    *&v244[14] = 789;
    *&v244[18] = 2048;
    *&v244[20] = 0;
    *&v244[28] = 2048;
    *&v244[30] = 0;
    _os_log_send_and_compose_impl();
    v177 = _os_crash_msg();
    __break(1u);
LABEL_304:
    v208 = *re::videoLogObjects(v177);
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
    {
      *v244 = 134218496;
      *&v244[4] = 0x3FF0000000000000;
      *&v244[12] = 2048;
      *&v244[14] = 0x3FF0000000000000;
      *&v244[22] = 2048;
      *&v244[24] = 0;
      _os_log_impl(&dword_1E1C61000, v208, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->addComponentsToScreenEntity:: #SpatialGallery :: Width and Height == {%f,%f}; RoundedCornerRadiusInMeters == %f", v244, 0x20u);
    }

LABEL_239:
    re::ecs2::createPlane(v65, &v241);
    v178 = *(v65 + 24);
    if (!v178)
    {
      v178 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    }

    re::DynamicArray<re::AssetHandle>::add((v178 + 56), &v239);
    v179 = re::ecs2::EntityComponentCollection::get((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v179)
    {
      *(v179 + 108) = 1;
      re::ecs2::Component::markDirty(v179);
    }

    v181 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    memset(v244, 0, 24);
    if (*(v68 + 200) == 1)
    {
      re::ecs2::buildCurvedCollisionShapeAssetHandle(&v237, v223, 0.0, 0.0, 1.0, 1.0);
    }

    else
    {
      v182.n128_u32[0] = 1.0;
      re::ecs2::buildCollisionShapeAssetHandle(v223, v180, v182, 1.0, 0.0);
    }

    *v244 = v237;
    v237 = 0uLL;
    *&v244[16] = v238;
    v238 = 0;
    re::AssetHandle::~AssetHandle(&v237);
    re::AssetHandle::operator=((v181 + 4), v244);
    re::ecs2::Component::markDirty(v181);
    v183 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *(v183 + 25) = 16843009;
    re::ecs2::Component::markDirty(v183);
    v184 = re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::AssetHandle::operator=(v184 + 32, &v239);
    re::ecs2::VideoPlayerComponentHelper::impl::addAttachmentsToVideoComponent(v184, v185);
    re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::ecs2::EntityComponentCollection::add((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    re::AssetHandle::~AssetHandle(v244);
    re::AssetHandle::~AssetHandle(&v239);
LABEL_247:
    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v240);
    if (v240)
    {
      v186 = v240 + 8;
    }

    else
    {
      v186 = 0;
    }

    objc_initWeak(buf, v186);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=((v13 + v37), buf);
    objc_destroyWeak(buf);
    if (v240)
    {
      WeakRetained = v240 + 8;
LABEL_37:

      continue;
    }
  }

  v143 = *(v65 + 8);
  ++*(v143 + 16);
  v144 = *v143;
  *buf[0].i32 = v140 * v142;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v144, "intensity", 1, buf);
  if (!*(v65 + 6))
  {
    goto LABEL_303;
  }

  v145 = *(v65 + 8);
  ++*(v145 + 16);
  v146 = *v145;
  buf[0].i32[0] = v141;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v146, "sampleSpread", 1, buf);
  re::ecs2::Component::markDirty(v65);
  v147 = re::ecs2::EntityComponentCollection::add((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetHandle::operator=(v147 + 32, &v239);
  *(v147 + 331) = 1;
  if (v68)
  {
    *(v147 + 56) = *(v68 + 176);
    *(v147 + 75) = *(v68 + 177);
  }

  re::ecs2::VideoPlayerComponentHelper::impl::addAttachmentsToVideoComponent(v147, v148);
  re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v240);
  if (v240)
  {
    v149 = v240 + 8;
  }

  else
  {
    v149 = 0;
  }

  objc_initWeak(buf, v149);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=((v13 + 14648), buf);
  objc_destroyWeak(buf);
  re::AssetHandle::~AssetHandle(&v239);
  v40 = v223;
  if (v240)
  {
    v39 = v240 + 8;
LABEL_39:
  }

LABEL_40:
  v41 = objc_loadWeakRetained((v13 + 14656));
  if (v41)
  {
LABEL_41:

    goto LABEL_42;
  }

  v91 = re::ecs2::EntityFactory::instance(0);
  re::ecs2::EntityFactory::make(v91, 4uLL, &v240);
  v92 = v240;
  buf[0].i64[0] = 0x74088E8F787C2E0ELL;
  buf[0].i64[1] = "__InternalVPC-DRMEnity__";
  re::ecs2::setEntityAttributes(v240, buf, v93);
  if (buf[0].i8[0])
  {
    if (buf[0].i8[0])
    {
    }
  }

  re::ecs2::EntityComponentCollection::remove((v92 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v92)
  {
    v135 = *re::videoLogObjects(v95);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      buf[0].i16[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->createDRMEntity :: Since drmEntity is nil, can't add components to drmEntity", buf, 2u);
    }

    goto LABEL_42;
  }

  v96 = re::AssetHandle::AssetHandle(&v239, (a7 + 32));
  if (*(&v239 + 1))
  {
    v97 = atomic_load((*(&v239 + 1) + 896));
    v98 = v97 == 2;
  }

  else
  {
    v98 = 0;
  }

  v150 = *re::videoLogObjects(v96);
  v151 = os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT);
  if (v98)
  {
    if (v151)
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v150, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createDRMEntity :: Loading DRM image is fully loaded", buf, 2u);
    }
  }

  else
  {
    if (v151)
    {
      buf[0].i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v150, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createDRMEntity :: Loading DRM image synchronously since not loaded asynchronously up to this point", buf, 2u);
    }

    re::AssetHandle::loadNow(*(&v239 + 1), 0);
  }

  v152 = re::ecs2::EntityComponentCollection::add((v240 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v153 = 0;
  v241 = xmmword_1E3047670;
  v242 = xmmword_1E3047680;
  v243[0] = xmmword_1E30476A0;
  v243[1] = xmmword_1E30474D0;
  do
  {
    buf[v153 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*(&v241 + v153))), xmmword_1E3047680, *(&v241 + v153), 1), xmmword_1E30476A0, *(&v241 + v153), 2), xmmword_1E30474D0, *(&v241 + v153), 3);
    v153 += 16;
  }

  while (v153 != 64);
  v241 = 0u;
  *v244 = xmmword_1E30474D0;
  v237 = 0u;
  re::decomposeScaleRotationTranslation<float>(buf, &v241, v244, &v237);
  v154 = *(&v241 + 1);
  v155 = *v244;
  v156 = *&v244[8];
  v157 = v237;
  *(v152 + 32) = v241;
  *(v152 + 40) = v154;
  *(v152 + 48) = v155;
  *(v152 + 56) = v156;
  *(v152 + 64) = v157;
  v158 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v239);
  if (!v158)
  {
    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v240);
    if (v240)
    {
      v171 = v240 + 8;
    }

    else
    {
      v171 = 0;
    }

    objc_initWeak(buf, v171);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=((v13 + 14656), buf);
    objc_destroyWeak(buf);
LABEL_235:
    re::AssetHandle::~AssetHandle(&v239);
    if (v240)
    {
      v41 = v240 + 8;
      goto LABEL_41;
    }

LABEL_42:
    v42 = *(v11 + 43);
    if (v42)
    {
      v43 = *(v11 + 45);
      v44 = 8 * v42;
      v45 = 8 * v42;
      v46 = v43;
      while (1)
      {
        v32 = *v46;
        if ((*(*v46 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
        {
          v47 = *(v32 + 296);
          if (v47 == "__InternalVPC-Screen__" || !strcmp(v47, "__InternalVPC-Screen__"))
          {
            break;
          }
        }

        ++v46;
        v45 -= 8;
        if (!v45)
        {
          v32 = 0;
          break;
        }
      }

      while (1)
      {
        v34 = *v43;
        if ((*(*v43 + 288) ^ 0x931CC76C0DD179BALL) <= 1)
        {
          v48 = *(v34 + 37);
          if (v48 == "__InternalVPC-ScreenGlowEntity__" || !strcmp(v48, "__InternalVPC-ScreenGlowEntity__"))
          {
            break;
          }
        }

        ++v43;
        v44 -= 8;
        if (!v44)
        {
          v34 = 0;
          break;
        }
      }
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    if (*v14 == 1)
    {
      *&v233.var0 = 0xD0AE8347A834160;
      v233.var1 = "__InternalVPC-CyclopEye__";
      v99 = re::ecs2::Entity::findInHierarchyByName(v11, &v233);
      v100 = v99;
      if (*&v233.var0)
      {
        if (*&v233.var0)
        {
        }
      }

      *&v233.var0 = 0;
      v233.var1 = &str_67;
    }

    else
    {
      v100 = 0;
    }

    if (*(v13 + 9) == 1)
    {
      *&v232.var0 = 0x98636CD79C3E2C92;
      v232.var1 = "__InternalVPC-LeftEye__";
      v101 = re::ecs2::Entity::findInHierarchyByName(v11, &v232);
      v52 = v101;
      if (*&v232.var0)
      {
        if (*&v232.var0)
        {
        }
      }

      *&v232.var0 = 0;
      v232.var1 = &str_67;
      *&v231.var0 = 0x740B54E87609516CLL;
      v231.var1 = "__InternalVPC-RightEye__";
      v102 = v11;
      v103 = re::ecs2::Entity::findInHierarchyByName(v11, &v231);
      v104 = v103;
      if (*&v231.var0)
      {
        if (*&v231.var0)
        {
        }
      }

      *&v231.var0 = 0;
      v231.var1 = &str_67;
    }

    else
    {
      v102 = v11;
      v104 = 0;
      v52 = 0;
    }

    v105 = v102;
    v106 = *(v102 + 43);
    v220 = v104;
    if (v106)
    {
      v218 = v13;
      v107 = v52;
      v108 = v100;
      v109 = v105;
      v110 = *(v105 + 45);
      v111 = 8 * v106;
      while (1)
      {
        v60 = *v110;
        if ((*(*v110 + 288) ^ 0xB71EB2016BE7B4AuLL) <= 1)
        {
          v112 = *(v60 + 296);
          if (v112 == "__InternalVPC-PortalWorld__" || !strcmp(v112, "__InternalVPC-PortalWorld__"))
          {
            break;
          }
        }

        ++v110;
        v111 -= 8;
        if (!v111)
        {
          v60 = 0;
          break;
        }
      }

      v100 = v108;
      v52 = v107;
      v105 = v109;
      v13 = v218;
    }

    else
    {
      v60 = 0;
    }

    *&v230.var0 = 0x74088E8F787C2E0ELL;
    v230.var1 = "__InternalVPC-DRMEnity__";
    v11 = v105;
    v113 = re::ecs2::Entity::findInHierarchyByName(v105, &v230);
    v219 = v113;
    if (*&v230.var0)
    {
      if (*&v230.var0)
      {
      }
    }

    *&v230.var0 = 0;
    v230.var1 = &str_67;
    re::AssetHandle::AssetHandle(v229, v217);
    v222 = v100;
    re::ecs2::VideoPlayerComponentHelper::impl::setVideo(v13, v32, v34, v100, v52, v220, v229);
    re::AssetHandle::~AssetHandle(v229);
    re::FunctionBase<24ul,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::destroyCallable(v13 + 48);
    *(v13 + 48) = &unk_1F5CEF440;
    *(v13 + 56) = v13;
    *(v13 + 64) = v223;
    *(v13 + 80) = v13 + 48;
    v114 = re::ecs2::EntityComponentCollection::get((v11 + 3), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v55 = re::AssetHandle::loadedAsset<re::VideoAsset>(v217);
    if (v55)
    {
      if (v114)
      {
        v115 = v55;
        re::AssetHandle::AssetHandle(v228, v217);
        re::AssetHandle::operator=(v114 + 128, v228);
        re::AssetHandle::~AssetHandle(v228);
        v116 = *(v115 + 208);
        if (v116)
        {
          if (*v116 && (*(v114 + 120) & 1) == 0)
          {
            re::ecs2::VideoPlayerStatusComponent::setVideoReceiverEndpointAvailable(v114, 1);
          }
        }
      }
    }

    v54 = v220;
    v50 = v222;
    if (!v32)
    {
      goto LABEL_83;
    }

    goto LABEL_145;
  }

  v159 = v158;
  if (!*(v158 + 120))
  {
    v160 = *(v158 + 112);
    v161 = *(v240 + 29);
    if (!v161)
    {
      v161 = re::ecs2::EntityComponentCollection::add((v240 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v161[25] = 1;
    v161[35] = 1;
    if ((v161[30] & 1) == 0)
    {
      v161[30] = 1;
    }

    v161[31] = 1;
    re::AssetManager::assetHandle(v40, "engine:transparentUnlit.rematerial", &v237);
    buf[0].i64[1] = 0;
    *(&buf[0].i64[1] + 6) = 0;
    buf[1].i32[2] = 0;
    LODWORD(v246[0]) = 1065353216;
    *(v246 + 8) = xmmword_1E3063230;
    v162 = [v160 width];
    *buf[0].i32 = v162 / [v160 height];
    buf[0].i32[1] = 1065353216;
    buf[1].i8[12] = 0;
    *(&buf[0].i64[1] + 4) = 0;
    buf[1].i8[4] = 0;
    re::ecs2::createPlane(v240, buf[0].i32);
    v163 = *(v240 + 24);
    if (!v163)
    {
      v163 = re::ecs2::EntityComponentCollection::add((v240 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    }

    re::DynamicArray<re::AssetHandle>::add((v163 + 56), &v237);
    v164 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(a6 + 24), *(v240 + 39));
    v236 = 0x34EAA28FD9A1AC37;
    v165 = re::MaterialParameterBlock::setTextureHandle(v164, &v236, (v159 + 8), &v241);
    *&v241 = 0;
    v166 = [objc_msgSend(MEMORY[0x1E6974170] alloc];
    [v166 setRAddressMode_];
    [v166 setSAddressMode_];
    [v166 setTAddressMode_];
    [v166 setMinFilter_];
    [v166 setMagFilter_];
    [v166 setMipFilter_];
    v167 = *(a6 + 208);
    v168 = [v167 newSamplerStateWithDescriptor_];
    v169 = v168;
    v235 = v169;
    re::MaterialParameterBlock::setSampler(v164, "textureBaseColor_sampler", &v235, v244);
    *v244 = 0;
    if (v169)
    {
    }

    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v11 + 40, &v240);
    if (v240)
    {
      v170 = v240 + 8;
    }

    else
    {
      v170 = 0;
    }

    objc_initWeak(&location, v170);
    re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=((v13 + 14656), &location);
    objc_destroyWeak(&location);
    if (v168)
    {
    }

    if (v166)
    {
    }

    re::AssetHandle::~AssetHandle(&v237);
    if (v160)
    {
    }

    goto LABEL_235;
  }

  v215 = std::__throw_bad_variant_access[abi:nn200100]();
  re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(v215, v216);
}