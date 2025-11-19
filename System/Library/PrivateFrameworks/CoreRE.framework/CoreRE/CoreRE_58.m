uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphOutputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphOutputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphOutputData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphOutputData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphOutputData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphOutputData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphOutputData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphOutputData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 48 * v9);
  *v15 = 0;
  v15[1] = &str_67;
  v15[2] = 0;
  v15[3] = &str_67;
  v15[4] = 0;
  v15[5] = &str_67;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 48 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphOutputData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::RenderGraphOutputData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(v5, a2);
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
          LOBYTE(v12) = v8[2];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v12) = v8[4];
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v11[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          re::StringID::destroyString((v8 + 4));
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

void re::DynamicArray<re::RenderGraphOutputData>::resize(uint64_t a1, unint64_t a2)
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
      re::StringID::destroyString((v10 + 32));
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
      re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, a2);
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
        v7[5] = &str_67;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 48 * v8;
      do
      {
        re::StringID::destroyString((v9 + 32));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 48;
        v10 -= 48;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphOutputData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphOutputData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 48 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<float *>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<float *>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 8 * v9) = 0;
  *(a4 + 16) = v9 + 1;
  ++*(a4 + 24);
  v15 = (*(a4 + 32) + 8 * (v9 + 1) - 8);
  re::introspectionInitElement(a2, a3, a1[6], v15);
  return v15;
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphDataNodeConnection>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = 0uLL;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
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

        re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a4, v15);
        v8 = 0uLL;
      }

      else
      {
        re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a4, v11);
        v8 = 0uLL;
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 56 * v10;
  *v16 = 0;
  *(v16 + 8) = &str_67;
  *&v19[0] = 0;
  *(v16 + 16) = v8;
  *(v16 + 32) = 0;
  *(v19 + 8) = v8;
  *(v16 + 48) = 0;
  v20 = 0;
  DWORD2(v19[1]) = 1;
  *(v16 + 40) = 1;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v19);
  v17 = (*(a4 + 32) + 56 * *(a4 + 16) - 56);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

void sub_1E2062E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 16);
  re::StringID::destroyString(&a9);
  _Unwind_Resume(a1);
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[6] = 0;
          *(v11 + 10) = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          v13 = v8[3];
          v11[2] = v8[2];
          v8[2] = 0;
          v11[3] = v13;
          v8[3] = 0;
          v14 = v11[4];
          v11[4] = v8[4];
          v8[4] = v14;
          v15 = v11[6];
          v11[6] = v8[6];
          v8[6] = v15;
          ++*(v8 + 10);
          ++*(v11 + 10);
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 7;
          v8 += 7;
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

void re::DynamicArray<re::RenderGraphDataNodeConnection>::resize(uint64_t a1, unint64_t a2)
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
      v10 = (*(a1 + 32) + v8);
      re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v10 + 16);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 56;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a1, a2);
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
        *(v7 + 48) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 16) = 0;
        *(v7 + 40) = 0;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 56 * v8;
      do
      {
        re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 16);
        re::StringID::destroyString(v9);
        v9 = (v9 + 56);
        v10 -= 56;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphDataNodeConnection>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 56 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 56;
        v14 -= 56;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphOutputData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphOutputData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 48 * v9);
  *v15 = 0;
  v15[1] = &str_67;
  v15[2] = 0;
  v15[3] = &str_67;
  v15[4] = 0;
  v15[5] = &str_67;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 48 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 48 * v8;
      do
      {
        re::StringID::destroyString((v9 + 32));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 48;
        v10 -= 48;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphOutputData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphOutputData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 48 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::VideoAsset::assetType(re::VideoAsset *this)
{
  {
    re::VideoAsset::assetType(void)::type = "Video";
    qword_1EE1C7520 = 0;
    re::AssetType::generateCompiledExtension(&re::VideoAsset::assetType(void)::type);
  }

  return &re::VideoAsset::assetType(void)::type;
}

re::VideoAsset *re::VideoAsset::VideoAsset(re::VideoAsset *this)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CC5730;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = -1;
  *(this + 24) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  re::DynamicString::setCapacity(this + 9, 0);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0;
  objc_initWeak(this + 16, 0);
  *(this + 34) = -1;
  *(this + 140) = 0;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 152) = 0u;
  *(this + 192) = 0;
  *(this + 11) = 0u;
  *(this + 25) = 0;
  *(this + 224) = 0;
  *(this + 13) = 0u;
  *(this + 29) = 0x800000008;
  *(this + 60) = 3;
  *(this + 31) = 0x21C000003C0;
  *(this + 32) = 0x1900000001;
  *(this + 66) = 0x1000000;
  *(this + 68) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 536) = 0;
  *(this + 34) = xmmword_1E3060D30;
  *(this + 280) = 0;
  *(this + 71) = 0;
  *(this + 144) = 0;
  *(this + 39) = xmmword_1E3060D30;
  *(this + 40) = 0u;
  *(this + 41) = re::kVideoMajorColorDefault;
  *(this + 168) = 0;
  *(this + 43) = 0u;
  *(this + 88) = 0x3F8000003F800000;
  *(this + 89) = 1065353216;
  *(this + 90) = 0x3F8000003F800000;
  *(this + 91) = 1065353216;
  *(this + 184) = re::VideoDefaults::hueLerpVelocityVideoTuning(0);
  *(this + 740) = xmmword_1E3060D40;
  *(this + 189) = re::VideoDefaults::saturationPowerVideoTuning(0);
  *(this + 95) = 0x3FC666663D4CCCCDLL;
  *(this + 192) = re::VideoDefaults::minSaturationVideoTuning(0);
  *(this + 193) = re::VideoDefaults::maxSaturationVideoTuning(0);
  *(this + 194) = re::VideoDefaults::saturationInflectionVideoTuning(0);
  *(this + 195) = re::VideoDefaults::saturationSmoothingVideoTuning(0);
  *(this + 196) = re::VideoDefaults::brightnessMinVideoTuning(0);
  *(this + 197) = re::VideoDefaults::brightnessMaxVideoTuning(0);
  *(this + 99) = 0x42C800003F800000;
  *(this + 200) = re::VideoDefaults::brightnessInflectionVideoTuning(0);
  *(this + 201) = re::VideoDefaults::brightnessSmoothingVideoTuning(0);
  *(this + 808) = xmmword_1E3060D50;
  *(this + 206) = re::VideoDefaults::colorSmoothTimeVideoTuning(0);
  *(this + 207) = 1120403456;
  *(this + 52) = vdupq_n_s32(0x3E99999Au);
  *(this + 106) = 0x3E8000003F0A3D71;
  *(this + 214) = re::VideoDefaults::gazeDeadbandVideoTuning(0);
  *(this + 215) = 1036831949;
  *(this + 216) = re::VideoDefaults::gazeMaxAngleVideoTuning(0);
  *(this + 110) = 1010174817;
  *(this + 113) = 3212836864;
  *(this + 112) = 0;
  *(this + 115) = 3212836864;
  *(this + 114) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 116) = _D0;
  *(this + 118) = 0;
  *(this + 476) = 0;
  *(this + 954) = 1;
  *(this + 120) = 0;
  *(this + 242) = 0;
  *(this + 486) = 256;
  v8 = *re::videoLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = this;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "VideoAsset has been constructed: %p", &v10, 0xCu);
  }

  return this;
}

void sub_1E206475C(_Unwind_Exception *a1)
{
  re::DynamicString::deinit(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v4);
  }

  *(v1 + 32) = 0;
  _Unwind_Resume(a1);
}

void re::VideoAsset::~VideoAsset(re::VideoAsset *this)
{
  v18 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CC5730;
  v2 = *(this + 23);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::VideoPipeline::~VideoPipeline((v2 + 9752));
    v4 = *(v2 + 9728);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 9728) = 0;
    }

    *(v2 + 9664) = 0;
    ++*(v2 + 9672);
    v5 = *(v2 + 7568);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    re::VideoPixelBufferPool::~VideoPixelBufferPool((v2 + 7472));
    v6 = *(v2 + 7416);
    if (v6)
    {
      CFRelease(v6);
      *(v2 + 7416) = 0;
    }

    v7 = *(v2 + 7384);
    if (v7)
    {
      CFRelease(v7);
      *(v2 + 7384) = 0;
    }

    re::VideoHistogramManager::~VideoHistogramManager((v2 + 7280));
    re::VideoColorManager::~VideoColorManager((v2 + 4704));
    re::VideoPixelFormatDescriptionManager::~VideoPixelFormatDescriptionManager((v2 + 4656));
    re::VideoPresentationQueue::~VideoPresentationQueue((v2 + 432));
    v8 = *(v2 + 416);
    if (v8)
    {
      CFRelease(v8);
      *(v2 + 416) = 0;
    }

    for (i = 408; i != 384; i -= 8)
    {
      if (*(v2 + i))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v2 + i));
      }

      *(v2 + i) = 0;
    }

    if (*(v2 + 384))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v2 + 384));
    }

    *(v2 + 384) = 0;
    v10 = *(v2 + 280);
    if (v10)
    {
      CFRelease(v10);
      *(v2 + 280) = 0;
    }

    re::VideoTextureAllocator::~VideoTextureAllocator((v2 + 216));
    re::VideoPixelBufferPool::~VideoPixelBufferPool((v2 + 128));
    re::VideoHDRProcessor::~VideoHDRProcessor((v2 + 80));
    re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::clear(v2 + 48);
    v11 = re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::deinit(v2);
    (*(*v3 + 40))(v3, v2, v11);
    *(this + 23) = 0;
  }

  v12 = *(this + 13);
  *(this + 13) = 0;

  v14 = *re::videoLogObjects(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = this;
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "VideoAsset has been destructed: %p", &v16, 0xCu);
  }

  re::DynamicInlineArray<re::VideoObject<re::VideoFigDataChannelResourceBase>,5ul>::clear(this + 568);
  re::DynamicInlineArray<re::VideoAssetResourceData,10ul>::clear(this + 35);
  re::DynamicArray<re::AssetHandle>::deinit(this + 144);
  objc_destroyWeak(this + 16);
  *(this + 16) = 0;

  re::DynamicString::deinit((this + 72));
  v15 = *(this + 4);
  if (v15)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v15);
  }

  *(this + 4) = 0;
}

{
  re::VideoAsset::~VideoAsset(this);

  JUMPOUT(0x1E6906520);
}

void sub_1E20649F0(_Unwind_Exception *a1)
{
  re::DynamicInlineArray<re::VideoObject<re::VideoFigDataChannelResourceBase>,5ul>::clear(v1 + 568);
  re::DynamicInlineArray<re::VideoAssetResourceData,10ul>::clear((v1 + 280));
  re::DynamicArray<re::AssetHandle>::deinit(v1 + 144);
  objc_destroyWeak((v1 + 128));
  *(v1 + 128) = 0;

  re::DynamicString::deinit((v1 + 72));
  v3 = *(v1 + 32);
  if (v3)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v3);
  }

  *(v1 + 32) = 0;
  _Unwind_Resume(a1);
}

void re::VideoAsset::makeVideoMutableMemoryAsset(re::VideoAsset *this, AssetService *a2, AVSampleBufferVideoRenderer *a3)
{
  v12 = a2;
  v5 = re::globalAllocators(v12);
  v6 = (*(*v5[2] + 32))(v5[2], 976, 16);
  v7 = re::VideoAsset::VideoAsset(v6);
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 56, 8);
  *(v9 + 48) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  objc_storeStrong((v9 + 8), a2);
  v10 = *v9;
  *v9 = 0;

  *(v6 + 25) = v9;
  re::VideoAsset::assetType(v11);
  (*(*this + 424))(this, v6, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

void re::VideoAsset::makeVideoMutableMemoryAsset(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = re::globalAllocators(v10);
  v5 = (*(*v4[2] + 32))(v4[2], 976, 16);
  v6 = re::VideoAsset::VideoAsset(v5);
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 56, 8);
  *(v8 + 48) = 0;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  objc_storeStrong(v8, a2);
  *(v5 + 25) = v8;
  re::VideoAsset::assetType(v9);
  (*(*a1 + 424))(a1, v5, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

uint64_t re::VideoAsset::makeVideoMutableMemoryAsset(re::VideoAsset *this, AssetService *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 976, 16);
  v5 = re::VideoAsset::VideoAsset(v4);
  v6 = re::globalAllocators(v5);
  v7 = (*(*v6[2] + 32))(v6[2], 56, 8);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v4 + 25) = v7;
  re::VideoAsset::assetType(v7);
  v8 = *(*this + 424);

  return v8(this, v4, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

uint64_t re::VideoAsset::makeVideoMutableMemoryAssetWithoutTarget(re::VideoAsset *this, AssetService *a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 976, 16);
  v5 = re::VideoAsset::VideoAsset(v4);
  v6 = re::globalAllocators(v5);
  v7 = (*(*v6[2] + 32))(v6[2], 56, 8);
  *(v7 + 40) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 48) = 1;
  *v7 = 0;
  *(v4 + 25) = v7;
  re::VideoAsset::assetType(v7);
  v8 = *(*this + 424);

  return v8(this, v4, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

re::VideoAsset *re::VideoAsset::loadAndConnectForRendering(uint64_t *a1)
{
  re::AssetHandle::loadAsync(a1);
  v2 = re::AssetHandle::loadedAsset<re::VideoAsset>(a1);
  v3 = v2;
  if (v2)
  {
    if ((*(v2 + 952) & 1) == 0)
    {
      re::VideoAsset::initializeRenderingData(v2);
      v2 = re::VideoAsset::initializePlaybackData(v3);
    }

    v4 = *(v3 + 26);
    if (v4)
    {
      if (*(v4 + 5064) == 1)
      {
        v5 = *re::videoLogObjects(v2);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "VideoAsset->loadAndConnectForRendering :: Loading Video Asset", buf, 2u);
        }

        *(v4 + 5064) = 0;
        re::VideoRequestOptions::makeWithReceiver(v4, &v7);
        re::AssetManager::setAssetPayloadRequestOptions(*(a1[1] + 24), a1[1], &v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t re::AssetHandle::loadedAsset<re::VideoAsset>(re::VideoAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::VideoAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::VideoAsset::assetType(void)::type, 1);
}

uint64_t re::VideoAsset::initializeRenderingData(uint64_t this)
{
  if (!*(this + 208))
  {
    v1 = this;
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 5136, 16);
    bzero((v3 + 16), 0x1400uLL);
    v4 = 0;
    *(v3 + 8) = 0xFFFFFFFFLL;
    *v3 = 0;
    v5 = MEMORY[0x1E6960C70];
    do
    {
      v6 = v3 + v4;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = -1;
      v7 = *v5;
      *(v6 + 84) = *(v5 + 2);
      *(v6 + 68) = v7;
      v4 += 72;
    }

    while (v4 != 144);
    for (i = 0; i != 4192; i += 2096)
    {
      v9 = v3 + i;
      v10 = *(v5 + 2);
      *(v9 + 176) = *v5;
      *(v9 + 192) = v10;
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;
      *(v9 + 224) = 0;
      *(v9 + 232) = 0;
      *(v9 + 256) = 0;
      *(v9 + 264) = 0;
      *(v9 + 528) = 0;
      *(v9 + 536) = 0;
      *(v9 + 800) = 0;
      *(v9 + 808) = 0;
      *(v9 + 1072) = 0;
      *(v9 + 1080) = 0;
      *(v9 + 1344) = 0;
      *(v9 + 1352) = 0;
      *(v9 + 1376) = 0;
      *(v9 + 1384) = 0;
      *(v9 + 1408) = 0;
      *(v9 + 1416) = 0;
      *(v9 + 1680) = 0;
      *(v9 + 1688) = 0;
      *(v9 + 1712) = 0;
      *(v9 + 1720) = 0;
      *(v9 + 1776) = 0;
      *(v9 + 1784) = 0;
      *(v9 + 1824) = 0;
      *(v9 + 1832) = 0;
      *(v9 + 1856) = 0;
      *(v9 + 1864) = 0;
      *(v9 + 1952) = 0;
      *(v9 + 1760) = 0;
      *(v9 + 1744) = 0uLL;
      *(v9 + 1872) = 0uLL;
      *(v9 + 1888) = 0uLL;
      *(v9 + 1904) = 0uLL;
      *(v9 + 1954) = 1;
      *(v9 + 1956) = -1;
      *(v9 + 2000) = 0;
      *(v9 + 2008) = 0;
      *(v9 + 2024) = 0;
      *(v9 + 2032) = 0;
      *(v9 + 2048) = 0;
      *(v9 + 2056) = 0;
      *(v9 + 2128) = 0;
      *(v9 + 2136) = 0;
      *(v9 + 2176) = 0;
      *(v9 + 2184) = 0;
      *(v9 + 2224) = 0;
      *(v9 + 2232) = 0;
      *(v9 + 2248) = 0;
      *(v9 + 1976) = 0;
      *(v3 + i + 1960) = 0uLL;
      *(v9 + 2256) = 1;
      *(v9 + 2264) = 0;
    }

    *(v3 + 4480) = 0u;
    *(v3 + 4464) = 0u;
    *(v3 + 4448) = 0u;
    *(v3 + 4432) = 0u;
    *(v3 + 4416) = 0u;
    *(v3 + 4400) = 0u;
    *(v3 + 4384) = 0u;
    *(v3 + 4368) = 0u;
    *(v3 + 4492) = 0u;
    *(v3 + 4524) = 0x10000;
    *(v3 + 4528) = 0;
    *(v3 + 4536) = 514;
    *(v3 + 4538) = 2;
    *(v3 + 4544) = 0u;
    *(v3 + 4560) = 0u;
    *(v3 + 4576) = 0u;
    *(v3 + 4592) = 0u;
    *(v3 + 4608) = 0u;
    *(v3 + 4624) = 0u;
    *(v3 + 4640) = 0u;
    *(v3 + 4652) = 0u;
    *(v3 + 4684) = 0x10000;
    *(v3 + 4688) = 0;
    *(v3 + 4696) = 514;
    *(v3 + 4698) = 2;
    *(v3 + 4704) = -1;
    *(v3 + 4708) = 0;
    *(v3 + 4712) = 0u;
    *(v3 + 4728) = 0u;
    *(v3 + 4744) = 0u;
    *(v3 + 4760) = 0u;
    *(v3 + 4776) = 0u;
    *(v3 + 4792) = 0u;
    *(v3 + 4808) = 0u;
    *(v3 + 4820) = 0u;
    *(v3 + 4852) = 0x10000;
    *(v3 + 4856) = 0;
    *(v3 + 4864) = 514;
    *(v3 + 4866) = 2;
    *(v3 + 4980) = 0u;
    *(v3 + 4952) = 0u;
    *(v3 + 4968) = 0u;
    *(v3 + 4920) = 0u;
    *(v3 + 4936) = 0u;
    *(v3 + 4888) = 0u;
    *(v3 + 4904) = 0u;
    *(v3 + 4872) = 0u;
    *(v3 + 5012) = 0x10000;
    *(v3 + 5016) = 0;
    *(v3 + 5024) = 514;
    *(v3 + 5026) = 2;
    *(v3 + 5032) = -1;
    *(v3 + 5036) = 0;
    *(v3 + 5064) = 0;
    *(v3 + 5056) = 0;
    *(v3 + 5040) = 0u;
    *(v3 + 5072) = xmmword_1E3060D60;
    *(v3 + 5088) = 0;
    *(v3 + 5096) = 0;
    *(v3 + 5120) = 0;
    *(v1 + 208) = v3;
    *(v1 + 952) = this;
  }

  return this;
}

BOOL re::VideoAsset::initializePlaybackData(re::VideoAsset *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(this + 25))
  {
    return 1;
  }

  v2 = *(this + 26);
  if (!v2)
  {
    return 1;
  }

  v9 = 0;
  v3 = re::VideoReceiverCreateEndpointID(v2, &v9);
  v4 = v9;
  v5 = v4;
  v6 = v3 == 0;
  if (v3)
  {
    v7 = *re::assetTypesLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "Failed to create video target with in-process video receiver (error: %d)", buf, 8u);
    }
  }

  else
  {
    re::VideoAsset::setReceiverEndpoint(this, v4);
  }

  return v6;
}

uint64_t re::VideoAsset::dimensions(re::VideoAsset *this)
{
  v1 = *(this + 26);
  if (v1)
  {
    return *(v1 + 5056);
  }

  v2 = 0;
  if (*(this + 25))
  {
    if (objc_opt_respondsToSelector())
    {
      [**(this + 25) videoTrackNaturalSize];
      if (v5.f64[0] != 0.0 && v6 != 0.0)
      {
        v5.f64[1] = v6;
        return vcvt_f32_f64(v5);
      }
    }
  }

  return v2;
}

id re::VideoAsset::getAVPlayer(id **this)
{
  if (*(this + 192))
  {
    v2 = 0;
  }

  else
  {
    if (this[25] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v2 = *this[25];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id re::VideoAsset::getAVSampleBufferVideoRenderer(re::VideoAsset *this)
{
  if (*(this + 192) || (v4 = *(this + 25)) == 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v4 + 8);
  }

  return v2;
}

id re::VideoAsset::testingGetInternalAVPlayer(id **this)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *this[25];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void re::VideoPlaybackRuntimeData::updateAVPlayer(id *this, AVPlayer *a2)
{
  v3 = a2;
  if (*this)
  {
    if (this[4])
    {
      [*this removeEndpoint:?];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (this[4])
      {
        [(AVPlayer *)v3 addVideoTarget:?];
      }
    }

    else if (*this)
    {
      v5 = *re::assetTypesLogObjects(isKindOfClass);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "VideoAsset is replacing remote player with AVPlayer", v8, 2u);
      }

      v6 = this[4];
      if (v6)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v6);
      }

      this[4] = 0;
    }
  }

  v7 = *this;
  *this = v3;
}

void re::VideoAsset::setAVPlayer(re::VideoAsset *this, AVPlayer *a2)
{
  v4 = a2;
  re::VideoAsset::updateAutoPlay(this, 0, 0);
  v3 = *(this + 25);
  if (v3)
  {
    re::VideoPlaybackRuntimeData::updateAVPlayer(v3, v4);
  }

  re::VideoAsset::updateVideoTarget(this);
}

