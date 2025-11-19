void re::FixedArray<re::ecs2::ComponentTypeBase const*>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
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
          result = (*(**v3 + 32))(*v3, 768, 0);
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

              result = re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(v3, v13 + 1);
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

void *re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 5)
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

  return *(v3 + 8 * (a2 >> 5)) + 24 * (a2 & 0x1F);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void *re::ecs2::allocInfo_VFXREBindingDescriptor(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E728))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EAC8, "VFXREBindingDescriptor");
    __cxa_guard_release(&qword_1EE19E728);
  }

  return &unk_1EE19EAC8;
}

void re::ecs2::initInfo_VFXREBindingDescriptor(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v39[0] = 0x5E7718CB343B8272;
  v39[1] = "VFXREBindingDescriptor";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE19E730, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E730);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "identifier";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19E8E8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "object";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19E8F0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicString>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "binding";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19E8F8 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::DynamicString>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "userManual";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x6000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19E900 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_int64_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "type";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x8000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19E908 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_int64_t(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "semantic";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x8800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE19E910 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_double(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "min";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x9000000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE19E918 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_double(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "max";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x9800000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE19E920 = v37;
      __cxa_guard_release(&qword_1EE19E730);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE19E8E8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXREBindingDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXREBindingDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXREBindingDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXREBindingDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v38 = v40;
}

void *re::internal::defaultConstruct<re::ecs2::VFXREBindingDescriptor>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 48) = 0u;
  *(a3 + 32) = 0u;
  v5 = re::DynamicString::setCapacity((a3 + 32), 0);
  *(a3 + 80) = 0u;
  *(a3 + 64) = 0u;
  v6 = re::DynamicString::setCapacity((a3 + 64), 0);
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  v7 = (a3 + 96);

  return re::DynamicString::setCapacity(v7, 0);
}

double re::internal::defaultDestruct<re::ecs2::VFXREBindingDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 96));
  re::DynamicString::deinit((a3 + 64));
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::VFXREBindingDescriptor>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  v3 = re::DynamicString::setCapacity((a1 + 32), 0);
  *(a1 + 80) = 0u;
  *(a1 + 64) = 0u;
  v4 = re::DynamicString::setCapacity((a1 + 64), 0);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  v5 = (a1 + 96);

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestructV2<re::ecs2::VFXREBindingDescriptor>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 96));
  re::DynamicString::deinit((a1 + 64));
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::ecs2::allocInfo_VFXREBinding(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E740))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EB58, "VFXREBinding");
    __cxa_guard_release(&qword_1EE19E740);
  }

  return &unk_1EE19EB58;
}

void re::ecs2::initInfo_VFXREBinding(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x3E4EFC2E3FAE7C54;
  v19[1] = "VFXREBinding";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19E748, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E748);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "valueStorage";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000002;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19E828 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "version";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000005;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19E830 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_int(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "descriptorIndex";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 6;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19E838 = v17;
      __cxa_guard_release(&qword_1EE19E748);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E828;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXREBinding>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXREBinding>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXREBinding>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXREBinding>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::ecs2::VFXREBinding>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = -1;
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::VFXREBinding>(uint64_t result)
{
  *result = -1;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

void *re::ecs2::allocInfo_VFXREClientTextureData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E758))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EBE8, "VFXREClientTextureData");
    __cxa_guard_release(&qword_1EE19E758);
  }

  return &unk_1EE19EBE8;
}

void re::ecs2::initInfo_VFXREClientTextureData(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xD1451C1E30445FFELL;
  v19[1] = "VFXREClientTextureData";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19E760, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E760);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "identifier";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19E840 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_AssetHandle(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "texture";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19E848 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_int64_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "version";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19E850 = v17;
      __cxa_guard_release(&qword_1EE19E760);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E840;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXREClientTextureData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXREClientTextureData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXREClientTextureData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXREClientTextureData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::ecs2::VFXREClientTextureData>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  return result;
}

double re::internal::defaultDestruct<re::ecs2::VFXREClientTextureData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 32));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::ecs2::VFXREClientTextureData>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  result = 0.0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  return result;
}

double re::internal::defaultDestructV2<re::ecs2::VFXREClientTextureData>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void re::ecs2::introspect_VFXSimulationState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19E770, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19E778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E778))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19E968, "VFXSimulationState", 1, 1, 1, 1);
      qword_1EE19E968 = &unk_1F5D0C658;
      qword_1EE19E9A8 = &re::ecs2::introspect_VFXSimulationState(BOOL)::enumTable;
      dword_1EE19E978 = 9;
      __cxa_guard_release(&qword_1EE19E778);
    }

    if (_MergedGlobals_143)
    {
      break;
    }

    _MergedGlobals_143 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19E968, a2);
    v33 = 0x1096B9A2A9580404;
    v34 = "VFXSimulationState";
    v37 = 6104748;
    v38 = "char";
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
      v6 = qword_1EE19E9A8;
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
      xmmword_1EE19E988 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE19E770);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Playing";
      qword_1EE19E818 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Paused";
      qword_1EE19E820 = v32;
      __cxa_guard_release(&qword_1EE19E770);
    }
  }
}

void re::IntrospectionInfo<re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19E800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E800))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE19E9B0);
    qword_1EE19E9B0 = &unk_1F5CD3910;
    __cxa_guard_release(&qword_1EE19E800);
  }

  if ((byte_1EE19E71E & 1) == 0)
  {
    v2 = re::introspect_size_t(1, a2);
    v3 = v2;
    v4 = qword_1EE19E750;
    if (!qword_1EE19E750)
    {
      v4 = re::ecs2::allocInfo_VFXREBinding(v2);
      qword_1EE19E750 = v4;
      re::ecs2::initInfo_VFXREBinding(v4, v5);
    }

    if ((byte_1EE19E71E & 1) == 0)
    {
      byte_1EE19E71E = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19E9B0, 0);
      qword_1EE19E9C0 = 0x3000000007;
      dword_1EE19E9C8 = v6;
      word_1EE19E9CC = 0;
      *&xmmword_1EE19E9D0 = 0;
      *(&xmmword_1EE19E9D0 + 1) = 0xFFFFFFFFLL;
      qword_1EE19E9E0 = v3;
      qword_1EE19E9E8 = 0;
      qword_1EE19E9F0 = v4;
      qword_1EE19E9F8 = 0;
      qword_1EE19E9B0 = &unk_1F5CD3910;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE19E9B0, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE19E9D0 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19E808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E808))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE19EA00);
    qword_1EE19EA00 = &unk_1F5CD39B0;
    __cxa_guard_release(&qword_1EE19E808);
  }

  if ((byte_1EE19E71F & 1) == 0)
  {
    v2 = re::introspect_int64_t(1, a2);
    v3 = v2;
    v4 = qword_1EE19E768;
    if (!qword_1EE19E768)
    {
      v4 = re::ecs2::allocInfo_VFXREClientTextureData(v2);
      qword_1EE19E768 = v4;
      re::ecs2::initInfo_VFXREClientTextureData(v4, v5);
    }

    if ((byte_1EE19E71F & 1) == 0)
    {
      byte_1EE19E71F = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19EA00, 0);
      qword_1EE19EA10 = 0x3000000007;
      dword_1EE19EA18 = v6;
      word_1EE19EA1C = 0;
      *&xmmword_1EE19EA20 = 0;
      *(&xmmword_1EE19EA20 + 1) = 0xFFFFFFFFLL;
      qword_1EE19EA30 = v3;
      qword_1EE19EA38 = 0;
      qword_1EE19EA40 = v4;
      qword_1EE19EA48 = 0;
      qword_1EE19EA00 = &unk_1F5CD39B0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE19EA00, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE19EA20 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_VFXSceneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E788))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EC78, "VFXSceneComponent");
    __cxa_guard_release(&qword_1EE19E788);
  }

  return &unk_1EE19EC78;
}

void re::ecs2::initInfo_VFXSceneComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v62[0] = 0x24F9B15154932732;
  v62[1] = "VFXSceneComponent";
  if (v62[0])
  {
    if (v62[0])
    {
    }
  }

  *(this + 2) = v63;
  if ((atomic_load_explicit(&qword_1EE19E780, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E780);
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
      qword_1EE19EA50 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_bindingTable";
      *(v11 + 16) = &qword_1EE19E9B0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x9800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE19EA58 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "simulationRate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1F800000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE19EA60 = v15;
      v16 = re::introspectionAllocator(v15);
      re::ecs2::introspect_VFXSimulationState(v16, v17);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "simulationState";
      *(v18 + 16) = &qword_1EE19E968;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x20000000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE19EA68 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_BOOL(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "explicitSimulationTime";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x13800000006;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE19EA70 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_float(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "totalSimulationTime";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x13C00000007;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE19EA78 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_float(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "lastTickTotalSimulationTime";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x14000000008;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE19EA80 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_float(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "sceneScale";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x1FC00000009;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE19EA88 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_uint32_t(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "performResetVersion";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x1440000000ALL;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE19EA90 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::introspect_BOOL(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "m_isInitialized";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0x12D0000000BLL;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE19EA98 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_BOOL(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "m_hasBindingToFetch";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0x12C0000000DLL;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE19EAA0 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_uint64_t(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "m_collidingPortalEntityId";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0x1500000000ELL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE19EAA8 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = re::introspect_Vector2F(1);
      v53 = (*(*v51 + 32))(v51, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "m_collidingPortalPadding";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x1580000000FLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE19EAB0 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::introspect_uint64_t(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "m_runningEffectId";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x14800000010;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE19EAB8 = v57;
      v58 = re::introspectionAllocator(v57);
      re::IntrospectionInfo<re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>>::get(v58, v59);
      v60 = (*(*v58 + 32))(v58, 72, 8);
      *v60 = 1;
      *(v60 + 8) = "clientTextures";
      *(v60 + 16) = &qword_1EE19EA00;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0x20800000011;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      qword_1EE19EAC0 = v60;
      __cxa_guard_release(&qword_1EE19E780);
    }
  }

  *(this + 2) = 0x24000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE19EA50;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSceneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSceneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSceneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSceneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217VFXSceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v61 = v63;
}

void *re::ecs2::allocInfo_VFXSceneReadbackComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E798))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19ED08, "VFXSceneReadbackComponent");
    __cxa_guard_release(&qword_1EE19E798);
  }

  return &unk_1EE19ED08;
}

void re::ecs2::initInfo_VFXSceneReadbackComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v17[0] = 0xB776A00B8A58A138;
  v17[1] = "VFXSceneReadbackComponent";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE19E790, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E790);
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
      qword_1EE19E858 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "bindings";
      *(v11 + 16) = &qword_1EE19E9B0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE19E860 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "hasBeenSyncedBack";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x5000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE19E868 = v15;
      __cxa_guard_release(&qword_1EE19E790);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E858;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225VFXSceneReadbackComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v16 = v18;
}

double re::internal::defaultConstruct<re::ecs2::VFXSceneReadbackComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD3B70;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  *(v3 + 80) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::VFXSceneReadbackComponent>(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3B70;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::VFXREBindingDescriptor>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE19E810, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19E810);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19E928);
      qword_1EE19E928 = &unk_1F5CD3A50;
      __cxa_guard_release(&qword_1EE19E810);
    }
  }

  if ((byte_1EE19E720 & 1) == 0)
  {
    v1 = qword_1EE19E738;
    if (qword_1EE19E738 || (v1 = re::ecs2::allocInfo_VFXREBindingDescriptor(a1), qword_1EE19E738 = v1, re::ecs2::initInfo_VFXREBindingDescriptor(v1, v2), (byte_1EE19E720 & 1) == 0))
    {
      byte_1EE19E720 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19E928, 0);
      qword_1EE19E938 = 0x2800000003;
      dword_1EE19E940 = v3;
      word_1EE19E944 = 0;
      *&xmmword_1EE19E948 = 0;
      *(&xmmword_1EE19E948 + 1) = 0xFFFFFFFFLL;
      qword_1EE19E958 = v1;
      qword_1EE19E960 = 0;
      qword_1EE19E928 = &unk_1F5CD3A50;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE19E928, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE19E948 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_VFXSceneMetadataComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19ED98, "VFXSceneMetadataComponent");
    __cxa_guard_release(&qword_1EE19E7A8);
  }

  return &unk_1EE19ED98;
}

void re::ecs2::initInfo_VFXSceneMetadataComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x5FF980AED9C40254;
  v16[1] = "VFXSceneMetadataComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE19E7A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19E7A0);
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
      qword_1EE19E870 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::VFXREBindingDescriptor>>::get(v9);
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "m_bindingDescriptors";
      *(v10 + 16) = &qword_1EE19E928;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x2000000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE19E878 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_AssetHandle(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_effect";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE19E880 = v14;
      __cxa_guard_release(&qword_1EE19E7A0);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E870;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225VFXSceneMetadataComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ecs2::VFXSceneMetadataComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD3AE8;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::VFXSceneMetadataComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3AE8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  return result;
}

void *re::ecs2::allocInfo_VFXSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EE28, "VFXSystem");
    __cxa_guard_release(&qword_1EE19E7B0);
  }

  return &unk_1EE19EE28;
}

void re::ecs2::initInfo_VFXSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x8911F46A97EELL;
  v6[1] = "VFXSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1A000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VFXSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VFXSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VFXSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::VFXSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CD3720;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::VFXSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 392));

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::VFXSystem>(_OWORD *a1)
{
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
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
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CD3720;
  *(v1 + 296) = 0;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::VFXSystem>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 392));

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::VFXSystem::onComponentUpdated(re::ecs2::VFXSystem *this, re::NetworkSystem *a2, re::ecs2::Component *a3)
{
  v4 = (*(*a3 + 40))(a3, a2);
  v5 = (*(*v4 + 48))(v4);
  v6 = &unk_1EE187000;
  while (1)
  {
    {
      v13 = v5;
      v6 = &unk_1EE187000;
      v11 = v10;
      v5 = v13;
      if (v11)
      {
        re::introspect<re::ecs2::VFXSceneComponent>(BOOL)::info = re::internal::getOrCreateInfo("VFXSceneComponent", re::ecs2::allocInfo_VFXSceneComponent, re::ecs2::initInfo_VFXSceneComponent, &re::internal::introspectionInfoStorage<re::ecs2::VFXSceneComponent>, 0);
        v6 = &unk_1EE187000;
        v5 = v13;
      }
    }

    if (v5 == v6[129])
    {
      break;
    }

    v7 = *(v5 + 56);
    if (v7)
    {
      for (i = *(v5 + 64); ; ++i)
      {
        v9 = *i;
        if (**i == 1 && v9[10] == 3)
        {
          break;
        }

        if (!--v7)
        {
          return 0;
        }
      }

      v5 = *(v9 + 2);
      if (v5)
      {
        continue;
      }
    }

    return 0;
  }

  re::ecs2::VFXSceneComponent::invalidateIfNeeded(a3);
  return 0;
}

void re::ecs2::VFXSceneComponent::invalidateIfNeeded(re::ecs2::VFXSceneComponent *this)
{
  if (*(this + 40))
  {
    return;
  }

  v2 = *(this + 12);
  if (!v2)
  {
    *(this + 40) = 1;
LABEL_11:
    v9 = *(this + 4);
    if (v9)
    {
      os_unfair_lock_lock((v9 + 40));
      *(v9 + 24) = 1;
      os_unfair_lock_unlock((v9 + 40));
      v10 = *(this + 4);
      if (v10)
      {

        *(this + 4) = 0;
      }
    }

    return;
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v4 = *(this + 38);
  }

  v5 = *(v4 + 80);
  if (v5)
  {
    v6 = *(v5 + 792);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v8 = v6 ^ (v7 >> 31) ^ v7;
  *(this + 40) = v2 != v8;
  if (v2 != v8)
  {
    goto LABEL_11;
  }
}

void re::ecs2::VFXSystem::willAddSystemToECSService(re::ecs2::VFXSystem *this)
{
  v22 = *MEMORY[0x1E69E9840];
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 38) = re::ServiceLocator::serviceOrNull<re::ecs2::ClippingService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 39) = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 40) = re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 41) = re::ServiceLocator::serviceOrNull<re::ecs2::EnvironmentLightingService>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 42) = re::ServiceLocator::serviceOrNull<re::ecs2::ImageBasedLightService>(v6);
  v7 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 43) = re::ServiceLocator::serviceOrNull<re::ecs2::VisualProxyScopeService>(v7);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 44) = re::ServiceLocator::serviceOrNull<re::ecs2::DepthMitigationStateService>(v8);
  v9 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 45) = re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(v9);
  v10 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 46) = re::ServiceLocator::serviceOrNull<re::ecs2::VisualDepthCustomMaterialService>(v10);
  v11 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 47) = re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(v11);
  v12 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 48) = re::ServiceLocator::serviceOrNull<re::SimulationTimer>(v12);
  (*(**(this + 30) + 8))(&v19);
  v13 = *(this + 392);
  *(this + 392) = v19;
  v19 = v13;
  v14 = *(this + 51);
  *(this + 51) = v20;
  v20 = v14;
  re::AssetHandle::~AssetHandle(&v19);
  v15 = *(this + 50);
  if (!v15 || (v16 = atomic_load((v15 + 896)), v16 != 2))
  {
    re::AssetHandle::loadAsync((this + 392));
  }

  v17 = (*(**(this + 5) + 32))(*(this + 5));
  v18 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v17);
  if (v18)
  {
    if ((*(this + 296) & 1) == 0)
    {
      *&v19 = this;
      *(&v19 + 1) = re::ecs2::VFXSystem::onComponentUpdated;
      v20 = 0;
      v21 = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::VFXSystem>(re::ecs2::VFXSystem *,REEventHandlerResult (re::ecs2::VFXSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
      re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v18 + 88, &v19);
      *(this + 296) = 1;
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ClippingService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::ClippingService>(BOOL)::info = re::ecs2::introspect_ClippingService(0);
  }

  v2 = re::introspect<re::ecs2::ClippingService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::OpacityService>(BOOL)::info = re::ecs2::introspect_OpacityService(0);
  }

  v2 = re::introspect<re::ecs2::OpacityService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::OcclusionService>(BOOL)::info = re::ecs2::introspect_OcclusionService(0);
  }

  v2 = re::introspect<re::ecs2::OcclusionService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::EnvironmentLightingService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::EnvironmentLightingService>(BOOL)::info = re::ecs2::introspect_EnvironmentLightingService(0);
  }

  v2 = re::introspect<re::ecs2::EnvironmentLightingService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ImageBasedLightService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::ImageBasedLightService>(BOOL)::info = re::ecs2::introspect_ImageBasedLightService(0);
  }

  v2 = re::introspect<re::ecs2::ImageBasedLightService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::VisualProxyScopeService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::VisualProxyScopeService>(BOOL)::info = re::ecs2::introspect_VisualProxyScopeService(0);
  }

  v2 = re::introspect<re::ecs2::VisualProxyScopeService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::DepthMitigationStateService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::DepthMitigationStateService>(BOOL)::info = re::ecs2::introspect_DepthMitigationStateService(0);
  }

  v2 = re::introspect<re::ecs2::DepthMitigationStateService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::RenderPassGroupService>(BOOL)::info = re::ecs2::introspect_RenderPassGroupService(0);
  }

  v2 = re::introspect<re::ecs2::RenderPassGroupService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::VisualDepthCustomMaterialService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::VisualDepthCustomMaterialService>(BOOL)::info = re::ecs2::introspect_VisualDepthCustomMaterialService(0);
  }

  v2 = re::introspect<re::ecs2::VisualDepthCustomMaterialService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::LightService>(BOOL)::info = re::ecs2::introspect_LightService(0);
  }

  v2 = re::introspect<re::ecs2::LightService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SimulationTimer>(uint64_t a1)
{
  {
    re::introspect<re::SimulationTimer>(BOOL)::info = re::introspect_SimulationTimer(0);
  }

  v2 = re::introspect<re::SimulationTimer>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::NetworkSystem>(uint64_t a1)
{
  {
    re::introspect<re::NetworkSystem>(BOOL)::info = re::introspect_NetworkSystem(0);
  }

  v2 = re::introspect<re::NetworkSystem>(BOOL)::info;
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

double re::ecs2::VFXSystem::willRemoveSystemFromECSService(re::ecs2::VFXSystem *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 19) = 0u;
  v2 = *(this + 392);
  v3 = *(this + 51);
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *v11 = v2;
  *&v11[16] = v3;
  re::AssetHandle::~AssetHandle(v11);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v4);
  if (v5)
  {
    if (*(this + 296) == 1)
    {
      v6 = v5;
      if (*(v5 + 46))
      {
        v7 = 0;
        do
        {
          v8 = (*(v6 + 48) + 32 * v7);
          if (*v8 == this)
          {
            if (!*(v6 + 108))
            {
              re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(v6 + 44, v7);
              continue;
            }

            v11[0] = 0;
            v9 = *v8;
            v12 = *(v8 + 1);
            *&v11[8] = v9;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v6 + 392), v11);
          }

          ++v7;
        }

        while (v7 < *(v6 + 46));
      }
    }
  }

  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void re::ecs2::VFXSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 224) || ((*(**(a1 + 40) + 216))(*(a1 + 40)) & 1) != 0 || (*(*(a1 + 224) + 432) & 0x10) == 0)
  {
    return;
  }

  v5 = re::AssetHandle::loadedAsset<re::TextureAsset>((a1 + 392));
  if (!v5)
  {
    re::AssetHandle::loadAsync((a1 + 392));
    return;
  }

  v6 = v5;
  v7 = *(*(a1 + 232) + 24);
  if (!re::MaterialManager::findTextureTableByName(v7, "VFXTextureTable"))
  {
    TextureTableForName = re::MaterialManager::createTextureTableForName(v7, "VFXTextureTable");
    v16 = 0xC10C601B47401E3;
    if (*(v6 + 120))
    {
LABEL_20:
      v15 = std::__throw_bad_variant_access[abi:nn200100]();
      re::ecs2::VFXSystem::updateSceneForRenderInternal(v15);
      return;
    }

    re::TextureTable::setTexture(TextureTableForName, &v16, (v6 + 112));
  }

  v10 = *(a1 + 232);
  if (!v10)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "update", 787);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(a3 + 200);
  if (v11)
  {
    v12 = *(a3 + 216);
    v13 = 8 * v11;
    do
    {
      v12 += 8;
      re::ecs2::VFXSystem::updateSceneForRenderInternal(a1);
      v13 -= 8;
    }

    while (v13);
    v10 = *(a1 + 232);
  }

  v14 = *(v10 + 72);
  if (v14)
  {

    re::VFXManager::doRemoveEffects(v14);
  }
}

