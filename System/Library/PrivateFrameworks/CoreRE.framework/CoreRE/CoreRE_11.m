uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKControlPoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigComponentConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigComponentConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigComponentConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigComponentConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigComponentConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigComponentConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigComponentConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigComponentConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigComponentConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::RigComponentConstraint>::add(this, v10);
  if (v12)
  {
    if (v14)
    {
      (*(*v12 + 40))();
    }

    v14 = 0;
    *&v13 = 0;
    v12 = 0uLL;
    ++DWORD2(v13);
  }

  if (*(&v10[0] + 1) && *(&v11 + 1))
  {
    (*(**(&v10[0] + 1) + 40))();
  }

  v8 = (*(this + 4) + 88 * *(this + 2) - 88);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigComponentConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::deinit(uint64_t a1)
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
        v5 = 88 * v4;
        v6 = v3 + 48;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          v6 += 88;
          v5 -= 88;
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

void *re::DynamicArray<re::RigComponentConstraint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 88 * a2 + 48;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 40);
      ++v9;
      v8 += 88;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 1) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 8) = 0;
        *(v7 + 32) = 0;
        *(v7 + 80) = 0;
        *(v7 + 40) = 0uLL;
        *(v7 + 56) = 0uLL;
        *(v7 + 72) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigComponentConstraint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigComponentConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigComponentConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 88 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 88;
        v11 -= 88;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 88 * v2;
    v4 = *(result + 32) + 48;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v4);
      result = re::DynamicArray<unsigned long>::deinit(v4 - 40);
      v4 += 88;
      v3 -= 88;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 88 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigComponentConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigBasicConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigBasicConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigBasicConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigBasicConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigBasicConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigBasicConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigBasicConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigBasicConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::RigBasicConstraint>::add(this, v10);
  if (*(&v11 + 1))
  {
    if (*(&v13 + 1))
    {
      (*(**(&v11 + 1) + 40))();
    }

    *(&v13 + 1) = 0;
    v12 = 0uLL;
    *(&v11 + 1) = 0;
    LODWORD(v13) = v13 + 1;
  }

  if (*&v10[0] && v11)
  {
    (*(**&v10[0] + 40))();
  }

  v8 = (*(this + 4) + 80 * *(this + 2) - 80);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigBasicConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

uint64_t re::DynamicArray<re::RigBasicConstraint>::deinit(uint64_t a1)
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
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 80;
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

void *re::DynamicArray<re::RigBasicConstraint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 72) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigBasicConstraint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigBasicConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigBasicConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 80 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 80;
        v11 -= 80;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigBasicConstraint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 80 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 80;
      v4 -= 80;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 80 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigBasicConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigAimConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigAimConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigAimConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigAimConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigAimConstraint>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigAimConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigAimConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigAimConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigAimConstraint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigAimConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  v17 = 0xFFFFFFFFFFFFFFFFLL;
  v8 = re::DynamicArray<re::RigAimConstraint>::add(this, v11);
  if (*(&v14 + 1))
  {
    if (*(&v16 + 1))
    {
      (*(**(&v14 + 1) + 40))(v8);
    }

    *(&v16 + 1) = 0;
    v15 = 0uLL;
    *(&v14 + 1) = 0;
    LODWORD(v16) = v16 + 1;
  }

  if (v12 && v14)
  {
    (*(*v12 + 40))(v8);
  }

  v9 = (*(this + 4) + 144 * *(this + 2) - 144);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigAimConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

uint64_t re::DynamicArray<re::RigAimConstraint>::deinit(uint64_t a1)
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
        v5 = 144 * v4;
        v6 = v3 + 48;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6 + 40);
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 144;
          v5 -= 144;
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

void *re::DynamicArray<re::RigAimConstraint>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 144 * a2 + 48;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 144;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigAimConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 144 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 4) = 0;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 60) = 0uLL;
        *(v7 + 80) = 0uLL;
        *(v7 + 96) = 0uLL;
        *(v7 + 112) = 0;
        *(v7 + 120) = 0;
        *(v7 + 128) = -1;
        v6 += 144;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigAimConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigAimConstraint>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigAimConstraint>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigAimConstraint>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::RigAimConstraint>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 144 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 144;
        v11 -= 144;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::RigAimConstraint>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 144 * v2;
    v4 = *(result + 32) + 48;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v4 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 144;
      v3 -= 144;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 144 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 144 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigAimConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeChannel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeChannel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeChannel>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeChannel>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeChannel>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeChannel>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E3049610;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

uint64_t re::IntrospectionDynamicArray<re::RigNodeChannel>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::DynamicArray<re::RigNodeChannel>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 16 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = 0;
        *(v6 + 8) = -1;
        v6 += 16;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeChannel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstant>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeConstant>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeConstant>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstant>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstant>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeConstant>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeConstant>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E304DD20;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

uint64_t re::IntrospectionDynamicArray<re::RigNodeConstant>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::DynamicArray<re::RigNodeConstant>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 16 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = -1;
        *(v6 + 8) = -1;
        v6 += 16;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeConstant>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeConstant>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E304DD20;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

uint64_t re::IntrospectionDynamicArray<re::RigNodeTemporaryValue>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeConstant>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeTemporaryValue>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpressionParameter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigExpressionParameter>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigExpressionParameter>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigExpressionParameter>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpressionParameter>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigExpressionParameter>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 16 * v9) = xmmword_1E3049610;
  v15 = *(a4 + 16) + 1;
  *(a4 + 16) = v15;
  ++*(a4 + 24);
  v16 = (*(a4 + 32) + 16 * v15 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v16);
  return v16;
}

uint64_t re::IntrospectionDynamicArray<re::RigExpressionParameter>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpressionParameter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpression>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigExpression>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigExpression>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigExpression>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigExpression>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigExpression>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigExpression>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0xFFFFFFFFLL;
  v15[1] = -1;
  v15[2] = -1;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RigExpression>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::RigExpression>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v5;
      if ((24 * v5) >= 1)
      {
        v7 = v3[4] + 24 * v4;
        v8 = v6 / 0x18 + 1;
        do
        {
          *v7 = -1;
          *(v7 + 8) = -1;
          *(v7 + 16) = -1;
          v7 += 24;
          --v8;
        }

        while (v8 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigExpression>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 24 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigExpression>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigTwoBoneIKHandles>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::RigTwoBoneIKHandles>::add(this, v10);
  if (*(&v21 + 1))
  {
    if (*(&v23 + 1))
    {
      (*(**(&v21 + 1) + 40))();
    }

    *(&v23 + 1) = 0;
    v22 = 0uLL;
    *(&v21 + 1) = 0;
    LODWORD(v23) = v23 + 1;
  }

  if (v19)
  {
    if (v21)
    {
      (*(*v19 + 40))();
    }

    *&v21 = 0;
    *&v20 = 0;
    v19 = 0uLL;
    ++DWORD2(v20);
  }

  if (*(&v16 + 1))
  {
    if (*(&v18 + 1))
    {
      (*(**(&v16 + 1) + 40))();
    }

    *(&v18 + 1) = 0;
    v17 = 0uLL;
    *(&v16 + 1) = 0;
    LODWORD(v18) = v18 + 1;
  }

  if (v14)
  {
    if (v16)
    {
      (*(*v14 + 40))();
    }

    *&v16 = 0;
    *&v15 = 0;
    v14 = 0uLL;
    ++DWORD2(v15);
  }

  if (*(&v11 + 1))
  {
    if (*(&v13 + 1))
    {
      (*(**(&v11 + 1) + 40))();
    }

    *(&v13 + 1) = 0;
    v12 = 0uLL;
    *(&v11 + 1) = 0;
    LODWORD(v13) = v13 + 1;
  }

  if (*&v10[0] && v11)
  {
    (*(**&v10[0] + 40))();
  }

  v8 = (*(this + 4) + 240 * *(this + 2) - 240);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigTwoBoneIKHandles>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 240 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 240 * a3;
}

uint64_t re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(uint64_t a1)
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
        v6 = 240 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 200);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 160);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 120);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 80);
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 40);
          re::DynamicArray<unsigned long>::deinit(v3 + v5);
          v5 += 240;
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

