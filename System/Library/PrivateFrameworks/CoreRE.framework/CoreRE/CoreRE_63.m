void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetTransitionCondition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetTransitionCondition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::SMAssetTransitionCondition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetTransitionCondition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<long long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<long long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<long long>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<long long>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<long long>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<long long>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<float *>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4);
  *(v9 + 8 * v8) = 0;
  v10 = v8 + 1;
  *(this + 2) = v10;
  ++*(this + 6);
  v11 = (v9 + 8 * v10 - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<long long>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateTransition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateTransition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetStateTransition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetStateTransition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetStateTransition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v20 = 0;
  v8 = 0uLL;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateTransition>::growCapacity(this, v9 + 1);
    v8 = 0uLL;
    v9 = *(this + 2);
  }

  v10 = *(this + 4) + 96 * v9;
  *v10 = v8;
  v14 = v8;
  *(v10 + 16) = 0;
  v15 = 0;
  *(v10 + 32) = 0;
  *(&v16 + 1) = 0;
  LODWORD(v16) = 1;
  *(v10 + 24) = 1;
  *(v10 + 40) = 0;
  *(v10 + 48) = &str_67;
  *(v10 + 56) = 0;
  *(v10 + 64) = &str_67;
  *(v10 + 72) = 0;
  *(v10 + 80) = &str_67;
  v11 = v20;
  *(v10 + 92) = BYTE4(v20);
  *(v10 + 88) = v11;
  ++*(this + 2);
  ++*(this + 6);
  *&v19 = 0;
  *(&v19 + 1) = &str_67;
  *&v18 = 0;
  *(&v18 + 1) = &str_67;
  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  re::DynamicArray<re::SMAssetTransitionCondition>::deinit(&v14);
  v12 = (*(this + 4) + 96 * *(this + 2) - 96);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v12);
  return v12;
}

uint64_t re::IntrospectionDynamicArray<re::SMAssetStateTransition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::SMAssetStateTransition>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::StringID::destroyString((v10 + 72));
      re::StringID::destroyString((v10 + 56));
      re::StringID::destroyString((v10 + 40));
      result = re::DynamicArray<re::SMAssetTransitionCondition>::deinit(v10);
      ++v9;
      v8 += 96;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 48) = &str_67;
        *(v7 + 64) = &str_67;
        *(v7 + 80) = &str_67;
        *(v7 + 92) = 0;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::SMAssetStateTransition>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetStateTransition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetStateTransition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetStateTransition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetStateTransition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::SMAssetStateTransition>::resize(a1, a4);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateTransition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateCommand>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetStateCommand>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetStateCommand>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetStateCommand>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  v45 = &str_67;
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateCommand>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = re::SMAssetStateCommand::SMAssetStateCommand(*(this + 4) + 424 * v8, v27);
  ++*(this + 2);
  ++*(this + 6);
  if (BYTE8(v44))
  {
    if (BYTE8(v44))
    {
    }
  }

  *(&v44 + 1) = 0;
  v45 = &str_67;
  re::DynamicArray<re::StringID>::deinit(&v43[2] + 8);
  re::DynamicArray<re::StringID>::deinit(v43);
  if (*(&v40 + 1))
  {
    if (*(&v42 + 1))
    {
      (*(**(&v40 + 1) + 40))(*(&v40 + 1), *(&v42 + 1), v13, v14, v15);
    }

    *(&v42 + 1) = 0;
    v41 = 0uLL;
    *(&v40 + 1) = 0;
    LODWORD(v42) = v42 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v39);
  if (*(&v36 + 1))
  {
    if (*(&v38 + 1))
    {
      (*(**(&v36 + 1) + 40))(*(&v36 + 1), *(&v38 + 1), v16, v17, v18);
    }

    *(&v38 + 1) = 0;
    v37 = 0uLL;
    *(&v36 + 1) = 0;
    LODWORD(v38) = v38 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v35);
  if (*(&v32 + 1))
  {
    if (*(&v34 + 1))
    {
      (*(**(&v32 + 1) + 40))(*(&v32 + 1), *(&v34 + 1), v19, v20, v21);
    }

    *(&v34 + 1) = 0;
    v33 = 0uLL;
    *(&v32 + 1) = 0;
    LODWORD(v34) = v34 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v31);
  if (*(&v28 + 1))
  {
    if (*(&v30 + 1))
    {
      (*(**(&v28 + 1) + 40))(*(&v28 + 1), *(&v30 + 1), v22, v23, v24);
    }

    *(&v30 + 1) = 0;
    v29 = 0uLL;
    *(&v28 + 1) = 0;
    LODWORD(v30) = v30 + 1;
  }

  re::DynamicArray<re::StringID>::deinit(v27);
  v25 = (*(this + 4) + 424 * *(this + 2) - 424);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v25);
  return v25;
}

uint64_t re::IntrospectionDynamicArray<re::SMAssetStateCommand>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 424 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 424 * a3;
}

void *re::DynamicArray<re::SMAssetStateCommand>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 424 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::StringID::destroyString((v10 + 408));
      re::DynamicArray<re::StringID>::deinit(v10 + 360);
      re::DynamicArray<re::StringID>::deinit(v10 + 320);
      re::DynamicArray<unsigned long>::deinit(v10 + 280);
      re::DynamicArray<re::StringID>::deinit(v10 + 240);
      re::DynamicArray<unsigned long>::deinit(v10 + 200);
      re::DynamicArray<re::StringID>::deinit(v10 + 160);
      re::DynamicArray<unsigned long>::deinit(v10 + 120);
      re::DynamicArray<re::StringID>::deinit(v10 + 80);
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<re::StringID>::deinit(v10);
      ++v9;
      v8 += 424;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 424 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 384) = 0uLL;
        *(v7 + 400) = 0uLL;
        *(v7 + 352) = 0uLL;
        *(v7 + 368) = 0uLL;
        *(v7 + 320) = 0uLL;
        *(v7 + 336) = 0uLL;
        *(v7 + 288) = 0uLL;
        *(v7 + 304) = 0uLL;
        *(v7 + 256) = 0uLL;
        *(v7 + 272) = 0uLL;
        *(v7 + 224) = 0uLL;
        *(v7 + 240) = 0uLL;
        *(v7 + 192) = 0uLL;
        *(v7 + 208) = 0uLL;
        *(v7 + 160) = 0uLL;
        *(v7 + 176) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0uLL;
        *(v7 + 96) = 0uLL;
        *(v7 + 112) = 0uLL;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        v6 += 424;
        *(v7 + 416) = &str_67;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::SMAssetStateCommand>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetStateCommand>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    re::ObjectHelper::destroy<re::SMAssetStateCommand>(*(a1 + 32), *(a1 + 32) + 424 * v8);
  }

  else
  {
    re::DynamicArray<re::SMAssetStateCommand>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetStateCommand>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v9 = re::DynamicArray<re::SMAssetStateCommand>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = 424 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a3, 0);
        re::TypeInfo::construct(v13, v11, a3, 0);
        v11 += 424;
        v12 -= 424;
      }

      while (v12);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 424 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 424 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetState>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetState>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetState>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetState>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetState>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetState>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetState>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetState>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = 0uLL;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetState>::growCapacity(this, v9 + 1);
    v8 = 0uLL;
    v9 = *(this + 2);
  }

  v10 = *(this + 4) + 104 * v9;
  *v10 = v8;
  v13 = v8;
  *(v10 + 16) = 0;
  v14 = 0;
  *(v10 + 32) = 0;
  *(&v15 + 1) = 0;
  LODWORD(v15) = 1;
  *(v10 + 24) = 1;
  *(v10 + 40) = v8;
  v16 = v8;
  *(v10 + 56) = 0;
  *&v17 = 0;
  *(v10 + 72) = 0;
  DWORD2(v17) = 1;
  *(v10 + 64) = 1;
  *&v18 = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = &str_67;
  *(v10 + 96) = 0;
  ++*(this + 2);
  ++*(this + 6);
  *(&v18 + 1) = 0;
  *&v19 = &str_67;
  re::DynamicArray<re::SMAssetStateCommand>::deinit(&v16);
  re::DynamicArray<re::SMAssetStateTransition>::deinit(&v13);
  v11 = (*(this + 4) + 104 * *(this + 2) - 104);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::SMAssetState>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 104 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 104 * a3;
}

void *re::DynamicArray<re::SMAssetState>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 104 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::StringID::destroyString((v10 + 80));
      re::DynamicArray<re::SMAssetStateCommand>::deinit((v10 + 40));
      result = re::DynamicArray<re::SMAssetStateTransition>::deinit(v10);
      ++v9;
      v8 += 104;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetState>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 88) = &str_67;
        *(v7 + 96) = 0;
        v6 += 104;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::SMAssetState>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetState>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetState>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetState>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetState>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetState>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetState>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::SMAssetState>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 104 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 104;
        v11 -= 104;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 104 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 104 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraph>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraph>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetStateGraph>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetStateGraph>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetStateGraph>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = 0uLL;
  v23 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateGraph>::growCapacity(this, v9 + 1);
    v8 = 0uLL;
    v9 = *(this + 2);
  }

  v10 = *(this + 4) + 168 * v9;
  *v10 = v8;
  v14 = v8;
  *(v10 + 16) = 0;
  v15 = 0;
  *(v10 + 32) = 0;
  *(&v16 + 1) = 0;
  LODWORD(v16) = 1;
  *(v10 + 24) = 1;
  *(v10 + 40) = 0;
  *(v10 + 48) = &str_67;
  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  *(v10 + 56) = 0;
  *(v10 + 64) = v8;
  *(v18 + 8) = v8;
  *(v10 + 80) = 0;
  *(&v18[1] + 1) = 0;
  *(v10 + 96) = 0;
  *(&v19 + 1) = 0;
  LODWORD(v19) = 1;
  *(v10 + 88) = 1;
  *(v10 + 104) = v8;
  v20 = v8;
  *(v10 + 120) = 0;
  *&v21 = 0;
  *(v10 + 136) = 0;
  *&v22 = 0;
  DWORD2(v21) = 1;
  *(v10 + 128) = 1;
  *(v10 + 144) = 0;
  *(v10 + 152) = &str_67;
  *(v10 + 160) = 0;
  ++*(this + 2);
  ++*(this + 6);
  *(&v22 + 1) = 0;
  *&v23 = &str_67;
  re::DynamicArray<re::SMAssetStateCommand>::deinit(&v20);
  v11 = re::DynamicArray<re::SMAssetStateTransition>::deinit(v18 + 8);
  if (v17)
  {
  }

  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  re::DynamicArray<re::SMAssetState>::deinit(&v14);
  v12 = (*(this + 4) + 168 * *(this + 2) - 168);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v12);
  return v12;
}

uint64_t re::IntrospectionDynamicArray<re::SMAssetStateGraph>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 168 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 168 * a3;
}

void *re::DynamicArray<re::SMAssetStateGraph>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 168 * a2;
    v9 = a2;
    do
    {
      v10 = (v3[4] + v8);
      re::StringID::destroyString((v10 + 18));
      re::DynamicArray<re::SMAssetStateCommand>::deinit(v10 + 13);
      re::DynamicArray<re::SMAssetStateTransition>::deinit((v10 + 8));
      re::StringID::destroyString((v10 + 5));
      result = re::DynamicArray<re::SMAssetState>::deinit(v10);
      ++v9;
      v8 += 168;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 168 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0uLL;
        *(v7 + 96) = 0uLL;
        *(v7 + 112) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 48) = &str_67;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        *(v7 + 128) = 0;
        *(v7 + 136) = 0;
        *(v7 + 144) = 0;
        v6 += 168;
        *(v7 + 152) = &str_67;
        *(v7 + 160) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::SMAssetStateGraph>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetStateGraph>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetStateGraph>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetStateGraph>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetStateGraph>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::SMAssetStateGraph>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 168 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 168;
        v11 -= 168;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 168 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 168 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraph>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SMAssetStateGraphGroup>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = 0;
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::SMAssetStateGraphGroup>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4) + 40 * v8;
  *v9 = 0u;
  v12 = 0u;
  *(v9 + 16) = 0;
  v13 = 0;
  *(v9 + 32) = 0;
  v15 = 0;
  LODWORD(v14) = 1;
  *(v9 + 24) = 1;
  ++*(this + 2);
  ++*(this + 6);
  re::DynamicArray<re::SMAssetStateGraph>::deinit(&v12);
  v10 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v10);
  return v10;
}

uint64_t re::IntrospectionDynamicArray<re::SMAssetStateGraphGroup>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::DynamicArray<re::SMAssetStateGraphGroup>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      result = re::DynamicArray<re::SMAssetStateGraph>::deinit(v3[4] + v8);
      ++v9;
      v8 += 40;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 32) = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v7 + 24) = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::SMAssetStateGraphGroup>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SMAssetStateGraphGroup>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SMAssetStateGraphGroup>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SMAssetStateGraphGroup>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::SMAssetStateGraphGroup>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SMAssetStateGraphGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::StateMachineInitializationData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::StateMachineInitializationData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::StateMachineInitializationData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::StateMachineInitializationData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphOutputData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::StateMachineInitializationData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphOutputData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::StateMachineInitializationData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = &str_67;
  v8 = re::DynamicArray<re::StateMachineInitializationData>::add(this, v11);
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::StateMachineInitializationData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void *re::DynamicArray<re::StateMachineInitializationData>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::StateMachineInitializationData>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 48 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v8 = a2[4];
  v5[4] = v5[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[5] = a2[5];
  a2[4] = 0;
  a2[5] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::StateMachineInitializationData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphOutputData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::StateMachineInitializationData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RenderGraphOutputData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::RenderGraphOutputData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::StateMachineInitializationData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::makeMeshPayloadWithMeshAsset(re *a1@<X0>, Device **a2@<X1>, uint64_t a3@<X2>, REMultiBufferMeshPayload **a4@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(a1 + 7))
  {
    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47[0] = 1;
    v48 = 0;
    v49 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v53 = 0;
    v55 = 1;
    v56 = 0;
    v57 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v61 = 0;
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(a1 + 12);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 12);
        if (v9 <= i)
        {
          v42[0] = 0;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v70 = 136315906;
          *&v70[4] = "operator[]";
          *&v70[12] = 1024;
          *&v70[14] = 797;
          *&v70[18] = 2048;
          *&v70[20] = i;
          v71 = 2048;
          *v72 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = (*(a1 + 14) + v7);
        v12 = [REAttributeDescriptor alloc];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10[1]];
        v14 = [(REAttributeDescriptor *)v12 initWithName:v13 payloadOffset:v11 count:*(v10 + 24) stride:64];

        [v41 addObject:v14];
        v7 += 112;
      }
    }

    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&v72[2] = 0;
    memset(&v70[8], 0, 20);
    v15 = *(a1 + 2);
    v16 = re::DynamicArray<re::DeformationModelData>::setCapacity(v70, v15);
    ++*&v70[24];
    v45 = 0;
    v42[1] = 0;
    v43 = 0;
    v44 = 0;
    v17 = *(a1 + 2);
    ++v44;
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = *(a1 + 4);
      v20 = v19 + (v18 << 9);
      do
      {
        bzero(buf, 0x2D0uLL);
        for (j = 0; j != 720; j += 40)
        {
          v22 = &buf[j];
          *v22 = 0;
          *(v22 + 4) = 0;
        }

        re::DynamicArray<re::DeformationModelData>::add(v70, buf);
        for (k = 680; k != -40; k -= 40)
        {
          std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&buf[k]);
        }

        v69 = 0;
        v68[1] = 1uLL;
        v67 = 0u;
        v65 = 0u;
        *buf = 0u;
        v64 = 0u;
        DWORD2(v65) = 1;
        v66 = 0uLL;
        *&v67 = 0;
        DWORD2(v67) = 0;
        v68[0] = 0uLL;
        v68[2] = 0uLL;
        re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(v68);
        re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(&v64 + 8);
        v24 = [REMeshModelDescriptor alloc];
        v25 = [(REMeshModelDescriptor *)v24 initWithMeshAssetModel:v19 inverseBindPoseAttributes:v41 deformerBuilders:v45 + 136 * v43 - 136 payloadBuilder:&v46 deformationModelData:*&v72[2] + 720 * *&v70[16] - 720];
        [(_anonymous_namespace_ *)v40 addObject:v25];

        v19 += 512;
      }

      while (v19 != v20);
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = *(a1 + 7);
    if (v27)
    {
      v28 = *(a1 + 9);
      v29 = 96 * v27;
      do
      {
        v30 = [[REMeshInstanceDescriptor alloc] initWithMeshAssetInstance:v28];
        [v26 addObject:v30];

        v28 += 96;
        v29 -= 96;
      }

      while (v29);
    }

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = *(a1 + 12);
    if (v32)
    {
      v33 = *(a1 + 14);
      v34 = 112 * v32;
      do
      {
        v35 = [[REMeshSkeletonDescriptor alloc] initWithMeshAssetSkeleton:v33];
        [v31 addObject:v35];

        v33 += 112;
        v34 -= 112;
      }

      while (v34);
    }

    re::DynamicArray<re::DeformationModelData>::deinit(v70);

    if (v58)
    {
      if (v62)
      {
        (*(*v58 + 40))();
      }

      v62 = 0;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      ++v61;
    }

    if (v50)
    {
      if (v54)
      {
        (*(*v50 + 40))();
      }

      v54 = 0;
      v51 = 0;
      v52 = 0;
      v50 = 0;
      ++v53;
    }
  }

  else
  {
    v36 = *re::assetTypesLogObjects(a1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Tried to make an empty mesh payload", buf, 2u);
    }

    *a4 = 0;
  }
}