void re::VideoAsset::updateAutoPlay(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 192);
  *(a1 + 192) = a2;
  v7 = *(a1 + 200);
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

    v8 = 0;
    goto LABEL_17;
  }

  v8 = *v7 != 0;
  if (v6)
  {
    v9 = *v7 != 0;
  }

  else
  {
    v9 = 0;
  }

  if (a2 != 2 && *v7 && v6 == 2)
  {
    v11 = v7[2];
    v7[2] = 0;
  }

  if (a2)
  {
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_17:
    v12 = *re::assetTypesLogObjects(a1);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *v41 = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "videoFileAutoPlay will replace current AVPlayer", v41, 2u);
    }

    v14 = *(a1 + 200);
    if (v14)
    {
      v15 = objc_opt_new();
      re::VideoPlaybackRuntimeData::updateAVPlayer(v14, v15);

      if (!v8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = re::globalAllocators(v13);
      v19 = (*(*v18[2] + 32))(v18[2], 56, 8);
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *(v19 + 48) = 0;
      *(a1 + 200) = v19;
      v20 = objc_opt_new();
      v21 = *(a1 + 200);
      v22 = *v21;
      *v21 = v20;

      re::VideoAsset::init(a1);
      if (!v8)
      {
LABEL_29:
        v23 = **(a1 + 200);
        if (a2 == 2)
        {
          v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 160)];
          v31 = *(a1 + 160);
          if (v31)
          {
            v32 = *(a1 + 176);
            v33 = 24 * v31;
            do
            {
              v34 = re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(v32);
              if (v34)
              {
                v35 = **(v34 + 40);
                if (v35)
                {
                  [v30 addObject:v35];
                }
              }

              v32 = (v32 + 24);
              v33 -= 24;
            }

            while (v33);
          }

          if ([v30 count])
          {
            v36 = [REVideoPlayerItemsLooper alloc];
            v37 = [v30 copy];
            v38 = [(REVideoPlayerItemsLooper *)v36 initWithPlayer:v23 assets:v37];
            v39 = *(a1 + 200);
            v40 = *(v39 + 16);
            *(v39 + 16) = v38;
          }
        }

        else if (a2 == 1)
        {
          v24 = *(a1 + 160);
          if (v24)
          {
            v25 = *(a1 + 176);
            v26 = 24 * v24;
            do
            {
              v27 = re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(v25);
              if (v27)
              {
                v28 = **(v27 + 40);
                if (v28)
                {
                  v29 = [MEMORY[0x1E69880B0] playerItemWithAsset:v28];
                  [v23 insertItem:v29 afterItem:0];
                }
              }

              v25 = (v25 + 24);
              v26 -= 24;
            }

            while (v26);
          }

          [v23 play];
        }

        return;
      }
    }

LABEL_27:
    if (v6 == a2 && !a3)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v9)
  {
    [**(a1 + 200) pause];
    v16 = *(a1 + 200);
    v17 = *v16;
    *v16 = 0;
  }
}

void re::VideoAsset::updateVideoTarget(re::VideoAsset *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(this + 25);
  if (v1)
  {
    if (*v1)
    {
      v4 = (v1 + 32);
      v3 = *(v1 + 32);
      if (v3)
      {
        if ((*(this + 951) & 1) != 0 || ([*v1 removeEndpoint:?], v1 = *(this + 25), v4 = (v1 + 32), (v3 = *(v1 + 32)) != 0))
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v3);
          v1 = *(this + 25);
        }

        *v4 = 0;
      }

      if (*(v1 + 40))
      {
        v5 = [*v1 addEndpoint:?];
        if (v5)
        {
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef((*(this + 25) + 32), v5);

          CFRelease(v5);
        }
      }
    }

    else if (*(v1 + 8))
    {
      v6 = *(v1 + 32);
      if (v6)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v6);
        *(v1 + 32) = 0;
        v1 = *(this + 25);
      }

      if (*(v1 + 40))
      {
        CFAllocatorGetDefault();
        v7 = FigVideoTargetCreateWithVideoReceiverEndpointID();
        v8 = v7;
        if (v7)
        {
          v9 = *re::assetTypesLogObjects(v7);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v11 = v8;
            _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to create video target from endpoint (error: %d)", buf, 8u);
          }
        }

        else
        {
          [*(*(this + 25) + 8) addVideoTarget:0];
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef((*(this + 25) + 32), 0);
          CFRelease(0);
        }
      }
    }
  }
}

void re::VideoAsset::setAVSampleBufferVideoRenderer(re::VideoAsset *this, AVSampleBufferVideoRenderer *a2)
{
  v5 = a2;
  re::VideoAsset::updateAutoPlay(this, 0, 0);
  v4 = *(this + 25);
  if (v4)
  {
    objc_storeStrong((v4 + 8), a2);
  }

  re::VideoAsset::updateVideoTarget(this);
}

id re::VideoAsset::getRemotePlayer(id **this)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    v2 = *this[25];
  }

  return v2;
}

void re::VideoAsset::setRemotePlayer(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 isEqual:**(a1 + 200)];
  if ((v5 & 1) == 0)
  {
    if (**(a1 + 200))
    {
      v6 = *re::assetTypesLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "VideoAsset is replacing remote player", v10, 2u);
      }

      v7 = *(a1 + 200);
      if (*(v7 + 32))
      {
        [*v7 removeEndpoint:?];
        v8 = *(a1 + 200);
        v9 = *(v8 + 32);
        if (v9)
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v9);
        }

        *(v8 + 32) = 0;
      }
    }

    re::VideoAsset::updateAutoPlay(a1, 0, 0);
    objc_storeStrong(*(a1 + 200), a2);
  }
}

void *re::VideoAsset::setCurrentUserProvidedVideoPixelBuffers(re::VideoAsset *a1, uint64_t a2)
{
  re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(a1);
  v4 = *(a1 + 26);
  result = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=((v4 + 24), a2);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 88) = *(a2 + 64);
  *(v4 + 72) = v7;
  *(v4 + 56) = v6;
  v8 = *(a1 + 26);
  if (*(v8 + 24))
  {
    v9 = 0;
    do
    {
      result = CVPixelBufferRetain(*(v8 + 40 + 8 * v9++));
    }

    while (v9 < *(v8 + 24));
  }

  return result;
}

void re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(re::VideoAsset *this)
{
  v1 = *(this + 26);
  if (*(v1 + 24))
  {
    v3 = 0;
    do
    {
      CVPixelBufferRelease(*(v1 + 40 + 8 * v3++));
    }

    while (v3 < *(v1 + 24));
    v1 = *(this + 26);
  }

  *(v1 + 24) = 0;
  ++*(v1 + 32);
}

void *re::VideoAsset::setFutureUserProvidedVideoPixelBuffers(re::VideoAsset *a1, uint64_t a2)
{
  re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(a1);
  v4 = *(a1 + 26);
  result = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=((v4 + 96), a2);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 160) = *(a2 + 64);
  *(v4 + 128) = v6;
  *(v4 + 144) = v7;
  v8 = *(a1 + 26);
  if (*(v8 + 96))
  {
    v9 = 0;
    do
    {
      result = CVPixelBufferRetain(*(v8 + 112 + 8 * v9++));
    }

    while (v9 < *(v8 + 96));
  }

  return result;
}

void re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(re::VideoAsset *this)
{
  v1 = *(this + 26);
  if (*(v1 + 96))
  {
    v3 = 0;
    do
    {
      CVPixelBufferRelease(*(v1 + 112 + 8 * v3++));
    }

    while (v3 < *(v1 + 96));
    v1 = *(this + 26);
  }

  *(v1 + 96) = 0;
  ++*(v1 + 104);
}

double re::VideoAsset::getVideoTextureHandles@<D0>(re::VideoAsset *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 26);
  if (v3)
  {
    re::VideoChannelTextureHandles::VideoChannelTextureHandles(a2, (v3 + 4384));
    re::VideoChannelTextureHandles::VideoChannelTextureHandles((a2 + 160), (v3 + 4544));
    v5 = *(v3 + 4704);
    *(a2 + 324) = *(v3 + 4708);
    *(a2 + 320) = v5;
  }

  else
  {
    *(a2 + 320) = 0;
    result = 0.0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 160) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 142) = 1;
    *(a2 + 144) = 0;
    *(a2 + 152) = 514;
    *(a2 + 154) = 2;
    *(a2 + 301) = 256;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 268) = 0u;
    *(a2 + 304) = 0;
    *(a2 + 312) = 514;
    *(a2 + 314) = 2;
    *(a2 + 320) = -1;
  }

  return result;
}

void re::VideoChannelTextureHandles::~VideoChannelTextureHandles(re::VideoChannelTextureHandles *this)
{
  v3 = *(this + 18);
  v2 = (this + 144);
  if (v3)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v2);
  }

  *(this + 18) = 0;
  re::TextureHandle::invalidate((this + 96));
  re::TextureHandle::invalidate((this + 80));
  re::TextureHandle::invalidate((this + 64));
  re::TextureHandle::invalidate((this + 48));
  re::TextureHandle::invalidate((this + 32));
  re::TextureHandle::invalidate((this + 16));
  re::TextureHandle::invalidate(this);
}

double re::VideoAsset::getLegacyVideoTextureHandles@<D0>(re::VideoAsset *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 26);
  if (v3)
  {
    re::VideoChannelTextureHandles::VideoChannelTextureHandles(a2, (v3 + 4712));
    re::VideoChannelTextureHandles::VideoChannelTextureHandles((a2 + 160), (v3 + 4872));
    v5 = *(v3 + 5032);
    *(a2 + 324) = *(v3 + 5036);
    *(a2 + 320) = v5;
  }

  else
  {
    *(a2 + 320) = 0;
    result = 0.0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 160) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 142) = 1;
    *(a2 + 144) = 0;
    *(a2 + 152) = 514;
    *(a2 + 154) = 2;
    *(a2 + 301) = 256;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 268) = 0u;
    *(a2 + 304) = 0;
    *(a2 + 312) = 514;
    *(a2 + 314) = 2;
    *(a2 + 320) = -1;
  }

  return result;
}

uint64_t re::VideoAsset::getResourceContext(re::VideoAsset *this)
{
  return this + 272;
}

{
  return this + 272;
}

void re::VideoAsset::retrieveBuffersAndUpdateRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, void **a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v272 = *MEMORY[0x1E69E9840];
  v18 = *(v10 + 208);
  if (!v18)
  {
    return;
  }

  v19 = v16;
  p_buf = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  p_time2 = v11;
  v25 = v10;
  v136 = v17;
  if (*(v10 + 972) == 1)
  {
    v26 = *(v10 + 184);
    if (v26)
    {
      v27 = *(v10 + 968);
      if (v27)
      {
        v26[2436] = v27;
        if (v26[52] != v27)
        {
          v26[52] = v27;
          re::memoryAttributionVideoPixelBufferPool((v26 + 32), v27);
          v26 = *(v25 + 184);
          v27 = *(v25 + 968);
        }

        if (v26[1888] != v27)
        {
          v26[1888] = v27;
          re::memoryAttributionVideoPixelBufferPool((v26 + 1868), v27);
          v26 = *(v25 + 184);
          v27 = *(v25 + 968);
        }

        if (v26[68] != v27)
        {
          v26[68] = v27;
        }

        re::VideoLightSpillGenerator::setTaskIDToken((v26 + 1842), v27);
        re::VideoLightSpillGenerator::setTaskIDToken((*(v25 + 184) + 7400), *(v25 + 968));
        re::VideoLightSpillGenerator::setTaskIDToken((*(v25 + 184) + 9712), *(v25 + 968));
        v29 = *(v25 + 184);
        v30 = *(v25 + 968);
        if (*(v29 + 7360) != v30)
        {
          *(v29 + 7360) = v30;
        }

        v10 = re::VideoDefaults::pipelineEnabled(v28);
        if (v10)
        {
          v10 = re::VideoPipeline::setOwner((*(v25 + 184) + 9752), *(v25 + 968));
        }

        *(v25 + 972) = 0;
      }
    }
  }

  v31 = MEMORY[0x1E6960C70];
  v218 = **&MEMORY[0x1E6960C70];
  v219 = 0;
  v220 = 0;
  *&v221[12] = 0;
  v222 = 0;
  v223 = 0;
  v224 = 0;
  v225 = 0;
  v226 = 0;
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  v239 = 0;
  v240 = 0;
  v243 = 0;
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v247 = 0;
  v248 = 0;
  v252 = 0;
  v242 = 0;
  v241 = 0u;
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v253 = 1;
  v254 = -1;
  v257 = 0;
  v258 = 0;
  v259 = 0;
  v260 = 0;
  v261 = 0;
  v262 = 0;
  v263 = 0;
  v264 = 0;
  v265 = 0;
  v266 = 0;
  v267[4] = 0;
  v268 = 0;
  v269 = 0;
  v255 = 0u;
  v256 = 0;
  v270 = 1;
  v271 = 0;
  v32 = *(v18 + 4376);
  if (*(v18 + 4368) == v32)
  {
    v33 = *(v25 + 184);
    if (*(v33 + 4640) != *(v33 + 4648))
    {
      v10 = re::VideoPresentationGroup::operator=(&v218, (v33 + 2096 * (*(v33 + 4640) & 1) + 448));
    }
  }

  else
  {
    v10 = re::VideoPresentationGroup::operator=(&v218, (v18 + 176 + 2096 * ((v32 & 1) == 0)));
  }

  v34 = re::VideoDefaults::logEnabled(v10);
  if (v34)
  {
    goto LABEL_238;
  }

LABEL_21:
  re::VideoLightSpillGenerator::setupSession((*(v25 + 184) + 7368), *(v25 + 232), HIDWORD(*(v25 + 232)), *(v25 + 240));
  re::VideoLightSpillGenerator::setupSession((*(v25 + 184) + 7400), *(v25 + 248), HIDWORD(*(v25 + 248)), *(v25 + 256));
  v35 = *(v25 + 216);
  if (v35 && *(*v35 + 12524) == 1 && (*(v25 + 266) & 1) == 0)
  {
    *(v25 + 265) = 1;
    v36 = re::VideoAsset::dimensions(v25);
    re::VideoLightSpillGenerator::setupSession((*(v25 + 184) + 9712), ((*&v36 / *(&v36 + 1)) * 180.0), 180, *(v25 + 260));
  }

  v149 = *v31;
  v150 = 0;
  v151 = 0;
  *&v152[12] = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v157 = 0;
  v158 = 0;
  v160 = 0;
  v161 = 0;
  v163 = 0;
  v164 = 0;
  v165[32] = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v174 = 0;
  v175 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v190 = 0;
  v178 = 0;
  v177 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v191 = 1;
  v192 = -1;
  v196 = 0;
  v197 = 0;
  v199 = 0;
  v200 = 0;
  v202 = 0;
  v203 = 0;
  v207 = 0;
  v208 = 0;
  v210 = 0;
  v211 = 0;
  v212 = 0;
  v213 = 0;
  v215 = 0;
  v193 = 0u;
  v194 = 0;
  v216 = 1;
  v217 = 0;
  v37 = *(v25 + 184);
  v38 = *(v25 + 265);
  buf = *v19;
  LOBYTE(v134) = *(v25 + 267);
  v39 = re::retrievePresentationGroupForTime(v37, v18, v38, &buf, p_time2, v23, *(v23 + 344), v22, *(v23 + 56), v21, &v149, v25 + 40, *(v25 + 104), *(v25 + 208) + 24);
  v40 = v39;
  p_time2 = a9;
  p_buf->value = 0;
  *(v25 + 8) = 0;
  if (v39)
  {
    goto LABEL_30;
  }

  if ((v183 & ~v21) != 0)
  {
    v41 = *re::videoLogObjects(v39);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 134218240;
      *(&buf.value + 4) = v183;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v21;
      _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Unable to play back protected content %llu at current protection levels %llu.", &buf, 0x16u);
    }

    *(v25 + 8) = 1;
    p_buf->value = v183;
    v40 = 3;
LABEL_30:
    v42 = 0;
    *a9 = 0;
    goto LABEL_31;
  }

  p_buf->value = v183;
  if (v210)
  {
    v83 = 0;
    v84 = 2016;
    while (1)
    {
      v85 = atomic_load(*(&v149.value + v84));
      if (v85 != 8)
      {
        break;
      }

      ++v83;
      v84 += 16;
      if (v83 >= v210)
      {
        goto LABEL_208;
      }
    }

    if (v265)
    {
      v122 = 0;
      v123 = v267;
      while (1)
      {
        v124 = atomic_load(*v123);
        if (v124 != 8)
        {
          break;
        }

        ++v122;
        v123 += 2;
        if (v122 >= v265)
        {
          goto LABEL_205;
        }
      }

      p_buf = *re::videoLogObjects(v39);
      if (os_log_type_enabled(p_buf, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, p_buf, OS_LOG_TYPE_DEFAULT, "Presentation group is not ready.", &buf, 2u);
      }

      v40 = 5;
      goto LABEL_30;
    }

LABEL_205:
    p_buf = *re::videoLogObjects(v39);
    if (os_log_type_enabled(p_buf, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, p_buf, OS_LOG_TYPE_DEFAULT, "Presentation group is not ready. Using previous presentation group.", &buf, 2u);
    }

    v39 = re::VideoPresentationGroup::operator=(&v149, &v218.value);
  }

LABEL_208:
  v42 = 1;
  *a9 = 1;
  if ((*(v25 + 950) & 1) == 0)
  {
    *(v25 + 950) = 1;
    v125 = re::VideoDefaults::logEnabled(v39);
    if (v125)
    {
      p_buf = *re::videoLogObjects(v125);
      if (os_log_type_enabled(p_buf, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, p_buf, OS_LOG_TYPE_DEFAULT, "[VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: outPixelBufferFound is set to True which is variable for VideoComponent::isReadyToRender", &buf, 2u);
      }
    }
  }

  v40 = 0;
LABEL_31:
  buf = v218;
  time2 = v149;
  v43 = CMTimeCompare(&buf, &time2);
  if (v43 || (v44 = v219, v219 != v150))
  {
    v44 = 1;
  }

  else if (v219)
  {
    v45 = v221;
    v46 = v152;
    v47 = v219 - 1;
    do
    {
      v49 = *v45++;
      v48 = v49;
      v50 = *v46++;
      v51 = v48 == v50;
      v44 = v48 != v50;
      v51 = !v51 || v47-- == 0;
    }

    while (!v51);
  }

  *v136 = v44;
  if (v42)
  {
    v136 = (v18 + 4096);
    *(v18 + 4708) = v217;
    if (*(v25 + 267) == 1)
    {
      v52 = *re::videoLogObjects(v43);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "First successful sampling", &buf, 2u);
      }

      *(v25 + 267) = 0;
    }

    v53 = re::VideoDefaults::logEnabled(v43);
    if (v53)
    {
      re::CoreVideoUtils::printPresentationGroupInfo(&v149, v54);
    }

    if ((v215 & 1) != 0 || !v207)
    {
      *(v25 + 640) = 0u;
      *(v25 + 656) = re::kVideoMajorColorDefault;
      v55 = re::VideoDefaults::logEnabled(v53);
      if ((v55 & 1) == 0)
      {
        v55 = re::VideoDefaults::logLevel(v55);
        if (v55 < 4)
        {
          goto LABEL_98;
        }
      }

      v72 = *re::videoLogObjects(v55);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        re::DynamicString::format("{%f, %f, %f, %f}", &buf, *(v25 + 656), *(v25 + 660), *(v25 + 664), *(v25 + 668));
        timescale = buf.timescale;
        epoch = buf.epoch;
        p_time2 = &time2;
        re::DynamicString::format("{%f, %f, %f}", &time2, *(v25 + 640), *(v25 + 644), *(v25 + 648));
        v75 = &buf.timescale + 1;
        if (timescale)
        {
          v75 = epoch;
        }

        if (time2.timescale)
        {
          v76 = time2.epoch;
        }

        else
        {
          v76 = &time2.timescale + 1;
        }

        *v145 = 136315394;
        v146 = v75;
        v147 = 2080;
        v148 = v76;
        _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "[VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: #VideoColor :: computeMajorColor == false or !presentationGroup.histograms.isEmpty() :: Major Color Set %s and Average Color Set %s", v145, 0x16u);
        if (time2.value && (time2.timescale & 1) != 0)
        {
          (*(*time2.value + 40))();
        }

        if (buf.value && (buf.timescale & 1) != 0)
        {
          (*(*buf.value + 40))();
        }
      }
    }

    else
    {
      v55 = v209;
      if (!v209)
      {
        goto LABEL_98;
      }

      v55 = re::VideoHistogram::data(v209);
      if (!*v55)
      {
        goto LABEL_98;
      }

      v56 = re::videoStatisticsComputeAverageColor(v209, v54);
      v143.i64[0] = v56;
      v143.i64[1] = v57;
      *(v25 + 640) = v143;
      v58 = re::VideoDefaults::passthroughTintColorTuningAllowed(v56);
      if (v58)
      {
        re::VideoColorTuner::calculateColor(v25 + 672, (v25 + 880), (v25 + 736), &v143, v59, v60, v61, v62);
        v64.i64[0] = v58;
        v64.i32[2] = v63;
      }

      else
      {
        v64 = v143;
      }

      v64.i32[3] = 1.0;
      *(v25 + 656) = v64;
      v55 = re::VideoDefaults::logEnabled(v58);
      if ((v55 & 1) == 0)
      {
        v55 = re::VideoDefaults::logLevel(v55);
        if (v55 < 4)
        {
          goto LABEL_98;
        }
      }

      v72 = *re::videoLogObjects(v55);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        re::DynamicString::format("{%f, %f, %f, %f}", &buf, *(v25 + 656), *(v25 + 660), *(v25 + 664), *(v25 + 668));
        v129 = buf.timescale;
        v130 = buf.epoch;
        p_time2 = &time2;
        re::DynamicString::format("{%f, %f, %f}", &time2, *(v25 + 640), *(v25 + 644), *(v25 + 648));
        v131 = &buf.timescale + 1;
        if (v129)
        {
          v131 = v130;
        }

        if (time2.timescale)
        {
          v132 = time2.epoch;
        }

        else
        {
          v132 = &time2.timescale + 1;
        }

        *v145 = 136315394;
        v146 = v131;
        v147 = 2080;
        v148 = v132;
        _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "[VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: #VideoColor :: Major Color Set %s and Average Color Set %s", v145, 0x16u);
        if (time2.value && (time2.timescale & 1) != 0)
        {
          (*(*time2.value + 40))();
        }

        if (buf.value && (buf.timescale & 1) != 0)
        {
          (*(*buf.value + 40))();
        }
      }
    }