void *re::DynamicArray<re::RigTwoBoneIKHandles>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 240 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 200);
      re::DynamicArray<unsigned long>::deinit(v10 + 160);
      re::DynamicArray<unsigned long>::deinit(v10 + 120);
      re::DynamicArray<unsigned long>::deinit(v10 + 80);
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 240;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 240 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 232) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0uLL;
        *(v7 + 88) = 0uLL;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0uLL;
        *(v7 + 168) = 0uLL;
        *(v7 + 184) = 0;
        *(v7 + 192) = 0uLL;
        *(v7 + 208) = 0uLL;
        v6 += 240;
        *(v7 + 224) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 240 * v8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 200);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 160);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 120);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 80);
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 40);
        re::DynamicArray<unsigned long>::deinit(v10 + v9);
        v9 += 240;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v12 = re::DynamicArray<re::RigTwoBoneIKHandles>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 240 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 240;
        v15 -= 240;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 240 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 240 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTwoBoneIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigSingleChainIKHandles>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSingleChainIKHandles>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  DWORD2(v17) = 1008981770;
  v8.n128_f32[0] = re::DynamicArray<re::RigSingleChainIKHandles>::add(this, v11);
  if (v15)
  {
    if (v17)
    {
      (*(*v15 + 40))(v8.n128_f32[0]);
    }

    *&v17 = 0;
    *&v16 = 0;
    v15 = 0uLL;
    ++DWORD2(v16);
  }

  if (*(&v12 + 1))
  {
    if (*(&v14 + 1))
    {
      (*(**(&v12 + 1) + 40))(v8);
    }

    *(&v14 + 1) = 0;
    v13 = 0uLL;
    *(&v12 + 1) = 0;
    LODWORD(v14) = v14 + 1;
  }

  if (*&v11[0] && v12)
  {
    (*(**&v11[0] + 40))(v8);
  }

  v9 = (*(this + 4) + (*(this + 2) << 7) - 128);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigSingleChainIKHandles>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 7);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 7);
}

uint64_t re::DynamicArray<re::RigSingleChainIKHandles>::deinit(uint64_t a1)
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
        v5 = v4 << 7;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 80);
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 128;
          v5 -= 128;
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

void *re::DynamicArray<re::RigSingleChainIKHandles>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = a2 << 7;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 80);
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 128;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 7;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 112) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0uLL;
        *(v7 + 88) = 0uLL;
        *(v7 + 104) = 0;
        v6 += 128;
        *(v7 + 120) = 1008981770;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

float re::DynamicArray<re::RigSingleChainIKHandles>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigSingleChainIKHandles>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 7);
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  *(v5 + 72) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 64) = 0;
  v9 = *(a2 + 48);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 48) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v10 = *(v5 + 56);
  *(v5 + 56) = *(a2 + 56);
  *(a2 + 56) = v10;
  v11 = *(v5 + 72);
  *(v5 + 72) = *(a2 + 72);
  *(a2 + 72) = v11;
  ++*(a2 + 64);
  ++*(v5 + 64);
  *(v5 + 112) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 80) = 0;
  *(v5 + 104) = 0;
  v12 = *(a2 + 88);
  *(v5 + 80) = *(a2 + 80);
  *(v5 + 88) = v12;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v13 = *(v5 + 96);
  *(v5 + 96) = *(a2 + 96);
  *(a2 + 96) = v13;
  v14 = *(v5 + 112);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  ++*(a2 + 104);
  ++*(v5 + 104);
  result = *(a2 + 120);
  *(v5 + 120) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::RigSingleChainIKHandles>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v8 << 7;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v9 + 80);
        re::DynamicArray<unsigned long>::deinit(v9 + 40);
        re::DynamicArray<unsigned long>::deinit(v9);
        v9 += 128;
        v10 -= 128;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigSingleChainIKHandles>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::RigSingleChainIKHandles>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = v12 << 7;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 128;
        v14 -= 128;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 7);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 7);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSingleChainIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigSplineIKHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigSplineIKHandle>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigSplineIKHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigSplineIKHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigSplineIKHandle>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = 0uLL;
  v27 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v29 = 0xFFFFFFFFFFFFFFFFLL;
  v33 = 0u;
  v34 = 0u;
  LODWORD(v34) = 0;
  v31 = 0u;
  v32 = 0u;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a4, v15);
      }

      else
      {
        re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }

      v8 = 0uLL;
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 240 * v10;
  *v16 = 1008981770;
  *(v16 + 8) = v8;
  *(v16 + 24) = 0;
  *(v16 + 40) = 0;
  *(v16 + 32) = 1;
  *(v16 + 48) = v8;
  v24 = v8;
  *(v16 + 64) = 0;
  *&v25 = 0;
  *(v16 + 80) = 0;
  *&v26[0] = 0;
  DWORD2(v25) = 1;
  *(v16 + 72) = 1;
  *(v16 + 88) = v8;
  *(v26 + 8) = v8;
  *(v16 + 104) = 0;
  *(&v26[1] + 1) = 0;
  *(v16 + 120) = 0;
  *(&v27 + 1) = 0;
  LODWORD(v27) = 1;
  *(v16 + 112) = 1;
  v17 = v28;
  v18 = v30;
  *(v16 + 144) = v29;
  *(v16 + 160) = v18;
  *(v16 + 128) = v17;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  *(v16 + 224) = v34;
  *(v16 + 192) = v20;
  *(v16 + 208) = v21;
  *(v16 + 176) = v19;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RigSplineIKControlPoint>::deinit(&v24);
  v22 = (*(a4 + 32) + 240 * *(a4 + 16) - 240);
  re::introspectionInitElement(a2, a3, a1[6], v22);
  return v22;
}

uint64_t re::IntrospectionDynamicArray<re::RigSplineIKHandle>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 240 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 240 * a3;
}

uint64_t re::DynamicArray<re::RigSplineIKHandle>::deinit(uint64_t a1)
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
        v5 = 240 * v4;
        v6 = v3 + 88;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 240;
          v5 -= 240;
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

void *re::DynamicArray<re::RigSplineIKHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
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
        v10 = v8 + 240 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[5] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v12 = v8 + 8;
          v13 = *(v8 + 16);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = v13;
          *(v8 + 16) = 0;
          v14 = v11[3];
          v11[3] = *(v8 + 24);
          *(v8 + 24) = v14;
          v15 = v11[5];
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v15;
          ++*(v8 + 32);
          LODWORD(v15) = *(v11 + 8) + 1;
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v17 = v8 + 48;
          v16 = *(v8 + 48);
          *(v11 + 8) = v15;
          v18 = *(v8 + 56);
          v11[6] = v16;
          *(v8 + 48) = 0;
          v11[7] = v18;
          *(v8 + 56) = 0;
          v19 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v19;
          v20 = v11[10];
          v11[10] = *(v8 + 80);
          *(v8 + 80) = v20;
          ++*(v8 + 72);
          ++*(v11 + 18);
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v21 = *(v8 + 88);
          v22 = *(v8 + 96);
          v23 = v8 + 88;
          v11[11] = v21;
          v11[12] = v22;
          *v23 = 0;
          *(v23 + 8) = 0;
          v24 = v11[13];
          v11[13] = *(v23 + 16);
          *(v23 + 16) = v24;
          v25 = v11[15];
          v11[15] = *(v23 + 32);
          *(v23 + 32) = v25;
          ++*(v23 + 24);
          ++*(v11 + 28);
          v26 = *(v23 + 40);
          v27 = *(v23 + 72);
          *(v11 + 9) = *(v23 + 56);
          *(v11 + 10) = v27;
          *(v11 + 8) = v26;
          v28 = *(v23 + 88);
          v29 = *(v23 + 104);
          v30 = *(v23 + 120);
          *(v11 + 56) = *(v23 + 136);
          *(v11 + 12) = v29;
          *(v11 + 13) = v30;
          *(v11 + 11) = v28;
          re::DynamicArray<unsigned long>::deinit(v23);
          re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v12);
          v11 += 30;
          v8 = v23 + 152;
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