uint64_t re::ecs2::VFXSystem::updateSceneForRenderInternal(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v643 = *MEMORY[0x1E69E9840];
  if (!v3)
  {
    return result;
  }

  v5 = v4;
  v6 = v3;
  v435 = result;
  v7 = *(result + 272);
  if (v7)
  {
    v1 = (*(*v7 + 16))(v7);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v454 = 0;
  v452 = 0;
  v451[0] = 0;
  v451[1] = 0;
  v453 = 0;
  v9 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v9)
  {
    v10 = *(v9 + 400);
    v11 = *(v9 + 384);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  isRuntimeReady = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (isRuntimeReady)
  {
    v13 = *(isRuntimeReady + 400);
    v14 = *(isRuntimeReady + 384);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v427 = v6;
  v15 = v14 + v11;
  if (v14 + v11)
  {
    isRuntimeReady = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v451, v15);
  }

  if (v11)
  {
    v16 = 8 * v11;
    do
    {
      v17 = *v10;
      if (*v10)
      {
        LOBYTE(__src[0]) = v8;
        if (!v8 || (__src[1] = v1, isRuntimeReady = re::ecs2::RenderOptions::forEntity(&__src[1], *(v17 + 16)), *isRuntimeReady == 1))
        {
          __dst[0].i64[0] = v17;
          __dst[0].i64[1] = v17;
          isRuntimeReady = re::ecs2::VFXSystem::isRuntimeReady(v435, v17, v17);
          if (isRuntimeReady)
          {
            re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v451, __dst);
          }
        }
      }

      ++v10;
      v16 -= 8;
    }

    while (v16);
  }

  if (v14)
  {
    v18 = 8 * v14;
    while (1)
    {
      v19 = *v13;
      if (*v13)
      {
        v20 = *(v19 + 32);
        if (v20)
        {
          __dst[0].i8[0] = v8;
          if (!v8)
          {
            goto LABEL_28;
          }

          __dst[0].i64[1] = v1;
          isRuntimeReady = re::ecs2::RenderOptions::forEntity(&__dst[0].u32[2], *(v19 + 16));
          if (*isRuntimeReady == 1)
          {
            break;
          }
        }
      }

LABEL_30:
      ++v13;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    v20 = *(v19 + 32);
LABEL_28:
    v469.n128_u64[0] = v19;
    v469.n128_u64[1] = v20;
    isRuntimeReady = re::ecs2::VFXSystem::isRuntimeReady(v435, v19, v20);
    if (isRuntimeReady)
    {
      re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v451, &v469);
    }

    goto LABEL_30;
  }

LABEL_31:
  v21 = v452;
  if (!v452)
  {
    goto LABEL_445;
  }

  if (!*(v435 + 232))
  {
LABEL_450:
    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneForRenderInternal", 1009);
    _os_crash();
    __break(1u);
LABEL_451:
    v525[0].i64[0] = 0;
    memset(__dst, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v641 = 136315906;
    *&v641[4] = "operator[]";
    *&v641[12] = 1024;
    *&v641[14] = 866;
    *&v641[18] = 2048;
    *&v641[20] = 0;
    *&v641[28] = 2048;
    *&v641[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isRuntimeReady);
  if (isStatisticCollectionEnabled)
  {
    v415 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v415 + 152))
    {
      v410 = mach_absolute_time();
    }
  }

  else
  {
    v415 = 0;
  }

  re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v23 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v450, 3103, v435);
  v24 = re::ProfilerConfig::isStatisticCollectionEnabled(v23);
  if (v24)
  {
    v25 = re::profilerThreadContext(v24);
    v26 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v27 = v26 ? *(v26 + 384) : 0;
    v28 = *(v25 + 152);
    if (v28)
    {
      v29 = v28[1200].u64[0];
      if (v29 >= v27)
      {
        v29 = v27;
      }

      v28[1200].i64[0] = v29;
      v30 = v28[1200].u64[1];
      if (v30 <= v27)
      {
        v30 = v27;
      }

      v28[1200].i64[1] = v30;
      v31 = vdupq_n_s64(1uLL);
      v31.i64[0] = v27;
      v28[1201] = vaddq_s64(v28[1201], v31);
      *(v25 + 184) = 0;
    }
  }

  v32 = *(*(v435 + 232) + 112);
  if (v32)
  {
    v33 = re::RenderFrameBox::get((v32 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v435 + 384);
  if (v34)
  {
    (*(*v34 + 56))(v34);
  }

  else
  {
    v35 = v5;
  }

  v417 = v35;
  v36 = *(v435 + 232);
  v37 = *(v36 + 9);
  if (!v37)
  {
    goto LABEL_437;
  }

  v38 = *(v33 + 384) & 0xFFFFFFFFFFFFFFFLL;
  if (*(v37 + 216) != v38)
  {
    v39 = *(v33 + 400) & 0xFFFFFFFFFFFFFFFLL;
    if (*(v37 + 224) == v39)
    {
      v35 = v35 + *(v37 + 208);
    }

    *(v37 + 208) = v35;
    *(v37 + 216) = v38;
    *(v37 + 224) = v39;
  }

  v416 = v33;
  v40 = re::RenderManager::perFrameAllocator(v36);
  v449 = (*(**(v435 + 256) + 24))(*(v435 + 256));
  v41 = (*(*v449 + 16))(v449);
  if (*(v41 + 124))
  {
    v42 = *(v41 + 124);
  }

  else
  {
    v42 = *(v41 + 16);
  }

  v441 = 0u;
  v442 = 0u;
  v443 = 0;
  v444 = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v441, v40, v42 + 1);
  v447 = 0;
  v445 = 0u;
  v446 = 0u;
  v448 = 0x7FFFFFFFLL;
  memset(__src, 0, 36);
  *(&__src[4] + 4) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(__src, v40, v42 + 1);
  v44 = v454;
  v45 = &v454[2 * v21];
  v46 = v454;
  do
  {
    (*(*v449 + 8))(__dst);
    if (__dst[0].i8[0])
    {
      v47 = __dst[0].u64[1];
    }

    else
    {
      v47 = 0;
    }

    v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v47 ^ (v47 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v47 ^ (v47 >> 30))) >> 27));
    v49 = v48 ^ (v48 >> 31);
    if (!__src[0])
    {
      LODWORD(v50) = 0;
LABEL_71:
      v52 = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(__src, v50, v49);
      *(v52 + 16) = 0;
      v53 = (v52 + 16);
      *(v53 - 1) = v47;
      ++LODWORD(__src[5]);
      goto LABEL_73;
    }

    v50 = v49 % LODWORD(__src[3]);
    v51 = *(__src[1] + v50);
    if (v51 == 0x7FFFFFFF)
    {
      goto LABEL_71;
    }

    while (*(__src[2] + 4 * v51 + 1) != v47)
    {
      v51 = *(__src[2] + 8 * v51) & 0x7FFFFFFF;
      if (v51 == 0x7FFFFFFF)
      {
        goto LABEL_71;
      }
    }

    v53 = __src[2] + 32 * v51 + 16;