LABEL_98:
    v19 = (v18 + 4384);
    v88 = v163;
    if (v163)
    {
      p_time2 = 0;
      v31 = v165;
      p_buf = v195;
      v21 = &v201;
      v22 = (v18 + 4384);
      while (1)
      {
        if (v31[13] || v31[14] || v31[15])
        {
          if (p_time2 >= 2)
          {
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, p_time2, 2, v134);
            _os_crash();
            __break(1u);
LABEL_215:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v88);
            _os_crash();
            __break(1u);
LABEL_216:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v89);
            _os_crash();
            __break(1u);
LABEL_217:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v90);
            _os_crash();
            __break(1u);
LABEL_218:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, p_time2, 2);
            _os_crash();
            __break(1u);
LABEL_219:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v100);
            _os_crash();
            __break(1u);
LABEL_220:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v103);
            _os_crash();
            __break(1u);
LABEL_221:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v104);
            _os_crash();
            __break(1u);
LABEL_222:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash();
            __break(1u);
LABEL_223:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v96);
            _os_crash();
            __break(1u);
LABEL_224:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash();
            __break(1u);
LABEL_225:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v97);
            _os_crash();
            __break(1u);
LABEL_226:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash();
            __break(1u);
LABEL_227:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v105);
            _os_crash();
            __break(1u);
LABEL_228:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash();
            __break(1u);
LABEL_229:
            re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v106);
            _os_crash();
            __break(1u);
LABEL_230:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v22, 2);
            _os_crash();
            __break(1u);
            goto LABEL_231;
          }

          if (v88 <= p_time2)
          {
            goto LABEL_215;
          }

          v89 = *(&v193 + 1);
          if (*(&v193 + 1) <= p_time2)
          {
            goto LABEL_216;
          }

          v90 = v199;
          if (v199 <= p_time2)
          {
            goto LABEL_217;
          }

          re::VideoChannelTextureHandles::setTextures(v22, *(v23 + 56), v31, v190, v184, SHIBYTE(v190), p_buf, v21, v191);
          v88 = v163;
        }

        p_time2 = (p_time2 + 1);
        p_buf = (p_buf + 8);
        v21 += 3;
        v22 += 80;
        v31 += 16;
        if (p_time2 >= v88)
        {
          goto LABEL_121;
        }
      }
    }

    v91 = v154;
    if (!v154)
    {
LABEL_121:
      v94 = re::VideoDefaults::screenFallbackTextureEnabled(v55);
      if (v94)
      {
        v126 = 0;
        v127 = 1;
        do
        {
          p_buf = v127;
          re::VideoChannelTextureHandles::setScreenFallbackTextures((v19 + 160 * v126), *(v23 + 56));
          v127 = 0;
          v126 = 1;
        }

        while ((p_buf & 1) != 0);
      }

      v96 = v171;
      v19 = &selRef_isLimitedRenderAsset;
      if (v171)
      {
        v21 = 0;
        v22 = v173;
        v31 = (v18 + 4432);
        do
        {
          v94 = v173[v21];
          if (v94)
          {
            if (v21 >= 2)
            {
              goto LABEL_222;
            }

            if (v96 <= v21)
            {
              goto LABEL_223;
            }

            p_buf = *(v23 + 56);
            v141 = v94;
            *(v31 + 19) = [v141 pixelFormat];
            v94 = v141;
            if (v141)
            {

              v141 = 0;
            }
          }

          ++v21;
          v96 = v171;
          v31 += 20;
        }

        while (v21 < v171);
      }

      v97 = v174;
      if (v174)
      {
        v21 = 0;
        v22 = v176;
        v31 = (v18 + 4448);
        do
        {
          v94 = v176[v21];
          if (v94)
          {
            if (v21 >= 2)
            {
              goto LABEL_224;
            }

            if (v97 <= v21)
            {
              goto LABEL_225;
            }

            p_buf = *(v23 + 56);
            v140 = v94;
            *(v31 + 16) = [v140 pixelFormat];
            v94 = v140;
            if (v140)
            {

              v140 = 0;
            }
          }

          ++v21;
          v97 = v174;
          v31 += 20;
        }

        while (v21 < v174);
      }

      if (*(v25 + 265))
      {
        v94 = *(&v177 + 1);
        if (*(&v177 + 1))
        {
          v98 = *(v23 + 56);
          v139 = *(&v177 + 1);
          *(v18 + 4516) = [v139 pixelFormat];
          v94 = v139;
          if (v139)
          {

            v139 = 0;
          }

          *(v25 + 265) = 256;
        }
      }

      *(v18 + 4704) = v192;
      v99 = v157;
      v100 = v160;
      if (v157)
      {
        if (!v160)
        {
          p_time2 = 0;
          v31 = &v159;
          p_buf = (v18 + 4712);
          v21 = v195;
          v22 = v198;
          while (1)
          {
            if (v31[13] || v31[14] || v31[15])
            {
              if (p_time2 >= 2)
              {
                goto LABEL_234;
              }

              if (v99 <= p_time2)
              {
                goto LABEL_235;
              }

              v101 = *(&v193 + 1);
              if (*(&v193 + 1) <= p_time2)
              {
                goto LABEL_236;
              }

              v102 = v196;
              if (v196 <= p_time2)
              {
                goto LABEL_237;
              }

              re::VideoChannelTextureHandles::setTextures(p_buf, *(v23 + 56), v31, v190, v184, SHIBYTE(v190), v21, v22, v191);
              v99 = v157;
            }

            p_time2 = (p_time2 + 1);
            v21 += 8;
            v22 = (v22 + 3);
            p_buf = (p_buf + 160);
            v31 += 16;
            if (p_time2 >= v99)
            {
              goto LABEL_167;
            }
          }
        }

        goto LABEL_157;
      }

      if (v160)
      {
LABEL_157:
        p_time2 = 0;
        v31 = &v162;
        p_buf = (v18 + 4712);
        v21 = v195;
        v22 = v198;
        do
        {
          if (v31[13] || v31[14] || v31[15])
          {
            if (p_time2 >= 2)
            {
              goto LABEL_218;
            }

            if (v100 <= p_time2)
            {
              goto LABEL_219;
            }

            v103 = *(&v193 + 1);
            if (*(&v193 + 1) <= p_time2)
            {
              goto LABEL_220;
            }

            v104 = v196;
            if (v196 <= p_time2)
            {
              goto LABEL_221;
            }

            re::VideoChannelTextureHandles::setTextures(p_buf, *(v23 + 56), v31, v190, v184, SHIBYTE(v190), v21, v22, v191);
            v100 = v160;
          }

          p_time2 = (p_time2 + 1);
          v21 += 8;
          v22 = (v22 + 3);
          p_buf = (p_buf + 160);
          v31 += 16;
        }

        while (p_time2 < v100);
LABEL_167:
        v105 = v171;
        if (v171)
        {
          v21 = 0;
          v22 = v173;
          v31 = (v18 + 4760);
          do
          {
            v94 = v173[v21];
            if (v94)
            {
              if (v21 >= 2)
              {
                goto LABEL_226;
              }

              if (v105 <= v21)
              {
                goto LABEL_227;
              }

              p_buf = *(v23 + 56);
              v138 = v94;
              *(v31 + 19) = [v138 pixelFormat];
              v94 = v138;
              if (v138)
              {

                v138 = 0;
              }
            }

            ++v21;
            v105 = v171;
            v31 += 20;
          }

          while (v21 < v171);
        }

        v106 = v174;
        if (v174)
        {
          v21 = 0;
          v22 = v176;
          v31 = (v18 + 4776);
          do
          {
            v94 = v176[v21];
            if (v94)
            {
              if (v21 >= 2)
              {
                goto LABEL_228;
              }

              if (v106 <= v21)
              {
                goto LABEL_229;
              }

              p_buf = *(v23 + 56);
              v137 = v94;
              *(v31 + 16) = [v137 pixelFormat];
              v94 = v137;
              if (v137)
              {

                v137 = 0;
              }
            }

            ++v21;
            v106 = v174;
            v31 += 20;
          }

          while (v21 < v174);
        }

        *(v18 + 5032) = v192;
      }

      v107 = *&v187;
      v108 = *(&v187 + 1);
      *(v18 + 5056) = vabs_f32(vmla_n_f32(vmul_n_f32(*(v25 + 624), v107), *(v25 + 632), v108));
      *(v18 + 5040) = v193;
      v109 = v202;
      if (v202)
      {
        v110 = v204;
        *(&buf.flags + 3) = *&v205[15];
        *&buf.value = *v205;
        v109 = v206;
      }

      else
      {
        v110 = 0;
      }

      *(v18 + 5096) = v110;
      *(v18 + 5097) = *&buf.value;
      *(v18 + 5112) = *(&buf.flags + 3);
      *(v18 + 5120) = v109;
      if (*(v25 + 973) == 1 && (v109 & 1) != 0)
      {
        v111 = *(v18 + 5104);
        v112 = vadd_f32(*(v18 + 5112), vcvt_f32_f64(v188));
      }

      else
      {
        v111 = vcvt_f32_f64(v189);
        v112 = vcvt_f32_f64(v188);
      }

      v113 = vcvt_f32_f64(vcvtq_f64_u64(v185));
      v114 = vdiv_f32(v111, v113);
      *(v18 + 5072) = v114;
      LODWORD(v115) = vdiv_f32(v112, v113).u32[0];
      v116 = 0.0;
      v117 = 0.0;
      if (v114.f32[1] != 1.0)
      {
        v117 = vmuls_lane_f32(1.0 - v114.f32[1], vdiv_f32(v112, vsub_f32(v113, v111)), 1);
      }

      *(&v115 + 1) = v117;
      *(v18 + 5080) = v115;
      v118 = re::VideoDefaults::horizontalDisparityEnabled(v94);
      if (v118 && v212)
      {
        v116 = re::VideoDefaults::overrideHorizontalDispartiy(v118, v214);
      }

      *(v18 + 5088) = v116;
      v119 = *(v18 + 4376);
      if (v119 - *(v18 + 4368) == 2)
      {
        *(v18 + 4368) = v119 - 1;
      }

      *(v18 + 4376) = v119 + 1;
      v120 = re::VideoPresentationGroup::operator=(v18 + 176 + 2096 * (v119 & 1), &v149.value);
      v121 = re::VideoDefaults::logEnabled(v120);
      if (v121)
      {
        v128 = *re::videoLogObjects(v121);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_1E1C61000, v128, OS_LOG_TYPE_DEFAULT, "==========================================", &buf, 2u);
        }
      }

      goto LABEL_199;
    }

    v22 = 0;
    v31 = v195;
    p_buf = v198;
    p_time2 = &v156;
    v21 = v18 + 4384;
    while (1)
    {
      if (*(p_time2 - 2) || *(p_time2 - 1) || *p_time2)
      {
        if (v22 >= 2)
        {
          goto LABEL_230;
        }

        if (v91 <= v22)
        {
LABEL_231:
          re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v91);
          _os_crash();
          __break(1u);
LABEL_232:
          re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v92);
          _os_crash();
          __break(1u);
LABEL_233:
          re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v93);
          _os_crash();
          __break(1u);
LABEL_234:
          re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, p_time2, 2);
          _os_crash();
          __break(1u);
LABEL_235:
          re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v99);
          _os_crash();
          __break(1u);
LABEL_236:
          re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v101);
          _os_crash();
          __break(1u);
LABEL_237:
          re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v102);
          v34 = _os_crash();
          __break(1u);
LABEL_238:
          log = *re::videoLogObjects(v34);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v149.value) = 0;
            _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "==========================================", &v149, 2u);
          }

          goto LABEL_21;
        }

        v92 = *(&v193 + 1);
        if (*(&v193 + 1) <= v22)
        {
          goto LABEL_232;
        }

        v93 = v196;
        if (v196 <= v22)
        {
          goto LABEL_233;
        }

        re::VideoChannelTextureHandles::setTextures(v21, *(v23 + 56), p_time2 - 15, v190, v184, SHIBYTE(v190), v31, p_buf, v191);
        v91 = v154;
      }

      v22 = (v22 + 1);
      ++v31;
      p_buf = (p_buf + 3);
      v21 += 160;
      p_time2 += 16;
      if (v22 >= v91)
      {
        goto LABEL_121;
      }
    }
  }

  if (v40 == 5 || v40 == 3)
  {
    v65 = v192;
    *(v18 + 4704) = v192;
    if (v157)
    {
      *(v18 + 5032) = v65;
    }

    v66 = 0;
    v67 = *&v187;
    v68 = *(&v187 + 1);
    *(v18 + 5056) = vabs_f32(vmla_n_f32(vmul_n_f32(*(v25 + 624), v67), *(v25 + 632), v68));
    v69 = 1;
    do
    {
      v70 = v69;
      v71 = *(v23 + 56);
      re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4384 + 160 * v66, v71, (v71 + 16));
      re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4712 + 160 * v66, *(v23 + 56), (v71 + 16));
      v69 = 0;
      v66 = 1;
    }

    while ((v70 & 1) != 0);
    *(v18 + 4704) = 0;
    *(v18 + 5032) = 0;
  }

  else
  {
    if (*(v25 + 136) != v40)
    {
      v77 = *re::videoLogObjects(v43);
      v43 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
      if (v43)
      {
        LODWORD(buf.value) = 67109120;
        HIDWORD(buf.value) = v40;
        _os_log_error_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_ERROR, "Unable to get presentation group (error: %d)", &buf, 8u);
      }

      *(v25 + 136) = v40;
    }

    if (*a10)
    {
      v78 = re::VideoDefaults::logLevel(v43);
      if (v78 >= 3)
      {
        v133 = *re::videoLogObjects(v78);
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 67109120;
          HIDWORD(buf.value) = v40;
          _os_log_impl(&dword_1E1C61000, v133, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture] [VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: Setting The fallback textures with return %i", &buf, 8u);
        }
      }

      v79 = 0;
      v80 = 1;
      do
      {
        v81 = v80;
        re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4384 + 160 * v79, *(v23 + 56), a10);
        re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4712 + 160 * v79, *(v23 + 56), a10);
        v80 = 0;
        v79 = 1;
      }

      while ((v81 & 1) != 0);
      v82 = 0;
    }

    else
    {
      v82 = -1;
    }

    *(v18 + 4704) = v82;
    *(v18 + 5032) = v82;
    *(v18 + 5056) = 0;
    *(v18 + 5040) = 0;
    *(v25 + 656) = re::kVideoMajorColorDefault;
    v86 = re::VideoDefaults::logEnabled(v43);
    if (v86)
    {
      v87 = *re::videoLogObjects(v86);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, v87, OS_LOG_TYPE_DEFAULT, "==========================================", &buf, 2u);
      }
    }
  }

LABEL_199:
  re::VideoPresentationGroup::~VideoPresentationGroup(&v149);
  re::VideoPresentationGroup::~VideoPresentationGroup(&v218);
}

void sub_1E2067F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, id a21, id a22, id a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  re::VideoPresentationGroup::~VideoPresentationGroup(&a39);
  re::VideoPresentationGroup::~VideoPresentationGroup(&STACK[0x920]);
  _Unwind_Resume(a1);
}

uint64_t re::VideoHistogram::data(re::VideoHistogram *this)
{
  v2 = this + 20;
  v3 = atomic_load(this + 20);
  if (v3)
  {
    os_unfair_lock_lock(this + 4);
    v4 = atomic_load(v2);
    if (v4)
    {
      *(this + 3) = *(this + 202);
      re::DynamicInlineArray<unsigned int,2ul>::operator=(this + 4, this + 203);
      re::DynamicInlineArray<unsigned int,2ul>::operator=(this + 70, this + 269);
      re::DynamicInlineArray<unsigned int,2ul>::operator=(this + 136, this + 335);
      atomic_store(0, this + 20);
    }

    os_unfair_lock_unlock(this + 4);
  }

  return this + 24;
}

BOOL re::VideoAsset::init(re::VideoAsset *this)
{
  if (!*(this + 23))
  {
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 12064, 16);
    bzero(v3, 0x2F20uLL);
    *(v3 + 36) = 0x7FFFFFFF;
    *(v3 + 48) = 0;
    *(v3 + 80) = 0;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0x7FFFFFFF00000000;
    *(v3 + 192) = 0;
    *(v3 + 200) = 514;
    *(v3 + 202) = 2;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0x7FFFFFFF00000000;
    *(v3 + 264) = 0;
    *(v3 + 276) = 0;
    *(v3 + 288) = 514;
    *(v3 + 290) = 2;
    *(v3 + 296) = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F058] + 16);
    *(v3 + 312) = *MEMORY[0x1E695F058];
    *(v3 + 328) = v4;
    *(v3 + 352) = 0;
    *(v3 + 384) = 0u;
    *(v3 + 400) = 0u;
    *(v3 + 416) = 0;
    re::VideoPresentationQueue::VideoPresentationQueue((v3 + 432));
    *(v3 + 4672) = 0u;
    *(v3 + 4656) = 0u;
    *(v3 + 4688) = 0x7FFFFFFF00000000;
    *(v3 + 4696) = 0;
    *(v3 + 4704) = 0u;
    *(v3 + 4720) = 0u;
    *(v3 + 4740) = 0x7FFFFFFFLL;
    *(v3 + 4736) = 0;
    *(v3 + 4752) = 0u;
    *(v3 + 4768) = 0u;
    *(v3 + 4788) = 0x7FFFFFFFLL;
    *(v3 + 4784) = 0;
    *(v3 + 4800) = 0u;
    *(v3 + 4816) = 0u;
    *(v3 + 4836) = 0x7FFFFFFFLL;
    *(v3 + 4832) = 0;
    *(v3 + 4880) = 0;
    *(v3 + 4864) = 0u;
    *(v3 + 4884) = 0x7FFFFFFFLL;
    *(v3 + 4848) = 0u;
    *(v3 + 5152) = 0u;
    *(v3 + 5168) = 0u;
    *(v3 + 5204) = 0x7FFFFFFFLL;
    *(v3 + 5184) = 0u;
    v5 = v3 + 5228;
    v6 = 2048;
    __asm { FMOV            V0.2S, #1.0 }

    *(v3 + 5200) = 0;
    do
    {
      *(v5 - 8) = _D0;
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    *(v3 + 7328) = 0u;
    *(v3 + 7312) = 0u;
    *(v3 + 7296) = 0u;
    *(v3 + 7280) = 0u;
    *(v3 + 7264) = 0u;
    *(v3 + 7344) = 0x7FFFFFFF00000000;
    *(v3 + 7352) = 0;
    *(v3 + 7360) = 0;
    *(v3 + 7368) = 0;
    *(v3 + 7376) = -1;
    *(v3 + 7384) = 0;
    *(v3 + 7392) = 0;
    *(v3 + 7400) = 0;
    *(v3 + 7408) = -1;
    *(v3 + 7416) = 0;
    *(v3 + 7424) = 0;
    *(v3 + 7472) = 0u;
    *(v3 + 7488) = 0u;
    *(v3 + 7504) = 0u;
    *(v3 + 7520) = 0;
    *(v3 + 7524) = 0x7FFFFFFFLL;
    *(v3 + 7536) = 0;
    *(v3 + 7544) = 514;
    *(v3 + 7546) = 2;
    *(v3 + 7552) = 0;
    bzero((v3 + 7560), 0x820uLL);
    v12 = MEMORY[0x1E6960C70];
    *(v3 + 9640) = *MEMORY[0x1E6960C70];
    *(v3 + 9656) = *(v12 + 16);
    *(v3 + 9664) = 0;
    *(v3 + 9672) = 0;
    *(v3 + 9712) = 0;
    *(v3 + 9688) = 0u;
    *(v3 + 9704) = 0;
    *(v3 + 9720) = -1;
    *(v3 + 9728) = 0;
    *(v3 + 9736) = 0;
    bzero((v3 + 9752), 0x810uLL);
    *(v3 + 11816) = *v12;
    *(v3 + 11832) = *(v12 + 16);
    *(v3 + 11840) = 0;
    *(v3 + 11848) = 0;
    *(v3 + 11864) = 0u;
    *(v3 + 11880) = 0u;
    *(v3 + 11896) = 0u;
    *(v3 + 11908) = 0u;
    *(v3 + 11924) = 0x7FFFFFFFLL;
    *(v3 + 11936) = 0u;
    *(v3 + 11952) = 0u;
    *(v3 + 11968) = 0u;
    *(v3 + 11984) = 0u;
    *(v3 + 11997) = 0;
    *(v3 + 12008) = 0x3F80000000000000;
    *(v3 + 12016) = 0u;
    *(v3 + 12034) = 2;
    *(v3 + 12032) = 514;
    re::VideoAutoCounter::VideoAutoCounter((v3 + 12040));
  }

  v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
  v14 = dispatch_queue_create("VideoAsset.backgroundWorkQueue", v13);
  v15 = *(this + 13);
  *(this + 13) = v14;

  v16 = re::VideoAsset::initializePlaybackData(this);
  return v16;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(re::VideoFileAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::VideoFileAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

void re::VideoAsset::setDiffuseSpillMapBlurSigma(re::VideoAsset *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2 & ~(a2 >> 31);
  if (a2 < 0)
  {
    v5 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v3;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid diffuse spill map blur sigma: %d, diffuse spill map blur sigma clamped to %d", v6, 0xEu);
    }
  }

  *(this + 60) = v3;
}

void re::VideoAsset::setSpecularSpillMapBlurSigma(re::VideoAsset *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2 & ~(a2 >> 31);
  if (a2 < 0)
  {
    v5 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = v3;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid specular spill map blur sigma: %d, specular spill map blur sigma clamped to %d", v6, 0xEu);
    }
  }

  *(this + 64) = v3;
}

uint64_t re::VideoAssetLoader::introspectionType(re::VideoAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE197788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197788))
  {
    qword_1EE197780 = re::internal::getOrCreateInfo("VideoAsset", re::allocInfo_VideoAsset, re::initInfo_VideoAsset, &unk_1EE197778, 0);
    __cxa_guard_release(&qword_1EE197788);
  }

  return qword_1EE197780;
}