void *re::DynamicArray<re::RigSplineIKHandle>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 240 * a2 + 88;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10);
      re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v10 - 40);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 80);
      ++v9;
      v8 += 240;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 240 * v4 + 176;
      do
      {
        v7 = v3[4] + v6;
        *(v7 - 176) = 1008981770;
        *(v7 - 160) = 0;
        *(v7 - 152) = 0;
        *(v7 - 168) = 0;
        *(v7 - 144) = 0;
        *(v7 - 136) = 0uLL;
        *(v7 - 120) = 0uLL;
        *(v7 - 104) = 0;
        *(v7 - 96) = 0uLL;
        *(v7 - 80) = 0uLL;
        *(v7 - 64) = 0;
        *(v7 - 56) = 0;
        *(v7 - 48) = -1;
        *(v7 - 40) = -1;
        *(v7 - 32) = -1;
        *(v7 - 16) = -1;
        *(v7 - 8) = -1;
        *(v7 + 48) = 0;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        v6 += 240;
        *v7 = 0uLL;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 240 * v8;
      v10 = *(a1 + 32) + 88;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v10);
        re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v10 - 40);
        re::DynamicArray<unsigned long>::deinit(v10 - 80);
        v10 += 240;
        v9 -= 240;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigSplineIKHandle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::RigSplineIKHandle>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 240 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 240;
        v14 -= 240;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 240 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 240 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigSplineIKHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigTransform>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigTransform>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigTransform>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigTransform>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigTransform>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigTransform>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigTransform>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigTransform>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigTransform>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  memset(v10, 0, sizeof(v10));
  v11 = 0x3F8000003F800000;
  v12 = 1065353216;
  LOBYTE(v13) = 7;
  re::DynamicArray<re::RigTransform>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigTransform>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::DynamicArray<re::RigTransform>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::RigTransform>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + (v4 << 6);
      v7 = v5 + 1;
      do
      {
        *v6 = 0uLL;
        *(v6 + 16) = 0uLL;
        *(v6 + 32) = 0x3F8000003F800000;
        *(v6 + 40) = 1065353216;
        *(v6 + 48) = 7;
        v6 += 64;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigTransform>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigTransform>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigTransform>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigTransform>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigJoint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigJoint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigJoint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigJoint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigJoint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigJoint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigJoint>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigJoint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v10[0] = 0u;
  v10[1] = xmmword_1E30474D0;
  v10[2] = 0u;
  v10[3] = xmmword_1E30474D0;
  v11 = 0x3F8000003F800000;
  v12 = 1065353216;
  LOBYTE(v13) = 7;
  re::DynamicArray<re::RigJoint>::add(this, v10);
  v8 = (*(this + 4) + 96 * *(this + 2) - 96);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigJoint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::RigJoint>::resize(void *result, unint64_t a2)
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
      v5 = 96 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 96 * v4;
        v7 = v5 / 0x60uLL + 1;
        do
        {
          *v6 = 0uLL;
          *(v6 + 16) = xmmword_1E30474D0;
          *(v6 + 32) = 0uLL;
          *(v6 + 48) = xmmword_1E30474D0;
          *(v6 + 64) = 0x3F8000003F800000;
          *(v6 + 72) = 1065353216;
          *(v6 + 80) = 7;
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

void *re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
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
  v8 = re::DynamicArray<re::RigJoint>::resize(a1, a4);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigJoint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNodeConstraint>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNodeConstraint>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstraint>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigNodeConstraint>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNodeConstraint>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = xmmword_1E3049610;
  re::DynamicArray<re::RigNodeConstraint>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigNodeConstraint>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNodeConstraint>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigIKHandles>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigIKHandles>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigIKHandles>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigIKHandles>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigNodeChannel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigIKHandles>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = xmmword_1E3049610;
  re::DynamicArray<re::RigNodeConstraint>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigIKHandles>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigNodeChannel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigIKHandles>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigNode>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigNode>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11.n128_u64[0] = 0;
  v11.n128_u64[1] = &str_67;
  v12 = 0;
  v13 = -1;
  v14 = -1;
  v15 = xmmword_1E3049610;
  re::DynamicArray<re::RigNode>::add(this, &v11);
  if (v11.n128_u8[0])
  {
    if (v11.n128_u8[0])
    {
    }
  }

  v9 = (*(this + 4) + 56 * *(this + 2) - 56);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

uint64_t re::DynamicArray<re::RigNode>::deinit(uint64_t a1)
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
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 56);
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

void re::DynamicArray<re::RigNode>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 56 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + v8));
      ++v9;
      v8 += 56;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigNode>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0;
        *(v7 + 24) = -1;
        *(v7 + 32) = -1;
        *(v7 + 40) = xmmword_1E3049610;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigNode>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigNode>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNode>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::RigNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 56 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 56;
        v11 -= 56;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::RigNode>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 56 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 56);
      v4 -= 56;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 56 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 56 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigPoseNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigPoseNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigPoseNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigPoseNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigPoseNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RigPoseNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigPoseNode>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 24 * v9);
  *v15 = 0;
  v15[1] = -1;
  v15[2] = -1;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 24 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RigPoseNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::RigPoseNode>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v5;
      if ((24 * v5) >= 1)
      {
        v7 = v3[4] + 24 * v4;
        v8 = v6 / 0x18 + 1;
        do
        {
          *v7 = 0;
          *(v7 + 8) = -1;
          *(v7 + 16) = -1;
          v7 += 24;
          --v8;
        }

        while (v8 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RigPoseNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 24 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPoseNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigPose>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigPose>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigPose>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigPose>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigPose>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigPose>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigPose>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigPose>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigPose>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigPose>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigPose>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigPose>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 32 * v9;
  *v15 = 0;
  *(v15 + 8) = &str_67;
  *(v15 + 16) = xmmword_1E3049610;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 32 * v16 - 32);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RigPose>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

uint64_t re::DynamicArray<re::RigPose>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 32);
          v5 -= 32;
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

void *re::DynamicArray<re::RigPose>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigPose>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 1) = *(v8 + 1);
          re::StringID::destroyString(v8);
          v8 += 4;
          v11 += 4;
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

void re::DynamicArray<re::RigPose>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigPose>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = xmmword_1E3049610;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigPose>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::RigPose>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::RigPose>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigPose>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::RigPose>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::RigPose>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 32 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::RigDefinition::~RigDefinition(re::RigDefinition *this)
{
  re::DynamicArray<re::RigPose>::deinit(this + 1104);
  re::DynamicArray<unsigned long>::deinit(this + 1064);
  re::DynamicArray<re::RigNode>::deinit(this + 1024);
  re::DynamicArray<unsigned long>::deinit(this + 984);
  re::DynamicArray<unsigned long>::deinit(this + 944);
  re::DynamicArray<unsigned long>::deinit(this + 904);
  re::DynamicArray<unsigned long>::deinit(this + 864);
  re::DynamicArray<re::RigSplineIKHandle>::deinit(this + 824);
  re::DynamicArray<re::RigSingleChainIKHandles>::deinit(this + 784);
  re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(this + 744);
  re::DynamicArray<unsigned long>::deinit(this + 704);
  re::DynamicArray<unsigned long>::deinit(this + 664);
  re::DynamicArray<unsigned long>::deinit(this + 624);
  re::DynamicArray<unsigned long>::deinit(this + 520);
  re::DynamicArray<unsigned long>::deinit(this + 480);
  re::DynamicArray<unsigned long>::deinit(this + 440);
  re::DynamicArray<unsigned long>::deinit(this + 400);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::DynamicArray<unsigned long>::deinit(this + 280);
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::DynamicArray<unsigned long>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<re::RigAimConstraint>::deinit(this + 120);
  re::DynamicArray<re::RigBasicConstraint>::deinit(this + 80);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 40);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this);
}

re::internal::AutoRetargetRigGraphNode *re::internal::AutoRetargetRigGraphNode::AutoRetargetRigGraphNode(re::internal::AutoRetargetRigGraphNode *this, re::Allocator *a2, const re::RigHierarchy *a3, const re::RigHierarchy *a4)
{
  *this = 0;
  re::internal::AutoRetargetRigGraphNode::makeJointDefArray(a2, a3, this + 1);
  re::internal::AutoRetargetRigGraphNode::makeJointDefArray(a2, a4, this + 4);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v7 = *(a4 + 27);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  re::FixedArray<CoreIKTransform>::init<>(this + 10, a2, v7);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 128) = 0;
  *(this + 15) = 0;
  *(this + 17) = a2;
  return this;
}

