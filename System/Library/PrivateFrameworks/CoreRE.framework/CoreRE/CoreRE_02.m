uint64_t re::DynamicArray<re::RigDataValue>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigDataValue>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigDataValue>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::StringID>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::StringID>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::StringID>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::StringID>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::StringID>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 16 * v13;
      do
      {
        v16 = re::StringID::operator=(v14, v12);
        v12 += 2;
        v14 = v16 + 2;
        v15 -= 16;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = &v12[2 * v13];
      v18 = &v14[2 * v13];
      v19 = 16 * v4 - 16 * v13;
      do
      {
        v20 = re::StringID::StringID(v18, v17++);
        v18 = (v20 + 16);
        v19 -= 16;
      }

      while (v19);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 16 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        v7 += 2;
        v6 = v9 + 2;
        v8 -= 16;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[2 * v4];
      v11 = 16 * v5 - 16 * v4;
      do
      {
        re::StringID::destroyString(v10);
        v10 = (v10 + 16);
        v11 -= 16;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::StringID>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::StringID>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
        v10 = (v8 + 16 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = &str_67;
          re::StringID::destroyString(v8);
          v8 = (v8 + 16);
          v11 += 2;
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

uint64_t re::DynamicArray<unsigned long>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<unsigned long>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 8 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 8 * v5, (*(a2 + 32) + 8 * v5), 8 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 8 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RigHierarchyJointTransform>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::RigHierarchyJointTransform>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 160 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 160 * v5, (*(a2 + 32) + 160 * v5), 160 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 160 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
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
            memcpy(v7, v5[4], 160 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::StringID>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 16);
          v5 -= 16;
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

uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(uint64_t a1)
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
        do
        {
          re::DynamicArray<re::RigDataValue>::deinit(v3);
          v3 += 40;
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

uint64_t re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(uint64_t a1)
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
        v5 = 96 * v4;
        do
        {
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v3 + 56);
          re::StringID::destroyString((v3 + 40));
          re::DynamicString::deinit(v3);
          v3 += 96;
          v5 -= 96;
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

uint64_t re::RigDataValue::getRuntimeValue<int>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 224) > v5)
    {
      v6 = *(v7 + 232);
      return v6 + 4 * v5;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 8) > v5)
    {
      v6 = *(v4 + 16);
      return v6 + 4 * v5;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::__function::__func<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAD088;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 48);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::performRayCastCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::CollisionCastHit,10ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::CollisionCastHit,10ul>::operator[](a1, i);
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

uint64_t re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(uint64_t *a1)
{
  v2 = *a1;
  if (a1[2])
  {
    v3 = a1 + 3;
  }

  else
  {
    v3 = a1[4];
  }

  result = (*(*v2 + 40))(v2, v3[a1[1] - 1]);
  v5 = *(a1 + 4);
  --a1[1];
  *(a1 + 4) = v5 + 2;
  return result;
}

uint64_t re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 32));
      v3 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v3 | 1) + 2;
  }

  return result;
}

unint64_t re::BucketArray<re::CollisionCastHit,10ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 / 0xA)
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

  return *(v3 + 8 * (a2 / 0xA)) + 80 * (a2 % 0xA);
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

  if (*(a1 + 8) <= a2 / 0xA)
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

  return *(v3 + 8 * (a2 / 0xA)) + 80 * (a2 % 0xA);
}

uint64_t std::__function::__func<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CAD108;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 48);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0,std::allocator<re::internal::generatePenetrationCorrectionIKTargetCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::allocInfo_AnimationBlendTreeNodeDescription(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18DE58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DE58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DF10, "AnimationBlendTreeNodeDescription");
    __cxa_guard_release(&qword_1EE18DE58);
  }

  return &unk_1EE18DF10;
}

void re::initInfo_AnimationBlendTreeNodeDescription(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x9EA2DEB19834991ELL;
  v31[1] = "AnimationBlendTreeNodeDescription";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE18DE60, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18DE60);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE18DEA0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "type";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18DEA8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "path";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE18DEB0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::StringID>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "defaultValue";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x3000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE18DEB8 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::IntrospectionInfo<re::StringID>::get(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "weightPath";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x4000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE18DEC0 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "defaultWeight";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x5000000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE18DEC8 = v29;
      __cxa_guard_release(&qword_1EE18DE60);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE18DEA0;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationBlendTreeNodeDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationBlendTreeNodeDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationBlendTreeNodeDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationBlendTreeNodeDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

void *re::IntrospectionInfo<re::StringID>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionStringID::IntrospectionStringID(&re::IntrospectionInfo<re::StringID>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized)
    {
LABEL_8:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<re::StringID>::get(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::IntrospectionInfo<re::StringID>::get(BOOL)::info, a2);
  xmmword_1EE1863E0 = v9;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  return &re::IntrospectionInfo<re::StringID>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::AnimationBlendTreeNodeDescription>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = &str_67;
  a3[6] = 0;
  a3[7] = &str_67;
  a3[8] = 0;
  a3[9] = &str_67;
}

void re::internal::defaultDestruct<re::AnimationBlendTreeNodeDescription>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 64));
  re::StringID::destroyString((a3 + 48));
  re::StringID::destroyString((a3 + 32));
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::AnimationBlendTreeNodeDescription>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = &str_67;
  result[6] = 0;
  result[7] = &str_67;
  result[8] = 0;
  result[9] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::AnimationBlendTreeNodeDescription>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 64));
  re::StringID::destroyString((a1 + 48));
  re::StringID::destroyString((a1 + 32));
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_AnimationBlendTreeDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE18DE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DE70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DFA0, "AnimationBlendTreeDefinition");
    __cxa_guard_release(&qword_1EE18DE70);
  }

  return &unk_1EE18DFA0;
}

void re::initInfo_AnimationBlendTreeDefinition(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xD8F7C530701B187CLL;
  v15[1] = "AnimationBlendTreeDefinition";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE18DE78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18DE78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::AnimationBlendTreeNodeDescription>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "nodes";
      *(v7 + 16) = &qword_1EE18DED0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE18DE88 = v7;
      v8 = re::introspectionAllocator(v7);
      v9 = re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(1);
      v10 = (*(*v8 + 32))(v8, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "connections";
      *(v10 + 16) = v9;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x2800000002;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE18DE90 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = re::introspect_BlendSpaceDefinition(1);
      v13 = (*(*v11 + 32))(v11, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "blendSpace";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x5000000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE18DE98 = v13;
      __cxa_guard_release(&qword_1EE18DE78);
    }
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE18DE88;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationBlendTreeDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationBlendTreeDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationBlendTreeDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationBlendTreeDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::IntrospectionInfo<re::DynamicArray<re::AnimationBlendTreeNodeDescription>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE18DE80, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE18DE80);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE18DED0);
      qword_1EE18DED0 = &unk_1F5CAD188;
      __cxa_guard_release(&qword_1EE18DE80);
    }
  }

  if ((_MergedGlobals_10 & 1) == 0)
  {
    v1 = qword_1EE18DE68;
    if (qword_1EE18DE68 || (v1 = re::allocInfo_AnimationBlendTreeNodeDescription(a1), qword_1EE18DE68 = v1, re::initInfo_AnimationBlendTreeNodeDescription(v1, v2), (_MergedGlobals_10 & 1) == 0))
    {
      _MergedGlobals_10 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18DED0, 0);
      qword_1EE18DEE0 = 0x2800000003;
      dword_1EE18DEE8 = v3;
      word_1EE18DEEC = 0;
      *&xmmword_1EE18DEF0 = 0;
      *(&xmmword_1EE18DEF0 + 1) = 0xFFFFFFFFLL;
      qword_1EE18DF00 = v1;
      unk_1EE18DF08 = 0;
      qword_1EE18DED0 = &unk_1F5CAD188;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE18DED0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE18DEF0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(int a1)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info) = &unk_1F5CAD220;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_RigGraphConnection(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info, 0);
    qword_1EE186B90 = 0x2800000003;
    dword_1EE186B98 = v7;
    word_1EE186B9C = 0;
    *&xmmword_1EE186BA0 = 0;
    *(&xmmword_1EE186BA0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186BB0 = v6;
    unk_1EE186BB8 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info = &unk_1F5CAD220;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info, &v14);
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

    v14 = *(v6 + 32);
    xmmword_1EE186BA0 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::RigGraphConnection>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::AnimationBlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 112) = 0;
  *(a3 + 160) = 0;
  result = 0.0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::AnimationBlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a3 + 128);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a3 + 88);
  re::DynamicArray<re::RigGraphConnection>::deinit((a3 + 40));

  return re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a3);
}