void sub_1E20C4DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  re::DynamicArray<re::DeformationModelData>::deinit(v11 - 144);

  _Unwind_Resume(a1);
}

unint64_t re::anonymous namespace::MeshPayloadBuilder::ContiguousLayout::addBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 - 1 + *(a1 + 4);
  v8 = v7 / a4 * a4;
  v9 = v7 & -a4;
  if ((a4 ^ (a4 - 1)) > a4 - 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (HIDWORD(v10))
  {
    *(a1 + 8) = 1;
  }

  v11 = a3 + v10;
  if (__CFADD__(a3, v10) || HIDWORD(v11))
  {
    *(a1 + 8) = 1;
  }

  *(a1 + 4) = v11;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  if (v13 >= v12)
  {
    v14 = v13 + 1;
    if (v12 < v13 + 1)
    {
      if (*(a1 + 16))
      {
        v15 = 2 * v12;
        v16 = v12 == 0;
        v17 = 8;
        if (!v16)
        {
          v17 = v15;
        }

        if (v17 <= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = v17;
        }

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 16), v18);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 16), v14);
        ++*(a1 + 40);
      }
    }
  }

  v19 = *(a1 + 48) + 24 * *(a1 + 32);
  *v19 = v10;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  ++*(a1 + 32);
  ++*(a1 + 40);
  *a1 = 0;
  return v10;
}

uint64_t re::DynamicArray<re::DeformationModelData>::add(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        re::DynamicArray<re::DeformationModelData>::setCapacity(a1, v8);
      }

      else
      {
        re::DynamicArray<re::DeformationModelData>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v4 = *(a1 + 16);
  }

  v9 = a2 + 8;
  result = *(a1 + 32) + 720 * v4 + 8;
  v11 = 18;
  do
  {
    v12 = *(v9 - 8);
    *(v9 - 8) = 0;
    *(result - 8) = v12;
    v13 = std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](result, v9);
    v9 += 40;
    result = v13 + 40;
    --v11;
  }

  while (v11);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::anonymous namespace::DeformerBuilders>::add(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v11 = 2 * v4;
      v12 = v4 == 0;
      v13 = 8;
      if (!v12)
      {
        v13 = v11;
      }

      if (v13 <= v6)
      {
        v14 = v6;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + 136 * *(a1 + 16);
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArray(v8 + 24, a2 + 24);
  result = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArray(v8 + 80, (a2 + 5));
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::anonymous namespace::makeMeshPayload(REMultiBufferMeshPayload **a1, uint64_t a2, void *a3, void *a4, void *a5, Device **a6, uint64_t a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if ((*(a2 + 16) & 1) == 0 && (*(a2 + 72) & 1) == 0)
  {
    v33 = v13;
    v17 = *(a2 + 68);
    v18 = *(a2 + 64);
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 4;
    }

    if (*a6)
    {
      v20 = 3;
    }

    else
    {
      v20 = 1;
    }

    v21 = 8 * (*a7 != 0);
    if (*(a2 + 8) != 1 || *(a2 + 64))
    {
      v32 = v14;
      v25 = a1;
      v26 = v19;
      v27 = *(a2 + 12);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = 4;
      }

      v19 = v26;
      a1 = v25;
      v14 = v32;
      if (v18)
      {
        v23 = 0;
LABEL_21:
        v13 = v33;
        v29 = [REMultiBufferMeshPayload alloc];
        LOBYTE(v31) = *(a7 + 4);
        v30 = [(REMultiBufferMeshPayload *)v29 initWithPayload:DirectMeshPayload privatePayload:v23 parts:*a2 models:v33 instances:v14 skeletons:v16 isLimitedRenderAsset:v31];
        *a1 = v30;

        goto LABEL_22;
      }
    }

    else
    {
      DirectMeshPayload = 0;
    }

    goto LABEL_21;
  }

  v24 = *re::assetTypesLogObjects(v15);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_FAULT, "Mesh payload buffer size overflow", buf, 2u);
  }

  *a1 = 0;
LABEL_22:
}

uint64_t *re::DynamicArray<re::anonymous namespace::DeformerBuilders>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = 136 * v4;
        v6 = v3 + 80;
        do
        {
          re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(v6);
          re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(v6 - 56);
          v6 += 136;
          v5 -= 136;
        }

        while (v5);
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

void re::anonymous namespace::MeshPayloadBuilder::~MeshPayloadBuilder(re::_anonymous_namespace_::MeshPayloadBuilder *this)
{
  v3 = (this + 80);
  v2 = *(this + 10);
  if (v2)
  {
    if (*(this + 14))
    {
      (*(*v2 + 40))(v2);
    }

    *(this + 14) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(this + 26);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(this + 7))
    {
      (*(*v4 + 40))(v4);
    }

    *(this + 7) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 3) = 0;
    ++*(this + 12);
  }
}

void re::makeMeshPayloadWithMeshResourceDefinition(uint64_t a1@<X0>, Device **a2@<X1>, uint64_t a3@<X2>, REMultiBufferMeshPayload **a4@<X8>)
{
  v107 = *MEMORY[0x1E69E9840];
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72[0] = 1;
  v73 = 0;
  v74 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v78 = 0;
  v80 = 1;
  v81 = 0;
  v82 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v86 = 0;
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 240))
  {
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 256) + 8 * v5);
      v8 = [REAttributeDescriptor alloc];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6[4]];
      v10 = [(REAttributeDescriptor *)v8 initWithName:v9 payloadOffset:v7 count:*(v6 + 30) stride:64];

      [v56 addObject:v10];
      ++v5;
    }

    while (v5 < *(a1 + 240));
  }

  v54 = *(a1 + 160);
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = *(a1 + 96);
    v13 = 144 * v11;
    do
    {
      v14 = [[REMeshPartDescriptor alloc] initWithResourceDefinition:a1 meshPart:v12 payloadBuilder:&v71];
      [v71 addObject:v14];

      v12 += 144;
      v13 -= 144;
    }

    while (v13);
  }

  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = *(a1 + 160);
  v70 = 0;
  v67[1] = 0;
  v68 = 0;
  v69 = 0;
  ++v69;
  v17 = *(a1 + 160);
  v66 = 0;
  v63[1] = 0;
  v64 = 0;
  v65 = 0;
  re::DynamicArray<re::DeformationModelData>::setCapacity(v63, v17);
  ++v65;
  if (v54)
  {
    for (i = 0; i != v54; ++i)
    {
      v19 = *(a1 + 160);
      if (v19 <= i)
      {
        v88 = 0;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v89 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v99 = 136315906;
        v100 = "operator[]";
        v101 = 1024;
        v102 = 797;
        v103 = 2048;
        v104 = i;
        v105 = 2048;
        v106 = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v20 = *(a1 + 176);
      v98 = 0;
      v95 = 1uLL;
      v93 = 0u;
      v91 = 0u;
      v89 = 0u;
      v90 = 0u;
      v92 = 0uLL;
      *&v93 = 0;
      DWORD2(v93) = 0;
      v94 = 0uLL;
      DWORD2(v91) = 1;
      v96 = 0;
      v97 = 0;
      v21 = v20 + 240 * i;
      re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(&v94);
      re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(&v90 + 8);
      bzero(&v89, 0x2D0uLL);
      for (j = 0; j != 720; j += 40)
      {
        v23 = (&v89 + j);
        *v23 = 0;
        v23[4] = 0;
      }

      re::DynamicArray<re::DeformationModelData>::add(v63, &v89);
      for (k = 680; k != -40; k -= 40)
      {
        std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((&v89 + k));
      }

      v25 = [REMeshModelDescriptor alloc];
      v26 = v70;
      v27 = v68;
      __dst = 0;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v61 = 0;
      if (*(a1 + 104))
      {
        v28 = *(a1 + 120);
        v58 = *(a1 + 104);
        re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v58, v28);
        ++v61;
        v29 = *(a1 + 120);
        if (v29 >= v60)
        {
          re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v58, *(a1 + 120));
          v30 = v60;
          if (v60)
          {
            memmove(__dst, *(a1 + 136), 8 * v60);
            v30 = v60;
          }

          memcpy(__dst + 8 * v30, (*(a1 + 136) + 8 * v30), 8 * (v29 - v30));
        }

        else if (v29)
        {
          memmove(__dst, *(a1 + 136), 8 * v29);
        }

        v60 = v29;
      }

      v31 = [(REMeshModelDescriptor *)v25 initWithResourceDefinitionModel:v21 inverseBindPoseAttributes:v56 deformerBuilders:v26 + 136 * v27 - 136 payloadBuilder:&v71 levels:&v58 deformationModelData:v66 + 720 * v64 - 720];
      if (v58)
      {
        if (__dst)
        {
          (*(*v58 + 40))();
        }

        __dst = 0;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        ++v61;
      }

      [v55 addObject:v31];
      v32 = *(a1 + 200);
      if (v32)
      {
        v33 = *(a1 + 216);
        v34 = (v33 + 112 * v32);
        do
        {
          re::DynamicString::DynamicString(&v89, v33);
          v91 = *(v33 + 2);
          v35 = *(v33 + 3);
          v36 = *(v33 + 4);
          v37 = *(v33 + 6);
          v94 = *(v33 + 5);
          v95 = v37;
          v92 = v35;
          v93 = v36;
          if (i == v91)
          {
            v38 = [REMeshInstanceDescriptor alloc];
            if (BYTE8(v89))
            {
              v39 = v90;
            }

            else
            {
              v39 = &v89 | 9;
            }

            v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v39];
            v41 = [(REMeshInstanceDescriptor *)v38 initWithName:v40 modelIndex:i transform:*&v92, *&v93, *&v94, *&v95];

            [(_anonymous_namespace_ *)v57 addObject:v41];
          }

          if (v89 && (BYTE8(v89) & 1) != 0)
          {
            (*(*v89 + 40))();
          }

          v33 = (v33 + 112);
        }

        while (v33 != v34);
      }

      else
      {
        re::DynamicString::operator+((v21 + 40), "_instance", &v89);
        v42 = [REMeshInstanceDescriptor alloc];
        if (BYTE8(v89))
        {
          v43 = v90;
        }

        else
        {
          v43 = &v89 + 9;
        }

        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v43];
        v45 = [(REMeshInstanceDescriptor *)v42 initWithName:v44 modelIndex:i transform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];

        [(_anonymous_namespace_ *)v57 addObject:v45];
        if (v89 && (BYTE8(v89) & 1) != 0)
        {
          (*(*v89 + 40))();
        }
      }
    }
  }

  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = *(a1 + 240);
  if (v47)
  {
    v48 = *(a1 + 256);
    v49 = 8 * v47;
    do
    {
      v50 = [[REMeshSkeletonDescriptor alloc] initWithMeshSkeletonDefinition:*v48];
      [v46 addObject:v50];

      ++v48;
      v49 -= 8;
    }

    while (v49);
  }

  re::DynamicArray<re::DeformationModelData>::deinit(v63);

  if (v83)
  {
    if (v87)
    {
      (*(*v83 + 40))();
    }

    v87 = 0;
    v84 = 0;
    v85 = 0;
    v83 = 0;
    ++v86;
  }

  if (v75)
  {
    if (v79)
    {
      (*(*v75 + 40))();
    }

    v79 = 0;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    ++v78;
  }
}

void sub_1E20C5DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  re::DynamicArray<re::DeformationModelData>::deinit(&a25);

  _Unwind_Resume(a1);
}

void re::makeMeshCollectionWithMeshPayload(id *this@<X0>, const re::MeshPayload *a2@<X1>, uint64_t a3@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  re::MeshPayload::payloadBufferSizes(this, &v59);
  for (i = 0; i != 8; ++i)
  {
    v7 = *(&v59 + i);
    if (v7 && re::MeshPayloadBuffers::length(a2, i) < v7)
    {
LABEL_42:
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "payloadBuffers.length(i) >= length", "makeMeshCollectionWithMeshPayload", 538);
      _os_crash();
      __break(1u);
    }
  }

  v9 = *this;
  v37 = v9;
  if (objc_opt_respondsToSelector())
  {
    if (v9)
    {
      [v9 makeMeshCollection:a2];
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    v10 = [v9 parts];
    v58[0] = v10;
    v58[1] = a2;
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
    v11 = [v9 models];
    v12 = [v11 count];
    re::DynamicArray<re::MeshModel>::setCapacity(a3, v12);
    ++*(a3 + 24);

    v14 = re::globalAllocators(v13)[2];
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = [v9 models];
    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = *v52;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v51 + 1) + 8 * j);
        v20 = [v19 skinningModel];
        v21 = v20 == 0;

        if (!v21)
        {
          v22 = [v19 skinningModel];
          v36 = [v22 inverseBindPoseAttributes];

          re::FixedArray<re::BufferSlice>::init<>(&v55, v14, [v36 count]);
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v23 = v36;
          v24 = [v23 countByEnumeratingWithState:&v47 objects:v65 count:16];
          if (!v24)
          {
            goto LABEL_27;
          }

          LODWORD(v25) = 0;
          v26 = *v48;
          while (1)
          {
            v27 = 0;
            v28 = 40 * v25;
            v25 = v25;
            do
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(v23);
              }

              re::MeshPayloadBuffers::slice(a2, 0, [*(*(&v47 + 1) + 8 * v27) payloadOffset], objc_msgSend(*(*(&v47 + 1) + 8 * v27), "bufferSize"));
              v29 = v56;
              if (v56 <= v25)
              {
                v58[2] = 0;
                v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                v61 = 0u;
                v59 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v67 = 136315906;
                v68 = "operator[]";
                v69 = 1024;
                v70 = 468;
                v71 = 2048;
                v72 = v25;
                v73 = 2048;
                v74 = v29;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_42;
              }

              v30 = v57 + v28;
              std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v57 + v28, v44);
              *(v30 + 32) = v46;
              if (v45 != -1)
              {
                (off_1F5CC8DB0[v45])(&v59, v44);
              }

              ++v25;
              ++v27;
              v28 += 40;
            }

            while (v24 != v27);
            v24 = [v23 countByEnumeratingWithState:&v47 objects:v65 count:16];
            if (!v24)
            {
LABEL_27:

              v15 = obj;
              goto LABEL_28;
            }
          }
        }
      }

      v15 = obj;
      v16 = [obj countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v16);