void re::internal::AutoRetargetRigGraphNode::makeJointDefArray(re::Allocator *a1@<X1>, const re::RigHierarchy *a2@<X2>, void *a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 27);
  *a3 = a1;
  a3[1] = v5;
  a3[2] = 0;
  if (v5)
  {
    if (!(v5 >> 59))
    {
      v7 = (*(*a1 + 32))(a1, 32 * v5, 8);
      a3[2] = v7;
      if (!v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      v10 = v5 - 1;
      if (v5 == 1)
      {
        *v7 = 0;
        v7[1] = &str_67;
        v11 = v7 + 3;
        v7[2] = 0;
      }

      else
      {
        v11 = v7 + 3;
        do
        {
          *(v11 - 3) = 0;
          *(v11 - 2) = &str_67;
          *(v11 - 1) = 0;
          *v11 = &str_67;
          v11 += 4;
          --v10;
        }

        while (v10);
        *(v11 - 3) = 0;
        *(v11 - 2) = &str_67;
        *(v11 - 1) = 0;
      }

      v12 = 0;
      v13 = 0;
      *v11 = &str_67;
      while (1)
      {
        v23 = 0;
        __s = &str_67;
        *&v25 = 0;
        *(&v25 + 1) = &str_67;
        v14 = *(a2 + 27);
        if (v14 <= v13)
        {
          break;
        }

        re::StringID::operator=(&v23, (*(a2 + 29) + v12));
        v15 = strlen(__s);
        *&v38 = __s;
        *(&v38 + 1) = v15;
        v16 = re::RigHierarchy::jointParent(a2, &v38, 1, &v27);
        if (v27 == 1 && *&v28[4])
        {
          re::StringID::operator=(&v25, *&v28[4]);
        }

        else
        {
          *&v38 = 0;
          *(&v38 + 1) = &str_67;
          v18 = v38;
          *&v38 = 0;
          *(&v38 + 1) = &str_67;
          v19 = v25;
          v20 = *(&v25 + 1);
          v25 = v18;
          if (v19)
          {
            if (v38)
            {
              if (v38)
              {
              }
            }
          }
        }

        if (v5 == v13)
        {
          goto LABEL_32;
        }

        re::StringID::operator=(v9, &v23);
        v22 = re::StringID::operator=(v9 + 2, &v25);
        if ((v27 & 1) == 0)
        {
          v22 = *&v30[4];
          if (*&v30[4])
          {
            if (v30[12])
            {
              v22 = (*(**&v30[4] + 40))();
            }
          }
        }

        if (v25)
        {
          if (v25)
          {
          }
        }

        *&v25 = 0;
        *(&v25 + 1) = &str_67;
        if (v23)
        {
          if (v23)
          {
          }
        }

        ++v13;
        v9 += 4;
        v12 += 16;
        if (v5 == v13)
        {
          return;
        }
      }

      *v31 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      *v28 = "operator[]";
      *&v28[8] = 1024;
      *&v28[10] = 797;
      v29 = 2048;
      *v30 = v13;
      *&v30[8] = 2048;
      *&v30[10] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v26 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      v32 = 1024;
      v33 = 468;
      v34 = 2048;
      v35 = v5;
      v36 = 2048;
      v37 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, a1, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, v5);
    _os_crash();
    __break(1u);
LABEL_34:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }
}

BOOL re::internal::AutoRetargetRigGraphNode::initialize(re::internal::AutoRetargetRigGraphNode *this, const re::RigDataValue *a2, const re::RigDataValue *a3, const re::RigDataValue *a4, const re::RigDataValue *a5, const re::RigDataValue *a6)
{
  if (*(this + 128))
  {
    return 1;
  }

  re::internal::getSRTFromRDV(a4, v36);
  re::internal::getSRTFromRDV(a5, v35);
  v12 = vmulq_f32(v36[0], v36[0]);
  if (fabsf(v12.f32[2] + vaddv_f32(*v12.f32)) < 1.0e-10)
  {
    return 0;
  }

  v13 = vmulq_f32(v35[0], v35[0]);
  if (fabsf(v13.f32[2] + vaddv_f32(*v13.f32)) < 1.0e-10)
  {
    return 0;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  re::FixedArray<CoreIKBaseJoint>::init<>(&v32, *(this + 17), *(a2 + 32));
  re::internal::AutoRetargetRigGraphNode::initialize(re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&)::$_0::operator()(a2, this + 8, &v32);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  re::FixedArray<CoreIKBaseJoint>::init<>(&v29, *(this + 17), *(a3 + 32));
  re::internal::AutoRetargetRigGraphNode::initialize(re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&)::$_0::operator()(a3, this + 32, &v29);
  v16 = v30;
  v15 = v31;
  v18 = v33;
  v17 = v34;
  RetargetRig = CoreIKAutoMatchingGenerateRetargetRig();
  if (*(a6 + 96) && *(a6 + 32))
  {
    v20 = 0;
    do
    {
      v21 = re::RigDataValue::attributeValue(a6, v20);
      v22 = re::RigDataValue::attributeValue(v21, 0);
      v24 = *re::RigDataValue::getRuntimeValue<int>(v22, v23);
      v25 = re::RigDataValue::attributeValue(v21, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v25, v26);
      if ((v24 & 0x80000000) == 0 && v18 > v24)
      {
        CoreIKRigJointSetSourceRotationOffset();
      }

      ++v20;
    }

    while (v20 < *(a6 + 32));
  }

  v27 = MEMORY[0x1E6903C40](RetargetRig);
  if (!*(this + 7))
  {
    re::FixedArray<CoreIKTransform>::init<>(this + 7, *(this + 17), v27);
  }

  if (!*(this + 13))
  {
    re::FixedArray<unsigned long>::init<>(this + 13, *(this + 17), v27);
  }

  CoreIKAutoMatchingGenerateHierarchyToRigMapping();
  v28 = MEMORY[0x1E6903790](RetargetRig);
  *this = v28;
  if (RetargetRig)
  {
    MEMORY[0x1E69037D0](RetargetRig);
    v28 = *this;
  }

  v6 = v28 != 0;
  *(this + 128) = v6;
  if (v16 && v29)
  {
    (*(*v29 + 40))(v29, v15);
  }

  if (v18 && v32)
  {
    (*(*v32 + 40))(v32, v17);
  }

  return v6;
}

void re::FixedArray<CoreIKBaseJoint>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 48 * a3;
  v6 = (*(*a2 + 32))(a2, 48 * a3, 16);
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
    bzero(v6, v5 - 48);
    v8 = (v8 + v5 - 48);
  }

  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
}

__n128 re::internal::AutoRetargetRigGraphNode::initialize(re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&,re::RigDataValue const&)::$_0::operator()(re::RigDataValue *this, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(this + 32))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(a2 + 8);
      if (v9 <= v8)
      {
        *v18 = 0;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v17 = 136315906;
        *&v17[4] = "operator[]";
        *&v17[12] = 1024;
        *&v17[14] = 476;
        *&v17[18] = 2048;
        *&v17[20] = v8;
        *&v17[28] = 2048;
        *&v17[30] = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v18 = 136315906;
        *&v18[4] = "operator[]";
        v19 = 1024;
        v20 = 468;
        v21 = 2048;
        v22 = v8;
        v23 = 2048;
        v24 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(a2 + 16) + v6;
      v11 = *(v10 + 8);
      v12 = *(v10 + 24);
      v13 = re::RigDataValue::attributeValue(this, v8);
      *&v17[8] = 1065353216;
      *&v17[16] = 0;
      *v17 = 0x3F8000003F800000;
      *&v17[24] = 0x3F80000000000000;
      *&v17[32] = 0uLL;
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v13, v17);
      v9 = *(a3 + 8);
      if (v9 <= v8)
      {
        goto LABEL_8;
      }

      result = *&v17[16];
      v15 = *&v17[32];
      v16 = (*(a3 + 16) + v7);
      v16->n128_u64[0] = v11;
      v16->n128_u64[1] = v12;
      v16[1].n128_u64[0] = v15;
      v16[1].n128_u32[2] = DWORD2(v15);
      v16[2] = result;
      ++v8;
      v7 += 48;
      v6 += 32;
    }

    while (v8 < *(this + 32));
  }

  return result;
}