BOOL re::VideoAssetLoader::createRuntimeData(uint64_t a1, re::VideoAsset *this)
{
  if (!*(a1 + 8))
  {
    re::VideoAsset::initializeRenderingData(this);
  }

  v3 = re::VideoAsset::init(this);
  v4 = *(this + 23);
  if (v4)
  {
    re::VideoLightSpillGenerator::setupSession((v4 + 7368), *(this + 29), HIDWORD(*(this + 29)), *(this + 60));
    re::VideoLightSpillGenerator::setupSession((*(this + 23) + 7400), *(this + 31), HIDWORD(*(this + 31)), *(this + 64));
  }

  return v3;
}

void *re::VideoAsset::cleanupVideoPlayerHelper(void *this)
{
  v1 = this[27];
  if (v1)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    re::ecs2::VideoPlayerComponentHelper::~VideoPlayerComponentHelper(v1);
    this = (*(*v3 + 40))(v3, v1);
    v2[27] = 0;
  }

  return this;
}

uint64_t re::VideoAsset::containsFigDataChannelResource(uint64_t result, uint64_t a2, CFTypeRef *a3)
{
  v3 = result;
  v4 = *(a2 + 568);
  if (v4)
  {
    v7 = 0;
    v8 = a2 + 584;
    while (1)
    {
      v9 = *(a2 + 568);
      if (v9 <= v7)
      {
        break;
      }

      result = CFEqual(*(v8 + 8 * v7), *a3);
      if (result)
      {
        *v3 = 1;
        *(v3 + 8) = v7;
        return result;
      }

      if (v4 == ++v7)
      {
        goto LABEL_6;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v7, v9);
    result = _os_crash();
    __break(1u);
  }

  else
  {
LABEL_6:
    *v3 = 0;
  }

  return result;
}

BOOL re::VideoAssetResourceContext::getResourceDataAtIndex(uint64_t a1, unint64_t a2, void *a3)
{
  os_unfair_lock_lock(a1);
  v6 = *(a1 + 8);
  if (v6 > a2)
  {
    v7 = a1 + 24 * a2;
    *a3 = *(v7 + 24);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> const&>((a3 + 1), v7 + 32);
  }

  os_unfair_lock_unlock(a1);
  return v6 > a2;
}

void re::VideoAsset::processResourceData(re::VideoAsset *this)
{
  v72 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 68);
  v2 = *(this + 35);
  os_unfair_lock_unlock(this + 68);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  if (v2 < 1)
  {
    v59 = 0;
LABEL_113:
    (off_1F5CC58C8[v59])(buf, &v64);
    return;
  }

  v3 = 0;
  v4 = v2 & 0x7FFFFFFF;
  v62 = this + 584;
  v5 = this + 576;
  do
  {
    ResourceDataAtIndex = re::VideoAssetResourceContext::getResourceDataAtIndex(this + 272, v3, &v63);
    if (!ResourceDataAtIndex)
    {
      goto LABEL_92;
    }

    v7 = *re::videoLogObjects(ResourceDataAtIndex);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 67109120;
      *&buf[4] = v63;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "VideoAsset::processResourceData VideoAssetResourceCommand: %d", buf, 8u);
    }

    if (v63 > 3)
    {
      if ((v63 - 4) >= 2)
      {
        if (v63 == 6)
        {
          if (HIDWORD(v63) != 1)
          {
            goto LABEL_92;
          }

          if (!v65)
          {
            buf[0] = 1;
            *&buf[8] = 0;
            re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&buf[8], v64);
            if (buf[0])
            {
              v33 = *&buf[8];
              if (*&buf[8])
              {
                goto LABEL_91;
              }

              goto LABEL_92;
            }
          }

          v35 = *re::assetTypesLogObjects(v8);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_92;
          }

          v69 = 0;
          v26 = &v69;
          v27 = v35;
          v28 = "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandSetAsCurrent]";
        }

        else
        {
          if (v63 != 0x300000007)
          {
            goto LABEL_92;
          }

          if (v65 == 1)
          {
            v9 = v64;
            if (*(this + 944) != v64)
            {
              *(this + 267) = 1;
              *(this + 561) = 0;
            }

            *(this + 236) = v9;
            v10 = *(this + 27);
            if (v10)
            {
              re::ecs2::VideoPlayerComponentHelper::impl::setVideoAssetContentInfo(*v10, this + 944);
            }

            goto LABEL_92;
          }

          v37 = *re::assetTypesLogObjects(v8);
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_92;
          }

          *buf = 0;
          v26 = buf;
          v27 = v37;
          v28 = "Invalid ResourceData for type[VideoAssetResourceTypeCurrentContentInfo] and for command[VideoAssetResourceCommandChanged]";
        }

LABEL_74:
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v28, v26, 2u);
        goto LABEL_92;
      }

LABEL_45:
      if (HIDWORD(v63) != 1)
      {
        goto LABEL_92;
      }

      if (v65 || (LOBYTE(v69) = 1, v70 = 0, re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v70, v64), (v69 & 1) == 0))
      {
        v25 = *re::assetTypesLogObjects(v8);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_92;
        }

        *buf = 0;
        v26 = buf;
        v27 = v25;
        v28 = "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandRemove]";
        goto LABEL_74;
      }

      v21 = re::VideoAsset::containsFigDataChannelResource(v67, this, &v70);
      if (v67[0] == 1)
      {
        v23 = *(this + 71);
        if (v23 <= cf1)
        {
          re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 527, cf1, v23);
          _os_crash();
          __break(1u);
        }

        v24 = v23 - 1;
        if (v23 - 1 <= cf1)
        {
          v21 = *&v5[8 * v23];
          if (v21)
          {
            CFRelease(v21);
            v24 = *(this + 71) - 1;
          }
        }

        else
        {
          *&v62[8 * cf1] = *&v5[8 * v23];
        }

        *&v5[8 * v23] = 0;
        *(this + 71) = v24;
        ++*(this + 144);
        v43 = *re::assetTypesLogObjects(v21);
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        v40 = v70;
        if (!v44)
        {
LABEL_82:
          v5 = this + 576;
          if (v40)
          {
            v33 = v40;
            goto LABEL_91;
          }

          goto LABEL_92;
        }

        *buf = 134218240;
        *&buf[4] = v70;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v41 = v43;
        v42 = "Fig data channel resource(%p) for VideoAsset %p was just removed";
      }

      else
      {
        v38 = *re::assetTypesLogObjects(v21);
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        v40 = v70;
        if (!v39)
        {
          goto LABEL_82;
        }

        *buf = 134218240;
        *&buf[4] = v70;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v41 = v38;
        v42 = "Could not remove fig data channel resource(%p) for VideoAsset %p as it was not found in the array";
      }

      _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 0x16u);
      goto LABEL_82;
    }

    if (v63 == 1)
    {
      if (HIDWORD(v63) != 1)
      {
        goto LABEL_92;
      }

      if (v65 || (LOBYTE(v69) = 1, v70 = 0, re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v70, v64), (v69 & 1) == 0))
      {
        v34 = *re::assetTypesLogObjects(v8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandAdd]", buf, 2u);
        }

        goto LABEL_67;
      }

      v29 = re::VideoAsset::containsFigDataChannelResource(v67, this, &v70);
      if (v67[0])
      {
        v30 = *re::assetTypesLogObjects(v29);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        v32 = v70;
        if (v31)
        {
          *buf = 134218240;
          *&buf[4] = v70;
          *&buf[12] = 2048;
          *&buf[14] = this;
          _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Could not add fig data channel resource(%p) for VideoAsset %p as it was already added before", buf, 0x16u);
        }

LABEL_99:
        if (v32)
        {
          CFRelease(v32);
        }

LABEL_67:
        v5 = this + 576;
        goto LABEL_92;
      }

      cf = 0;
      v32 = v70;
      re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&cf, v70);
      v46 = *(this + 71);
      if (v46 > 4)
      {
        v50 = *re::assetTypesLogObjects(v45);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_97;
        }

        *buf = 134218240;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v48 = v50;
        v49 = "Could not add fig data channel resource(%p) for VideoAsset %p as we already have max resources";
      }

      else
      {
        *&v62[8 * v46] = cf;
        cf = 0;
        *(this + 71) = v46 + 1;
        ++*(this + 144);
        v47 = *re::assetTypesLogObjects(v45);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_97;
        }

        *buf = 134218240;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = this;
        v48 = v47;
        v49 = "Fig data channel resource(%p) was just added for VideoAsset %p";
      }

      _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0x16u);
LABEL_97:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_99;
    }

    if (v63 == 2)
    {
      goto LABEL_45;
    }

    if (v63 != 0x100000003)
    {
      goto LABEL_92;
    }

    if (v65 || (LOBYTE(v69) = 1, v70 = 0, re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v70, v64), (v69 & 1) == 0))
    {
      v36 = *re::assetTypesLogObjects(v8);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *buf = 0;
      v26 = buf;
      v27 = v36;
      v28 = "Invalid ResourceData for type[VideoAssetResourceTypeVenueDescription] and for command[VideoAssetResourceCommandReady]";
      goto LABEL_74;
    }

    os_unfair_lock_lock(this + 68);
    v11 = *(this + 35);
    os_unfair_lock_unlock(this + 68);
    memset(buf, 0, 20);
    if (v11 < 1)
    {
      v20 = 0;
LABEL_89:
      (off_1F5CC58C8[v20])(v67, &buf[8]);
      goto LABEL_90;
    }

    v12 = 0;
    v61 = 0;
    v13 = v11 & 0x7FFFFFFF;
    cf2 = v70;
    while (1)
    {
      v14 = re::VideoAssetResourceContext::getResourceDataAtIndex(this + 272, v12, buf);
      if (v14)
      {
        if (*&buf[4] == 1 && *buf == 2)
        {
          break;
        }
      }

LABEL_39:
      if (v13 == ++v12)
      {
        goto LABEL_40;
      }
    }

    if (*&buf[16])
    {
      v16 = 0;
      v67[0] = 0;
      v17 = cf1;
LABEL_34:
      v18 = 1;
      goto LABEL_35;
    }

    v67[0] = 1;
    cf1 = 0;
    re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&cf1, *&buf[8]);
    v17 = cf1;
    if ((v67[0] & 1) == 0)
    {
      v16 = 0;
      goto LABEL_34;
    }

    v14 = CFEqual(cf1, cf2);
    v16 = 1;
    if (!v14)
    {
      goto LABEL_34;
    }

    v18 = 0;
    v61 = 1;
LABEL_35:
    if (v16 && v17)
    {
      CFRelease(v17);
    }

    if (v18)
    {
      goto LABEL_39;
    }

LABEL_40:
    if ((v61 & 1) == 0)
    {
      v20 = *&buf[16];
      v5 = this + 576;
      if (*&buf[16] == -1)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    v19 = *re::videoLogObjects(v14);
    v5 = this + 576;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 0;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "There is a Remove command in the queue, abort processing Ready command", v67, 2u);
    }

    v20 = *&buf[16];
    if (*&buf[16] != -1)
    {
      goto LABEL_89;
    }

LABEL_90:
    v33 = v70;
    if (v70)
    {
LABEL_91:
      CFRelease(v33);
    }

LABEL_92:
    ++v3;
  }

  while (v3 != v4);
  v51 = this + 296;
  v52 = v4 + 1;
  v53 = this + 24 * v4 + 280;
  do
  {
    v54 = v52 - 2;
    if (re::VideoAssetResourceContext::getResourceDataAtIndex(this + 272, v52 - 2, &v63))
    {
      os_unfair_lock_lock(this + 68);
      v55 = *(this + 35);
      if (v55 > v54)
      {
        if (v55 - 1 > v54)
        {
          v56 = &v51[24 * v55];
          *(v53 - 1) = *(v56 - 3);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(v53, (v56 - 16));
          v55 = *(this + 35);
        }

        v57 = &v51[24 * v55];
        v58 = *(v57 - 2);
        if (v58 != -1)
        {
          (off_1F5CC58C8[v58])(buf, v57 - 16);
          v55 = *(this + 35);
        }

        *(v57 - 2) = -1;
        *(this + 35) = v55 - 1;
        ++*(this + 72);
      }

      os_unfair_lock_unlock(this + 68);
    }

    --v52;
    v53 -= 24;
  }

  while (v52 > 1);
  v59 = v65;
  if (v65 != -1)
  {
    goto LABEL_113;
  }
}

void sub_1E20692D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, unsigned int a27, uint64_t a28, char a29)
{
  if (v30)
  {
    CFRelease(v30);
  }

  if (a27 != -1)
  {
    (*(v29 + 8 * a27))(v31 - 128, &a26);
  }

  _Unwind_Resume(exception_object);
}

void re::VideoAsset::setReceiverEndpoint(re::VideoAsset *a1, void *a2)
{
  v5 = a2;
  v4 = *(a1 + 25);
  if (v4)
  {
    objc_storeStrong((v4 + 40), a2);
    if ((*(*(a1 + 25) + 48) & 1) == 0)
    {
      re::VideoAsset::updateVideoTarget(a1);
    }
  }
}

void anonymous namespace::onPrepareDataChannels(int a1, const __CFArray *a2, int a3, re *this, const __CFDictionary *a5, const __CFArray *a6, uint64_t a7)
{
  v64 = *MEMORY[0x1E69E9840];
  re::logVideoInfo(this, a2);
  if (!a7 || !*(a7 + 208))
  {
    return;
  }

  if (!CFArrayGetCount(this))
  {
    atomic_store(1u, (a7 + 120));
    return;
  }

  atomic_store(0, (a7 + 120));
  if (this)
  {
    if (a5)
    {
      Count = CFArrayGetCount(this);
      if (Count)
      {
        v12 = Count;
        v13 = 0;
        v14 = MEMORY[0x1E6963150];
        v15 = MEMORY[0x1E6963130];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(this, v13);
          if (ValueAtIndex)
          {
            if (MEMORY[0x1E6904250](ValueAtIndex, *v14, v14[1]))
            {
              *buf = *v15;
              FigTagCollectionGetTagsWithCategory();
              if (*&buf[4])
              {
                break;
              }
            }
          }

          if (v12 == ++v13)
          {
            goto LABEL_12;
          }
        }

        valuePtr = FigTagGetSInt64Value();
        v41 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
        if (v41)
        {
          Value = CFDictionaryGetValue(a5, v41);
          if (Value)
          {
            v43 = CFDictionaryGetValue(Value, *MEMORY[0x1E6973DB0]);
            v44 = v43;
            if (v43)
            {
              if (CFArrayGetCount(v43) == 9)
              {
                v57 = 0;
                v45 = 0;
                v46 = 0;
                v47 = 0;
                v48 = 1;
                v49 = 1065353216;
                v50 = 1065353216;
                do
                {
                  v55 = v48;
                  v56 = v46;
                  *buf = 0;
                  v51 = buf;
                  v52 = 2;
                  do
                  {
                    v53 = CFArrayGetValueAtIndex(v44, v47);
                    LODWORD(valuePtr) = 0;
                    CFNumberGetValue(v53, kCFNumberFloatType, &valuePtr);
                    ++v47;
                    *v51 = valuePtr;
                    v51 = &buf[4];
                    --v52;
                  }

                  while (v52);
                  v48 = 0;
                  v54 = v57;
                  if (v56)
                  {
                    v54 = *buf;
                  }

                  v57 = v54;
                  if (v56)
                  {
                    v50 = *&buf[4];
                  }

                  else
                  {
                    v49 = *buf;
                  }

                  if ((v56 & 1) == 0)
                  {
                    v45 = *&buf[4];
                  }

                  ++v47;
                  v46 = 1;
                }

                while ((v55 & 1) != 0);
                os_unfair_lock_lock((a7 + 272));
                *(a7 + 544) = v49;
                *(a7 + 548) = v57;
                *(a7 + 552) = v45;
                *(a7 + 556) = v50;
                atomic_store(1u, (a7 + 536));
                os_unfair_lock_unlock((a7 + 272));
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  if (!a6 || (v17 = CFArrayGetCount(a6), v17 < 1))
  {
    v33 = 0;
LABEL_39:
    v34 = CFArrayGetCount(this);
    v35 = *re::assetTypesLogObjects(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = "Invalid";
      if (v34)
      {
        v36 = "2D";
      }

      *buf = 136446210;
      *&buf[4] = v36;
      _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Content type detected is %{public}s", buf, 0xCu);
    }

    v38 = *re::assetTypesLogObjects(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "Stereo type detected is %{public}d", buf, 8u);
    }

    if (v34)
    {
      v39 = v33 + 1;
    }

    else
    {
      v39 = v33;
    }

    LODWORD(valuePtr) = v39;
    v62 = 1;
    re::VideoAssetResourceData::create(buf, &valuePtr, 3, 7);
    if (v62 != -1)
    {
      (off_1F5CC58C8[v62])(&cf, &valuePtr);
    }

    re::VideoAssetResourceContext::pushResourceData(a7 + 272, buf);
    if (*&buf[16] != -1)
    {
      (off_1F5CC58C8[*&buf[16]])(&valuePtr, &buf[8]);
    }

    return;
  }

  v18 = 0;
  v19 = 0;
  v20 = MEMORY[0x1E6963198];
  while (1)
  {
    v21 = CFArrayGetValueAtIndex(a6, v19);
    CFRetain(v21);
    if (!v21)
    {
      goto LABEL_34;
    }

    cf = 0;
    VTable = CMBaseObjectGetVTable();
    v24 = *(VTable + 16);
    v23 = (VTable + 16);
    v25 = *(v24 + 24);
    if (!v25)
    {
      break;
    }

    v23 = v25(v21, &cf);
    v26 = v23;
    if (v23)
    {
      goto LABEL_54;
    }

    v27 = MEMORY[0x1E6904250](cf, *v20, v20[1]);
    if (v27)
    {
      v28 = *re::assetTypesLogObjects(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Received onPrepareDataChannels with resource(%p)", buf, 0xCu);
      }

      if (*(a7 + 32) != v21)
      {
        re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef((a7 + 32), v21);
        v30 = *re::assetTypesLogObjects(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a7 + 32);
          *buf = 134217984;
          *&buf[4] = v31;
          _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Current player item fig resource(%p) is set", buf, 0xCu);
        }

        v58 = 0;
        re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v58, v21);
        valuePtr = 0;
        v32 = v58;
        re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&valuePtr, v58);
        v62 = 0;
        re::VideoAssetResourceData::create(buf, &valuePtr, 1, 6);
        if (v62 != -1)
        {
          (off_1F5CC58C8[v62])(&v60, &valuePtr);
        }

        re::VideoAssetResourceContext::pushResourceData(a7 + 272, buf);
        if (*&buf[16] != -1)
        {
          (off_1F5CC58C8[*&buf[16]])(&valuePtr, &buf[8]);
        }

        if (v32)
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v32);
        }

        v18 = 1;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v21);
LABEL_34:
    if (v17 == ++v19)
    {
      if (v18)
      {
        v33 = 0x1000000;
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_39;
    }
  }

  v26 = -12782;
LABEL_54:
  v40 = *re::assetTypesLogObjects(v23);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    *&buf[4] = v21;
    *&buf[12] = 1024;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "Error occured while getting a description fig tags of a resource(%p) - %d", buf, 0x12u);
  }

  re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v21);
}

void sub_1E2069A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, int a23, int a24, char a25, uint64_t a26, int a27)
{
  if (a27 != -1)
  {
    (off_1F5CC58C8[a27])(&a21, &a26);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::resourceLifeCycleCallback(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3 && *(a3 + 208))
  {
    cf = 0;
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 16);
    v8 = (VTable + 16);
    v10 = *(v9 + 24);
    if (v10)
    {
      v8 = v10(a2, &cf);
      v11 = v8;
      if (!v8)
      {
        v12 = MEMORY[0x1E6904250](cf, *MEMORY[0x1E6963198], *(MEMORY[0x1E6963198] + 8));
        v13 = v12 != 0;
        if (a4 == 1)
        {
          v19 = *re::assetTypesLogObjects(v12);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v27 = a2;
            _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Received kFigVideoReceiverResourceLifeCycleEvent_Removed for resource(%p)", buf, 0xCu);
          }

          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterRemoveListener();
          CFRetain(a2);
          *v24 = 0;
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(v24, a2);
          *&v24[8] = 0;
          re::VideoAssetResourceData::create(buf, v24, v13, 2);
          if (*&v24[8] != -1)
          {
            (off_1F5CC58C8[*&v24[8]])(&v20, v24);
          }

          re::VideoAssetResourceContext::pushResourceData(a3 + 272, buf);
        }

        else
        {
          if (a4)
          {
LABEL_34:
            if (cf)
            {
              CFRelease(cf);
            }

            return;
          }

          v14 = *re::assetTypesLogObjects(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v27 = a2;
            _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Received kFigVideoReceiverResourceLifeCycleEvent_Added for resource(%p)", buf, 0xCu);
          }

          CFRetain(a2);
          *v24 = 0;
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(v24, a2);
          *&v24[8] = 0;
          re::VideoAssetResourceData::create(buf, v24, v13, 1);
          if (*&v24[8] != -1)
          {
            (off_1F5CC58C8[*&v24[8]])(&v20, v24);
          }

          re::VideoAssetResourceContext::pushResourceData(a3 + 272, buf);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v15)
          {
            v16 = v15(a2);
            if (v16 == 1)
            {
              v17 = *re::assetTypesLogObjects(v16);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 134217984;
                *&v24[4] = a2;
                _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Looks like the newly added resource(%p) state is already kFigDataChannelResourceState_Ready", v24, 0xCu);
              }

              CFRetain(a2);
              v20 = 0;
              re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v20, a2);
              v21 = 0;
              re::VideoAssetResourceData::create(v24, &v20, v13, 3);
              if (v21 != -1)
              {
                (off_1F5CC58C8[v21])(&v23, &v20);
              }

              re::VideoAssetResourceContext::pushResourceData(a3 + 272, v24);
              if (v25 != -1)
              {
                (off_1F5CC58C8[v25])(&v20, &v24[8]);
              }

              if (a2)
              {
                re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(a2);
              }
            }
          }
        }

        if (v28 != -1)
        {
          (off_1F5CC58C8[v28])(v24, &v27 + 4);
        }

        if (a2)
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(a2);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v11 = -12782;
    }

    v18 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v27) = v11;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Error occured while getting a description fig tags of a resource - %d", buf, 8u);
    }
  }
}