LABEL_28:

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = [v37 models];
    v32 = [v31 countByEnumeratingWithState:&v40 objects:v64 count:16];
    if (v32)
    {
      v33 = *v41;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v40 + 1) + 8 * k);
          v44[0] = v57;
          v44[1] = v56;
          if (v35)
          {
            [v35 meshModelWithMeshModelContext:v58 inverseBindPoseBuffers:v44 allocator:v14];
          }

          else
          {
            bzero(&v59, 0x360uLL);
          }

          re::DynamicArray<re::MeshModel>::add(a3, &v59);
          re::MeshModel::~MeshModel(&v59);
        }

        v32 = [v31 countByEnumeratingWithState:&v40 objects:v64 count:16];
      }

      while (v32);
    }

    re::FixedArray<re::BufferSlice>::deinit(&v55);
    v9 = v37;
  }
}

void sub_1E20C64D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  re::FixedArray<re::BufferSlice>::deinit(&a47);
  re::DynamicArray<re::MeshModel>::deinit(v50);

  _Unwind_Resume(a1);
}

void re::FixedArray<re::BufferSlice>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 40 * a3;
  v6 = (*(*a2 + 32))(a2, 40 * a3, 8);
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
    bzero(v6, v5 - 40);
    v8 += v5 - 40;
  }

  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
}

uint64_t re::DynamicArray<re::MeshModel>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshModel>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::MeshModel::MeshModel(*(this + 4) + 864 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::registerMeshCollectionWithMeshPayload(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = *a2;
  v7 = re::globalAllocators(v17)[2];
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = 0;
  *(a4 + 72) = 0;
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 40) = v7;
  re::DynamicArray<float *>::setCapacity((a4 + 40), 0);
  ++*(a4 + 64);
  *a4 = v7;
  re::DynamicArray<float *>::setCapacity(a4, 0);
  ++*(a4 + 24);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = 864 * v8;
    do
    {
      *&v18[0] = re::DataArray<re::MeshModel>::create<re::MeshModel>(a3 + 8, v9);
      re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add((a4 + 40), v18);
      v9 += 108;
      v10 -= 864;
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(re *)v17 instances];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (v15)
        {
          [v15 meshInstanceWithModels:a4 meshManager:a3];
        }

        else
        {
          memset(v20, 0, sizeof(v20));
          v19 = 0u;
          memset(v18, 0, sizeof(v18));
        }

        v21 = re::DataArray<re::MeshInstance>::create<re::MeshInstance>(a3 + 72, v18);
        re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(a4, &v21);
        re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(v20 + 1);
        v16 = v19;
        if (v19)
        {
          if (*(&v19 + 1))
          {
            v16 = (*(*v19 + 40))();
            *(&v19 + 1) = 0;
            *&v20[0] = 0;
          }

          *&v19 = 0;
        }

        if (v18[0])
        {
          if (v18[0])
          {
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  re::DynamicArray<re::MeshModel>::deinit(a1);
}

void sub_1E20C6A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  re::DynamicArray<unsigned long>::deinit(v11);
  re::DynamicArray<unsigned long>::deinit(v10);

  _Unwind_Resume(a1);
}

void re::makeMeshAssetSkeletonsWithMeshPayload(id *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = [v3 skeletons];
  v5 = [v4 count];

  v6 = re::DynamicArray<re::MeshAssetSkeleton>::deinit(a2);
  re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a2, v5);
  ++*(a2 + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v3 skeletons];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (v11)
        {
          [v11 meshAssetSkeleton];
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v13 = 0u;
        }

        re::DynamicArray<re::MeshAssetSkeleton>::add(a2, &v13);
        if (*(&v18 + 1))
        {
          if (v19)
          {
            (*(**(&v18 + 1) + 40))();
            v19 = 0uLL;
          }

          *(&v18 + 1) = 0;
        }

        if (v17)
        {
          if (*(&v17 + 1))
          {
            (*(*v17 + 40))();
            *(&v17 + 1) = 0;
            *&v18 = 0;
          }

          *&v17 = 0;
        }

        if (*(&v15 + 1))
        {
          if (v16)
          {
            (*(**(&v15 + 1) + 40))();
            v16 = 0uLL;
          }

          *(&v15 + 1) = 0;
        }

        v12 = re::FixedArray<re::StringID>::deinit(&v14);
        if (v13)
        {
          if (v13)
          {
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

void re::makeMeshAssetInstancesWithMeshPayload(id *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = *a1;
  v3 = [v20 skeletons];
  v4 = [v3 count];

  v5 = re::DynamicArray<re::MeshAssetInstance>::deinit(a2);
  re::DynamicArray<re::MeshAssetInstance>::setCapacity(a2, v4);
  ++*(a2 + 24);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v20 instances];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = v11;
        v13 = [v11 UTF8String];
        v25[0].n128_u64[0] = 0;
        v25[0].n128_u64[1] = &str_67;
        [v10 transform];
        v25[1] = v14;
        v25[2] = v15;
        v25[3] = v16;
        v25[4] = v17;
        v26 = [v10 modelIndex];

        *&v19 = re::DynamicArray<re::MeshAssetInstance>::add(a2, v25).n128_u64[0];
        if (v25[0].n128_u8[0])
        {
          if (v25[0].n128_u8[0])
          {
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:{16, v19}];
    }

    while (v7);
  }
}

void sub_1E20C7184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::StringID::destroyString(&a9);

  _Unwind_Resume(a1);
}

uint64_t re::DynamicArray<re::NamedVertexBuffer>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::NamedVertexBuffer>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 88 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v7 = *(a2 + 16);
  *(a2 + 24) = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  *(v5 + 32) = *(a2 + 32);
  result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v5 + 40, a2 + 40);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 80) = *(a2 + 80);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::NamedVertexBuffer::~NamedVertexBuffer(re::NamedVertexBuffer *this)
{
  v2 = *(this + 16);
  if (v2 != -1)
  {
    (off_1F5CC8DB0[v2])(&v3, this + 40);
  }

  *(this + 16) = -1;
  re::DynamicString::deinit(this);
}

void sub_1E20C7D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  re::FixedArray<re::MeshVertexAttributeBuffers::Attribute>::deinit(va);
  _Unwind_Resume(a1);
}

REAttributeDescriptor *anonymous namespace::makeDescriptorForSkinningAttribute(unsigned int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a3 + 8, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v15);
  if (v16 == 0x7FFFFFFF || (v9 = *(a3 + 24) + 48 * v16, !*(v9 + 40)))
  {
    v13 = 0;
  }

  else
  {
    v10 = [REAttributeDescriptor alloc];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2[1]];
    if (a1 > 4)
    {
      v12 = 8;
    }

    else
    {
      v12 = *&asc_1E3062860[8 * a1];
    }

    v13 = [(REAttributeDescriptor *)v10 initWithName:v11 buffer:v9 + 32 elementSize:*(v9 + 24) payloadLayout:a4 + v12];
  }

  return v13;
}

void sub_1E20C8ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  if (v10 != -1)
  {
    (off_1F5CC8DB0[v10])(v4 - 49, va);
  }

  LODWORD(v10) = -1;

  re::StringID::destroyString(va1);
  re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(va2);
  _Unwind_Resume(a1);
}

uint64_t re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    v9 = *a2;
    v8[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
    v8[1] = *a2 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
    v8[2] = a2[1];
    *a2 = 0;
    a2[1] = &str_67;
    result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v8 + 3), a3);
    v8[7] = *(a3 + 32);
    ++*(a1 + 40);
  }

  return result;
}

void sub_1E20C8E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  re::FixedArray<re::SkinningModelBuilder::AttributeDescriptor::SkinnedPartAttribute>::deinit((v13 + 16));

  _Unwind_Resume(a1);
}

void sub_1E20C8FE8(_Unwind_Exception *a1)
{
  re::FixedArray<re::SkinningModelBuilder::AttributeDescriptor::SkinnedPartAttribute>::deinit((v3 + 16));

  _Unwind_Resume(a1);
}

REAttributeDescriptor *anonymous namespace::makeAttributeDescriptor(uint64_t a1, int a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v11 = a3;
  if (a5)
  {
    v12 = 64;
    if (a2 == 1)
    {
      v12 = 8;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1E20C98A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  re::FixedArray<re::StringID>::deinit(&a15);
  v21 = 0;
  while (1)
  {
    v22 = &a18 + v21;
    v23 = *(&a18 + v21 + 224);
    if (v23 != -1)
    {
      (off_1F5CC8DB0[v23])(v19 - 240, v22 + 200);
    }

    *(v22 + 56) = -1;
    v21 -= 40;
    if (v21 == -240)
    {
      _Unwind_Resume(a1);
    }
  }
}

void anonymous namespace::fillBufferSliceForAttribute(unsigned int a1, void *a2, uint64_t a3, re::MeshPayloadBuffers *a4)
{
  v7 = a2;
  v8 = v7;
  if (a1 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 6;
  }

  if (v7)
  {
    re::MeshPayloadBuffers::slice(a4, v9, [v7 payloadOffset], objc_msgSend(v7, "bufferSize"));
  }

  else
  {
    re::MeshPayloadBuffers::slice(a4, v9, 0, 0);
  }

  v10 = a3 + 40 * a1;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v10, v11);
  *(v10 + 32) = v13;
  if (v12 != -1)
  {
    (off_1F5CC8DB0[v12])(&v14, v11);
  }
}

void sub_1E20C9A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a12 != -1)
  {
    (off_1F5CC8DB0[a12])(&a17, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1E20CB8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, re::StringID *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a28 && a29)
  {
    (*(*a28 + 40))();
  }

  for (i = 680; i != -40; i -= 40)
  {
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((&STACK[0x300] + i));
  }

  re::FixedArray<re::MeshLodLevelInfo>::deinit(&a48);
  re::FixedArray<re::MeshPart>::deinit(&a51);
  _Unwind_Resume(a1);
}

uint64_t re::MeshPart::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  re::FixedArray<float>::operator=((a1 + 16), (a2 + 16));
  re::BufferTable::operator=(a1 + 40, a2 + 40);
  re::FixedArray<float>::operator=((a1 + 328), (a2 + 328));
  *(a1 + 352) = *(a2 + 352);
  v4 = *(a2 + 416);
  v6 = *(a2 + 368);
  v5 = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v4;
  *(a1 + 368) = v6;
  *(a1 + 384) = v5;
  v8 = *(a2 + 448);
  v7 = *(a2 + 464);
  v9 = *(a2 + 432);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 448) = v8;
  *(a1 + 464) = v7;
  *(a1 + 432) = v9;
  re::StringID::operator=((a1 + 488), (a2 + 488));
  v10 = *(a2 + 504);
  *(a1 + 516) = *(a2 + 516);
  *(a1 + 504) = v10;
  return a1;
}

void sub_1E20CBE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  re::StringID::destroyString(va);

  _Unwind_Resume(a1);
}

void sub_1E20CC25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a6)
  {
    if (a7)
    {
      (*(*a6 + 40))();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::RestPoseComponents::RestPoseComponents(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = *(a2 + 8);
  v6 = *(a2 + 8);
  v8 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v10 = 0;
    v11 = 0;
    while (*(a1 + 8) > v11)
    {
      *(*(a1 + 16) + 16 * v11) = *(*(a2 + 16) + v10);
      if (*(a2 + 8) <= v11)
      {
        goto LABEL_11;
      }

      if (*(a1 + 32) <= v11)
      {
        goto LABEL_12;
      }

      *(*(a1 + 40) + 16 * v11) = *(*(a2 + 16) + v10 + 16);
      if (*(a2 + 8) <= v11)
      {
        goto LABEL_13;
      }

      if (*(a1 + 56) <= v11)
      {
        goto LABEL_14;
      }

      *(*(a1 + 64) + 16 * v11++) = *(*(a2 + 16) + v10 + 32);
      v10 += 48;
      if (v11 >= *(a2 + 8))
      {
        return a1;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a1;
}

void sub_1E20CC7F4(_Unwind_Exception *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(v2);
  re::FixedArray<CoreIKTransform>::deinit(v1 + 3);
  re::FixedArray<CoreIKTransform>::deinit(v1);
  _Unwind_Resume(a1);
}

id anonymous namespace::makeJointNamesArray(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 8)];
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = (*(a1 + 16) + 8);
    v5 = 16 * v3;
    do
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v4];
      [v2 addObject:v6];

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return v2;
}

id anonymous namespace::makeParentIndicesArray(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 8)];
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = 4 * v3;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v4];
      [v2 addObject:v6];

      ++v4;
      v5 -= 4;
    }

    while (v5);
  }

  return v2;
}

__n128 anonymous namespace::makeInverseBindPoseArray(_anonymous_namespace_ *a1, uint64_t a2)
{
  *(a1 + 2) = 0;
  v4 = *(a2 + 8);
  *(a1 + 1) = v4;
  if (v4)
  {
    if (v4 >> 58)
    {
LABEL_14:
      re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 64, v4);
      _os_crash();
      __break(1u);
LABEL_15:
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v9 = v7;
    *(a1 + 2) = v7;
    if (!v7)
    {
      goto LABEL_15;
    }

    v10 = v7;
    if (v4 != 1)
    {
      bzero(v7, (v4 << 6) - 64);
      v10 = &v9[4 * v4 - 4];
    }

    result.n128_u64[0] = 0;
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 8))
  {
    v11 = 0;
    v12 = 0;
    while (v4 != v12)
    {
      v13 = *(a2 + 16) + v11 * 16;
      result = *v13;
      v14 = *(v13 + 16);
      v15 = *(v13 + 32);
      v16 = *(v13 + 48);
      v17 = &v9[v11];
      *v17 = result;
      v17[1] = v14;
      v17[2] = v15;
      v17[3] = v16;
      ++v12;
      v11 += 4;
      if (v12 >= *(a2 + 8))
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void anonymous namespace::RestPoseComponents::~RestPoseComponents(_anonymous_namespace_::RestPoseComponents *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  re::FixedArray<CoreIKTransform>::deinit(this);
}

void sub_1E20CD000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a6)
  {
    if (a7)
    {
      (*(*a6 + 40))();
    }
  }

  _Unwind_Resume(a1);
}

void sub_1E20CD96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  re::FixedArray<CoreIKTransform>::deinit(v13 + 11);
  re::FixedArray<CoreIKTransform>::deinit(v13 + 8);
  re::FixedArray<CoreIKTransform>::deinit(v13 + 5);

  re::FixedArray<re::StringID>::deinit(v13 + 2);
  re::StringID::destroyString(v13);

  _Unwind_Resume(a1);
}

void sub_1E20CE578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  re::MeshModel::~MeshModel(&a51);
  re::DynamicArray<re::NamedVertexBuffer>::deinit(&a42);
  re::FixedArray<re::MeshPart>::deinit(&a47);

  _Unwind_Resume(a1);
}