uint64_t re::internal::AutoRetargetRigGraphNode::solveAndUpdate(re::internal::AutoRetargetRigGraphNode *this, unint64_t a2, const re::RigDataValue *a3, re::RigDataValue *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (*(this + 8))
  {
    v10 = 0;
    v11 = 0;
    v5 = 0x3F8000003F800000;
    v4 = 0x3F80000000000000;
    while (1)
    {
      v12 = *(this + 14);
      if (v12 <= v11)
      {
        break;
      }

      v13 = *(*(this + 15) + 8 * v11);
      *v26 = 0x3F8000003F800000;
      *&v26[8] = 1065353216;
      *&v26[16] = 0;
      *&v26[24] = 0x3F80000000000000;
      *&v26[32] = 0uLL;
      v14 = re::RigDataValue::attributeValue(a2, v13);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v14, v26);
      v12 = *(this + 8);
      if (v12 <= v11)
      {
        goto LABEL_26;
      }

      v16 = *&v26[16];
      v15 = *&v26[32];
      v17 = *(this + 9) + v10;
      *(v17 + 8) = *&v26[40];
      *v17 = v15;
      *(v17 + 16) = v16;
      ++v11;
      v10 += 32;
      if (v11 >= *(this + 8))
      {
        goto LABEL_8;
      }
    }

    *v27 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v26 = 136315906;
    *&v26[4] = "operator[]";
    *&v26[12] = 1024;
    *&v26[14] = 468;
    *&v26[18] = 2048;
    *&v26[20] = v11;
    *&v26[28] = 2048;
    *&v26[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    v28 = 1024;
    v29 = 468;
    v30 = 2048;
    v31 = v11;
    v32 = 2048;
    v33 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    *v27 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v26 = 136315906;
    *&v26[4] = "operator[]";
    *&v26[12] = 1024;
    *&v26[14] = 468;
    *&v26[18] = 2048;
    *&v26[20] = a2;
    *&v26[28] = 2048;
    *&v26[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = v4;
    v32 = 2048;
    v33 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_8:
  re::internal::transferPose(a3, this + 80);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v18 = CoreIKSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKSolverGetConstraintCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::transferPose(a2, a4, v19);
  if (!v18 && *(this + 8))
  {
    v20 = 0;
    a2 = 0;
    do
    {
      v12 = *(this + 14);
      if (v12 <= a2)
      {
        goto LABEL_27;
      }

      v4 = *(*(this + 15) + 8 * a2);
      v21 = (*(this + 9) + v20);
      v22 = *(v21 + 2);
      v23 = *(v21 + 3);
      v24 = *v21;
      *v26 = 0x3F8000003F800000;
      *&v26[8] = 1065353216;
      *&v26[16] = v22;
      *&v26[24] = v23;
      *&v26[32] = v24;
      v5 = *(a4 + 32);
      if (v5 <= v4)
      {
        goto LABEL_28;
      }

      re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(a4 + 34) + 288 * v4, v26);
      ++a2;
      v20 += 32;
    }

    while (a2 < *(this + 8));
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    return kdebug_trace();
  }

  return result;
}

re::RigDataValue *re::internal::GameRigSettingsUpdateHelper::updateRigJointSettings(re::RigDataValue *this)
{
  if (*(this + 32))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v3 = re::RigDataValue::attributeValue(v1, v2);
      v4 = re::RigDataValue::attributeValue(v3, 0);
      re::RigDataValue::getRuntimeValue<float>(v4, v5);
      v6 = re::RigDataValue::attributeValue(v3, 1uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v6, v7);
      v8 = re::RigDataValue::attributeValue(v3, 2uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v8, v9);
      CoreIKGenericSolverGetJoint();
      CoreIKJointSetRetargetingGain();
      CoreIKJointSetRetargetingGainDOF();
      this = CoreIKJointSetRotationStiffness();
      ++v2;
    }

    while (v2 < *(v1 + 32));
  }

  return this;
}

re::RigDataValue *re::internal::GameRigSettingsUpdateHelper::updateRigTaskSettings(re::RigDataValue *this, uint64_t a2)
{
  if (*(this + 32))
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = re::RigDataValue::attributeValue(v3, v4);
      v6 = re::RigDataValue::attributeValue(v5, 0);
      v14 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v6, v7);
      v8 = re::RigDataValue::attributeValue(v5, 1uLL);
      v13 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v8, v9);
      v10 = re::RigDataValue::attributeValue(v5, 2uLL);
      re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v10, v11);
      MEMORY[0x1E6903A00](a2, v4);
      v12 = MEMORY[0x1E69038E0]();
      MEMORY[0x1E6903BF0](v14);
      MEMORY[0x1E6903BE0](v12, v13);
      this = CoreIKGenericConstraintSetLookAtAxis();
      ++v4;
    }

    while (v4 < *(v3 + 32));
  }

  return this;
}

uint64_t re::internal::GameRigSettingsUpdateHelper::updateRigSolverSettings(re::RigDataValue *a1, uint64_t a2)
{
  v4 = re::RigDataValue::attributeValue(a1, 0);
  v6 = *re::RigDataValue::getRuntimeValue<int>(v4, v5);
  v7 = re::RigDataValue::attributeValue(a1, 1uLL);
  v9 = *re::RigDataValue::getRuntimeValue<float>(v7, v8);
  MEMORY[0x1E6903AB0](a2, v6);
  v10.n128_u32[0] = v9;

  return MEMORY[0x1EEDF9410](a2, v10);
}