void sub_1E206A014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, int a18, int a19, int a20, uint64_t a21, char a22, uint64_t a23, int a24)
{
  if (a20 != -1)
  {
    (off_1F5CC58C8[a20])(&a9, &a18);
  }

  if (v24)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v24);
  }

  if (a24 != -1)
  {
    (off_1F5CC58C8[a24])(&a16, &a23);
  }

  if (v24)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v24);
  }

  _Unwind_Resume(exception_object);
}

id re::VideoAsset::getReceiverEndpoint(re::VideoAsset *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unsigned __int8 **re::VideoAsset::createOrGetVideoPlayerComponentHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 216);
  if (!result)
  {
    v9 = *re::videoLogObjects(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      *v13 = 0;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "VideoAsset createOrGetVideoPlayerComponentHelper", v13, 2u);
    }

    v11 = re::globalAllocators(v10);
    v12 = (*(*v11[2] + 32))(v11[2], 8, 8);
    result = re::ecs2::VideoPlayerComponentHelper::VideoPlayerComponentHelper(v12, a2, a3, a4);
    *(a1 + 216) = result;
    if (*(a1 + 944))
    {
      re::ecs2::VideoPlayerComponentHelper::impl::setVideoAssetContentInfo(*result, (a1 + 944));
      return *(a1 + 216);
    }
  }

  return result;
}

double re::VideoAsset::cleanupTextureCache(re::VideoAsset *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    if (*(v2 + 136))
    {
      re::VideoPixelBufferPool::flush((v2 + 128), 1uLL);
      v2 = *(this + 23);
    }

    re::ObjCObject::operator=((v2 + 264), 0);
    re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::clear(v2 + 216);
    v3 = *(this + 23);
    v4 = *(v3 + 280);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 280) = 0;
      v3 = *(this + 23);
    }

    re::VideoPresentationQueue::clear((v3 + 432));
    v5 = *(this + 23);
    v6 = v5[923];
    if (v6)
    {
      CFRelease(v6);
      v5[923] = 0;
      v5 = *(this + 23);
    }

    v7 = v5[927];
    if (v7)
    {
      CFRelease(v7);
      v5[927] = 0;
      v5 = *(this + 23);
    }

    if (v5[935])
    {
      re::VideoPixelBufferPool::flush((v5 + 934), 1uLL);
      v5 = *(this + 23);
    }

    v8 = v5[1216];
    if (v8)
    {
      CFRelease(v8);
      v5[1216] = 0;
      v5 = *(this + 23);
    }

    re::VideoPipeline::deinit((v5 + 1219));
  }

  if (*(this + 26))
  {
    re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(this);
    re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(this);
    result = 0.0;
    *(*(this + 26) + 4368) = 0u;
  }

  return result;
}

uint64_t re::VideoAssetLoader::registerAsset(re::VideoManager **this, unsigned __int8 *a2, const re::ExistingAssetInformation *a3)
{
  v6 = *re::videoLogObjects(this);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "VideoAsset->registerAsset :: Registering Asset", v11, 2u);
  }

  v7 = re::AssetLoader::registerAsset(this, a2, a3);
  if (!v7)
  {
    v8 = this[2];
    if (v8)
    {
      if (*(a3 + 10) == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a3 + 10);
      }

      re::VideoManager::addActiveVideoAsset(v8, v9);
    }

    re::VideoAsset::updateAutoPlay(a2, a2[192], 1);
  }

  return v7;
}

void *re::VideoAssetLoader::unregisterAsset(re::VideoAssetLoader *this, re::VideoAsset *a2, const re::ExistingAssetInformation *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *re::videoLogObjects(this);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 134217984;
    *&v17[4] = a2;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "VideoAsset :: UnRegistering Asset %p", v17, 0xCu);
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(a3 + 10);
    if (v8 == -1)
    {
      v8 = 0;
    }

    *v17 = v8;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v7 + 176, v17);
  }

  v9 = *(a2 + 25);
  if (v9)
  {
    v10 = *(v9 + 32);
    if (v10)
    {
      if (!*v9 || ([*v9 removeEndpoint:?], (v10 = *(v9 + 32)) != 0))
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v10);
      }

      *(v9 + 32) = 0;
    }

    re::VideoAsset::updateAutoPlay(a2, *(a2 + 192), 0);
  }

  v11 = *(a2 + 26);
  if (v11)
  {
    re::VideoChannelTextureHandles::invalidate((v11 + 4384));
    re::VideoChannelTextureHandles::invalidate((v11 + 4544));
    *(v11 + 4704) = -1;
    *(v11 + 4708) = 0;
    re::VideoChannelTextureHandles::invalidate((v11 + 4712));
    re::VideoChannelTextureHandles::invalidate((v11 + 4872));
    *(v11 + 5032) = -1;
    *(v11 + 5036) = 0;
    *(v11 + 4368) = 0u;
    v12 = (v11 + 32);
    v13 = 144;
    do
    {
      *(v12 - 1) = 0;
      ++*v12;
      v12 += 18;
      v13 -= 72;
    }

    while (v13);
  }

  v14 = *(a2 + 23);
  if (v14)
  {
    re::VideoColorManager::clear((v14 + 588));
    re::VideoPixelBufferTextures::invalidate((v14 + 36));
    v15 = v14[35];
    if (v15)
    {
      CFRelease(v15);
      v14[35] = 0;
    }

    re::VideoPresentationQueue::clear((v14 + 54));
  }

  re::VideoAsset::cleanupTextureCache(a2);
  return re::VideoAsset::cleanupVideoPlayerHelper(a2);
}

re *re::VideoAssetLoader::unloadAsset(re *this, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *re::videoLogObjects(this);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v24 = 134217984;
      v25 = a2;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "VideoAsset :: unloadAsset %p", &v24, 0xCu);
    }

    v5 = a2[25];
    if (v5)
    {
      v6 = *v5;
      *v5 = 0;

      v8 = re::globalAllocators(v7)[2];
      v9 = *(v5 + 32);
      if (v9)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v9);
      }

      *(v5 + 32) = 0;

      v4 = (*(*v8 + 40))(v8, v5);
      a2[25] = 0;
    }

    v10 = a2[26];
    if (v10)
    {
      v11 = *(v10 + 16);
      *(v10 + 16) = 0;

      if (*v10)
      {
        re::destroyVideoReceiver(v10);
      }

      v13 = 0;
      v14 = re::globalAllocators(v12)[2];
      v15 = v10 + 4952;
      do
      {
        v16 = v15 + v13;
        if (*(v10 + v13 + 5016))
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((v16 + 64));
        }

        *(v10 + v13 + 5016) = 0;
        re::TextureHandle::invalidate((v16 + 16));
        re::TextureHandle::invalidate((v15 + v13));
        re::TextureHandle::invalidate((v16 - 16));
        re::TextureHandle::invalidate((v16 - 32));
        re::TextureHandle::invalidate((v16 - 48));
        re::TextureHandle::invalidate((v16 - 64));
        re::TextureHandle::invalidate((v16 - 80));
        v13 -= 160;
      }

      while (v13 != -320);
      v17 = 0;
      v18 = v10 + 4624;
      do
      {
        v19 = v18 + v17;
        if (*(v10 + v17 + 4688))
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((v19 + 64));
        }

        *(v10 + v17 + 4688) = 0;
        re::TextureHandle::invalidate((v19 + 16));
        re::TextureHandle::invalidate((v18 + v17));
        re::TextureHandle::invalidate((v19 - 16));
        re::TextureHandle::invalidate((v19 - 32));
        re::TextureHandle::invalidate((v19 - 48));
        re::TextureHandle::invalidate((v19 - 64));
        re::TextureHandle::invalidate((v19 - 80));
        v17 -= 160;
      }

      while (v17 != -320);
      for (i = 2272; i != -1920; i -= 2096)
      {
        re::VideoPresentationGroup::~VideoPresentationGroup((v10 + i));
      }

      for (j = 0; j != -144; j -= 72)
      {
        v22 = v10 + j;
        *(v22 + 96) = 0;
        *(v22 + 104) = *(v10 + j + 104) + 1;
      }

      if (*v10)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v10);
      }

      *v10 = 0;
      v4 = (*(*v14 + 40))(v14, v10);
      a2[26] = 0;
    }

    v23 = re::globalAllocators(v4)[2];
    (**a2)(a2);
    return (*(*v23 + 40))(v23, a2);
  }

  return this;
}

void re::VideoAssetLoader::makeSharedResourcePayload(re *a1@<X0>, uint64_t a2@<X1>, REVideoPayload **a3@<X8>)
{
  if (*(a2 + 200))
  {
    re::VideoPayload::makeWithProperties(*(a2 + 24), *(a2 + 240), *(a2 + 256), *(a2 + 948), *(a2 + 264), &v7, *(a2 + 28), *(a2 + 232), *(a2 + 248));
    v4 = v7;
    v7 = 0;
    *a3 = v4;
  }

  else
  {
    v5 = *re::assetTypesLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "VideoAssetLoader::makeSharedResourcePayload was unexpectedly called on an asset without playback data", v6, 2u);
    }

    *a3 = 0;
  }
}

uint64_t re::VideoAssetLoader::postInitializeAssetFromPayload(uint64_t a1, id *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  re::VideoPayload::dynamicCast(a2, &v31);
  if (!a3)
  {
    v27 = *re::videoLogObjects(v5);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v26 = 0;
      goto LABEL_11;
    }

    *buf = 0;
    v28 = "Invalid video asset to initialize with payload";
LABEL_16:
    _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_10;
  }

  v6 = v31;
  v7 = [v6 diffuseSpillMapWidth];
  v8 = v31;
  *(a3 + 232) = __PAIR64__([v8 diffuseSpillMapHeight], v7);

  v9 = v31;
  v10 = [v9 specularSpillMapWidth];
  v11 = v31;
  *(a3 + 248) = __PAIR64__([v11 specularSpillMapHeight], v10);

  v12 = v31;
  re::VideoAsset::setDiffuseSpillMapBlurSigma(a3, [v12 diffuseSpillBlurSigma]);

  v13 = v31;
  re::VideoAsset::setSpecularSpillMapBlurSigma(a3, [v13 specularSpillBlurSigma]);

  v14 = v31;
  *(a3 + 948) = [v14 desiredViewingMode];

  v15 = v31;
  *(a3 + 264) = [v15 preventPlaybackUntilReady];

  v16 = (*(*a1 + 24))(a1, a3, 0, 0);
  if ((v16 & 1) == 0)
  {
    v27 = *re::assetTypesLogObjects(v16);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v28 = "VideoAsset::createRuntimeData failed unexpectedly";
    goto LABEL_16;
  }

  v17 = v31;
  *(a3 + 24) = [v17 audioInputMode];

  v18 = v31;
  [v18 reverbSendLevel];
  *(a3 + 28) = v19;

  v21 = *re::assetTypesLogObjects(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v22)
  {
    v23 = *(a3 + 24);
    v24 = *(a3 + 28);
    *buf = 67109376;
    v33 = v23;
    v34 = 2048;
    v35 = v24;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_INFO, "recovered audio inputMode=%d, reverbSendLevel=%0.2f from video payload", buf, 0x12u);
  }

  v25 = *(a3 + 208);
  if (v25)
  {
    v26 = 1;
    *(v25 + 5064) = 1;
  }

  else
  {
    v30 = *re::assetTypesLogObjects(v22);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "VideoAsset without rendering data unexpectedly received an updated VideoPlayload", buf, 2u);
    }

    v26 = 1;
  }

LABEL_11:

  return v26;
}

void re::VideoAssetLoader::resourceDidUpdate(int a1, uint64_t a2, id *this)
{
  v26 = *MEMORY[0x1E69E9840];
  re::VideoPayload::dynamicCast(this, &v21);
  v4 = v21;
  *(a2 + 24) = [v4 audioInputMode];

  v5 = v21;
  [v5 reverbSendLevel];
  *(a2 + 28) = v6;

  v8 = *re::assetTypesLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a2 + 24);
    v10 = *(a2 + 28);
    *buf = 67109376;
    v23 = v9;
    v24 = 2048;
    v25 = v10;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "recovered audio inputMode=%d, reverbSendLevel=%0.2f from video payload update", buf, 0x12u);
  }

  v11 = v21;
  v12 = [v11 diffuseSpillMapWidth];
  v13 = v21;
  *(a2 + 232) = __PAIR64__([v13 diffuseSpillMapHeight], v12);

  v14 = v21;
  v15 = [v14 specularSpillMapWidth];
  v16 = v21;
  *(a2 + 248) = __PAIR64__([v16 specularSpillMapHeight], v15);

  v17 = v21;
  re::VideoAsset::setDiffuseSpillMapBlurSigma(a2, [v17 diffuseSpillBlurSigma]);

  v18 = v21;
  re::VideoAsset::setSpecularSpillMapBlurSigma(a2, [v18 specularSpillBlurSigma]);

  v19 = v21;
  *(a2 + 948) = [v19 desiredViewingMode];

  v20 = v21;
  *(a2 + 264) = [v20 preventPlaybackUntilReady];
}

void re::VideoAssetLoader::setPayloadOptions(uint64_t a1, re::VideoAsset *a2, id *a3)
{
  re::VideoRequestOptions::dynamicCast(a3, &v6);
  v5 = [*a3 receiverEndpoint];
  re::VideoAsset::setReceiverEndpoint(a2, v5);
}

void re::introspect_VideoAssetPlaybackMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197758, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE197760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197760))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1977C0, "VideoAssetPlaybackMode", 1, 1, 1, 1);
      qword_1EE1977C0 = &unk_1F5D0C658;
      qword_1EE197800 = &re::introspect_VideoAssetPlaybackMode(BOOL)::enumTable;
      dword_1EE1977D0 = 9;
      __cxa_guard_release(&qword_1EE197760);
    }

    if (_MergedGlobals_80)
    {
      break;
    }

    _MergedGlobals_80 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1977C0, a2);
    v35 = 0xB0BB7F15DC0CA4A6;
    v36 = "VideoAssetPlaybackMode";
    v40 = 0x31CD534126;
    v41 = "uint8_t";
    v4 = v39[0];
    v5 = v39[1];
    if (v40)
    {
      if (v40)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE197800;
      v40 = v4;
      v41 = v5;
      re::TypeBuilder::beginEnumType(v39, &v35, 1, 1, &v40);
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
            *&v38.var0 = 2 * v11;
            v38.var1 = v10;
            re::TypeBuilder::addEnumConstant(v39, v15, &v38);
            if (*&v38.var0)
            {
              if (*&v38.var0)
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
              *&v38.var0 = 2 * v20;
              v38.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v39, v24, &v38);
              if (*&v38.var0)
              {
                if (*&v38.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v39, v26);
      xmmword_1EE1977E0 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE197758);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Manual";
      qword_1EE197790 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "AutoPlayOnce";
      qword_1EE197798 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "AutoPlayAndLoop";
      qword_1EE1977A0 = v34;
      __cxa_guard_release(&qword_1EE197758);
    }
  }
}

void *re::allocInfo_VideoAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197770))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197808, "VideoAsset");
    __cxa_guard_release(&qword_1EE197770);
  }

  return &unk_1EE197808;
}

void re::initInfo_VideoAsset(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x10D01A2978AEAALL;
  v18[1] = "VideoAsset";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE197768, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197768);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = introspect_REAudioInputMode(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "audioInputMode";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x1800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1977A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "videoFileAssets";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x9000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1977B0 = v13;
      v14 = re::introspectionAllocator(v13);
      re::introspect_VideoAssetPlaybackMode(v14, v15);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "playbackMode";
      *(v16 + 16) = &qword_1EE1977C0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xC000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1977B8 = v16;
      __cxa_guard_release(&qword_1EE197768);
    }
  }

  *(this + 2) = 0x3D000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1977A8;
  *(this + 9) = re::internal::defaultConstruct<re::VideoAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VideoAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::VideoAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::VideoAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void sub_1E206BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = REVideoPlayerItemsLooper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *re::DynamicInlineArray<re::VideoAssetResourceData,10ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 24 * *result;
    v3 = result + 3;
    do
    {
      v4 = *(v3 + 2);
      if (v4 != -1)
      {
        result = (off_1F5CC58C8[v4])(&v5, v3);
      }

      *(v3 + 2) = -1;
      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

const void **re::VideoChannelTextureHandles::VideoChannelTextureHandles(const void **this, CFTypeRef *a2)
{
  v4 = re::TextureHandle::TextureHandle(this, a2);
  re::TextureHandle::TextureHandle((v4 + 16), (a2 + 2));
  re::TextureHandle::TextureHandle((this + 4), (a2 + 4));
  re::TextureHandle::TextureHandle((this + 6), (a2 + 6));
  re::TextureHandle::TextureHandle((this + 8), (a2 + 8));
  re::TextureHandle::TextureHandle((this + 10), (a2 + 10));
  re::TextureHandle::TextureHandle((this + 12), (a2 + 12));
  v5 = *(a2 + 7);
  v6 = *(a2 + 8);
  this[18] = 0;
  *(this + 7) = v5;
  *(this + 8) = v6;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 144, this + 18, a2[18]);
  v7 = *(a2 + 76);
  *(this + 154) = *(a2 + 154);
  *(this + 76) = v7;
  return this;
}

void sub_1E206BF0C(_Unwind_Exception *a1)
{
  re::TextureHandle::invalidate((v1 + 96));
  re::TextureHandle::invalidate((v1 + 80));
  re::TextureHandle::invalidate((v1 + 64));
  re::TextureHandle::invalidate((v1 + 48));
  re::TextureHandle::invalidate((v1 + 32));
  re::TextureHandle::invalidate((v1 + 16));
  re::TextureHandle::invalidate(v1);
  _Unwind_Resume(a1);
}

void re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = a1 + 16;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 8;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

double re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::deinit(uint64_t *a1)
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
          *v8 = v7 & 0x7FFFFFFF;

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

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CC58C8[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (*(&off_1F5CC58D8 + v4))(&v5, result, a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(*a2);
  }

  *a2 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t *a1, const void **a2, CFTypeRef *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    (off_1F5CC58C8[v5])(&v8, v4);
LABEL_7:
    *(v4 + 8) = -1;
    *v4 = 0;
    re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(v4, *a3);
    *(v4 + 8) = 0;
    return;
  }

  v7 = *a3;

  re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(a2, v7);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    result = (off_1F5CC58C8[v5])(&v6, v4);
  }

  v4[2] = -1;
  *v4 = *a3;
  v4[2] = 1;
  return result;
}

void re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(const void **a1, CFTypeRef cf)
{
  v4 = *a1;
  if (v4)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v4);
  }

  *a1 = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CC58C8[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CC58E8[v4])(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result, void *a2, void *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      *a3 = 0;
      return result;
    }

    result = (off_1F5CC58C8[v5])(&v6, v4);
  }

  *v4 = 0;
  *v4 = *a3;
  *a3 = 0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re11VideoObjectINS8_31VideoFigDataChannelResourceBaseEEENS8_21VideoAssetContentInfoEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    result = (off_1F5CC58C8[v5])(&v6, v4);
  }

  v4[2] = -1;
  *v4 = *a3;
  v4[2] = 1;
  return result;
}

uint64_t re::VideoAssetResourceData::create(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  result = std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> const&>(a1 + 8, a2);
  *a1 = a4;
  *(a1 + 4) = a3;
  return result;
}

void sub_1E206C474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v16 = *(v13 + 16);
  if (v16 != -1)
  {
    (off_1F5CC58C8[v16])(&a13, v14);
  }

  *(v13 + 16) = -1;
  _Unwind_Resume(exception_object);
}

void re::VideoAssetResourceContext::pushResourceData(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  if (v4 <= 9)
  {
    v5 = a1 + 24 * v4;
    *(v5 + 24) = *a2;
    v6 = v5 + 24;
    *(v6 + 8) = 0;
    *(v6 + 16) = -1;
    v7 = *(a2 + 16);
    if (v7 != -1)
    {
      v8 = v6 + 8;
      (off_1F5CC58F8[v7])(&v8, a2 + 8);
      *(v6 + 16) = v7;
    }

    ++*(a1 + 8);
    ++*(a1 + 16);
  }

  os_unfair_lock_unlock(a1);
}

void sub_1E206C570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  v16 = *(v14 + 16);
  if (v16 != -1)
  {
    (off_1F5CC58C8[v16])(&a12, v13);
  }

  *(v14 + 16) = -1;
  os_unfair_lock_unlock(v12);
  _Unwind_Resume(a1);
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo> &&>(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  return result;
}

void anonymous namespace::dataChannelResourceStateChangedNotificationHandler(int a1, uint64_t a2, int a3, CFTypeRef cf)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    CFRetain(cf);
    if (cf)
    {
      if (!*(a2 + 208))
      {
LABEL_18:
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(cf);
        return;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      cfa = 0;
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      v7 = (VTable + 16);
      v9 = *(v8 + 24);
      if (v9)
      {
        v7 = v9(cf, &cfa);
        v10 = v7;
        if (!v7)
        {
          v11 = MEMORY[0x1E6904250](cfa, *MEMORY[0x1E6963198], *(MEMORY[0x1E6963198] + 8)) != 0;
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v12)
          {
            v13 = v12(cf);
            switch(v13)
            {
              case 3:
                v18 = *re::assetTypesLogObjects(v13);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = cf;
                  _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Received resource(%p) state as kFigDataChannelResourceState_NotNeeded", buf, 0xCu);
                }

                break;
              case 2:
                v17 = *re::assetTypesLogObjects(v13);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  *&buf[4] = cf;
                  _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Received resource(%p) state as kFigDataChannelResourceState_FailedToLoad", buf, 0xCu);
                }

                break;
              case 1:
                v14 = *re::assetTypesLogObjects(v13);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = cf;
                  _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Received resource(%p) state as kFigDataChannelResourceState_Ready", buf, 0xCu);
                }

                v15 = 1;
                goto LABEL_25;
            }
          }

          v15 = 0;
LABEL_25:
          if (cfa)
          {
            CFRelease(cfa);
          }

          if (v15)
          {
            v25 = 0;
            re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v25, cf);
            v23 = 0;
            v19 = v25;
            re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef(&v23, v25);
            v24 = 0;
            re::VideoAssetResourceData::create(buf, &v23, v11, 3);
            v20 = *buf;
            std::__variant_detail::__assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::VideoObject<re::VideoFigDataChannelResourceBase>,re::VideoAssetContentInfo>,(std::__variant_detail::_Trait)1>>(&v21, &buf[8]);
            if (v29 != -1)
            {
              (off_1F5CC58C8[v29])(&v27, &buf[8]);
            }

            v29 = -1;
            if (v24 != -1)
            {
              (off_1F5CC58C8[v24])(&v27, &v23);
            }

            if (v19)
            {
              re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v19);
            }

            re::VideoAssetResourceContext::pushResourceData(a2 + 272, &v20);
          }