uint64_t re::FixedArray<re::MeshPart>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x78787878787879)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 544, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 544 * a3, 16);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    v7.i64[0] = 0x7F0000007FLL;
    v7.i64[1] = 0x7F0000007FLL;
    v8 = vnegq_f32(v7);
    do
    {
      *(result + 256) = 0uLL;
      *(result + 272) = 0uLL;
      *(result + 224) = 0uLL;
      *(result + 240) = 0uLL;
      *(result + 192) = 0uLL;
      *(result + 208) = 0uLL;
      *(result + 160) = 0uLL;
      *(result + 176) = 0uLL;
      *(result + 128) = 0uLL;
      *(result + 144) = 0uLL;
      *(result + 96) = 0uLL;
      *(result + 112) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 80) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 200) = 1;
      *(result + 216) = 0;
      *(result + 224) = 0;
      *(result + 208) = 0;
      *(result + 232) = 0;
      *(result + 248) = 0;
      *(result + 256) = 0;
      *(result + 240) = 0;
      *(result + 264) = 0;
      *(result + 272) = 0uLL;
      *(result + 288) = 0uLL;
      *(result + 288) = 0uLL;
      *(result + 304) = 0uLL;
      *(result + 304) = 0;
      *(result + 320) = 0;
      *(result + 328) = 0;
      *(result + 336) = 0;
      *(result + 344) = 0;
      *(result + 352) = xmmword_1E3047670;
      *(result + 368) = xmmword_1E3047680;
      *(result + 384) = xmmword_1E30476A0;
      *(result + 400) = xmmword_1E30474D0;
      *(result + 416) = v8;
      *(result + 432) = v7;
      *(result + 456) = 0;
      *(result + 448) = 0;
      *(result + 458) = 0;
      *(result + 488) = 0;
      *(result + 496) = &str_67;
      *(result + 512) = 0;
      *(result + 520) = 3;
      *(result + 524) = 1;
      *(result + 528) = 25172350;
      v9 = result + 460;
      *(result + 460) = -1;
      *(result + 468) = -1;
      result += 544;
      *(v9 + 13) = -1;
      --v6;
    }

    while (v6);
  }

  *(result + 256) = 0u;
  *(result + 272) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 200) = 1;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 208) = 0;
  *(result + 232) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 304) = 0;
  *(result + 320) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 344) = 0;
  *(result + 352) = xmmword_1E3047670;
  *(result + 368) = xmmword_1E3047680;
  *(result + 384) = xmmword_1E30476A0;
  *(result + 400) = xmmword_1E30474D0;
  v10.i64[0] = 0x7F0000007FLL;
  v10.i64[1] = 0x7F0000007FLL;
  *(result + 416) = vnegq_f32(v10);
  *(result + 432) = v10;
  *(result + 456) = 0;
  *(result + 448) = 0;
  *(result + 458) = 0;
  *(result + 488) = 0;
  *(result + 496) = &str_67;
  *(result + 512) = 0;
  *(result + 520) = 3;
  *(result + 524) = 1;
  *(result + 528) = 25172350;
  *(result + 460) = -1;
  *(result + 468) = -1;
  *(result + 473) = -1;
  return result;
}

void *re::anonymous namespace::MeshPayloadBuilder::ContiguousLayout::createDirectMeshPayload(re::_anonymous_namespace_::MeshPayloadBuilder::ContiguousLayout *this, unint64_t a2, unsigned int a3, Device *a4)
{
  v5 = DRMemoryResourceCreate();
  if (!v5)
  {
LABEL_8:

    return v5;
  }

  Bytes = DRMemoryResourceGetBytes();
  Length = DRMemoryResourceGetLength();
  if ((*(this + 8) & 1) == 0 && Length >= *(this + 1))
  {
    v9 = *(this + 4);
    if (v9)
    {
      v10 = *(this + 6);
      v11 = &v10[6 * v9];
      do
      {
        memcpy((Bytes + *v10), *(v10 + 1), *(v10 + 2));
        v10 += 6;
      }

      while (v10 != v11);
    }

    DRMemoryResourceDidUpdateBytes();
    v12 = v5;
    goto LABEL_8;
  }

  re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "requiredSize.hasValue() && dest.size() >= requiredSize.value()", "copyBytes", 82);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::DynamicArray<re::MeshModel>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshModel>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x360uLL))
        {
          v2 = 864 * a2;
          result = (*(*result + 32))(result, 864 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 864, a2);
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
        v10 = 864 * v9;
        v11 = v7;
        do
        {
          re::MeshModel::MeshModel(v11, v8);
          re::MeshModel::~MeshModel(v8);
          v8 += 108;
          v11 += 864;
          v10 -= 864;
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

uint64_t re::MeshModel::MeshModel(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v5 = *a2;
  *a1 = *a1 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a1 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v6 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  v7 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v7;
  a2[6] = 0;
  a2[7] = 0;
  v8 = *(a1 + 64);
  *(a1 + 64) = a2[8];
  a2[8] = v8;
  v9 = *(a2 + 6);
  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = v9;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  v10 = a2[15];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = v10;
  a2[14] = 0;
  v11 = *(a1 + 128);
  *(a1 + 128) = a2[16];
  a2[15] = 0;
  a2[16] = v11;
  do
  {
    v12 = a2[v4 + 18];
    a2[v4 + 18] = 0;
    *(a1 + v4 * 8 + 144) = v12;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](a1 + v4 * 8 + 152, &a2[v4 + 19]);
    v4 += 5;
  }

  while (v4 != 90);
  return a1;
}

void re::MeshInstance::~MeshInstance(re::MeshInstance *this)
{
  re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(this + 15);
  re::FixedArray<CoreIKTransform>::deinit(this + 12);
  re::StringID::destroyString(this);
}

void re::MeshAssetSkeleton::~MeshAssetSkeleton(re::MeshAssetSkeleton *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
  re::FixedArray<re::StringID>::deinit(this + 2);
  re::StringID::destroyString(this);
}

void *re::FixedArray<re::MeshVertexAttributeBuffers::Attribute>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = (result[2] + 24);
      v5 = 56 * v2;
      do
      {
        if (*v4)
        {
          if (v4[1])
          {
            (*(**v4 + 40))(*v4, v4[2]);
            v4[1] = 0;
            v4[2] = 0;
          }

          *v4 = 0;
        }

        v4 += 7;
        v5 -= 56;
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

uint64_t re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 48 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 48 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 48 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 48 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

void *re::FixedArray<re::SkinningModelBuilder::AttributeDescriptor::SkinnedPartAttribute>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 56 * v2;
      v5 = (result[2] + 8);
      do
      {
        v6 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v5);
        v5 += 7;
        v4 -= 56;
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

double re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
          re::StringID::destroyString((v6 + v4 + 8));
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

uint64_t re::BucketArray<re::BufferSlice,8ul>::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    re::BucketArray<RESubscriptionHandle,8ul>::swap(a1, a2);
  }

  return a1;
}

uint64_t *re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = result[7];
  result[7] = a2[7];
  a2[7] = v2;
  v3 = *result;
  *result = *a2;
  *a2 = v3;
  v4 = result[1];
  v5 = result[2];
  v6 = a2[2];
  result[1] = a2[1];
  result[2] = v6;
  a2[1] = v4;
  a2[2] = v5;
  v7 = result[5];
  result[5] = a2[5];
  a2[5] = v7;
  v8 = result[6];
  result[6] = a2[6];
  a2[6] = v8;
  v9 = result[3];
  result[3] = a2[3];
  a2[3] = v9;
  v10 = result[4];
  result[4] = a2[4];
  a2[4] = v10;
  return result;
}

uint64_t re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(uint64_t a1)
{
  re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::deinit(a1);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  return a1;
}

uint64_t re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](a1, i);
      v5 = *(v4 + 112);
      if (v5 != -1)
      {
        (off_1F5CC8DB0[v5])(&v8, v4 + 88);
      }

      *(v4 + 112) = -1;
      v6 = *(v4 + 56);
      if (v6 != -1)
      {
        (off_1F5CC8DB0[v6])(&v9, v4 + 32);
      }

      *(v4 + 56) = -1;
      re::FixedArray<CoreIKTransform>::deinit((v4 + 8));
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

unint64_t re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + ((a2 & 3) << 7);
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

  return *(v3 + 8 * (a2 >> 2)) + ((a2 & 3) << 7);
}

uint64_t re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(uint64_t a1)
{
  re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::deinit(a1);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  return a1;
}

uint64_t re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1, i);
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

uint64_t re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + 56 * (a2 & 3);
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

  return *(v3 + 8 * (a2 >> 2)) + 56 * (a2 & 3);
}

void re::FixedArray<simd_quatf>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 16);
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
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

uint64_t re::DynamicArray<re::DeformationModelData>::deinit(uint64_t a1)
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
        v5 = v3 + 720 * v4;
        do
        {
          v6 = v3;
          v3 += 720;
          for (i = 680; i != -40; i -= 40)
          {
            std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((v6 + i));
          }
        }

        while (v3 != v5);
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

void *re::DynamicArray<re::DeformationModelData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationModelData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x2D0uLL))
        {
          v2 = 720 * a2;
          result = (*(*result + 32))(result, 720 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 720, a2);
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
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 720 * v9;
        v11 = v7;
        do
        {
          for (i = 0; i != 90; i += 5)
          {
            v13 = *(v8 + i * 8);
            *(v8 + i * 8) = 0;
            v11[i] = v13;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](&v11[i + 1], v8 + i * 8 + 8);
          }

          v14 = v8 + 720;
          for (j = 680; j != -40; j -= 40)
          {
            std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((v8 + j));
          }

          v11 += 90;
          v8 += 720;
        }

        while (v14 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::DynamicArray<re::anonymous namespace::DeformerBuilders>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
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
        v10 = (v7 + 10);
        v11 = 136 * v9;
        v12 = v8 + 80;
        do
        {
          v13 = *(v12 - 80);
          *(v10 - 64) = *(v12 - 64);
          *(v10 - 80) = v13;
          re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArray(v10 - 56, v12 - 56);
          re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArray(v10, v12);
          re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(v12);
          re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(v12 - 56);
          v10 += 136;
          v12 += 136;
          v11 -= 136;
        }

        while (v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v4 = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *a2;
  if (v5)
  {
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::init(a1, v5, *(a2 + 8));
    v6 = *(a2 + 40);
    if (v6 >= *(a1 + 40))
    {
      re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, (v6 + 3) >> 2);
      std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>&,true>>(v20, a2, 0, a2, *(a1 + 40), a1, 0);
      v8 = *(a1 + 40);
      v9 = v6 - v8;
      if (v6 != v8)
      {
        v10 = 0;
        do
        {
          v11 = v10 + *(a1 + 40);
          if (*(a1 + 8) <= v11 >> 2)
          {
            memset(v20, 0, sizeof(v20));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v12 = v4;
          if ((*(a1 + 16) & 1) == 0)
          {
            v12 = *(a1 + 32);
          }

          v13 = *(v12 + 8 * (v11 >> 2));
          v14 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a2, v11);
          v15 = v13 + 56 * (v11 & 3);
          v16 = *v14;
          v17 = *(v14 + 16);
          v18 = *(v14 + 32);
          *(v15 + 48) = *(v14 + 48);
          *(v15 + 16) = v17;
          *(v15 + 32) = v18;
          *v15 = v16;
          ++v10;
        }

        while (v9 != v10);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>&,true>>(v20, a2, 0, a2, *(a2 + 40), a1, 0);
      if (v6 != *(a1 + 40))
      {
        v7 = v6;
        do
        {
          re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1, v7++);
        }

        while (v7 != *(a1 + 40));
      }
    }

    *(a1 + 40) = v6;
  }

  return a1;
}

uint64_t *re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 224, 0);
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::RawSkinnedMeshPartData,re::SkinningModelBuilder::RawSkinnedMeshPartData&,re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>&,true>>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = result;
  if (a2 != a4 || a3 != a5)
  {
    v13 = a5 - 1;
    do
    {
      do
      {
        v14 = a3;
        v15 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a2, a3);
        result = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a6, a7);
        v17 = *(v15 + 16);
        v16 = *(v15 + 32);
        v18 = *v15;
        *(result + 48) = *(v15 + 48);
        *(result + 16) = v17;
        *(result + 32) = v16;
        *result = v18;
        a3 = v14 + 1;
        ++a7;
      }

      while (a2 != a4);
    }

    while (v13 != v14);
    a3 = a5;
  }

  *v12 = a2;
  v12[1] = a3;
  v12[2] = a6;
  v12[3] = a7;
  return result;
}

uint64_t re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArray(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  v4 = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *a2;
  if (v5)
  {
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::init(a1, v5, *(a2 + 8));
    v6 = *(a2 + 40);
    if (v6 >= *(a1 + 40))
    {
      re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, (v6 + 3) >> 2);
      std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>&,true>>(v21, a2, 0, a2, *(a1 + 40), a1, 0);
      v11 = *(a1 + 40);
      v12 = v6 - v11;
      if (v6 != v11)
      {
        v13 = 0;
        do
        {
          v14 = v13 + *(a1 + 40);
          if (*(a1 + 8) <= v14 >> 2)
          {
            memset(v21, 0, sizeof(v21));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v15 = v4;
          if ((*(a1 + 16) & 1) == 0)
          {
            v15 = *(a1 + 32);
          }

          v16 = *(v15 + 8 * (v14 >> 2));
          v17 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](a2, v14);
          v18 = *v17;
          v19 = v16 + ((v14 & 3) << 7);
          *(v19 + 4) = *(v17 + 4);
          *v19 = v18;
          re::FixedArray<unsigned char>::FixedArray((v19 + 8), (v17 + 8));
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v19 + 32, v17 + 32);
          *(v19 + 64) = *(v17 + 64);
          *(v19 + 72) = *(v17 + 72);
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](v19 + 88, v17 + 88);
          *(v19 + 120) = *(v17 + 120);
          ++v13;
        }

        while (v12 != v13);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>&,true>>(v21, a2, 0, a2, *(a2 + 40), a1, 0);
      if (v6 != *(a1 + 40))
      {
        v7 = v6;
        do
        {
          v8 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](a1, v7);
          v9 = *(v8 + 112);
          if (v9 != -1)
          {
            (off_1F5CC8DB0[v9])(v21, v8 + 88);
          }

          *(v8 + 112) = -1;
          v10 = *(v8 + 56);
          if (v10 != -1)
          {
            (off_1F5CC8DB0[v10])(v21, v8 + 32);
          }

          *(v8 + 56) = -1;
          re::FixedArray<CoreIKTransform>::deinit((v8 + 8));
          ++v7;
        }

        while (v7 != *(a1 + 40));
      }
    }

    *(a1 + 40) = v6;
  }

  return a1;
}

uint64_t *re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 512, 0);
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData const&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul> const&,true>,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::BucketArrayIterator<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,re::SkinningModelBuilder::PreparedSkinnedMeshPartData&,re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>&,true>>(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = result;
  if (a2 != a4 || a3 != a5)
  {
    v13 = a5 - 1;
    do
    {
      do
      {
        v14 = a3;
        v15 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](a2, a3);
        v16 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](a6, a7);
        v17 = *(v15 + 4);
        *v16 = *v15;
        *(v16 + 4) = v17;
        re::FixedArray<unsigned char>::operator=((v16 + 8), (v15 + 8));
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v16 + 32, v15 + 32);
        *(v16 + 64) = *(v15 + 64);
        *(v16 + 72) = *(v15 + 72);
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v16 + 88, v15 + 88);
        *(v16 + 120) = *(v15 + 120);
        a3 = v14 + 1;
        ++a7;
      }

      while (a2 != a4);
    }

    while (v13 != v14);
    a3 = a5;
  }

  *v12 = a2;
  v12[1] = a3;
  v12[2] = a6;
  v12[3] = a7;
  return result;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

void sub_1E20D0DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 24);
  if (v15 != -1)
  {
    (off_1F5CC8DB0[v15])(&a13, v13);
  }

  *(v13 + 24) = -1;
  _Unwind_Resume(exception_object);
}

void *re::FixedArray<re::BufferSlice>::deinit(void *result)
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
        v6 = *(v4 + 24);
        if (v6 != -1)
        {
          (off_1F5CC8DB0[v6])(&v7, v4);
        }

        *(v4 + 24) = -1;
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