void re::internal::registerMakeIKLookAtTask(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719508;
  v11[1] = *&off_1E8719518;
  v11[2] = xmmword_1E8719528;
  v11[3] = *&off_1E8719538;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKLookAtTaskCompile(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (a3 == 1)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= 2)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (!a5)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v10 = "lookAtTarget";
  v11 = 12;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v6);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  v10 = "rotationAlpha";
  v11 = 13;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v5);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  v10 = "taskIndex";
  v11 = 9;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v7);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKTask(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719548;
  v11[1] = *&off_1E8719558;
  v11[2] = xmmword_1E8719568;
  v11[3] = *&off_1E8719578;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKTaskCompile(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (a3 == 1)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= 2)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (!a5)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v10 = "target";
  v11 = 6;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v6);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  v10 = "targetAlpha";
  v11 = 11;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v5);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  v10 = "taskIndex";
  v11 = 9;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v7);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKPenetrationCorrectionTask(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719588;
  v11[1] = *&off_1E8719598;
  v11[2] = xmmword_1E87195A8;
  v11[3] = *&off_1E87195B8;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKPenetrationCorrectionTask(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (a3 == 1)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= 2)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  if (!a5)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v10 = "inJointName";
  v11 = 11;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v6);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  v10 = "inRayCastDirection";
  v11 = 18;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v5);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  v10 = "inRayCastLength";
  v11 = 15;
  re::RigDataValue::attributeValue(v8, &v10, v12);
  re::RigDataValue::operator=(v13, v7);
  if (v12[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKRigJointSettings(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E87195E8;
  v11[3] = *&off_1E87195F8;
  v11[4] = xmmword_1E8719608;
  v11[0] = xmmword_1E87195C8;
  v11[1] = *&off_1E87195D8;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRigJointSettings(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  if (a3 == 1)
  {
LABEL_24:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  if (a3 <= 2)
  {
LABEL_25:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  if (a3 == 3)
  {
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
LABEL_27:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *a4;
  v11 = "inJointName";
  v12 = 11;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v6);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  v11 = "inRetargetingGain";
  v12 = 17;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v5);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  v11 = "inRetargetingGainDof";
  v12 = 20;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v8);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  v11 = "inStiffness";
  v12 = 11;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v7);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKRigTaskSettings(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719638;
  v11[3] = *&off_1E8719648;
  v11[4] = xmmword_1E8719658;
  v11[0] = xmmword_1E8719618;
  v11[1] = *&off_1E8719628;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRigTaskSettings(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  if (a3 == 1)
  {
LABEL_24:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  if (a3 <= 2)
  {
LABEL_25:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  if (a3 == 3)
  {
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
LABEL_27:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *a4;
  v11 = "inTaskBoneName";
  v12 = 14;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v6);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  v11 = "inPositionWeight";
  v12 = 16;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v5);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  v11 = "inRotationWeight";
  v12 = 16;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v8);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  v11 = "inLookAtAxis";
  v12 = 12;
  re::RigDataValue::attributeValue(v9, &v11, v13);
  re::RigDataValue::operator=(v14, v7);
  if (v13[0] & 1) == 0 && v15 && (v16)
  {
    (*(*v15 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKRigSolverSettings(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719668;
  v11[1] = *&off_1E8719678;
  v11[2] = xmmword_1E8719688;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRigSolverSettings(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (a3 == 1)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (!a5)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = *a4;
  v9 = "inMaxIterations";
  v10 = 15;
  re::RigDataValue::attributeValue(v7, &v9, v11);
  re::RigDataValue::operator=(v12, v6);
  if (v11[0] & 1) == 0 && v13 && (v14)
  {
    (*(*v13 + 40))();
  }

  v9 = "inRetargetingGain";
  v10 = 17;
  re::RigDataValue::attributeValue(v7, &v9, v11);
  re::RigDataValue::operator=(v12, v5);
  if (v11[0] & 1) == 0 && v13 && (v14)
  {
    (*(*v13 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKRetargetingOffset(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719698;
  v11[1] = *&off_1E87196A8;
  v11[2] = xmmword_1E87196B8;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRetargetingOffset(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  if (a3 == 1)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  if (!a5)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = *a4;
  v9 = "inJointIndex";
  v10 = 12;
  re::RigDataValue::attributeValue(v7, &v9, v11);
  re::RigDataValue::operator=(v12, v6);
  if (v11[0] & 1) == 0 && v13 && (v14)
  {
    (*(*v13 + 40))();
  }

  v9 = "inRotationOffset";
  v10 = 16;
  re::RigDataValue::attributeValue(v7, &v9, v11);
  re::RigDataValue::operator=(v12, v5);
  if (v11[0] & 1) == 0 && v13 && (v14)
  {
    (*(*v13 + 40))();
  }

  return 1;
}

void re::introspect_BlendSpaceType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE190330, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE190338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190338))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1904A0, "BlendSpaceType", 4, 4, 1, 1);
      qword_1EE1904A0 = &unk_1F5D0C658;
      qword_1EE1904E0 = &re::introspect_BlendSpaceType(BOOL)::enumTable;
      dword_1EE1904B0 = 9;
      __cxa_guard_release(&qword_1EE190338);
    }

    if (_MergedGlobals_16)
    {
      break;
    }

    _MergedGlobals_16 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1904A0, a2);
    v41 = 0x3CA07D4B122E305ELL;
    v42 = "BlendSpaceType";
    v45 = 0x607DD0F01DCLL;
    v46 = "uint32_t";
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
      v6 = qword_1EE1904E0;
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
      xmmword_1EE1904C0 = v43;
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
    v28 = __cxa_guard_acquire(&qword_1EE190330);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "None";
      qword_1EE1903C0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "1DLinearUniform";
      qword_1EE1903C8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "1DLinearNonUniform";
      qword_1EE1903D0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "2DLinearUniform";
      qword_1EE1903D8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "KernelRegression";
      qword_1EE1903E0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 5;
      *(v40 + 16) = "RBFInterpolation";
      qword_1EE1903E8 = v40;
      __cxa_guard_release(&qword_1EE190330);
    }
  }
}

void *re::allocInfo_BlendSpaceAxisDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190340))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1904E8, "BlendSpaceAxisDefinition");
    __cxa_guard_release(&qword_1EE190340);
  }

  return &unk_1EE1904E8;
}

void re::initInfo_BlendSpaceAxisDefinition(re *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x65A436012C3C7D12;
  v31[1] = "BlendSpaceAxisDefinition";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE190348, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190348);
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
      qword_1EE1903F0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "controlValueBindPath";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1903F8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "minValue";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE190400 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "maxValue";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2400000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE190408 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "defaultControlValue";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x2800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE190410 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_uint32_t(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "uniformSampleCount";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x2C00000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE190418 = v29;
      __cxa_guard_release(&qword_1EE190348);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1903F0;
  *(this + 9) = re::internal::defaultConstruct<re::BlendSpaceAxisDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendSpaceAxisDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendSpaceAxisDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendSpaceAxisDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v30 = v32;
}

void re::internal::defaultConstruct<re::BlendSpaceAxisDefinition>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = 0;
}

void re::internal::defaultDestruct<re::BlendSpaceAxisDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::BlendSpaceAxisDefinition>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendSpaceAxisDefinition>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_BlendSpaceSampleDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190358))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190578, "BlendSpaceSampleDefinition");
    __cxa_guard_release(&qword_1EE190358);
  }

  return &unk_1EE190578;
}

void re::initInfo_BlendSpaceSampleDefinition(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x63C009CC69597824;
  v19[1] = "BlendSpaceSampleDefinition";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE190360, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190360);
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
      qword_1EE190390 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "falloffParameter";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE190398 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "position";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1903A0 = v17;
      __cxa_guard_release(&qword_1EE190360);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE190390;
  *(this + 9) = re::internal::defaultConstruct<re::BlendSpaceSampleDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendSpaceSampleDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendSpaceSampleDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendSpaceSampleDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void re::internal::defaultConstruct<re::BlendSpaceSampleDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 56) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a3 + 48) = 0;
}

void re::internal::defaultDestruct<re::BlendSpaceSampleDefinition>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 24);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::BlendSpaceSampleDefinition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendSpaceSampleDefinition>(re::StringID *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_BlendSpaceDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190370))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190608, "BlendSpaceDefinition");
    __cxa_guard_release(&qword_1EE190370);
  }

  return &unk_1EE190608;
}

void re::initInfo_BlendSpaceDefinition(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x32C0B3902874E510;
  v14[1] = "BlendSpaceDefinition";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE190378, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190378);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_BlendSpaceType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE1904A0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1903A8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceAxisDefinition>>::get(v9);
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "axes";
      *(v10 + 16) = &qword_1EE190420;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x800000002;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1903B0 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceSampleDefinition>>::get(v11);
      v12 = (*(*v11 + 32))(v11, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "samples";
      *(v12 + 16) = &qword_1EE190460;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3000000003;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1903B8 = v12;
      __cxa_guard_release(&qword_1EE190378);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1903A8;
  *(this + 9) = re::internal::defaultConstruct<re::BlendSpaceDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendSpaceDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendSpaceDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendSpaceDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceAxisDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190380, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190380);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190420);
      qword_1EE190420 = &unk_1F5CB0090;
      __cxa_guard_release(&qword_1EE190380);
    }
  }

  if ((byte_1EE190329 & 1) == 0)
  {
    v1 = qword_1EE190350;
    if (qword_1EE190350 || (v1 = re::allocInfo_BlendSpaceAxisDefinition(a1), qword_1EE190350 = v1, re::initInfo_BlendSpaceAxisDefinition(v1, v2), (byte_1EE190329 & 1) == 0))
    {
      byte_1EE190329 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190420, 0);
      qword_1EE190430 = 0x2800000003;
      dword_1EE190438 = v3;
      word_1EE19043C = 0;
      *&xmmword_1EE190440 = 0;
      *(&xmmword_1EE190440 + 1) = 0xFFFFFFFFLL;
      qword_1EE190450 = v1;
      unk_1EE190458 = 0;
      qword_1EE190420 = &unk_1F5CB0090;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE190420, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE190440 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceSampleDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190388, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190388);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190460);
      qword_1EE190460 = &unk_1F5CB0128;
      __cxa_guard_release(&qword_1EE190388);
    }
  }

  if ((byte_1EE19032A & 1) == 0)
  {
    v1 = qword_1EE190368;
    if (qword_1EE190368 || (v1 = re::allocInfo_BlendSpaceSampleDefinition(a1), qword_1EE190368 = v1, re::initInfo_BlendSpaceSampleDefinition(v1, v2), (byte_1EE19032A & 1) == 0))
    {
      byte_1EE19032A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190460, 0);
      qword_1EE190470 = 0x2800000003;
      dword_1EE190478 = v3;
      word_1EE19047C = 0;
      *&xmmword_1EE190480 = 0;
      *(&xmmword_1EE190480 + 1) = 0xFFFFFFFFLL;
      qword_1EE190490 = v1;
      unk_1EE190498 = 0;
      qword_1EE190460 = &unk_1F5CB0128;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE190460, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE190480 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendSpaceDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::BlendSpaceDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a3 + 48);

  return re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::BlendSpaceDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::BlendSpaceDefinition>(uint64_t a1)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a1 + 48);

  return re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1 + 8);
}