LABEL_16:
          if (v22 != -1)
          {
            (off_1F5CC58C8[v22])(buf, &v21);
          }

          goto LABEL_18;
        }
      }

      else
      {
        v10 = -12782;
      }

      v16 = *re::assetTypesLogObjects(v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Error occured while getting a description fig tags of a resource - %d", buf, 8u);
      }

      goto LABEL_16;
    }
  }
}

void sub_1E206C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, char a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24)
{
  if (a24 != -1)
  {
    (off_1F5CC58C8[a24])(&a21, v26 + 8);
  }

  a24 = -1;
  if (a15 != -1)
  {
    (off_1F5CC58C8[a15])(&a21, &a13);
  }

  if (v25)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v25);
  }

  if (a11 != -1)
  {
    (off_1F5CC58C8[a11])(&a22, &a10);
  }

  re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v24);
  _Unwind_Resume(a1);
}

void re::DynamicInlineArray<re::VideoObject<re::VideoFigDataChannelResourceBase>,5ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 8 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(*v3);
      }

      *v3++ = 0;
      v2 -= 8;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

uint64_t *re::ShaderGraphAsset::assetType(re::ShaderGraphAsset *this)
{
  {
    re::ShaderGraphAsset::assetType(void)::type = "ShaderGraph";
    qword_1EE1C6F40 = 0;
    re::AssetType::generateCompiledExtension(&re::ShaderGraphAsset::assetType(void)::type);
  }

  return &re::ShaderGraphAsset::assetType(void)::type;
}

uint64_t re::ShaderGraphAsset::ShaderGraphAsset(uint64_t a1, id *a2, uint64_t a3)
{
  *a1 = &unk_1F5CC5918;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  re::DynamicString::setCapacity(v6, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  re::ObjCObject::operator=((a1 + 40), a2);
  re::DynamicString::format("shadergraph_%s", &v8, a3);
  re::DynamicString::operator=(v6, &v8);
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return a1;
}

re::sg::CachedCompilationMaterial *re::ShaderGraphAsset::getCustomUniformsArgument@<X0>(re::ShaderGraphAsset *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 6);
  if (result)
  {
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(result);
    re::StringID::StringID(a2, CustomUniformsArgument);
    *(a2 + 16) = *(CustomUniformsArgument + 8);
    v5 = *(CustomUniformsArgument + 3);
    *(a2 + 32) = *(CustomUniformsArgument + 8);
    *(a2 + 24) = v5;
    re::StringID::StringID((a2 + 40), (CustomUniformsArgument + 40));
    v6 = *(CustomUniformsArgument + 14);
    *(a2 + 60) = *(CustomUniformsArgument + 30);
    *(a2 + 56) = v6;
    result = re::FixedArray<re::MetalTypeInfo>::FixedArray((a2 + 64), CustomUniformsArgument + 64);
    v7 = *(CustomUniformsArgument + 11);
    *(a2 + 94) = *(CustomUniformsArgument + 94);
    *(a2 + 88) = v7;
    v8 = *(CustomUniformsArgument + 104);
  }

  else
  {
    v8 = 0;
    *(a2 + 24) = 0u;
    *(a2 + 32) = 1;
    *a2 = 0;
    *(a2 + 8) = &str_67;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 48) = &str_67;
    *(a2 + 60) = 0;
    *(a2 + 100) = 256;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 85) = 0;
  }

  *(a2 + 104) = v8;
  return result;
}

uint64_t re::ShaderGraphAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);

  if (v5)
  {
    v7 = *(a3 + 40);
    v8 = v7;

    if (v7)
    {
      BytePtr = CFDataGetBytePtr(v7);
      v10 = *(a3 + 40);
      (*(*a2 + 16))(a2, BytePtr, [v10 length]);
    }
  }

  else
  {
    v11 = *re::assetTypesLogObjects(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serializing ShaderGraphAsset but no data to serialize (Data.isValid() returned false)", v13, 2u);
    }
  }

  return 1;
}

uint64_t re::ShaderGraphAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 0;
  v7 = 0;
  v8 = 0;
  v6 = a3;
  v9 = 0;
  if (re::SeekableInputStreamBufferedReader::readNext(&v6, 0xFFFFFFFFFFFFFFFFLL))
  {
    re::Data::makeDataWithBytes(v7, v8, &v5);
    re::ObjCObject::operator=((a2 + 40), &v5);
  }

  re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(&v6);
  return 1;
}

void sub_1E206CE90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(va);
  _Unwind_Resume(a1);
}

re *re::ShaderGraphAssetLoader::unloadAsset(re *this, void (***a2)(void))
{
  if (a2)
  {
    v3 = re::globalAllocators(this)[2];
    (**a2)(a2);
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return this;
}

void re::ShaderGraphAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

uint64_t re::ShaderGraphAssetLoader::introspectionType(re::ShaderGraphAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1978C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1978C0))
  {
    qword_1EE1978B8 = re::internal::getOrCreateInfo("ShaderGraphAsset", re::allocInfo_ShaderGraphAsset, re::initInfo_ShaderGraphAsset, &unk_1EE1978B0, 0);
    __cxa_guard_release(&qword_1EE1978C0);
  }

  return qword_1EE1978B8;
}

uint64_t re::ShaderGraphAssetLoader::allocateSampleAsset(re::ShaderGraphAssetLoader *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 56, 8);
  v4 = 0;
  re::ShaderGraphAsset::ShaderGraphAsset(v2, &v4, "SampleAsset");

  return v2;
}

void *re::allocInfo_ShaderGraphAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_81, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_81))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1978C8, "ShaderGraphAsset");
    __cxa_guard_release(&_MergedGlobals_81);
  }

  return &unk_1EE1978C8;
}

void re::initInfo_ShaderGraphAsset(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xBA2EB1656F73304ELL;
  v11[1] = "ShaderGraphAsset";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1978A8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1978A8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "graphIdentifier";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1978A0 = v9;
      __cxa_guard_release(&qword_1EE1978A8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1978A0;
  *(this + 9) = re::internal::defaultConstruct<re::ShaderGraphAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ShaderGraphAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::ShaderGraphAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::ShaderGraphAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::internal::defaultConstruct<re::ShaderGraphAsset>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC5918;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  result = re::DynamicString::setCapacity(v4, 0);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ShaderGraphAsset>(uint64_t a1)
{
  *a1 = &unk_1F5CC5918;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  result = re::DynamicString::setCapacity(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

void re::ShaderGraphAsset::~ShaderGraphAsset(re::ShaderGraphAsset *this)
{
  re::ShaderGraphAsset::~ShaderGraphAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC5918;
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  re::DynamicString::deinit((this + 8));
}

void *re::FixedArray<re::MetalTypeInfo>::FixedArray(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::MetalTypeInfo>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::MetalTypeInfo>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::FixedArray<re::MetalTypeInfo>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x333333333333334)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 80, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 80 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 8) = 1;
      *(result + 24) = &str_67;
      *(result + 36) = 0;
      *(result + 76) = 256;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = 0;
      *(result + 61) = 0;
      result += 80;
      --v6;
    }

    while (v6);
  }

  *result = 0u;
  *(result + 16) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 32) = 0u;
  *(result + 8) = 1;
  *(result + 24) = &str_67;
  *(result + 36) = 0;
  *(result + 76) = 256;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 61) = 0;
  return result;
}

uint64_t re::FixedArray<re::MetalTypeInfo>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::MetalTypeInfo *,re::MetalTypeInfo *,re::MetalTypeInfo *>(&v4, *(a2 + 16), *(a2 + 16) + 80 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MetalTypeInfo *,re::MetalTypeInfo *,re::MetalTypeInfo *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 16;
  do
  {
    v7 = *(v6 - 16);
    *(a4 + 8) = *(v6 - 8);
    *a4 = v7;
    re::StringID::operator=((a4 + 16), v6);
    v8 = *(v6 + 16);
    *(a4 + 36) = *(v6 + 20);
    *(a4 + 32) = v8;
    re::FixedArray<re::MetalTypeInfo>::operator=(a4 + 40, v6 + 24);
    v9 = *(v6 + 54);
    *(a4 + 64) = *(v6 + 48);
    *(a4 + 70) = v9;
    a4 += 80;
    v10 = v6 + 64;
    v6 += 80;
  }

  while (v10 != v5);
  return v5;
}

void *re::FixedArray<re::MetalTypeInfo>::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::MetalTypeInfo>::init<>(a1, v4, *(a2 + 8));
LABEL_7:
      re::FixedArray<re::MetalTypeInfo>::copy(a1, a2);
    }
  }

  return a1;
}

void re::SeekableInputStreamBufferedReader::~SeekableInputStreamBufferedReader(re::SeekableInputStreamBufferedReader *this)
{
  if (*(this + 6))
  {
    (*(**this + 24))();
    *(this + 6) = 0;
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  re::DynamicArray<unsigned long>::deinit(this + 32);
}

void re::VideoPayload::makeWithProperties(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, REVideoPayload **a6@<X8>, float a7@<S0>, double a8@<D1>, double a9@<D2>)
{
  v18 = [REVideoPayload alloc];
  *&v19 = a7;
  v20 = [(REVideoPayload *)v18 initWithAudioInputMode:a1 reverbSendLevel:a2 diffuseSpillMapDimensions:a3 specularSpillMapDimensions:a4 diffuseSpillBlurSigma:a5 specularSpillBlurSigma:v19 desiredViewingMode:a8 preventPlaybackUntilReady:a9];
  *a6 = v20;
}

void re::VideoPayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v7 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v7;
  if (isKindOfClass)
  {
    v6 = v7;
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void re::VideoRequestOptions::makeWithReceiver(uint64_t a1@<X0>, REVideoRequestOptions **a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = re::VideoReceiverCreateEndpointID(a1, &v8);
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = *re::assetTypesLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_fault_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_FAULT, "Failed to copy video receiver endpoint (error: %d)", buf, 8u);
    }

    *a2 = 0;
  }

  else
  {
    v7 = [[REVideoRequestOptions alloc] initWithReceiverEndpoint:v4];
    *a2 = v7;
  }
}

void re::VideoRequestOptions::dynamicCast(id *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void re::AssetHelper::registerDefaultAssetTypes(re::AssetManager *a1, uint64_t a2, __int16 a3)
{
  v204 = *MEMORY[0x1E69E9840];
  v6 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v7 = re::ServiceLocator::serviceOrNull<re::DeformationService>(a2);
  v8 = re::ServiceLocator::serviceOrNull<re::ColorManager>(a2);
  v9 = re::ServiceLocator::serviceOrNull<re::VideoService>(a2);
  re::ImportGraphicsContext::createFromAvailableManagers(v6, v8, v193);
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], 24, 8);
  *(v12 + 1) = v7;
  *(v12 + 2) = 0;
  *v12 = &unk_1F5CBE070;
  v13 = re::MeshDeformationAsset::assetType(v12);
  v199 = &unk_1F5CC60B0;
  v202 = &v199;
  v195[3] = v195;
  v194 = v12;
  v195[0] = &unk_1F5CC60B0;
  re::AssetManager::registerAssetType(a1, v13, &v194);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v194);
  v14 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v199);
  v15 = re::globalAllocators(v14);
  v16 = (*(*v15[2] + 32))(v15[2], 16, 8);
  *v16 = &unk_1F5CBD148;
  *(v16 + 1) = a2;
  v17 = re::RenderGraphEmitterAsset::assetType(v16);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v16;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v17, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v18 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v19 = re::globalAllocators(v18);
  v20 = (*(*v19[2] + 32))(v19[2], 16, 8);
  *v20 = &unk_1F5CCA1B0;
  *(v20 + 1) = a2;
  v21 = re::RenderGraphAsset::assetType(v20);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v20;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v21, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v22 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v23 = re::globalAllocators(v22);
  v24 = (*(*v23[2] + 32))(v23[2], 16, 8);
  *v24 = &unk_1F5CBDAA8;
  *(v24 + 1) = a2;
  v25 = re::FontAsset::assetType(v24);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v24;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v25, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v26 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v27 = re::globalAllocators(v26);
  v28 = (*(*v27[2] + 32))(v27[2], 16, 8);
  *v28 = &unk_1F5CC9B80;
  *(v28 + 1) = a2;
  v29 = re::ImageBasedLightAsset::assetType(v28);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v28;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v29, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v30 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v31 = re::FontLayoutAsset::assetType(v30);
  v32 = re::globalAllocators(v31);
  v33 = (*(*v32[2] + 32))(v32[2], 8, 8);
  *v33 = &unk_1F5CBDC20;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v33;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v31, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v34 = re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetType();
  v35 = re::globalAllocators(v34);
  v36 = (*(*v35[2] + 32))(v35[2], 8, 8);
  *v36 = &unk_1F5CC5AC0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v36;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v34, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v37 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v38 = re::CGPerspectiveContextAsset::assetType(v37);
  v39 = re::globalAllocators(v38);
  v40 = (*(*v39[2] + 32))(v39[2], 8, 8);
  *v40 = &unk_1F5CC42E8;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v40;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v38, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v41 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v42 = re::globalAllocators(v41);
  v43 = (*(*v42[2] + 32))(v42[2], 24, 8);
  v44 = v43;
  v43[1] = 0;
  v43[2] = 0;
  *v43 = &unk_1F5CC5760;
  *(v43 + 2) = (a3 & 0x100) == 0;
  if (v9)
  {
    v43[2] = v9;
  }

  v45 = re::VideoAsset::assetType(v43);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v44;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v45, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v46 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v47 = re::globalAllocators(v46);
  v48 = (*(*v47[2] + 32))(v47[2], 8, 8);
  *v48 = &unk_1F5CC7660;
  v49 = re::VideoFileAsset::assetType(v48);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v48;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v49, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v50 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v51 = re::globalAllocators(v50);
  v52 = (*(*v51[2] + 32))(v51[2], 16, 8);
  *v52 = &unk_1F5CBD3D8;
  *(v52 + 1) = a2;
  v53 = re::VFXAsset::assetType(v52);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v52;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v53, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v54 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v55 = re::VertexCacheAsset::assetType(v54);
  v56 = re::globalAllocators(v55);
  v57 = (*(*v56[2] + 32))(v56[2], 16, 8);
  if (v6)
  {
    v58 = v6[26];
  }

  else
  {
    v58 = 0;
  }

  *v57 = &unk_1F5CC9158;
  v59 = v58;
  v57[1] = v59;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v57;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v55, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);

  v61 = re::globalAllocators(v60);
  v62 = (*(*v61[2] + 32))(v61[2], 152, 8);
  v62[3] = 0u;
  v62[4] = 0u;
  v62[5] = 0u;
  v62[6] = 0u;
  v62[7] = 0u;
  v62[8] = 0u;
  *(v62 + 18) = 0;
  *v62 = &unk_1F5CBE4A8;
  *(v62 + 1) = a2;
  *(v62 + 3) = 0;
  *(v62 + 4) = 0;
  *(v62 + 5) = &unk_1F5CBE468;
  *(v62 + 56) = 0u;
  *(v62 + 72) = 0u;
  *(v62 + 11) = 0x7FFFFFFF00000000;
  *(v62 + 104) = 0u;
  *(v62 + 120) = 0u;
  *(v62 + 34) = 0;
  *(v62 + 35) = 0x7FFFFFFF;
  *(v62 + 2) = 0;
  v63 = re::ShaderLibraryAsset::assetType(v62);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v62;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v63, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v64 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v65 = re::globalAllocators(v64);
  v66 = (*(*v65[2] + 32))(v65[2], 8, 8);
  *v66 = &unk_1F5CC5938;
  v67 = re::ShaderGraphAsset::assetType(v66);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v66;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v67, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v68 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v69 = re::globalAllocators(v68);
  v70 = (*(*v69[2] + 32))(v69[2], 56, 8);
  v70[2] = 0;
  v70[3] = 0;
  v70[5] = 0;
  v70[6] = 0;
  v70[4] = 0;
  *v70 = &unk_1F5CC7F58;
  v70[1] = a2;
  v70[2] = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v71 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v70[1]);
  v70[3] = v71;
  v72 = re::MaterialDefinitionAsset::assetType(v71);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v70;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v72, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v73 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v74 = re::globalAllocators(v73);
  v75 = (*(*v74[2] + 32))(v74[2], 1024, 128);
  bzero(v75, 0x400uLL);
  *v75 = &unk_1F5CC3648;
  *(v75 + 17) = 0u;
  *(v75 + 19) = 0u;
  v75[21] = 0x7FFFFFFF00000000;
  *(v75 + 1) = 0u;
  *(v75 + 3) = 0u;
  *(v75 + 5) = 0u;
  *(v75 + 7) = 0u;
  *(v75 + 9) = 0u;
  *(v75 + 11) = 0u;
  MEMORY[0x1E69061D0](v75 + 23);
  *(v75 + 256) = 0;
  v75[33] = 0;
  v75[35] = 0;
  *(v75 + 96) = 0;
  v75[53] = 0;
  v75[50] = 0;
  v75[51] = 0;
  v75[49] = 0;
  *(v75 + 104) = 0;
  v75[80] = 0;
  *(v75 + 192) = 0;
  v75[101] = 0;
  v75[97] = 0;
  v75[99] = 0;
  v75[98] = 0;
  *(v75 + 200) = 0;
  *(v75 + 896) = 0;
  v75[1] = a2;
  v75[2] = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v76 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v75[1]);
  v75[3] = v76;
  v77 = re::MaterialAsset::assetType(v76);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v75;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v77, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v78 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v79 = re::globalAllocators(v78);
  v80 = (*(*v79[2] + 32))(v79[2], 80, 8);
  re::TextureAssetProvider::TextureAssetProvider(v80, a1, a2);
  v81 = re::AssetManager::registerAssetProvider(a1, v80);
  v82 = re::globalAllocators(v81);
  v190 = v80;
  v83 = (*(*v82[2] + 32))(v82[2], 40, 8);
  re::BuiltinTextureAssetProvider::BuiltinTextureAssetProvider(v83, a1, a2);
  v84 = re::AssetManager::registerAssetProvider(a1, v83);
  v192 = v83;
  v189 = v70;
  if (v6)
  {
    v84 = v6[26];
    v191 = v84;
  }

  else
  {
    v191 = 0;
  }

  v85 = re::globalAllocators(v84);
  v86 = (*(*v85[2] + 32))(v85[2], 136, 8);
  v87 = 0;
  *v86 = &unk_1F5CC3BC0;
  *(v86 + 8) = 0;
  *(v86 + 16) = 0;
  *(v86 + 24) = 0;
  *(v86 + 40) = 0;
  *(v86 + 48) = 0;
  *(v86 + 56) = 65793;
  *(v86 + 61) = 1;
  *(v86 + 64) = 0;
  *(v86 + 80) = 0;
  *(v86 + 88) = 0;
  *(v86 + 128) = 0;
  *(v86 + 104) = 0;
  *(v86 + 112) = 0;
  *(v86 + 96) = 0;
  *(v86 + 120) = 0;
  if (v6 && (a3 & 1) != 0)
  {
    v88 = v6[26];
    if (v88)
    {
      v87 = [v88 supportsSharedTextureHandles];
    }

    else
    {
      v87 = 0;
    }
  }

  v89 = re::ServiceLocator::serviceOrNull<re::DrawableQueueService>(a2);
  v90 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(a2);
  v91 = re::ServiceLocator::serviceOrNull<re::EntitlementService>(a2);
  re::TextureAssetLoader::init(v86, a1, v6, v193, v89, v90, v91, v87, 1);
  v93 = re::TextureAsset::assetType(v92);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v86;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v93, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v94 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v95 = re::globalAllocators(v94);
  v96 = (*(*v95[2] + 32))(v95[2], 320, 8);
  *(v96 + 40) = 0;
  *v96 = &unk_1F5CBD570;
  *(v96 + 8) = 0;
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  *(v96 + 56) = 0u;
  *(v96 + 72) = 0u;
  *(v96 + 88) = 0u;
  *(v96 + 104) = 0u;
  *(v96 + 120) = 0u;
  *(v96 + 136) = 0u;
  *(v96 + 152) = 0u;
  *(v96 + 168) = 0u;
  *(v96 + 184) = 0u;
  *(v96 + 200) = 0u;
  *(v96 + 216) = 0u;
  *(v96 + 232) = 0u;
  *(v96 + 248) = 0;
  *(v96 + 253) = 0;
  *(v96 + 250) = 257;
  *(v96 + 252) = 1;
  *(v96 + 257) = 0;
  *(v96 + 259) = 65793;
  *(v96 + 296) = 0u;
  *(v96 + 264) = 0u;
  *(v96 + 280) = 0u;
  *(v96 + 300) = 0x7FFFFFFF;
  *(v96 + 312) = 0;
  v97 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(a2);
  re::MeshAssetLoader::init(v96, a2, v97, a3 & 1);
  v99 = re::MeshAsset::assetType(v98);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v96;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v99, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v100 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v101 = re::CollisionShapeAsset::assetType(v100);
  v102 = re::globalAllocators(v101);
  v103 = (*(*v102[2] + 32))(v102[2], 8, 8);
  *v103 = &unk_1F5CC81A0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v103;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v101, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v104 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v105 = re::PhysicsMaterialAsset::assetType(v104);
  v106 = re::globalAllocators(v105);
  v107 = (*(*v106[2] + 32))(v106[2], 8, 8);
  *v107 = &unk_1F5CC8318;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v107;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v105, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v108 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v109 = re::IndexedTriangleMeshAsset::assetType(v108);
  v110 = re::globalAllocators(v109);
  v111 = (*(*v110[2] + 32))(v110[2], 8, 8);
  *v111 = &unk_1F5CC8490;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v111;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v109, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v112 = re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetType();
  v113 = re::globalAllocators(v112);
  v114 = (*(*v113[2] + 32))(v113[2], 8, 8);
  *v114 = &unk_1F5CC5C38;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v114;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v112, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v115 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v116 = re::AnimationLibraryAsset::assetType(v115);
  v117 = re::globalAllocators(v116);
  v118 = (*(*v117[2] + 32))(v117[2], 8, 8);
  *v118 = &unk_1F5CCA358;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v118;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v116, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v119 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v120 = re::globalAllocators(v119);
  v121 = (*(*v120[2] + 32))(v120[2], 8, 8);
  *v121 = &unk_1F5CC5DB0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v121;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v119, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v122 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v123 = re::IKRigAsset::assetType(v122);
  v124 = re::globalAllocators(v123);
  v125 = (*(*v124[2] + 32))(v124[2], 8, 8);
  *v125 = &unk_1F5CC8DD0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v125;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v123, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v126 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v127 = re::RigAsset::assetType(v126);
  v128 = re::globalAllocators(v127);
  v129 = (*(*v128[2] + 32))(v128[2], 8, 8);
  *v129 = &unk_1F5CCA6A0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v129;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v127, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v130 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v131 = re::RigGraphAsset::assetType(v130);
  v132 = re::globalAllocators(v131);
  v133 = (*(*v132[2] + 32))(v132[2], 8, 8);
  *v133 = &unk_1F5CC7B08;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v133;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v131, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v134 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v135 = re::BlendShapeWeightsDefinitionAsset::assetType(v134);
  v136 = re::globalAllocators(v135);
  v137 = (*(*v136[2] + 32))(v136[2], 8, 8);
  *v137 = &unk_1F5CC3918;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v137;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v135, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v138 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v139 = re::SkeletonAsset::assetType(v138);
  v140 = re::globalAllocators(v139);
  v141 = (*(*v140[2] + 32))(v140[2], 8, 8);
  *v141 = &unk_1F5CC8FE0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v141;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v139, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v142 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v143 = re::SkeletalPoseDefinitionAsset::assetType(v142);
  v144 = re::globalAllocators(v143);
  v145 = (*(*v144[2] + 32))(v144[2], 8, 8);
  *v145 = &unk_1F5CC97C8;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v145;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v143, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v146 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v147 = re::TimelineAsset::assetType(v146);
  v148 = re::globalAllocators(v147);
  v149 = (*(*v148[2] + 32))(v148[2], 8, 8);
  *v149 = &unk_1F5CC9E70;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v149;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v147, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v150 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
  v151 = re::globalAllocators(v150);
  v152 = (*(*v151[2] + 32))(v151[2], 8, 8);
  *v152 = &unk_1F5CC5F28;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v152;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v150, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v153 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v154 = re::StateMachineAsset::assetType(v153);
  v155 = re::globalAllocators(v154);
  v156 = (*(*v155[2] + 32))(v155[2], 8, 8);
  *v156 = &unk_1F5CC8700;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v156;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v154, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v157 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v158 = re::StateParameterBlackboardAsset::assetType(v157);
  v159 = re::globalAllocators(v158);
  v160 = (*(*v159[2] + 32))(v159[2], 8, 8);
  *v160 = &unk_1F5CBDE30;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v160;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v158, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v161 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(a2);
  if (v161)
  {
    v162 = re::SceneAsset::assetType(v161);
    v163 = re::globalAllocators(v162);
    v164 = (*(*v163[2] + 32))(v163[2], 8, 8);
    *v164 = &unk_1F5CC7860;
    v196 = &unk_1F5CC6130;
    v197 = re::internal::AssetTypeRegistryHelper::deleter;
    v198 = &v196;
    v203 = &v200;
    v199 = v164;
    v200 = &unk_1F5CC6130;
    v201 = re::internal::AssetTypeRegistryHelper::deleter;
    re::AssetManager::registerAssetType(a1, v162, &v199);
    std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
    v161 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  }

  v165 = re::globalAllocators(v161);
  v166 = (*(*v165[2] + 32))(v165[2], 56, 8);
  re::AudioFileAssetProvider::AudioFileAssetProvider(v166, a1);
  re::AssetManager::registerAssetProvider(a1, v166);
  v167 = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(a2);
  v168 = re::globalAllocators(v167);
  v169 = (*(*v168[2] + 32))(v168[2], 16, 8);
  *v169 = &unk_1F5CC9CF8;
  *(v169 + 1) = v167;
  v170 = re::AudioFileAsset::assetType(v169);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v169;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v170, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v171 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v172 = re::AudioFileGroupAsset::assetType(v171);
  v173 = re::globalAllocators(v172);
  v174 = (*(*v173[2] + 32))(v173[2], 32, 8);
  *v174 = &unk_1F5CCA028;
  v174[1] = a1;
  v174[2] = v169;
  v174[3] = v167;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v174;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v172, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v175 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v176 = re::globalAllocators(v175);
  v177 = (*(*v176[2] + 32))(v176[2], 8, 8);
  *v177 = &unk_1F5CC4900;
  v178 = re::AudioGeneratorAsset::assetType(v177);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v177;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v178, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v179 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v180 = re::globalAllocators(v179);
  v181 = (*(*v180[2] + 32))(v180[2], 16, 8);
  *v181 = &unk_1F5CC65A0;
  *(v181 + 1) = 0;
  v182 = re::AcousticMeshAsset::assetType(v181);
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v181;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v182, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  v183 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  v184 = re::ARReferenceObjectAsset::assetType(v183);
  v185 = re::globalAllocators(v184);
  v186 = (*(*v185[2] + 32))(v185[2], 16, 8);
  *v186 = &unk_1F5CC4D30;
  v186[1] = 0;
  v196 = &unk_1F5CC6130;
  v197 = re::internal::AssetTypeRegistryHelper::deleter;
  v198 = &v196;
  v203 = &v200;
  v199 = v186;
  v200 = &unk_1F5CC6130;
  v201 = re::internal::AssetTypeRegistryHelper::deleter;
  re::AssetManager::registerAssetType(a1, v184, &v199);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v199);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&v196);
  re::ShaderLibraryAssetLoader::preloadAssets(v62);
  re::TextureAssetLoader::preloadAssets(v86, a2);
  re::MaterialDefinitionLoader::preloadAssets(v189);
  re::MaterialAssetLoader::preloadAssets(v75);
  re::MeshAssetLoader::preloadAssets(v96);
  v187 = re::ServiceLocator::serviceOrNull<re::MXIService>(a2);
  if (v187)
  {
    re::MXIManager::preloadMXIAssets(v187);
  }

  re::Defaults::BOOLValue("blockUntilAssetsPreloaded", v188, &v199);
  if (v199 == 1 && (BYTE1(v199) & 1) != 0)
  {
    re::AssetManager::waitForLoadQueueToComplete(a1, 0);
  }

  if (v166)
  {
  }

  if (v192)
  {
  }

  if (v190)
  {
  }
}