void *re::DynamicArray<re::MeshModel>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshModel>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshModel>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::NamedVertexBuffer>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::NamedVertexBuffer>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::NamedVertexBuffer>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 88 * v9;
        v11 = v8 + 40;
        v12 = v7;
        do
        {
          *v12 = 0u;
          *(v12 + 1) = 0u;
          v13 = v11 - 40;
          *v12 = *(v11 - 40);
          *(v11 - 40) = 0;
          v12[3] = *(v11 - 16);
          *(v11 - 16) = 0;
          v15 = v12[1];
          v14 = v12[2];
          v16 = *(v11 - 24);
          v12[1] = *(v11 - 32);
          v12[2] = v16;
          *(v11 - 32) = v15;
          *(v11 - 24) = v14;
          *(v12 + 16) = *(v11 - 8);
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v12 + 5), v11);
          v12[9] = *(v11 + 32);
          v12[10] = *(v11 + 40);
          v17 = *(v11 + 24);
          if (v17 != -1)
          {
            (off_1F5CC8DB0[v17])(&v18, v11);
          }

          *(v11 + 24) = -1;
          re::DynamicString::deinit((v11 - 40));
          v12 += 11;
          v11 += 88;
        }

        while (v13 + 88 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::NamedVertexBuffer>::deinit(uint64_t a1)
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
        v5 = v3 + 40;
        v6 = 88 * v4;
        do
        {
          v7 = *(v5 + 24);
          if (v7 != -1)
          {
            (off_1F5CC8DB0[v7])(&v8, v5);
          }

          *(v5 + 24) = -1;
          re::DynamicString::deinit((v5 - 40));
          v5 += 88;
          v6 -= 88;
        }

        while (v6);
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

double re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v9 = *(v8 + 48);
          if (v9 != -1)
          {
            (off_1F5CC8DB0[v9])(&v11, v8 + 24);
          }

          *(v8 + 48) = -1;
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

uint64_t re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = 0xBF58476D1CE4E5B9 * ((*(v13 + 8) >> 31) ^ (*(v13 + 8) >> 1));
                v18 = re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31)) % *(a1 + 24));
                v19 = *(v13 + 8);
                v18[1] = v18[1] & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
                v18[1] = *(v13 + 8) & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
                v18[2] = *(v13 + 16);
                *(v13 + 8) = 0;
                *(v13 + 16) = &str_67;
                std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v18 + 3), v13 + 24);
                v18[7] = *(v13 + 56);
              }

              v13 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::BufferSlice,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + (v4 << 6));
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + (v4 << 6));
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v4 << 6;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + (v4 << 6);
}

re::StringID *re::FixedArray<re::StringID>::init<re::StringID>(re::StringID *result, uint64_t a2, unint64_t a3, const StringID *a4)
{
  *result = a2;
  *(result + 1) = a3;
  if (a3)
  {
    v4 = a3;
    if (a3 >> 60)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
      result = _os_crash();
      __break(1u);
    }

    else
    {
      v6 = result;
      result = (*(*a2 + 32))(a2, 16 * a3, 8);
      *(v6 + 2) = result;
      if (result)
      {
        goto LABEL_6;
      }

      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash();
      __break(1u);
      do
      {
        result = (re::StringID::StringID(result, a4) + 16);
LABEL_6:
        --v4;
      }

      while (v4);
      v8 = *&a4->var0;
      *result = *result & 0xFFFFFFFFFFFFFFFELL | *&a4->var0 & 1;
      *result = *&a4->var0 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
      *(result + 1) = a4->var1;
      *&a4->var0 = 0;
      a4->var1 = &str_67;
    }
  }

  return result;
}

void re::IKRigAssetRuntimeData::init(_anonymous_namespace_ *a1, StringID *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v10 = *(a1 + 2);
    v11 = (a4 + 16);
    v12 = 32 * a5;
    do
    {
      v13 = re::globalAllocators(v9);
      v14 = (*(*v13[2] + 32))(v13[2], 32, 8);
      v15 = v14;
      v16 = *(v11 - 1);
      if (v16)
      {
        v17 = *v11;
      }

      else
      {
        v17 = v11 - 7;
      }

      v18 = v16 >> 1;
      v19 = v16 >> 1;
      if (*(v11 - 1))
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      ArcSharedObject::ArcSharedObject(v15, 0);
      *v15 = &unk_1F5CAEB38;
      v9 = MEMORY[0x1E6903780](v17, v20);
      *(v15 + 3) = v9;
      v21 = *v10;
      *v10 = v15;
      if (v21)
      {
      }

      ++v10;
      v11 += 4;
      v12 -= 32;
    }

    while (v12);
  }

  if (*(a1 + 1))
  {
    v22 = *(a1 + 2);
    do
    {
      re::SmallHashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,8ul,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false>::add(a1 + 24, a2++, v22++);
    }

    while (v22 != (*(a1 + 2) + 8 * *(a1 + 1)));
  }
}

uint64_t *re::IKRigAsset::assetType(re::IKRigAsset *this)
{
  {
    re::IKRigAsset::assetType(void)::type = "IKRig";
    qword_1EE1C7590 = 0;
    re::AssetType::generateCompiledExtension(&re::IKRigAsset::assetType(void)::type);
  }

  return &re::IKRigAsset::assetType(void)::type;
}

void re::IKRigAsset::init(uint64_t *a1, re::DynamicString *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, StringID *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a9;
  re::IKRigAssetRuntimeData::init((a1 + 15), a9, a10, a2, a3);
  if (a3)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = a12;
    while (a1[1] > v22)
    {
      re::DynamicString::operator=((a1[2] + v20), a2);
      if (a5 == v22)
      {
        goto LABEL_15;
      }

      if (a1[10] <= v22)
      {
        goto LABEL_16;
      }

      re::StringID::operator=((a1[11] + v21), (a4 + v21));
      if (a7 == v22)
      {
        goto LABEL_17;
      }

      if (a1[13] <= v22)
      {
        goto LABEL_18;
      }

      re::StringID::operator=((a1[14] + v21), (a6 + v21));
      if (a10 == v22)
      {
        goto LABEL_19;
      }

      if (a1[4] <= v22)
      {
        goto LABEL_20;
      }

      re::StringID::operator=((a1[5] + v21), v15);
      if (a12 == v22)
      {
        goto LABEL_21;
      }

      if (a1[7] <= v22)
      {
        goto LABEL_22;
      }

      *(a1[8] + 8 * v22) = *(a11 + 8 * v22);
      ++v22;
      v15 += 2;
      v21 += 16;
      a2 = (a2 + 32);
      v20 += 32;
      if (a3 == v22)
      {
        return;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a5, a5);
    _os_crash();
    __break(1u);
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a7, a7);
    _os_crash();
    __break(1u);
LABEL_18:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a10, a10);
    _os_crash();
    __break(1u);
LABEL_20:
    v23 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v23, v23);
    _os_crash();
    __break(1u);
LABEL_22:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::IKRigAsset::init(uint64_t *a1, uint64_t *a2, unint64_t a3, re::DynamicString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = a11;
  v43 = a3;
  if (a3)
  {
    v26 = a1[17];
    v27 = 8 * v43;
    do
    {
      v28 = *a2;
      v29 = re::globalAllocators(v24);
      v30 = (*(*v29[2] + 32))(v29[2], 32, 8);
      ArcSharedObject::ArcSharedObject(v30, 0);
      *(v30 + 3) = v28;
      *v30 = &unk_1F5CAEB38;
      v31 = *v26;
      *v26 = v30;
      if (v31)
      {
      }

      ++a2;
      ++v26;
      v27 -= 8;
    }

    while (v27);
  }

  if (a1[16])
  {
    v32 = a1[17];
    v33 = a11;
    do
    {
      re::SmallHashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,8ul,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false>::add((a1 + 18), v33++, v32++);
    }

    while (v32 != (a1[17] + 8 * a1[16]));
  }

  if (v43)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    while (a5 != v36)
    {
      if (a1[1] <= v36)
      {
        goto LABEL_24;
      }

      re::DynamicString::operator=((a1[2] + v34), a4);
      if (a7 == v36)
      {
        goto LABEL_25;
      }

      if (a1[10] <= v36)
      {
        goto LABEL_26;
      }

      re::StringID::operator=((a1[11] + v35), (a6 + v35));
      if (a10 == v36)
      {
        goto LABEL_27;
      }

      if (a1[13] <= v36)
      {
        goto LABEL_28;
      }

      re::StringID::operator=((a1[14] + v35), (a9 + v35));
      if (a12 == v36)
      {
        goto LABEL_29;
      }

      if (a1[4] <= v36)
      {
        goto LABEL_30;
      }

      re::StringID::operator=((a1[5] + v35), v18);
      if (a14 == v36)
      {
        goto LABEL_31;
      }

      if (a1[7] <= v36)
      {
        goto LABEL_32;
      }

      *(a1[8] + 8 * v36) = *(a13 + 8 * v36);
      ++v36;
      v18 += 2;
      v35 += 16;
      a4 = (a4 + 32);
      v34 += 32;
      if (v43 == v36)
      {
        return;
      }
    }

    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a5, a5);
    _os_crash();
    __break(1u);
LABEL_24:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a7, a7);
    _os_crash();
    __break(1u);
LABEL_26:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a10, a10);
    _os_crash();
    __break(1u);
LABEL_28:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_29:
    re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a12, a12);
    _os_crash();
    __break(1u);
LABEL_30:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a14, a14);
    _os_crash();
    __break(1u);
LABEL_32:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

re *re::internal::destroyPersistent<re::IKRigAsset>(re *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::SmallHashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,8ul,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false>::~SmallHashTable((a3 + 18));
    re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(a3 + 15);
    re::FixedArray<re::StringID>::deinit(a3 + 12);
    re::FixedArray<re::StringID>::deinit(a3 + 9);
    re::FixedArray<CoreIKTransform>::deinit(a3 + 6);
    re::FixedArray<re::StringID>::deinit(a3 + 3);
    re::FixedArray<re::DynamicString>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::IKRigAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 120))
  {
    re::IKRigAssetRuntimeData::init((a2 + 120), *(a2 + 40), *(a2 + 32), *(a2 + 16), *(a2 + 8));
  }

  return 1;
}

uint64_t re::IKRigAssetLoader::introspectionType(re::IKRigAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE19A338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A338))
  {
    qword_1EE19A330 = re::internal::getOrCreateInfo("IKRigAsset", re::allocInfo_IKRigAsset, re::initInfo_IKRigAsset, &unk_1EE19A328, 0);
    __cxa_guard_release(&qword_1EE19A338);
  }

  return qword_1EE19A330;
}

void *re::allocInfo_IKRigAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19A318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A318))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19A3B0, "IKRigAsset");
    __cxa_guard_release(&qword_1EE19A318);
  }

  return &unk_1EE19A3B0;
}

void re::initInfo_IKRigAsset(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xE2F738A332E04;
  v26[1] = "IKRigAsset";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE19A320, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19A320);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::FixedArray<re::DynamicString>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_rigStrings";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19A348 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_sourceBindTargets";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x4800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19A350 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_targetBindTargets";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x6000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19A358 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "m_solverNames";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19A360 = v21;
      v22 = re::introspectionAllocator(v21);
      re::IntrospectionInfo<re::FixedArray<unsigned long>>::get(v22, v23);
      v24 = (*(*v22 + 32))(v22, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "m_solverIDs";
      *(v24 + 16) = &qword_1EE19A370;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x3000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE19A368 = v24;
      __cxa_guard_release(&qword_1EE19A320);
    }
  }

  *(this + 2) = 0x1A000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE19A348;
  *(this + 9) = re::internal::defaultConstruct<re::IKRigAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::IKRigAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::IKRigAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::IKRigAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void re::IntrospectionInfo<re::FixedArray<unsigned long>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19A340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19A340))
  {
    re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE19A370);
    qword_1EE19A370 = &unk_1F5CC8F48;
    __cxa_guard_release(&qword_1EE19A340);
  }

  if ((_MergedGlobals_95 & 1) == 0)
  {
    v2 = re::introspect_size_t(1, a2);
    if ((_MergedGlobals_95 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_95 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE19A370, 0);
      qword_1EE19A380 = 0x1800000004;
      dword_1EE19A388 = v4;
      word_1EE19A38C = 0;
      *&xmmword_1EE19A390 = 0;
      *(&xmmword_1EE19A390 + 1) = 0xFFFFFFFFLL;
      qword_1EE19A3A0 = v3;
      unk_1EE19A3A8 = 0;
      qword_1EE19A370 = &unk_1F5CC8F48;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE19A370, &v14);
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
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE19A390 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::IKRigAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  result = 0.0;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 140) = 0u;
  *(a3 + 404) = 0x7FFFFFFFLL;
  return result;
}

void *re::internal::defaultDestruct<re::IKRigAsset>(uint64_t a1, uint64_t a2, void *a3)
{
  re::SmallHashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,8ul,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false>::~SmallHashTable((a3 + 18));
  re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(a3 + 15);
  re::FixedArray<re::StringID>::deinit(a3 + 12);
  re::FixedArray<re::StringID>::deinit(a3 + 9);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 6);
  re::FixedArray<re::StringID>::deinit(a3 + 3);

  return re::FixedArray<re::DynamicString>::deinit(a3);
}

double re::internal::defaultConstructV2<re::IKRigAsset>(uint64_t a1)
{
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 404) = 0x7FFFFFFFLL;
  return result;
}

void *re::internal::defaultDestructV2<re::IKRigAsset>(void *a1)
{
  re::SmallHashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,8ul,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false>::~SmallHashTable((a1 + 18));
  re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(a1 + 15);
  re::FixedArray<re::StringID>::deinit(a1 + 12);
  re::FixedArray<re::StringID>::deinit(a1 + 9);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 6);
  re::FixedArray<re::StringID>::deinit(a1 + 3);

  return re::FixedArray<re::DynamicString>::deinit(a1);
}

uint64_t re::SmallHashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,8ul,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false>::add(uint64_t a1, StringID *a2, uint64_t *a3)
{
  if (!*(a1 + 252))
  {
    v8 = (a1 + 16);
    v9 = *(a1 + 16);
    if (!v9)
    {
LABEL_20:
      result = re::StringID::StringID(&v21, a2);
      v18 = *a3;
      *(&v22 + 1) = v18;
      if (v18)
      {
        result = (v18 + 8);
      }

      v19 = *v8;
      if (*v8 >= 8)
      {
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash();
        __break(1u);
      }

      else
      {
        v20 = a1 + 24 * v19;
        *(v20 + 32) = v21;
        *(v20 + 40) = v22;
        *(a1 + 16) = v19 + 1;
        ++*(a1 + 24);
      }

      return result;
    }

    v10 = 24 * v9;
    v11 = (a1 + 32);
    v12 = 24 * v9;
    v13 = (a1 + 32);
    do
    {
      result = re::StringID::operator==(v13, a2);
      if (result)
      {
        return result;
      }

      v13 += 3;
      v12 -= 24;
    }

    while (v12);
    if ((v9 & 0xFFFFFFF8) == 0)
    {
      goto LABEL_20;
    }

    if (!*(a1 + 224))
    {
      v14 = *a1;
      if (!*a1)
      {
      }

      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 224, v14, 16);
      if (!*v8)
      {
        goto LABEL_19;
      }

      v10 = 24 * *v8;
    }

    do
    {
      v21 = 0;
      v22 = 0uLL;
      re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v21, a1 + 224, v11);
      if (DWORD1(v22) == 0x7FFFFFFF)
      {
        v15 = re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 224, v22, v21);
        v16 = *v11;
        v15[1] = v15[1] & 0xFFFFFFFFFFFFFFFELL | *v11 & 1;
        v15[1] = *v11 & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
        v15[2] = v11[1];
        *v11 = 0;
        v11[1] = &str_67;
        v15[3] = v11[2];
        v11[2] = 0;
        ++*(a1 + 264);
      }

      v11 += 3;
      v10 -= 24;
    }

    while (v10);
LABEL_19:
    re::DynamicInlineArray<re::KeyValuePair<re::StringID,re::SharedPtr<re::SharedCoreIKRig>>,8ul>::clear(a1 + 16);
    v6 = a1 + 224;
    goto LABEL_3;
  }

  v6 = a1 + 224;
LABEL_3:

  return re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v6, a2, a3);
}

uint64_t re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v11, a1, a2);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v12) + 24;
  }

  v6 = re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v12, v11);
  re::StringID::StringID((v6 + 8), a2);
  v7 = *a3;
  *(v6 + 24) = *a3;
  v8 = v6 + 24;
  if (v7)
  {
    v9 = (v7 + 8);
  }

  ++*(a1 + 40);
  return v8;
}

void re::DynamicInlineArray<re::KeyValuePair<re::StringID,re::SharedPtr<re::SharedCoreIKRig>>,8ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 24 * *a1;
    v3 = (a1 + 16);
    do
    {
      v4 = *(v3 + 2);
      if (v4)
      {

        *(v3 + 2) = 0;
      }

      re::StringID::destroyString(v3);
      v3 = (v3 + 24);
      v2 -= 24;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

uint64_t re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v30, v9, v8);
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
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 + 8);
                v21[1] = v21[1] & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v21[1] = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                v21[2] = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v30[16];
                v23 = *&v30[16] + v17;
                v21[3] = *(*&v30[16] + v17 + 24);
                *(v23 + 24) = 0;
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 32;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 32 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 32 * v4;
}