void *re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendSpaceAxisDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11.n128_u64[0] = 0;
  v11.n128_u64[1] = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = 0;
  re::DynamicArray<re::BlendSpaceAxisDefinition>::add(this, &v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11.n128_u8[0])
  {
    if (v11.n128_u8[0])
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          *(v11 + 2) = *(v8 + 2);
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 6;
          v8 += 6;
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

void re::DynamicArray<re::BlendSpaceAxisDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 48;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[2] = 0;
        v7[3] = &str_67;
        v7[4] = 0;
        v7[5] = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

__n128 re::DynamicArray<re::BlendSpaceAxisDefinition>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 48 * v4);
  v6 = a2->n128_u64[0];
  v5->n128_u64[0] = v5->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  v5->n128_u64[0] = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  v7 = a2[1].n128_u64[0];
  v5[1].n128_u64[0] = v5[1].n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[1].n128_u64[0] = a2[1].n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = &str_67;
  result = a2[2];
  v5[2] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::BlendSpaceAxisDefinition>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::BlendSpaceAxisDefinition>::resize(a1, a4);
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

void re::DynamicArray<re::BlendSpaceAxisDefinition>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 48 * v2;
    do
    {
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendSpaceSampleDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12[0] = 0;
  v13 = 0uLL;
  v15 = 0;
  v16 = 0;
  v12[1] = &str_67;
  v14 = 0uLL;
  v8 = re::DynamicArray<re::BlendSpaceSampleDefinition>::add(this, v12);
  v9 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    if (v16)
    {
      v9 = (*(**(&v13 + 1) + 40))(v8);
    }

    v16 = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    LODWORD(v15) = v15 + 1;
  }

  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  v10 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v10);
  return v10;
}

uint64_t re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 4) = *(v8 + 4);
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v13 = v8[4];
          v11[3] = v8[3];
          v8[3] = 0;
          v11[4] = v13;
          v8[4] = 0;
          v14 = v11[5];
          v11[5] = v8[5];
          v8[5] = v14;
          v15 = v11[7];
          v11[7] = v8[7];
          v8[7] = v15;
          ++*(v8 + 12);
          ++*(v11 + 12);
          re::DynamicArray<unsigned long>::deinit((v8 + 3));
          re::StringID::destroyString(v8);
          v11 += 8;
          v8 += 8;
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

void re::DynamicArray<re::BlendSpaceSampleDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = a2 << 6;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::DynamicArray<unsigned long>::deinit(v10 + 24);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 64;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0;
        *(v7 + 56) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        *(v7 + 48) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

float re::DynamicArray<re::BlendSpaceSampleDefinition>::add(_anonymous_namespace_ *this, float *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = &str_67;
  result = a2[4];
  *(v5 + 16) = result;
  *(v5 + 56) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  v8 = *(a2 + 4);
  *(v5 + 24) = *(a2 + 3);
  *(v5 + 32) = v8;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v9 = *(v5 + 40);
  *(v5 + 40) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(v5 + 56);
  *(v5 + 56) = *(a2 + 7);
  *(a2 + 7) = v10;
  ++*(a2 + 12);
  ++*(v5 + 48);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::BlendSpaceSampleDefinition>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::BlendSpaceSampleDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::BlendSpaceSampleDefinition>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = v2 << 6;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 24);
      re::StringID::destroyString(v3);
      v3 = (v3 + 64);
      v4 -= 64;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::StateParameterBlackboard::deinit(re::StateParameterBlackboard *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 3);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 10);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 8, *(*(this + 3) + 32 * v3 + 24));
    LODWORD(v2) = *(this + 10);
    if (v2 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    else
    {
      v6 = *(this + 10);
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 3) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v3) = v6;
LABEL_16:
    ;
  }

  if (*(this + 9))
  {
    v7 = *(this + 8);
    if (v7)
    {
      memset_pattern16(*(this + 2), &unk_1E304C660, 4 * v7);
      LODWORD(v2) = *(this + 10);
    }

    if (v2)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(this + 3);
        v11 = *(v10 + v8);
        if (v11 < 0)
        {
          *(v10 + v8) = v11 & 0x7FFFFFFF;
          re::StringID::destroyString((v10 + v8 + 8));
          LODWORD(v2) = *(this + 10);
        }

        ++v9;
        v8 += 32;
      }

      while (v9 < v2);
    }

    *(this + 9) = 0;
    *(this + 10) = 0;
    v12 = *(this + 12) + 1;
    *(this + 11) = 0x7FFFFFFF;
    *(this + 12) = v12;
  }

  v13 = *(this + 22);
  if (v13)
  {
    v14 = 0;
    v15 = *(this + 9);
    while (1)
    {
      v16 = *v15;
      v15 += 8;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(this + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  while (v14 != v13)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 13, *(*(this + 9) + 32 * v14 + 24));
    LODWORD(v13) = *(this + 22);
    if (v13 <= v14 + 1)
    {
      v17 = v14 + 1;
    }

    else
    {
      v17 = *(this + 22);
    }

    while (v17 - 1 != v14)
    {
      LODWORD(v14) = v14 + 1;
      if ((*(*(this + 9) + 32 * v14) & 0x80000000) != 0)
      {
        goto LABEL_41;
      }
    }

    LODWORD(v14) = v17;
LABEL_41:
    ;
  }

  if (*(this + 21))
  {
    v18 = *(this + 20);
    if (v18)
    {
      memset_pattern16(*(this + 8), &unk_1E304C660, 4 * v18);
      LODWORD(v13) = *(this + 22);
    }

    if (v13)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = *(this + 9);
        v22 = *(v21 + v19);
        if (v22 < 0)
        {
          *(v21 + v19) = v22 & 0x7FFFFFFF;
          re::StringID::destroyString((v21 + v19 + 8));
          LODWORD(v13) = *(this + 22);
        }

        ++v20;
        v19 += 32;
      }

      while (v20 < v13);
    }

    *(this + 21) = 0;
    *(this + 22) = 0;
    v23 = *(this + 24) + 1;
    *(this + 23) = 0x7FFFFFFF;
    *(this + 24) = v23;
  }

  v24 = *(this + 34);
  if (v24)
  {
    v25 = 0;
    v26 = *(this + 15);
    while (1)
    {
      v27 = *v26;
      v26 += 8;
      if (v27 < 0)
      {
        break;
      }

      if (v24 == ++v25)
      {
        LODWORD(v25) = *(this + 34);
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  while (v25 != v24)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 18, *(*(this + 15) + 32 * v25 + 24));
    LODWORD(v24) = *(this + 34);
    if (v24 <= v25 + 1)
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = *(this + 34);
    }

    while (v28 - 1 != v25)
    {
      LODWORD(v25) = v25 + 1;
      if ((*(*(this + 15) + 32 * v25) & 0x80000000) != 0)
      {
        goto LABEL_66;
      }
    }

    LODWORD(v25) = v28;
LABEL_66:
    ;
  }

  if (*(this + 33))
  {
    v29 = *(this + 32);
    if (v29)
    {
      memset_pattern16(*(this + 14), &unk_1E304C660, 4 * v29);
      LODWORD(v24) = *(this + 34);
    }

    if (v24)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(this + 15);
        v33 = *(v32 + v30);
        if (v33 < 0)
        {
          *(v32 + v30) = v33 & 0x7FFFFFFF;
          re::StringID::destroyString((v32 + v30 + 8));
          LODWORD(v24) = *(this + 34);
        }

        ++v31;
        v30 += 32;
      }

      while (v31 < v24);
    }

    *(this + 33) = 0;
    *(this + 34) = 0;
    v34 = *(this + 36) + 1;
    *(this + 35) = 0x7FFFFFFF;
    *(this + 36) = v34;
  }

  v35 = *(this + 46);
  if (v35)
  {
    v36 = 0;
    v37 = *(this + 21);
    while (1)
    {
      v38 = *v37;
      v37 += 8;
      if (v38 < 0)
      {
        break;
      }

      if (v35 == ++v36)
      {
        LODWORD(v36) = *(this + 46);
        break;
      }
    }
  }

  else
  {
    LODWORD(v36) = 0;
  }

  while (v36 != v35)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 23, *(*(this + 21) + 32 * v36 + 24));
    LODWORD(v35) = *(this + 46);
    if (v35 <= v36 + 1)
    {
      v39 = v36 + 1;
    }

    else
    {
      v39 = *(this + 46);
    }

    while (v39 - 1 != v36)
    {
      LODWORD(v36) = v36 + 1;
      if ((*(*(this + 21) + 32 * v36) & 0x80000000) != 0)
      {
        goto LABEL_91;
      }
    }

    LODWORD(v36) = v39;