void sub_1E2070B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100]((v26 - 136));
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](&a26);

  if (a16)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DeformationService>(uint64_t a1)
{
  {
    re::introspect<re::DeformationService>(BOOL)::info = re::introspect_DeformationService(0);
  }

  v2 = re::introspect<re::DeformationService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(uint64_t a1)
{
  {
    re::introspect<re::DirectResourceAssetTracker>(BOOL)::info = re::introspect_DirectResourceAssetTracker(0);
  }

  v2 = re::introspect<re::DirectResourceAssetTracker>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::AudioSceneService>(uint64_t a1)
{
  {
    re::introspect<re::AudioSceneService>(BOOL)::info = re::introspect_AudioSceneService(0);
  }

  v2 = re::introspect<re::AudioSceneService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::MXIService>(uint64_t a1)
{
  {
    re::introspect<re::MXIService>(BOOL)::info = re::introspect_MXIService(0);
  }

  v2 = re::introspect<re::MXIService>(BOOL)::info;
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

double re::AssetHelper::deinitDefaultAssetTypes(re::AssetHelper *this, re::AssetManager *a2)
{
  v3 = re::TextureAsset::assetType(this);
  v4 = *(this + 226);
  v8 = v3;
  v5 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v4, &v8);
  (*(**v5 + 128))(*v5);
  v6 = *v5;
  *(v6 + 72) = 0;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  return result;
}

uint64_t re::AssetHelper::registerDefaultAssetCompilers(re *a1, uint64_t a2, int a3)
{
  v138 = *MEMORY[0x1E69E9840];
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 48, 8);
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *v6 = &unk_1F5CCFE00;
  *(v6 + 8) = 0;
  *(v6 + 24) = 257;
  *(v6 + 26) = 1;
  *(v6 + 29) = 1;
  *(v6 + 40) = 0;
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 16, 8);
  *v8 = &unk_1F5CD15F8;
  *(v8 + 1) = 0;
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 48, 8);
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *v10 = &unk_1F5CCFF58;
  *(v10 + 8) = 0;
  *(v10 + 24) = 257;
  *(v10 + 26) = 1;
  *(v10 + 29) = 1;
  v11 = a2;
  v12 = re::globalAllocators(v10);
  v13 = (*(*v12[2] + 32))(v12[2], 16, 8);
  v13[1] = 0;
  v14 = v13 + 1;
  v116 = v13;
  *v13 = &unk_1F5CD1C98;
  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 16, 8);
  v16[1] = 0;
  v17 = v16 + 1;
  v115 = v16;
  *v16 = &unk_1F5CCFEE0;
  v18 = re::globalAllocators(v16);
  v19 = (*(*v18[2] + 32))(v18[2], 16, 8);
  *v19 = &unk_1F5CD0038;
  v19[1] = 0;
  v119 = v19;
  v20 = re::globalAllocators(v19);
  v21 = (*(*v20[2] + 32))(v20[2], 24, 8);
  v21[1] = 0;
  v22 = v21 + 1;
  *v21 = &unk_1F5CD1850;
  v21[2] = 0;
  v23 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v11);
  if (v23)
  {
    v24 = v23;
    if (*(v23 + 26))
    {
      v117 = v11;
      re::ImportGraphicsContext::createFromRenderManager(v23, &v134);
      if (a3)
      {
        v25 = [*(v24 + 26) supportsSharedTextureHandles];
      }

      else
      {
        v25 = 0;
      }

      re::TextureCompiler::init(v6, &v134, v25);
      *(v8 + 1) = v117;
      re::KTXTextureCompiler::init(v10, &v134, v25, BYTE2(a3) & 1);
      v127 = *(v24 + 26);
      re::ObjCObject::operator=(v14, &v127);

      v126 = *(v24 + 26);
      re::ObjCObject::operator=(v17, &v126);

      v119[1] = v24;
      v125 = *(v24 + 26);
      re::ObjCObject::operator=(v22, &v125);
      v21[2] = v117;
    }
  }

  else if (re::ServiceLocator::serviceOrNull<re::RenderManager>(v11))
  {
    re::mtl::makeDefaultDevice(&v124);
    if (a3)
    {
      v26 = [v124 supportsSharedTextureHandles];
    }

    else
    {
      v26 = 0;
    }

    re::Bundle::testData(&v123);
    re::Bundle::findFile(&v123, "default.metallib", &v134);
    if (v135)
    {
      v27 = v136;
    }

    else
    {
      v27 = (&v135 + 1);
    }

    re::mtl::Device::newLibraryWithURL(&v124, v27, &v122);
    v28 = re::ServiceLocator::serviceOrNull<re::ColorManager>(v11);
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    v128 = v124;
    v129 = v122;
    v130 = 16843009;
    v131 = v29;
    v132 = 1;
    v133 = 0;
    re::TextureCompiler::init(v6, &v128, v26);
    *(v8 + 1) = v11;
    re::KTXTextureCompiler::init(v10, &v128, v26, BYTE2(a3) & 1);
    v121 = v124;
    re::ObjCObject::operator=(v14, &v121);

    v120 = v124;
    re::ObjCObject::operator=(v22, &v120);
    v21[2] = v11;

    if (v134 && (v135 & 1) != 0)
    {
      (*(*v134 + 40))();
    }
  }

  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v6;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v8;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v10;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v116;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v115;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v119;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v21;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v30 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v31 = re::globalAllocators(v30);
  v32 = (*(*v31[2] + 32))(v31[2], 8, 8);
  *v32 = &unk_1F5CCF8A0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v32;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v33 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v34 = re::globalAllocators(v33);
  v35 = (*(*v34[2] + 32))(v34[2], 8, 8);
  *v35 = &unk_1F5CC6280;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v35;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v36 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v37 = re::globalAllocators(v36);
  v38 = (*(*v37[2] + 32))(v37[2], 8, 8);
  *v38 = &unk_1F5CCFE90;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v38;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v39 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v40 = re::globalAllocators(v39);
  v41 = (*(*v40[2] + 32))(v40[2], 8, 8);
  *v41 = &unk_1F5CC62E8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v41;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v42 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v43 = re::globalAllocators(v42);
  v44 = (*(*v43[2] + 32))(v43[2], 8, 8);
  *v44 = &unk_1F5CC6350;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v44;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v45 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v46 = re::globalAllocators(v45);
  v47 = (*(*v46[2] + 32))(v46[2], 8, 8);
  *v47 = &unk_1F5CD1D10;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v47;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v48 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v49 = re::globalAllocators(v48);
  v50 = (*(*v49[2] + 32))(v49[2], 8, 8);
  *v50 = &unk_1F5CD1D78;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v50;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v51 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v52 = re::globalAllocators(v51);
  v53 = (*(*v52[2] + 32))(v52[2], 8, 8);
  *v53 = &unk_1F5CCFD98;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v53;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v54 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v55 = re::globalAllocators(v54);
  v56 = (*(*v55[2] + 32))(v55[2], 8, 8);
  *v56 = &unk_1F5CD1B38;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v56;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v57 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v58 = re::globalAllocators(v57);
  v59 = (*(*v58[2] + 32))(v58[2], 8, 8);
  *v59 = &unk_1F5CD01D0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v59;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v60 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v61 = re::globalAllocators(v60);
  v62 = (*(*v61[2] + 32))(v61[2], 8, 8);
  *v62 = &unk_1F5CD0238;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v62;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v63 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v64 = re::globalAllocators(v63);
  v65 = (*(*v64[2] + 32))(v64[2], 8, 8);
  *v65 = &unk_1F5CCFFD0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v65;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v66 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v67 = re::globalAllocators(v66);
  v68 = (*(*v67[2] + 32))(v67[2], 8, 8);
  *v68 = &unk_1F5CD1BA0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v68;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v69 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v70 = re::globalAllocators(v69);
  v71 = (*(*v70[2] + 32))(v70[2], 8, 8);
  *v71 = &unk_1F5CB03D0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v71;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v72 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v73 = re::globalAllocators(v72);
  v74 = (*(*v73[2] + 32))(v73[2], 8, 8);
  *v74 = &unk_1F5CD02A0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v74;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v75 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v76 = re::globalAllocators(v75);
  v77 = (*(*v76[2] + 32))(v76[2], 8, 8);
  *v77 = &unk_1F5CCFCA0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v77;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v78 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v79 = re::globalAllocators(v78);
  v80 = (*(*v79[2] + 32))(v79[2], 8, 8);
  *v80 = &unk_1F5CD16F0;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v80;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v81 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v82 = re::globalAllocators(v81);
  v83 = (*(*v82[2] + 32))(v82[2], 8, 8);
  *v83 = &unk_1F5CD1590;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v83;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v84 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v85 = re::globalAllocators(v84);
  v86 = (*(*v85[2] + 32))(v85[2], 16, 8);
  v86[1] = &unk_1F5CD1D10;
  *v86 = &unk_1F5CD18B8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v86;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v87 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v88 = re::globalAllocators(v87);
  v89 = (*(*v88[2] + 32))(v88[2], 16, 8);
  v89[1] = &unk_1F5CD1D78;
  *v89 = &unk_1F5CD1938;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v89;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v90 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v91 = re::globalAllocators(v90);
  v92 = (*(*v91[2] + 32))(v91[2], 16, 8);
  v92[1] = &unk_1F5CCFFD0;
  *v92 = &unk_1F5CD1A38;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v92;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v93 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v94 = re::globalAllocators(v93);
  v95 = (*(*v94[2] + 32))(v94[2], 24, 8);
  v95[1] = &unk_1F5CD0038;
  v95[2] = 0;
  *v95 = &unk_1F5CD1AB8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v95;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v96 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v97 = re::globalAllocators(v96);
  v98 = (*(*v97[2] + 32))(v97[2], 16, 8);
  v98[1] = &unk_1F5CD1B38;
  *v98 = &unk_1F5CD19B8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v98;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v99 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v100 = re::globalAllocators(v99);
  v101 = (*(*v100[2] + 32))(v100[2], 8, 8);
  *v101 = &unk_1F5CC63E8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v101;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v102 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v103 = re::globalAllocators(v102);
  v104 = (*(*v103[2] + 32))(v103[2], 8, 8);
  *v104 = &unk_1F5CC4A78;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v104;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v105 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v106 = re::globalAllocators(v105);
  v107 = (*(*v106[2] + 32))(v106[2], 8, 8);
  *v107 = &unk_1F5CC6730;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v107;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v108 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v109 = re::globalAllocators(v108);
  v110 = (*(*v109[2] + 32))(v109[2], 8, 8);
  *v110 = &unk_1F5CC75F8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v110;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  v111 = std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
  v112 = re::globalAllocators(v111);
  v113 = (*(*v112[2] + 32))(v112[2], 8, 8);
  *v113 = &unk_1F5CD17E8;
  v128 = &unk_1F5CC61D0;
  v129 = re::internal::AssetCompilerRegistryHelper::deleter;
  v133 = &v128;
  v134 = v113;
  v137 = &v135;
  v135 = &unk_1F5CC61D0;
  v136 = re::internal::AssetCompilerRegistryHelper::deleter;
  re::AssetCompilerRegistry::registerAssetCompiler(a1, &v134);
  std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](&v134);
  return std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](&v128);
}

void sub_1E2073214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a26)
  {
    if (a27)
    {
      (*(*a26 + 40))();
    }
  }

  _Unwind_Resume(a1);
}

void re::AssetHelper::makeMutableMaterialMemoryAsset(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, uint64_t a4)
{
  re::AssetHandle::AssetHandle(v7, a3);
  re::MaterialAsset::makeMutableMaterialMemoryAsset(a1, a2, v7, 0, a4);
  re::AssetHandle::~AssetHandle(v7);
}

void re::AssetHelper::makeMeshMemoryAsset(uint64_t a1, _anonymous_namespace_ *a2, int a3, int *a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v17, 2008, a2);
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(a2, a3, 0, a4, v15);
  LODWORD(a4) = v15[0];
  v11 = *(*re::globalAllocators(MeshAssetDataWithGeomMeshArray)[2] + 32);
  if (a4 == 1)
  {
    v12 = v11();
    v13 = re::MeshAsset::MeshAsset(v12, &v16);
  }

  else
  {
    v12 = v11();
    re::MeshAsset::MeshAsset(v12);
  }

  v14 = re::MeshAsset::assetType(v13);
  (*(*a1 + 424))(a1, v12, v14, 0, a5, 0);
  re::Result<re::MeshAssetData,re::DetailedError>::~Result(v15);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v17);
}

void sub_1E20734E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re::Result<re::MeshAssetData,re::DetailedError>::~Result(va);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t re::AssetHelper::makeTextureMemoryAsset(uint64_t a1, id *a2, uint64_t a3)
{
  v17 = *a2;
  v18 = 0;
  v9 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 0u;
  memset(v14, 0, 28);
  v15 = 0;
  v16 = 0;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v17, &v9, 1, 0);
  if (*&v14[0])
  {
    if (v15)
    {
      (*(**&v14[0] + 40))();
    }

    v15 = 0;
    memset(v14, 0, 24);
    ++DWORD2(v14[1]);
  }

  if (v13)
  {
  }

  if (v18 != -1)
  {
    v6 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix_0[v18])(&v9, &v17);
  }

  v7 = re::TextureAsset::assetType(v6);
  return (*(*a1 + 424))(a1, TextureAsset, v7, 0, a3, 0);
}

uint64_t re::AssetHelper::makeCollisionShapeAsset(re *a1, re *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = re::globalAllocators(a1);
  v11 = re::convertToSerializable(a2, a3, a4, v10[2]);
  v12 = re::globalAllocators(v11);
  v13 = (*(*v12[2] + 32))(v12[2], 16, 8);
  *v13 = v11;
  v13[1] = a2;
  v14 = re::CollisionShapeAsset::assetType(v13);
  v15 = *(*a1 + 424);

  return v15(a1, v13, v14, 0, a5, 0);
}

uint64_t re::AssetHelper::makePhysicsMaterialAsset(re *a1, re::PhysicsMaterial *a2, uint64_t a3)
{
  v6 = re::globalAllocators(a1);
  re::PhysicsMaterial::createGenericMaterial(a2, v6[2]);
  v8 = v7;
  v9 = re::globalAllocators(v7);
  v10 = (*(*v9[2] + 32))(v9[2], 16, 8);
  *v10 = v8;
  *(v10 + 1) = a2;
  v11 = re::PhysicsMaterialAsset::assetType(v10);
  v12 = *(*a1 + 424);

  return v12(a1, v10, v11, 0, a3, 0);
}

uint64_t re::AssetHelper::makeIndexedTriangleMeshAsset(re *a1, re *a2, uint64_t a3)
{
  v6 = re::globalAllocators(a1);
  v8 = re::convertToSerializable(a2, v6[2], v7);
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 16, 8);
  *v10 = v8;
  v10[1] = a2;
  v11 = re::IndexedTriangleMeshAsset::assetType(v10);
  v12 = *(*a1 + 424);

  return v12(a1, v10, v11, 0, a3, 0);
}

re **re::AssetHelper::makeTimelineAsset(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = re::internal::convertToAssetData(a1, a2, v4[2]);
  v6 = re::globalAllocators(v5);
  result = (*(*v6[2] + 32))(v6[2], 24, 8);
  *result = a1;
  result[1] = v5;
  result[2] = a1;
  return result;
}

re **re::AssetHelper::makeTimelineAsset(re::AssetHelper *this, re::TimelineAssetData *a2)
{
  v3 = re::globalAllocators(this);
  v5 = re::internal::convertToTimeline(this, v3[2], v4);
  v6 = re::globalAllocators(v5);
  result = (*(*v6[2] + 32))(v6[2], 24, 8);
  *result = v5;
  result[1] = this;
  result[2] = v5;
  return result;
}