double re::internal::defaultConstructV2<re::AnimationBlendTreeDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::AnimationBlendTreeDefinition>(uint64_t a1)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a1 + 128);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1 + 88);
  re::DynamicArray<re::RigGraphConnection>::deinit((a1 + 40));

  return re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a1);
}

uint64_t re::AnimationBlendTree<float>::createInstance(uint64_t a1, re::Allocator *a2, uint64_t a3)
{
  v123 = *MEMORY[0x1E69E9840];
  v7 = (*(*a2 + 32))(a2, 456, 8);
  *v7 = &unk_1F5CAD3A8;
  v8 = *(a1 + 16);
  *(v7 + 8) = *(a1 + 8);
  *(v7 + 16) = v8;
  re::StringID::StringID((v7 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v7 + 40), (a1 + 40));
  *(v7 + 72) = *(a1 + 72);
  *v7 = &unk_1F5CAD2B8;
  *(v7 + 80) = a1;
  *(v7 + 88) = 0;
  v9 = v7 + 88;
  *(v7 + 96) = 0;
  *(v7 + 416) = 0;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  *(v7 + 312) = 0u;
  *(v7 + 328) = 0u;
  *(v7 + 344) = 0u;
  *(v7 + 356) = 0u;
  *(v7 + 408) = 0;
  *(v7 + 376) = 0u;
  *(v7 + 392) = 0u;
  *(v7 + 8) = 47;
  *(v7 + 440) = 0;
  *(v7 + 448) = a2;
  if (*(a1 + 288))
  {
    *(v7 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((v7 + 344), 0);
    ++*(v7 + 368);
    *(v7 + 384) = a2;
    re::DynamicArray<float *>::setCapacity((v7 + 384), 0);
    ++*(v7 + 408);
    goto LABEL_173;
  }

  v10 = (*(*a2 + 32))(a2, 6408, 8);
  *v10 = 0;
  v11 = v10 + 4096;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0;
  *(v10 + 112) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = 0u;
  *(v10 + 232) = 0u;
  *(v10 + 280) = 0;
  *(v10 + 152) = 0u;
  *(v10 + 248) = 0u;
  *(v10 + 264) = 0u;
  *(v10 + 176) = 1;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 184) = 0u;
  *(v10 + 232) = 0;
  *(v10 + 240) = 0;
  *(v10 + 216) = 0u;
  *(v10 + 248) = 0u;
  *(v10 + 264) = 0u;
  v88 = (v10 + 248);
  *(v10 + 280) = 0;
  bzero((v10 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v10 + 296));
  bzero((v10 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v10 + 2360));
  *(v10 + 5344) = 0u;
  *(v10 + 5376) = 0u;
  *(v10 + 5328) = 0u;
  *(v10 + 5344) = 1;
  *(v10 + 5360) = 0u;
  *(v10 + 5352) = 0;
  *(v10 + 5376) = 0;
  *(v10 + 5392) = 0u;
  *(v10 + 5408) = 0u;
  *(v10 + 5424) = 0u;
  *(v10 + 5440) = 0u;
  *(v10 + 5456) = 0u;
  *(v10 + 5472) = 0u;
  *(v10 + 5488) = 0u;
  *(v10 + 5504) = 0u;
  *(v10 + 5520) = 0u;
  *(v10 + 5536) = 0u;
  *(v10 + 5552) = 0u;
  *(v10 + 5568) = 0u;
  *(v10 + 5584) = 0;
  *(v10 + 5480) = 1;
  *(v10 + 5504) = 0;
  *(v10 + 5512) = 0;
  *(v10 + 5488) = 0u;
  *(v10 + 5536) = 0;
  *(v10 + 5544) = 0;
  *(v10 + 5520) = 0u;
  *(v10 + 5592) = 0;
  *(v10 + 5552) = 0u;
  *(v10 + 5568) = 0u;
  *(v10 + 5584) = 0;
  *(v10 + 5600) = &unk_1F5CB2E90;
  *(v10 + 5608) = -1;
  bzero((v10 + 5616), 0x318uLL);
  *(v7 + 440) = v10;
  v12 = *(v7 + 80);
  *v10 = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v10, 0);
  ++*(v10 + 24);
  *(v10 + 40) = a2;
  re::DynamicArray<int>::setCapacity((v10 + 40), 0);
  ++*(v10 + 64);
  re::EvaluationTree::init((v10 + 296), a2);
  re::EvaluationContextManager::init((v10 + 2360), a2);
  re::RigEnvironment::init((v10 + 5328), a2);
  *(v10 + 5432) = a2;
  *(v10 + 5448) = v10 + 5328;
  *(v10 + 5456) = 0;
  *(v10 + 5440) = 0;
  re::RigGraphCompilation::init((v10 + 5464), a2);
  v13 = v12[54];
  *(v10 + 80) = a2;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v10 + 80), v13);
  ++*(v10 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v10 + 80), v12[54]);
  if (v12[54])
  {
    v14 = 0;
    v3 = 0;
    v15 = &v109;
    v11 = 288;
    do
    {
      re::RigGraphNode::inputValue((v12 + 10), (v10 + 5328), (v10 + 296), a2, v3, &v109);
      re::DynamicArray<re::RigDataValue>::add(v10 + 120, &v109);
      re::RigDataValue::~RigDataValue(&v109);
      v16 = *(v10 + 152) + 288 * *(v10 + 136);
      v17 = *(v16 - 256);
      if (v17 > 5)
      {
        if (*(v16 - 256) <= 7u)
        {
          if (v17 == 6)
          {
            *v108 = xmmword_1E30474D0;
            LODWORD(v109) = 5;
            v110 = 0uLL;
            *(&v109 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2160), &v109);
            *&v109 = *(v10 + 2176) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 504), &v109);
            re::DynamicArray<re::Vector3<float>>::add((v10 + 824), v108);
            v18 = *(v10 + 536);
            v19 = *(v10 + 520);
            goto LABEL_41;
          }

          if (v17 == 7)
          {
            *v108 = 0;
            LODWORD(v109) = 6;
            v110 = 0uLL;
            *(&v109 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2200), &v109);
            *&v109 = *(v10 + 2216) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 544), &v109);
            re::DynamicArray<unsigned long>::add((v10 + 864), v108);
            v18 = *(v10 + 576);
            v19 = *(v10 + 560);
            goto LABEL_41;
          }
        }

        else
        {
          if (v17 == 8)
          {
            *v108 = 0u;
            LODWORD(v109) = 7;
            v110 = 0uLL;
            *(&v109 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2240), &v109);
            *&v109 = *(v10 + 2256) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 584), &v109);
            re::DynamicArray<re::Vector3<float>>::add((v10 + 904), v108);
            v18 = *(v10 + 616);
            v19 = *(v10 + 600);
            goto LABEL_41;
          }

          if (v17 == 10)
          {
            v26 = *(v16 - 104);
            re::RigHierarchy::deinit(v26);
            re::RigHierarchy::init(v26, (v10 + 5328), (MEMORY[0x50] + 24), a2, (v10 + 296));
            re::RigHierarchy::getEvaluationSkeletalPose(v26, a2, 0, &v118);
            re::EvaluationSkeletalPose::createInputHandle(&v118, (v10 + 2360), &v100);
            v27 = *(v10 + 96);
            if (v27 <= v3)
            {
              goto LABEL_194;
            }

            re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v10 + 112) + v14), &v100);
            if (v100)
            {
              if (v101)
              {
                (*(*v100 + 40))();
                v101 = 0;
                v102 = 0;
              }

              v100 = 0;
            }

            re::BlendShapeWeights::~BlendShapeWeights(&v118);
          }

          else if (v17 == 13 && (*(v16 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
          {
            v20 = *(v16 - 240);
            if (v20 == "SRT" || !strcmp(v20, "SRT"))
            {
              *v108 = 0u;
              LODWORD(v109) = 7;
              v110 = 0uLL;
              *(&v109 + 1) = 0;
              re::DynamicArray<re::EvaluationRegister>::add((v10 + 2240), &v109);
              *&v109 = *(v10 + 2256) - 1;
              re::DynamicArray<unsigned long>::add((v10 + 584), &v109);
              re::DynamicArray<re::Vector3<float>>::add((v10 + 904), v108);
              v84 = *(*(v10 + 616) + 8 * *(v10 + 600) - 8);
              *v108 = xmmword_1E30474D0;
              LODWORD(v109) = 5;
              v110 = 0uLL;
              *(&v109 + 1) = 0;
              re::DynamicArray<re::EvaluationRegister>::add((v10 + 2160), &v109);
              *&v109 = *(v10 + 2176) - 1;
              re::DynamicArray<unsigned long>::add((v10 + 504), &v109);
              re::DynamicArray<re::Vector3<float>>::add((v10 + 824), v108);
              v85 = *(*(v10 + 536) + 8 * *(v10 + 520) - 8);
              *v108 = 0u;
              v21 = v16 - 288;
              LODWORD(v109) = 7;
              v110 = 0uLL;
              *(&v109 + 1) = 0;
              re::DynamicArray<re::EvaluationRegister>::add((v10 + 2240), &v109);
              *&v109 = *(v10 + 2256) - 1;
              re::DynamicArray<unsigned long>::add((v10 + 584), &v109);
              re::DynamicArray<re::Vector3<float>>::add((v10 + 904), v108);
              v86 = *(*(v10 + 616) + 8 * *(v10 + 600) - 8);
              *v108 = "scale";
              *&v108[8] = 5;
              re::RigDataValue::attributeValue(v21, v108, &v109);
              v22 = *(&v109 + 1);
              *(*(&v109 + 1) + 96) = 2;
              *(v22 + 176) = v84;
              if (v109 & 1) == 0 && *(&v110 + 1) && (v111)
              {
                (*(**(&v110 + 1) + 40))();
              }

              *v108 = "rotation";
              *&v108[8] = 8;
              re::RigDataValue::attributeValue(v21, v108, &v109);
              v23 = *(&v109 + 1);
              *(*(&v109 + 1) + 96) = 2;
              *(v23 + 176) = v85;
              if (v109 & 1) == 0 && *(&v110 + 1) && (v111)
              {
                (*(**(&v110 + 1) + 40))();
              }

              *v108 = "translation";
              *&v108[8] = 11;
              re::RigDataValue::attributeValue(v21, v108, &v109);
              v24 = *(&v109 + 1);
              *(*(&v109 + 1) + 96) = 2;
              *(v24 + 176) = v86;
              if (v109 & 1) == 0 && *(&v110 + 1) && (v111)
              {
                (*(**(&v110 + 1) + 40))();
              }
            }
          }
        }
      }

      else if (*(v16 - 256) <= 2u)
      {
        if (v17 == 1)
        {
          *v108 = 0;
          LODWORD(v109) = 0;
          v110 = 0uLL;
          *(&v109 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v10 + 1960), &v109);
          *&v109 = *(v10 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v10 + 304), &v109);
          re::DynamicArray<int>::add((v10 + 624), v108);
          v18 = *(v10 + 336);
          v19 = *(v10 + 320);
          goto LABEL_41;
        }

        if (v17 == 2)
        {
          *v108 = 0;
          LODWORD(v109) = 1;
          v110 = 0uLL;
          *(&v109 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v10 + 2000), &v109);
          *&v109 = *(v10 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v10 + 344), &v109);
          re::DynamicArray<int>::add((v10 + 664), v108);
          v18 = *(v10 + 376);
          v19 = *(v10 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v17)
        {
          case 3u:
            *v108 = 0;
            LODWORD(v109) = 2;
            v110 = 0uLL;
            *(&v109 + 1) = 0;
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2040), &v109);
            *&v109 = *(v10 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 384), &v109);
            re::DynamicArray<float>::add((v10 + 704), v108);
            v25 = *(*(v10 + 416) + 8 * *(v10 + 400) - 8);
            *(v16 - 192) = 2;
            v11 = 288;
            goto LABEL_42;
          case 4u:
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            *v108 = 3;
            memset(&v108[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2080), v108);
            *v108 = *(v10 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 424), v108);
            re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 744), &v109);
            v18 = *(v10 + 456);
            v19 = *(v10 + 440);