double re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 32;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::StringID::destroyString((a1 + 8));
    v2 = *(a1 + 24);
    if (v2)
    {

      *(a1 + 24) = 0;
    }
  }
}

uint64_t re::SmallHashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,8ul,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false>::~SmallHashTable(uint64_t a1)
{
  re::DynamicInlineArray<re::KeyValuePair<re::StringID,re::SharedPtr<re::SharedCoreIKRig>>,8ul>::clear(a1 + 16);
  re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 224));
  *a1 = 0;
  *(a1 + 8) = 0;
  re::HashTable<re::StringID,re::SharedPtr<re::SharedCoreIKRig>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 224));
  re::DynamicInlineArray<re::KeyValuePair<re::StringID,re::SharedPtr<re::SharedCoreIKRig>>,8ul>::clear(a1 + 16);
  return a1;
}

void *re::IntrospectionFixedArray<unsigned long>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<unsigned long>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<unsigned long>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<unsigned long>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
{
  re::FixedArray<unsigned long>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (a2[1] <= v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 8;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<unsigned long>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 8 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 8 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<unsigned long>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
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

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 8 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

float32x4_t re::PoseQuantization::query(uint64_t a1, __n128 *a2, float32x4_t result, int32x4_t a4, double a5, float32x4_t a6)
{
  a6.i64[0] = 0;
  v7 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a6, vdupq_laneq_s32(a4, 3)), 0), vnegq_f32(a4), a4);
  v8 = vdupq_n_s32(0xB7A7C5AC);
  v9 = vaddq_f32(result, v8);
  v10 = vaddq_f32(v7, v8);
  v11 = vdupq_n_s32(0x37A7C5ACu);
  v33[0] = v9;
  v33[1] = v10;
  v32[0] = vaddq_f32(result, v11);
  v32[1] = vaddq_f32(v7, v11);
  v12 = a2 + 1;
  v13 = a2[1].n128_u64[0];
  if (!v13)
  {
    goto LABEL_37;
  }

  v30 = v7;
  v31 = result;
  v14 = a2 + 1;
  v15 = a2[1].n128_u64[0];
  do
  {
    v16 = std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100](&v15[2], v33);
    v17 = v16;
    if (!v16)
    {
      v14 = v15;
    }

    v15 = v15->n128_u64[v17];
  }

  while (v15);
  do
  {
    v18 = std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100](v32, &v13[2]);
    v19 = !v18;
    if (v18)
    {
      v12 = v13;
    }

    v13 = v13->n128_u64[v19];
  }

  while (v13);
  if (v14 == v12)
  {
LABEL_37:
    *a1 = 0;
  }

  else
  {
    result.i32[0] = v30.i32[1];
    while (1)
    {
      v20 = v14[3].n128_f32[0];
      if (v30.f32[0] == v20 || vabds_f32(v30.f32[0], v20) <= 0.00002)
      {
        v21 = v14[3].n128_f32[1];
        if (v30.f32[1] == v21 || vabds_f32(v30.f32[1], v21) <= 0.00002)
        {
          v22 = v14[3].n128_f32[2];
          if (v30.f32[2] == v22 || vabds_f32(v30.f32[2], v22) <= 0.00002)
          {
            v23 = v14[3].n128_f32[3];
            if (v30.f32[3] == v23 || vabds_f32(v30.f32[3], v23) <= 0.00002)
            {
              v24 = v14[2].n128_f32[0];
              if (v31.f32[0] == v24 || vabds_f32(v31.f32[0], v24) <= 0.00002)
              {
                v25 = v14[2].n128_f32[1];
                if (v31.f32[1] == v25 || vabds_f32(v31.f32[1], v25) <= 0.00002)
                {
                  v26 = v14[2].n128_f32[2];
                  if (v31.f32[2] == v26 || vabds_f32(v31.f32[2], v26) <= 0.00002)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      v27 = v14->n128_u64[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = v27->n128_u64[0];
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v14[1].n128_u64[0];
          v29 = *v28 == v14;
          v14 = v28;
        }

        while (!v29);
      }

      v14 = v28;
      if (v28 == v12)
      {
        goto LABEL_37;
      }
    }

    *a1 = 1;
    result = v14[4];
    *(a1 + 8) = result;
  }

  return result;
}

BOOL re::CollisionShapeAssetRegistry::remove(__n128 *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v96 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    for (i = 0; i != v6; ++i)
    {
      v11 = *(v4 + 8);
      if (v11 <= i)
      {
        v85[0] = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        *&v90[14] = 476;
        *&v90[18] = 2048;
        *&v90[20] = i;
        *&v90[28] = 2048;
        *&v90[30] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_149:
        v85[0] = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        *&v90[14] = 468;
        *&v90[18] = 2048;
        *&v90[20] = i;
        *&v90[28] = 2048;
        *&v90[30] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_150:
        v89 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        *&v90[14] = 476;
        *&v90[18] = 2048;
        *&v90[20] = i;
        *&v90[28] = 2048;
        *&v90[30] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_151:
        v89 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        *&v90[14] = 468;
        *&v90[18] = 2048;
        *&v90[20] = i;
        *&v90[28] = 2048;
        *&v90[30] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_152:
        v85[0] = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        *&v90[14] = 476;
        *&v90[18] = 2048;
        *&v90[20] = i;
        *&v90[28] = 2048;
        *&v90[30] = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = re::AssetHandle::assetInfo((*(v4 + 16) + v8));
      v11 = *(&v86 + 1);
      if (*(&v86 + 1) <= i)
      {
        goto LABEL_149;
      }

      v15 = v12[10];
      if (v15 == -1)
      {
        v15 = 0;
      }

      *(v87 + 8 * i) = v15;
      v11 = *(a3 + 8);
      if (v11 <= i)
      {
        goto LABEL_150;
      }

      re::PoseQuantization::query(v85, a1 + 3, *(*(a3 + 16) + v9), *(*(a3 + 16) + v9 + 16), v13, v14);
      if (LOBYTE(v85[0]) != 1)
      {
        goto LABEL_138;
      }

      v11 = v88;
      if (v88 <= i)
      {
        goto LABEL_151;
      }

      *(*(&v88 + 1) + 8 * i) = v85[1];
      v9 += 32;
      v8 += 24;
    }

    if (re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::remove(a1, &v86))
    {
      i = 0;
      v17 = a1 + 4;
      v81 = vdupq_n_s32(0x37A7C5ACu);
      v82 = vdupq_n_s32(0xB7A7C5AC);
      while (1)
      {
        v4 = *(a3 + 8);
        if (v4 <= i)
        {
          goto LABEL_152;
        }

        v18 = *(a3 + 16) + 32 * i;
        v19 = *v18;
        v16.i64[0] = 0;
        v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v16, vdupq_laneq_s32(*(v18 + 16), 3)), 0), vnegq_f32(*(v18 + 16)), *(v18 + 16));
        v16 = vaddq_f32(*v18, v81);
        v91 = vaddq_f32(*v18, v82);
        v92 = vaddq_f32(v20, v82);
        *v90 = v16;
        *&v90[16] = vaddq_f32(v20, v81);
        v21 = v17->n128_u64[0];
        if (!v17->n128_u64[0])
        {
          goto LABEL_136;
        }

        v83 = v20;
        v84 = v19;
        v22 = a1 + 4;
        v23 = v17->n128_u64[0];
        do
        {
          v24 = std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100](&v23[2], &v91);
          v25 = v24;
          if (!v24)
          {
            v22 = v23;
          }

          v23 = v23->n128_u64[v25];
        }

        while (v23);
        v26 = a1 + 4;
        do
        {
          v27 = std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100](v90, &v21[2]);
          v28 = !v27;
          if (v27)
          {
            v26 = v21;
          }

          v21 = v21->n128_u64[v28];
        }

        while (v21);
        v16 = v83;
        v29 = v84.f32[0];
        if (v22 == v26)
        {
          goto LABEL_136;
        }

        do
        {
          v30 = v22[3].n128_f32[0];
          if (v16.f32[0] != v30 && vabds_f32(v16.f32[0], v30) > 0.00002)
          {
            goto LABEL_63;
          }

          v31 = v22[3].n128_f32[1];
          if (v83.f32[1] != v31 && vabds_f32(v83.f32[1], v31) > 0.00002)
          {
            goto LABEL_63;
          }

          v32 = v22[3].n128_f32[2];
          if (v83.f32[2] != v32 && vabds_f32(v83.f32[2], v32) > 0.00002)
          {
            goto LABEL_63;
          }

          v33 = v22[3].n128_f32[3];
          if (v83.f32[3] != v33 && vabds_f32(v83.f32[3], v33) > 0.00002)
          {
            goto LABEL_63;
          }

          v34 = v22[2].n128_f32[0];
          if (v29 != v34 && vabds_f32(v29, v34) > 0.00002)
          {
            goto LABEL_63;
          }

          v35 = v22[2].n128_f32[1];
          if (v84.f32[1] != v35 && vabds_f32(v84.f32[1], v35) > 0.00002)
          {
            goto LABEL_63;
          }

          v36 = v22[2].n128_f32[2];
          if (v84.f32[2] != v36 && vabds_f32(v84.f32[2], v36) > 0.00002)
          {
            goto LABEL_63;
          }

          if (v22[4].n128_u64[1] != 1)
          {
            --v22[4].n128_u64[1];
LABEL_63:
            v49 = v22->n128_u64[1];
            if (v49)
            {
              do
              {
                v40 = v49;
                v49 = v49->n128_u64[0];
              }

              while (v49);
            }

            else
            {
              do
              {
                v40 = v22[1].n128_u64[0];
                v68 = v40->n128_u64[0] == v22;
                v22 = v40;
              }

              while (!v68);
            }

            goto LABEL_68;
          }

          v37 = v22->n128_u64[1];
          v38 = v37;
          v39 = v22;
          if (v37)
          {
            do
            {
              v40 = v38;
              v38 = v38->n128_u64[0];
            }

            while (v38);
          }

          else
          {
            do
            {
              v40 = v39[1].n128_u64[0];
              v68 = v40->n128_u64[0] == v39;
              v39 = v40;
            }

            while (!v68);
          }

          v41 = v22;
          if (v37)
          {
            do
            {
              v42 = v37;
              v37 = v37->n128_u64[0];
            }

            while (v37);
          }

          else
          {
            do
            {
              v42 = v41[1].n128_u64[0];
              v68 = *v42 == v41;
              v41 = v42;
            }

            while (!v68);
          }

          if (a1[3].n128_u64[1] == v22)
          {
            a1[3].n128_u64[1] = v42;
          }

          v43 = a1[4].n128_u64[0];
          --a1[4].n128_u64[1];
          v44 = v22->n128_u64[0];
          v45 = v22;
          if (v22->n128_u64[0])
          {
            v46 = v22->n128_u64[1];
            if (!v46)
            {
              v45 = v22;
LABEL_71:
              v48 = 0;
              v47 = v45[1].n128_u64[0];
              *(v44 + 16) = v47;
              goto LABEL_72;
            }

            do
            {
              v45 = v46;
              v46 = v46->n128_u64[0];
            }

            while (v46);
          }

          v44 = v45->n128_u64[1];
          if (v44)
          {
            goto LABEL_71;
          }

          v47 = v45[1].n128_u64[0];
          v48 = 1;
LABEL_72:
          v50 = *v47;
          if (*v47 == v45)
          {
            *v47 = v44;
            if (v45 == v43)
            {
              v50 = 0;
              v43 = v44;
            }

            else
            {
              v50 = v47[1];
            }
          }

          else
          {
            v47[1] = v44;
          }

          v51 = v45[1].n128_u8[8];
          if (v45 != v22)
          {
            v52 = v22[1].n128_u64[0];
            v45[1].n128_u64[0] = v52;
            v52[*v52 != v22] = v45;
            v53 = v22->n128_u64[0];
            v45->n128_u64[0] = v22->n128_u64[0];
            *(v53 + 16) = v45;
            v54 = v22->n128_u64[1];
            v45->n128_u64[1] = v54;
            if (v54)
            {
              *(v54 + 16) = v45;
            }

            v45[1].n128_u8[8] = v22[1].n128_u8[8];
            if (v43 == v22)
            {
              v43 = v45;
            }
          }

          if (!v43 || !v51)
          {
            goto LABEL_135;
          }

          if (!v48)
          {
            *(v44 + 24) = 1;
            goto LABEL_135;
          }

          while (1)
          {
            v55 = v50[1].n128_u64[0];
            v56 = *v55;
            if (*v55 == v50)
            {
              break;
            }

            if ((v50[1].n128_u8[8] & 1) == 0)
            {
              v50[1].n128_u8[8] = 1;
              *(v55 + 24) = 0;
              v57 = v55[1];
              v58 = *v57;
              v55[1] = *v57;
              if (v58)
              {
                *(v58 + 16) = v55;
              }

              v59 = v55[2];
              v57[2] = v59;
              v59[*v59 != v55] = v57;
              *v57 = v55;
              v55[2] = v57;
              if (v43 == v50->n128_u64[0])
              {
                v43 = v50;
              }

              v50 = *(v50->n128_u64[0] + 8);
            }

            v60 = v50->n128_u64[0];
            if (v50->n128_u64[0] && v60[1].n128_u8[8] != 1)
            {
              v61 = v50->n128_u64[1];
              if (v61 && (v61[1].n128_u8[8] & 1) == 0)
              {
LABEL_121:
                v60 = v50;
              }

              else
              {
                v60[1].n128_u8[8] = 1;
                v50[1].n128_u8[8] = 0;
                v69 = v60->n128_i64[1];
                v50->n128_u64[0] = v69;
                if (v69)
                {
                  *(v69 + 16) = v50;
                }

                v70 = v50[1].n128_u64[0];
                v60[1].n128_u64[0] = v70;
                v70[*v70 != v50] = v60;
                v60->n128_u64[1] = v50;
                v50[1].n128_u64[0] = v60;
                v61 = v50;
              }

              v71 = v60[1].n128_i64[0];
              v60[1].n128_u8[8] = *(v71 + 24);
              *(v71 + 24) = 1;
              v61[1].n128_u8[8] = 1;
              v72 = *(v71 + 8);
              v73 = *v72;
              *(v71 + 8) = *v72;
              if (v73)
              {
                *(v73 + 16) = v71;
              }

              v74 = *(v71 + 16);
              v72[2] = v74;
              v74[*v74 != v71] = v72;
              *v72 = v71;
              goto LABEL_134;
            }

            v61 = v50->n128_u64[1];
            if (v61 && v61[1].n128_u8[8] != 1)
            {
              goto LABEL_121;
            }

            v50[1].n128_u8[8] = 0;
            v62 = v50[1].n128_u64[0];
            if (v62 == v43 || (v62[1].n128_u8[8] & 1) == 0)
            {
              goto LABEL_115;
            }

LABEL_113:
            v50 = *(v62[1].n128_u64[0] + 8 * (*v62[1].n128_u64[0] == v62));
          }

          if ((v50[1].n128_u8[8] & 1) == 0)
          {
            v50[1].n128_u8[8] = 1;
            *(v55 + 24) = 0;
            v63 = v56->n128_u64[1];
            *v55 = v63;
            if (v63)
            {
              v63[1].n128_u64[0] = v55;
            }

            v64 = v55[2];
            v56[1].n128_u64[0] = v64;
            v64[*v64 != v55] = v56;
            v56->n128_u64[1] = v55;
            v55[2] = v56;
            v65 = v50->n128_u64[1];
            if (v43 == v65)
            {
              v43 = v50;
            }

            v50 = v65->n128_u64[0];
          }

          v66 = v50->n128_u64[0];
          if (v50->n128_u64[0] && v66[1].n128_u8[8] != 1)
          {
            goto LABEL_130;
          }

          v67 = v50->n128_u64[1];
          if (!v67 || v67[1].n128_u8[8] == 1)
          {
            v50[1].n128_u8[8] = 0;
            v62 = v50[1].n128_u64[0];
            v68 = v62[1].n128_u8[8] != 1 || v62 == v43;
            if (v68)
            {
LABEL_115:
              v62[1].n128_u8[8] = 1;
              goto LABEL_135;
            }

            goto LABEL_113;
          }

          if (v66 && (v66[1].n128_u8[8] & 1) == 0)
          {
LABEL_130:
            v67 = v50;
            goto LABEL_131;
          }

          v67[1].n128_u8[8] = 1;
          v50[1].n128_u8[8] = 0;
          v75 = v67->n128_u64[0];
          v50->n128_u64[1] = v67->n128_u64[0];
          if (v75)
          {
            *(v75 + 16) = v50;
          }

          v76 = v50[1].n128_u64[0];
          v67[1].n128_u64[0] = v76;
          v76[*v76 != v50] = v67;
          v67->n128_u64[0] = v50;
          v50[1].n128_u64[0] = v67;
          v66 = v50;
LABEL_131:
          v71 = v67[1].n128_i64[0];
          v67[1].n128_u8[8] = *(v71 + 24);
          *(v71 + 24) = 1;
          v66[1].n128_u8[8] = 1;
          v72 = *v71;
          v77 = *(*v71 + 8);
          *v71 = v77;
          if (v77)
          {
            *(v77 + 16) = v71;
          }

          v78 = *(v71 + 16);
          v72[2] = v78;
          v78[*v78 != v71] = v72;
          v72[1] = v71;
LABEL_134:
          *(v71 + 16) = v72;
LABEL_135:
          operator delete(v22);
          v16 = v83;
          v29 = v84.f32[0];
LABEL_68:
          v22 = v40;
        }

        while (v40 != v26);
LABEL_136:
        if (++i == v6)
        {
          v79 = 1;
          goto LABEL_140;
        }
      }
    }

LABEL_138:
    v79 = 0;
  }

  else
  {
    v79 = re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::remove(a1, &v86);
  }