LABEL_73:
    ++*v53;
    v44 += 2;
  }

  while (v44 != v45);
  v54 = __src[4];
  if (LODWORD(__src[4]))
  {
    v55 = 0;
    v56 = __src[2];
    while (1)
    {
      v57 = *v56;
      v56 += 8;
      if (v57 < 0)
      {
        break;
      }

      if (LODWORD(__src[4]) == ++v55)
      {
        LODWORD(v55) = __src[4];
        break;
      }
    }
  }

  else
  {
    LODWORD(v55) = 0;
  }

  if (v55 != LODWORD(__src[4]))
  {
    v58 = __src[2];
    do
    {
      v59 = &v58[32 * v55];
      v60 = *(v59 + 4);
      __dst[1].i64[0] = 0;
      __dst[1].i32[2] = 0;
      __dst[2].i64[0] = 0;
      __dst[0] = v40;
      re::DynamicArray<re::VFXScene>::setCapacity(__dst, v60);
      ++__dst[1].i32[2];
      v61 = re::DynamicArray<re::VFXScene>::deinit(__dst);
      memset(__dst, 0, 36);
      *(__dst[2].i64 + 4) = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v445, v59 + 1, __dst);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(__dst);
      if (LODWORD(__src[4]) <= (v55 + 1))
      {
        v62 = v55 + 1;
      }

      else
      {
        v62 = __src[4];
      }

      v58 = __src[2];
      while (v62 - 1 != v55)
      {
        LODWORD(v55) = v55 + 1;
        if ((*(__src[2] + 8 * v55) & 0x80000000) != 0)
        {
          goto LABEL_91;
        }
      }

      LODWORD(v55) = v62;
LABEL_91:
      ;
    }

    while (v55 != v54);
    v46 = v454;
    v21 = v452;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(__src);
  if (v21)
  {
    v438 = &v46[2 * v21];
    do
    {
      v440 = v46;
      v63 = v46[1];
      v64 = *(v63 + 448);
      if (v64)
      {
        v65 = *(v63 + 48);
        v66 = [v65 effect];
        if (v66)
        {
          v67 = [v65 scene];
          __src[0] = MEMORY[0x1E69E9820];
          __src[1] = 3221225472;
          __src[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl22writeBindingsToRuntimeERS1__block_invoke;
          __src[3] = &unk_1E871C070;
          __src[5] = v64;
          *&v574 = v63;
          __src[4] = v66;
          [v67 performTransaction:__src];
        }
      }

      else
      {
        v65 = [*(v63 + 64) scene];
        __dst[0].i64[0] = MEMORY[0x1E69E9820];
        __dst[0].i64[1] = 3221225472;
        __dst[1].i64[0] = ___ZN2re4ecs217VFXSceneComponent22writeBindingsToRuntimeEv_block_invoke;
        __dst[1].i64[1] = &__block_descriptor_40_e5_v8__0l;
        __dst[2].i64[0] = v63;
        [v65 performTransaction:__dst];
      }

      v68 = *(v63 + 16);
      if (v68 && *(v63 + 300) == 1)
      {
        v69 = *(v63 + 448);
        if (v69)
        {
          v70 = *(v63 + 48);
          v71 = [v70 effect];
          if (v71)
          {
            v72 = *(v63 + 16);
            if (v72)
            {
              v73 = re::ecs2::EntityComponentCollection::get((v72 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v73)
              {
                v74 = v73;
                v75 = [v70 scene];
                __src[0] = MEMORY[0x1E69E9820];
                __src[1] = 3221225472;
                __src[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl23readBindingsFromRuntimeERS1__block_invoke;
                __src[3] = &unk_1E871C150;
                __src[5] = v69;
                *&v574 = v63;
                *(&v574 + 1) = v74;
                __src[4] = v71;
                [v75 performTransaction:__src];

                *(v74 + 80) = 0;
                v76 = *(*(v63 + 16) + 216);
                if (v76)
                {
                  re::ecs2::NetworkComponent::markDirty(v76, v74);
                }
              }
            }
          }
        }

        else
        {
          v77 = re::ecs2::EntityComponentCollection::get((v68 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v77)
          {
            v78 = v77;
            v79 = *(v63 + 16);
            if (v79)
            {
              v80 = re::ecs2::EntityComponentCollection::getOrAdd((v79 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            }

            else
            {
              v80 = *(v63 + 304);
            }

            v81 = *(v63 + 64);
            v82 = [v81 presentationScene];
            __dst[0].i64[0] = MEMORY[0x1E69E9820];
            __dst[0].i64[1] = 3221225472;
            __dst[1].i64[0] = ___ZN2re4ecs217VFXSceneComponent23readBindingsFromRuntimeEv_block_invoke;
            __dst[1].i64[1] = &__block_descriptor_56_e5_v8__0l;
            __dst[2].i64[0] = v63;
            __dst[2].i64[1] = v78;
            __dst[3].i64[0] = v80;
            [v82 performTransaction:__dst];

            *(v78 + 80) = 0;
            v83 = *(*(v63 + 16) + 216);
            if (v83)
            {
              re::ecs2::NetworkComponent::markDirty(v83, v78);
            }
          }
        }
      }

      if (!*(v63 + 448))
      {
        v84 = *(v63 + 552);
        if (v84)
        {
          v85 = 0;
          v86 = *(v63 + 536);
          do
          {
            v87 = *v86;
            v86 += 22;
            if (v87 < 0)
            {
              goto LABEL_153;
            }

            ++v85;
          }

          while (v84 != v85);
          LODWORD(v85) = *(v63 + 552);
        }

        else
        {
          LODWORD(v85) = 0;
        }

        while (1)
        {
LABEL_153:
          if (v85 == v84)
          {
            goto LABEL_154;
          }

          v88 = *(v63 + 536) + 88 * v85;
          v91 = *(v88 + 8);
          v90 = v88 + 8;
          v89 = v91;
          v92 = *(v90 + 64);
          v93 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v91 ^ (v91 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v91 ^ (v91 >> 30))) >> 27));
          v94 = v93 ^ (v93 >> 31);
          re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(__src, v63 + 456, v91, v94);
          if (HIDWORD(__src[1]) != 0x7FFFFFFF)
          {
            break;
          }

          memset(__src, 0, 24);
          re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(__src, v63 + 456, v89, v94);
          if (HIDWORD(__src[1]) == 0x7FFFFFFF)
          {
            v95 = re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::allocEntry(v63 + 456, __src[1], __src[0]);
            v96 = *v90;
            *(v95 + 16) = 0u;
            v97 = v95 + 16;
            *(v95 + 8) = v96;
            *(v95 + 32) = 0u;
            ++*(v63 + 496);
          }

          else
          {
            v97 = *(v63 + 472) + 56 * HIDWORD(__src[1]) + 16;
          }

          *v97 = -1;
          if (*(v90 + 16))
          {
            v98 = *(v90 + 24);
          }

          else
          {
            v98 = v90 + 17;
          }

          v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v98];
          re::ecs2::VFXSceneComponent::findClientTextureAssetNode(v63, v99, __src);
          v100 = __src[0];

          if (v100)
          {
            re::ObjCObject::operator=((v97 + 16), v100);

LABEL_134:
            v101 = *(v90 + 48);
            if (v101)
            {
              v102 = atomic_load((v101 + 896));
              if (v102 != 1)
              {
                v103 = *(v90 + 48);
                if (v103 && (v104 = atomic_load((v103 + 896)), v104 == 2))
                {
                  v105 = re::AssetHandle::loadedAsset<re::TextureAsset>((v90 + 40));
                  if (v105)
                  {
                    re::TextureHandle::metalTexture((v105 + 8), __src);
                    v106 = __src[0];
                    v107 = __src[0];
                    v108 = v106;
                    v109 = v108;
                    if (v108)
                    {
                    }

                    if (*(v97 + 24) != v109)
                    {
                      objc_storeStrong((v97 + 24), v106);
                      v110 = [*(v97 + 16) asset];
                      [v110 setTexture:v109];
                    }

                    *v97 = v92;
                  }
                }

                else
                {
                  re::AssetHandle::loadAsync((v90 + 40));
                }
              }
            }

            else if (*v97 != v92)
            {
              *v97 = v92;
              v111 = *(v97 + 24);
              *(v97 + 24) = 0;

              v112 = [*(v97 + 16) asset];
              [v112 setTexture:0];
            }
          }

          v113 = *(v63 + 552);
          if (v113 <= v85 + 1)
          {
            v113 = v85 + 1;
          }

          while (v113 - 1 != v85)
          {
            LODWORD(v85) = v85 + 1;
            if ((*(*(v63 + 536) + 88 * v85) & 0x80000000) != 0)
            {
              goto LABEL_153;
            }
          }

          LODWORD(v85) = v113;
        }

        v97 = *(v63 + 472) + 56 * HIDWORD(__src[1]) + 16;
        goto LABEL_134;
      }

LABEL_154:
      v46 = v440 + 2;
    }

    while (v440 + 2 != v438);
    v114 = v435;
    if (v452)
    {
      v115 = v454;
      v116 = &v454[2 * v452];
      v117.i64[0] = 0x7F0000007FLL;
      v117.i64[1] = 0x7F0000007FLL;
      v421 = vnegq_f32(v117);
      __asm { FMOV            V8.2S, #1.0 }

      v122 = -1.5708;
      v123 = vrsqrte_f32(1065353216);
      v124 = vmul_f32(v123, vrsqrts_f32(1065353216, vmul_f32(v123, v123)));
      LODWORD(v400) = vmul_f32(v124, vrsqrts_f32(1065353216, vmul_f32(v124, v124))).u32[0];
      v125 = vmulq_n_f32(xmmword_1E3047670, v400);
      LODWORD(v402) = vmulq_f32(v125, v125).u32[0];
      v126 = vmuls_lane_f32(v125.f32[1], *v125.f32, 1);
      v127 = vmuls_lane_f32(v125.f32[2], v125, 2);
      v409 = v125;
      v401 = vmuls_lane_f32(v125.f32[1], v125, 2);
      v420 = v116;
      while (2)
      {
        v128 = *v115;
        v129 = v115[1];
        v430 = re::RenderManager::perFrameAllocator(*(v114 + 232));
        v521 = 0;
        v130 = *(v114 + 272);
        if (v130)
        {
          v131 = (*(*v130 + 16))(v130);
          v521 = 1;
          v522 = v131;
        }

        v132 = *(v128 + 16);
        v520 = v132;
        v133 = *(v114 + 288);
        v512 = xmmword_1E3047670;
        v513 = xmmword_1E3047680;
        v514 = xmmword_1E30476A0;
        v515 = xmmword_1E30474D0;
        v516 = xmmword_1E3047670;
        v517 = xmmword_1E3047680;
        v518 = xmmword_1E30476A0;
        v519 = xmmword_1E30474D0;
        re::TransformService::worldMatrixForRendering(v133, v132, 1, &v516);
        v134 = re::ecs2::TransformComponent::rootAnchorComponent(v132);
        if (v134)
        {
          v135 = v134[4];
          v512 = v134[3];
          v513 = v135;
          v136 = v134[6];
          v514 = v134[5];
          v515 = v136;
        }

        (*(*v449 + 8))(__src);
        if (LOBYTE(__src[0]))
        {
          v137 = __src[1];
        }

        else
        {
          v137 = 0;
        }

        v138 = HIDWORD(__src[1]);
        if (HIDWORD(__src[1]) == 0x7FFFFFFF)
        {
          goto LABEL_385;
        }

        v139 = v442;
        v574 = 0u;
        memset(__src, 0, sizeof(__src));
        v575 = 0u;
        v576 = v421;
        *&v140 = 0x7F0000007FLL;
        *(&v140 + 1) = 0x7F0000007FLL;
        v577 = v140;
        v593[80] = 0;
        v593[96] = 0;
        v594 = 0u;
        v578 = 0u;
        v579 = 0u;
        v580 = 0u;
        v581 = 0u;
        v582 = 0u;
        v583 = 0u;
        v584 = 0u;
        v585 = 0u;
        v586 = 0u;
        v587 = 0u;
        v588 = 0;
        memset(v593, 0, 76);
        v591 = 0u;
        v592 = 0u;
        v589 = 0u;
        v590 = 0u;
        if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
        {
          dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
        }

        v595 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
        v141 = v139 + (v138 << 6);
        v596 = _D8;
        v597 = 1065353216;
        v598 = 0u;
        memset(v599, 0, sizeof(v599));
        v600 = 0xFFFFFFFF00000001;
        v601 = 0;
        v602 = 0;
        v603 = 0;
        v604 = 0;
        v605 = 65537;
        v606 = 1;
        v607 = xmmword_1E3060D60;
        v608 = 16788070;
        v610 = 0;
        v609 = 0;
        v611 = 0;
        v612 = 0;
        v613 = 0;
        v614 = 0u;
        v615 = 0u;
        v616 = 0u;
        v617 = 0u;
        v618 = 0u;
        v619 = 0u;
        v620 = 0u;
        memset(v621, 0, sizeof(v621));
        v623 = 0;
        v624 = 0;
        v622 = 0;
        v625 = 1;
        v626 = 0;
        v627 = 0;
        v628 = 0;
        v629 = 1;
        re::DynamicArray<re::VFXScene>::add(v141 + 16, __src);
        if (v623)
        {
          v142 = v625;
          if ((v625 & 1) == 0)
          {
            (*(*v623 + 40))();
            v142 = v625;
          }

          v623 = 0;
          v624 = 0;
          v625 = (v142 | 1) + 2;
        }

        v437 = v137;
        v426 = v115;

        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v593[8]);
        v143 = *(v141 + 48) + (*(v141 + 32) << 10);
        v144 = v512;
        v145 = v513;
        v146 = v515;
        *(v143 - 160) = v514;
        *(v143 - 144) = v146;
        *(v143 - 192) = v144;
        *(v143 - 176) = v145;
        v147 = v516;
        v148 = v517;
        v149 = v519;
        *(v143 - 224) = v518;
        *(v143 - 208) = v149;
        *(v143 - 256) = v147;
        *(v143 - 240) = v148;
        objc_storeStrong((v143 - 272), *(v129 + 48));
        v439 = v129;
        *(v143 - 280) = *(v129 + 80);
        v150 = v520;
        v151 = *(v520 + 39);
        *(v143 - 512) = v151;
        v152 = *(v435 + 232);
        __src[0] = 0;
        LODWORD(__src[1]) = 0;
        v153 = *(v152 + 3);
        if (re::MaterialManager::entityHasSystemMaterialParameterBlock(v153, v151))
        {
          v154 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v153, v151);
          if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v155))
          {
            v156 = __src[0];
            __src[__src[0] + 2] = v154;
            __src[0] = v156 + 1;
            ++LODWORD(__src[1]);
          }
        }

        v157 = *(v435 + 336);
        if (v157)
        {
          v158 = (*(*v157 + 24))(*(v435 + 336), v6);
        }

        else
        {
          v524 = 0u;
          memset(v523, 0, sizeof(v523));
          v158 = v523;
          DWORD1(v524) = 0x7FFFFFFF;
        }

        __dst[0].i64[0] = v150;
        v159 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v158, __dst);
        if (v159)
        {
          v160 = re::ecs2::EntityHandle::resolve((*v159 + 32), v6);
          if (v160)
          {
            v161 = re::ecs2::EntityComponentCollection::get((v160 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v161)
            {
              v163 = v161;
              if (*(v161 + 152) == 1)
              {
                if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v162))
                {
                  v164 = __src[0];
                  __src[__src[0] + 2] = (v163 + 160);
                  __src[0] = v164 + 1;
                  ++LODWORD(__src[1]);
                }
              }
            }
          }
        }

        v165 = re::RenderManager::perFrameAllocator(v152);
        if (__src[0])
        {
          v166 = v439;
          if (__src[0] == 1)
          {
            v165 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(__src[2], v165);
          }

          else
          {
            v165 = re::MaterialParameterBlock::copyParametersFromArray(v165, &__src[2], __src[0]);
          }

          v167 = v165;
          if (!v157)
          {
LABEL_190:
            re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v523);
          }
        }

        else
        {
          v167 = 0;
          v166 = v439;
          if (!v157)
          {
            goto LABEL_190;
          }
        }

        *(v143 - 680) = v167;
        if (*(v166 + 56))
        {
        }

        else
        {
        }

        *(v143 - 744) = v168;
        *(v143 - 736) = v169;
        v170 = *(v435 + 344);
        __src[0] = v520;
        if (v170 && (v171 = (*(*v170 + 16))(v170), (v172 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v171, __src)) != 0))
        {
          v173 = *v172;
        }

        else
        {
          v173 = 1;
        }

        *(v143 - 500) = v173;
        v174 = *(v166 + 56);
        v175 = v166;
        v176 = (v143 - 896);
        if (v174)
        {
          *v176 = xmmword_1E3047670;
          *(v143 - 880) = xmmword_1E3047680;
          *(v143 - 864) = xmmword_1E30476A0;
          *(v143 - 848) = xmmword_1E30474D0;
          v177 = *(v175 + 6);
          if (v177)
          {
            [v177 worldBoundingBox];
            v178.i32[3] = 0;
            v179 = vminnmq_f32(v178, xmmword_1E306D4A0);
            v180.i32[3] = 0;
            v181 = vmaxnmq_f32(v180, xmmword_1E306D4B0);
          }

          else
          {
            v181.i64[0] = 0x7F0000007FLL;
            v181.i64[1] = 0x7F0000007FLL;
            v179 = vnegq_f32(v181);
          }

          *(v143 - 944) = v179;
          *(v143 - 928) = v181;
        }

        else
        {
          v182 = v516;
          v183 = v517;
          v184 = v519;
          *(v143 - 864) = v518;
          *(v143 - 848) = v184;
          *v176 = v182;
          *(v143 - 880) = v183;
          v185 = *(v175 + 6);
          v186 = [v185 presentationNode];
          [v186 boundingBox];
          v431 = v187;
          v436 = v188;

          v189 = v431;
          v189.i32[3] = 0;
          v190 = v436;
          v190.i32[3] = 0;
          *(v143 - 944) = vminnmq_f32(v189, xmmword_1E306D4A0);
          *(v143 - 928) = vmaxnmq_f32(v190, xmmword_1E306D4B0);
        }

        v191 = re::ecs2::MeshComponentHelper::clippingDataForMeshScene(v520, (v143 - 944), (v143 - 896), *(v435 + 304));
        *(v143 - 14) = BYTE5(v191);
        *(v143 - 608) = v191;
        v192 = *(v435 + 312);
        if (v192)
        {
          v193 = (*(*v192 + 24))(v192, v520);
          v195 = v194;
        }

        else
        {
          v195 = 0;
          v193 = 1065353216;
        }

        v196 = (v143 - 552);
        *(v143 - 552) = v193;
        v197 = re::ecs2::EntityComponentCollection::get((v520 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v197)
        {
          *(v143 - 584) = *(v197 + 25);
          *(v143 - 576) = *(v197 + 320);
        }

        if (v521 == 1)
        {
          v198 = re::ecs2::RenderOptions::forEntity(&v522, v520);
          LOWORD(__src[0]) = *v198;
          BYTE2(__src[0]) = v198[2];
          if (BYTE2(__src[0]) == 1)
          {
            BYTE3(__src[0]) = v198[3];
          }

          BYTE4(__src[0]) = v198[4];
          if (BYTE4(__src[0]) == 1)
          {
            BYTE5(__src[0]) = v198[5];
          }

          BYTE6(__src[0]) = v198[6];
          if (BYTE6(__src[0]) == 1)
          {
            HIBYTE(__src[0]) = v198[7];
          }

          LOBYTE(__src[1]) = v198[8];
          v199 = *(v198 + 9);
          BYTE3(__src[1]) = v198[11];
          *(&__src[1] + 1) = v199;
          BYTE4(__src[1]) = v198[12];
          if (BYTE4(__src[1]) == 1)
          {
            BYTE5(__src[1]) = v198[13];
          }

          BYTE6(__src[1]) = v198[14];
          if (BYTE6(__src[1]) == 1)
          {
            HIBYTE(__src[1]) = v198[15];
          }

          LOBYTE(__src[2]) = v198[16];
          if (LOBYTE(__src[2]) == 1)
          {
            BYTE1(__src[2]) = v198[17];
          }

          BYTE2(__src[2]) = v198[18];
          if (BYTE2(__src[2]) == 1)
          {
            BYTE3(__src[2]) = v198[19];
          }

          BYTE4(__src[2]) = v198[20];
          if (BYTE4(__src[2]) == 1)
          {
            HIWORD(__src[2]) = *(v198 + 11);
          }

          v200 = *(v198 + 6);
          BYTE4(__src[3]) = v198[28];
          LODWORD(__src[3]) = v200;
          *(v143 - 520) = re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags((__src + 2));
        }

        v201 = *(v435 + 376);
        if (v201)
        {
          LOWORD(v201) = (*(*v201 + 24))(v201, v520);
        }

        *(v143 - 504) = v201;
        v202 = (*(**(v435 + 360) + 16))(*(v435 + 360));
        v203 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v202, &v520);
        if (v203)
        {
          v204 = *v203;
          v205 = *(v203 + 8);
        }

        else
        {
          v205 = 0;
          v204 = 0;
        }

        __dst[0].i64[0] = &v445;
        __dst[0].i64[1] = v437;
        *__src = xmmword_1E3047670;
        *&__src[2] = xmmword_1E3047680;
        *&__src[4] = xmmword_1E30476A0;
        v574 = xmmword_1E30474D0;
        __dst[1].i64[0] = v143 - 944;
        __dst[1].i64[1] = __src;
        v432 = v195;
        __dst[2].i64[0] = v195;
        v428 = v204;
        __dst[2].i64[1] = v204;
        v206 = v205 & 1;
        __dst[3].i16[0] = v205 & 1;
        v207 = re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(__dst);
        v208 = *(*(v435 + 232) + 352);
        if (v208)
        {
          (*(*v208 + 40))(__src, v208, v207);
          (*(*v208 + 32))(__dst, v208);
          v209 = __src[0];
          if (__src[0])
          {
            _ZF = __dst[0].i64[0] == 0;
          }

          else
          {
            _ZF = 1;
          }

          v211 = !_ZF;
          v424 = v211;
          if (__dst[0].i64[0])
          {

            v209 = __src[0];
          }

          if (v209)
          {
          }
        }

        else
        {
          v424 = 0;
        }

        if ((atomic_load_explicit(&qword_1EE19E7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7E8))
        {
          re::Defaults::BOOLValue("VisualDepthCustomMaterial.enforceVisualDepthCustomMaterial", v369, __src);
          if (LOBYTE(__src[0]))
          {
            v370 = BYTE1(__src[0]);
          }

          else
          {
            v370 = 1;
          }

          byte_1EE19E71C = v370;
          __cxa_guard_release(&qword_1EE19E7E8);
        }

        if (byte_1EE19E71C == 1)
        {
          v212 = *(v435 + 368);
          if (v212)
          {
            v423 = (*(*v212 + 32))(v212, v520);
          }

          else
          {
            v423 = 0;
          }
        }

        else
        {
          v423 = 1;
        }

        v213 = *(v435 + 320);
        if (v213)
        {
          (*(*v213 + 40))(__src);
          v214 = 1;
          *(__dst[1].i64 + 4) = 1;
          __dst[1].i16[6] = 0;
          v215 = (__src + 4);
          if (!LOBYTE(__src[0]))
          {
            v215 = __dst;
          }

          v216 = v215[1];
          v510 = *v215;
          v511 = v216;
          v217 = *(v435 + 320);
          if (v217)
          {
            __src[0] = v427;
            __src[1] = &v449;
            __src[2] = v520;
            __src[3] = (v143 - 896);
            __src[4] = (v143 - 944);
            (*(*v217 + 48))(__dst);
            v218 = __dst[0].i8[2];
            if (!__dst[0].i8[0])
            {
              v218 = 0;
            }

            v422 = v218;
            v425 = __dst[0].i8[0] & __dst[0].i8[1];
            v219 = __dst[0].i8[0] & __dst[0].i8[3];
            if (__dst[0].i8[5])
            {
              v214 = __dst[0].i8[0] ^ 1;
            }

            else
            {
              v214 = 1;
            }

            v220 = __dst[0].i8[0] & __dst[0].i8[4];
          }

          else
          {
            v219 = 0;
            v422 = 0;
            v425 = 0;
            v220 = 0;
          }
        }

        else
        {
          v219 = 0;
          v422 = 0;
          v425 = 0;
          v220 = 0;
          v214 = 1;
          *(v511.i64 + 4) = 1;
          v511.i16[6] = 0;
        }

        _S14 = v511.i32[2];
        re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&v510);
        v223 = v222;
        re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(&v510);
        v225 = v224;
        re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(&v510);
        if (v214)
        {
          v227 = v226;
          v228 = v511.i8[12];
          __asm { FCVT            H14, S14 }

          re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(&v510);
          *v196 = v230 * *v196;
          *(v143 - 324) = v225;
          *(v143 - 320) = v227;
          *(v143 - 316) = v223;
          *(v143 - 312) = _H14;
          *(v143 - 310) = v425;
          *(v143 - 305) = v219;
          *(v143 - 304) = v220;
          *(v143 - 306) = v228;
          v231 = re::ecs2::MeshComponentHelper::depthMitigationMaskForMeshScene(v520, *(v435 + 352));
          v232 = re::ecs2::MeshComponentHelper::environmentLightingWeightForMeshScene(v520, *(v435 + 328));
          v233 = *(v435 + 336);
          v419 = v231;
          if (v233 && (v234 = (*(*v233 + 24))(v233, v427), (v235 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v234, &v520)) != 0) && (v236 = re::ecs2::EntityHandle::resolve((*v235 + 32), v427)) != 0)
          {
            v418 = re::ecs2::EntityComponentCollection::get((v236 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          else
          {
            v418 = 0;
          }

          v238 = *(v143 - 516);
          v239 = *(v143 - 520);
          if (v511.i32[1] == 1)
          {
            v240 = re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene((HIDWORD(v191) & 1), *v196);
          }

          else
          {
            if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
            {
              dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
            }

            v240 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
          }

          *(v143 - 560) = v240;
          v241 = *(v439 + 126);
          if ((*(v143 - 124) & 1) == 0)
          {
            *(v143 - 124) = 1;
          }

          *(v143 - 120) = v241;
          *(v143 - 16) = *(v439 + 512) == 0;
          *(v143 - 128) = v417;
          v242 = *(v439 + 81);
          if (v242 != *(v439 + 74))
          {
            *(v143 - 15) = 1;
            *(v439 + 74) = v242;
          }

          v243 = 0;
          *(v439 + 312) = 0;
          v507 = 0;
          if (!*(v435 + 256) || *(v520 + 28))
          {
            v114 = v435;
          }

          else
          {
            v114 = v435;
            if ((((v239 ^ 0x180197E) & ~v238 | v239 & v238) & 0x80) != 0)
            {
              v244 = *(v435 + 360);
              v469.n128_u64[0] = 0;
              v469.n128_u64[1] = v244;
              v470 = *(v435 + 304);
              v471 = 0;
              v472 = *(v435 + 312);
              v473 = v430;
              v474 = v427;
              v475 = &v449;
              v476 = v520;
              v477 = 0u;
              memset(v478, 0, 25);
              memset(&v478[32], 0, 153);
              memset(&v478[192], 0, 80);
              v245 = *(v143 - 680);
              v480 = 0;
              v481 = 0;
              v479 = v245;
              v482 = v143 - 944;
              v483 = 0;
              v484 = v143 - 896;
              v485 = *v196;
              v486 = v432;
              v487 = 1065353216;
              v488 = *(v143 - 500);
              v468[0] = 0;
              v468[1] = &str_67;
              v489 = v428;
              v490 = v468;
              v491 = *(v416 + 48);
              v492 = (v239 ^ 0x180197E) & ~v238 | v239 & v238;
              v493 = *(v143 - 520);
              v494 = 0;
              v495 = *(v143 - 584);
              v496 = v143 - 576;
              v497 = 0;
              v498 = 0;
              v499 = 0;
              v500 = v206;
              v502 = 0;
              v501 = 0;
              v503 = 1065353216;
              v504 = 0x1000000;
              v505 = 0;
              v506 = &v445;
              v246 = (*(*v449 + 40))(v449, v437);
              v433 = *(v246 + 32);
              if (v433)
              {
                v248 = 0;
                v249 = (*(v246 + 16) + 8);
                while (1)
                {
                  v250 = *v249;
                  v249 += 6;
                  if (v250 < 0)
                  {
                    break;
                  }

                  if (v433 == ++v248)
                  {
                    LODWORD(v248) = *(v246 + 32);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v248) = 0;
              }

              if (v248 != v433)
              {
                v251 = *(v246 + 16);
                v429 = v246;
                while (2)
                {
                  v252 = *(v251 + 24 * v248 + 16);
                  if (!v252)
                  {
                    re::internal::assertLog(4, v247, "assertion failure: '%s' (%s:line %i) ", "referencingPortalComponent != nullptr", "processVFXSceneComponent", 1428);
                    _os_crash();
                    __break(1u);
                    goto LABEL_450;
                  }

                  (*(*v449 + 8))(__src);
                  if (LOBYTE(__src[0]))
                  {
                    v253 = __src[1];
                  }

                  else
                  {
                    v253 = 0;
                  }

                  v467 = v253;
                  memset(&__src[1], 0, 20);
                  __src[4] = 0;
                  __src[0] = v430;
                  re::DynamicArray<re::VFXScene>::setCapacity(__src, 1uLL);
                  ++LODWORD(__src[3]);
                  re::DynamicArray<re::VFXScene>::deinit(__src);
                  v630[0] = *(v252 + 16);
                  v630[1] = v253;
                  v255 = *(v252 + 112);
                  v631 = *(v252 + 96);
                  v632 = v255;
                  v434 = v252;
                  v633 = *(v252 + 129);
                  v634 = 0;
                  v635 = &v507;
                  v636 = 0;
                  re::ecs2::MeshComponentHelper::generateSceneForPortalCrossing(&v469, v630, *(v435 + 288), __src);
                  if (__src[2])
                  {
                    v257 = &__src[4];
                  }

                  else
                  {
                    v257 = __src[5];
                  }

                  if (__src[1])
                  {
                    v258 = 0;
                    v259 = 736 * __src[1];
                    do
                    {
                      if (*(v439 + 56))
                      {
                      }

                      else
                      {
                      }

                      v262 = &v257[v258 / 8];
                      v262[35] = v260;
                      v262[36] = v261;
                      memcpy(__dst, &v257[v258 / 8], sizeof(__dst));
                      v529 = 0u;
                      v530 = 0u;
                      v527 = 0u;
                      v528 = 0u;
                      *(&v530 + 1) = v257[v258 / 8 + 51];
                      v262[51] = 0;
                      *&v527 = v257[v258 / 8 + 44];
                      v262[44] = 0;
                      v263 = *(&v527 + 1);
                      *(&v527 + 1) = v257[v258 / 8 + 45];
                      v262[45] = v263;
                      *&v528 = v257[v258 / 8 + 46];
                      v262[46] = 0;
                      v264 = *(&v529 + 1);
                      *(&v529 + 1) = v257[v258 / 8 + 49];
                      v262[49] = v264;
                      v265 = v530;
                      *&v530 = v257[v258 / 8 + 50];
                      v262[50] = v265;
                      v266 = *(&v528 + 1);
                      *(&v528 + 1) = v257[v258 / 8 + 47];
                      v262[47] = v266;
                      v267 = v529;
                      *&v529 = v257[v258 / 8 + 48];
                      v262[48] = v267;
                      v531 = v257[v258 / 8 + 52];
                      v532 = v257[v258 / 8 + 53];
                      if (v532 == 1)
                      {
                        v533 = v262[54];
                      }

                      v268 = *(v262 + 57);
                      v534 = *(v262 + 55);
                      v535 = v268;
                      v269 = *(v262 + 59);
                      v270 = *(v262 + 61);
                      v271 = *(v262 + 63);
                      *(v538 + 13) = *(v262 + 517);
                      v537 = v270;
                      v538[0] = v271;
                      v536 = v269;
                      v539 = *(v262 + 544);
                      if (v539 == 1)
                      {
                        v272 = *&v257[v258 / 8 + 72];
                        v540 = *&v257[v258 / 8 + 70];
                        v541 = v272;
                      }

                      v273 = &v257[v258 / 8];
                      v542 = v257[v258 / 8 + 74];
                      v543 = v257[v258 / 8 + 76];
                      if (v543 == 1)
                      {
                        v274 = *(v273 + 39);
                        v275 = *(v273 + 40);
                        v276 = *(v273 + 42);
                        v546 = *(v273 + 41);
                        v547 = v276;
                        v544 = v274;
                        v545 = v275;
                      }

                      v277 = *(v273 + 43);
                      v278 = *(v273 + 44);
                      v550 = *(v273 + 360);
                      v548 = v277;
                      v549 = v278;
                      v551 = *(v143 - 288);
                      v552 = *(v143 - 272);
                      v279 = *(v143 - 208);
                      v281 = *(v143 - 256);
                      v280 = *(v143 - 240);
                      v555 = *(v143 - 224);
                      v556 = v279;
                      v553 = v281;
                      v554 = v280;
                      v282 = *(v143 - 192);
                      v283 = *(v143 - 176);
                      v284 = *(v143 - 144);
                      v559 = *(v143 - 160);
                      v560 = v284;
                      v557 = v282;
                      v558 = v283;
                      v561 = *(v143 - 128);
                      v562 = *(v143 - 124);
                      if (v562 == 1)
                      {
                        v563 = *(v143 - 120);
                      }

                      v564 = *(v143 - 112);
                      re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v565, (v143 - 104));
                      v567 = *(v143 - 64);
                      if (v567 == 1)
                      {
                        v285 = *(v143 - 32);
                        v568 = *(v143 - 48);
                        v569 = v285;
                      }

                      v570 = *(v143 - 16);
                      v571 = *(v143 - 14);
                      v572 = 0;
                      re::DynamicArray<re::VFXScene>::add(v254, __dst);
                      if (v565[0])
                      {
                        v286 = v566;
                        if ((v566 & 1) == 0)
                        {
                          (*(*v565[0] + 40))();
                          v286 = v566;
                        }

                        v565[0] = 0;
                        v565[1] = 0;
                        v566 = (v286 | 1) + 2;
                      }

                      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v527);
                      v258 += 736;
                    }

                    while (v259 != v258);
                  }

                  v287 = *(v434 + 16);
                  if (!v287)
                  {
                    goto LABEL_364;
                  }

                  v288 = *(v439 + 42);
                  if (v288 != *(v287 + 312))
                  {
                    if (!v288)
                    {
                      v295 = *(v439 + 45);
                      if (v295)
                      {
                        re::ecs2::VFXSceneComponent::removeCollisionPlane(v439, v295);
                        *(v439 + 22) = 0u;
                        *(v439 + 23) = 0u;
                        *(v439 + 24) = xmmword_1E3047670;
                        *(v439 + 25) = xmmword_1E3047680;
                        *(v439 + 26) = xmmword_1E30476A0;
                        *(v439 + 27) = xmmword_1E30474D0;
                      }
                    }

                    goto LABEL_364;
                  }

                  v289 = *(v287 + 192);
                  if (!v289)
                  {
                    goto LABEL_364;
                  }

                  v290 = *(v435 + 288);
                  re::ecs2::MeshComponent::updateStaticBoundingBoxData(*(v287 + 192), *(v289 + 16), 0);
                  v292 = *(v289 + 304);
                  if (!v292)
                  {
                    goto LABEL_364;
                  }

                  v293 = *(v292 + 128);
                  if (v293 > 1)
                  {
                    goto LABEL_364;
                  }

                  v637 = *(v292 + 104);
                  if (!v293)
                  {
                    goto LABEL_451;
                  }

                  v294 = (*(v292 + 136) & 1) != 0 ? (v292 + 144) : *(v292 + 152);
                  v296 = (*(&v637 & 0xFFFFFFFFFFFFFFF7 | (8 * (*v294 & 1))) + ((16 * *v294) & 0xFFFFFFFE0));
                  v297 = vsubq_f32(v296[1], *v296);
                  v297.i32[3] = 0;
                  v298 = vmaxnmq_f32(v297, 0);
                  v291.i32[0] = v298.i32[1];
                  if (*v298.i32 != 0.0 && *&v298.i32[1] != 0.0 && *&v298.i32[2] != 0.0)
                  {
                    goto LABEL_364;
                  }

                  v299 = *&v298.i32[2] == 0.0 ? *v298.i32 : *&v298.i32[2];
                  v300 = *(v439 + 344);
                  v301 = *(v434 + 112);
                  v302 = vmulq_f32(v301, xmmword_1E3047670);
                  v303 = vmulq_f32(v301, xmmword_1E3047680);
                  v304 = vadd_f32(vzip1_s32(*v302.i8, *v303.i8), vzip2_s32(*v302.i8, *v303.i8));
                  v305 = vextq_s8(v302, v302, 8uLL);
                  *v305.f32 = vadd_f32(vzip1_s32(*v305.f32, *&vextq_s8(v303, v303, 8uLL)), v304);
                  v306 = vceqz_f32(*v305.f32);
                  v307 = vmulq_f32(v301, xmmword_1E30476A0);
                  v308 = v307.f32[2] + vaddv_f32(*v307.f32);
                  v309 = (v306.i8[4] & 1) != 0 ? v308 == 0.0 : v306.i8[0] & (v308 == 0.0);
                  if (!v309 && (v306.i8[0] & v306.i8[4] & 1) == 0)
                  {
                    goto LABEL_364;
                  }

                  v637 = xmmword_1E3047670;
                  v638 = xmmword_1E3047680;
                  v639 = xmmword_1E30476A0;
                  v640 = xmmword_1E30474D0;
                  if (v306.i8[0] & v306.i8[4])
                  {
                    v310 = v308 > 0.0;
                    v311 = v308 < 0.0;
                    v312 = v409;
                    v313 = vmuls_lane_f32(v312.f32[0], *v312.f32, 1);
                    v314 = vmuls_lane_f32(v312.f32[0], v312, 2);
                    v411 = v298;
                    v403 = v299;
                    v406 = v291;
                    v315 = __sincosf_stret((v310 - v311) * v122);
                    v318.f32[0] = vmuls_lane_f32(v315.__sinval, *v409.f32, 1);
                    v316 = vmuls_lane_f32(v315.__sinval, v409, 2);
                    v317.i32[3] = 0;
                    v317.f32[0] = v402 + (v315.__cosval * (1.0 - v402));
                    v298 = v411;
                    v317.f32[1] = v316 + (v313 * (1.0 - v315.__cosval));
                    v317.f32[2] = -(v318.f32[0] - (v314 * (1.0 - v315.__cosval)));
                    v305.i32[3] = 0;
                    v305.f32[0] = -(v316 - (v313 * (1.0 - v315.__cosval)));
                    v305.f32[1] = v126 + (v315.__cosval * (1.0 - v126));
                    v305.f32[2] = (v315.__sinval * v409.f32[0]) + (v401 * (1.0 - v315.__cosval));
                    v318.i32[3] = 0;
                    v318.f32[0] = v318.f32[0] + (v314 * (1.0 - v315.__cosval));
                    v299 = v403;
                    v291 = v406;
                    v318.f32[1] = -((v315.__sinval * v409.f32[0]) - (v401 * (1.0 - v315.__cosval)));
                    v319 = v127 + (v315.__cosval * (1.0 - v127));
                    goto LABEL_344;
                  }

                  if ((v306.i8[0] & (v308 == 0.0)) != 0)
                  {
                    v396 = vmulq_n_f32(xmmword_1E3047670, v400);
                    v397 = vmulq_f32(v396, v396).f32[0];
                    v320 = vmuls_lane_f32(v396.f32[1], *v396.f32, 1);
                    v398 = v126;
                    v321 = v127;
                    v322 = vmuls_lane_f32(v396.f32[0], *v396.f32, 1);
                    v323 = v122;
                    v324 = vmuls_lane_f32(v396.f32[0], v396, 2);
                    v399 = _D8;
                    v325 = vmuls_lane_f32(v396.f32[1], v396, 2);
                    v412 = v298;
                    v404 = v299;
                    v407 = v291;
                    v326 = __sincosf_stret(((__PAIR64__(v305.f32[1] > 0.0, v305.u32[1]) - COERCE_UNSIGNED_INT(0.0)) >> 32) * -3.1416);
                    v318.f32[0] = vmuls_lane_f32(v326.__sinval, *v396.f32, 1);
                    v327 = vmuls_lane_f32(v326.__sinval, v396, 2);
                    v328 = -(v327 - (v322 * (1.0 - v326.__cosval)));
                    *&v329 = v318.f32[0] + (v324 * (1.0 - v326.__cosval));
                    v330 = v327 + (v322 * (1.0 - v326.__cosval));
                    v127 = v321;
                    *&v331 = -((v326.__sinval * v396.f32[0]) - (v325 * (1.0 - v326.__cosval)));
                    v318.f32[0] = -(v318.f32[0] - (v324 * (1.0 - v326.__cosval)));
                    v122 = v323;
                    v317.f32[0] = v397 + (v326.__cosval * (1.0 - v397));
                    v298 = v412;
                    *&v332 = (v326.__sinval * v396.f32[0]) + (v325 * (1.0 - v326.__cosval));
                    _D8 = v399;
                    v317.f32[1] = v330;
                    v317.i64[1] = v318.u32[0];
                    v305.f32[0] = v328;
                    v305.f32[1] = v320 + (v326.__cosval * (1.0 - v320));
                    v305.i64[1] = v332;
                    v333 = vmuls_lane_f32(v396.f32[2], v396, 2);
                    v126 = v398;
                    v318.i32[3] = 0;
                    v318.i64[0] = __PAIR64__(v331, v329);
                    v299 = v404;
                    v291 = v407;
                    v319 = v333 + (v326.__cosval * (1.0 - v333));
LABEL_344:
                    v318.f32[2] = v319;
                    v637 = v317;
                    v638 = v305;
                    v639 = v318;
                  }

                  else if ((v306.i8[4] & (v308 == 0.0)) != 0)
                  {
                    __dst[0].i64[0] = 0;
                    __dst[0].i64[1] = 1065353216;
                    v414 = v298;
                    v405 = v299;
                    v408 = v291;
                    re::Matrix4x4<float>::makeRotation(__dst, &v637, ((__PAIR64__(v305.f32[0] > 0.0, v305.u32[0]) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.5708);
                    v299 = v405;
                    v291 = v408;
                    v298 = v414;
                  }

                  v305.i64[0] = 0;
                  v334.i64[0] = LODWORD(v299);
                  v334.i64[1] = __PAIR64__(v298.u32[3], v298.u32[1]);
                  v335 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v291, v305)), 0), v334, v298);
                  v336 = vextq_s8(v335, v335, 8uLL);
                  *v336.i8 = vsub_f32(vzip1_s32(*v335.i8, *v336.i8), v300);
                  v413 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v336, v335)), v335);
                  re::TransformService::worldMatrixForRendering(v290, *(v434 + 16), 1, v525);
                  v337 = 0;
                  v338 = v525[0];
                  v339 = v525[1];
                  v340 = v525[2];
                  v341 = v525[3];
                  *v641 = v637;
                  *&v641[16] = v638;
                  *&v641[32] = v639;
                  v642 = v640;
                  do
                  {
                    __dst[v337 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, COERCE_FLOAT(*&v641[v337])), v339, *&v641[v337], 1), v340, *&v641[v337], 2), v341, *&v641[v337], 3);
                    v337 += 16;
                  }

                  while (v337 != 64);
                  v342 = *__dst[0].i64;
                  v343 = *__dst[1].i64;
                  v344 = *__dst[2].i64;
                  v345 = *__dst[3].i64;
                  v637 = __dst[0];
                  v638 = __dst[1];
                  v639 = __dst[2];
                  v640 = __dst[3];
                  if (*(v439 + 44) == *(v287 + 312))
                  {
                    v346 = vceqq_f32(*(v439 + 23), v413);
                    v346.i32[3] = v346.i32[2];
                    if ((vminvq_u32(v346) & 0x80000000) != 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v439 + 25), __dst[1]), vceqq_f32(*(v439 + 24), __dst[0])), vandq_s8(vceqq_f32(*(v439 + 26), __dst[2]), vceqq_f32(*(v439 + 27), __dst[3])))) & 0x80000000) != 0)
                    {
                      goto LABEL_364;
                    }

                    re::ecs2::VFXSceneComponent::updateCollisionPlane(v439, *(v439 + 45), *v413.i64, *__dst[0].i64, *__dst[1].i64, *__dst[2].i64, *__dst[3].i64);
                  }

                  else
                  {
                    v347 = *(v439 + 45);
                    if (v347)
                    {
                      re::ecs2::VFXSceneComponent::removeCollisionPlane(v439, v347);
                      v342 = *v637.i64;
                      v343 = *v638.i64;
                      v344 = *v639.i64;
                      v345 = *v640.i64;
                    }

                    v348 = *(v439 + 56);
                    if (v348)
                    {
                      v349 = re::ecs2::VFXSceneComponent::LegacyImpl::addCollisionPlane(*v413.i64, v342, v343, v344, v345, v348, v439);
                    }

                    else
                    {
                      v349 = [*(v439 + 9) addCollisionPlaneWithExtents:*v413.i64 transform:?];
                    }

                    v350 = v349;
                    *(v439 + 45) = v349;
                    if (*(v439 + 56))
                    {
                      v351 = *(v439 + 6);
                      if (v351)
                      {
                        [v351 collideOutsidePlaneWithId:v350];
                      }
                    }

                    else
                    {
                      [*(v439 + 9) updateCollisionPlane:v349 collideOutsideExtents:1];
                    }

                    *(v439 + 44) = *(v287 + 312);
                  }

                  v352 = v637;
                  v353 = v638;
                  *(v439 + 23) = v413;
                  *(v439 + 24) = v352;
                  v354 = v639;
                  v355 = v640;
                  *(v439 + 25) = v353;
                  *(v439 + 26) = v354;
                  *(v439 + 27) = v355;