uint64_t re::AssetHelper::makeTimelineAssetHandle(re::TimelineAsset *a1, re *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  TimelineAsset = re::AssetHelper::makeTimelineAsset(a2, a3);
  v9 = TimelineAsset;
  if (a4)
  {

    return re::AssetService::createNamedMemoryAsset<re::TimelineAsset>(a1, TimelineAsset, a4, a5);
  }

  else
  {
    v11 = re::TimelineAsset::assetType(TimelineAsset);
    v12 = *(*a1 + 424);

    return v12(a1, v9, v11, 0, a5, 0);
  }
}

uint64_t re::AssetService::createNamedMemoryAsset<re::TimelineAsset>(re::TimelineAsset *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = re::TimelineAsset::assetType(a1);
  (*(*a1 + 432))(a1, a2, v8, &v10, 0, a4, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void sub_1E2073C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a9)
  {
    if (a10)
    {
      (*(*a9 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

void *re::DynamicArray<re::MeshLodLevelInfo>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::MeshLodLevelInfo>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 48 * v4;
  v6 = *a2;
  *(v5 + 40) = 0;
  *v5 = v6;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[2];
  *(v5 + 8) = a2[1];
  *(v5 + 16) = v7;
  a2[1] = 0;
  a2[2] = 0;
  v8 = *(v5 + 24);
  *(v5 + 24) = a2[3];
  a2[3] = v8;
  v9 = *(v5 + 40);
  *(v5 + 40) = a2[5];
  a2[5] = v9;
  ++*(a2 + 8);
  ++*(v5 + 32);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

BOOL re::AssetHelper::readerToWriterStream(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v4 = (*(*a1 + 16))(a1, v9, 1024);
    if (!v4)
    {
      break;
    }

    v5 = (*(*a2 + 16))(a2, v9, v4);
    if (v5 != v4)
    {
      v6 = *re::assetTypesLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "AssetHelper::readerToWriterStream: unable to write data", v8, 2u);
      }

      return v4 == 0;
    }
  }

  return v4 == 0;
}

uint64_t loadIBLTextureWithContentsOfFile(_anonymous_namespace_ *a1, re::ImportGraphicsContext *a2, id *a3, uint64_t a4, const char *a5)
{
  re::ImportGraphicsContext::createFromAvailableManagers(a2, 0, &v24);
  if (v15)
  {
    if (v15 != 1)
    {
      v13 = std::__throw_bad_variant_access[abi:nn200100]();

      _Unwind_Resume(v13);
    }

    if (!*(v14 + 48))
    {
      goto LABEL_8;
    }

    v10 = (v14 + 24);
  }

  else
  {
    v10 = &v14;
  }

  if (*v10)
  {
    TextureAsset = re::TextureAsset::makeTextureAsset(&v14, &v16, *(a4 + 56), 0);
    goto LABEL_9;
  }

LABEL_8:
  TextureAsset = 0;
LABEL_9:
  if (v19)
  {
    if (v23)
    {
      (*(*v19 + 40))();
    }

    v23 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    ++v22;
  }

  if (v17)
  {

    v17 = 0;
  }

  if (v15 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix_0[v15])(&v26, &v14);
  }

  return TextureAsset;
}

double re::AssetHelper::createDefaultImageBasedLightEngineAsset@<D0>(re::AssetHelper *this@<X0>, id *a2@<X1>, const re::AssetHandle *a3@<X8>)
{
  v123 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  re::DynamicString::setCapacity(&v83, 0);
  re::AssetPath::filePathToAsset(&v88, &v83, 1, 0);
  v8 = &v90;
  v82 = &unk_1F5CB9778;
  if (v84)
  {
    v9 = v85;
  }

  else
  {
    v9 = (&v84 + 1);
  }

  v10 = re::IBLAssetCompiler::createFromJson(v9, &v82, v77);
  if (v77[0])
  {
    v75 = &v76;
    v76 = v78;
    *&buf = 0;
    *(&buf + 1) = v122;
    v121 = 488;
    v122[0] = 0;
    v116 = 0;
    v117 = v119;
    v118 = 488;
    v119[0] = 0;
    if (v84)
    {
      v13 = v85;
    }

    else
    {
      v13 = (&v84 + 1);
    }

    v14 = re::path::dirname(&buf, v13, v12);
    v15 = v14;
    if (!v14 || !*v14)
    {
      v21 = *re::assetsLogObjects(v14);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (v84)
        {
          v22 = v85;
        }

        else
        {
          v22 = (&v84 + 1);
        }

        LODWORD(v99) = 136315138;
        *(&v99 + 4) = v22;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Error loading .reibl file: unable to find directory of '%s'", &v99, 0xCu);
      }

      goto LABEL_104;
    }

    v100 = 1;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v102 = 0;
    v101 = 0u;
    v110 = 0;
    v108 = 0;
    v109 = 0;
    v111 = -65536;
    v114 = 0;
    v112 = 0;
    v113 = 0;
    v115 = 0;
    v107 = 4;
    v99 = 0x300000002uLL;
    v66 = a2[26];
    v74 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v74 setStorageMode_];
    v16 = *(v76 + 13);
    v17 = v16 >> 1;
    if ((v16 & 1) == 0)
    {
      v17 = v16 >> 1;
    }

    if (v17)
    {
      if (v16)
      {
        v18 = *(v76 + 14);
      }

      else
      {
        v18 = v76 + 105;
      }

      v23 = CFStringCreateWithCString(0, v18, 0x8000100u);
      re::TextureFromImageOptions::setColorSpace(&v99, v23);
      CFRelease(v23);
    }

    else
    {
      re::TextureFromImageOptions::setColorSpace(&v99, *MEMORY[0x1E695F108]);
    }

    re::AssetHandle::serializationString(v76, &v71);
    v25 = v72 >> 1;
    if ((v72 & 1) == 0)
    {
      v25 = v72 >> 1;
    }

    if (v25)
    {
      if (v72)
      {
        v26 = v73;
      }

      else
      {
        v26 = &v72 + 1;
      }

      v27 = re::path::join(&v116, v15, v26, v24);
      v28 = v27;
      if (v72)
      {
        v29 = v73;
      }

      else
      {
        v29 = &v72 + 1;
      }

      v30 = loadIBLTextureWithContentsOfFile(v27, a2, &v74, &v99, v29);
      if (!v30)
      {
        v61 = *re::assetsLogObjects(0);
        v62 = v66;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v97) = 136315138;
          *(&v97 + 4) = v28;
          _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Failed to load IBL source texture '%s'", &v97, 0xCu);
        }

        goto LABEL_94;
      }

      re::DynamicString::DynamicString(&v97, &v71);
      v31 = v98;
      v32 = BYTE8(v97) & 1;
      if (BYTE8(v97))
      {
        v33 = v98;
      }

      else
      {
        v33 = &v97 + 9;
      }

      if (!strchr(v33, 58))
      {
        re::DynamicString::operator+(v93, &v97, v95);
        re::DynamicString::operator=(&v97, v95);
        if (*v95)
        {
          if (v95[8])
          {
            (*(**v95 + 40))();
          }

          *v95 = 0u;
          v96 = 0u;
        }

        if (*v93 && (v93[8] & 1) != 0)
        {
          (*(**v93 + 40))();
        }

        v31 = v98;
        v32 = BYTE8(v97) & 1;
      }

      if (v32)
      {
        v34 = v31;
      }

      else
      {
        v34 = &v97 + 9;
      }

      re::AssetManager::assetHandle(this, v34, v95);
      v35 = v76;
      v36 = *(v76 + 1);
      v37 = *(v76 + 2);
      *(v76 + 1) = *&v95[8];
      *&v95[8] = v36;
      v38 = *v35;
      *v35 = 0;
      *v35 = *v95;
      *(v35 + 2) = v96;
      *v95 = v38;
      *&v96 = v37;
      re::AssetHandle::~AssetHandle(v95);
      re::AssetHandle::AssetHandle(v70, v76);
      re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v30, v70, 1);
      re::AssetHandle::~AssetHandle(v70);
      if (v97 && (BYTE8(v97) & 1) != 0)
      {
        (*(*v97 + 40))();
      }
    }

    re::AssetHandle::serializationString((v76 + 24), &v97);
    v40 = *(&v97 + 1) >> 1;
    if ((BYTE8(v97) & 1) == 0)
    {
      v40 = BYTE8(v97) >> 1;
    }

    if (v40)
    {
      if (BYTE8(v97))
      {
        v41 = v98;
      }

      else
      {
        v41 = &v97 + 9;
      }

      v42 = re::path::join(&v116, v15, v41, v39);
      v43 = v42;
      if (BYTE8(v97))
      {
        v44 = v98;
      }

      else
      {
        v44 = &v97 + 9;
      }

      v45 = loadIBLTextureWithContentsOfFile(v42, a2, &v74, &v99, v44);
      if (!v45)
      {
        v63 = *re::assetsLogObjects(0);
        v62 = v66;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *v95 = 136315138;
          *&v95[4] = v43;
          _os_log_error_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_ERROR, "Failed to load IBL diffuse texture '%s'", v95, 0xCu);
        }

        goto LABEL_91;
      }

      re::AssetManager::assetHandle(this, "engine:studio_lighting_mrmode_diffmap.ktx", v95);
      v46 = v76;
      v47 = *(v76 + 24);
      *(v76 + 24) = *v95;
      *v95 = v47;
      v48 = *(v46 + 5);
      *(v46 + 5) = v96;
      *&v96 = v48;
      re::AssetHandle::~AssetHandle(v95);
      re::AssetHandle::AssetHandle(v69, (v76 + 24));
      re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v45, v69, 1);
      re::AssetHandle::~AssetHandle(v69);
    }

    re::AssetHandle::serializationString((v76 + 72), v95);
    v50 = *&v95[8] >> 1;
    if ((v95[8] & 1) == 0)
    {
      v50 = v95[8] >> 1;
    }

    if (v50)
    {
      if (v95[8])
      {
        v51 = v96;
      }

      else
      {
        v51 = &v95[9];
      }

      v52 = re::path::join(&v116, v15, v51, v49);
      v53 = v52;
      if (v95[8])
      {
        v54 = v96;
      }

      else
      {
        v54 = &v95[9];
      }

      v55 = loadIBLTextureWithContentsOfFile(v52, a2, &v74, &v99, v54);
      if (!v55)
      {
        v64 = *re::assetsLogObjects(0);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *v93 = 136315138;
          *&v93[4] = v53;
          _os_log_error_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_ERROR, "Failed to load IBL specular texture '%s'", v93, 0xCu);
        }

        goto LABEL_88;
      }

      re::AssetManager::assetHandle(this, "engine:studio_lighting_mrmode_specmap.ktx", v93);
      v56 = v76;
      v57 = *(v76 + 72);
      *(v76 + 72) = *v93;
      *v93 = v57;
      v58 = *(v56 + 11);
      *(v56 + 11) = v94;
      v94 = v58;
      re::AssetHandle::~AssetHandle(v93);
      re::AssetHandle::AssetHandle(v68, (v76 + 72));
      re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v55, v68, 1);
      re::AssetHandle::~AssetHandle(v68);
      if (v55[22])
      {
        CStringPtr = CFStringGetCStringPtr(v55[22], 0x8000100u);
        re::DynamicString::operator=((v76 + 96), v93);
        if (*v93)
        {
          if (v93[8])
          {
            (*(**v93 + 40))();
          }
        }
      }
    }

    re::AssetManager::assetHandle(this, "engine:studio_lighting_mrmode.reibl", v93);
    *a3 = *v93;
    memset(v93, 0, sizeof(v93));
    *(a3 + 2) = v94;
    v94 = 0;
    re::AssetHandle::~AssetHandle(v93);
    v60 = v76;
    re::AssetHandle::AssetHandle(v67, a3);
    re::AssetManager::assignCompiledAssetDataToAssetHandle(this, v60, v67, 1);
    re::AssetHandle::~AssetHandle(v67);
    v76 = 0;
LABEL_88:
    v62 = v66;
    if (*v95 && (v95[8] & 1) != 0)
    {
      (*(**v95 + 40))();
    }

LABEL_91:
    if (v97 && (BYTE8(v97) & 1) != 0)
    {
      (*(*v97 + 40))();
    }

LABEL_94:
    if (v71 && (v72 & 1) != 0)
    {
      (*(*v71 + 40))();
    }

    if (v74)
    {
    }

    if (v112)
    {
      if (v113)
      {
        (*(*v112 + 40))();
        v113 = 0;
        v114 = 0;
      }

      v112 = 0;
    }

LABEL_104:
    if (v117 != v119)
    {
      (*(*v116 + 40))(v116);
    }

    if (*(&buf + 1) != v122)
    {
      (*(*buf + 40))(buf);
    }

    re::Deferred<re::AssetHelper::createDefaultImageBasedLightEngineAsset(re::AssetManager &,re::RenderManager *)::$_0>::~Deferred(&v75);
    goto LABEL_109;
  }

  v19 = *re::assetsLogObjects(v10);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    if (v80)
    {
      v20 = *&v81[7];
    }

    else
    {
      v20 = v81;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v20;
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to load .reibl source': %s", &buf, 0xCu);
  }

LABEL_109:
  if (v77[0] & 1) == 0 && v79 && (v80)
  {
    (*(*v79 + 40))();
  }

  if (v83 && (v84 & 1) != 0)
  {
    (*(*v83 + 40))();
  }

  if (v87[0] == 1)
  {
    if (v91)
    {
      if (BYTE8(v91))
      {
        (*(*v91 + 40))();
      }

      v91 = 0u;
      v92 = 0u;
    }

    v8 = &v89;
  }

  return re::DynamicString::deinit(v8);
}

void sub_1E2074B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, id a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a59 && (a60 & 1) != 0)
  {
    (*(*a59 + 40))();
  }

  if (a63 && (a64 & 1) != 0)
  {
    (*(*a63 + 40))();
  }

  if (a25 && (a26 & 1) != 0)
  {
    (*(*a25 + 40))();
  }

  if (a29)
  {
  }

  if (STACK[0x230])
  {
    if (STACK[0x238])
    {
      (*(*STACK[0x230] + 40))(STACK[0x230], STACK[0x240]);
      STACK[0x238] = 0;
      STACK[0x240] = 0;
    }

    STACK[0x230] = 0;
  }

  if (STACK[0x258] != a12)
  {
    (*(*STACK[0x250] + 40))();
  }

  if (STACK[0x458] != v65)
  {
    (*(*STACK[0x450] + 40))();
  }

  re::Deferred<re::AssetHelper::createDefaultImageBasedLightEngineAsset(re::AssetManager &,re::RenderManager *)::$_0>::~Deferred(&a30);
  if (a32 & 1) == 0 && a35 && (a36)
  {
    (*(*a35 + 40))();
  }

  if (a40)
  {
    if (a41)
    {
      (*(*a40 + 40))();
    }
  }

  re::Result<re::AssetPath,re::DetailedError>::~Result(&a44);
  re::AssetHandle::~AssetHandle(v64);
  _Unwind_Resume(a1);
}

re *re::Deferred<re::AssetHelper::createDefaultImageBasedLightEngineAsset(re::AssetManager &,re::RenderManager *)::$_0>::~Deferred(re *a1)
{
  v2 = **a1;
  if (v2)
  {
    v3 = re::globalAllocators(a1)[2];
    re::DynamicString::deinit((v2 + 96));
    re::AssetHandle::~AssetHandle((v2 + 72));
    re::AssetHandle::~AssetHandle((v2 + 48));
    re::AssetHandle::~AssetHandle((v2 + 24));
    re::AssetHandle::~AssetHandle(v2);
    (*(*v3 + 40))(v3, v2);
  }

  return a1;
}

_BYTE *re::Result<re::AssetPath,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 48));
    v2 = 16;
  }

  else
  {
    v2 = 24;
  }

  re::DynamicString::deinit(&a1[v2]);
  return a1;
}

uint64_t re::AssetHelper::attributeResourceMemory(id *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 setOwnerWithIdentity:a2];
    v6 = v5;
    if (!v5)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v7 = *re::assetsLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109378;
      v11[1] = a2;
      v12 = 2080;
      v13 = mach_error_string(v6);
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Metal resource attribution failed for task %d: %s", v11, 0x12u);
    }
  }

  else
  {
    v8 = *re::assetsLogObjects(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Unsupported: attributing resource memory to null taskID", v11, 2u);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197960))
  {
    _MergedGlobals_82 = re::introspect_BlendShapeGroupDefinitionAsset(0);
    __cxa_guard_release(&qword_1EE197960);
  }

  return _MergedGlobals_82;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::FixedArray<re::BlendShapeDefinition>::deinit(v1 + 2);
    re::StringID::destroyString(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197970))
  {
    qword_1EE197968 = re::introspect_BlendTreeDefinitionAsset(0);
    __cxa_guard_release(&qword_1EE197970);
  }

  return qword_1EE197968;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(v1 + 288);
    re::DynamicArray<unsigned long>::deinit(v1 + 248);
    re::DynamicArray<unsigned long>::deinit(v1 + 208);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v1 + 168);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v1 + 120);
    re::DynamicArray<unsigned long>::deinit(v1 + 80);
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v1 + 40);
    re::DynamicArray<unsigned long>::deinit(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void re::BlendTreeDefinition::~BlendTreeDefinition(re::BlendTreeDefinition *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 168);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197980))
  {
    qword_1EE197978 = re::introspect_AnimationSceneAsset(0);
    __cxa_guard_release(&qword_1EE197980);
  }

  return qword_1EE197978;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::AssetHandle::~AssetHandle((a3 + 88));
    re::DynamicArray<re::AnimationSceneEntityData>::deinit(a3 + 40);
    re::StringID::destroyString((a3 + 24));
    re::AssetHandle::~AssetHandle(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::BasicAssetLoader<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>::introspectionType()
{
  if ((atomic_load_explicit(&qword_1EE197990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197990))
  {
    qword_1EE197988 = re::introspect_AssignedMeshDeformationAsset(0);
    __cxa_guard_release(&qword_1EE197990);
  }

  return qword_1EE197988;
}

re *re::internal::destroyPersistent<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::MeshIdentifierAsset>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::TextureImportData::~TextureImportData(id *this)
{
  re::DynamicArray<unsigned long>::deinit((this + 9));

  v2 = this[7];
  if (v2)
  {

    this[7] = 0;
  }

  v3 = *(this + 2);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix_0[v3])(&v4, this);
  }

  *(this + 2) = -1;
}

uint64_t std::__function::__func<re::AssetHelper::registerDefaultAssetTypes(re::AssetManager &,re::ServiceLocator &,re::AssetHelper::RegistrationOptions)::$_0,std::allocator<re::AssetHelper::registerDefaultAssetTypes(re::AssetManager &,re::ServiceLocator &,re::AssetHelper::RegistrationOptions)::$_0>,void ()(re::AssetLoader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(re::AssetLoader *),std::allocator<void (*)(re::AssetLoader *)>,void ()(re::AssetLoader *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CC6130;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(re::AssetLoader *),std::allocator<void (*)(re::AssetLoader *)>,void ()(re::AssetLoader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::AssetCompilerRegistryHelper::deleter(re *this, re::AssetCompiler *a2)
{
  if (this)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return this;
}

uint64_t std::__function::__func<void (*)(re::AssetCompiler *),std::allocator<void (*)(re::AssetCompiler *)>,void ()(re::AssetCompiler *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CC61D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(re::AssetCompiler *),std::allocator<void (*)(re::AssetCompiler *)>,void ()(re::AssetCompiler *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::DynamicString *re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::getCurrentCompiledAssetInfo@<X0>(_anonymous_namespace_ *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetName;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::assetIntrospectionType()
{
  if ((atomic_load_explicit(&qword_1EE1979A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979A0))
  {
    qword_1EE197998 = re::introspect_AnimationScene(0);
    __cxa_guard_release(&qword_1EE1979A0);
  }

  return qword_1EE197998;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v2[0] = &re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetExtension;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

void re::BasicJsonCompiler<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>::compile(char *__s@<X1>, const re::IntrospectionBase *a2@<X3>, uint64_t a3@<X8>)
{
  *v27 = 0u;
  v28 = 0u;
  v32 = 0;
  v29 = &str_67;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v6 = strrchr(__s, 46);
  if (!strcmp(v6 + 1, re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetExtension))
  {
    if ((atomic_load_explicit(&qword_1EE1979A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979A0))
    {
      qword_1EE197998 = re::introspect_AnimationScene(0);
      __cxa_guard_release(&qword_1EE1979A0);
    }

    SourceJson = re::AssetUtilities::readSourceJson(__s, v27, qword_1EE197998, a2, v24);
    if (v24[0])
    {
      v10 = re::globalAllocators(SourceJson);
      v11 = (*(*v10[2] + 32))(v10[2], 112, 8);
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 32) = &str_67;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 40) = 0;
      *(v11 + 96) = 0;
      *(v11 + 104) = 0;
      *(v11 + 8) = *&v27[8];
      *&v27[8] = 0;
      v12 = *v11;
      *v11 = 0;
      *v11 = *v27;
      *(v11 + 16) = v28;
      *v27 = v12;
      *&v28 = 0;
      re::StringID::operator=((v11 + 24), &v28 + 1);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v11 + 40, v30);
      *(v11 + 80) = v33;
      v13 = *(v11 + 96);
      v14 = *(v11 + 104);
      *(v11 + 96) = v35;
      v35 = v13;
      v15 = *(v11 + 88);
      *(v11 + 88) = 0;
      *(v11 + 88) = v34;
      *(v11 + 104) = v36;
      v34 = v15;
      v36 = v14;
      *a3 = 1;
      *(a3 + 8) = v11;
    }

    else
    {
      *&v20 = 100;
      *(&v20 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v21, &v25);
      v16 = v21;
      *(a3 + 8) = v20;
      v17 = v22;
      v18 = v23;
      *a3 = 0;
      *(a3 + 24) = v16;
      *(a3 + 40) = v17;
      *(a3 + 48) = v18;
      if (v24[0] & 1) == 0 && v25 && (v26)
      {
        (*(*v25 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::format("Invalid Asset Path: %s.", &v20, __s);
    v7 = v20;
    v8 = v21;
    *a3 = 0;
    *(a3 + 8) = 200;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v7;
    *(a3 + 40) = v8;
  }

  re::AssetHandle::~AssetHandle(&v34);
  v19 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(v30);
  if (BYTE8(v28))
  {
    if (BYTE8(v28))
    {
    }
  }

  *(&v28 + 1) = 0;
  v29 = &str_67;
  re::AssetHandle::~AssetHandle(v27);
}