LABEL_41:
            v25 = *(v18 + 8 * v19 - 8);
            *(v16 - 192) = 2;
LABEL_42:
            *(v16 - 112) = v25;
            break;
          case 5u:
            v111 = 0u;
            __s1 = 0u;
            v109 = 0u;
            v110 = 0u;
            *v108 = 4;
            memset(&v108[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v10 + 2120), v108);
            *v108 = *(v10 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v10 + 464), v108);
            re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 784), &v109);
            v18 = *(v10 + 496);
            v19 = *(v10 + 480);
            goto LABEL_41;
        }
      }

      ++v3;
      v14 += 24;
    }

    while (v3 < v12[54]);
  }

  v15 = v108;
  re::RigGraphSystem::compile(v10 + 5432, v12 + 10, v10 + 296, (v10 + 2360), *(v10 + 152), *(v10 + 136), v108);
  re::RigGraphCompilation::operator=((v10 + 160), &v108[8]);
  if (!*(v10 + 272))
  {
    goto LABEL_195;
  }

  v29 = *(v10 + 288);
  if (*(v29 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v29 + 184), a2, 0, &v109);
    re::EvaluationSkeletalPose::createOutputHandle(&v109, (v10 + 2360), &v118);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v10 + 6384), &v118);
    if (v118)
    {
      if (*(&v118 + 1))
      {
        (*(*v118 + 40))();
        *(&v118 + 1) = 0;
        *&v119 = 0;
      }

      *&v118 = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(&v109);
  }

  re::EvaluationContextManager::buildEvaluationContext((v10 + 2360));
  if ((*(v10 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v10 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v10 + 160, (v10 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v10 + 2360), &v109);
  (*(*(v10 + 5600) + 32))(&v100);
  if (!v12[54])
  {
    v9 = v7 + 88;
    goto LABEL_164;
  }

  v30 = 0;
  v15 = 0;
  v27 = 32;
  do
  {
    re::RigGraphNode::inputValue((v12 + 10), (v10 + 5328), (v10 + 296), a2, v15, &v109);
    if (v111 <= 4u)
    {
      if (v111 > 2u)
      {
        if (v111 == 3)
        {
          v11 = v12[12];
          if (v11 <= v15)
          {
            goto LABEL_184;
          }

          v3 = *(v12[14] + v27);
          v60 = strlen(v3);
          *v105 = v3;
          *&v105[8] = v60;
          re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
          if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
          {
            (*(**(&v119 + 1) + 40))();
          }

          v62 = *(v10 + 232);
          if (v62 <= v15)
          {
            goto LABEL_192;
          }

          v63 = v114;
          *re::RigDataValue::getRuntimeValue<float>(*v88 + v30, v61) = v63;
        }

        else if (v111 == 4)
        {
          v11 = v12[12];
          if (v11 <= v15)
          {
            goto LABEL_179;
          }

          v3 = *(v12[14] + v27);
          v47 = strlen(v3);
          *v105 = v3;
          *&v105[8] = v47;
          re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
          if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
          {
            (*(**(&v119 + 1) + 40))();
          }

          v49 = *(v10 + 232);
          if (v49 <= v15)
          {
            goto LABEL_191;
          }

          v50 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v88 + v30, v48);
          v52 = v115;
          v51 = v116;
          *v50 = v114;
          v50[1] = v52;
          v50[2] = v51;
        }

        goto LABEL_154;
      }

      if (v111 != 1)
      {
        if (v111 != 2)
        {
          goto LABEL_154;
        }

        v11 = v12[12];
        if (v11 <= v15)
        {
          goto LABEL_182;
        }

        v3 = *(v12[14] + v27);
        v42 = strlen(v3);
        *v105 = v3;
        *&v105[8] = v42;
        re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
        if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
        {
          (*(**(&v119 + 1) + 40))();
        }

        v44 = *(v10 + 232);
        if (v44 <= v15)
        {
          goto LABEL_187;
        }

        v45 = v114;
        Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(*v88 + v30, v43);
        goto LABEL_124;
      }

      v11 = v12[12];
      if (v11 > v15)
      {
        v3 = *(v12[14] + v27);
        v57 = strlen(v3);
        *v105 = v3;
        *&v105[8] = v57;
        re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
        if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
        {
          (*(**(&v119 + 1) + 40))();
        }

        v59 = *(v10 + 232);
        if (v59 <= v15)
        {
          goto LABEL_189;
        }

        v45 = v114;
        Runtime = re::RigDataValue::getRuntimeValue<int>(*v88 + v30, v58);
LABEL_124:
        *Runtime = v45;
        goto LABEL_154;
      }

      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_179:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_180:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_181:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_182:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_183:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_184:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_185:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_186:
      re::internal::assertLog(6, v65, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v66);
      _os_crash();
      __break(1u);
LABEL_187:
      re::internal::assertLog(6, v43, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v44);
      _os_crash();
      __break(1u);
LABEL_188:
      re::internal::assertLog(6, v76, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v77);
      _os_crash();
      __break(1u);
LABEL_189:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v59);
      _os_crash();
      __break(1u);
LABEL_190:
      re::internal::assertLog(6, v69, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v70);
      _os_crash();
      __break(1u);
LABEL_191:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v49);
      _os_crash();
      __break(1u);
LABEL_192:
      re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v62);
      _os_crash();
      __break(1u);