LABEL_364:
                  re::DynamicOverflowArray<re::MeshScene,2ul>::deinit(__src);
                  v246 = v429;
                  v356 = *(v429 + 8);
                  v251 = *(v429 + 2);
                  if (v356 <= v248 + 1)
                  {
                    v356 = v248 + 1;
                  }

                  while (v356 - 1 != v248)
                  {
                    LODWORD(v248) = v248 + 1;
                    if ((*(v251 + 24 * v248 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_370;
                    }
                  }

                  LODWORD(v248) = v356;
LABEL_370:
                  if (v248 == v433)
                  {
                    break;
                  }

                  continue;
                }
              }

              if (v468[0])
              {
                if (v468[0])
                {
                }
              }

              v114 = v435;
              if (v507)
              {
                *(&__src[1] + 7) = v508;
                *(&__src[3] + 7) = v509;
                if (*(v143 - 480))
                {
                  v357 = (v143 - 464);
                  v358 = v509;
                  *v357 = v508;
                  v357[1] = v358;
                }

                else
                {
                  *(v143 - 480) = 1;
                  v359 = (v143 - 464);
                  *v359 = *(&__src[1] + 7);
                  v359[1] = *(&__src[3] + 7);
                }

                *(v143 - 432) = 0;
                v243 = 1;
              }

              else
              {
                v243 = 0;
              }
            }
          }

          v455[1] = 0;
          v455[2] = 0;
          v455[0] = v520;
          v455[3] = v418;
          v456 = 0;
          v457 = v419;
          v458 = v424 & (v423 | v422 & 1);
          v459 = v422 & 1;
          v460 = v425;
          v461 = 0;
          v462 = 0;
          v463 = v232;
          v464 = v243;
          if (v243)
          {
            v465 = 2;
          }

          v466 = v430;
          re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v455, __src);
          v360 = (v143 - 672);
          v6 = v427;
          v115 = v426;
          v116 = v420;
          if ((v143 - 672) != __src)
          {
            v361 = *(v143 - 616);
            *(v143 - 616) = *(&v574 + 1);
            *(&v574 + 1) = v361;
            v362 = *v360;
            *v360 = __src[0];
            __src[0] = v362;
            v363 = *(v143 - 664);
            *(v143 - 664) = __src[1];
            __src[1] = v363;
            v364 = *(v143 - 656);
            *(v143 - 656) = __src[2];
            __src[2] = v364;
            v365 = *(v143 - 632);
            *(v143 - 632) = __src[5];
            __src[5] = v365;
            v366 = *(v143 - 624);
            *(v143 - 624) = v574;
            *&v574 = v366;
            v367 = *(v143 - 648);
            *(v143 - 648) = __src[3];
            __src[3] = v367;
            v368 = *(v143 - 640);
            *(v143 - 640) = __src[4];
            __src[4] = v368;
          }

          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(__src);
        }

        else
        {
          v237 = *(v141 + 48) + (*(v141 + 32) << 10);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v237 - 104);

          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v237 - 672);
          --*(v141 + 32);
          ++*(v141 + 40);
          v6 = v427;
          v114 = v435;
          v115 = v426;
          v116 = v420;
        }

LABEL_385:
        v115 += 2;
        if (v115 == v116)
        {
          break;
        }

        continue;
      }
    }
  }

  v371 = v443;
  if (v443)
  {
    v372 = 0;
    v373 = v442;
    v374 = v416;
    while (1)
    {
      v375 = *v373;
      v373 += 16;
      if (v375 < 0)
      {
        break;
      }

      if (v443 == ++v372)
      {
        LODWORD(v372) = v443;
        break;
      }
    }
  }

  else
  {
    LODWORD(v372) = 0;
    v374 = v416;
  }

  if (v372 != v443)
  {
    v376 = v442;
    v377 = v443;
    do
    {
      v378 = v376 + (v372 << 6);
      if (*(v378 + 32))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v6, *(v378 + 8), v374, __src);
        __dst[0].i64[0] = __src[0] >> 1;
        v379 = **(re::RenderFrameData::stream((v374 + 264), __dst) + 48);
        v380 = (*(v379 + 736))();
        if (__src[0])
        {
          if (__src[0])
          {
          }
        }

        v377 = v443;
        v376 = v442;
      }

      if (v377 <= v372 + 1)
      {
        v381 = v372 + 1;
      }

      else
      {
        v381 = v377;
      }

      while (v381 - 1 != v372)
      {
        LODWORD(v372) = v372 + 1;
        if ((*(v376 + (v372 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_413;
        }
      }

      LODWORD(v372) = v381;
LABEL_413:
      ;
    }

    while (v372 != v371);
  }

  v382 = v447;
  if (v447)
  {
    v383 = 0;
    v384 = v446;
    while (1)
    {
      v385 = *v384;
      v384 += 18;
      if (v385 < 0)
      {
        break;
      }

      if (v447 == ++v383)
      {
        LODWORD(v383) = v447;
        break;
      }
    }
  }

  else
  {
    LODWORD(v383) = 0;
  }

  if (v383 != v447)
  {
    v386 = v446;
    v387 = v447;
    do
    {
      v388 = v386 + 72 * v383;
      if (*(v388 + 44) && *(v435 + 360))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v6, *(v388 + 8), v374, __src);
        v389 = (*(**(v435 + 360) + 32))(*(v435 + 360), __src, *(v374 + 48), v388 + 16);
        if (__src[0])
        {
          if (__src[0])
          {
          }
        }

        v387 = v447;
        v386 = v446;
      }

      if (v387 <= v383 + 1)
      {
        v390 = v383 + 1;
      }

      else
      {
        v390 = v387;
      }

      while (v390 - 1 != v383)
      {
        LODWORD(v383) = v383 + 1;
        if ((*(v386 + 72 * v383) & 0x80000000) != 0)
        {
          goto LABEL_435;
        }
      }

      LODWORD(v383) = v390;
LABEL_435:
      ;
    }

    while (v383 != v382);
  }

  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v445);
LABEL_437:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v450);
  if (v415)
  {
    if (*(v415 + 152))
    {
      v391 = mach_absolute_time();
      v392 = *(v415 + 152);
      if (v392)
      {
        v393 = v392[1048].u64[0];
        if (v393 >= v391 - v410)
        {
          v393 = v391 - v410;
        }

        v392[1048].i64[0] = v393;
        v394 = v392[1048].u64[1];
        if (v394 <= v391 - v410)
        {
          v394 = v391 - v410;
        }

        v392[1048].i64[1] = v394;
        v395 = vdupq_n_s64(1uLL);
        v395.i64[0] = v391 - v410;
        v392[1049] = vaddq_s64(v392[1049], v395);
        *(v415 + 184) = 0;
      }
    }
  }

LABEL_445:
  result = v451[0];
  if (v451[0])
  {
    if (v454)
    {
      return (*(*v451[0] + 40))();
    }
  }

  return result;
}