LABEL_140:
  if (*(&v87 + 1))
  {
    if (v88)
    {
      (*(**(&v87 + 1) + 40))();
      v88 = 0uLL;
    }

    *(&v87 + 1) = 0;
  }

  if (v86 && *(&v86 + 1))
  {
    (*(*v86 + 40))();
  }

  return v79;
}

BOOL re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::CollisionShapeAssetRegistryKey>::operator()(a2);
  re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::findEntry<re::CollisionShapeAssetRegistryKey>(v11, a1, a2, v4);
  v5 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 72 * v13);
    v8 = *v7 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v8;
    }

    else
    {
      *(v6 + 72 * v14) = *(v6 + 72 * v14) & 0x80000000 | v8;
    }

    re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::EntryBase::free(v7);
    v9 = *(a1 + 40);
    *(*(a1 + 16) + 72 * v5) = *(*(a1 + 16) + 72 * v5) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return v5 != 0x7FFFFFFF;
}

uint64_t re::CollisionShapeAssetRegistry::addOrReplace(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  *__src = 0u;
  v54 = 0u;
  v52 = 0u;
  v49 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = (a1 + 64);
    v47 = vdupq_n_s32(0x37A7C5ACu);
    v48 = vdupq_n_s32(0xB7A7C5AC);
    while (1)
    {
      v11 = *(a2 + 8);
      if (v11 <= v9)
      {
        break;
      }

      v12 = re::AssetHandle::assetInfo((*(a2 + 16) + 24 * v9));
      v11 = *(&v52 + 1);
      if (*(&v52 + 1) <= v9)
      {
        goto LABEL_80;
      }

      v13 = v12[10];
      if (v13 == -1)
      {
        v13 = 0;
      }

      *(__src[0] + v9) = v13;
      v11 = *(a3 + 8);
      if (v11 <= v9)
      {
        goto LABEL_81;
      }

      v14 = (*(a3 + 16) + 32 * v9);
      v58 = v14[1];
      v57 = *v14;
      v15 = v58;
      if (v58.f32[3] < 0.0)
      {
        v15 = vnegq_f32(v58);
        v58 = v15;
      }

      *location = vaddq_f32(v57, v48);
      *&location[16] = vaddq_f32(v15, v48);
      v55[0] = vaddq_f32(v57, v47);
      v55[1] = vaddq_f32(v15, v47);
      v16 = *v10;
      if (!*v10)
      {
        ++*(a1 + 48);
LABEL_54:
        operator new();
      }

      v50 = v57.f32[0];
      v51 = v15;
      v17 = *(v57.i64 + 4);
      v18 = (a1 + 64);
      v19 = *v10;
      do
      {
        v20 = std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100]((v19 + 8), location);
        if (v20)
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        if (!v20)
        {
          v18 = v19;
        }

        v19 = *&v19[v21];
      }

      while (v19);
      v22 = (a1 + 64);
      v23 = v16;
      do
      {
        v24 = std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100](v55, (v23 + 8));
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = 2;
        }

        if (v24)
        {
          v22 = v23;
        }

        v23 = *&v23[v25];
      }

      while (v23);
      if (v18 == v22)
      {
LABEL_46:
        v36 = *(a1 + 48);
        *(a1 + 48) = v36 + 1;
        while (1)
        {
          while (1)
          {
            v18 = v16;
            if (!std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100](&v57, (v16 + 8)))
            {
              break;
            }

            v16 = *v16;
            if (!*v18)
            {
              goto LABEL_54;
            }
          }

          if (!std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100]((v16 + 8), &v57))
          {
            break;
          }

          v16 = *(v16 + 1);
          if (!v16)
          {
            goto LABEL_54;
          }
        }

        *(v16 + 8) = v36;
        v37 = 1;
      }

      else
      {
        while (1)
        {
          v26 = v18[12];
          if (v51.f32[0] == v26 || vabds_f32(v51.f32[0], v26) <= 0.00002)
          {
            v27 = v18[13];
            if (v51.f32[1] == v27 || vabds_f32(v51.f32[1], v27) <= 0.00002)
            {
              v28 = v18[14];
              if (v51.f32[2] == v28 || vabds_f32(v51.f32[2], v28) <= 0.00002)
              {
                v29 = v18[15];
                if (v51.f32[3] == v29 || vabds_f32(v51.f32[3], v29) <= 0.00002)
                {
                  v30 = v18[8];
                  if (v50 == v30 || vabds_f32(v50, v30) <= 0.00002)
                  {
                    v31 = v18[9];
                    if (*&v17 == v31 || vabds_f32(*&v17, v31) <= 0.00002)
                    {
                      v32 = v18[10];
                      if (*(&v17 + 1) == v32 || vabds_f32(*(&v17 + 1), v32) <= 0.00002)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }

          v33 = *(v18 + 1);
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = *(v18 + 2);
              v35 = *v34 == v18;
              v18 = v34;
            }

            while (!v35);
          }

          v18 = v34;
          if (v34 == v22)
          {
            goto LABEL_46;
          }
        }

        v36 = *(v18 + 8);
        v37 = *(v18 + 9) + 1;
      }

      *(v18 + 9) = v37;
      v11 = v54;
      if (v54 <= v9)
      {
        goto LABEL_82;
      }

      *(*(&v54 + 1) + 8 * v9++) = v36;
      if (v9 == v49)
      {
        goto LABEL_60;
      }
    }

    *&v55[0] = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *location = 136315906;
    *&location[4] = "operator[]";
    *&location[12] = 1024;
    *&location[14] = 476;
    *&location[18] = 2048;
    *&location[20] = v9;
    *&location[28] = 2048;
    *&location[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    *&v55[0] = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *location = 136315906;
    *&location[4] = "operator[]";
    *&location[12] = 1024;
    *&location[14] = 468;
    *&location[18] = 2048;
    *&location[20] = v9;
    *&location[28] = 2048;
    *&location[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_81:
    *&v55[0] = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *location = 136315906;
    *&location[4] = "operator[]";
    *&location[12] = 1024;
    *&location[14] = 476;
    *&location[18] = 2048;
    *&location[20] = v9;
    *&location[28] = 2048;
    *&location[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_82:
    *&v55[0] = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *location = 136315906;
    *&location[4] = "operator[]";
    *&location[12] = 1024;
    *&location[14] = 468;
    *&location[18] = 2048;
    *&location[20] = v9;
    *&location[28] = 2048;
    *&location[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    _os_crash();
    __break(1u);
  }

LABEL_60:
  if (*a4)
  {
    v38 = (*a4 + 8);
  }

  else
  {
    v38 = 0;
  }

  objc_initWeak(location, v38);
  v57 = 0uLL;
  v58.i64[0] = 0;
  v39 = re::Hash<re::CollisionShapeAssetRegistryKey>::operator()(&v52);
  re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::findEntry<re::CollisionShapeAssetRegistryKey>(&v57, a1, &v52, v39);
  v40 = v57.u32[3];
  if (v57.i32[3] == 0x7FFFFFFF)
  {
    v41 = re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::allocEntry(a1, v57.u32[2], v57.u64[0]);
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    if (v52)
    {
      re::FixedArray<unsigned long>::init<>((v41 + 8), v52, *(&v52 + 1));
      if (*(v41 + 16) != *(&v52 + 1))
      {
        goto LABEL_83;
      }

      if (*(&v52 + 1))
      {
        memmove(*(v41 + 24), __src[0], 8 * *(&v52 + 1));
      }
    }

    re::FixedArray<unsigned long>::FixedArray((v41 + 32), &__src[1]);
    *(v41 + 56) = 0;
    objc_copyWeak((v41 + 56), location);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v43 = *(a1 + 16) + 72 * v40;
    v44 = (v43 + 56);
    if ((v43 + 56) != location)
    {
      objc_destroyWeak((v43 + 56));
      *v44 = 0;
      objc_copyWeak(v44, location);
    }
  }

  objc_destroyWeak(location);
  if (__src[1])
  {
    if (v54)
    {
      (*(*__src[1] + 40))();
      v54 = 0uLL;
    }

    __src[1] = 0;
  }

  result = v52;
  if (v52)
  {
    if (*(&v52 + 1))
    {
      return (*(*v52 + 40))();
    }
  }

  return result;
}

uint64_t re::CollisionShapeAssetRegistry::find@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(a2 + 8);
      if (v13 <= v12)
      {
        break;
      }

      v14 = re::AssetHandle::assetInfo((*(a2 + 16) + v10));
      v13 = *(&v22 + 1);
      if (*(&v22 + 1) <= v12)
      {
        goto LABEL_23;
      }

      v17 = v14[10];
      if (v17 == -1)
      {
        v17 = 0;
      }

      *(v23 + 8 * v12) = v17;
      v13 = *(a3 + 8);
      if (v13 <= v12)
      {
        goto LABEL_24;
      }

      re::PoseQuantization::query(v21, a1 + 3, *(*(a3 + 16) + v11), *(*(a3 + 16) + v11 + 16), v15, v16);
      if (LOBYTE(v21[0]) != 1)
      {
        goto LABEL_12;
      }

      v13 = v24;
      if (v24 <= v12)
      {
        goto LABEL_25;
      }

      *(*(&v24 + 1) + 8 * v12++) = v21[1];
      v11 += 32;
      v10 += 24;
      if (v8 == v12)
      {
        goto LABEL_11;
      }
    }

    v21[0] = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 476;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v21[0] = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 468;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 476;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 468;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_11:
  v18 = re::Hash<re::CollisionShapeAssetRegistryKey>::operator()(&v22);
  re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::findEntry<re::CollisionShapeAssetRegistryKey>(&v34, a1, &v22, v18);
  if (HIDWORD(v34) == 0x7FFFFFFF)
  {
LABEL_12:
    objc_initWeak(a4, 0);
  }

  else
  {
    v19 = a1[1].n128_u64[0] + 72 * HIDWORD(v34);
    *a4 = 0;
    objc_copyWeak(a4, (v19 + 56));
  }

  if (*(&v23 + 1))
  {
    if (v24)
    {
      (*(**(&v23 + 1) + 40))();
      v24 = 0uLL;
    }

    *(&v23 + 1) = 0;
  }

  result = v22;
  if (v22)
  {
    if (*(&v22 + 1))
    {
      return (*(*v22 + 40))();
    }
  }

  return result;
}

BOOL std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    v3 = *(a1 + i);
    v4 = *(a2 + i);
    v5 = v3 < v4;
    if (v3 != v4)
    {
      return v5;
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  for (j = 0; j != 12; j += 4)
  {
    v6 = *(a1 + 20 + j);
    v7 = *(a2 + 20 + j);
    if (v6 != v7)
    {
      return v6 < v7;
    }
  }

  return 0;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::findEntry<re::CollisionShapeAssetRegistryKey>(uint64_t result, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2)
  {
    v4 = a4 % *(a2 + 24);
    v6 = *(*(a2 + 8) + 4 * v4);
    if (v6 != 0x7FFFFFFF)
    {
      v8 = *(a2 + 16);
      v9 = a3[1];
      v5 = 0x7FFFFFFF;
      v7 = 0x7FFFFFFF;
      while (1)
      {
        v10 = v6;
        v11 = (v8 + 72 * v6);
        if (v11[2] == v9)
        {
          if (!v9)
          {
LABEL_16:
            v5 = v10;
            goto LABEL_17;
          }

          v12 = 0;
          while (*(v11[3] + 8 * v12) == *(a3[2] + 8 * v12))
          {
            if (v11[5] <= v12)
            {
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_19:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            if (a3[4] == v12)
            {
              goto LABEL_19;
            }

            if (*(v11[6] + 8 * v12) != *(a3[5] + 8 * v12))
            {
              break;
            }

            if (v9 == ++v12)
            {
              goto LABEL_16;
            }
          }
        }

        v6 = *(v8 + 72 * v10) & 0x7FFFFFFF;
        v7 = v10;
        if (v6 == 0x7FFFFFFF)
        {
          v7 = v10;
          goto LABEL_17;
        }
      }
    }
  }

  v7 = 0x7FFFFFFF;
LABEL_17:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

uint64_t re::Hash<re::CollisionShapeAssetRegistryKey>::operator()(void *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = 0xBF58476D1CE4E5B9 * (*v2 ^ (*v2 >> 30));
  v4 = (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31);
  v5 = v1 - 1;
  if (v5)
  {
    v6 = v2 + 1;
    do
    {
      v7 = *v6++;
      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
      v4 ^= (v4 << 6) - 0x61C8864680B583E9 + (v4 >> 2) + (v8 ^ (v8 >> 31));
      --v5;
    }

    while (v5);
  }

  v9 = a1[4];
  if (!v9)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = a1[5];
  v11 = 0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30));
  v12 = (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31);
  v13 = v9 - 1;
  if (v13)
  {
    v14 = v10 + 1;
    do
    {
      v15 = *v14++;
      v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
      v12 ^= (v12 << 6) - 0x61C8864680B583E9 + (v12 >> 2) + (v16 ^ (v16 >> 31));
      --v13;
    }

    while (v13);
  }

  return (v4 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
}

uint64_t re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 32;
            do
            {
              v19 = (v13 + v18);
              if ((*(v13 + v18 - 32) & 0x80000000) != 0)
              {
                v20 = re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::allocEntry(a1, v19[4] % *(a1 + 24));
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 8) = 0;
                v21 = *(v19 - 2);
                *(v20 + 8) = *(v19 - 3);
                *(v20 + 16) = v21;
                *(v19 - 3) = 0;
                *(v19 - 2) = 0;
                v22 = *(v20 + 24);
                *(v20 + 24) = *(v19 - 1);
                *(v19 - 1) = v22;
                *(v20 + 40) = 0;
                *(v20 + 48) = 0;
                *(v20 + 32) = 0;
                v23 = v19[1];
                *(v20 + 32) = *v19;
                *(v20 + 40) = v23;
                *v19 = 0;
                v19[1] = 0;
                v24 = *(v20 + 48);
                *(v20 + 48) = v19[2];
                v19[2] = v24;
                v13 = *&v32[16];
                v25 = *&v32[16] + v18;
                *(v20 + 56) = 0;
                objc_moveWeak((v20 + 56), (v25 + 24));
              }

              ++v17;
              v18 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<re::CollisionShapeAssetRegistryKey,re::ArcWeakPtr<re::internal::AssetReference>,re::Hash<re::CollisionShapeAssetRegistryKey>,re::EqualTo<re::CollisionShapeAssetRegistryKey>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 72 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 72 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 72 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 64) = a3;
  ++*(a1 + 28);
  return v26 + 72 * v5;
}

void *re::BlendShapeWeightsMapping::update<re::MeshAsset>(re::BlendShapeWeightsMapping *a1, void *a2, re::MeshNameMap *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 1) != a5)
  {
    re::BlendShapeWeightsMapping::rebuildMappingData<re::MeshAsset>(a1, a2, a3, a4, a6);
    *(a1 + 1) = a5;
  }

  return re::BlendShapeWeightsMapping::updateBlendFactors(a1, a6);
}