LABEL_193:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v55);
      _os_crash();
      __break(1u);
LABEL_194:
      *v105 = 0;
      __s1 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      *&v108[12] = 1024;
      *&v108[14] = 789;
      *&v108[18] = 2048;
      *&v108[20] = v3;
      *&v108[28] = 2048;
      *&v108[30] = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_195:
      re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_196:
      v90[0] = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      *&v105[12] = 1024;
      *&v105[14] = 797;
      v106 = 2048;
      *v107 = v15;
      *&v107[8] = 2048;
      *&v107[10] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_197:
      re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v41);
      _os_crash();
      __break(1u);
    }

    if (v111 <= 6u)
    {
      if (v111 != 5)
      {
        if (v111 != 6)
        {
          goto LABEL_154;
        }

        v11 = v12[12];
        if (v11 <= v15)
        {
          goto LABEL_180;
        }

        v3 = *(v12[14] + v27);
        v53 = strlen(v3);
        *v105 = v3;
        *&v105[8] = v53;
        re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
        if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
        {
          (*(**(&v119 + 1) + 40))();
        }

        v55 = *(v10 + 232);
        if (v55 <= v15)
        {
          goto LABEL_193;
        }

        v56 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v88 + v30, v54);
        goto LABEL_153;
      }

      v11 = v12[12];
      if (v11 <= v15)
      {
        goto LABEL_185;
      }

      v3 = *(v12[14] + v27);
      v68 = strlen(v3);
      *v105 = v3;
      *&v105[8] = v68;
      re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
      if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
      {
        (*(**(&v119 + 1) + 40))();
      }

      v70 = *(v10 + 232);
      if (v70 <= v15)
      {
        goto LABEL_190;
      }

      v71 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v88 + v30, v69);
      v72 = v117;
      v74 = v114;
      v73 = v115;
      v71[2] = v116;
      v71[3] = v72;
      *v71 = v74;
      v71[1] = v73;
    }

    else
    {
      if (v111 != 7)
      {
        if (v111 != 8)
        {
          if (v111 == 13 && (*(&v111 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v11 = v12[12];
            if (v11 <= v15)
            {
              goto LABEL_196;
            }

            v31 = strlen(*(v12[14] + v27));
            *v105 = *(v12[14] + v27);
            *&v105[8] = v31;
            re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
            if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
            {
              (*(**(&v119 + 1) + 40))();
            }

            v94[0] = "scale";
            v94[1] = 5;
            re::RigDataValue::attributeValue(&v109, v94, &v118);
            v87 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(&v118 + 1), v32);
            v93[0] = "rotation";
            v93[1] = 8;
            re::RigDataValue::attributeValue(&v109, v93, v105);
            v34 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v105[8], v33);
            v3 = *v34;
            v35 = *(v34 + 8);
            v89[0] = "translation";
            v89[1] = 11;
            re::RigDataValue::attributeValue(&v109, v89, v90);
            v37 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v90[1], v36);
            v40 = *v37;
            v39 = v37[1];
            v95 = v87;
            v96 = v3;
            v97 = v35;
            v98 = v40;
            v99 = v39;
            if (v90[0] & 1) == 0 && v91 && (v92)
            {
              (*(*v91 + 40))();
            }

            if (v105[0] & 1) == 0 && *&v107[4] && (v107[12])
            {
              (*(**&v107[4] + 40))();
            }

            if (v118 & 1) == 0 && *(&v119 + 1) && (v120)
            {
              (*(**(&v119 + 1) + 40))();
            }

            v41 = *(v10 + 232);
            if (v41 <= v15)
            {
              goto LABEL_197;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*v88 + v30, &v95);
          }

          goto LABEL_154;
        }

        v11 = v12[12];
        if (v11 <= v15)
        {
          goto LABEL_181;
        }

        v3 = *(v12[14] + v27);
        v75 = strlen(v3);
        *v105 = v3;
        *&v105[8] = v75;
        re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
        if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
        {
          (*(**(&v119 + 1) + 40))();
        }

        v77 = *(v10 + 232);
        if (v77 <= v15)
        {
          goto LABEL_188;
        }

        v56 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v88 + v30, v76);
LABEL_153:
        *v56 = v114;
        goto LABEL_154;
      }

      v11 = v12[12];
      if (v11 <= v15)
      {
        goto LABEL_183;
      }

      v3 = *(v12[14] + v27);
      v64 = strlen(v3);
      *v105 = v3;
      *&v105[8] = v64;
      re::RigDataValue::setRigDataValue(&v109, v105, 1, &v118);
      if (v118 != 1 && *(&v119 + 1) && (v120 & 1) != 0)
      {
        (*(**(&v119 + 1) + 40))();
      }

      v66 = *(v10 + 232);
      if (v66 <= v15)
      {
        goto LABEL_186;
      }

      v67 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v88 + v30, v65);
      *v67 = v114;
    }

LABEL_154:
    re::RigDataValue::~RigDataValue(&v109);
    v15 = (v15 + 1);
    v78 = v12[54];
    v30 += 288;
    v27 += 40;
  }

  while (v15 < v78);
  *&v109 = 0;
  v9 = v7 + 88;
  if (v78)
  {
    for (i = 0; i < v78; *&v109 = i)
    {
      v80 = (v12[56] + 16 * i);
      if (*v80 <= 1uLL)
      {
        v81 = v80[1];
        if (v81 == "" || !*v81)
        {
          re::DynamicArray<unsigned long>::add(v10, &v109);
          i = v109;
          v78 = v12[54];
        }
      }

      ++i;
    }
  }

LABEL_164:
  if (v100 & 1) == 0 && v103 && (v104)
  {
    (*(*v103 + 40))();
  }

  if (v108[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v108[8]);
  }

  else if (*&v108[24] && (v108[32] & 1) != 0)
  {
    (*(**&v108[24] + 40))();
  }