BOOL re::ecs2::VFXSystem::isRuntimeReady(re *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3 || *(a3 + 301) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 29);
  if (re::loadVFXFramework(a1))
  {
    re::ecs2::VFXSceneComponent::invalidateIfNeeded(a3);
    if (*(a3 + 40) == 1)
    {
      v6 = *(a3 + 16);
      if (v6)
      {
        v7 = re::ecs2::EntityComponentCollection::getOrAdd((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v7 = *(a3 + 304);
      }

      if (*(v7 + 80))
      {
        v8 = *(v5 + 72);
        *(a3 + 88) = v8;
        v54 = *(a3 + 328);
        v9 = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v8 + 104, &v54);
        if (v9)
        {
          v10 = v9;
          v11 = *(a3 + 88);
          v54 = *v9;
          v12 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v11 + 56, &v54);
          if (v12)
          {
            v13 = v12;
            v14 = *(v7 + 80);
            if (v14)
            {
              v15 = *(v14 + 792);
            }

            else
            {
              v15 = 0;
            }

            v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
            *(a3 + 96) = v15 ^ (v21 >> 31) ^ v21;
            *(a3 + 80) = *v10;
            re::ObjCObject::operator=((a3 + 64), v12);
            re::ObjCObject::operator=((a3 + 48), v10 + 1);
            re::ObjCObject::operator=((a3 + 56), v10 + 2);
            re::ObjCObject::operator=((a3 + 72), v13 + 2);
            v22 = *(a3 + 48);
            v23 = v22;
            v24 = *(a3 + 56);
            v54 = MEMORY[0x1E69E9820];
            v55 = 3221225472;
            v56 = ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke;
            v57 = &__block_descriptor_40_e21_v24__0__VFXNode_8_B16l;
            v58 = a3;
            v25 = v24;
            v26 = v22;
            [v26 enumerateChildNodesUsingBlock:&v54];
            location = MEMORY[0x1E69E9820];
            v67 = 3221225472;
            v68 = ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke_2;
            v69 = &__block_descriptor_40_e26_v24__0__VFXAssetNode_8_B16l;
            v70 = a3;
            [v25 enumerateHierarchyUsingBlock:&location];
            v27 = *(a3 + 88);
            v28 = *(a3 + 328);
            v29 = v10[1];
            from = *v10;
            v63 = v29;
            v64 = v10[2];
            v65 = *(v10 + 24);
            re::VFXManager::registerEffect(v27, v28, &from);

            *(a3 + 40) = 0;
          }

          goto LABEL_51;
        }

        v16 = re::AssetHandle::loadedAsset<re::VFXAsset>((v7 + 72));
        if (v16)
        {
          v17 = v16;
          v18 = *(v16 + 64);
          if (!v18)
          {
            v30 = *re::ecsComponentsLogObjects(0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v54) = 0;
              _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "VFX effect model scene is not loaded", &v54, 2u);
            }

            goto LABEL_50;
          }

          if (*(a3 + 80) != -1)
          {
            re::ecs2::VFXSceneComponent::reset(a3);
          }

          v19 = *(v7 + 80);
          if (v19)
          {
            v20 = *(v19 + 792);
          }

          else
          {
            v20 = 0;
          }

          v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
          *(a3 + 96) = v20 ^ (v31 >> 31) ^ v31;
          if (*(v17 + 72) == 1)
          {
            operator new();
          }

          v32 = std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100]((a3 + 448), 0);
          if ((re::shouldMergeVFXEffectsIntoOneWorld(v32) & 1) == 0)
          {
            v34 = *(v7 + 80);
            if (v34)
            {
              v35 = *(v34 + 24);
              if (v35)
              {
                re::AssetManager::convertToMutable(v35, (v7 + 72));
              }
            }

            re::AssetHandle::mutateLoadedAssetAndReRegister<re::VFXAsset,re::ecs2::VFXSceneComponent::loadIfNeeded(re::ecs2::Entity const&,re::RenderManager &,re::AssetService &)::$_0>(&location, (v7 + 72));
            if ((location & 1) == 0)
            {
            }

            re::AssetHandle::internalForceUnloadAsync((v7 + 72));
          }

          *(a3 + 80) = VFXWorldId;
          if (re::shouldMergeVFXEffectsIntoOneWorld(VFXWorldId))
          {
            re::VFXManager::createRuntimeWorld(v8, *(a3 + 80), &v54);
            v38 = (a3 + 64);
            if ((a3 + 64) != &v54)
            {
              v39 = v54;
              v54 = 0;
              v40 = *v38;
              *v38 = v39;
            }

            if (!*v38)
            {
              v47 = *re::ecsComponentsLogObjects(v41);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v54) = 0;
                _os_log_debug_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEBUG, "Can't create VFXWorld", &v54, 2u);
              }

              goto LABEL_50;
            }

            v54 = *(a3 + 80);
            v42 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v8 + 56, &v54);
            if (!v42)
            {
              v48 = *v38;
              *v38 = 0;

              if ((atomic_exchange(&re::ecs2::VFXSceneComponent::loadIfNeeded(re::ecs2::Entity const&,re::RenderManager &,re::AssetService &)::__FILE____LINE___logged, 1u) & 1) == 0)
              {
                v50 = *re::ecsComponentsLogObjects(v49);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v54) = 0;
                  _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "Can't get vfxRuntimeData for newly created runtime world", &v54, 2u);
                }
              }

              goto LABEL_50;
            }

            re::ObjCObject::operator=((a3 + 72), (v42 + 16));
          }
          v43 = ;
          objc_initWeak(&from, (a3 + 8));
          v60 = v18;
          v54 = MEMORY[0x1E69E9820];
          v55 = 3321888768;
          v56 = ___ZN2re4ecs217VFXSceneComponent12loadIfNeededERKNS0_6EntityERNS_13RenderManagerERNS_12AssetServiceE_block_invoke;
          v57 = &unk_1F5CD36E0;
          v59[0] = 0;
          objc_copyWeak(v59, &from);
          v44 = v43;
          v58 = v44;
          re::VFXManager::makeScheduledLoadRuntimeTask(v8, &v60, &v54, &v61);
          v45 = v61;
          v61 = 0;
          v46 = *(a3 + 32);
          *(a3 + 32) = v45;
          if (v46)
          {

            if (v61)
            {

              v61 = 0;
            }
          }

          *(a3 + 40) = 0;
          objc_destroyWeak(v59);
          v59[0] = 0;
          objc_destroyWeak(&from);

LABEL_50:
          goto LABEL_51;
        }

        re::AssetHandle::loadAsync((v7 + 72));
      }

      re::ecs2::VFXSceneComponent::reset(a3);
    }
  }

LABEL_51:
  if (!*(a3 + 32))
  {
    v53 = *(a3 + 48);
    v51 = v53 != 0;

    return v51;
  }

  return 0;
}

uint64_t re::DynamicArray<re::VFXScene>::add(uint64_t a1, unsigned __int8 *__src)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::VFXScene>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::VFXScene>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + (v5 << 10);
  memcpy(v11, __src, 0x160uLL);
  *(v11 + 352) = 0u;
  *(v11 + 368) = 0u;
  *(v11 + 384) = 0u;
  *(v11 + 400) = 0u;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v11 + 352), __src + 44);
  *(v11 + 416) = *(__src + 104);
  v12 = __src[424];
  *(v11 + 424) = v12;
  if (v12 == 1)
  {
    *(v11 + 432) = *(__src + 54);
  }

  v13 = *(__src + 456);
  *(v11 + 440) = *(__src + 440);
  *(v11 + 456) = v13;
  v14 = *(__src + 472);
  v15 = *(__src + 488);
  v16 = *(__src + 504);
  *(v11 + 517) = *(__src + 517);
  *(v11 + 488) = v15;
  *(v11 + 504) = v16;
  *(v11 + 472) = v14;
  v17 = __src[544];
  *(v11 + 544) = v17;
  if (v17 == 1)
  {
    v18 = *(__src + 36);
    *(v11 + 560) = *(__src + 35);
    *(v11 + 576) = v18;
  }

  *(v11 + 592) = *(__src + 74);
  v19 = __src[608];
  *(v11 + 608) = v19;
  if (v19 == 1)
  {
    v20 = *(__src + 39);
    v21 = *(__src + 40);
    v22 = *(__src + 42);
    *(v11 + 656) = *(__src + 41);
    *(v11 + 672) = v22;
    *(v11 + 624) = v20;
    *(v11 + 640) = v21;
  }

  v23 = *(__src + 43);
  v24 = *(__src + 44);
  *(v11 + 720) = *(__src + 360);
  *(v11 + 688) = v23;
  *(v11 + 704) = v24;
  *(v11 + 736) = *(__src + 46);
  v25 = *(__src + 94);
  *(__src + 94) = 0;
  *(v11 + 752) = v25;
  *(v11 + 768) = *(__src + 48);
  v26 = *(__src + 49);
  v27 = *(__src + 50);
  v28 = *(__src + 52);
  *(v11 + 816) = *(__src + 51);
  *(v11 + 832) = v28;
  *(v11 + 784) = v26;
  *(v11 + 800) = v27;
  v29 = *(__src + 53);
  v30 = *(__src + 54);
  v31 = *(__src + 55);
  *(v11 + 896) = *(__src + 224);
  *(v11 + 864) = v30;
  *(v11 + 880) = v31;
  *(v11 + 848) = v29;
  LODWORD(v25) = __src[900];
  *(v11 + 900) = v25;
  if (v25 == 1)
  {
    *(v11 + 904) = *(__src + 226);
  }

  *(v11 + 912) = *(__src + 114);
  result = re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v11 + 920, (__src + 920));
  v33 = __src[960];
  *(v11 + 960) = v33;
  if (v33 == 1)
  {
    v34 = *(__src + 62);
    *(v11 + 976) = *(__src + 61);
    *(v11 + 992) = v34;
  }

  *(v11 + 1008) = *(__src + 252);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::ecs2::anonymous namespace::legacyMaterialParameterTables(re::ecs2::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7B8))
  {
    qword_1EE19E888 = 0;
    qword_1EE19E890 = 0;
    qword_1EE19E898 = 0;
    __cxa_guard_release(&qword_1EE19E7B8);
  }

  if ((atomic_load_explicit(&qword_1EE19E7C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7C0))
  {
    qword_1EE19E8A0 = 0;
    qword_1EE19E8A8 = 0;
    qword_1EE19E8B0 = 0;
    __cxa_guard_release(&qword_1EE19E7C0);
  }

  if (qword_1EE19E7C8 != -1)
  {
    dispatch_once(&qword_1EE19E7C8, &__block_literal_global_12);
  }

  return qword_1EE19E898;
}

uint64_t re::ecs2::anonymous namespace::materialParameterTables(re::ecs2::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7D0))
  {
    qword_1EE19E8B8 = 0;
    qword_1EE19E8C0 = 0;
    qword_1EE19E8C8 = 0;
    __cxa_guard_release(&qword_1EE19E7D0);
  }

  if ((atomic_load_explicit(&qword_1EE19E7D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7D8))
  {
    qword_1EE19E8D0 = 0;
    qword_1EE19E8D8 = 0;
    qword_1EE19E8E0 = 0;
    __cxa_guard_release(&qword_1EE19E7D8);
  }

  if (qword_1EE19E7E0 != -1)
  {
    dispatch_once(&qword_1EE19E7E0, &__block_literal_global_102);
  }

  return qword_1EE19E8C8;
}

float32x4_t re::ecs2::VFXSceneComponent::LegacyImpl::worldAabb@<Q0>(id *a1@<X1>, float32x4_t *a2@<X8>)
{
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *a2 = vnegq_f32(v4);
  a2[1] = v4;
  v5 = a1[6];
  if (v5)
  {
    [v5 worldBoundingBox];
    v7.i32[3] = 0;
    v8.i32[3] = 0;
    result = vminnmq_f32(v7, xmmword_1E306D4A0);
    *a2 = result;
    a2[1] = vmaxnmq_f32(v8, xmmword_1E306D4B0);
  }

  return result;
}

unint64_t re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags(re::HierarchicalMeshOverrideFlags *this)
{
  if (*this == 1)
  {
    v1 = *(this + 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  if (*(this + 6) == 1)
  {
    v1 |= 2u;
  }

  else if (*(this + 2) == 1)
  {
    v1 |= 2 * (*(this + 3) == 1);
    v2 = v2 | 2;
  }

  if (*(this + 10) == 1)
  {
    if (*(this + 11))
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    v1 |= v3;
    v2 = v2 | 4;
  }

  if (*(this + 12) == 1)
  {
    if (*(this + 13))
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    v1 |= v4;
    v2 = v2 | 8;
  }

  if (*(this + 14) == 1)
  {
    if (*(this + 15))
    {
      v5 = 16;
    }

    else
    {
      v5 = 0;
    }

    v1 |= v5;
    v2 = v2 | 0x10;
  }

  if (*(this + 16) == 1)
  {
    if (*(this + 17))
    {
      v6 = 128;
    }

    else
    {
      v6 = 0;
    }

    v1 |= v6;
    v2 = v2 | 0x80;
  }

  if (*(this + 18) == 1)
  {
    v7 = *(this + 10);
    if (v7 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = *(this + 10);
    }

    if (v8 <= -3)
    {
      v8 = -3;
    }

    v9 = v8 ^ (v8 >> 15);
    v10 = v9 & 0x80000001;
    v11 = (v9 & 0x80000001) == 1;
    v15 = (v9 & 0xFFFFFFFE) == 2;
    v12 = v15;
    v13 = !v15;
    v14 = v10 != 1;
    v15 = v7 >= 0;
    if (v7 < 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }

    if (!v15)
    {
      v12 = v13;
    }

    v17 = v1 | (*(this + 10) >> 7) & 0x100;
    if (v16)
    {
      v18 = 512;
    }

    else
    {
      v18 = 0;
    }

    v19 = v17 | v18;
    if (v12)
    {
      v20 = 1024;
    }

    else
    {
      v20 = 0;
    }

    v1 = v19 | v20;
    v2 = v2 | 0x700;
  }

  if (*(this + 4) == 1)
  {
    v1 = v1 & 0xFFF9FFFF | ((*(this + 5) & 3) << 17);
    v2 = v2 | 0x60000;
  }

  return v1 | (v2 << 32);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

uint64_t re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(v3);
  }

  else
  {
    v5 = &v4;
    return (off_1F5CD3810[v1])(&v5, this);
  }
}

uint64_t re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(v3);
  }

  else
  {
    v5 = &v4;
    return (off_1F5CD3840[v1])(&v5, this);
  }
}

uint64_t re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(v3);
  }

  else
  {
    v5 = &v4;
    return (off_1F5CD3870[v1])(&v5, this);
  }
}

uint64_t re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
  }

  else
  {
    v5 = &v4;
    return (off_1F5CD38A0[v1])(&v5, this);
  }
}

unint64_t re::HashTable<unsigned long long,re::ecs2::anonymous namespace::PerWorldData::RenderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (HIDWORD(v14) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v14) << 6) + 16;
  }

  v7 = *a2;
  *(v6 + 16) = 0;
  result = v6 + 16;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v9 = *a3;
  v10 = a3[1];
  *(result - 8) = v7;
  *result = v9;
  *(result + 8) = v10;
  *a3 = 0;
  a3[1] = 0;
  v11 = *(result + 16);
  *(result + 16) = a3[2];
  a3[2] = v11;
  v12 = *(result + 32);
  *(result + 32) = a3[4];
  a3[4] = v12;
  ++*(a3 + 6);
  ++*(result + 24);
  ++*(a1 + 40);
  return result;
}

void re::TextureTable::setTexture(int8x16_t **a1, uint64_t *a2, id *a3)
{
  if (*a3)
  {
    v6 = [*a3 protectionOptions];
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::setTexture(a1, &v7, a3, v6);
}

double re::ecs2::VFXSceneComponent::VFXSceneComponent(re::ecs2::VFXSceneComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3690;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = -1;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
  *(v1 + 140) = 0x7FFFFFFFLL;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 188) = 0x7FFFFFFFLL;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0;
  *(v1 + 236) = 0x7FFFFFFFLL;
  *(v1 + 248) = 0u;
  *(v1 + 280) = 0;
  *(v1 + 264) = 0u;
  *(v1 + 284) = 0x7FFFFFFFLL;
  *(v1 + 296) = 0;
  *(v1 + 300) = 0;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 316) = 0u;
  *(v1 + 332) = 0u;
  *(v1 + 348) = 0u;
  *(v1 + 364) = 0u;
  *(v1 + 380) = 0;
  *(v1 + 384) = xmmword_1E3047670;
  *(v1 + 400) = xmmword_1E3047680;
  *(v1 + 416) = xmmword_1E30476A0;
  *(v1 + 432) = xmmword_1E30474D0;
  *(v1 + 476) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 492) = 0x7FFFFFFFLL;
  __asm { FMOV            V1.2S, #1.0 }

  *(v1 + 504) = _D1;
  *(v1 + 512) = 0;
  *(v1 + 552) = 0;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 556) = 0x7FFFFFFFLL;
  return result;
}

void re::ecs2::VFXSceneComponent::~VFXSceneComponent(re::ecs2::VFXSceneComponent *this)
{
  *this = &unk_1F5CD3690;
  re::ecs2::VFXSceneComponent::reset(this);
  re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(this + 65);
  re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(this + 57);
  std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100](this + 56, 0);
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 31);
  re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 25);
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 19);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 13);

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::VFXSceneComponent::~VFXSceneComponent(this);

  JUMPOUT(0x1E6906520);
}

void **re::ecs2::VFXSceneComponent::reset(re::ecs2::VFXSceneComponent *this)
{
  if (!*(this + 56))
  {
    v2 = *(this + 6);
    v3 = v2;
    v4 = *(this + 11);
    if (v4)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = ___ZN2re4ecs217VFXSceneComponent5resetEv_block_invoke;
      v6[3] = &__block_descriptor_48_e21_v24__0__VFXNode_8_B16l;
      v6[4] = this;
      v6[5] = v4;
      [v2 enumerateChildNodesUsingBlock:v6];
      re::VFXManager::unRegisterEffect(v4, *(this + 41));
    }
  }

  re::ObjCObject::operator=(this + 6, 0);
  result = re::ObjCObject::operator=(this + 7, 0);
  *(this + 10) = -1;
  *(this + 81) = 0;
  return result;
}