uint64_t re::BlendShapeWeightsMapping::rebuildMappingData<re::MeshAsset>(re::BlendShapeWeightsMapping *this, void *a2, re::MeshNameMap *a3, uint64_t a4, uint64_t a5)
{
  if (!*this)
  {
    *(this + 1) = -1;
  }

  re::BlendShapeWeightsMapping::clear(this);
  re::BlendShapeWeightsDefinitionAsset::constructBlendShapeWeights(a2, *this, a5);

  return re::BlendShapeWeightsMapping::buildMappingData<re::MeshAsset>(this, a2, a3, a4);
}

void *re::BlendShapeWeightsMapping::updateBlendFactors(void *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = result[3];
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    while (v5 != v4)
    {
      v8 = result[4];
      v9 = *(v8 + v3);
      if (v9 == -1)
      {
        v12 = 0;
      }

      else
      {
        if (v6 <= v9)
        {
          goto LABEL_12;
        }

        v10 = *(v8 + v3 + 4);
        v11 = v7 + 32 * v9;
        if (*(v11 + 8) <= v10)
        {
          goto LABEL_13;
        }

        v12 = *(*(v11 + 16) + 4 * v10);
      }

      *(result[7] + 4 * v4++) = v12;
      v3 += 8;
      if (v2 == v4)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::BlendShapeWeightsMapping::clear(re::BlendShapeWeightsMapping *this)
{
  *(this + 1) = -1;
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);

  return re::FixedArray<CoreIKTransform>::deinit(this + 8);
}

uint64_t re::BlendShapeWeightsMapping::blendWeightValues(re::BlendShapeWeightsMapping *this, const re::MeshNameMap *a2, unsigned int a3, int a4)
{
  if (*(a2 + 54) <= a3)
  {
    return 0;
  }

  v7 = re::MeshNameMap::meshPartStartIndexForInstance(a2, a3) + a4;
  if (v7 >= re::MeshNameMap::meshPartStartIndexForInstance(a2, a3 + 1))
  {
    return 0;
  }

  if (*(this + 9) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 10) + 16 * v7);
}

uint64_t re::BlendShapeWeightsMapping::buildMappingData<re::MeshAsset>(_anonymous_namespace_ *a1, void *a2, re::MeshNameMap *a3, uint64_t a4)
{
  v112 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 336);
  if (v8)
  {
    v9 = *(*(a4 + 344) + 4 * v8 - 4);
  }

  else
  {
    v9 = 0;
  }

  v94 = 0;
  v95 = 0;
  v96 = 0;
  v11 = *(a4 + 216);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = re::MeshNameMap::modelIndex(a4, i);
      v14 = re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(a3, v13);
      started = re::MeshNameMap::meshPartStartIndexForInstance(a4, i);
      v15 = *(v14 + 144);
      if (v15)
      {
        v16 = *(v15 + 40);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v14 + 56);
      if (v16 == v17 && v17 != 0)
      {
        v19 = 0;
        v20 = v95;
        v21 = v96 + 4 * started;
        do
        {
          if (v15)
          {
            if (*(v15 + 40) > v19)
            {
              v22 = *(*(v15 + 48) + 4 * v19);
              if (v22 != -1)
              {
                v23 = (started + v19);
                if (v20 <= v23)
                {
                  goto LABEL_106;
                }

                *(v21 + 4 * v19) = v22;
              }
            }
          }

          ++v19;
        }

        while (v16 != v19);
      }
    }
  }

  v24 = *(a4 + 336);
  if (v24)
  {
    v25 = *(*(a4 + 344) + 4 * v24 - 4);
  }

  else
  {
    v25 = 0;
  }

  v26 = a1;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v28 = a2[7];
  v90 = a4;
  v83 = a3;
  v81 = v11;
  if (!v28)
  {
    v57 = 0;
    v52 = *a1;
    *(a1 + 2) = *a1;
    *(a1 + 3) = 0;
    goto LABEL_65;
  }

  v85 = 0;
  v29 = a2[9];
  v4 = v29 + 48 * v28;
  do
  {
    v30 = *(v29 + 40);
    v31 = *(v29 + 44);
    if (v30 <= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (a2[2] <= v32)
    {
      v46 = *re::assetsLogObjects(v27);
      v27 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (!v27)
      {
        goto LABEL_53;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = v32;
      v47 = v46;
      v48 = "Blend factor asset has an invalid blend factor values index: %u.";
      v49 = 8;
      goto LABEL_56;
    }

    re::MeshNameMap::meshInstancePartsForIdentifier(a4, v29, &buf);
    v98[0] = v83;
    v98[1] = a4;
    v98[2] = buf;
    v98[6] = v109;
    v99 = 0;
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v98[3], &buf + 8);
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf + 8);
    v33 = v98[2];
    if (!v98[2])
    {
      v27 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v98[3]);
LABEL_52:
      v50 = *re::assetsLogObjects(v27);
      v27 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
      if (!v27)
      {
        goto LABEL_53;
      }

      v51 = *(v29 + 16);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v51;
      v47 = v50;
      v48 = "Blend factor for mesh %s was not applied.";
      v49 = 12;
LABEL_56:
      _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, v48, &buf, v49);
      goto LABEL_53;
    }

    v34 = 0;
    v14 = 0;
    v35 = v98[2] - 1;
LABEL_32:
    v36 = v34;
    do
    {
      *&buf = v36;
      v37 = (*(*v99 + 16))(v99, &buf);
      *&buf = v36;
      v38 = (*(*v99 + 16))(v99, &buf) >> 32;
      v20 = re::MeshNameMap::meshPartStartIndexForInstance(v90, v37) + v38;
      v5 = v95;
      if (v95 <= v20)
      {
        goto LABEL_105;
      }

      if (*(v96 + 4 * v20) != -1)
      {
        v5 = v92;
        if (v92 <= v20)
        {
          goto LABEL_114;
        }

        if (*(v93 + 4 * v20) == -1)
        {
          *&buf = v36;
          v39 = (*(*v99 + 16))(v99, &buf);
          v40 = re::MeshNameMap::modelIndex(v98[1], v39);
          v41 = re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(v83, v40);
          v44 = *(v41 + 144);
          v42 = (v41 + 144);
          v43 = v44;
          if (v44 && *(v43 + 40) > v38)
          {
            v45 = *(*(v43 + 48) + 4 * v38);
          }

          else
          {
            v45 = 0xFFFFFFFFLL;
          }

          v85 += (re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v42, v45) + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v5 = v92;
        }

        if (v5 <= v20)
        {
LABEL_115:
          v97 = 0;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          buf = 0u;
          v53 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v100 = 136315906;
          *&v100[4] = "operator[]";
          v101 = 1024;
          v102 = 468;
          v103 = 2048;
          v104 = v20;
          v105 = 2048;
          v106 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_116;
        }

        *(v93 + 4 * v20) = v32;
        v34 = v36 + 1;
        v14 = 1;
        if (v35 == v36)
        {
          v27 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v98[3]);
          v26 = a1;
          a4 = v90;
          goto LABEL_53;
        }

        goto LABEL_32;
      }

      ++v36;
    }

    while (v33 != v36);
    v27 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v98[3]);
    v26 = a1;
    a4 = v90;
    if ((v14 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    v29 += 48;
  }

  while (v29 != v4);
  v52 = *v26;
  v53 = v85;
  v26[2] = *v26;
  v26[3] = v85;
  v11 = v81;
  if (!v85)
  {
    v57 = 0;
    a3 = v83;
    goto LABEL_65;
  }

  if (v85 >> 61)
  {
LABEL_116:
    re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v53);
    _os_crash();
    __break(1u);
LABEL_117:
    re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  v4 = 8 * v85;
  v54 = (*(*v52 + 32))(v52, 8 * v85, 4);
  v26[4] = v54;
  if (!v54)
  {
    goto LABEL_117;
  }

  v56 = v54;
  if (v85 != 1)
  {
    v4 -= 8;
    memset(v54, 255, v4);
    v56 = (v56 + v4);
  }

  *v56 = -1;
  v52 = *v26;
  a3 = v83;
  v11 = v81;
  v57 = v85;
LABEL_65:
  re::FixedArray<int>::init<>(v26 + 5, v52, v57);
  v58 = *(a4 + 336);
  if (v58)
  {
    v59 = *(*(a4 + 344) + 4 * v58 - 4);
  }

  else
  {
    v59 = 0;
  }

  re::FixedArray<re::Slice<unsigned int>>::init<>(v26 + 8, *v26, v59);
  if (v11)
  {
    v60 = 0;
    v61 = 0;
    do
    {
      v62 = re::MeshNameMap::modelIndex(a4, v61);
      v63 = re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(a3, v62);
      v82 = v61;
      v64 = re::MeshNameMap::meshPartStartIndexForInstance(a4, v61);
      v86 = *(v63 + 56);
      if (v86)
      {
        v65 = 0;
        v84 = v64;
        do
        {
          v14 = v65 + v84;
          v23 = v92;
          if (v92 <= v65 + v84)
          {
            goto LABEL_107;
          }

          v4 = *(v93 + 4 * v14);
          if (v4 != -1)
          {
            v23 = v95;
            if (v95 <= v14)
            {
              goto LABEL_108;
            }

            v66 = *(v96 + 4 * v14);
            v67 = re::BlendShapeModelUtil::blendShapeTargetCountForGroup((v63 + 144), v66);
            memset(v98, 0, 36);
            *(&v98[4] + 4) = 0x7FFFFFFF;
            v89 = v67;
            if (v67)
            {
              v5 = 0;
              do
              {
                re::BlendShapeModelUtil::blendShapeTargetName((v63 + 144), v66, v5, &buf);
                *v100 = v5;
                v69 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v98, &buf, v100);
                if (buf)
                {
                  if (buf)
                  {
                  }
                }

                ++v5;
              }

              while (v67 != v5);
            }

            v23 = a2[2];
            if (v23 <= v4)
            {
              goto LABEL_109;
            }

            v5 = a2[4] + 24 * v4;
            v70 = *(v5 + 8);
            if (*(v5 + 8))
            {
              v71 = 0;
              while (1)
              {
                v72 = *(v5 + 8);
                if (v72 <= v71)
                {
                  break;
                }

                v73 = (*(v5 + 16) + 16 * v71);
                v74 = 0xBF58476D1CE4E5B9 * ((*v73 >> 31) ^ (*v73 >> 1));
                re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v98, v73, (0x94D049BB133111EBLL * (v74 ^ (v74 >> 27))) ^ ((0x94D049BB133111EBLL * (v74 ^ (v74 >> 27))) >> 31), &buf);
                if (HIDWORD(buf) != 0x7FFFFFFF)
                {
                  v72 = *(v98[2] + 4 * HIDWORD(buf) + 3) + v60;
                  v75 = v26;
                  v26 = v26[3];
                  if (v26 <= v72)
                  {
                    goto LABEL_104;
                  }

                  *(v75[4] + 8 * v72) = v4 | (v71 << 32);
                  v26 = v75;
                }

                if (++v71 == v70)
                {
                  goto LABEL_89;
                }
              }

              v97 = 0;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v100 = 136315906;
              *&v100[4] = "operator[]";
              v101 = 1024;
              v102 = 476;
              v103 = 2048;
              v104 = v71;
              v105 = 2048;
              v106 = v72;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v97 = 0;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              v20 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v100 = 136315906;
              *&v100[4] = "operator[]";
              v101 = 1024;
              v102 = 468;
              v103 = 2048;
              v104 = v72;
              v105 = 2048;
              v106 = v26;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_105:
              v97 = 0;
              v23 = v100;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v100 = 136315906;
              *&v100[4] = "operator[]";
              v101 = 1024;
              v102 = 468;
              v103 = 2048;
              v104 = v20;
              v105 = 2048;
              v106 = v5;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_106:
              *v100 = 0;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v98[0]) = 136315906;
              *(v98 + 4) = "operator[]";
              WORD2(v98[1]) = 1024;
              *(&v98[1] + 6) = 468;
              WORD1(v98[2]) = 2048;
              *(&v98[2] + 4) = v23;
              WORD2(v98[3]) = 2048;
              *(&v98[3] + 6) = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_107:
              *v100 = 0;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v98[0]) = 136315906;
              *(v98 + 4) = "operator[]";
              WORD2(v98[1]) = 1024;
              *(&v98[1] + 6) = 468;
              WORD1(v98[2]) = 2048;
              *(&v98[2] + 4) = v14;
              WORD2(v98[3]) = 2048;
              *(&v98[3] + 6) = v23;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_108:
              *v100 = 0;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v98[0]) = 136315906;
              *(v98 + 4) = "operator[]";
              WORD2(v98[1]) = 1024;
              *(&v98[1] + 6) = 468;
              WORD1(v98[2]) = 2048;
              *(&v98[2] + 4) = v14;
              WORD2(v98[3]) = 2048;
              *(&v98[3] + 6) = v23;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_109:
              v97 = 0;
              v60 = v100;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v100 = 136315906;
              *&v100[4] = "operator[]";
              v101 = 1024;
              v102 = 797;
              v103 = 2048;
              v104 = v4;
              v105 = 2048;
              v106 = v23;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v97 = 0;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v100 = 136315906;
              *&v100[4] = "slice";
              v101 = 1024;
              v102 = 502;
              v103 = 2048;
              v104 = v60;
              v105 = 2048;
              v106 = v23;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_111:
              re::internal::assertLog(7, v68, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 508, v60, v77, v76);
              _os_crash();
              __break(1u);
LABEL_112:
              re::internal::assertLog(7, v68, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, v60, v77, v76);
              _os_crash();
              __break(1u);
LABEL_113:
              v97 = 0;
              v20 = v100;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v100 = 136315906;
              *&v100[4] = "operator[]";
              v101 = 1024;
              v102 = 468;
              v103 = 2048;
              v104 = v14;
              v105 = 2048;
              v106 = v23;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v97 = 0;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v100 = 136315906;
              *&v100[4] = "operator[]";
              v101 = 1024;
              v102 = 468;
              v103 = 2048;
              v104 = v20;
              v105 = 2048;
              v106 = v5;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_115;
            }

LABEL_89:
            v76 = v26[6];
            v23 = (v76 + 1);
            if (v76 + 1 <= v60)
            {
              goto LABEL_110;
            }

            v77 = (v89 + 3) & 0x1FFFFFFFCLL;
            v78 = v60 + v77;
            if (__CFADD__(v60, v77))
            {
              goto LABEL_111;
            }

            if (v78 > v76)
            {
              goto LABEL_112;
            }

            v23 = v26[9];
            if (v23 <= v14)
            {
              goto LABEL_113;
            }

            v79 = (v26[10] + 16 * v14);
            *v79 = v26[7] + 4 * v60;
            v79[1] = v77;
            re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v98);
            v60 = v78;
          }

          ++v65;
        }

        while (v65 != v86);
      }

      v61 = v82 + 1;
      a4 = v90;
      a3 = v83;
    }

    while (v82 + 1 != v81);
  }

  if (v91 && v92)
  {
    (*(*v91 + 40))();
  }

  result = v94;
  if (v94)
  {
    if (v95)
    {
      return (*(*v94 + 40))();
    }
  }

  return result;
}