LABEL_173:
  v82 = *(v7 + 80);
  if (*(v82 + 536))
  {
    re::BlendSpace::init(v9, a2, (v82 + 536), a3);
  }

  if (*a3 | *(a3 + 16))
  {
    re::AnimationBlendTreeInstance<float>::initBindPoints<float>(v7 + 280, a2, *(v7 + 80) + 376, a3);
    re::AnimationBlendTreeInstance<float>::initBindPoints<float>(v7 + 304, a2, *(v7 + 80) + 416, a3);
  }

  return v7;
}

uint64_t re::AnimationBlendTree<double>::createInstance(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD428;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<double>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<double>::init(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v4 = a2;
  v145 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<float *>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v3, buf);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v24, v10, 0, v142);
              re::EvaluationSkeletalPose::createInputHandle(v142, (v7 + 2360), &v125);
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_233;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v125);
              v10 = a2;
              if (v125)
              {
                if (v126)
                {
                  (*(*v125 + 40))();
                  v126 = 0;
                  v127 = 0;
                }

                v125 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v142);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v133 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v133);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v133 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v133);
                v110 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v133 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v133);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v133 = "scale";
                *&v133[8] = 5;
                re::RigDataValue::attributeValue(v17, v133, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v135)
                {
                  (*(**&buf[24] + 40))();
                }

                *v133 = "rotation";
                *&v133[8] = 8;
                re::RigDataValue::attributeValue(v17, v133, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v110;
                if (buf[0] & 1) == 0 && *&buf[24] && (v135)
                {
                  (*(**&buf[24] + 40))();
                }

                *v133 = "translation";
                *&v133[8] = 11;
                re::RigDataValue::attributeValue(v17, v133, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v135)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v133 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v133);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v133 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v133);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v133 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v133);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v133 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v133);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v133 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v133);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v133 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v133);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v135 = 0u;
            memset(buf, 0, sizeof(buf));
            *v133 = 3;
            memset(&v133[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v133);
            *v133 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v133);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v135 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v133 = 4;
            memset(&v133[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v133);
            *v133 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v133);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v133);
  re::RigGraphCompilation::operator=((v7 + 160), &v133[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_234;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v26 + 184), v10, 0, buf);
    re::EvaluationSkeletalPose::createOutputHandle(buf, (v7 + 2360), v142);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v142);
    if (v142[0])
    {
      if (v142[1])
      {
        (*(*v142[0] + 40))();
        v142[1] = 0;
        v142[2] = 0;
      }

      v142[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v7 + 2360), buf);
  (*(*(v7 + 5600) + 32))(&v125);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v4, buf);
    if (v135 <= 4u)
    {
      if (v135 > 2u)
      {
        if (v135 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_223;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v130 = v3;
          *&v130[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
          if (LOBYTE(v142[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v142[3] && (v142[4] & 1) != 0)
            {
              (*(*v142[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_231;
          }

          v72 = v138;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v135 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_218;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v130 = v3;
          *&v130[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
          if (LOBYTE(v142[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v142[3] && (v142[4] & 1) != 0)
            {
              (*(*v142[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_230;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v139;
          v65 = v140;
          *v64 = v138;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v135 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_217;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v130 = v3;
          *&v130[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
          if (LOBYTE(v142[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v142[3] && (v142[4] & 1) != 0)
            {
              (*(*v142[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_228;
          }

          v70 = *v27;
          v61 = v138;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v135 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_221;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v130 = v3;
          *&v130[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
          if (LOBYTE(v142[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v142[3] && (v142[4] & 1) != 0)
            {
              (*(*v142[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_226;
          }

          v60 = *v27;
          v61 = v138;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v135 <= 6u)
    {
      if (v135 != 5)
      {
        if (v135 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_219;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v130 = v3;
        *&v130[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
        if (LOBYTE(v142[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v142[3] && (v142[4] & 1) != 0)
          {
            (*(*v142[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_232;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_224;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v130 = v3;
      *&v130[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
      if (LOBYTE(v142[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v142[3] && (v142[4] & 1) != 0)
        {
          (*(*v142[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_229;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v141;
      v79 = v138;
      v78 = v139;
      v76[2] = v140;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v135 != 7)
      {
        if (v135 != 8)
        {
          if (v135 == 13 && (*(&v135 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_235;
            }

            v30 = strlen(*(v8[14] + v29));
            *v130 = *(v8[14] + v29);
            *&v130[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
            if (LOBYTE(v142[0]) != 1 && v142[3] && (v142[4] & 1) != 0)
            {
              (*(*v142[3] + 40))();
            }

            v119[0] = "scale";
            v119[1] = 5;
            re::RigDataValue::attributeValue(buf, v119, v142);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v142[1], v31);
            v33 = *v32;
            v111 = v32[1];
            v118[0] = "rotation";
            v118[1] = 8;
            re::RigDataValue::attributeValue(buf, v118, v130);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v130[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v114[0] = "translation";
            v114[1] = 11;
            re::RigDataValue::attributeValue(buf, v114, v115);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v115[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v120 = v33;
            *(&v120 + 1) = v111;
            v121 = v36;
            v122 = v3;
            v123 = v41;
            v124 = v40;
            if (v115[0] & 1) == 0 && v116 && (v117)
            {
              (*(*v116 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v130[0] & 1) == 0 && *&v132[4] && (v132[12])
            {
              (*(**&v132[4] + 40))();
            }

            if (v142[0] & 1) == 0 && v142[3] && (v142[4])
            {
              (*(*v142[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_236;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v120);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_220;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v130 = v3;
        *&v130[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
        if (LOBYTE(v142[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v142[3] && (v142[4] & 1) != 0)
          {
            (*(*v142[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_227;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v138;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_222;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v130 = v3;
      *&v130[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v130, 1, v142);
      if (LOBYTE(v142[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v142[3] && (v142[4] & 1) != 0)
        {
          (*(*v142[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_225;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v138;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v125 & 1) == 0 && v128 && (v129)
  {
    (*(*v128 + 40))();
  }

  if (v133[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v133[8]);
  }

  else if (*&v133[24] && (v133[32] & 1) != 0)
  {
    (*(**&v133[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        v125 = *(*(v86 + 408) + v88);
        v126 = v89;
        re::BindNode::bindPointWithOverride(a3, re::introspect<float>(BOOL)::info, &v125, v133);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_214;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v133;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v133[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v133[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v133[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      v125 = 0;
      __s1 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v142[0]) = 136315906;
      *(v142 + 4) = "operator[]";
      WORD2(v142[1]) = 1024;
      *(&v142[1] + 6) = 797;
      WORD1(v142[2]) = 2048;
      *(&v142[2] + 4) = v87;
      WORD2(v142[3]) = 2048;
      *(&v142[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v130 = 0;
      __s1 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v142[0]) = 136315906;
      *(v142 + 4) = "operator[]";
      WORD2(v142[1]) = 1024;
      *(&v142[1] + 6) = 468;
      WORD1(v142[2]) = 2048;
      *(&v142[2] + 4) = v87;
      WORD2(v142[3]) = 2048;
      *(&v142[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v125 = 0;
      __s1 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v142[0]) = 136315906;
      *(v142 + 4) = "operator[]";
      WORD2(v142[1]) = 1024;
      *(&v142[1] + 6) = 797;
      WORD1(v142[2]) = 2048;
      *(&v142[2] + 4) = v10;
      WORD2(v142[3]) = 2048;
      *(&v142[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v130 = 0;
      __s1 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v142[0]) = 136315906;
      *(v142 + 4) = "operator[]";
      WORD2(v142[1]) = 1024;
      *(&v142[1] + 6) = 468;
      WORD1(v142[2]) = 2048;
      *(&v142[2] + 4) = v10;
      WORD2(v142[3]) = 2048;
      *(&v142[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_218:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_219:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_220:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_222:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_223:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_224:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_225:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash();
      __break(1u);
LABEL_226:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash();
      __break(1u);
LABEL_228:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash();
      __break(1u);
LABEL_229:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash();
      __break(1u);
LABEL_230:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash();
      __break(1u);
LABEL_231:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash();
      __break(1u);
LABEL_232:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash();
      __break(1u);
LABEL_233:
      *v130 = 0;
      __s1 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v133 = 136315906;
      *&v133[4] = "operator[]";
      *&v133[12] = 1024;
      *&v133[14] = 789;
      *&v133[18] = 2048;
      *&v133[20] = v3;
      *&v133[28] = 2048;
      *&v133[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_235:
      v115[0] = 0;
      v143 = 0u;
      v144 = 0u;
      memset(v142, 0, sizeof(v142));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v130 = 136315906;
      *&v130[4] = "operator[]";
      *&v130[12] = 1024;
      *&v130[14] = 797;
      v131 = 2048;
      *v132 = v4;
      *&v132[8] = 2048;
      *&v132[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_236:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash();
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<double>(BOOL)::info = re::introspect_double(0, v109);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        v125 = v3;
        v126 = v101;
        re::BindNode::bindPointWithOverride(a3, re::introspect<double>(BOOL)::info, &v125, v133);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_216;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v133;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v133[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v133[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v133[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_215;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Vector2<float>>::createInstance(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD508;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Vector2<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Vector2<float>>::init(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v4 = a2;
  v144 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v3, buf);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v24, v10, 0, v141);
              re::EvaluationSkeletalPose::createInputHandle(v141, (v7 + 2360), &v124);
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_233;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v124);
              v10 = a2;
              if (v124)
              {
                if (v125)
                {
                  (*(*v124 + 40))();
                  v125 = 0;
                  v126 = 0;
                }

                v124 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v141);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
                v109 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = "scale";
                *&v132[8] = 5;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "rotation";
                *&v132[8] = 8;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v109;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "translation";
                *&v132[8] = 11;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v132 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v132 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v132 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v132);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v132 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v132);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v132 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v132);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v132 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v132);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v134 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 3;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v132);
            *v132 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v132);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v134 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 4;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v132);
            *v132 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v132);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v132);
  re::RigGraphCompilation::operator=((v7 + 160), &v132[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_234;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v26 + 184), v10, 0, buf);
    re::EvaluationSkeletalPose::createOutputHandle(buf, (v7 + 2360), v141);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v141);
    if (v141[0])
    {
      if (v141[1])
      {
        (*(*v141[0] + 40))();
        v141[1] = 0;
        v141[2] = 0;
      }

      v141[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v7 + 2360), buf);
  (*(*(v7 + 5600) + 32))(&v124);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v4, buf);
    if (v134 <= 4u)
    {
      if (v134 > 2u)
      {
        if (v134 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_223;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_231;
          }

          v72 = v137;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v134 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_218;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_230;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v138;
          v65 = v139;
          *v64 = v137;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v134 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_217;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_228;
          }

          v70 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v134 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_221;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_226;
          }

          v60 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v134 <= 6u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_219;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_232;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_224;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_229;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v140;
      v79 = v137;
      v78 = v138;
      v76[2] = v139;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v134 != 7)
      {
        if (v134 != 8)
        {
          if (v134 == 13 && (*(&v134 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_235;
            }

            v30 = strlen(*(v8[14] + v29));
            *v129 = *(v8[14] + v29);
            *&v129[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
            if (LOBYTE(v141[0]) != 1 && v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }

            v118[0] = "scale";
            v118[1] = 5;
            re::RigDataValue::attributeValue(buf, v118, v141);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v141[1], v31);
            v33 = *v32;
            v110 = v32[1];
            v117[0] = "rotation";
            v117[1] = 8;
            re::RigDataValue::attributeValue(buf, v117, v129);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v129[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v113[0] = "translation";
            v113[1] = 11;
            re::RigDataValue::attributeValue(buf, v113, v114);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v114[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v119 = v33;
            *(&v119 + 1) = v110;
            v120 = v36;
            v121 = v3;
            v122 = v41;
            v123 = v40;
            if (v114[0] & 1) == 0 && v115 && (v116)
            {
              (*(*v115 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v129[0] & 1) == 0 && *&v131[4] && (v131[12])
            {
              (*(**&v131[4] + 40))();
            }

            if (v141[0] & 1) == 0 && v141[3] && (v141[4])
            {
              (*(*v141[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_236;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v119);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_220;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_227;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v137;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_222;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_225;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v137;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v124 & 1) == 0 && v127 && (v128)
  {
    (*(*v127 + 40))();
  }

  if (v132[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v132[8]);
  }

  else if (*&v132[24] && (v132[32] & 1) != 0)
  {
    (*(**&v132[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        v124 = *(*(v86 + 408) + v88);
        v125 = v89;
        re::BindNode::bindPointWithOverride(a3, re::introspect<float>(BOOL)::info, &v124, v132);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_214;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_218:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_219:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_220:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_222:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_223:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_224:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_225:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash();
      __break(1u);
LABEL_226:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash();
      __break(1u);
LABEL_228:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash();
      __break(1u);
LABEL_229:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash();
      __break(1u);
LABEL_230:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash();
      __break(1u);
LABEL_231:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash();
      __break(1u);
LABEL_232:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash();
      __break(1u);
LABEL_233:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v132 = 136315906;
      *&v132[4] = "operator[]";
      *&v132[12] = 1024;
      *&v132[14] = 789;
      *&v132[18] = 2048;
      *&v132[20] = v3;
      *&v132[28] = 2048;
      *&v132[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_235:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_236:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash();
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        v124 = v3;
        v125 = v101;
        re::BindNode::bindPointWithOverride(a3, re::introspect<re::Vector2<float>>(BOOL)::info, &v124, v132);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_216;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_215;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Vector3<float>>::createInstance(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD5E8;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Vector3<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Vector3<float>>::init(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v4 = a2;
  v144 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Quaternion<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v3, buf);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v24, v10, 0, v141);
              re::EvaluationSkeletalPose::createInputHandle(v141, (v7 + 2360), &v124);
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_233;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v124);
              v10 = a2;
              if (v124)
              {
                if (v125)
                {
                  (*(*v124 + 40))();
                  v125 = 0;
                  v126 = 0;
                }

                v124 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v141);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
                v109 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = "scale";
                *&v132[8] = 5;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "rotation";
                *&v132[8] = 8;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v109;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "translation";
                *&v132[8] = 11;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v132 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v132 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v132 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v132);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v132 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v132);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v132 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v132);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v132 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v132);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v134 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 3;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v132);
            *v132 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v132);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v134 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 4;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v132);
            *v132 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v132);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v132);
  re::RigGraphCompilation::operator=((v7 + 160), &v132[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_234;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v26 + 184), v10, 0, buf);
    re::EvaluationSkeletalPose::createOutputHandle(buf, (v7 + 2360), v141);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v141);
    if (v141[0])
    {
      if (v141[1])
      {
        (*(*v141[0] + 40))();
        v141[1] = 0;
        v141[2] = 0;
      }

      v141[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v7 + 2360), buf);
  (*(*(v7 + 5600) + 32))(&v124);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v4, buf);
    if (v134 <= 4u)
    {
      if (v134 > 2u)
      {
        if (v134 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_223;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_231;
          }

          v72 = v137;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v134 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_218;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_230;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v138;
          v65 = v139;
          *v64 = v137;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v134 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_217;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_228;
          }

          v70 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v134 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_221;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_226;
          }

          v60 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v134 <= 6u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_219;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_232;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_224;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_229;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v140;
      v79 = v137;
      v78 = v138;
      v76[2] = v139;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v134 != 7)
      {
        if (v134 != 8)
        {
          if (v134 == 13 && (*(&v134 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_235;
            }

            v30 = strlen(*(v8[14] + v29));
            *v129 = *(v8[14] + v29);
            *&v129[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
            if (LOBYTE(v141[0]) != 1 && v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }

            v118[0] = "scale";
            v118[1] = 5;
            re::RigDataValue::attributeValue(buf, v118, v141);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v141[1], v31);
            v33 = *v32;
            v110 = v32[1];
            v117[0] = "rotation";
            v117[1] = 8;
            re::RigDataValue::attributeValue(buf, v117, v129);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v129[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v113[0] = "translation";
            v113[1] = 11;
            re::RigDataValue::attributeValue(buf, v113, v114);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v114[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v119 = v33;
            *(&v119 + 1) = v110;
            v120 = v36;
            v121 = v3;
            v122 = v41;
            v123 = v40;
            if (v114[0] & 1) == 0 && v115 && (v116)
            {
              (*(*v115 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v129[0] & 1) == 0 && *&v131[4] && (v131[12])
            {
              (*(**&v131[4] + 40))();
            }

            if (v141[0] & 1) == 0 && v141[3] && (v141[4])
            {
              (*(*v141[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_236;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v119);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_220;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_227;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v137;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_222;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_225;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v137;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v124 & 1) == 0 && v127 && (v128)
  {
    (*(*v127 + 40))();
  }

  if (v132[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v132[8]);
  }

  else if (*&v132[24] && (v132[32] & 1) != 0)
  {
    (*(**&v132[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        v124 = *(*(v86 + 408) + v88);
        v125 = v89;
        re::BindNode::bindPointWithOverride(a3, re::introspect<float>(BOOL)::info, &v124, v132);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_214;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_218:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_219:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_220:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_222:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_223:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_224:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_225:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash();
      __break(1u);
LABEL_226:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash();
      __break(1u);
LABEL_228:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash();
      __break(1u);
LABEL_229:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash();
      __break(1u);
LABEL_230:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash();
      __break(1u);
LABEL_231:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash();
      __break(1u);
LABEL_232:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash();
      __break(1u);
LABEL_233:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v132 = 136315906;
      *&v132[4] = "operator[]";
      *&v132[12] = 1024;
      *&v132[14] = 789;
      *&v132[18] = 2048;
      *&v132[20] = v3;
      *&v132[28] = 2048;
      *&v132[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_235:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_236:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash();
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        v124 = v3;
        v125 = v101;
        re::BindNode::bindPointWithOverride(a3, re::introspect<re::Vector3<float>>(BOOL)::info, &v124, v132);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_216;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_215;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Vector4<float>>::createInstance(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD6C8;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Vector4<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Vector4<float>>::init(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v4 = a2;
  v144 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Vector4<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v3, buf);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v24, v10, 0, v141);
              re::EvaluationSkeletalPose::createInputHandle(v141, (v7 + 2360), &v124);
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_233;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v124);
              v10 = a2;
              if (v124)
              {
                if (v125)
                {
                  (*(*v124 + 40))();
                  v125 = 0;
                  v126 = 0;
                }

                v124 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v141);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
                v109 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = "scale";
                *&v132[8] = 5;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "rotation";
                *&v132[8] = 8;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v109;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "translation";
                *&v132[8] = 11;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v132 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v132 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v132 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v132);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v132 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v132);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v132 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v132);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v132 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v132);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v134 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 3;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v132);
            *v132 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v132);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v134 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 4;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v132);
            *v132 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v132);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v132);
  re::RigGraphCompilation::operator=((v7 + 160), &v132[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_234;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v26 + 184), v10, 0, buf);
    re::EvaluationSkeletalPose::createOutputHandle(buf, (v7 + 2360), v141);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v141);
    if (v141[0])
    {
      if (v141[1])
      {
        (*(*v141[0] + 40))();
        v141[1] = 0;
        v141[2] = 0;
      }

      v141[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v7 + 2360), buf);
  (*(*(v7 + 5600) + 32))(&v124);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v4, buf);
    if (v134 <= 4u)
    {
      if (v134 > 2u)
      {
        if (v134 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_223;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_231;
          }

          v72 = v137;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v134 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_218;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_230;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v138;
          v65 = v139;
          *v64 = v137;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v134 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_217;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_228;
          }

          v70 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v134 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_221;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_226;
          }

          v60 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v134 <= 6u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_219;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_232;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_224;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_229;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v140;
      v79 = v137;
      v78 = v138;
      v76[2] = v139;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v134 != 7)
      {
        if (v134 != 8)
        {
          if (v134 == 13 && (*(&v134 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_235;
            }

            v30 = strlen(*(v8[14] + v29));
            *v129 = *(v8[14] + v29);
            *&v129[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
            if (LOBYTE(v141[0]) != 1 && v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }

            v118[0] = "scale";
            v118[1] = 5;
            re::RigDataValue::attributeValue(buf, v118, v141);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v141[1], v31);
            v33 = *v32;
            v110 = v32[1];
            v117[0] = "rotation";
            v117[1] = 8;
            re::RigDataValue::attributeValue(buf, v117, v129);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v129[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v113[0] = "translation";
            v113[1] = 11;
            re::RigDataValue::attributeValue(buf, v113, v114);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v114[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v119 = v33;
            *(&v119 + 1) = v110;
            v120 = v36;
            v121 = v3;
            v122 = v41;
            v123 = v40;
            if (v114[0] & 1) == 0 && v115 && (v116)
            {
              (*(*v115 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v129[0] & 1) == 0 && *&v131[4] && (v131[12])
            {
              (*(**&v131[4] + 40))();
            }

            if (v141[0] & 1) == 0 && v141[3] && (v141[4])
            {
              (*(*v141[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_236;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v119);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_220;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_227;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v137;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_222;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_225;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v137;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v124 & 1) == 0 && v127 && (v128)
  {
    (*(*v127 + 40))();
  }

  if (v132[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v132[8]);
  }

  else if (*&v132[24] && (v132[32] & 1) != 0)
  {
    (*(**&v132[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        v124 = *(*(v86 + 408) + v88);
        v125 = v89;
        re::BindNode::bindPointWithOverride(a3, re::introspect<float>(BOOL)::info, &v124, v132);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_214;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_218:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_219:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_220:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_222:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_223:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_224:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_225:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash();
      __break(1u);
LABEL_226:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash();
      __break(1u);
LABEL_228:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash();
      __break(1u);
LABEL_229:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash();
      __break(1u);
LABEL_230:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash();
      __break(1u);
LABEL_231:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash();
      __break(1u);
LABEL_232:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash();
      __break(1u);
LABEL_233:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v132 = 136315906;
      *&v132[4] = "operator[]";
      *&v132[12] = 1024;
      *&v132[14] = 789;
      *&v132[18] = 2048;
      *&v132[20] = v3;
      *&v132[28] = 2048;
      *&v132[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_235:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_236:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash();
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        v124 = v3;
        v125 = v101;
        re::BindNode::bindPointWithOverride(a3, re::introspect<re::Vector4<float>>(BOOL)::info, &v124, v132);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_216;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_215;
    }
  }
}

uint64_t re::AnimationBlendTree<re::Quaternion<float>>::createInstance(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD7A8;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::Quaternion<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::Quaternion<float>>::init(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v4 = a2;
  v144 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Quaternion<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v3, buf);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v24, v10, 0, v141);
              re::EvaluationSkeletalPose::createInputHandle(v141, (v7 + 2360), &v124);
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_233;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v124);
              v10 = a2;
              if (v124)
              {
                if (v125)
                {
                  (*(*v124 + 40))();
                  v125 = 0;
                  v126 = 0;
                }

                v124 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v141);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
                v109 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = "scale";
                *&v132[8] = 5;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "rotation";
                *&v132[8] = 8;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v109;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "translation";
                *&v132[8] = 11;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v132 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v132 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v132 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v132);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v132 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v132);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v132 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v132);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v132 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v132);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v134 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 3;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v132);
            *v132 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v132);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v134 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 4;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v132);
            *v132 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v132);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v132);
  re::RigGraphCompilation::operator=((v7 + 160), &v132[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_234;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v26 + 184), v10, 0, buf);
    re::EvaluationSkeletalPose::createOutputHandle(buf, (v7 + 2360), v141);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v141);
    if (v141[0])
    {
      if (v141[1])
      {
        (*(*v141[0] + 40))();
        v141[1] = 0;
        v141[2] = 0;
      }

      v141[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v7 + 2360), buf);
  (*(*(v7 + 5600) + 32))(&v124);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v4, buf);
    if (v134 <= 4u)
    {
      if (v134 > 2u)
      {
        if (v134 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_223;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_231;
          }

          v72 = v137;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v134 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_218;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_230;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v138;
          v65 = v139;
          *v64 = v137;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v134 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_217;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_228;
          }

          v70 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v134 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_221;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_226;
          }

          v60 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v134 <= 6u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_219;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_232;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_224;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_229;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v140;
      v79 = v137;
      v78 = v138;
      v76[2] = v139;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v134 != 7)
      {
        if (v134 != 8)
        {
          if (v134 == 13 && (*(&v134 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_235;
            }

            v30 = strlen(*(v8[14] + v29));
            *v129 = *(v8[14] + v29);
            *&v129[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
            if (LOBYTE(v141[0]) != 1 && v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }

            v118[0] = "scale";
            v118[1] = 5;
            re::RigDataValue::attributeValue(buf, v118, v141);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v141[1], v31);
            v33 = *v32;
            v110 = v32[1];
            v117[0] = "rotation";
            v117[1] = 8;
            re::RigDataValue::attributeValue(buf, v117, v129);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v129[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v113[0] = "translation";
            v113[1] = 11;
            re::RigDataValue::attributeValue(buf, v113, v114);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v114[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v119 = v33;
            *(&v119 + 1) = v110;
            v120 = v36;
            v121 = v3;
            v122 = v41;
            v123 = v40;
            if (v114[0] & 1) == 0 && v115 && (v116)
            {
              (*(*v115 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v129[0] & 1) == 0 && *&v131[4] && (v131[12])
            {
              (*(**&v131[4] + 40))();
            }

            if (v141[0] & 1) == 0 && v141[3] && (v141[4])
            {
              (*(*v141[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_236;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v119);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_220;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_227;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v137;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_222;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_225;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v137;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v124 & 1) == 0 && v127 && (v128)
  {
    (*(*v127 + 40))();
  }

  if (v132[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v132[8]);
  }

  else if (*&v132[24] && (v132[32] & 1) != 0)
  {
    (*(**&v132[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        v124 = *(*(v86 + 408) + v88);
        v125 = v89;
        re::BindNode::bindPointWithOverride(a3, re::introspect<float>(BOOL)::info, &v124, v132);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_214;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_218:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_219:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_220:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_222:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_223:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_224:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_225:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash();
      __break(1u);
LABEL_226:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash();
      __break(1u);
LABEL_228:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash();
      __break(1u);
LABEL_229:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash();
      __break(1u);
LABEL_230:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash();
      __break(1u);
LABEL_231:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash();
      __break(1u);
LABEL_232:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash();
      __break(1u);
LABEL_233:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v132 = 136315906;
      *&v132[4] = "operator[]";
      *&v132[12] = 1024;
      *&v132[14] = 789;
      *&v132[18] = 2048;
      *&v132[20] = v3;
      *&v132[28] = 2048;
      *&v132[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_235:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_236:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash();
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        v124 = v3;
        v125 = v101;
        re::BindNode::bindPointWithOverride(a3, re::introspect<re::Quaternion<float>>(BOOL)::info, &v124, v132);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_216;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_215;
    }
  }
}

uint64_t re::AnimationBlendTree<re::GenericSRT<float>>::createInstance(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD888;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::GenericSRT<float>>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::GenericSRT<float>>::init(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v4 = a2;
  v144 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v3, buf);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v24, v10, 0, v141);
              re::EvaluationSkeletalPose::createInputHandle(v141, (v7 + 2360), &v124);
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_233;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v124);
              v10 = a2;
              if (v124)
              {
                if (v125)
                {
                  (*(*v124 + 40))();
                  v125 = 0;
                  v126 = 0;
                }

                v124 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v141);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
                v109 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = "scale";
                *&v132[8] = 5;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "rotation";
                *&v132[8] = 8;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v109;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "translation";
                *&v132[8] = 11;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v132 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v132 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v132 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v132);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v132 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v132);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v132 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v132);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v132 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v132);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v134 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 3;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v132);
            *v132 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v132);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v134 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 4;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v132);
            *v132 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v132);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v132);
  re::RigGraphCompilation::operator=((v7 + 160), &v132[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_234;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v26 + 184), v10, 0, buf);
    re::EvaluationSkeletalPose::createOutputHandle(buf, (v7 + 2360), v141);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v141);
    if (v141[0])
    {
      if (v141[1])
      {
        (*(*v141[0] + 40))();
        v141[1] = 0;
        v141[2] = 0;
      }

      v141[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v7 + 2360), buf);
  (*(*(v7 + 5600) + 32))(&v124);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v4, buf);
    if (v134 <= 4u)
    {
      if (v134 > 2u)
      {
        if (v134 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_223;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_231;
          }

          v72 = v137;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v134 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_218;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_230;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v138;
          v65 = v139;
          *v64 = v137;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v134 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_217;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_228;
          }

          v70 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v134 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_221;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_226;
          }

          v60 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v134 <= 6u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_219;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_232;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_224;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_229;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v140;
      v79 = v137;
      v78 = v138;
      v76[2] = v139;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v134 != 7)
      {
        if (v134 != 8)
        {
          if (v134 == 13 && (*(&v134 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_235;
            }

            v30 = strlen(*(v8[14] + v29));
            *v129 = *(v8[14] + v29);
            *&v129[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
            if (LOBYTE(v141[0]) != 1 && v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }

            v118[0] = "scale";
            v118[1] = 5;
            re::RigDataValue::attributeValue(buf, v118, v141);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v141[1], v31);
            v33 = *v32;
            v110 = v32[1];
            v117[0] = "rotation";
            v117[1] = 8;
            re::RigDataValue::attributeValue(buf, v117, v129);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v129[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v113[0] = "translation";
            v113[1] = 11;
            re::RigDataValue::attributeValue(buf, v113, v114);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v114[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v119 = v33;
            *(&v119 + 1) = v110;
            v120 = v36;
            v121 = v3;
            v122 = v41;
            v123 = v40;
            if (v114[0] & 1) == 0 && v115 && (v116)
            {
              (*(*v115 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v129[0] & 1) == 0 && *&v131[4] && (v131[12])
            {
              (*(**&v131[4] + 40))();
            }

            if (v141[0] & 1) == 0 && v141[3] && (v141[4])
            {
              (*(*v141[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_236;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v119);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_220;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_227;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v137;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_222;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_225;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v137;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v124 & 1) == 0 && v127 && (v128)
  {
    (*(*v127 + 40))();
  }

  if (v132[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v132[8]);
  }

  else if (*&v132[24] && (v132[32] & 1) != 0)
  {
    (*(**&v132[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        v124 = *(*(v86 + 408) + v88);
        v125 = v89;
        re::BindNode::bindPointWithOverride(a3, re::introspect<float>(BOOL)::info, &v124, v132);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_214;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_218:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_219:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_220:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_222:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_223:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_224:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_225:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash();
      __break(1u);
LABEL_226:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash();
      __break(1u);
LABEL_228:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash();
      __break(1u);
LABEL_229:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash();
      __break(1u);
LABEL_230:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash();
      __break(1u);
LABEL_231:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash();
      __break(1u);
LABEL_232:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash();
      __break(1u);
LABEL_233:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v132 = 136315906;
      *&v132[4] = "operator[]";
      *&v132[12] = 1024;
      *&v132[14] = 789;
      *&v132[18] = 2048;
      *&v132[20] = v3;
      *&v132[28] = 2048;
      *&v132[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_235:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_236:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash();
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        v124 = v3;
        v125 = v101;
        re::BindNode::bindPointWithOverride(a3, re::introspect<re::GenericSRT<float>>(BOOL)::info, &v124, v132);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_216;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_215;
    }
  }
}