void re::ecs2::VFXSceneComponent::createDetachedSceneComponent(void *a1@<X8>)
{
  v3 = (*(**(re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 576, 0);
  v4 = re::ecs2::VFXSceneComponent::VFXSceneComponent(v3);
  *a1 = v5;
  v6 = (*(**(re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 96, 0, v4);
  ArcSharedObject::ArcSharedObject(v6, 0);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *v7 = &unk_1F5CD3AE8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  v8 = *(v3 + 38);
  *(v3 + 38) = v7;
  if (v8)
  {
  }
}

void re::ecs2::VFXSceneComponent::setVFX(uint64_t a1, const re::AssetHandle *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v5 = *(a1 + 304);
  }

  re::AssetHandle::AssetHandle(&v82, a2);
  v6 = *(v5 + 72);
  *(v5 + 72) = v82;
  v82 = v6;
  v7 = *(v5 + 88);
  *(v5 + 88) = v83;
  v83 = v7;
  re::AssetHandle::~AssetHandle(&v82);
  re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v5);
  v8 = re::AssetHandle::loadedAsset<re::VFXAsset>(a2);
  if (v8 && *(v8 + 72) == 1)
  {
    operator new();
  }

  v9 = std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100]((a1 + 448), 0);
  *(a1 + 301) = 0;
  v10 = *(a2 + 1);
  if (v10 && (v11 = atomic_load((v10 + 896)), v11 == 2))
  {
    re::ecs2::VFXSceneComponent::model(a1, buf);
    v12 = *buf;

    if (v12)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        v13 = re::ecs2::EntityComponentCollection::getOrAdd((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v78 = v13;
      }

      else
      {
        v78 = *(a1 + 304);
      }

      v16 = *(a1 + 180);
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v17 = re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(&v95, v16);
      v81 = ++v98;
      v18 = *(a1 + 180);
      v19 = &re::internal::PrimeHelper::s_primes;
      v20 = 245;
      do
      {
        v21 = v20 >> 1;
        v22 = &v19[v20 >> 1];
        v24 = *v22;
        v23 = v22 + 1;
        v20 += ~(v20 >> 1);
        if (v24 < v18)
        {
          v19 = v23;
        }

        else
        {
          v20 = v21;
        }
      }

      while (v20);
      v25 = *v19;
      if (!v26)
      {
        re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750, v78);
        _os_crash();
        __break(1u);
        return;
      }

      v28 = v26;
      if (v25)
      {
        memset_pattern16(v26, &unk_1E304C660, 4 * v25);
      }

      v29 = &v28[(4 * v25 + 15) & 0x7FFFFFFF0];
      v79 = v28;
      v80 = *(a1 + 184);
      if (v80)
      {
        v30 = 0;
        v31 = *(a1 + 168);
        while (1)
        {
          v32 = *v31;
          v31 += 22;
          if (v32 < 0)
          {
            break;
          }

          if (v80 == ++v30)
          {
            LODWORD(v30) = *(a1 + 184);
            break;
          }
        }
      }

      else
      {
        LODWORD(v30) = 0;
      }

      if (v30 != v80)
      {
        v35 = v97;
        do
        {
          v36 = v25;
          v37 = *(a1 + 168) + 88 * v30;
          v39 = *(v37 + 8);
          v38 = v37 + 8;
          v40 = *(v38 + 8);
          *buf = v39;
          LODWORD(v85) = v40;
          v41 = re::DynamicArray<BOOL>::DynamicArray(&v86, (v38 + 16));
          *&v89[8] = *(v38 + 56);
          if (v35 >= v96)
          {
            v42 = v81;
            if (v96 < v35 + 1)
            {
              if (v95)
              {
                v43 = 8;
                if (v96)
                {
                  v43 = 2 * v96;
                }

                if (v43 <= v35 + 1)
                {
                  v44 = v35 + 1;
                }

                else
                {
                  v44 = v43;
                }

                re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(&v95, v44);
                v42 = v98;
              }

              else
              {
                re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(&v95, v35 + 1);
                v42 = v98 + 1;
              }
            }

            v35 = v97;
          }

          else
          {
            v42 = v81;
          }

          v45 = v99 + 72 * v35;
          *v45 = *buf;
          *(v45 + 8) = v85;
          *(v45 + 48) = 0;
          *(v45 + 24) = 0;
          *(v45 + 32) = 0;
          *(v45 + 16) = 0;
          *(v45 + 40) = 0;
          *(v45 + 16) = v86;
          v86 = 0;
          *(v45 + 24) = v87;
          v87 = 0;
          v46 = *(v45 + 32);
          *(v45 + 32) = v88;
          *&v88 = v46;
          v47 = *(v45 + 48);
          *(v45 + 48) = *v89;
          *v89 = v47;
          ++DWORD2(v88);
          ++*(v45 + 40);
          *(v45 + 56) = *&v89[8];
          v97 = ++v35;
          v81 = v42 + 1;
          v98 = v42 + 1;
          if (v86 && *v89)
          {
            (*(*v86 + 40))();
          }

          Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v78, *(v38 + 8));
          re::DynamicString::DynamicString(buf, Descriptor);
          re::DynamicString::DynamicString(&v88, (Descriptor + 2));
          re::DynamicString::DynamicString(&v89[16], (Descriptor + 4));
          re::DynamicString::DynamicString(&v91, (Descriptor + 6));
          v49 = Descriptor[9];
          v93 = Descriptor[8];
          v94 = v49;
          v50 = *v38;
          v51 = 0xBF58476D1CE4E5B9 * (*v38 ^ (*v38 >> 30));
          v25 = v36;
          v52 = *&v28[4 * (((0x94D049BB133111EBLL * (v51 ^ (v51 >> 27))) ^ ((0x94D049BB133111EBLL * (v51 ^ (v51 >> 27))) >> 31)) % v36)];
          if (v52 == 0x7FFFFFFF)
          {
            v52 = 0x7FFFFFFFLL;
          }

          else
          {
            v54 = *&v29[32 * v52 + 8];
            for (i = v52; v54 != v50; v52 = i)
            {
              i = *&v29[32 * i] & 0x7FFFFFFF;
              v52 = 0x7FFFFFFFLL;
              if (i == 0x7FFFFFFF)
              {
                break;
              }

              v54 = *&v29[32 * i + 8];
            }
          }

          *&v29[32 * v52 + 16] = v93;
          if (v91)
          {
            if (BYTE8(v91))
            {
              (*(*v91 + 40))();
            }

            v91 = 0u;
            v92 = 0u;
          }

          if (*&v89[16])
          {
            if (v89[24])
            {
              (*(**&v89[16] + 40))();
            }

            *&v89[16] = 0u;
            v90 = 0u;
          }

          if (v88)
          {
            if (BYTE8(v88))
            {
              (*(*v88 + 40))();
            }

            v88 = 0u;
            *v89 = 0u;
          }

          if (*buf && (v85 & 1) != 0)
          {
            (*(**buf + 40))();
          }

          v53 = *(a1 + 184);
          if (v53 <= v30 + 1)
          {
            v53 = v30 + 1;
          }

          while (v53 - 1 != v30)
          {
            LODWORD(v30) = v30 + 1;
            if ((*(*(a1 + 168) + 88 * v30) & 0x80000000) != 0)
            {
              goto LABEL_71;
            }
          }

          LODWORD(v30) = v53;
LABEL_71:
          ;
        }

        while (v30 != v80);
      }

      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 104);
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1 + 152);
      v33 = *(a1 + 16);
      if (v33)
      {
        v34 = re::ecs2::EntityComponentCollection::getOrAdd((v33 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v34 = *(a1 + 304);
      }

      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::clear(v34 + 32);
      if (*(a1 + 276))
      {
        v56 = *(a1 + 272);
        if (v56)
        {
          memset_pattern16(*(a1 + 256), &unk_1E304C660, 4 * v56);
        }

        if (*(a1 + 280))
        {
          v57 = 0;
          do
          {
            re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(*(a1 + 264), v57++);
          }

          while (v57 < *(a1 + 280));
        }

        *(a1 + 284) = 0x7FFFFFFF;
        *(a1 + 276) = 0;
        ++*(a1 + 288);
      }

      v58 = *(a1 + 448);
      if (v58 && *(v58 + 28))
      {
        v59 = *(v58 + 24);
        if (v59)
        {
          memset_pattern16(*(v58 + 8), &unk_1E304C660, 4 * v59);
        }

        v60 = *(v58 + 32);
        if (v60)
        {
          v61 = 0;
          for (j = 0; j < v60; ++j)
          {
            v63 = *(v58 + 16);
            v64 = *(v63 + v61);
            if (v64 < 0)
            {
              v65 = v63 + v61;
              *v65 = v64 & 0x7FFFFFFF;

              v60 = *(v58 + 32);
            }

            v61 += 48;
          }
        }

        *(v58 + 28) = 0;
        *(v58 + 32) = 0;
        v66 = *(v58 + 40) + 1;
        *(v58 + 36) = 0x7FFFFFFF;
        *(v58 + 40) = v66;
      }

      re::ecs2::VFXSceneComponent::initializeBindings(a1);
      if (v97)
      {
        v67 = v99;
        v68 = v99 + 72 * v97;
        do
        {
          if (*(v67 + 56))
          {
            v69 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, v67);
            if (v69)
            {
              v70 = v69;
              v71 = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v78, *v69);
              re::DynamicString::DynamicString(buf, v71);
              re::DynamicString::DynamicString(&v88, (v71 + 2));
              re::DynamicString::DynamicString(&v89[16], (v71 + 4));
              re::DynamicString::DynamicString(&v91, (v71 + 6));
              v72 = v71[9];
              v93 = v71[8];
              v94 = v72;
              v73 = 0xBF58476D1CE4E5B9 * (*v67 ^ (*v67 >> 30));
              for (k = *&v79[4 * (((0x94D049BB133111EBLL * (v73 ^ (v73 >> 27))) ^ ((0x94D049BB133111EBLL * (v73 ^ (v73 >> 27))) >> 31)) % v25)]; k != 0x7FFFFFFF; k = *&v29[32 * k] & 0x7FFFFFFF)
              {
                if (*&v29[32 * k + 8] == *v67)
                {
                  if (v93 == *&v29[32 * k + 16])
                  {
                    re::DynamicArray<BOOL>::operator=((v70 + 2), (v67 + 16));
                    v70[12] = 1;
                  }

                  break;
                }
              }

              if (v91)
              {
                if (BYTE8(v91))
                {
                  (*(*v91 + 40))();
                }

                v91 = 0u;
                v92 = 0u;
              }

              if (*&v89[16])
              {
                if (v89[24])
                {
                  (*(**&v89[16] + 40))();
                }

                *&v89[16] = 0u;
                v90 = 0u;
              }

              if (v88)
              {
                if (BYTE8(v88))
                {
                  (*(*v88 + 40))();
                }

                v88 = 0u;
                *v89 = 0u;
              }

              if (*buf && (v85 & 1) != 0)
              {
                (*(**buf + 40))();
              }
            }
          }

          v67 += 72;
        }

        while (v67 != v68);
      }

      re::ecs2::VFXSceneComponent::updateBindingStatesInitialValues(a1);
      v75 = v95;
      if (v95 && v99)
      {
        if (v97)
        {
          v76 = 72 * v97;
          v77 = v99 + 16;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v77);
            v77 += 72;
            v76 -= 72;
          }

          while (v76);
          v75 = v95;
        }

        (*(*v75 + 40))(v75);
      }
    }

    *(a1 + 301) = 1;
    uuid_generate_random(buf);
    *(a1 + 328) = (v85 + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
  }

  else
  {
    v15 = *re::ecsComponentsLogObjects(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Can't set VFXAsset which is not loaded", buf, 2u);
    }
  }
}

void re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(re::ecs2::VFXSceneMetadataComponent *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    re::ecs2::Component::enqueueMarkDirty(this);
    v3 = *(v1 + 216);
    if (v3)
    {

      re::ecs2::NetworkComponent::markDirty(v3, this);
    }
  }
}

uint64_t re::AssetHandle::loadedAsset<re::VFXAsset>(re::VFXAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::VFXAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t **re::ecs2::VFXSceneComponent::setVFXFromParticleEmitter(uint64_t a1, const re::AssetHandle *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v5 = *(a1 + 304);
  }

  re::AssetHandle::AssetHandle(&v10, a2);
  v6 = *(v5 + 72);
  *(v5 + 72) = v10;
  v10 = v6;
  v7 = *(v5 + 88);
  *(v5 + 88) = v11;
  v11 = v7;
  re::AssetHandle::~AssetHandle(&v10);
  re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v5);
  v8 = re::AssetHandle::loadedAsset<re::VFXAsset>(a2);
  if (v8 && *(v8 + 72) == 1)
  {
    operator new();
  }

  result = std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100]((a1 + 448), 0);
  *(a1 + 301) = 0;
  return result;
}

void re::ecs2::VFXSceneComponent::finishInitializationFromParticleEmitter(re::ecs2::VFXSceneComponent *this)
{
  *(this + 301) = 1;
  uuid_generate_random(v2);
  *(this + 41) = (v2[1] + (v2[0] << 6) + (v2[0] >> 2) - 0x61C8864680B583E9) ^ v2[0];
}

id *re::ecs2::VFXSceneComponent::model@<X0>(re::ecs2::VFXSceneComponent *this@<X0>, id **a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v4 = *(this + 38);
  }

  result = re::AssetHandle::loadedAsset<re::VFXAsset>((v4 + 72));
  if (result)
  {
    result = result[8];
    if (result)
    {
      result = result;
    }
  }

  *a2 = result;
  return result;
}

void re::ecs2::VFXSceneComponent::getParameterValueCopy(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  re::ecs2::VFXSceneComponent::applyReadbackUpdates(a1);
  v8 = [v7 UTF8String];
  v9 = strlen(v8);
  if (v9)
  {
    MurmurHash3_x64_128(v8, v9, 0, v17);
    v10 = (v17[1] + (v17[0] << 6) + (v17[0] >> 2) - 0x61C8864680B583E9) ^ v17[0];
  }

  else
  {
    v10 = 0;
  }

  v17[0] = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = re::ecs2::EntityComponentCollection::getOrAdd((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v12 = *(a1 + 304);
  }

  v13 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 104, v17);
  if (v13)
  {
    v14 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, v13);
    if (v14)
    {
      v15 = (v14 + 2);
      Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v12, *v14);
      re::DynamicArray<BOOL>::operator=(a3, v15);
      *a4 = *(Descriptor + 128);
    }
  }
}

uint64_t re::ecs2::VFXSceneComponent::applyReadbackUpdates(uint64_t this)
{
  if (*(this + 300) == 1)
  {
    v1 = this;
    v2 = *(this + 16);
    if (v2)
    {
      this = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (this)
      {
        v3 = this;
        if ((*(this + 80) & 1) == 0)
        {
          v4 = *(this + 64);
          if (v4)
          {
            v5 = 0;
            v6 = *(this + 48);
            while (1)
            {
              v7 = *v6;
              v6 += 22;
              if (v7 < 0)
              {
                break;
              }

              if (v4 == ++v5)
              {
                LODWORD(v5) = *(this + 64);
                break;
              }
            }
          }

          else
          {
            LODWORD(v5) = 0;
          }

          while (v5 != v4)
          {
            v8 = *(v3 + 48);
            this = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v1 + 152, (v8 + 88 * v5 + 8));
            if (this)
            {
              this = re::DynamicArray<BOOL>::operator=(this + 8, (v8 + 88 * v5 + 24));
            }

            v9 = *(v3 + 64);
            if (v9 <= v5 + 1)
            {
              v9 = v5 + 1;
            }

            while (v9 - 1 != v5)
            {
              LODWORD(v5) = v5 + 1;
              if ((*(*(v3 + 48) + 88 * v5) & 0x80000000) != 0)
              {
                goto LABEL_20;
              }
            }

            LODWORD(v5) = v9;
LABEL_20:
            ;
          }

          *(v3 + 80) = 1;
        }
      }
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v6 + 16;
  }
}

uint64_t re::ecs2::VFXSceneMetadataComponent::getDescriptor(re::ecs2::VFXSceneMetadataComponent *this, int a2)
{
  if (*(this + 6) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 8) + 160 * a2;
}

void *re::ecs2::VFXSceneComponent::bindingStorageWithIdentifier@<X0>(re::ecs2::VFXSceneComponent *this@<X0>, id a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [a2 UTF8String];
  v8 = strlen(v7);
  if (v8)
  {
    MurmurHash3_x64_128(v7, v8, 0, v11);
    v9 = (v11[1] + (v11[0] << 6) + (v11[0] >> 2) - 0x61C8864680B583E9) ^ v11[0];
  }

  else
  {
    v9 = 0;
  }

  v11[0] = v9;
  result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, v11);
  if (result)
  {
    result = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 152, result);
    if (result)
    {
      return re::DynamicArray<BOOL>::DynamicArray(a3, result + 1);
    }
  }

  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  return result;
}

void re::ecs2::VFXSceneComponent::setParameterValueCopy(re::ecs2::VFXSceneMetadataComponent *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  __s1[8] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  v10 = [v8 UTF8String];
  v11 = strlen(v10);
  if (v11)
  {
    MurmurHash3_x64_128(v10, v11, 0, __s1);
    v12 = (__s1[1] + (__s1[0] << 6) + (__s1[0] >> 2) - 0x61C8864680B583E9) ^ __s1[0];
  }

  else
  {
    v12 = 0;
  }

  v18 = v12;
  v13 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 104, &v18);
  if (v13)
  {
    v14 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, v13);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 2);
      if (v16)
      {
        v17 = re::ecs2::EntityComponentCollection::getOrAdd((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v17 = *(a1 + 38);
      }

      re::ecs2::VFXSceneMetadataComponent::getDescriptor(v17, *v15);
      if (a4 > 0x40)
      {
        re::DynamicArray<BOOL>::resize(v15 + 8, a4);
        v9[2](v9, *(v15 + 40));
        goto LABEL_14;
      }

      (v9)[2](v9, __s1);
      if (*(v15 + 24) != a4 || memcmp(__s1, *(v15 + 40), a4))
      {
        re::DynamicArray<BOOL>::resize(v15 + 8, a4);
        memcpy(*(v15 + 40), __s1, a4);
LABEL_14:
        ++*(v15 + 48);
        re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(a1);
      }
    }
  }
}

void ___ZN2re4ecs217VFXSceneComponent5resetEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 camera];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(v4 + 80);
    v8 = v9;
    v10 = v8;
    re::VFXManager::removeCamera(v6, v7, &v10);
  }
}

void re::ecs2::VFXSceneComponent::LegacyImpl::load(re::VFXLoadRuntimeTask **a1, id *a2, id a3, dispatch_queue_t *a4)
{
  v8 = a3;
  v9 = a3;
  v10 = v9;
  if (v9)
  {
    v13 = 0;
    v14 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl4loadENS_10ArcWeakPtrIS1_EEPKNS_8VFXAssetEPNS_10VFXManagerE_block_invoke;
    v12[3] = &__block_descriptor_40_a8_32c51_ZTSN2re10ArcWeakPtrINS_4ecs217VFXSceneComponentEEE_e98_v16__0__VFXLoadTask_____ArcRefCount__isa_t__v____Allocator_B___UnfairLock__os_unfair_lock_s_I__B_8l;
    objc_copyWeak(&v13, a2);
    re::VFXManager::makeScheduledLoadLegacyRuntimeTask(a4, &v14, v12, a1);
    objc_destroyWeak(&v13);
    v13 = 0;
  }

  else
  {
    v11 = *re::ecsComponentsLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "VFX effect model scene is not loaded", buf, 2u);
    }

    *a1 = 0;
  }
}

void re::AssetHandle::mutateLoadedAssetAndReRegister<re::VFXAsset,re::ecs2::VFXSceneComponent::loadIfNeeded(re::ecs2::Entity const&,re::RenderManager &,re::AssetService &)::$_0>(uint64_t a1, os_unfair_lock_s **this)
{
  re::AssetHandle::mutateAssetCommon(this);
  v4 = this[1];
  if (!v4)
  {
    goto LABEL_21;
  }

  if (!*&v4[6]._os_unfair_lock_opaque)
  {
    v9 = re::AssetHandle::assetInfo(this);
    if (v9[17])
    {
      v10 = v9[18];
    }

    else
    {
      v10 = v9 + 137;
    }

    re::DynamicString::format("Can't mutate asset that is detached from the AssetManager. '%s'", &v18, v10);
    goto LABEL_13;
  }

  v5 = atomic_load(&v4[224]._os_unfair_lock_opaque);
  if (v5 == 2)
  {
    v6 = atomic_load(&this[1][224]._os_unfair_lock_opaque);
    if (v6 != 1)
    {
      ++this[1][69]._os_unfair_lock_opaque;
      v13 = re::AssetHandle::loadedAsset<re::VFXAsset>(this);
      if (!v13)
      {
        v16 = re::AssetHandle::assetInfo(this);
        if (v16[17])
        {
          v17 = v16[18];
        }

        else
        {
          v17 = v16 + 137;
        }

        re::DynamicString::format("Failed to get mutable asset pointer for '%s'.", &v18, v17);
        goto LABEL_13;
      }

      v14 = v13;
      re::AssetHandle::internalUnregisterAsset(this);
      v15 = *(v14 + 64);
      *(v14 + 64) = 0;

      re::AssetHandle::internalRegisterAsset(this);
      re::internal::AssetEntry::updateMutatedRuntimeAssetSize(this[1]);
      re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(this[1]);
LABEL_21:
      *a1 = 1;
      return;
    }
  }

  v7 = re::AssetHandle::assetInfo(this);
  if (v7[17])
  {
    v8 = v7[18];
  }

  else
  {
    v8 = v7 + 137;
  }

  re::DynamicString::format("Can't mutate asset that is not fully loaded. '%s'", &v18, v8);
LABEL_13:
  if (v19)
  {
    v11 = *&v20[7];
  }

  else
  {
    v11 = v20;
  }

  re::WrappedError::make(@"REAssetRefErrorDomain", 5, v11, &v21);
  v12 = v21;
  v21 = 0;
  *a1 = 0;
  *(a1 + 8) = v12;

  if (v18)
  {
    if (v19)
    {
      (*(*v18 + 40))();
    }
  }
}

uint64_t re::ecs2::anonymous namespace::getVFXWorldId(re::ecs2::_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  if (re::shouldMergeVFXEffectsIntoOneWorld(this) && (v3 = *(this + 27)) != 0)
  {
    if (*(v3 + 32))
    {

      return RESyncableGetOwnerPeerID();
    }

    else
    {
      return *(v3 + 64);
    }
  }

  else
  {
    uuid_generate_random(v5);
    return (v5[1] + (v5[0] << 6) + (v5[0] >> 2) - 0x61C8864680B583E9) ^ v5[0];
  }
}

id re::ecs2::anonymous namespace::entityAnchorId(re::ecs2::_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  v2 = re::ecs2::TransformComponent::rootAnchorComponent(this);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v2 + 25];
  }

  else
  {
    {
      v4 = *re::ecsComponentsLogObjects(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VFXSceneComponent: can't find rootAnchorComponent", v6, 2u);
      }
    }

    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  }

  return v3;
}

void ___ZN2re4ecs217VFXSceneComponent12loadIfNeededERKNS0_6EntityERNS_13RenderManagerERNS_12AssetServiceE_block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    return;
  }

  v5 = WeakRetained;
  v6 = *(WeakRetained + 3);
  if (v6 == a2)
  {
    v7 = *(a2 + 56);

    if (!v7)
    {
      v31 = *re::ecsComponentsLogObjects(v8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEBUG, "VFXLoadRuntimeTask has invalid runtime", buf, 2u);
      }

      goto LABEL_45;
    }

    v9 = *(a2 + 56);
    v10 = *(a1 + 32);
    v11 = v10;
    if (!v10)
    {
      v32 = *re::ecsComponentsLogObjects(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEBUG, "Missing anchorId", buf, 2u);
      }

      goto LABEL_44;
    }

    VFXNodeClass = re::getVFXNodeClass(v10);
    VFXAssetNodeClass = re::getVFXAssetNodeClass(VFXNodeClass);
    if (VFXNodeClass && (v14 = VFXAssetNodeClass) != 0)
    {
      v15 = *(v5 + 10);
      if (v15)
      {
        if (re::shouldMergeVFXEffectsIntoOneWorld(VFXAssetNodeClass))
        {
          goto LABEL_11;
        }

        re::ObjCObject::operator=(v5 + 7, v9);
        v16 = *(v5 + 9);
        v72 = *(v5 + 7);
        re::VFXManager::registerRuntimeWorld(v15, v16, &v72);

        *buf = *(v5 + 9);
        v17 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v15 + 56, buf);
        if (v17)
        {
          re::ObjCObject::operator=(v5 + 8, (v17 + 16));
LABEL_11:
          v18 = v5 - 8;
          v19 = *(v5 + 7);
          if (!re::shouldMergeVFXEffectsIntoOneWorld(v19))
          {
            v35 = [v19 rootNode];
            v36 = [v35 childNodes];
            v30 = [v36 firstObject];

            v37 = [v30 childNodes];
            v38 = [v37 firstObject];

            v39 = [v19 assetRegistry];
            v40 = [v39 rootNode];

LABEL_35:
            re::ObjCObject::operator=(v5 + 5, v38);
            re::ObjCObject::operator=(v5 + 6, v40);
            *buf = MEMORY[0x1E69E9820];
            v66 = 3221225472;
            v67 = ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke;
            v68 = &unk_1E871BFD8;
            v70 = v18;
            v45 = v18;
            v46 = v30;
            v69 = v46;
            v71 = v15;
            [v38 enumerateChildNodesUsingBlock:buf];
            v73 = MEMORY[0x1E69E9820];
            v74 = 3221225472;
            v75 = ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke_2;
            v76 = &__block_descriptor_40_e26_v24__0__VFXAssetNode_8_B16l;
            v77 = v45;
            [v40 enumerateHierarchyUsingBlock:&v73];
            v47 = *(v5 + 40);
            *v61 = *(v5 + 9);
            v62 = *(v5 + 5);
            v63 = *(v5 + 6);
            v64 = 1;
            re::VFXManager::registerEffect(v15, v47, v61);

            if (re::shouldMergeVFXEffectsIntoOneWorld(v48))
            {
              v60 = v19;
              re::VFXManager::prepareWorld(v15, &v60);
            }

            v49 = objc_alloc(MEMORY[0x1E696AEC0]);
            v50 = *(v5 + 1);
            if (v50)
            {
              v51 = re::ecs2::EntityComponentCollection::getOrAdd((v50 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            }

            else
            {
              v51 = *(v5 + 37);
            }

            v52 = re::AssetHandle::assetInfo((v51 + 72));
            if (v52[17])
            {
              v53 = v52[18];
            }

            else
            {
              v53 = v52 + 137;
            }

            v54 = [v49 initWithCString:v53];
            v55 = [v54 componentsSeparatedByString:@"/"];
            v56 = [v55 lastObject];
            [v38 setName:v56];

            goto LABEL_44;
          }

          v58 = v19;
          v20 = v19;
          *buf = 0;
          v66 = buf;
          v67 = 0x3032000000;
          v68 = __Block_byref_object_copy__137;
          v69 = __Block_byref_object_dispose__138;
          v70 = 0;
          v21 = [(re *)v11 UUIDString];
          v59 = v20;
          v22 = [v20 rootNode];
          v73 = MEMORY[0x1E69E9820];
          v74 = 3221225472;
          v75 = ___ZN2re4ecs212_GLOBAL__N_118getOrAddAnchorNodeEP8VFXWorldP6NSUUID_block_invoke;
          v76 = &unk_1E871C0E8;
          v23 = v21;
          v77 = v23;
          v78 = buf;
          [v22 enumerateChildNodesUsingBlock:&v73];

          v25 = re::getVFXNodeClass(v24);
          if (v25)
          {
            v26 = *(v66 + 40);
            if (!v26)
            {
              v27 = objc_alloc_init(v25);
              v28 = *(v66 + 40);
              *(v66 + 40) = v27;

              [*(v66 + 40) setIdentifier:v23];
              v29 = [v59 rootNode];
              [v29 addChildNode:*(v66 + 40)];

              v26 = *(v66 + 40);
            }

            v30 = v26;
          }

          else
          {
            if ((atomic_exchange(&unk_1EE19E71D, 1u) & 1) == 0)
            {
              v57 = *re::ecsComponentsLogObjects(0);
              v18 = v5 - 8;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *v61 = 0;
                _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", v61, 2u);
              }

              v30 = 0;
              goto LABEL_34;
            }

            v30 = 0;
          }

          v18 = v5 - 8;
LABEL_34:

          _Block_object_dispose(buf, 8);
          v38 = objc_alloc_init(VFXNodeClass);
          [v30 addChildNode:v38];
          v40 = objc_alloc_init(v14);
          v43 = [v59 assetRegistry];
          v44 = [v43 rootNode];
          [v44 addChildNode:v40];

          [v59 mergeWorld:v9 parentNode:v38 parentAssetNode:v40];
          v19 = v58;
          goto LABEL_35;
        }

        v41 = *(v5 + 7);
        *(v5 + 7) = 0;

        if ((atomic_exchange(&unk_1EE19E71B, 1u) & 1) != 0 || (v33 = *re::ecsComponentsLogObjects(v42), !os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_44:

LABEL_45:
          v6 = *(v5 + 3);
          goto LABEL_46;
        }

        *buf = 0;
        v34 = "Can't get vfxRuntimeData for newly created runtime world";
      }

      else
      {
        if (atomic_exchange(&unk_1EE19E71A, 1u))
        {
          goto LABEL_44;
        }

        v33 = *re::ecsComponentsLogObjects(VFXAssetNodeClass);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 0;
        v34 = "vfxManager is not set";
      }
    }

    else
    {
      if (atomic_exchange(&unk_1EE19E719, 1u))
      {
        goto LABEL_44;
      }

      v33 = *re::ecsComponentsLogObjects(VFXAssetNodeClass);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *buf = 0;
      v34 = "VFX framework is not loaded";
    }

    _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
    goto LABEL_44;
  }