LABEL_91:
    ;
  }

  if (*(this + 45))
  {
    v40 = *(this + 44);
    if (v40)
    {
      memset_pattern16(*(this + 20), &unk_1E304C660, 4 * v40);
      LODWORD(v35) = *(this + 46);
    }

    if (v35)
    {
      v41 = 0;
      v42 = 0;
      do
      {
        v43 = *(this + 21);
        v44 = *(v43 + v41);
        if (v44 < 0)
        {
          *(v43 + v41) = v44 & 0x7FFFFFFF;
          re::StringID::destroyString((v43 + v41 + 8));
          LODWORD(v35) = *(this + 46);
        }

        ++v42;
        v41 += 32;
      }

      while (v42 < v35);
    }

    *(this + 45) = 0;
    *(this + 46) = 0;
    v45 = *(this + 48) + 1;
    *(this + 47) = 0x7FFFFFFF;
    *(this + 48) = v45;
  }
}

re *re::internal::destroyPersistent<re::StateParameterInt>(re *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    *a3 = &unk_1F5CB01C0;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit((a3 + 2));
    re::DynamicArray<re::BindPoint::BindPointData>::deinit((a3 + 2));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

BOOL re::StateParameterBlackboard::removeStateParameterInt(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterInt", 33, *(*(this + 3) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 8, v8);
  }

  return v5 != 0x7FFFFFFF;
}

BOOL re::StateParameterBlackboard::removeStateParameterFloat(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterFloat", 43, *(*(this + 9) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 56, v8);
  }

  return v5 != 0x7FFFFFFF;
}

BOOL re::StateParameterBlackboard::removeStateParameterBool(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterBool", 53, *(*(this + 15) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 104, v8);
  }

  return v5 != 0x7FFFFFFF;
}

BOOL re::StateParameterBlackboard::removeStateParameterTrigger(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterTrigger", 63, *(*(this + 21) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 152, v8);
  }

  return v5 != 0x7FFFFFFF;
}

_BYTE *re::StateParameter::processParameterReset(_BYTE *this)
{
  if (this[56] == 1)
  {
    v1 = this;
    this = (*(*this + 8))(this);
    v1[56] = 0;
  }

  return this;
}

BOOL re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 32 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::StringID::destroyString((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 32 * v12);
      v9 = a2[3];
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 32 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

double re::AnimationManager::AnimationManager(re::AnimationManager *this)
{
  *this = &unk_1F5CB01F0;
  *(this + 1) = 0;
  *(this + 8) = 259;
  *(this + 5) = 1023969417;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = -1;
  *(this + 28) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 124) = 0x1FFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 17) = 0;
  *(this + 46) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 188) = 0x1FFFFFFFFLL;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 300) = 0u;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 90) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 364) = 0x7FFFFFFFLL;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 100) = 0;
  *(this + 49) = 0;
  *(this + 110) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 476) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 492) = 0x7FFFFFFFLL;
  *(this + 252) = 0;
  *(this + 506) = 0;
  return result;
}

void re::AnimationManager::~AnimationManager(re::AnimationManager *this)
{
  re::AnimationManager::deinit(this);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 57);
  for (i = 416; i != 336; i -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
  }

  for (j = 328; j != 232; j -= 48)
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((this + j));
  }

  for (k = 240; k != 160; k -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + k);
  }

  for (m = 136; m != 8; m -= 64)
  {
    re::DataArray<re::internal::TimelineTreeInfo>::deinit(this + m);
    re::DynamicArray<unsigned long>::deinit(this + m);
  }
}

{
  re::AnimationManager::~AnimationManager(this);

  JUMPOUT(0x1E6906520);
}

void re::AnimationManager::deinit(re::AnimationManager *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    if (*(this + 29))
    {
      v3 = 0;
      v4 = this + 376;
      v5 = 1;
      do
      {
        v6 = v5;
        re::DataArray<re::internal::TimelineTreeInfo>::deinit(this + 64 * v3 + 72);
        v7 = this + 40 * v3 + 200;
        v8 = *(v7 + 2);
        if (v8)
        {
          v9 = *(v7 + 4);
          v10 = 8 * v8;
          do
          {
            v11 = *v9;
            if (*v9)
            {
              re::internal::AnimationHandoffBehavior::~AnimationHandoffBehavior(*v9);
            }

            ++v9;
            v10 -= 8;
          }

          while (v10);
        }

        re::DynamicArray<unsigned long>::deinit(v7);
        v12 = &v4[40 * v3];
        v13 = *(v12 + 2);
        if (v13)
        {
          v14 = *(v12 + 4);
          v15 = 8 * v13;
          do
          {
            v16 = *v14;
            if (*v14)
            {
              (**v16)(*v14);
            }

            ++v14;
            v15 -= 8;
          }

          while (v15);
        }

        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 6 * v3 + 35);
        re::DynamicArray<unsigned long>::deinit(&v4[40 * v3]);
        v5 = 0;
        v3 = 1;
      }

      while ((v6 & 1) != 0);
      v2 = *(this + 8);
    }

    CFRelease(v2);
    *(this + 8) = 0;
    *(this + 57) = 0;
  }
}

void re::AnimationManager::init(re::AnimationManager *this, CFTypeRef cf, char a3)
{
  if (cf)
  {
    *(this + 57) = 0;
    *(this + 8) = cf;
    v5 = CFRetain(cf);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(this + 57) = 1;
    v6 = *MEMORY[0x1E695E480];
    HostTimeClock = CMClockGetHostTimeClock();
    v5 = CMTimebaseCreateWithSourceClock(v6, HostTimeClock, this + 8);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v5 = dyld_program_sdk_at_least();
  if (v5)
  {
    v8 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v9 = *re::animationLogObjects(v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Using deprecated animation clock. Please rebuild application using newer SDK.", v10, 2u);
  }

  v8 = 1;
LABEL_10:
  *(this + 506) = v8;
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::deinit(uint64_t result)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v22, result, 0);
  v3 = v22;
  v11 = v22;
  v12 = DWORD2(v22);
  if (v22 != v2 || DWORD2(v22) != 0xFFFFFFFFLL)
  {
    v5 = WORD4(v22);
    v6 = WORD5(v22);
    while (1)
    {
      v7 = v3[2];
      if (v7 <= v6)
      {
        break;
      }

      re::DataArray<re::internal::TimelineTreeInfo>::destroy(v2, ((*(*(v3[4] + 16 * v6 + 8) + 4 * v5) & 0xFFFFFF) << 32) | (v6 << 16) | v5);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v11);
      v3 = v11;
      v5 = v12;
      v6 = HIWORD(v12);
      if (v11 == v2 && v12 == 0xFFFFLL && HIWORD(v12) == 0xFFFFLL)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
    v13 = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_11:
  v8 = v2[2];
  v6 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_20;
  }

  v7 = 16 * v8 - 16;
  do
  {
    if (v8 <= v6)
    {
      v11 = 0;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      v17 = 789;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_24:
      v11 = 0;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "removeAt";
      v16 = 1024;
      v17 = 931;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

    v9 = (v2[4] + v7);
    (*(**v2 + 40))(*v2, *v9);
    (*(**v2 + 40))(*v2, v9[1]);
    v1 = v2[2];
    if (v1 <= v6)
    {
      goto LABEL_24;
    }

    v8 = v1 - 1;
    if (v1 - 1 > v6)
    {
      *(v2[4] + v7) = *(v2[4] + 16 * v1 - 16);
      v8 = v2[2] - 1;
    }

    v2[2] = v8;
    ++*(v2 + 6);
    v7 -= 16;
    --v6;
  }

  while (v6);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v8)
  {
    v11 = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v10 = v2[4];
  (*(**v2 + 40))(*v2, *v10);
  (*(**v2 + 40))(*v2, v10[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}