LABEL_46:
  if (v6)
  {

    *(v5 + 3) = 0;
  }
}

void ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  v4 = [v12 behaviorGraph];
  v5 = [v12 presentationNode];
  v6 = [v5 behaviorGraph];
  v14 = v6;
  re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v3, v4, &v14);

  v7 = [v12 camera];
  if (v7)
  {
    v10 = v3 + 80;
    v8 = *(v3 + 80);
    v9 = *(v10 + 8);
    v11 = v12;
    v13 = v11;
    re::VFXManager::addCamera(v9, v8, &v13);
  }
}

void re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(uint64_t a1, void *a2, id *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = *a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v5 names];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v5 unsafeParameterHandleForKey:v9];
        v11 = [v5 parameterInfoForKey:v9];
        v12 = [v10 objectName];
        v13 = [v12 UTF8String];

        v14 = [v9 UTF8String];
        if (re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, &v24))
        {
          *buf = v9;
          v20 = v5;
          v21 = v17;
          v22 = 0;
          v23 = 0;
          re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 248, &v24, buf);
        }

        else
        {
          v15 = *re::ecsComponentsLogObjects(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "Missing VFX binding", buf, 2u);
          }
        }

        if (v25 && (v26 & 1) != 0)
        {
          (*(*v25 + 40))();
        }

        if (v27 && (v28 & 1) != 0)
        {
          (*(*v27 + 40))();
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }
}

void ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v8 = v3 = a2;
  v4 = [v3 presentationObject];
  v5 = ;

  if (v8)
  {
    v6 = v8;
    v7 = v5;
    v9 = v7;
    re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v2, v6, &v9);
  }
}

id re::ecs2::anonymous namespace::assetNodeBehaviorGraph(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_1EE19E7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7F8))
  {
    qword_1EE19E7F0 = NSSelectorFromString(&cfstr_Behaviorgraph.isa);
    __cxa_guard_release(&qword_1EE19E7F8);
  }

  v2 = [v1 asset];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [v1 asset];
    v5 = [v4 behaviorGraph];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke(void *a1, void *a2)
{
  v15 = a2;
  v3 = a1[5];
  v4 = [v15 behaviorGraph];
  v5 = [v15 presentationNode];
  v6 = [v5 behaviorGraph];
  v17 = v6;
  re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v3, v4, &v17);

  if (re::shouldMergeVFXEffectsIntoOneWorld(v7))
  {
    v8 = [v15 particleEmitter];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 anchor];

      if (!v10)
      {
        [v9 setAnchor:a1[4]];
      }
    }
  }

  v11 = [v15 camera];
  if (v11)
  {
    v12 = a1[6];
    v13 = *(v3 + 80);
    v14 = v15;
    v16 = v14;
    re::VFXManager::addCamera(v12, v13, &v16);
  }
}

void ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v8 = v3 = a2;
  v4 = [v3 presentationObject];
  v5 = ;

  if (v8)
  {
    v6 = v8;
    v7 = v5;
    v9 = v7;
    re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v2, v6, &v9);
  }
}

unint64_t re::ecs2::anonymous namespace::bindingUniqueIdentifier(re::ecs2::_anonymous_namespace_ *this, const re::DynamicString *a2, unint64_t a3)
{
  v5 = re::Hash<re::DynamicString>::operator()(&v9, this);
  v6 = ((v5 << 6) + (v5 >> 2) + re::Hash<re::DynamicString>::operator()(&v10, a2) - 0x61C8864680B583E9) ^ v5;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  return ((v7 ^ (v7 >> 31)) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
}

void *re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v13, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v14, v13);
    result[1] = *a2;
    v8 = *a3;
    *a3 = 0;
    result[2] = v8;
    v9 = a3[1];
    a3[1] = 0;
    result[3] = v9;
    v10 = a3[2];
    a3[2] = 0;
    result[4] = v10;
    v11 = a3[3];
    v12 = a3[4];
    a3[3] = 0;
    result[5] = v11;
    result[6] = v12;
    ++*(a1 + 40);
  }

  return result;
}

void re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 24);
          v3 = *(a1 + 32);
        }

        v4 += 88;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::ecs2::VFXSceneComponent::startFetchingParameter(re::ecs2::VFXSceneComponent *this, NSString *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NSString *)v3 UTF8String];
  v5 = strlen(v4);
  if (v5)
  {
    MurmurHash3_x64_128(v4, v5, 0, &buf);
    v6 = (*(&buf + 1) + (buf << 6) + (buf >> 2) - 0x61C8864680B583E9) ^ buf;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  v7 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, &v18);
  if (!v7)
  {
    v16 = *re::ecsComponentsLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    v13 = "Unable to fetch parameter named %@";
    goto LABEL_16;
  }

  v8 = *(this + 2);
  if (!v8 || (v9 = v7, (v7 = re::ecs2::EntityComponentCollection::getOrAdd((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) == 0))
  {
    v12 = *re::ecsComponentsLogObjects(v7);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    LOWORD(buf) = 0;
    v13 = "Unable to get VFXSceneReadbackComponent";
    v14 = v12;
    v15 = 2;
LABEL_17:
    _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, v13, &buf, v15);
    goto LABEL_12;
  }

  v10 = v7;
  v11 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 152, v9);
  if (!v11)
  {
    v16 = *re::ecsComponentsLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v17 = *v9;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v17;
    v13 = "Missing VFX binding %zu";
LABEL_16:
    v14 = v16;
    v15 = 12;
    goto LABEL_17;
  }

  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v10 + 32, v9, v11);
  *(this + 300) = 1;
LABEL_12:
}

__n128 re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v10, v9);
    v8->n128_u64[1] = *a2;
    v8[1].n128_u32[0] = a3->n128_u32[0];
    re::DynamicArray<BOOL>::DynamicArray(&v8[1].n128_i64[1], &a3->n128_i64[1]);
    result = a3[3];
    v8[4] = result;
    ++*(a1 + 40);
  }

  return result;
}

void re::ecs2::VFXSceneComponent::stopFetchingParameter(re::ecs2::VFXSceneComponent *this, NSString *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NSString *)v3 UTF8String];
  v5 = strlen(v4);
  if (v5)
  {
    MurmurHash3_x64_128(v4, v5, 0, &buf);
    v6 = (*(&buf + 1) + (buf << 6) + (buf >> 2) - 0x61C8864680B583E9) ^ buf;
  }

  else
  {
    v6 = 0;
  }

  v25 = v6;
  v7 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, &v25);
  if (!v7)
  {
    v18 = *re::ecsComponentsLogObjects(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    v15 = "Unable to stop fetching parameter named %@";
    v16 = v18;
    v17 = 12;
    goto LABEL_13;
  }

  v8 = *(this + 2);
  if (!v8 || (v9 = v7, (v7 = re::ecs2::EntityComponentCollection::get((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) == 0))
  {
    v14 = *re::ecsComponentsLogObjects(v7);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    LOWORD(buf) = 0;
    v15 = "Unable to get VFXSceneReadbackComponent";
    v16 = v14;
    v17 = 2;
LABEL_13:
    _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, v15, &buf, v17);
    goto LABEL_22;
  }

  v10 = v7;
  v11 = 0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v7 + 32, v9, (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31), &buf);
  v12 = HIDWORD(buf);
  if (HIDWORD(buf) == 0x7FFFFFFF)
  {
    v13 = *(v10 + 15);
  }

  else
  {
    v19 = *(v10 + 6);
    v20 = *(v19 + 88 * HIDWORD(buf)) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      *(*(v10 + 5) + 4 * DWORD2(buf)) = v20;
      v12 = HIDWORD(buf);
    }

    else
    {
      *(v19 + 88 * v27) = *(v19 + 88 * v27) & 0x80000000 | v20;
    }

    v21 = (v19 + 88 * v12);
    v22 = *v21;
    if (*v21 < 0)
    {
      *v21 = v22 & 0x7FFFFFFF;
      re::DynamicArray<unsigned long>::deinit((v21 + 6));
      v23 = HIDWORD(buf);
      v19 = *(v10 + 6);
      v22 = *(v19 + 88 * HIDWORD(buf));
      v12 = HIDWORD(buf);
    }

    else
    {
      v23 = v12;
    }

    *(v19 + 88 * v23) = *(v10 + 17) | v22 & 0x80000000;
    v13 = *(v10 + 15) - 1;
    *(v10 + 15) = v13;
    v24 = *(v10 + 18) + 1;
    *(v10 + 17) = v12;
    *(v10 + 18) = v24;
  }

  *(this + 300) = v13 != 0;
LABEL_22:
}

void re::ecs2::VFXSceneComponent::initializeBindings(re::ecs2::VFXSceneComponent *this)
{
  v2 = *(this + 56);
  if (v2)
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::initializeBindings(v2, this);
  }

  else
  {
    re::ecs2::VFXSceneComponent::model(this, &v11);
    v3 = v11;

    if (v3)
    {
      v4 = *(this + 2);
      if (v4)
      {
        v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v5 = *(this + 38);
      }

      v6 = [v3 scene];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke;
      v7[3] = &unk_1E871C070;
      v9 = this;
      v8 = v3;
      v10 = v5;
      [v6 performTransaction:v7];

      re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v5);
    }
  }
}

void re::ecs2::VFXSceneComponent::updateBindingStatesInitialValues(re::ecs2::VFXSceneComponent *this)
{
  v2 = *(this + 56);
  if (v2)
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::updateBindingStatesInitialValues(v2, this);
  }

  else
  {
    re::ecs2::VFXSceneComponent::model(this, &v8);
    v3 = v8;

    if (v3)
    {
      v4 = *(this + 2);
      if (v4)
      {
        v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v5 = *(this + 38);
      }

      v6 = [v3 scene];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___ZN2re4ecs217VFXSceneComponent32updateBindingStatesInitialValuesEv_block_invoke;
      v7[3] = &__block_descriptor_48_e5_v8__0l;
      v7[4] = this;
      v7[5] = v5;
      [v6 performTransaction:v7];
    }
  }
}

void re::ecs2::VFXSceneComponent::initializeBehaviorGraphBindings(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [v4 names];
  v32 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v32)
  {
    v30 = *v54;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v53 + 1) + 8 * i);
        v7 = [v4 parameterInfoForKey:v6];
        v8 = [v4 unsafeParameterHandleForKey:v6];
        v46.n128_u32[0] = -1;
        v50 = 0;
        v47 = 0;
        v48 = 0;
        v46.n128_u64[1] = 0;
        v49 = 0;
        v51 = 0;
        v35 = 0u;
        v36 = 0u;
        v9 = re::DynamicString::setCapacity(&v35, 0);
        v37 = 0u;
        v38 = 0u;
        v10 = re::DynamicString::setCapacity(&v37, 0);
        v39 = 0u;
        v40 = 0u;
        v11 = re::DynamicString::setCapacity(&v39, 0);
        v41 = 0u;
        v42 = 0u;
        re::DynamicString::setCapacity(&v41, 0);
        v12 = [(_anonymous_namespace_ *)v8 identifier];
        v13 = [v12 UTF8String];
        v14 = strlen(v13);
        v57 = v13;
        v58 = v14;
        re::DynamicString::operator=(&v35, &v57);

        v15 = [(_anonymous_namespace_ *)v8 objectName];
        v16 = [v15 UTF8String];
        v17 = strlen(v16);
        v57 = v16;
        v58 = v17;
        re::DynamicString::operator=(&v37, &v57);

        v18 = [v6 UTF8String];
        v19 = strlen(v18);
        v57 = v18;
        v58 = v19;
        re::DynamicString::operator=(&v39, &v57);
        v43 = [v7 bindingType];
        [v7 range];
        v44 = v20;
        [v7 range];
        v45 = v21;
        v22 = [v7 documentation];
        v23 = [v22 UTF8String];
        v24 = strlen(v23);
        v57 = v23;
        v58 = v24;
        re::DynamicString::operator=(&v41, &v57);

        v25 = *(a3 + 48);
        re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::add((a3 + 32), &v35);
        v46.n128_u32[0] = v25;
        v52 = 0;
        if (BYTE8(v35))
        {
          v26 = v36;
        }

        else
        {
          v26 = &v35 + 9;
        }

        v27 = strlen(v26);
        if (v27)
        {
          MurmurHash3_x64_128(v26, v27, 0, &v57);
          v28 = (v58 + 64 * v57 + (v57 >> 2) - 0x61C8864680B583E9) ^ v57;
        }

        else
        {
          v28 = 0;
        }

        v33 = v28;
        re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 104, &v33, &v34);
        re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 152, &v34, &v46);
        v57 = v6;
        v58 = v4;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 200, &v34, &v57);

        if (v41)
        {
          if (BYTE8(v41))
          {
            (*(*v41 + 40))();
          }

          v41 = 0u;
          v42 = 0u;
        }

        if (v39)
        {
          if (BYTE8(v39))
          {
            (*(*v39 + 40))();
          }

          v39 = 0u;
          v40 = 0u;
        }

        if (v37)
        {
          if (BYTE8(v37))
          {
            (*(*v37 + 40))();
          }

          v37 = 0u;
          v38 = 0u;
        }

        if (v35 && (BYTE8(v35) & 1) != 0)
        {
          (*(*v35 + 40))();
        }

        if (v46.n128_u64[1] && v50)
        {
          (*(*v46.n128_u64[1] + 40))();
        }
      }

      v32 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v32);
  }
}

uint64_t re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::ecs2::VFXSceneComponent::LegacyImpl::initializeBindings(re::ecs2::VFXSceneComponent::LegacyImpl *this, re::ecs2::VFXSceneComponent *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  re::ecs2::VFXSceneComponent::model(a2, v45);
  v3 = v45[0];
  v4 = [v45[0] scene];

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::getOrAdd((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }

    else
    {
      v6 = *(a2 + 38);
    }

    v7 = [v4 bindings];
    v8 = [v7 count];
    if (v6[5] < v8)
    {
      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(v6 + 4, v8);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [v4 bindings];
    v9 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v9)
    {
      v10 = v9;
      v35 = *v63;
      do
      {
        v11 = 0;
        do
        {
          if (*v63 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v62 + 1) + 8 * v11);
          v55.n128_u32[0] = -1;
          v59 = 0;
          v56 = 0;
          v57 = 0;
          v55.n128_u64[1] = 0;
          v58 = 0;
          v60 = 0;
          memset(v45, 0, sizeof(v45));
          v13 = re::DynamicString::setCapacity(v45, 0);
          v46 = 0u;
          v47 = 0u;
          v14 = re::DynamicString::setCapacity(&v46, 0);
          v48 = 0u;
          v49 = 0u;
          v15 = re::DynamicString::setCapacity(&v48, 0);
          v50 = 0u;
          v51 = 0u;
          re::DynamicString::setCapacity(&v50, 0);
          v16 = [v12 identifier];
          v17 = [v16 UTF8String];

          v18 = [v12 objectName];
          v19 = [v18 UTF8String];

          v20 = [v12 bindingName];
          v21 = [v20 UTF8String];

          re::DynamicString::operator=(v45, &v43);
          re::DynamicString::operator=(&v46, &v41);
          re::DynamicString::operator=(&v48, &v39);
          v52 = [v12 type];
          [v12 min];
          v53 = v22;
          v23 = [v12 max];
          v54 = v24;
          v25 = [v12 userManual];
          v26 = [v25 UTF8String];
          v27 = strlen(v26);
          v67 = v26;
          v68 = v27;
          re::DynamicString::operator=(&v37, &v67);

          re::DynamicString::operator=(&v50, &v37);
          v28 = v6[6];
          re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::add((v6 + 4), v45);
          v55.n128_u32[0] = v28;
          v61 = [v12 objectID];
          v29 = [v12 identifier];
          v30 = [v29 UTF8String];
          v31 = strlen(v30);
          if (v31)
          {
            MurmurHash3_x64_128(v30, v31, 0, &v67);
            v32 = (v68 + (v67 << 6) + (v67 >> 2) - 0x61C8864680B583E9) ^ v67;
          }

          else
          {
            v32 = 0;
          }

          v67 = v32;
          re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 104, &v67, &v36);
          v33 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 152, &v36, &v55);
          if (v37 && (v38 & 1) != 0)
          {
            (*(*v37 + 40))(v33);
          }

          if (v39 && (v40 & 1) != 0)
          {
            (*(*v39 + 40))(v33);
          }

          if (v41 && (v42 & 1) != 0)
          {
            (*(*v41 + 40))(v33);
          }

          if (v43 && (v44 & 1) != 0)
          {
            (*(*v43 + 40))(v33);
          }

          if (v50)
          {
            if (BYTE8(v50))
            {
              (*(*v50 + 40))(v33);
            }

            v33 = 0uLL;
            v50 = 0u;
            v51 = 0u;
          }

          if (v48)
          {
            if (BYTE8(v48))
            {
              (*(*v48 + 40))(v33);
            }

            v33 = 0uLL;
            v48 = 0u;
            v49 = 0u;
          }

          if (v46)
          {
            if (BYTE8(v46))
            {
              (*(*v46 + 40))(v33);
            }

            v33 = 0uLL;
            v46 = 0u;
            v47 = 0u;
          }

          if (v45[0] && (v45[1] & 1) != 0)
          {
            (*(*v45[0] + 5))(v33);
          }

          v9 = v55.n128_u64[1];
          if (v55.n128_u64[1] && v59)
          {
            v9 = (*(*v55.n128_u64[1] + 40))(v33);
          }

          v11 = (v11 + 1);
        }

        while (v10 != v11);
        v9 = [obj countByEnumeratingWithState:&v62 objects:v66 count:{16, v33.n128_f64[0]}];
        v10 = v9;
      }

      while (v9);
    }

    re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v6);
  }
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) rootNode];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_2;
  v16[3] = &unk_1E871C000;
  v16[4] = &v17;
  [v3 enumerateChildNodesUsingBlock:v16];

  v4 = [*(a1 + 32) assetRegistry];
  v5 = [v4 rootNode];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_3;
  v15[3] = &unk_1E871C028;
  v15[4] = &v17;
  [v5 enumerateHierarchyUsingBlock:v15];

  v6 = *(a1 + 48);
  v7 = v18[3];
  if (*(v6 + 40) < v7)
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity((v6 + 32), v7);
  }

  v8 = [*(a1 + 32) rootNode];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_4;
  v14[3] = &__block_descriptor_48_e21_v24__0__VFXNode_8_B16l;
  v9 = *(a1 + 48);
  v14[4] = v2;
  v14[5] = v9;
  [v8 enumerateChildNodesUsingBlock:v14];

  v10 = [*(a1 + 32) assetRegistry];
  v11 = [v10 rootNode];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_5;
  v13[3] = &__block_descriptor_48_e26_v24__0__VFXAssetNode_8_B16l;
  v12 = *(a1 + 48);
  v13[4] = v2;
  v13[5] = v12;
  [v11 enumerateHierarchyUsingBlock:v13];

  _Block_object_dispose(&v17, 8);
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 behaviorGraph];
  v3 = [v4 bindings];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_3(uint64_t a1, void *a2)
  v3 = {;
  if (v3)
  {
    v5 = v3;
    v4 = [v3 bindings];
    *(*(*(a1 + 32) + 8) + 24) += [v4 count];

    v3 = v5;
  }
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 behaviorGraph];
  re::ecs2::VFXSceneComponent::initializeBehaviorGraphBindings(v3, v4, *(a1 + 40));
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = v3 = *(a1 + 32);
  if (v4)
  {
    v6 = v4;
    v5 = v4;
    re::ecs2::VFXSceneComponent::initializeBehaviorGraphBindings(v3, v5, *(a1 + 40));

    v4 = v6;
  }
}

void re::ecs2::VFXSceneComponent::LegacyImpl::updateBindingStatesInitialValues(re::ecs2::VFXSceneComponent::LegacyImpl *this, re::ecs2::VFXSceneComponent *a2)
{
  if (!*(a2 + 4))
  {
    v11[5] = v2;
    v11[6] = v3;
    re::ecs2::VFXSceneComponent::model(a2, v11);
    v5 = v11[0];

    v6 = [v5 scene];
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl32updateBindingStatesInitialValuesERS1__block_invoke;
        v8[3] = &unk_1E871AD90;
        v10 = a2;
        v9 = v5;
        [v7 performTransaction:v8];
      }
    }
  }
}

void ___ZN2re4ecs217VFXSceneComponent32updateBindingStatesInitialValuesEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 168);
    while (1)
    {
      v6 = *v5;
      v5 += 22;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(v2 + 184);
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
    v7 = *(v2 + 184);
    do
    {
      v8 = *(v2 + 168) + 88 * v4;
      if (!*(v8 + 64))
      {
        *(v8 + 64) = 1;
        v7 = *(v2 + 184);
      }

      if (v7 <= v4 + 1)
      {
        v9 = v4 + 1;
      }

      else
      {
        v9 = v7;
      }

      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(v2 + 168) + 88 * v4) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v4) = v9;
LABEL_18:
      ;
    }

    while (v4 != v3);
  }
}

void re::ecs2::anonymous namespace::readBinding<re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>(re::ecs2::VFXSceneMetadataComponent *a1, uint64_t a2, uint64_t a3, int a4)
{
  Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(a1, *a3);
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v22, a2, v8, v9 ^ (v9 >> 31));
  if (v23 != 0x7FFFFFFF)
  {
    v10 = *(a2 + 16) + (v23 << 6);
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    v20 = v12;
    if (a4 && (v13 = *(v11 + 16)) != 0)
    {
      v16 = *(v11 + 24);
      v15 = (v11 + 24);
      v14 = v16;
      if (!v16)
      {
        v17 = [v13 unsafeParameterHandleForKey:v20];
        re::ObjCObject::operator=(v15, v17);

        v14 = *v15;
      }

      v18 = [v14 rawValue];
    }

    else
    {
      v18 = [*(v11 + 8) bindingValueForKey:v20];
    }

    v19 = v18;
    re::DynamicArray<BOOL>::resize(a3 + 8, [v18 length]);
    memcpy(*(a3 + 40), [v19 bytes], *(a3 + 24));
  }
}

void ___ZN2re4ecs217VFXSceneComponent22writeBindingsToRuntimeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  if (v2)
  {
    v3 = 0;
    v4 = *(v1 + 168);
    while (1)
    {
      v5 = *v4;
      v4 += 22;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(v1 + 184);
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
    v6 = 0xBF58476D1CE4E5B9;
    v7 = 0x94D049BB133111EBLL;
    v8 = *(v1 + 184);
    do
    {
      v9 = *(v1 + 168) + 88 * v3;
      v10 = *(v9 + 8);
      v11 = (((v10 ^ (v10 >> 30)) * v6) ^ (((v10 ^ (v10 >> 30)) * v6) >> 27)) * v7;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v25, v1 + 248, v10, v11 ^ (v11 >> 31));
      if (v26 != 0x7FFFFFFF)
      {
        v12 = (*(v1 + 264) + (v26 << 6));
        v13 = *(v9 + 64);
        if (v12[6] != v13)
        {
          v12[6] = v13;
          v14 = v12[3];
          v15 = v14;
          v16 = v12[2];
          v17 = v16;
          v18 = v7;
          v19 = v6;
          v20 = *(v9 + 56);
          v21 = *(v9 + 40);
          v22 = v14;
          v23 = v20;
          v6 = v19;
          v7 = v18;
          [v22 setBindingValue:v23 size:v21 forKey:v16];

          v8 = *(v1 + 184);
        }
      }

      if (v8 <= v3 + 1)
      {
        v24 = v3 + 1;
      }

      else
      {
        v24 = v8;
      }

      while (v24 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(v1 + 168) + 88 * v3) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v3) = v24;
LABEL_19:
      ;
    }

    while (v3 != v2);
  }
}

void ___ZN2re4ecs217VFXSceneComponent23readBindingsFromRuntimeEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 48);
    while (1)
    {
      v6 = *v5;
      v5 += 22;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(v2 + 64);
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
    v7 = *(a1 + 32);
    do
    {
      v8 = *(v2 + 64);
      if (v8 <= v4 + 1)
      {
        v8 = v4 + 1;
      }

      while (v8 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(v2 + 48) + 88 * v4) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v4) = v8;
LABEL_15:
      ;
    }

    while (v4 != v3);
  }
}

void re::ecs2::VFXSceneComponent::findClientTextureAssetNode(re::ecs2::VFXSceneComponent *this@<X0>, NSString *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  VFXClientTextureAssetClass = re::getVFXClientTextureAssetClass(v5);
  if (VFXClientTextureAssetClass)
  {
    v7 = VFXClientTextureAssetClass;
    v8 = *(this + 7);
    v9 = v8;
    *buf = 0;
    v17 = buf;
    v18 = 0x3812000000;
    v19 = __Block_byref_object_copy__10;
    v20 = __Block_byref_object_dispose__10;
    v21 = 256;
    v22 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZNK2re4ecs217VFXSceneComponent26findClientTextureAssetNodeEP8NSString_block_invoke;
    v12[3] = &unk_1E871C0C0;
    v15 = v7;
    v13 = v5;
    v14 = buf;
    v10 = v8;
    [v10 enumerateHierarchyUsingBlock:v12];
    *a3 = *(v17 + 6);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if ((atomic_exchange(&re::ecs2::VFXSceneComponent::findClientTextureAssetNode(NSString *)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v11 = *re::ecsComponentsLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", buf, 2u);
      }
    }

    *a3 = 0;
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::addCollisionPlane(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  result = *(a7 + 48);
  if (result)
  {

    return [result addCollisionPlaneWithExtents:a1 transform:{a2, a3, a4, a5}];
  }

  return result;
}

id re::ecs2::VFXSceneComponent::updateCollisionPlane(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 448);
  if (v9)
  {
    return re::ecs2::VFXSceneComponent::LegacyImpl::updateCollisionPlane(a3, a4, a5, a6, a7, v9, a1, a2);
  }

  else
  {
    return [*(a1 + 72) updateCollisionPlane:a2 extents:? transform:?];
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::updateCollisionPlane(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a7 + 48);
  if (result)
  {

    return [result updateCollisionPlaneWithId:a8 extents:a1 transform:{a2, a3, a4, a5}];
  }

  return result;
}

id re::ecs2::VFXSceneComponent::removeCollisionPlane(re::ecs2::VFXSceneComponent *this, uint64_t a2)
{
  v4 = *(this + 56);
  if (v4)
  {
    return re::ecs2::VFXSceneComponent::LegacyImpl::removeCollisionPlane(v4, this, a2);
  }

  else
  {
    return [*(this + 9) removeCollisionPlane:a2];
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::removeCollisionPlane(re::ecs2::VFXSceneComponent::LegacyImpl *this, id *a2, uint64_t a3)
{
  result = a2[6];
  if (result)
  {

    return [result removeCollisionPlaneWithId:a3];
  }

  return result;
}

id re::ecs2::VFXSceneComponent::needsCollisionPlanes(re::ecs2::VFXSceneComponent *this)
{
  v2 = *(this + 56);
  if (v2)
  {
    return re::ecs2::VFXSceneComponent::LegacyImpl::needsCollisionPlanes(v2, this);
  }

  else
  {
    return [*(this + 9) wantsCollisionPlanes];
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::needsCollisionPlanes(re::ecs2::VFXSceneComponent::LegacyImpl *this, id *a2)
{
  result = a2[6];
  if (result)
  {

    return [result needsCollisionPlanes];
  }

  return result;
}

void re::ecs2::VFXSceneComponent::worldAabb(id *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  if (a1[56])
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::worldAabb(a1, a3);
  }

  else
  {
    v5 = a1[6];
    v6 = [v5 presentationNode];

    [v6 boundingBox];
    v11 = v7;
    v12 = v8;

    v9 = v11;
    v10 = v12;
    v9.i32[3] = 0;
    v10.i32[3] = 0;
    v13[0] = vminnmq_f32(v9, xmmword_1E306D4A0);
    v13[1] = vmaxnmq_f32(v10, xmmword_1E306D4B0);
    re::AABB::transform(v13, a2, a3);
  }
}

void re::ecs2::VFXSceneComponent::setParameterValueForIdentifier(re::ecs2::VFXSceneComponent *this, NSString *a2, uint64_t a3, NSValue *a4)
{
  v7 = a2;
  v8 = a4;
  VFXMemorySerializationClass = re::getVFXMemorySerializationClass(v8);
  if (VFXMemorySerializationClass)
  {
    v10 = VFXMemorySerializationClass;
    v11 = 0;
    switch(a3)
    {
      case 0:
        v12 = v19;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_17;
        goto LABEL_24;
      case 1:
        v12 = v35;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke;
        goto LABEL_24;
      case 2:
        v12 = v34;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_2;
        goto LABEL_24;
      case 3:
        v12 = v33;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_3;
        goto LABEL_24;
      case 4:
        v12 = v32;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_4;
        goto LABEL_24;
      case 5:
        v12 = v31;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_5;
        goto LABEL_24;
      case 6:
        v12 = v30;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_6;
        goto LABEL_24;
      case 7:
        v12 = v29;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_7;
        goto LABEL_24;
      case 8:
        v12 = v28;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_8;
        goto LABEL_24;
      case 9:
        v12 = v27;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_9;
        goto LABEL_24;
      case 10:
        v12 = v26;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_10;
        goto LABEL_24;
      case 11:
      case 12:
        v12 = v25;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_11;
        goto LABEL_24;
      case 13:
      case 18:
        v12 = v24;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_12;
        goto LABEL_24;
      case 14:
      case 19:
        v12 = v23;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_13;
        goto LABEL_24;
      case 15:
      case 20:
        v12 = v22;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_14;
        goto LABEL_24;
      case 16:
      case 21:
        v12 = v21;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_15;
        goto LABEL_24;
      case 17:
      case 22:
        v12 = v20;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_16;
        goto LABEL_24;
      case 24:
      case 25:
        v12 = &v17;
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_18;
LABEL_24:
        v12[2] = v13;
        v12[3] = &unk_1E871C098;
        v12[5] = VFXMemorySerializationClass;
        v12[4] = v8;
        v11 = _Block_copy(v12);

        break;
      default:
        break;
    }

    v15 = [(objc_class *)v10 VFXSerializedBufferSize:[(NSValue *)v8 pointerValue:v17] type:a3];
    re::ecs2::VFXSceneComponent::setParameterValueCopy(this, v7, v16, v15, v11);
  }

  else if ((atomic_exchange(&re::ecs2::VFXSceneComponent::setParameterValueForIdentifier(NSString *,long,NSValue *)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v14 = *re::ecsComponentsLogObjects(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", buf, 2u);
    }
  }
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeBool:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt8:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt16:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt32:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt64:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt8:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt16:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_9(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt32:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt64:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_11(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  LODWORD(v4) = *[*(a1 + 32) pointerValue];

  return [v3 writeFloat:a2 to:v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_12(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeSIMD2F:a2 to:v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_13(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeSIMD3F:a2 to:*&v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeSIMD4F:a2 to:*&v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_15(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  return [v3 writeSIMD3x3F:a2 to:{*&v5, *&v6, *&v7}];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_16(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  return [v3 writeSIMD4x4F:a2 to:{*&v5, *&v6, *&v7, *&v8}];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_17(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];

  return [v3 writeString:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];

  return [v3 writeKeyframeAnimation:v4 to:a2];
}

void re::ecs2::VFXSceneComponent::setClientTexture(re::ecs2::VFXSceneComponent *this, NSString *a2, void *a3)
{
  v6 = *(this + 56);
  if (v6)
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::setClientTexture(v6, this, a2, a3);
  }

  else
  {
    re::ecs2::VFXSceneComponent::findClientTextureAssetNode(this, a2, &v10);
    v9 = v10;

    v7 = v9;
    if (v9)
    {
      v8 = [v9 asset];
      [v8 setTexture:*a3];

      v7 = v9;
    }
  }
}

void re::ecs2::VFXSceneComponent::LegacyImpl::setClientTexture(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = *(a2 + 48);
  v7 = [v6 effect];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v7 fetchClientTextureIDWithNamed:v11];
    if (v10)
    {
      [v8 setClientTextureWithId:v10 texture:*a4];
    }
  }
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZNK2re4ecs217VFXSceneComponent26findClientTextureAssetNodeEP8NSString_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 asset];
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v11;
  if (isKindOfClass)
  {
    v8 = [v11 asset];
    v9 = [v8 clientIdentifier];
    v10 = [v9 isEqualToString:*(a1 + 32)];

    if (v10)
    {
      re::ObjCObject::operator=((*(*(a1 + 40) + 8) + 48), v11);
      *a3 = 1;
    }

    v7 = v11;
  }
}

double re::operator*<float>@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v8;
  do
  {
    v14[v3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v13[v3])), v5, *&v13[v3], 1), v6, v13[v3], 2), v7, v13[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  result = *v14;
  v10 = v14[1];
  v11 = v14[2];
  v12 = v14[3];
  *a3 = v14[0];
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  return result;
}

__n128 re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 160 * v4;
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  re::DynamicString::DynamicString((v5 + 64), (a2 + 64));
  re::DynamicString::DynamicString((v5 + 96), (a2 + 96));
  result = *(a2 + 8);
  v7 = *(a2 + 9);
  *(v5 + 128) = result;
  *(v5 + 144) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 160 * v2;
    do
    {
      re::DynamicString::deinit((v3 + 96));
      re::DynamicString::deinit((v3 + 64));
      re::DynamicString::deinit((v3 + 32));
      re::DynamicString::deinit(v3);
      v3 += 160;
      v4 -= 160;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::ecs2::VFXSystem::~VFXSystem(re::ecs2::VFXSystem *this)
{
  re::AssetHandle::~AssetHandle((this + 392));

  re::ecs2::System::~System(this);
}

{
  re::AssetHandle::~AssetHandle((this + 392));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a4);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 72 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 72 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 72 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 8) = v10;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

double re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 16));
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

double re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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

        v4 += 20;
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

uint64_t *re::HashTable<unsigned long long,re::ecs2::anonymous namespace::PerWorldData::RenderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
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
          re::DynamicArray<re::VFXScene>::deinit(v6 + v4 + 16);
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
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void ___ZN2re4ecs212_GLOBAL__N_129legacyMaterialParameterTablesEv_block_invoke()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = 0x9E3779B97F4A7C17;
  MurmurHash3_x64_128("Opaque", 6uLL, 0, &v33);
  v2 = v33;
  v3 = *(&v33 + 1) + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583E9;
  MurmurHash3_x64_128("Transparent", 0xBuLL, 0, &v33);
  v21 = *(&v33 + 1) + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583E9;
  v22 = v33;
  v4 = MurmurHash3_x64_128("VFXDepthWrite", 0xDuLL, 0, &v33);
  v5 = v33;
  v6 = *(&v33 + 1) + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583E9;
  for (i = 0; i != 4; ++i)
  {
    re::make::shared::object<re::MaterialParameterTable>(v7, &v23);
    v9 = qword_1EE19E8A8;
    if (qword_1EE19E8A8 <= i)
    {
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 468;
      v29 = 2048;
      v30 = i;
      v31 = 2048;
      v32 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 468;
      v29 = 2048;
      v30 = i;
      v31 = 2048;
      v32 = i;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_34:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 468;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_35;
    }

    v10 = *(qword_1EE19E8B0 + 8 * i);
    *(qword_1EE19E8B0 + 8 * i) = v23;
    v23 = v10;
    if (v10)
    {
    }
  }

  if (!qword_1EE19E8A8)
  {
LABEL_35:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 468;
    v29 = 2048;
    v30 = 0;
    v31 = 2048;
    v32 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

  if (qword_1EE19E8A8 == 1)
  {
LABEL_36:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 468;
    v29 = 2048;
    v30 = 1;
    v31 = 2048;
    v32 = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_37;
  }

  i = *qword_1EE19E8B0;
  v11 = *(qword_1EE19E8B0 + 8);
  v0 = &unk_1EE1C6000;
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once == -1)
  {
    goto LABEL_9;
  }

LABEL_37:
  dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
LABEL_9:
  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(i, v3 ^ v2, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v11, v21 ^ v22, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (*(v0 + 2160) != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  v19 = v11;
  v20 = v6;
  re::MaterialParameterTable::addPassTechniqueMapping(v11, v6 ^ v5, 0, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  MurmurHash3_x64_128("FadeDepthPrepass", 0x10uLL, 0, &v33);
  v0 = v33;
  v13 = &v1[64 * v33 + *(&v33 + 1) + (v33 >> 2)];
  MurmurHash3_x64_128("FadeOpaque", 0xAuLL, 0, &v33);
  v3 = v33;
  v14 = &v1[64 * v33 + *(&v33 + 1)];
  MurmurHash3_x64_128("VFXFadeOpaqueDepthWrite", 0x17uLL, 0, &v33);
  v2 = v33;
  v15 = &v1[*(&v33 + 1)];
  v1 = &unk_1EE1C6000;
  v16 = v5;
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  v5 = &v15[64 * v2];
  re::MaterialParameterTable::addPassTechniqueMapping(i, v13 ^ v0, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(i, &v14[v3 >> 2] ^ v3, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(i, &v5[v2 >> 2] ^ v2, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  re::MaterialParameterTable::addPassTechniqueMapping(v19, v21 ^ v22, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  v17 = re::MaterialParameterTable::addPassTechniqueMapping(v19, v20 ^ v16, 0, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
  v18 = 0;
  i = qword_1EE19E8A8;
  v6 = qword_1EE19E890;
  do
  {
    if (i == v18)
    {
      goto LABEL_33;
    }

    if (v6 == v18)
    {
      goto LABEL_34;
    }

    *(qword_1EE19E898 + 8 * v18) = *(qword_1EE19E8B0 + 8 * v18);
    ++v18;
  }

  while (v18 != 4);
}

_OWORD *re::FixedArray<re::SharedPtr<re::MaterialParameterTable>>::init<>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 4;
  result = (*(*a2 + 32))(a2, 32, 8);
  a1[2] = result;
  if (result)
  {
    *result = 0u;
    result[1] = 0u;
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::make::shared::object<re::MaterialParameterTable>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 1128, 8);
  bzero(v4, 0x468uLL);
  re::MaterialParameterTable::MaterialParameterTable(v4);
  *a2 = v4;
}

double re::MaterialParameterTable::MaterialParameterTable(re::MaterialParameterTable *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CD3BF8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = &unk_1F5CC38C8;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 50) = 0;
  *(this + 88) = 0;
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
  *(this + 106) = 1;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 114) = 0;
  *(this + 54) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 58) = 0;
  *(this + 67) = 0;
  *(this + 136) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 98) = 0;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 85) = &unk_1F5CC8148;
  *(this + 868) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 792) = 0u;
  *(this + 266) = 0;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 888) = 0u;
  *(this + 1068) = 0x7FFFFFFFLL;
  *(this + 1080) = 0;
  *(this + 1092) = 0;
  *(this + 560) = 0;
  *(this + 1122) = 0;
  return result;
}

void re::MaterialParameterTable::~MaterialParameterTable(re::MaterialParameterTable *this)
{
  re::MaterialParameterTable::~MaterialParameterTable(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CD3BF8;
  v2 = (this + 24);
  re::ShaderParameterTable::deinit((this + 24));
  re::TextureParameterTable::deinit((this + 552));
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 129);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 129);
  re::TextureParameterTable::~TextureParameterTable((this + 552));
  re::ShaderParameterTable::~ShaderParameterTable(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}