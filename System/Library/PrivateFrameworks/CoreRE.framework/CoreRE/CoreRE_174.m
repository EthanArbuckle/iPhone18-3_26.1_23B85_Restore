void re::DynamicArray<re::DebugMapping>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v10 + 4);
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::DebugMapping>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 32) = 0u;
        v6 += 80;
        *(v7 + 68) = 0x7FFFFFFF;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DebugMapping>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DebugMapping>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DebugMapping>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DebugMapping>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::DebugMapping>::resize(a1, a4);
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

void re::DynamicArray<re::DebugMapping>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 80 * v2;
    do
    {
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v3 + 4);
      re::DynamicString::deinit(v3);
      v3 += 10;
      v4 -= 80;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v8 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  if (v10 == 1 && *(&v10 + 1) && (v11 & 1) != 0)
  {
    (*(**(&v10 + 1) + 40))();
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 24;
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
    v10 = *(a2 + 16) + 96 * v6;
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
      if ((*(*(a2 + 16) + 96 * v6) & 0x80000000) != 0)
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

void re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(*(a1 + 16) + v3);
        ++v4;
        v3 += 96;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, unsigned __int8 *a3)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v21, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v18);
  v7 = HIDWORD(v19);
  if (HIDWORD(v19) != 0x7FFFFFFF)
  {
    ++*(a1 + 40);
    v16 = *(a1 + 16) + 96 * v7;
    v10 = v16 + 40;
    re::Optional<re::DynamicString>::operator=(v16 + 40, a3);
    if (*(v16 + 80))
    {
      if ((a3[40] & 1) == 0)
      {
        *(v16 + 80) = 0;
        return v10;
      }
    }

    else
    {
      if ((a3[40] & 1) == 0)
      {
        return v10;
      }

      *(v16 + 80) = 1;
    }

    *(v16 + 81) = a3[41];
    return v10;
  }

  v8 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v19, v18);
  re::DynamicString::DynamicString((v8 + 8), a2);
  v9 = *a3;
  *(v8 + 40) = v9;
  v10 = v8 + 40;
  if (v9 == 1)
  {
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 72) = *(a3 + 4);
    v11 = *(a3 + 2);
    *(v8 + 48) = *(a3 + 1);
    *(a3 + 1) = 0;
    v12 = *(a3 + 3);
    *(a3 + 4) = 0;
    v14 = *(v8 + 56);
    v13 = *(v8 + 64);
    *(v8 + 56) = v11;
    *(v8 + 64) = v12;
    *(a3 + 2) = v14;
    *(a3 + 3) = v13;
  }

  v15 = a3[40];
  *(v8 + 80) = v15;
  if (v15 == 1)
  {
    *(v8 + 81) = a3[41];
  }

  ++*(a1 + 40);
  return v10;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 96 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 24;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = re::DynamicString::setCapacity(&v11, 0);
  v14 = 0uLL;
  *&v15 = 0;
  re::DynamicString::setCapacity(&v13 + 1, 0);
  *(&v17 + 1) = 0;
  v16 = 0uLL;
  *(&v15 + 1) = 0;
  LODWORD(v17) = 0;
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::add(a4, &v11);
  re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(&v11);
  v9 = (*(a4 + 4) + 104 * *(a4 + 2) - 104);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = 104 * a2;
    v10 = a2;
    do
    {
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData((*(v3 + 4) + v9));
      ++v10;
      v9 += 104;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        v7 += 32;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 64) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        v6 += 104;
        *(v7 + 56) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(a1, a4);
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

uint64_t re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    result = *(result + 32);
    v3 = 104 * v2;
    do
    {
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(result);
      result = v4 + 104;
      v3 -= 104;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  DWORD1(v11) = 0x7FFFFFFF;
  v8 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 24;
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
    v10 = *(a2 + 16) + 96 * v6;
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
      if ((*(*(a2 + 16) + 96 * v6) & 0x80000000) != 0)
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

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(*(a1 + 16) + 96 * v7 + 40, a3);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 96 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 24;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ShaderAPIFlags::Values>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<re::ShaderAPIFlags::Values>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

void re::DynamicArray<re::ShaderAPIFlags::Values>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 4 * v4), 4 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<re::ShaderAPIFlags::Values>::add(void *this, _DWORD *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::ShaderAPIFlags::Values>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 4 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::ShaderAPIFlags::Values>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationCommand>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationCommand>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ShaderAPIFlags::Values>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 4 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v11 = 0uLL;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
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
    v10 = *(a2 + 16) + (v6 << 6);
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
      if ((*(*(a2 + 16) + (v6 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

__n128 re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + (v7 << 6) + 40) = *a3;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + (v4 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 16;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::FunctionLink>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FunctionLink>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FunctionLink>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FunctionLink>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::FunctionLink>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::FunctionLink>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::FunctionLink>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::FunctionLink>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::FunctionLink>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FunctionLink>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v12 = 0;
  v8 = re::DynamicString::setCapacity(&v13, 0);
  memset(&v15[1], 0, 24);
  re::DynamicString::setCapacity(v15 + 1, 0);
  v16 = 0u;
  memset(v17, 0, 28);
  memset(&v15[2] + 8, 0, 52);
  *(&v17[1] + 12) = 0x7FFFFFFFLL;
  memset(&v17[2] + 8, 0, 36);
  *(&v17[4] + 12) = 0x7FFFFFFFLL;
  *(&v19 + 1) = 0;
  v18 = 0uLL;
  *(&v17[5] + 1) = 0;
  LODWORD(v19) = 0;
  re::DynamicArray<re::FunctionLink>::add(a4, &v12);
  if (*(&v17[5] + 1))
  {
    if (*(&v19 + 1))
    {
      (*(**(&v17[5] + 1) + 40))(*(&v17[5] + 1));
    }

    *(&v19 + 1) = 0;
    v18 = 0uLL;
    *(&v17[5] + 1) = 0;
    LODWORD(v19) = v19 + 1;
  }

  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v17[2] + 1);
  v9 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v16 + 1);
  if (*&v15[4])
  {
    if (v16)
    {
      (*(**&v15[4] + 40))(v9);
    }

    *&v16 = 0;
    memset(&v15[4], 0, 24);
    ++DWORD2(v15[5]);
  }

  re::AssetHandle::~AssetHandle((&v15[2] + 8));
  if (*(&v15[0] + 1))
  {
    if (v15[1])
    {
      (*(**(&v15[0] + 1) + 40))(*(&v15[0] + 1));
    }

    memset(v15 + 8, 0, 32);
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))(v13);
  }

  v10 = (*(a4 + 4) + 272 * *(a4 + 2) - 272);
  re::introspectionInitElement(a2, a3, a1[6], v10);
  return v10;
}

uint64_t re::IntrospectionDynamicArray<re::FunctionLink>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 272 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 272 * a3;
}

void re::DynamicArray<re::FunctionLink>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = 272 * a2 + 136;
    v10 = a2;
    do
    {
      v11 = (*(v3 + 4) + v9);
      re::DynamicArray<unsigned long>::deinit((v11 + 12));
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v11 + 6);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v11);
      re::DynamicArray<unsigned long>::deinit((v11 - 5));
      re::AssetHandle::~AssetHandle((v11 - 8));
      re::DynamicString::deinit((v11 - 12));
      re::DynamicString::deinit((v11 - 16));
      ++v10;
      v9 += 272;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::FunctionLink>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 272 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0;
        *(v7 + 24) = 0u;
        *(v7 + 8) = 0u;
        v8 = re::DynamicString::setCapacity((v7 + 8), 0);
        *(v7 + 40) = 0u;
        v7 += 40;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 120) = 0u;
        *(v7 + 136) = 0;
        *(v7 + 104) = 0u;
        *(v7 + 88) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0;
        *(v7 + 132) = 0x7FFFFFFF;
        *(v7 + 160) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 144) = 0u;
        *(v7 + 180) = 0x7FFFFFFF;
        *(v7 + 224) = 0;
        *(v7 + 200) = 0;
        *(v7 + 208) = 0;
        *(v7 + 192) = 0;
        v6 += 272;
        *(v7 + 216) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

uint64_t *re::DynamicArray<re::FunctionLink>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FunctionLink>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 272 * v4;
  *v5 = *a2;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 32) = *(a2 + 32);
  v6 = *(a2 + 16);
  *(v5 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 32) = 0;
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 64) = *(a2 + 64);
  v10 = *(a2 + 48);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v11 = *(a2 + 56);
  *(a2 + 64) = 0;
  v13 = *(v5 + 48);
  v12 = *(v5 + 56);
  *(v5 + 48) = v10;
  *(v5 + 56) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v12;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v14 = *(v5 + 72);
  *(v5 + 72) = 0;
  *(v5 + 72) = *(a2 + 72);
  *(a2 + 72) = v14;
  v15 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v15;
  *(v5 + 128) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  *(v5 + 120) = 0;
  v16 = *(a2 + 104);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 104) = v16;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v17 = *(v5 + 112);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 112) = v17;
  v18 = *(v5 + 128);
  *(v5 + 128) = *(a2 + 128);
  *(a2 + 128) = v18;
  ++*(a2 + 120);
  ++*(v5 + 120);
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0;
  *(v5 + 136) = 0u;
  *(v5 + 172) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v5 + 136), (a2 + 136));
  *(v5 + 184) = 0u;
  v5 += 184;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, (a2 + 184));
  *(v5 + 80) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  v20 = *(a2 + 240);
  *(v5 + 48) = *(a2 + 232);
  *(v5 + 56) = v20;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v21 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 248);
  *(a2 + 248) = v21;
  v22 = *(v5 + 80);
  *(v5 + 80) = *(a2 + 264);
  *(a2 + 264) = v22;
  ++*(a2 + 256);
  ++*(v5 + 72);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::FunctionLink>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::FunctionLink>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FunctionLink>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::FunctionLink>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 272 * v8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 232);
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v10 + v9 + 184));
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v10 + v9 + 136));
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 96);
        re::AssetHandle::~AssetHandle((v10 + v9 + 72));
        re::DynamicString::deinit((v10 + v9 + 40));
        re::DynamicString::deinit((v10 + v9 + 8));
        v9 += 272;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::FunctionLink>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::FunctionLink>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::FunctionLink>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 272 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 272;
        v15 -= 272;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 272 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 272 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::RenderGraphOptimizerProcessor::init(re::RenderGraphOptimizerProcessor *this, re::RenderGraphCompiled *a2)
{
  v5 = a2;
  v138 = *MEMORY[0x1E69E9840];
  *(a2 + 69) = 0;
  ++*(a2 + 140);
  re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::resize(this + 17, *(*(a2 + 37) + 16));
  v125 = 0;
  v7 = *(v5 + 37);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v2 = 48;
    while (1)
    {
      v10 = v9;
      v11 = *(this + 19);
      if (v11 <= v9)
      {
LABEL_244:
        v124[0] = 0;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v133 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v127 = 136315906;
        *v128 = "operator[]";
        *&v128[8] = 1024;
        *&v128[10] = 789;
        v129 = 2048;
        v130 = v10;
        v131 = 2048;
        v132 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_245:
        v124[0] = 0;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v133 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v127 = 136315906;
        *v128 = "operator[]";
        *&v128[8] = 1024;
        *&v128[10] = 789;
        v129 = 2048;
        v130 = v10;
        v131 = 2048;
        v132 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_246:
        v124[0] = 0;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v133 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v127 = 136315906;
        *v128 = "operator[]";
        *&v128[8] = 1024;
        *&v128[10] = 789;
        v129 = 2048;
        v130 = v10;
        v131 = 2048;
        v132 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_247;
      }

      v12 = *(this + 21);
      v13 = v12 + 88 * v10;
      *(v13 + 64) = 0;
      ++*(v13 + 72);
      v10 = v125;
      if (v11 <= v125)
      {
        goto LABEL_245;
      }

      v14 = v12 + 88 * v125;
      *(v14 + 24) = 0;
      ++*(v14 + 32);
      v10 = v125;
      if (v8 <= v125)
      {
        goto LABEL_246;
      }

      v15 = *(v7 + 32) + 48 * v125;
      if (*v15 == 1)
      {
        break;
      }

      if (!*v15)
      {
        v124[0] = *(v15 + 8) >> 1;
        v124[1] = *(v15 + 24);
        v16 = re::RenderGraphCompiled::targetDescription(v5, v124);
        v11 = v125;
        v10 = *(this + 19);
        if (v10 <= v125)
        {
          goto LABEL_264;
        }

        *(*(this + 21) + 88 * v125) = *v16 < 2;
        v17 = *v16;
LABEL_13:
        if (v17 == 2)
        {
          re::DynamicArray<int>::add(v5 + 67, &v125);
        }
      }

      v9 = v125 + 1;
      v125 = v9;
      v7 = *(v5 + 37);
      v8 = *(v7 + 16);
      if (v9 >= v8)
      {
        goto LABEL_16;
      }
    }

    v8 = *(v15 + 28);
    v18 = *(v5 + 39);
    v3 = *(v18 + 16);
    if (v3 <= v8)
    {
      goto LABEL_265;
    }

    if (v11 <= v125)
    {
      goto LABEL_266;
    }

    v19 = *(v18 + 32);
    v20 = 48 * v8;
    *(v12 + 88 * v125) = *(v19 + v20) < 2u;
    v17 = *(v19 + v20);
    goto LABEL_13;
  }

LABEL_16:
  re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::resize(this + 12, *(v5 + 44));
  v11 = *(v5 + 44);
  if (!v11)
  {
    return;
  }

  v10 = 0;
  v122 = this + 8;
  v3 = 88;
  v8 = 1;
  v123 = v5;
  do
  {
    if (v11 <= v10)
    {
      goto LABEL_255;
    }

    v11 = *(this + 14);
    if (v11 <= v10)
    {
LABEL_256:
      v124[0] = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      *v128 = "operator[]";
      *&v128[8] = 1024;
      *&v128[10] = 789;
      v129 = 2048;
      v130 = v10;
      v131 = 2048;
      v132 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_257:
      v124[0] = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      *v128 = "operator[]";
      *&v128[8] = 1024;
      *&v128[10] = 789;
      v129 = 2048;
      v130 = v4;
      v131 = 2048;
      v132 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_258:
      v124[0] = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      *v128 = "operator[]";
      *&v128[8] = 1024;
      *&v128[10] = 789;
      v129 = 2048;
      v130 = v4;
      v131 = 2048;
      v132 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_259:
      v124[0] = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      *v128 = "operator[]";
      *&v128[8] = 1024;
      *&v128[10] = 789;
      v129 = 2048;
      v130 = v4;
      v131 = 2048;
      v132 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_260:
      v124[0] = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      *v128 = "operator[]";
      *&v128[8] = 1024;
      *&v128[10] = 789;
      v129 = 2048;
      v130 = v4;
      v131 = 2048;
      v132 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_261:
      v124[0] = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      *v128 = "operator[]";
      *&v128[8] = 1024;
      *&v128[10] = 789;
      v129 = 2048;
      v130 = v4;
      v131 = 2048;
      v132 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_262:
      v124[0] = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v127 = 136315906;
      *v128 = "operator[]";
      *&v128[8] = 1024;
      *&v128[10] = 789;
      v129 = 2048;
      v130 = v4;
      v131 = 2048;
      v132 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_263;
    }

    v22 = *(v5 + 46) + 200 * v10;
    v23 = *(this + 16) + 88 * v10;
    *(v23 + 64) = 0;
    ++*(v23 + 72);
    *(v23 + 24) = 0;
    ++*(v23 + 32);
    *v23 = *(v22 + 168);
    v24 = *(v22 + 56);
    if (!v24)
    {
      goto LABEL_240;
    }

    v11 = *(v22 + 72);
    v25 = v11 + (v24 << 6);
    do
    {
      v26 = *(v11 + 4);
      v4 = *(v11 + 52);
      switch(v26)
      {
        case 0:
        case 10:
          v27 = *(v23 + 64);
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = *(v23 + 80);
          v29 = 12 * v27;
          do
          {
            if (*v28 == v4)
            {
              goto LABEL_85;
            }

            v28 += 3;
            v29 -= 12;
          }

          while (v29);
LABEL_27:
          *(&v133 + 4) = 0;
          LODWORD(v133) = v4;
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 48), &v133);
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_243;
          }

          v30 = *(this + 21);
          *(&v133 + 4) = 0;
          LODWORD(v133) = v10;
          v31 = (v30 + 88 * v4 + 8);
          goto LABEL_84;
        case 1:
          v50 = *(v23 + 24);
          if (!v50)
          {
            goto LABEL_63;
          }

          v51 = (*(v23 + 40) + 8);
          v52 = 12 * v50;
          while (*(v51 - 2) != v4)
          {
            v51 += 3;
            v52 -= 12;
            if (!v52)
            {
LABEL_63:
              LODWORD(v133) = *(v11 + 52);
              DWORD1(v133) = *v11;
              DWORD2(v133) = 1;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
              v2 = *(this + 19);
              if (v2 > v4)
              {
                v36 = *(this + 21) + 88 * v4;
                LODWORD(v133) = v10;
                DWORD1(v133) = *v11;
                DWORD2(v133) = 1;
                goto LABEL_83;
              }

LABEL_252:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_253:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_254:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_255:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v10;
              v131 = 2048;
              v132 = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_256;
            }
          }

          v81 = *v51;
          if (!v81)
          {
            goto LABEL_138;
          }

          v82 = *(v5 + 37);
          v8 = *(v82 + 16);
          if (v8 <= v4)
          {
            goto LABEL_268;
          }

          v83 = *&v122[8 * v81];
          re::StringID::StringID(&v127, (*(v82 + 32) + 48 * v4 + 8));
          re::DynamicString::format("Action %u attempted to both Write and %s to resource %u (%s). Will use Write.", &v133, v10, v83, v4, *&v128[4]);
          re::RenderGraphCompiled::addError(v5, &v133);
          v84 = v133;
          v8 = 1;
          if (v133)
          {
            if (BYTE8(v133))
            {
              v84 = (*(*v133 + 40))(v133, v134);
            }

            v133 = 0u;
            v134 = 0u;
          }

          if (v127)
          {
            if (v127)
            {
            }
          }

LABEL_138:
          *v51 = 1;
          v85 = *v11;
          *(v51 - 1) = *v11;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_261;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (i = *v2; v10 != i; i = v87)
          {
            v87 = *(v2 + 12);
            v2 += 12;
          }

          if (*(v2 + 8))
          {
            re::DynamicString::format("Action %u shouldn't have in edge tag.", &v133, v10);
            re::RenderGraphCompiled::addError(v5, &v133);
            if (v133)
            {
              if (BYTE8(v133))
              {
                (*(*v133 + 40))(v133, v134);
              }
            }

            v85 = *v11;
          }

          *(v2 + 4) = v85;
          *(v2 + 8) = 1;
          goto LABEL_85;
        case 2:
          v40 = *(v23 + 24);
          if (!v40)
          {
            goto LABEL_45;
          }

          v41 = (*(v23 + 40) + 8);
          v42 = 12 * v40;
          while (*(v41 - 2) != v4)
          {
            v41 += 3;
            v42 -= 12;
            if (!v42)
            {
LABEL_45:
              LODWORD(v133) = *(v11 + 52);
              *(&v133 + 4) = 0x400000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
              v2 = *(this + 19);
              if (v2 <= v4)
              {
                goto LABEL_251;
              }

LABEL_70:
              v36 = *(this + 21) + 88 * v4;
              LODWORD(v133) = v10;
              *(&v133 + 4) = 0x400000000;
              goto LABEL_83;
            }
          }

          if (*v41 <= 4 && ((1 << *v41) & 0x19) != 0)
          {
            goto LABEL_99;
          }

          v113 = *(v5 + 37);
          v8 = *(v113 + 16);
          if (v8 <= v4)
          {
            goto LABEL_270;
          }

          v114 = *&v122[8 * *v41];
          re::StringID::StringID(&v127, (*(v113 + 32) + 48 * v4 + 8));
          re::DynamicString::format("Action %u attempted to both WriteDepth and %s to resource %u (%s). Will use WriteDepthStencil.", &v133, v10, v114, v4, *&v128[4]);
          re::RenderGraphCompiled::addError(v5, &v133);
          v115 = v133;
          v8 = 1;
          if (v133)
          {
            if (BYTE8(v133))
            {
              v115 = (*(*v133 + 40))(v133, v134);
            }

            v133 = 0u;
            v134 = 0u;
          }

          if (v127)
          {
            if (v127)
            {
            }
          }

LABEL_99:
          *v41 = 4;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_257;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (j = *v2; v10 != j; j = v67)
          {
            v67 = *(v2 + 12);
            v2 += 12;
          }

          v99 = *(v2 + 8);
          v95 = v99 > 4;
          v100 = (1 << v99) & 0x19;
          if (!v95 && v100 != 0)
          {
            goto LABEL_174;
          }

          v102 = v10;
          goto LABEL_237;
        case 3:
          v53 = *(v23 + 24);
          if (!v53)
          {
            goto LABEL_69;
          }

          v54 = (*(v23 + 40) + 8);
          v55 = 12 * v53;
          while (*(v54 - 2) != v4)
          {
            v54 += 3;
            v55 -= 12;
            if (!v55)
            {
LABEL_69:
              LODWORD(v133) = *(v11 + 52);
              *(&v133 + 4) = 0x400000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
              v2 = *(this + 19);
              if (v2 <= v4)
              {
                goto LABEL_253;
              }

              goto LABEL_70;
            }
          }

          if (*v54 <= 4 && ((1 << *v54) & 0x15) != 0)
          {
            goto LABEL_146;
          }

          v116 = *(v5 + 37);
          v8 = *(v116 + 16);
          if (v8 <= v4)
          {
            goto LABEL_271;
          }

          v117 = *&v122[8 * *v54];
          re::StringID::StringID(&v127, (*(v116 + 32) + 48 * v4 + 8));
          re::DynamicString::format("Action %u attempted to both WriteStencil and %s to resource %u (%s). Will use WriteDepthStencil.", &v133, v10, v117, v4, *&v128[4]);
          re::RenderGraphCompiled::addError(v5, &v133);
          v118 = v133;
          v8 = 1;
          if (v133)
          {
            if (BYTE8(v133))
            {
              v118 = (*(*v133 + 40))(v133, v134);
            }

            v133 = 0u;
            v134 = 0u;
          }

          if (v127)
          {
            if (v127)
            {
            }
          }

LABEL_146:
          *v54 = 4;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_260;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (k = *v2; v10 != k; k = v90)
          {
            v90 = *(v2 + 12);
            v2 += 12;
          }

          v103 = *(v2 + 8);
          v95 = v103 > 4;
          v104 = (1 << v103) & 0x15;
          if (!v95 && v104 != 0)
          {
            goto LABEL_174;
          }

          v102 = v10;
LABEL_237:
          re::DynamicString::format("Action %u has incorrect edges.", &v133, v102);
          re::RenderGraphCompiled::addError(v5, &v133);
          if (v133 && (BYTE8(v133) & 1) != 0)
          {
            (*(*v133 + 40))(v133, v134);
          }

LABEL_174:
          v106 = 4;
          goto LABEL_190;
        case 4:
        case 11:
          v32 = *(v23 + 24);
          if (!v32)
          {
            goto LABEL_33;
          }

          v33 = *(v23 + 40);
          v34 = 12 * v32;
          do
          {
            if (*v33 == v4)
            {
              goto LABEL_85;
            }

            v33 += 3;
            v34 -= 12;
          }

          while (v34);
LABEL_33:
          *(&v133 + 4) = 0;
          LODWORD(v133) = v4;
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
          v2 = *(this + 19);
          if (v2 > v4)
          {
            v35 = *(this + 21);
            *(&v133 + 4) = 0;
            v36 = v35 + 88 * v4;
            LODWORD(v133) = v10;
            goto LABEL_83;
          }

          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_243:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_244;
        case 5:
          v59 = *(v23 + 24);
          if (!v59)
          {
            goto LABEL_81;
          }

          v60 = *(v23 + 40);
          v61 = 12 * v59;
          do
          {
            if (*v60 == v4)
            {
              goto LABEL_85;
            }

            v60 += 3;
            v61 -= 12;
          }

          while (v61);
LABEL_81:
          LODWORD(v133) = *(v11 + 52);
          *(&v133 + 4) = 0x900000000;
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
          v2 = *(this + 19);
          if (v2 > v4)
          {
            v36 = *(this + 21) + 88 * v4;
            LODWORD(v133) = v10;
            *(&v133 + 4) = 0x900000000;
            goto LABEL_83;
          }

          goto LABEL_249;
        case 6:
          v46 = *(v23 + 24);
          if (!v46)
          {
            goto LABEL_57;
          }

          v47 = (*(v23 + 40) + 8);
          v48 = 12 * v46;
          while (*(v47 - 2) != v4)
          {
            v47 += 3;
            v48 -= 12;
            if (!v48)
            {
LABEL_57:
              LODWORD(v133) = *(v11 + 52);
              DWORD1(v133) = *v11;
              DWORD2(v133) = 5;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
              v2 = *(this + 19);
              if (v2 > v4)
              {
                v49 = *(this + 21) + 88 * v4;
                LODWORD(v133) = v10;
                DWORD1(v133) = *v11;
                DWORD2(v133) = 5;
                re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v49 + 48), &v133);
                goto LABEL_197;
              }

LABEL_248:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_249:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_250:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_251:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_252;
            }
          }

          v74 = *v47;
          if (!v74)
          {
            goto LABEL_125;
          }

          v75 = *(v5 + 37);
          v8 = *(v75 + 16);
          if (v8 <= v4)
          {
            goto LABEL_267;
          }

          v76 = *&v122[8 * v74];
          re::StringID::StringID(&v127, (*(v75 + 32) + 48 * v4 + 8));
          re::DynamicString::format("Action %u attempted to both WriteResolve and %s to resource %u (%s). Will use WriteResolve.", &v133, v10, v76, v4, *&v128[4]);
          re::RenderGraphCompiled::addError(v5, &v133);
          v77 = v133;
          v8 = 1;
          if (v133)
          {
            if (BYTE8(v133))
            {
              v77 = (*(*v133 + 40))(v133, v134);
            }

            v133 = 0u;
            v134 = 0u;
          }

          if (v127)
          {
            if (v127)
            {
            }
          }

LABEL_125:
          *v47 = 5;
          v78 = *v11;
          *(v47 - 1) = *v11;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_262;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (m = *v2; v10 != m; m = v80)
          {
            v80 = *(v2 + 12);
            v2 += 12;
          }

          if (*(v2 + 8))
          {
            re::DynamicString::format("Action %u shouldn't have in edge tag.", &v133, v10);
            re::RenderGraphCompiled::addError(v123, &v133);
            if (v133 && (BYTE8(v133) & 1) != 0)
            {
              (*(*v133 + 40))(v133, v134);
            }

            v78 = *v11;
          }

          *(v2 + 4) = v78;
          *(v2 + 8) = 5;
LABEL_197:
          v5 = v123;
          goto LABEL_85;
        case 7:
          v56 = *(v23 + 24);
          if (!v56)
          {
            goto LABEL_75;
          }

          v57 = (*(v23 + 40) + 8);
          v58 = 12 * v56;
          while (*(v57 - 2) != v4)
          {
            v57 += 3;
            v58 -= 12;
            if (!v58)
            {
LABEL_75:
              LODWORD(v133) = *(v11 + 52);
              *(&v133 + 4) = 0x800000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
              v2 = *(this + 19);
              if (v2 <= v4)
              {
                goto LABEL_254;
              }

LABEL_76:
              v36 = *(this + 21) + 88 * v4;
              LODWORD(v133) = v10;
              *(&v133 + 4) = 0x800000000;
              goto LABEL_83;
            }
          }

          if (*v57 <= 8 && ((1 << *v57) & 0x181) != 0)
          {
            goto LABEL_154;
          }

          v119 = *(v5 + 37);
          v8 = *(v119 + 16);
          if (v8 <= v4)
          {
            goto LABEL_273;
          }

          v120 = *&v122[8 * *v57];
          re::StringID::StringID(&v127, (*(v119 + 32) + 48 * v4 + 8));
          re::DynamicString::format("Action %u attempted to both WriteResolveDepth and %s to resource %u (%s). Will use WriteResolveDepthStencil.", &v133, v10, v120, v4, *&v128[4]);
          re::RenderGraphCompiled::addError(v5, &v133);
          v121 = v133;
          v8 = 1;
          if (v133)
          {
            if (BYTE8(v133))
            {
              v121 = (*(*v133 + 40))(v133, v134);
            }

            v133 = 0u;
            v134 = 0u;
          }

          if (v127)
          {
            if (v127)
            {
            }
          }

LABEL_154:
          *v57 = 8;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_258;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (n = *v2; v10 != n; n = v93)
          {
            v93 = *(v2 + 12);
            v2 += 12;
          }

          v107 = *(v2 + 8);
          v95 = v107 > 8;
          v108 = (1 << v107) & 0x181;
          if (!v95 && v108 != 0)
          {
            goto LABEL_184;
          }

          v98 = v10;
          goto LABEL_181;
        case 8:
          v37 = *(v23 + 24);
          if (!v37)
          {
            goto LABEL_39;
          }

          v38 = (*(v23 + 40) + 8);
          v39 = 12 * v37;
          while (*(v38 - 2) != v4)
          {
            v38 += 3;
            v39 -= 12;
            if (!v39)
            {
LABEL_39:
              LODWORD(v133) = *(v11 + 52);
              *(&v133 + 4) = 0x800000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
              v2 = *(this + 19);
              if (v2 > v4)
              {
                goto LABEL_76;
              }

LABEL_247:
              v124[0] = 0;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v133 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v127 = 136315906;
              *v128 = "operator[]";
              *&v128[8] = 1024;
              *&v128[10] = 789;
              v129 = 2048;
              v130 = v4;
              v131 = 2048;
              v132 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_248;
            }
          }

          if (*v38 <= 8 && ((1 << *v38) & 0x141) != 0)
          {
            goto LABEL_91;
          }

          v110 = *(v5 + 37);
          v8 = *(v110 + 16);
          if (v8 <= v4)
          {
            goto LABEL_272;
          }

          v111 = *&v122[8 * *v38];
          re::StringID::StringID(&v127, (*(v110 + 32) + 48 * v4 + 8));
          re::DynamicString::format("Action %u attempted to both WriteResolveStencil and %s to resource %u (%s). Will use WriteResolveDepthStencil.", &v133, v10, v111, v4, *&v128[4]);
          re::RenderGraphCompiled::addError(v5, &v133);
          v112 = v133;
          v8 = 1;
          if (v133)
          {
            if (BYTE8(v133))
            {
              v112 = (*(*v133 + 40))(v133, v134);
            }

            v133 = 0u;
            v134 = 0u;
          }

          if (v127)
          {
            if (v127)
            {
            }
          }

LABEL_91:
          *v38 = 8;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_259;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (ii = *v2; v10 != ii; ii = v64)
          {
            v64 = *(v2 + 12);
            v2 += 12;
          }

          v94 = *(v2 + 8);
          v95 = v94 > 8;
          v96 = (1 << v94) & 0x141;
          if (v95 || v96 == 0)
          {
            v98 = v10;
LABEL_181:
            re::DynamicString::format("Action %u has incorrect edges.", &v133, v98);
            re::RenderGraphCompiled::addError(v5, &v133);
            if (v133 && (BYTE8(v133) & 1) != 0)
            {
              (*(*v133 + 40))(v133, v134);
            }
          }

LABEL_184:
          v106 = 8;
          goto LABEL_190;
        case 9:
          v43 = *(v23 + 24);
          if (!v43)
          {
            goto LABEL_51;
          }

          v44 = (*(v23 + 40) + 8);
          v45 = 12 * v43;
          break;
        case 12:
          goto LABEL_85;
        default:
          goto LABEL_274;
      }

      do
      {
        if (*(v44 - 2) == v4)
        {
          v68 = *v44;
          if (v68)
          {
            v69 = *(v5 + 37);
            v8 = *(v69 + 16);
            if (v8 <= v4)
            {
              goto LABEL_269;
            }

            v70 = *&v122[8 * v68];
            re::StringID::StringID(&v127, (*(v69 + 32) + 48 * v4 + 8));
            re::DynamicString::format("Action %u attempted to both QueryVisibility and %s to resource %u (%s). Will use QueryVisibility.", &v133, v10, v70, v4, *&v128[4]);
            re::RenderGraphCompiled::addError(v5, &v133);
            v71 = v133;
            v8 = 1;
            if (v133)
            {
              if (BYTE8(v133))
              {
                v71 = (*(*v133 + 40))(v133, v134);
              }

              v133 = 0u;
              v134 = 0u;
            }

            if (v127)
            {
              if (v127)
              {
              }
            }
          }

          *v44 = 10;
          v2 = *(this + 19);
          if (v2 > v4)
          {
            v2 = *(*(this + 21) + 88 * v4 + 80);
            for (jj = *v2; v10 != jj; jj = v73)
            {
              v73 = *(v2 + 12);
              v2 += 12;
            }

            if (*(v2 + 8))
            {
              re::DynamicString::format("Action %u shouldn't have in edge tag.", &v133, v10);
              re::RenderGraphCompiled::addError(v5, &v133);
              if (v133)
              {
                if (BYTE8(v133))
                {
                  (*(*v133 + 40))(v133, v134);
                }
              }
            }

            v106 = 10;
LABEL_190:
            *(v2 + 8) = v106;
            goto LABEL_85;
          }

LABEL_263:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_264:
          v126 = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v11;
          v131 = 2048;
          v132 = v10;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_265:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v8;
          v131 = 2048;
          v132 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_266:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v10;
          v131 = 2048;
          v132 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_267:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_268:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_269:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_270:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_271:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_272:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_273:
          v124[0] = 0;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v127 = 136315906;
          *v128 = "operator[]";
          *&v128[8] = 1024;
          *&v128[10] = 789;
          v129 = 2048;
          v130 = v4;
          v131 = 2048;
          v132 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_274:
          re::internal::assertLog(5, v21, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType (%d)", "!Unreachable code", "init", 279, v26);
          _os_crash();
          __break(1u);
        }

        v44 += 3;
        v45 -= 12;
      }

      while (v45);
LABEL_51:
      LODWORD(v133) = *(v11 + 52);
      *(&v133 + 4) = 0xA00000000;
      re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v133);
      v2 = *(this + 19);
      if (v2 <= v4)
      {
        goto LABEL_250;
      }

      v36 = *(this + 21) + 88 * v4;
      LODWORD(v133) = v10;
      *(&v133 + 4) = 0xA00000000;
LABEL_83:
      v31 = (v36 + 48);
LABEL_84:
      re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(v31, &v133);
LABEL_85:
      v11 += 64;
    }

    while (v11 != v25);
LABEL_240:
    ++v10;
    v11 = *(v5 + 44);
  }

  while (v10 < v11);
}

void *re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::setCapacity(result, a2);
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

uint64_t re::RenderGraphOptimizerProcessor::process(re::RenderGraphOptimizerProcessor *this, re::RenderGraphCompiled *a2)
{
  v9 = this;
  v126 = *MEMORY[0x1E69E9840];
  re::RenderGraphOptimizerProcessor::init(this, a2);
  v11 = *(v9 + 19);
  LOBYTE(v121) = 0;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v13 = *(v9 + 14);
  LOBYTE(v121) = 0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v105 = 0;
  v102[1] = 0;
  v103 = 0;
  v102[0] = 0;
  v104 = 0;
  v15 = *(v9 + 14) + *(v9 + 19);
  if (v15)
  {
    v14 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v102, v15);
  }

  v100 = a2;
  v16 = *(a2 + 69);
  if (v16)
  {
    v17 = *(a2 + 71);
    v3 = 4 * v16;
    v18 = 1;
    do
    {
      v19 = *v17;
      v2 = v110;
      if (v110 <= v19)
      {
        goto LABEL_205;
      }

      *(v111 + v19) = 1;
      LODWORD(v121) = v19;
      BYTE4(v121) = 1;
      v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v102, &v121);
      ++v17;
      v3 -= 4;
    }

    while (v3);
  }

  v20 = v103;
  if (v103)
  {
    v19 = 88;
    v3 = 1;
    do
    {
      v21 = v105 + 8 * v20;
      v18 = *(v21 - 8);
      LOBYTE(v21) = *(v21 - 4);
      v103 = v20 - 1;
      ++v104;
      if (v21)
      {
        v4 = *(v9 + 19);
        if (v4 <= v18)
        {
          goto LABEL_220;
        }

        v22 = *(v9 + 21) + 88 * v18;
        v23 = *(v22 + 64);
        if (v23)
        {
          v18 = *(v22 + 80);
          v4 = v18 + 12 * v23;
          while (1)
          {
            v5 = *v18;
            v6 = v107;
            if (v107 <= v5)
            {
              goto LABEL_199;
            }

            if ((*(v108 + v5) & 1) == 0)
            {
              *(v108 + v5) = 1;
              LODWORD(v121) = v5;
              BYTE4(v121) = 0;
              v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v102, &v121);
            }

            v6 = *(v9 + 14);
            if (v6 <= v5)
            {
LABEL_200:
              *buf = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              v54 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v113 = 136315906;
              *&v113[4] = "operator[]";
              *&v113[12] = 1024;
              *&v113[14] = 789;
              *&v113[18] = 2048;
              *&v113[20] = v5;
              *&v113[28] = 2048;
              *&v113[30] = v6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_201:
              v101[0] = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              v9 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v115 = 1024;
              v116 = 468;
              v117 = 2048;
              v118 = v4;
              v119 = 2048;
              v120 = v54;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_202:
              v101[0] = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v115 = 1024;
              v116 = 468;
              v117 = 2048;
              v118 = v4;
              v119 = 2048;
              v120 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_203:
              *buf = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v113 = 136315906;
              *&v113[4] = "operator[]";
              *&v113[12] = 1024;
              *&v113[14] = 468;
              *&v113[18] = 2048;
              *&v113[20] = v5;
              *&v113[28] = 2048;
              *&v113[30] = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_204:
              v101[0] = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v115 = 1024;
              v116 = 789;
              v117 = 2048;
              v118 = v4;
              v119 = 2048;
              v120 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_205:
              *buf = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v113 = 136315906;
              *&v113[4] = "operator[]";
              *&v113[12] = 1024;
              *&v113[14] = 468;
              *&v113[18] = 2048;
              *&v113[20] = v19;
              *&v113[28] = 2048;
              *&v113[30] = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_206:
              v101[0] = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v115 = 1024;
              v116 = 789;
              v117 = 2048;
              v118 = v4;
              v119 = 2048;
              v120 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_207:
              v112 = 0;
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v121 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v115 = 1024;
              v116 = 789;
              v117 = 2048;
              v118 = v4;
              v119 = 2048;
              v120 = v2;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_208;
            }

            v24 = *(v9 + 16) + 88 * v5;
            v25 = *(v24 + 24);
            if (v25)
            {
              break;
            }

LABEL_51:
            v18 += 12;
            if (v18 == v4)
            {
              goto LABEL_60;
            }
          }

          v5 = *(v24 + 40) + 8;
          v6 = 12 * v25;
          while (2)
          {
            v26 = *(v18 + 8);
            v27 = *v5;
            if (v26 > 6)
            {
              if (v26 == 7)
              {
                if (v27 != 3)
                {
                  goto LABEL_50;
                }

                goto LABEL_47;
              }

              v30 = v26 == 8 || v26 == 10;
              if (v30 && (v27 - 2) < 3)
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v26 != 1 && v26 != 5)
              {
                if (v26 != 6 || v27 != 2)
                {
                  goto LABEL_50;
                }

LABEL_47:
                v7 = *(v5 - 8);
                v2 = v110;
                if (v110 <= v7)
                {
                  *buf = 0;
                  v124 = 0u;
                  v125 = 0u;
                  v122 = 0u;
                  v123 = 0u;
                  v121 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v113 = 136315906;
                  *&v113[4] = "operator[]";
                  *&v113[12] = 1024;
                  *&v113[14] = 468;
                  *&v113[18] = 2048;
                  *&v113[20] = v7;
                  *&v113[28] = 2048;
                  *&v113[30] = v2;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_146:
                  v2 = 0;
                  goto LABEL_147;
                }

                if ((*(v111 + v7) & 1) == 0)
                {
                  *(v111 + v7) = 1;
                  LODWORD(v121) = v7;
                  BYTE4(v121) = 1;
                  v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v102, &v121);
                }

                goto LABEL_50;
              }

              if ((v27 - 2) < 3)
              {
                goto LABEL_47;
              }

              if (v27 == 1 && *(v18 + 4) == *(v5 - 4))
              {
                goto LABEL_47;
              }
            }

LABEL_50:
            v5 += 12;
            v6 -= 12;
            if (!v6)
            {
              goto LABEL_51;
            }

            continue;
          }
        }
      }

      else
      {
        v2 = *(v9 + 14);
        if (v2 <= v18)
        {
          goto LABEL_221;
        }

        v32 = *(v9 + 16) + 88 * v18;
        v33 = *(v32 + 64);
        if (v33)
        {
          v34 = *(v32 + 80);
          v4 = 12 * v33;
          do
          {
            v18 = *v34;
            v2 = v110;
            if (v110 <= v18)
            {
              goto LABEL_198;
            }

            if ((*(v111 + v18) & 1) == 0)
            {
              *(v111 + v18) = 1;
              LODWORD(v121) = v18;
              BYTE4(v121) = 1;
              v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v102, &v121);
            }

            v34 += 3;
            v4 -= 12;
          }

          while (v4);
        }
      }

LABEL_60:
      v20 = v103;
    }

    while (v103);
  }

  LODWORD(v101[0]) = 0;
  v19 = *(v9 + 14);
  if (v19)
  {
    v2 = 0;
    v18 = 88;
    v4 = 1;
    do
    {
      v3 = v2;
      if (v19 <= v2)
      {
        goto LABEL_210;
      }

      v35 = *(v9 + 16) + 88 * v2;
      v5 = v107;
      if (*v35 == 1)
      {
        if (v107 <= v2)
        {
          goto LABEL_218;
        }

        *(v108 + v2) = 1;
        v36 = *(v35 + 24);
        if (v36)
        {
          v37 = *(v35 + 40);
          v6 = v110;
          v38 = v111;
          v39 = 12 * v36;
          while (1)
          {
            v7 = *v37;
            if (v6 <= v7)
            {
              break;
            }

            *(v38 + v7) = 1;
            v37 += 3;
            v39 -= 12;
            if (!v39)
            {
              goto LABEL_70;
            }
          }

LABEL_196:
          *buf = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v113 = 136315906;
          *&v113[4] = "operator[]";
          *&v113[12] = 1024;
          *&v113[14] = 468;
          *&v113[18] = 2048;
          *&v113[20] = v7;
          *&v113[28] = 2048;
          *&v113[30] = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_197:
          *buf = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v113 = 136315906;
          *&v113[4] = "operator[]";
          *&v113[12] = 1024;
          *&v113[14] = 468;
          *&v113[18] = 2048;
          *&v113[20] = v7;
          *&v113[28] = 2048;
          *&v113[30] = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_198:
          *buf = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v113 = 136315906;
          *&v113[4] = "operator[]";
          *&v113[12] = 1024;
          *&v113[14] = 468;
          *&v113[18] = 2048;
          *&v113[20] = v18;
          *&v113[28] = 2048;
          *&v113[30] = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_199:
          *buf = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v113 = 136315906;
          *&v113[4] = "operator[]";
          *&v113[12] = 1024;
          *&v113[14] = 468;
          *&v113[18] = 2048;
          *&v113[20] = v5;
          *&v113[28] = 2048;
          *&v113[30] = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_200;
        }

LABEL_70:
        v40 = *(v35 + 64);
        if (v40)
        {
          v41 = *(v35 + 80);
          v6 = v110;
          v42 = v111;
          v43 = 12 * v40;
          do
          {
            v7 = *v41;
            if (v6 <= v7)
            {
              goto LABEL_197;
            }

            *(v42 + v7) = 1;
            v41 += 3;
            v43 -= 12;
          }

          while (v43);
        }
      }

      if (v5 <= v2)
      {
        goto LABEL_211;
      }

      if (*(v108 + v2) == 1)
      {
        v14 = re::DynamicArray<int>::add(v100 + 47, v101);
        v2 = LODWORD(v101[0]);
        v19 = *(v9 + 14);
        if (v19 <= LODWORD(v101[0]))
        {
          goto LABEL_219;
        }

        v44 = *(v9 + 16) + 88 * LODWORD(v101[0]);
        v45 = *(v44 + 24);
        if (v45)
        {
          v46 = *(v44 + 40);
          v3 = v110;
          v47 = v111;
          v48 = 12 * v45;
          v49 = (v46 + 8);
          do
          {
            if (*v49 == 9)
            {
              v5 = *(v49 - 2);
              if (v3 <= v5)
              {
                goto LABEL_203;
              }

              *(v47 + v5) = 1;
            }

            v49 += 3;
            v48 -= 12;
          }

          while (v48);
        }
      }

      v2 = (v2 + 1);
      LODWORD(v101[0]) = v2;
    }

    while (v2 < v19);
  }

  LODWORD(v101[0]) = 0;
  v2 = *(v9 + 19);
  if (v2)
  {
    v50 = 0;
    v18 = 88;
    v4 = 1;
    while (1)
    {
      v19 = v50;
      if (v2 <= v50)
      {
        break;
      }

      v3 = v110;
      if ((*(*(v9 + 21) + 88 * v50) & 1) == 0)
      {
        if (v110 <= v50)
        {
          goto LABEL_216;
        }

        *(v111 + v50) = 1;
      }

      if (v3 <= v50)
      {
        goto LABEL_209;
      }

      if (*(v111 + v50) == 1)
      {
        v14 = re::DynamicArray<int>::add(v100 + 52, v101);
        v50 = v101[0];
        v2 = *(v9 + 19);
      }

      LODWORD(v101[0]) = ++v50;
      if (v50 >= v2)
      {
        goto LABEL_94;
      }
    }

LABEL_208:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 789;
    *&v113[18] = 2048;
    *&v113[20] = v19;
    *&v113[28] = 2048;
    *&v113[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_209:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 468;
    *&v113[18] = 2048;
    *&v113[20] = v19;
    *&v113[28] = 2048;
    *&v113[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_210:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 789;
    *&v113[18] = 2048;
    *&v113[20] = v3;
    *&v113[28] = 2048;
    *&v113[30] = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_211:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 468;
    *&v113[18] = 2048;
    *&v113[20] = v3;
    *&v113[28] = 2048;
    *&v113[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_212:
    v101[0] = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v115 = 1024;
    v116 = 789;
    v117 = 2048;
    v118 = v4;
    v119 = 2048;
    v120 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_213:
    v101[0] = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v115 = 1024;
    v116 = 789;
    v117 = 2048;
    v118 = v4;
    v119 = 2048;
    v120 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_214:
    v101[0] = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v115 = 1024;
    v116 = 789;
    v117 = 2048;
    v118 = v6;
    v119 = 2048;
    v120 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_215:
    v101[0] = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v115 = 1024;
    v116 = 789;
    v117 = 2048;
    v118 = v19;
    v119 = 2048;
    v120 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_216:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 468;
    *&v113[18] = 2048;
    *&v113[20] = v19;
    *&v113[28] = 2048;
    *&v113[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_217:
    v101[0] = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v115 = 1024;
    v116 = 789;
    v117 = 2048;
    v118 = v19;
    v119 = 2048;
    v120 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_218:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 468;
    *&v113[18] = 2048;
    *&v113[20] = v3;
    *&v113[28] = 2048;
    *&v113[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_219:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 789;
    *&v113[18] = 2048;
    *&v113[20] = v2;
    *&v113[28] = 2048;
    *&v113[30] = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_220:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 789;
    *&v113[18] = 2048;
    *&v113[20] = v18;
    *&v113[28] = 2048;
    *&v113[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_221:
    *buf = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 789;
    *&v113[18] = 2048;
    *&v113[20] = v18;
    *&v113[28] = 2048;
    *&v113[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_94:
  memset(v113, 0, 36);
  *&v113[36] = 0x7FFFFFFFLL;
  v18 = v100;
  v4 = v100[49];
  if (v4)
  {
    v6 = 0;
    v7 = 88;
    v5 = 0x7FFFFFFFLL;
    while (1)
    {
      if (v4 <= v6)
      {
        goto LABEL_214;
      }

      v19 = *(*(v18 + 408) + 4 * v6);
      v2 = *(v9 + 14);
      if (v2 <= v19)
      {
        goto LABEL_215;
      }

      v51 = *(v9 + 16) + 88 * v19;
      v52 = *(v51 + 24);
      if (!v52)
      {
        goto LABEL_112;
      }

      v3 = *(v51 + 40);
      v18 = 0x100000001 * v6;
      v2 = 12 * v52;
      do
      {
        v4 = *v3;
        v53 = *(v9 + 19);
        if (v53 <= v4)
        {
          v101[0] = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          v115 = 1024;
          v116 = 789;
          v117 = 2048;
          v118 = v4;
          v119 = 2048;
          v120 = v53;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_194:
          v101[0] = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          v115 = 1024;
          v116 = 789;
          v117 = 2048;
          v118 = v4;
          v119 = 2048;
          v120 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_195:
          v101[0] = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v121 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          v115 = 1024;
          v116 = 468;
          v117 = 2048;
          v118 = v4;
          v119 = 2048;
          v120 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_196;
        }

        if (*(*(v9 + 21) + 88 * v4) == 1)
        {
          v54 = v110;
          if (v110 <= v4)
          {
            goto LABEL_201;
          }

          if (*(v111 + v4) == 1)
          {
            re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v121, v113, *v3);
            if (HIDWORD(v121) == 0x7FFFFFFF)
            {
              v121 = 0uLL;
              *&v122 = 0;
              re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v121, v113, v4);
              if (HIDWORD(v121) == 0x7FFFFFFF)
              {
                v55 = re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v113, DWORD2(v121), v121);
                *(v55 + 4) = v4;
                *(v55 + 8) = v18;
                ++*&v113[40];
              }
            }

            else
            {
              re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v121, v113, v4);
              v56 = *&v113[16] + 24 * HIDWORD(v121);
              v57 = *(v56 + 12);
              if (v57 <= v6)
              {
                v57 = v6;
              }

              *(v56 + 12) = v57;
            }
          }
        }

        v3 += 12;
        v2 -= 12;
      }

      while (v2);
      v2 = *(v9 + 14);
      v18 = v100;
LABEL_112:
      if (v2 <= v19)
      {
        goto LABEL_217;
      }

      v58 = *(v9 + 16) + 88 * v19;
      v59 = *(v58 + 64);
      if (v59)
      {
        break;
      }

LABEL_139:
      ++v6;
      v4 = *(v18 + 392);
      if (v6 >= v4)
      {
        goto LABEL_140;
      }
    }

    v19 = *(v58 + 80);
    v3 = v19 + 12 * v59;
    while (1)
    {
      v4 = *v19;
      v2 = *(v9 + 19);
      if (v2 <= v4)
      {
        goto LABEL_194;
      }

      v60 = (*(v9 + 21) + 88 * v4);
      if (*v60 == 1)
      {
        v2 = v110;
        if (v110 <= v4)
        {
          goto LABEL_202;
        }

        if (*(v111 + v4) == 1)
        {
          break;
        }
      }

LABEL_138:
      v19 += 12;
      if (v19 == v3)
      {
        goto LABEL_139;
      }
    }

    re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v121, v113, *v19);
    if (HIDWORD(v121) != 0x7FFFFFFF)
    {
      re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v121, v113, v4);
      v72 = *&v113[16] + 24 * HIDWORD(v121);
      v73 = *(v72 + 12);
      if (v73 <= v6)
      {
        v73 = v6;
      }

      *(v72 + 12) = v73;
      goto LABEL_138;
    }

    *v60 = 0;
    v61 = *(v18 + 296);
    v2 = *(v61 + 16);
    if (v2 <= v4)
    {
      goto LABEL_206;
    }

    v62 = *(v61 + 32) + 48 * v4;
    v101[0] = *(v62 + 8) >> 1;
    v101[1] = *(v62 + 24);
    v63 = re::RenderGraphCompiled::targetDescription(v18, v101);
    *v63 = 2;
    *(v63 + 96) = 0x44A03688CB9957C5;
    v64 = *(v18 + 296);
    v2 = *(v64 + 16);
    if (v2 <= v4)
    {
      goto LABEL_207;
    }

    v65 = re::StringID::StringID(&v121, (*(v64 + 32) + 48 * v4 + 8));
    *buf = v121 >> 1;
    v66 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&unk_1EE1B98C8, buf);
    if (v66)
    {
LABEL_135:
      if (v121)
      {
        if (v121)
        {
        }
      }

      goto LABEL_138;
    }

    *buf = v121 >> 1;
    v68 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v121 >> 31) ^ (v121 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v121 >> 31) ^ (v121 >> 1))) >> 27));
    v69 = v68 ^ (v68 >> 31);
    if (DWORD2(xmmword_1EE1B98D8))
    {
      v70 = v69 % DWORD2(xmmword_1EE1B98D8);
      v71 = *(qword_1EE1B98D0 + 4 * v70);
      if (v71 != 0x7FFFFFFF)
      {
        while (*(xmmword_1EE1B98D8 + 16 * v71 + 8) != v121 >> 1)
        {
          v71 = *(xmmword_1EE1B98D8 + 16 * v71) & 0x7FFFFFFF;
          if (v71 == 0x7FFFFFFF)
          {
            goto LABEL_132;
          }
        }

        goto LABEL_133;
      }
    }

    else
    {
      LODWORD(v70) = 0;
    }

LABEL_132:
    v67 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(&unk_1EE1B98C8, v70, v69, buf, buf);
    ++dword_1EE1B98F0;
LABEL_133:
    v74 = *re::graphicsLogObjects(v67);
    v66 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
    if (v66)
    {
      *buf = 136315138;
      *&buf[4] = *(&v121 + 1);
      _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "RenderGraph: Transient resource %s is read from before it is written to. Replacing it with NullTexture.", buf, 0xCu);
    }

    goto LABEL_135;
  }

LABEL_140:
  re::DynamicArray<re::DynamicArray<float>>::resize((v18 + 456), v4);
  re::DynamicArray<re::DynamicArray<float>>::resize((v18 + 496), *(v18 + 392));
  v19 = *&v113[32];
  if (!*&v113[32])
  {
    goto LABEL_146;
  }

  v2 = 0;
  v76 = *&v113[16];
  while (1)
  {
    v77 = *v76;
    v76 += 6;
    if (v77 < 0)
    {
      break;
    }

    if (*&v113[32] == ++v2)
    {
      v2 = *&v113[32];
      break;
    }
  }

LABEL_147:
  if (v2 != v19)
  {
    v78 = *&v113[16];
    v3 = 24;
    v18 = 40;
    v6 = v100;
    do
    {
      v79 = v78 + 24 * v2;
      v81 = *(v79 + 8);
      v80 = v79 + 8;
      v4 = v81;
      v9 = v100[59];
      if (v9 <= v81)
      {
        goto LABEL_212;
      }

      re::DynamicArray<int>::add((v100[61] + 40 * v4), (v80 - 4));
      v4 = *(v80 + 4);
      v5 = v100[64];
      if (v5 <= v4)
      {
        goto LABEL_213;
      }

      re::DynamicArray<int>::add((v100[66] + 40 * v4), (v80 - 4));
      if (*&v113[32] <= (v2 + 1))
      {
        v82 = (v2 + 1);
      }

      else
      {
        v82 = *&v113[32];
      }

      v78 = *&v113[16];
      while (v82 - 1 != v2)
      {
        v2 = (v2 + 1);
        if ((*(*&v113[16] + 24 * v2) & 0x80000000) != 0)
        {
          goto LABEL_159;
        }
      }

      v2 = v82;
LABEL_159:
      ;
    }

    while (v2 != v19);
  }

  re::RenderGraphProcessor::updateTextureLifetimes(v100, v75);
  v83 = v100[44];
  if (v83)
  {
    v9 = v100[46];
    v19 = v9 + 200 * v83;
    v84 = xmmword_1E30474D0;
    v2 = 2;
    while (1)
    {
      v3 = *(v9 + 7);
      if (!v3)
      {
        goto LABEL_182;
      }

      v85 = 0;
      v86 = 0;
      v87 = 0;
      v18 = v110;
      v88 = v111;
      do
      {
        v89 = *(v9 + 9);
        v90 = (v89 + v85);
        v4 = *(v89 + v85 + 52);
        if (v18 <= v4)
        {
          goto LABEL_195;
        }

        if (*(v88 + v4) == 1)
        {
          if (v86 > v87)
          {
            v4 = v87;
            if (v3 <= v87)
            {
              goto LABEL_204;
            }

            v91 = v89 + (v87 << 6);
            v92 = *v90;
            v93 = v90[1];
            v94 = v90[2];
            *(v91 + 48) = *(v90 + 6);
            *(v91 + 16) = v93;
            *(v91 + 32) = v94;
            *v91 = v92;
            v3 = *(v9 + 7);
          }

          ++v87;
        }

        ++v86;
        v85 += 64;
      }

      while (v3 > v86);
      if (v3 <= v87)
      {
        goto LABEL_182;
      }

      v95 = v87;
      if (v3 < v87)
      {
        break;
      }

      if (v3 > v87)
      {
        goto LABEL_181;
      }

LABEL_182:
      v9 = (v9 + 200);
      if (v9 == v19)
      {
        goto LABEL_183;
      }
    }

    if (*(v9 + 6) < v87)
    {
      re::DynamicArray<re::RigTransform>::setCapacity(v9 + 5, v87);
      v84 = xmmword_1E30474D0;
      v3 = *(v9 + 7);
    }

    v96 = v95 - v3;
    if (v95 > v3 && v96 >= 1)
    {
      v97 = *(v9 + 9) + (v3 << 6);
      v98 = v96 + 1;
      do
      {
        *v97 = 0;
        *(v97 + 16) = v84;
        *(v97 + 32) = 0;
        *(v97 + 36) = 0;
        *(v97 + 44) = 2;
        *(v97 + 48) = 0;
        *(v97 + 52) = 0;
        v97 += 64;
        --v98;
      }

      while (v98 > 1);
    }

LABEL_181:
    *(v9 + 7) = v95;
    ++*(v9 + 16);
    goto LABEL_182;
  }

LABEL_183:
  re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v113);
  if (v102[0] && v105)
  {
    (*(*v102[0] + 40))(v102[0], v105);
  }

  if (v106 && v107)
  {
    (*(*v106 + 40))(v106, v108);
  }

  result = v109;
  if (v109)
  {
    if (v110)
    {
      return (*(*v109 + 40))(v109, v111);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v8 = 2 * v4;
      v9 = v4 == 0;
      v10 = 8;
      if (!v9)
      {
        v10 = v8;
      }

      if (v10 <= v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = v10;
      }

      result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, v11);
    }

    else
    {
      result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v3, v6);
      ++*(v3 + 6);
    }
  }

  *(*(v3 + 4) + 8 * (*(v3 + 2))++) = *a2;
  ++*(v3 + 6);
  return result;
}

void re::anonymous namespace::transientResourcesWithInvalidLifespan(re::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_446, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_446))
  {
    byte_1EE1B98C0 = 0;
    qword_1EE1B98B0 = &unk_1F5CCF7F8;
    unk_1EE1B98B8 = "RenderGraphOptimizerProcessor allocator";
    __cxa_guard_release(&_MergedGlobals_446);
  }

  if ((atomic_load_explicit(&qword_1EE1B98A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B98A8))
  {
    dword_1EE1B98E8 = 0;
    xmmword_1EE1B98D8 = 0u;
    unk_1EE1B98C8 = 0u;
    *algn_1EE1B98EC = 0x7FFFFFFFLL;
    re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&unk_1EE1B98C8, &qword_1EE1B98B0, 3);

    __cxa_guard_release(&qword_1EE1B98A8);
  }
}

uint64_t *re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(uint64_t *a1)
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

        v4 += 6;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void re::RenderGraphOptimizerProcessor::~RenderGraphOptimizerProcessor(re::RenderGraphOptimizerProcessor *this)
{
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 136);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 96);
}

{
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 136);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 96);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = v8 + 88 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[5] = 0;
          *(v11 + 8) = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
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
          ++*(v11 + 8);
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v16 = *(v8 + 48);
          v17 = *(v8 + 56);
          v18 = v8 + 48;
          v11[6] = v16;
          v11[7] = v17;
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = v11[8];
          v11[8] = *(v18 + 16);
          *(v18 + 16) = v19;
          v20 = v11[10];
          v11[10] = *(v18 + 32);
          *(v18 + 32) = v20;
          ++*(v18 + 24);
          ++*(v11 + 18);
          re::DynamicArray<unsigned long>::deinit(v18);
          re::DynamicArray<unsigned long>::deinit(v12);
          v11 += 11;
          v8 = v18 + 40;
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

uint64_t re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = 0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30));
  v4 = (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 24 * v7 + 4) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 24 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 24 * v6 + 4) != a3)
  {
    LODWORD(v9) = *(v8 + 24 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 24 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 24 * v9 + 4) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 4) = *(v17 - 1);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v25);
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

re::BlendShapeModelBuilder *re::BlendShapeModelBuilder::BlendShapeModelBuilder(re::BlendShapeModelBuilder *this, re::Allocator *a2, id *a3, unint64_t a4, unint64_t a5, DeformationModelData *a6)
{
  v11 = *a3;
  *this = v11;
  *(this + 1) = a6;
  if (v11)
  {
  }

  else
  {
    v12 = re::DeformationModelData::create<re::BlendShapeDeformer,re::BlendShapeModelPayload>(a6, a2);
    re::FixedArray<re::BlendShapeModelPayload::BlendShapeBufferPayload>::init<>(v12 + 8, a2, a5);
  }

  re::StringID::invalid(&v15);
  v13 = re::FixedArray<re::StringID>::init<re::StringID>((v12 + 56), a2, a5, &v15);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  return this;
}

uint64_t re::DeformationModelData::create<re::BlendShapeDeformer,re::BlendShapeModelPayload>(uint64_t *a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 80, 8);
  *v4 = 0;
  *(v4 + 24) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  v6[0] = &unk_1F5D05FC0;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D05FC0;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](a1, &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *a1;
}

uint64_t re::FixedArray<re::BlendShapeModelPayload::BlendShapeBufferPayload>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x1642C8590B21643)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 184, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 184 * a3, 8);
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
      *(result + 7) = 0;
      *result = 0;
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 80) = 0uLL;
      *(result + 96) = 0uLL;
      *(result + 112) = 0uLL;
      *(result + 128) = 0uLL;
      *(result + 144) = 0uLL;
      *(result + 160) = 0uLL;
      *(result + 176) = 0;
      result += 184;
      --v6;
    }

    while (v6);
  }

  *(result + 7) = 0;
  *result = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0;
  return result;
}

uint64_t re::DeformationModelData::create<re::BlendShapeDeformer,re::anonymous namespace::BlendShapeModel>(uint64_t *a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 80, 8);
  *v4 = 0;
  *(v4 + 24) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  v6[0] = &unk_1F5D06040;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D06040;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](a1, &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *a1;
}

uint64_t re::FixedArray<re::anonymous namespace::BlendShapeBuffer>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xC30C30C30C30C4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 336, a3);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 336 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_11:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 == 1)
  {
    v7 = result;
  }

  else
  {
    do
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = 0;
      *(result + 47) = 0;
      *(result + 72) = 0uLL;
      *(result + 88) = 0uLL;
      *(result + 104) = 0uLL;
      *(result + 120) = 0uLL;
      *(result + 136) = 0uLL;
      *(result + 152) = 0uLL;
      *(result + 168) = 0uLL;
      *(result + 184) = 0uLL;
      *(result + 200) = 0uLL;
      *(result + 216) = 0uLL;
      *(result + 232) = 0uLL;
      *(result + 248) = 0uLL;
      *(result + 328) = 0;
      v7 = result + 336;
      *(result + 56) = 0uLL;
      v8 = (result + 56);
      v8[13] = 0uLL;
      v8[14] = 0uLL;
      v8[15] = 0uLL;
      v8[16] = 0uLL;
      result = v7;
      --v6;
    }

    while (v6);
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v7 + 47) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 328) = 0;
  *(v7 + 56) = 0u;
  v9 = (v7 + 56);
  v9[13] = 0u;
  v9[14] = 0u;
  v9[15] = 0u;
  v9[16] = 0u;
  return result;
}

void *re::BlendShapeModelBuilder::BlendShapeModelBuilder(void *a1, uint64_t a2, id *a3, unint64_t a4, int a5, uint64_t a6, uint64_t *a7)
{
  *a1 = *a3;
  a1[1] = a7;
  re::FixedArray<unsigned int>::operator=((v13 + 32), a6);
  *v13 = a5 != 0;
  re::StringID::invalid(&v16);
  v14 = re::FixedArray<re::StringID>::init<re::StringID>((v13 + 56), a2, a4, &v16);
  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  return a1;
}

uint64_t re::BlendShapeModelBuilder::addBlendShapeGroup(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v7 = a3;
  v8 = a2;
  v9 = &v244;
  v268 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 24);
  v11 = *(a2 + 44);
  v12 = *a1;
  v13 = **(a1 + 8);
  v14 = v13[5];
  if (*a1)
  {
    if (v14 <= a3)
    {
LABEL_345:
      v237 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v15 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(v9 + 206) = 468;
      HIWORD(v265[4]) = 2048;
      *(v9 + 212) = v7;
      LOWORD(v265[7]) = 2048;
      *(v9 + 222) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_346;
    }

    *(v13[6] + 4 * a3) = a4;
    v15 = v13[2];
    if (v15 <= a4)
    {
LABEL_346:
      v237 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v190 = a4;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(v9 + 206) = 468;
      HIWORD(v265[4]) = 2048;
      *(v9 + 212) = v190;
      LOWORD(v265[7]) = 2048;
      *(v9 + 222) = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_347;
    }

    v16 = (v13[3] + 336 * a4);
    *v16 = v10;
    v17 = v16 + 1;
  }

  else
  {
    if (v14 <= a3)
    {
LABEL_348:
      v237 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v18 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(v9 + 206) = 468;
      HIWORD(v265[4]) = 2048;
      *(v9 + 212) = v7;
      LOWORD(v265[7]) = 2048;
      *(v9 + 222) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_349;
    }

    *(v13[6] + 4 * a3) = a4;
    v18 = v13[2];
    if (v18 <= a4)
    {
LABEL_349:
      v237 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v191 = a4;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(v9 + 206) = 468;
      HIWORD(v265[4]) = 2048;
      *(v9 + 212) = v191;
      LOWORD(v265[7]) = 2048;
      *(v9 + 222) = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_350:
      v237 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v20 = a4;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(v9 + 206) = 468;
      HIWORD(v265[4]) = 2048;
      *(v9 + 212) = v20;
      LOWORD(v265[7]) = 2048;
      *(v9 + 222) = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_351;
    }

    v17 = (v13[3] + 184 * a4);
  }

  v14 = v10 + 3;
  v19 = (3 * v11);
  v20 = (v19 + 3) & 0x1FFFFFFFCLL;
  v21 = (v10 + 3) >> 2;
  *v17 = v21;
  v17[1] = v19;
  v17[2] = v20;
  v22 = **(a1 + 8);
  v18 = *(v22 + 64);
  v23 = v18 >= a4;
  v24 = v18 == a4;
  if (v12)
  {
    if (v18 > a4)
    {
      goto LABEL_13;
    }

    v237 = 0;
    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v252 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v20 = a4;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v265[0] = 136315906;
    *&v265[1] = "operator[]";
    LOWORD(v265[3]) = 1024;
    *(&v265[3] + 2) = 468;
    HIWORD(v265[4]) = 2048;
    *&v265[5] = v20;
    LOWORD(v265[7]) = 2048;
    *(&v265[7] + 2) = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v24 || !v23)
  {
    goto LABEL_350;
  }

LABEL_13:
  v217 = v12;
  v218 = a4;
  v25 = re::StringID::operator=((*(v22 + 72) + 16 * a4), v8);
  v27 = *(v8 + 40);
  v229 = v8;
  if (v27 == 2)
  {
    v7 = *(v8 + 24);
    if (!v7)
    {
LABEL_347:
      re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 447);
      _os_crash();
      __break(1u);
      goto LABEL_348;
    }

    v216 = v20;
    v33 = *(a1 + 8);
    v34 = *(v8 + 32);
    v228 = v34[9];
    v35 = v34[12];
    v36 = v34[15];
    v37 = (3 * *(v8 + 44));
    v38 = v37 << (v228 != 0);
    v225 = v35;
    if (v35)
    {
      v39 = (3 * *(v8 + 44));
    }

    else
    {
      v39 = 0;
    }

    v220 = v36;
    if (!v36)
    {
      v37 = 0;
    }

    v40 = v38 + v39 + v37;
    re::StringID::invalid(&v252);
    v241 = 0;
    v242 = 0;
    v243 = 0;
    if (v252)
    {
      if (v252)
      {
      }
    }

    v209 = v220 != 0;
    v208 = v225 != 0;
    v42 = (4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v239 = 0u;
    v240 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 16;
    v238 = v40 * v42;
    v207 = v228 != 0;
    v223 = v42 >> 2;
    v234.i64[0] = 16;
    v234.i64[1] = v40 * v42;
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v212 = v33;
    v9 = 0;
    v5 = 0;
    v43 = v252;
    v20 = v253;
    *v252 = v21;
    *(v43 + 4) = v19;
    *(v43 + 8) = v216;
    v44 = v20;
    while (1)
    {
      v45 = v7;
      v7 = *(v8 + 24);
      if (v7 <= v5)
      {
        goto LABEL_335;
      }

      v7 = v242;
      if (v242 <= v5)
      {
        goto LABEL_336;
      }

      v46 = (*(v8 + 32) + 136 * v5);
      v19 = v46[6];
      v8 = v19 * v223;
      re::StringID::operator=((v243 + 16 * v5), v46);
      v47 = v20 + 4 * v19 * v223;
      if (v19)
      {
        break;
      }

      if (v228)
      {
LABEL_42:
        v47 += 4 * v8;
        goto LABEL_43;
      }

      if (v225)
      {
LABEL_50:
        v47 += 4 * v8;
        goto LABEL_51;
      }

LABEL_56:
      ++v5;
      ++v44;
      v9 += 4;
      v7 = v45;
      v8 = v229;
      if (v5 == v45)
      {
        v56 = *v212;
        if (*a1)
        {
          v20 = *(v56 + 16);
          v57 = v218;
          if (v20 > v218)
          {
            v58 = *(v56 + 24) + 336 * v218;
            LOBYTE(v244) = 0;
            HIDWORD(v249) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v244, v58 + 56);
            *&v251[2] = *(v58 + 88);
            re::BufferSlice::buffer(&v244, v59);
            v60 = v218;
            v20 = *(v56 + 16);
            if (v20 > v218)
            {
              re::FixedArray<float>::operator=((*(v56 + 24) + 336 * v218 + 24), &v241);
              v61 = v218;
              v20 = *(v56 + 16);
              if (v20 > v218)
              {
                v62 = (*(v56 + 24) + 336 * v218);
                v62[48] = v207;
                v62[49] = v208;
                v62[50] = v209;
                if (HIDWORD(v249) != -1)
                {
                  (off_1F5D05EF0[HIDWORD(v249)])(v265, &v244);
                }

                goto LABEL_211;
              }

LABEL_353:
              v230 = 0;
              v266 = 0u;
              v267 = 0u;
              memset(v265, 0, sizeof(v265));
              v194 = v61;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v258 = 136315906;
              *&v258[4] = "operator[]";
              v259 = 1024;
              v260 = 468;
              v261 = 2048;
              v262 = v194;
              v263 = 2048;
              v264 = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_354:
              re::internal::assertLog(4, v83, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash();
              __break(1u);
LABEL_355:
              re::internal::assertLog(4, v140, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash();
              __break(1u);
LABEL_356:
              *v258 = 0;
              v266 = 0u;
              v267 = 0u;
              memset(v265, 0, sizeof(v265));
              v195 = v70;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v244 = 136315906;
              v245 = "operator[]";
              v246 = 1024;
              v247 = 468;
              v248 = 2048;
              v249 = v195;
              v250 = 2048;
              *v251 = v20;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_357;
            }

LABEL_352:
            v230 = 0;
            v266 = 0u;
            v267 = 0u;
            memset(v265, 0, sizeof(v265));
            v193 = v60;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v258 = 136315906;
            *&v258[4] = "operator[]";
            v259 = 1024;
            v260 = 468;
            v261 = 2048;
            v262 = v193;
            v263 = 2048;
            v264 = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_353;
          }

LABEL_351:
          *v258 = 0;
          v266 = 0u;
          v267 = 0u;
          memset(v265, 0, sizeof(v265));
          v192 = v57;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v244 = 136315906;
          v245 = "operator[]";
          v246 = 1024;
          v247 = 468;
          v248 = 2048;
          v249 = v192;
          v250 = 2048;
          *v251 = v20;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_352;
        }

        v20 = *(v56 + 16);
        v70 = v218;
        if (v20 <= v218)
        {
          goto LABEL_356;
        }

        re::FixedArray<float>::operator=((*(v56 + 24) + 184 * v218 + 16), &v241);
        v71 = v218;
        v20 = *(v56 + 16);
        if (v20 > v218)
        {
          v72 = (*(v56 + 24) + 184 * v218);
          v72[12] = v207;
          v72[13] = v208;
          v72[14] = v209;
          goto LABEL_211;
        }

LABEL_357:
        *v258 = 0;
        v266 = 0u;
        v267 = 0u;
        memset(v265, 0, sizeof(v265));
        v196 = v71;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v244 = 136315906;
        v245 = "operator[]";
        v246 = 1024;
        v247 = 468;
        v248 = 2048;
        v249 = v196;
        v250 = 2048;
        *v251 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_358:
        *v258 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v197 = v125;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v244 = 136315906;
        *(v9 + 4) = "operator[]";
        v246 = 1024;
        *(v9 + 14) = 468;
        v248 = 2048;
        *(v9 + 20) = v197;
        v250 = 2048;
        *(v9 + 30) = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_359:
        *v258 = 0;
        v266 = 0u;
        v267 = 0u;
        memset(v265, 0, sizeof(v265));
        v198 = v177;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v244 = 136315906;
        v245 = "operator[]";
        v246 = 1024;
        v247 = 468;
        v248 = 2048;
        v249 = v198;
        v250 = 2048;
        *v251 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_360:
        v233 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v199 = v128;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v258 = 136315906;
        *(v9 + 148) = "operator[]";
        v259 = 1024;
        *(v9 + 158) = 468;
        v261 = 2048;
        *(v9 + 164) = v199;
        v263 = 2048;
        *(v9 + 174) = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_361:
        v233 = 0;
        v266 = 0u;
        v267 = 0u;
        memset(v265, 0, sizeof(v265));
        v200 = v180;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v258 = 136315906;
        *&v258[4] = "operator[]";
        v259 = 1024;
        v260 = 468;
        v261 = 2048;
        v262 = v200;
        v263 = 2048;
        v264 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_362:
        v233 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v201 = v129;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v258 = 136315906;
        *(v9 + 148) = "operator[]";
        v259 = 1024;
        *(v9 + 158) = 468;
        v261 = 2048;
        *(v9 + 164) = v201;
        v263 = 2048;
        *(v9 + 174) = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_363:
        v233 = 0;
        v266 = 0u;
        v267 = 0u;
        memset(v265, 0, sizeof(v265));
        v202 = v181;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v258 = 136315906;
        *&v258[4] = "operator[]";
        v259 = 1024;
        v260 = 468;
        v261 = 2048;
        v262 = v202;
        v263 = 2048;
        v264 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_364:
        *v258 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v203 = v131;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v244 = 136315906;
        *(v9 + 4) = "operator[]";
        v246 = 1024;
        *(v9 + 14) = 468;
        v248 = 2048;
        *(v9 + 20) = v203;
        v250 = 2048;
        *(v9 + 30) = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_365:
        *v258 = 0;
        v266 = 0u;
        v267 = 0u;
        memset(v265, 0, sizeof(v265));
        v204 = v183;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v244 = 136315906;
        v245 = "operator[]";
        v246 = 1024;
        v247 = 468;
        v248 = 2048;
        v249 = v204;
        v250 = 2048;
        *v251 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_366:
        *v258 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v205 = v132;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v244 = 136315906;
        *(v9 + 4) = "operator[]";
        v246 = 1024;
        *(v9 + 14) = 468;
        v248 = 2048;
        *(v9 + 20) = v205;
        v250 = 2048;
        *(v9 + 30) = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_367:
        *v258 = 0;
        v266 = 0u;
        v267 = 0u;
        memset(v265, 0, sizeof(v265));
        v206 = v184;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v244 = 136315906;
        v245 = "operator[]";
        v246 = 1024;
        v247 = 468;
        v248 = 2048;
        v249 = v206;
        v250 = 2048;
        *v251 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v48 = 0;
    v49 = v46[6];
    v50 = v44;
    while (v49 != v48)
    {
      *v50 = *(v46[7] + 4 * v48++);
      v50 = (v50 + v42);
      if (v19 == v48)
      {
        if (v228)
        {
          v51 = 0;
          v7 = v46[9];
          v52 = v42 * v19;
          while (v7 != v51)
          {
            *(v44 + v52) = *(v46[10] + 4 * v51++);
            v52 += v42;
            if (v19 == v51)
            {
              goto LABEL_42;
            }
          }

LABEL_115:
          *v258 = 0;
          v266 = 0u;
          v267 = 0u;
          memset(v265, 0, sizeof(v265));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v244 = 136315906;
          v245 = "operator[]";
          v246 = 1024;
          v247 = 476;
          v248 = 2048;
          v249 = v7;
          v250 = 2048;
          *v251 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_116:
          *v258 = 0;
          v75 = &v244;
          v266 = 0u;
          v267 = 0u;
          memset(v265, 0, sizeof(v265));
          v73 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v244 = 136315906;
          v245 = "operator[]";
          v246 = 1024;
          v247 = 476;
          v248 = 2048;
          v249 = v7;
          v250 = 2048;
          *v251 = v7;
          _os_log_send_and_compose_impl();
          v67 = _os_crash_msg();
          __break(1u);
LABEL_117:
          v227 = 0;
          v221 = 0;
          v68 = 0;
          goto LABEL_118;
        }

LABEL_43:
        if (v225)
        {
          if (v19)
          {
            v53 = 0;
            v7 = v46[12];
            v54 = v9;
            while (v7 != v53)
            {
              *(v47 + v54) = *(v46[13] + 4 * v53++);
              v54 += v42;
              if (v19 == v53)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_116;
          }

          goto LABEL_50;
        }

LABEL_51:
        if (v220 && v19)
        {
          v55 = 0;
          v7 = v46[15];
          while (v7 != v55)
          {
            *(v47 + v9) = *(v46[16] + 4 * v55++);
            v47 += v42;
            if (v19 == v55)
            {
              goto LABEL_56;
            }
          }

          *v258 = 0;
          v266 = 0u;
          v267 = 0u;
          memset(v265, 0, sizeof(v265));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v244 = 136315906;
          v245 = "operator[]";
          v246 = 1024;
          v247 = 476;
          v248 = 2048;
          v249 = v7;
          v250 = 2048;
          *v251 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_115;
        }

        goto LABEL_56;
      }
    }

    *v258 = 0;
    v266 = 0u;
    v267 = 0u;
    memset(v265, 0, sizeof(v265));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v244 = 136315906;
    v245 = "operator[]";
    v246 = 1024;
    v247 = 476;
    v248 = 2048;
    v249 = v49;
    v250 = 2048;
    *v251 = v49;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    if (v27 != 1)
    {
      re::internal::assertLog(5, v26, "assertion failure: '%s' (%s:line %i) Invalid blend shape group storage mode: %u.", "!Unreachable code", "addBlendShapeGroup", 885, v27);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v28 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *(v8 + 24);
    if (v29)
    {
      v30 = (*(v8 + 32) + 72);
      v31 = 1;
      v32 = *(v8 + 24);
      while (!*(v30 - 6))
      {
        v30 += 17;
        if (!--v32)
        {
          goto LABEL_70;
        }
      }

      v31 = 1;
      if (*v30)
      {
        v31 = 2;
      }

      if (v30[3])
      {
        ++v31;
      }

      if (v30[6])
      {
        ++v31;
      }
    }

    else
    {
      v31 = 1;
    }

LABEL_70:
    v63 = 4 * v20 * v31;
    if (v63 > v28)
    {
      v28 = v63;
    }

    v216 = *(a1 + 8);
    v228 = v29;
    if ((a5 & 1) == 0 && v28 < 0xFFFF)
    {
      re::StringID::invalid(&v252);
      v241 = 0;
      v242 = 0;
      v243 = 0;
      if (v252)
      {
        if (v252)
        {
        }
      }

      v65 = *(v8 + 24);
      if (v65)
      {
        v66 = (*(v8 + 32) + 72);
        while (!*(v66 - 6))
        {
          v66 += 17;
          if (!--v65)
          {
            v224 = 0;
            v226 = 0;
            v20 = 0;
            goto LABEL_104;
          }
        }

        v224 = *v66 != 0;
        v226 = v66[3] != 0;
        v20 = v66[6] != 0;
LABEL_104:
        v81 = 0;
        v5 = 0;
        v80 = 0;
        do
        {
          v7 = v242;
          if (v242 <= v80)
          {
            goto LABEL_338;
          }

          v64 = re::StringID::operator=((v243 + v81), (*(v8 + 32) + v5));
          v80 = (v80 + 1);
          v5 += 136;
          v81 += 16;
        }

        while (v80 < *(v8 + 24));
        v76 = *(v8 + 44);
        v78 = (3 * v76);
        v8 = v78;
        v77 = v78 << v224;
        if (v226)
        {
          v77 += v78;
          if ((v20 & 1) == 0)
          {
            v222 = 0;
            v65 = 0;
            v226 = 1;
            goto LABEL_215;
          }
        }

        else if (!v20)
        {
          v226 = 0;
          v222 = 0;
          v65 = 0;
          goto LABEL_215;
        }

        v222 = 1;
        v65 = (3 * v76);
        goto LABEL_215;
      }

      v224 = 0;
      v226 = 0;
      v222 = 0;
      v76 = *(v8 + 44);
      v77 = (3 * v76);
      v8 = v77;
      v78 = v77;
LABEL_215:
      v9 = v65 + v77;
      v211 = v78;
      if (v9)
      {
        if (!v139)
        {
          goto LABEL_355;
        }

        v141 = v139;
        v142 = v139;
        v143 = v9 - 1;
        if (v9 != 1)
        {
          v142 = v139;
          do
          {
            *(v142 + 4) = 0;
            *(v142 + 1) = 0;
            *(v142 + 2) = 0;
            *v142 = 0;
            *(v142 + 6) = 0;
            v142 = (v142 + 40);
            --v143;
          }

          while (v143);
        }

        *(v142 + 4) = 0;
        *(v142 + 1) = 0;
        *(v142 + 2) = 0;
        *v142 = 0;
        *(v142 + 6) = 0;
      }

      else
      {
        v141 = 0;
      }

      if (!v228)
      {
LABEL_260:
        if (v9)
        {
          v149 = 0;
          v20 = 0;
          v150 = (v141 + 16);
          v151 = v9;
          v152 = v211;
          do
          {
            v154 = *v150;
            v150 += 5;
            v153 = v154;
            if (v154)
            {
              ++v149;
            }

            v20 += (v153 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            --v151;
          }

          while (v151);
          v7 = 2 * v149;
        }

        else
        {
          v20 = 0;
          v7 = 0;
          v152 = v211;
        }

        v19 = 0xAAAAAAAAAAAAAAABLL;
        v230 = 0;
        v231 = 0;
        v232 = 0;
        v155 = 0;
        v156 = v9 - v152;
        if (v9 > v152)
        {
          v157 = 0;
          v158 = 0;
          v5 = v231;
          v159 = v232;
          do
          {
            v8 = v157 / 3;
            if (v5 <= v157 / 3)
            {
              goto LABEL_340;
            }

            v158 += *(v159 + v8) ^ 1;
            *(v159 + v8) = 1;
            ++v157;
          }

          while (v156 != v157);
          v155 = 2 * v158;
        }

        v215 = 2 * v20;
        v160 = 4 * v20;
        v237 = 12;
        v238 = 4 * v20;
        *&v239 = v7;
        *(&v239 + 1) = v7 + 2;
        *&v240 = 2 * v20;
        *(&v240 + 1) = v155;
        v234.i64[0] = 16;
        v234.i64[1] = 4 * v20;
        v235 = vandq_s8(vaddq_s64(vdupq_n_s64(v7), xmmword_1E30B4940), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
        *&v236 = (2 * v20 + 15) & 0xFFFFFFFFFFFFFFF0;
        *(&v236 + 1) = (v155 + 15) & 0xFFFFFFFFFFFFFFF0;
        v256 = 0u;
        v257 = 0u;
        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        v19 = v253;
        v161 = v254;
        v162 = v255;
        v8 = v256;
        v7 = v257;
        bzero(v253, v160);
        bzero(v8, v215);
        v163 = (3 * *(v229 + 44));
        v164 = v252;
        v165 = (v163 + 3) & 0xFFFFFFFC;
        *v252 = (v228 + 3) >> 2;
        *(v164 + 4) = v163;
        *(v164 + 8) = v165;
        if (v9)
        {
          v166 = 0;
          v167 = v19;
          do
          {
            v168 = v141 + 40 * v166;
            v169 = *(v168 + 2);
            if (v169)
            {
              *v161 = v166 % v163 + v166 / v163 * v165;
              *v162 = (v167 - v19) >> 2;
              v170 = (*(v168 + 4) + 4);
              v171 = v169;
              do
              {
                *v167++ = *v170;
                *v8 = *(v170 - 1);
                v8 += 2;
                v170 += 2;
                --v171;
              }

              while (v171);
              ++v161;
              ++v162;
              v172 = v169 & 3;
              v167 = &v167[-v172 + 4];
              v8 = v8 - 2 * v172 + 8;
            }

            ++v166;
          }

          while (v166 != v9);
        }

        else
        {
          LODWORD(v167) = v19;
        }

        *v162 = (v167 - v19) >> 2;
        if (v156 < 3)
        {
LABEL_288:
          v176 = *v216;
          if (*a1)
          {
            v20 = *(v176 + 16);
            v177 = v218;
            if (v20 <= v218)
            {
              goto LABEL_359;
            }

            v178 = *(v176 + 24) + 336 * v218;
            LOBYTE(v244) = 0;
            HIDWORD(v249) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v244, v178 + 56);
            *&v251[2] = *(v178 + 88);
            re::BufferSlice::buffer(&v244, v179);
            v180 = v218;
            v20 = *(v176 + 16);
            if (v20 <= v218)
            {
              goto LABEL_361;
            }

            re::FixedArray<float>::operator=((*(v176 + 24) + 336 * v218 + 24), &v241);
            v181 = v218;
            v20 = *(v176 + 16);
            if (v20 <= v218)
            {
              goto LABEL_363;
            }

            v182 = (*(v176 + 24) + 336 * v218);
            v182[48] = v224;
            v182[49] = v226;
            v182[50] = v222;
            if (HIDWORD(v249) != -1)
            {
              (off_1F5D05EF0[HIDWORD(v249)])(v265, &v244);
            }
          }

          else
          {
            v20 = *(v176 + 16);
            v183 = v218;
            if (v20 <= v218)
            {
              goto LABEL_365;
            }

            re::FixedArray<float>::operator=((*(v176 + 24) + 184 * v218 + 16), &v241);
            v184 = v218;
            v20 = *(v176 + 16);
            if (v20 <= v218)
            {
              goto LABEL_367;
            }

            v185 = (*(v176 + 24) + 184 * v218);
            v185[12] = v224;
            v185[13] = v226;
            v185[14] = v222;
          }

          if (v230 && v231)
          {
            (*(*v230 + 40))(v230, v232);
          }

          if (v9)
          {
            v186 = 40 * v9;
            v187 = (v141 + 32);
            do
            {
              v188 = *(v187 - 4);
              if (v188)
              {
                if (*v187)
                {
                  (*(*v188 + 40))(v188);
                }

                *v187 = 0;
                *(v187 - 3) = 0;
                *(v187 - 2) = 0;
                *(v187 - 4) = 0;
                ++*(v187 - 2);
              }

              v187 += 5;
              v186 -= 40;
            }

            while (v186);
          }

          result = re::FixedArray<re::StringID>::deinit(&v241);
          v189 = **(a1 + 8);
          if (v217)
          {
            *v189 = 0;
          }

          else
          {
            *v189 = 0;
          }

          return result;
        }

        v173 = 0;
        v20 = v231;
        v174 = v232;
        v175 = (v9 - v152) / 3;
        if (v175 <= 1)
        {
          v175 = 1;
        }

        while (v20 != v173)
        {
          if (*(v174 + v173) == 1)
          {
            *v7 = v152 % v163 + v152 / v163 * v165;
            v7 += 2;
          }

          ++v173;
          v152 += 3;
          if (v175 == v173)
          {
            goto LABEL_288;
          }
        }

        goto LABEL_342;
      }

      v19 = 0;
      v214 = 6 * v76;
      while (1)
      {
        v14 = *(v229 + 24);
        if (v14 <= v19)
        {
          goto LABEL_344;
        }

        v144 = (*(v229 + 32) + 136 * v19);
        v7 = v144[3];
        if (v7)
        {
          for (i = 0; i != v7; ++i)
          {
            v89 = v144[6];
            if (v89 <= i)
            {
              goto LABEL_312;
            }

            v145 = *(v144[7] + 4 * i);
            if (fabsf(v145) >= 0.00001)
            {
              v89 = v144[3];
              if (v89 <= i)
              {
                goto LABEL_314;
              }

              v5 = *(v144[4] + 4 * i);
              if (v9 <= v5)
              {
                goto LABEL_316;
              }

              *&v252 = __PAIR64__(LODWORD(v145), v19);
            }
          }

          v5 = v8;
          if (v224)
          {
            for (i = 0; i != v7; ++i)
            {
              v91 = v144[9];
              if (v91 <= i)
              {
                goto LABEL_318;
              }

              v146 = *(v144[10] + 4 * i);
              if (fabsf(v146) >= 0.00001)
              {
                v91 = v144[3];
                if (v91 <= i)
                {
                  goto LABEL_324;
                }

                v91 = (*(v144[4] + 4 * i) + v8);
                if (v9 <= v91)
                {
                  goto LABEL_326;
                }

                *&v252 = __PAIR64__(LODWORD(v146), v19);
              }
            }

            v5 = v214;
          }

          if (v226)
          {
            for (i = 0; i != v7; ++i)
            {
              v91 = v144[12];
              if (v91 <= i)
              {
                goto LABEL_320;
              }

              v147 = *(v144[13] + 4 * i);
              if (fabsf(v147) >= 0.00001)
              {
                v91 = v144[3];
                if (v91 <= i)
                {
                  goto LABEL_328;
                }

                v91 = (*(v144[4] + 4 * i) + v5);
                if (v9 <= v91)
                {
                  goto LABEL_330;
                }

                *&v252 = __PAIR64__(LODWORD(v147), v19);
              }
            }

            v5 = (v5 + v8);
          }

          if (v222)
          {
            break;
          }
        }

LABEL_259:
        if (++v19 == v228)
        {
          goto LABEL_260;
        }
      }

      i = 0;
      while (1)
      {
        v91 = v144[15];
        if (v91 <= i)
        {
          break;
        }

        v148 = *(v144[16] + 4 * i);
        if (fabsf(v148) >= 0.00001)
        {
          v91 = v144[3];
          if (v91 <= i)
          {
            goto LABEL_332;
          }

          v91 = (*(v144[4] + 4 * i) + v5);
          if (v9 <= v91)
          {
            goto LABEL_334;
          }

          *&v252 = __PAIR64__(LODWORD(v148), v19);
        }

        if (v7 == ++i)
        {
          goto LABEL_259;
        }
      }

LABEL_322:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = i;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v91;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_323:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = i;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v91;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_324:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = i;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v91;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_325:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v91;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_326:
      v237 = 0;
      i = &v244;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v91;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_327:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = i;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v91;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_328:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = i;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v91;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_329:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v91;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_330:
      v237 = 0;
      i = &v244;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v91;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_331:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = i;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v91;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_332:
      v237 = 0;
      v7 = &v244;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = i;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v91;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_333:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v91;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_334:
      v237 = 0;
      v20 = &v244;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v91;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_335:
      *v258 = 0;
      v266 = 0u;
      v267 = 0u;
      memset(v265, 0, sizeof(v265));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v244 = 136315906;
      v245 = "operator[]";
      v246 = 1024;
      v247 = 476;
      v248 = 2048;
      v249 = v5;
      v250 = 2048;
      *v251 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_336:
      *v258 = 0;
      v80 = &v244;
      v266 = 0u;
      v267 = 0u;
      memset(v265, 0, sizeof(v265));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v244 = 136315906;
      v245 = "operator[]";
      v246 = 1024;
      v247 = 468;
      v248 = 2048;
      v249 = v5;
      v250 = 2048;
      *v251 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_337:
      v237 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(v9 + 206) = 468;
      HIWORD(v265[4]) = 2048;
      *(v9 + 212) = v80;
      LOWORD(v265[7]) = 2048;
      *(v9 + 222) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_338:
      v237 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(v9 + 206) = 468;
      HIWORD(v265[4]) = 2048;
      *(v9 + 212) = v80;
      LOWORD(v265[7]) = 2048;
      *(v9 + 222) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_339:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v19;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_340:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 468;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v8;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_341:
      *v258 = 0;
      *(v9 + 240) = 0u;
      *(v9 + 256) = 0u;
      *(v9 + 208) = 0u;
      *(v9 + 224) = 0u;
      *(v9 + 192) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v244 = 136315906;
      *(v9 + 4) = "operator[]";
      v246 = 1024;
      *(v9 + 14) = 468;
      v248 = 2048;
      *(v9 + 20) = v20;
      v250 = 2048;
      *(v9 + 30) = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_342:
      *v258 = 0;
      v14 = &v244;
      v266 = 0u;
      v267 = 0u;
      memset(v265, 0, sizeof(v265));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v244 = 136315906;
      v245 = "operator[]";
      v246 = 1024;
      v247 = 468;
      v248 = 2048;
      v249 = v20;
      v250 = 2048;
      *v251 = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_343:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v8;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_344:
      v237 = 0;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v252 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v265[0] = 136315906;
      *&v265[1] = "operator[]";
      LOWORD(v265[3]) = 1024;
      *(&v265[3] + 2) = 476;
      HIWORD(v265[4]) = 2048;
      *&v265[5] = v19;
      LOWORD(v265[7]) = 2048;
      *(&v265[7] + 2) = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_345;
    }

    re::StringID::invalid(&v252);
    v241 = 0;
    v242 = 0;
    v243 = 0;
    if (v252)
    {
      if (v252)
      {
      }
    }

    v68 = *(v8 + 24);
    if (!v68)
    {
      LODWORD(v223) = 0;
      v227 = 0;
      v221 = 0;
      v73 = *(v8 + 44);
      v74 = (3 * v73);
      v44 = v74;
      v75 = v74;
      goto LABEL_118;
    }

    v69 = (*(v8 + 32) + 72);
    while (!*(v69 - 6))
    {
      v69 += 17;
      if (!--v68)
      {
        LODWORD(v223) = 0;
        v227 = 0;
        v20 = 0;
        goto LABEL_97;
      }
    }
  }

  LODWORD(v223) = *v69 != 0;
  v227 = v69[3] != 0;
  v20 = v69[6] != 0;
LABEL_97:
  v79 = 0;
  v5 = 0;
  v80 = 0;
  do
  {
    v7 = v242;
    if (v242 <= v80)
    {
      goto LABEL_337;
    }

    v67 = re::StringID::operator=((v243 + v79), (*(v8 + 32) + v5));
    v80 = (v80 + 1);
    v5 += 136;
    v79 += 16;
  }

  while (v80 < *(v8 + 24));
  v73 = *(v8 + 44);
  v75 = (3 * v73);
  v44 = v75;
  v74 = v75 << v223;
  if (v227)
  {
    v74 += v75;
    if ((v20 & 1) == 0)
    {
      v221 = 0;
      v68 = 0;
      v227 = 1;
      goto LABEL_118;
    }
  }

  else if (!v20)
  {
    goto LABEL_117;
  }

  v221 = 1;
  v68 = (3 * v73);
LABEL_118:
  v5 = v68 + v74;
  v210 = v75;
  if (v5)
  {
    v82 = (*(*v46 + 32))(v46, 40 * v5, 8);
    if (!v82)
    {
      goto LABEL_354;
    }

    v84 = v82;
    v85 = v82;
    v86 = v5 - 1;
    if (v5 != 1)
    {
      v85 = v82;
      do
      {
        *(v85 + 4) = 0;
        *(v85 + 1) = 0;
        *(v85 + 2) = 0;
        *v85 = 0;
        *(v85 + 6) = 0;
        v85 = (v85 + 40);
        --v86;
      }

      while (v86);
    }

    *(v85 + 4) = 0;
    *(v85 + 1) = 0;
    *(v85 + 2) = 0;
    *v85 = 0;
    *(v85 + 6) = 0;
  }

  else
  {
    v84 = 0;
  }

  if (!v228)
  {
    goto LABEL_163;
  }

  v8 = 0;
  v213 = 6 * v73;
  v9 = 40;
  do
  {
    v14 = *(v229 + 24);
    if (v14 <= v8)
    {
      goto LABEL_343;
    }

    v87 = (*(v229 + 32) + 136 * v8);
    v7 = v87[3];
    if (!v7)
    {
      goto LABEL_162;
    }

    for (i = 0; i != v7; ++i)
    {
      v89 = v87[6];
      if (v89 <= i)
      {
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v89;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_312:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v89;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_313:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v89;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_314:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v89;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_315:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 468;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = v19;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_316:
        v237 = 0;
        v91 = &v244;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 468;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = v5;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_317:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v91;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_318:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v91;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_319:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v91;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_320:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v91;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_321:
        v237 = 0;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v252 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v265[0] = 136315906;
        *&v265[1] = "operator[]";
        LOWORD(v265[3]) = 1024;
        *(&v265[3] + 2) = 476;
        HIWORD(v265[4]) = 2048;
        *&v265[5] = i;
        LOWORD(v265[7]) = 2048;
        *(&v265[7] + 2) = v91;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_322;
      }

      v90 = *(v87[7] + 4 * i);
      if (fabsf(v90) >= 0.00001)
      {
        v89 = v87[3];
        if (v89 <= i)
        {
          goto LABEL_313;
        }

        v19 = *(v87[4] + 4 * i);
        if (v5 <= v19)
        {
          goto LABEL_315;
        }

        *&v252 = __PAIR64__(LODWORD(v90), v8);
      }
    }

    v19 = v44;
    if (v223)
    {
      for (i = 0; i != v7; ++i)
      {
        v91 = v87[9];
        if (v91 <= i)
        {
          goto LABEL_317;
        }

        v92 = *(v87[10] + 4 * i);
        if (fabsf(v92) >= 0.00001)
        {
          v91 = v87[3];
          if (v91 <= i)
          {
            goto LABEL_323;
          }

          v91 = (*(v87[4] + 4 * i) + v44);
          if (v5 <= v91)
          {
            goto LABEL_325;
          }

          *&v252 = __PAIR64__(LODWORD(v92), v8);
        }
      }

      v19 = v213;
    }

    if (v227)
    {
      for (i = 0; i != v7; ++i)
      {
        v91 = v87[12];
        if (v91 <= i)
        {
          goto LABEL_319;
        }

        v93 = *(v87[13] + 4 * i);
        if (fabsf(v93) >= 0.00001)
        {
          v91 = v87[3];
          if (v91 <= i)
          {
            goto LABEL_327;
          }

          v91 = (*(v87[4] + 4 * i) + v19);
          if (v5 <= v91)
          {
            goto LABEL_329;
          }

          *&v252 = __PAIR64__(LODWORD(v93), v8);
        }
      }

      v19 = (v19 + v44);
    }

    if (v221)
    {
      i = 0;
      do
      {
        v91 = v87[15];
        if (v91 <= i)
        {
          goto LABEL_321;
        }

        v94 = *(v87[16] + 4 * i);
        if (fabsf(v94) >= 0.00001)
        {
          v91 = v87[3];
          if (v91 <= i)
          {
            goto LABEL_331;
          }

          v91 = (*(v87[4] + 4 * i) + v19);
          if (v5 <= v91)
          {
            goto LABEL_333;
          }

          *&v252 = __PAIR64__(LODWORD(v94), v8);
        }
      }

      while (v7 != ++i);
    }

LABEL_162:
    ++v8;
  }

  while (v8 != v228);
LABEL_163:
  if (v5)
  {
    v95 = 0;
    v96 = 0;
    v97 = (v84 + 16);
    v98 = v5;
    v99 = v210;
    do
    {
      v101 = *v97;
      v97 += 5;
      v100 = v101;
      if (v101)
      {
        ++v95;
      }

      v96 += (v100 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      --v98;
    }

    while (v98);
    v20 = 4 * v95;
    v8 = 4 * v96;
  }

  else
  {
    v8 = 0;
    v20 = 0;
    v99 = v210;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v102 = 0;
  v103 = v5 - v99;
  if (v5 > v99)
  {
    v104 = 0;
    v105 = 0;
    v7 = v231;
    v106 = v232;
    do
    {
      v19 = v104 / 3;
      if (v7 <= v104 / 3)
      {
        goto LABEL_339;
      }

      v105 += *(v106 + v19) ^ 1;
      *(v106 + v19) = 1;
      ++v104;
    }

    while (v103 != v104);
    v102 = 4 * v105;
  }

  v237 = 12;
  v238 = v8;
  *&v239 = v20;
  *(&v239 + 1) = v20 + 4;
  *&v240 = v8;
  *(&v240 + 1) = v102;
  v234.i64[0] = 16;
  v234.i64[1] = v8;
  v235 = vandq_s8(vaddq_s64(vdupq_n_s64(v20), xmmword_1E30B4950), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
  *&v236 = v8;
  *(&v236 + 1) = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v19 = v253;
  v107 = v254;
  v108 = v255;
  v109 = v256;
  v7 = v257;
  bzero(v253, v8);
  bzero(v109, v8);
  v110 = (3 * *(v229 + 44));
  v111 = v252;
  v112 = (v110 + 3) & 0xFFFFFFFC;
  *v252 = (v228 + 3) >> 2;
  *(v111 + 4) = v110;
  *(v111 + 8) = v112;
  if (v5)
  {
    v113 = 0;
    v114 = v19;
    do
    {
      v115 = v84 + 40 * v113;
      v116 = *(v115 + 2);
      if (v116)
      {
        v117 = 0;
        *v107 = v113 % v110 + v113 / v110 * v112;
        *v108 = (v114 - v19) >> 2;
        v118 = (*(v115 + 4) + 4);
        v119 = v116;
        do
        {
          *(v114 + v117) = *v118;
          *&v109[v117] = *(v118 - 1);
          v118 += 2;
          v117 += 4;
          --v119;
        }

        while (v119);
        ++v107;
        ++v108;
        v120 = 4 * (v116 & 3);
        v114 = v114 - v120 + v117 + 16;
        v109 = &v109[v117 - v120 + 16];
      }

      ++v113;
    }

    while (v113 != v5);
  }

  else
  {
    v114 = v19;
  }

  *v108 = (v114 - v19) >> 2;
  v9 = &v244;
  if (v103 >= 3)
  {
    v121 = 0;
    v20 = v231;
    v122 = v232;
    v123 = (v5 - v99) / 3;
    if (v123 <= 1)
    {
      v123 = 1;
    }

    while (v20 != v121)
    {
      if (*(v122 + v121) == 1)
      {
        *v7 = v99 % v110 + v99 / v110 * v112;
        v7 += 4;
      }

      ++v121;
      v99 = (v99 + 3);
      if (v123 == v121)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_341;
  }

LABEL_191:
  v124 = *v216;
  if (!*a1)
  {
    v20 = *(v124 + 16);
    v131 = v218;
    if (v20 <= v218)
    {
      goto LABEL_364;
    }

    re::FixedArray<float>::operator=((*(v124 + 24) + 184 * v218 + 16), &v241);
    v132 = v218;
    v20 = *(v124 + 16);
    if (v20 > v218)
    {
      v133 = (*(v124 + 24) + 184 * v218);
      v133[12] = v223;
      v133[13] = v227;
      v133[14] = v221;
      goto LABEL_200;
    }

    goto LABEL_366;
  }

  v20 = *(v124 + 16);
  v125 = v218;
  if (v20 <= v218)
  {
    goto LABEL_358;
  }

  v126 = *(v124 + 24) + 336 * v218;
  LOBYTE(v244) = 0;
  HIDWORD(v249) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v244, v126 + 56);
  *&v251[2] = *(v126 + 88);
  re::BufferSlice::buffer(&v244, v127);
  v128 = v218;
  v20 = *(v124 + 16);
  if (v20 <= v218)
  {
    goto LABEL_360;
  }

  re::FixedArray<float>::operator=((*(v124 + 24) + 336 * v218 + 24), &v241);
  v129 = v218;
  v20 = *(v124 + 16);
  if (v20 <= v218)
  {
    goto LABEL_362;
  }

  v130 = (*(v124 + 24) + 336 * v218);
  v130[48] = v223;
  v130[49] = v227;
  v130[50] = v221;
  if (HIDWORD(v249) != -1)
  {
    (off_1F5D05EF0[HIDWORD(v249)])(v265, &v244);
  }

LABEL_200:
  if (v230 && v231)
  {
    (*(*v230 + 40))(v230, v232);
  }

  if (v5)
  {
    v134 = 40 * v5;
    v135 = (v84 + 32);
    do
    {
      v136 = *(v135 - 4);
      if (v136)
      {
        if (*v135)
        {
          (*(*v136 + 40))(v136);
        }

        *v135 = 0;
        *(v135 - 3) = 0;
        *(v135 - 2) = 0;
        *(v135 - 4) = 0;
        ++*(v135 - 2);
      }

      v135 += 5;
      v134 -= 40;
    }

    while (v134);
  }

LABEL_211:
  result = re::FixedArray<re::StringID>::deinit(&v241);
  v138 = **(a1 + 8);
  if (v217)
  {
    *v138 = 1;
  }

  else
  {
    *v138 = 1;
  }

  return result;
}

uint64_t re::BlendShapeModelBuilder::addBlendShapeGroup(uint64_t a1, unint64_t a2, re::BufferSlice *this, uint64_t *a4, uint64_t a5, char a6, char a7, char a8)
{
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*(*v9 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(a5 + 8);
  v14 = v10[3];
  if (*(this + 9) < 0xCu)
  {
    v20 = 0;
    v19 = 0;
  }

  else
  {
    v17 = a4;
    v18 = re::BufferSlice::contents(this);
    a4 = v17;
    v19 = *v18;
    v20 = *(v18 + 8);
  }

  if (v10[8] <= a2)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v21 = v14 + 336 * a2;
  v23 = v19;
  re::StringID::operator=((v10[9] + 16 * a2), a4);
  *v21 = v13;
  *(v21 + 8) = v23;
  *(v21 + 16) = v20;
  re::FixedArray<re::StringID>::operator=((v21 + 24), a5);
  *(v21 + 48) = a6;
  *(v21 + 49) = a7;
  *(v21 + 50) = a8;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v21 + 96, this + 40);
  *(v21 + 128) = *(this + 9);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v21 + 136, this);
  *(v21 + 168) = *(this + 4);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v21 + 176, this + 80);
  *(v21 + 208) = *(this + 14);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v21 + 216, this + 120);
  *(v21 + 248) = *(this + 19);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v21 + 256, this + 160);
  *(v21 + 288) = *(this + 24);
  result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v21 + 296, this + 200);
  *(v21 + 328) = *(this + 29);
  return result;
}

void **re::BlendShapeDeformer::init(void **result, uint64_t a2)
{
  v136 = *MEMORY[0x1E69E9840];
  if ((result[11] & 1) == 0)
  {
    v2 = result;
    *(result + 88) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      result = *(v3 + 208);
      if (result)
      {
        v4 = *(v3 + 305);
        result = [result supportsFamily:1004];
        if (v4 && result != 0)
        {
          v101 = 0;
          v104 = 0;
          memset(v107, 0, sizeof(v107));
          v108 = 0;
          v112 = 0;
          v113 = 0;
          v110 = 0;
          v109 = 0;
          v111 = 0;
          v86 = 0;
          v89 = 0;
          memset(v92, 0, sizeof(v92));
          v93 = 0;
          v97 = 0;
          v98 = 0;
          v95 = 0;
          v94 = 0;
          v96 = 0;
          v71 = 0;
          v74 = 0;
          memset(v77, 0, sizeof(v77));
          v78 = 0;
          v82 = 0;
          v83 = 0;
          v80 = 0;
          v79 = 0;
          v81 = 0;
          v56 = 0;
          v59 = 0;
          memset(v62, 0, sizeof(v62));
          v63 = 0;
          v67 = 0;
          v68 = 0;
          v65 = 0;
          v64 = 0;
          v66 = 0;
          v41 = 0;
          v44 = 0;
          memset(v47, 0, sizeof(v47));
          v48 = 0;
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v26 = 0;
          v29 = 0;
          memset(v32, 0, sizeof(v32));
          v33 = 0;
          v37 = 0;
          v38 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v99);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 1, ComputePipelineState);
          v12 = re::getOrCreateComputePipelineState(v3, &v84);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 2, v12);
          v13 = re::getOrCreateComputePipelineState(v3, &v69);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 3, v13);
          v14 = re::getOrCreateComputePipelineState(v3, &v54);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 4, v14);
          v15 = re::getOrCreateComputePipelineState(v3, &v39);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 5, v15);
          v16 = re::getOrCreateComputePipelineState(v3, &v24);
          v17 = NS::SharedPtr<MTL::Buffer>::operator=(v2 + 6, v16);
          *(v2 + 89) = 1;
          v18 = re::DeformerFeatureFlags::enableStitchableDeformation(v17);
          if (v18)
          {
            v19 = 0;
            v20 = v2 + 7;
            do
            {
              if (!*v20)
              {
                v116[0] = 0;
                v119 = 0;
                memset(v122, 0, sizeof(v122));
                v123 = 0;
                v124 = 0;
                v125 = 0;
                v126 = 1;
                v128 = 0;
                v129 = 0;
                v130 = 0;
                re::DynamicString::setCapacity(&v127, 0);
                memset(v135, 0, sizeof(v135));
                v134 = 0u;
                v133 = 0u;
                v131 = 33;
                v132 = v19;
                re::DynamicArray<re::TechniqueFunctionConstant>::add(v122, &v127);
                MetalFunction = re::getOrCreateMetalFunction(v3, &v114, v116, v22);
                NS::SharedPtr<MTL::Buffer>::operator=(v20, MetalFunction);
                if (v114 && (v115 & 1) != 0)
                {
                  (*(*v114 + 40))();
                }

                if (v127 && (v128 & 1) != 0)
                {
                  (*(*v127 + 40))(v127, v129);
                }

                v18 = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v122);
                if (v119 == 1)
                {
                  v18 = v120;
                  if (v120)
                  {
                    if (BYTE8(v120))
                    {
                      v18 = (*(*v120 + 40))();
                    }

                    v120 = 0u;
                    v121 = 0u;
                  }
                }

                if (v116[0] == 1)
                {
                  v18 = v117;
                  if (v117)
                  {
                    if (v118)
                    {
                      v18 = (*(*v117 + 40))();
                    }
                  }
                }
              }

              ++v19;
              ++v20;
            }

            while (v19 != 4);
          }

          if (v37)
          {

            v37 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v32);
          if (v29 == 1 && v30)
          {
            if (BYTE8(v30))
            {
              (*(*v30 + 40))();
            }

            v30 = 0u;
            v31 = 0u;
          }

          if (v26 == 1 && v27)
          {
            if (BYTE8(v27))
            {
              (*(*v27 + 40))();
            }

            v28 = 0u;
            v27 = 0u;
          }

          if (v24 && (v25 & 1) != 0)
          {
            (*(*v24 + 40))();
          }

          if (v52)
          {

            v52 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v47);
          if (v44 == 1 && v45)
          {
            if (BYTE8(v45))
            {
              (*(*v45 + 40))();
            }

            v45 = 0u;
            v46 = 0u;
          }

          if (v41 == 1 && v42)
          {
            if (BYTE8(v42))
            {
              (*(*v42 + 40))();
            }

            v43 = 0u;
            v42 = 0u;
          }

          if (v39 && (v40 & 1) != 0)
          {
            (*(*v39 + 40))();
          }

          if (v67)
          {

            v67 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v62);
          if (v59 == 1 && v60)
          {
            if (BYTE8(v60))
            {
              (*(*v60 + 40))();
            }

            v60 = 0u;
            v61 = 0u;
          }

          if (v56 == 1 && v57)
          {
            if (BYTE8(v57))
            {
              (*(*v57 + 40))();
            }

            v58 = 0u;
            v57 = 0u;
          }

          if (v54 && (v55 & 1) != 0)
          {
            (*(*v54 + 40))();
          }

          if (v82)
          {

            v82 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v77);
          if (v74 == 1 && v75)
          {
            if (BYTE8(v75))
            {
              (*(*v75 + 40))();
            }

            v75 = 0u;
            v76 = 0u;
          }

          if (v71 == 1 && v72)
          {
            if (BYTE8(v72))
            {
              (*(*v72 + 40))();
            }

            v73 = 0u;
            v72 = 0u;
          }

          if (v69 && (v70 & 1) != 0)
          {
            (*(*v69 + 40))();
          }

          if (v97)
          {

            v97 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v92);
          if (v89 == 1 && v90)
          {
            if (BYTE8(v90))
            {
              (*(*v90 + 40))();
            }

            v90 = 0u;
            v91 = 0u;
          }

          if (v86 == 1 && v87)
          {
            if (BYTE8(v87))
            {
              (*(*v87 + 40))();
            }

            v88 = 0u;
            v87 = 0u;
          }

          if (v84 && (v85 & 1) != 0)
          {
            (*(*v84 + 40))();
          }

          if (v112)
          {

            v112 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v107);
          if (v104 == 1 && v105)
          {
            if (BYTE8(v105))
            {
              (*(*v105 + 40))();
            }

            v105 = 0u;
            v106 = 0u;
          }

          if (v101 == 1 && v102)
          {
            if (BYTE8(v102))
            {
              (*(*v102 + 40))();
            }

            v103 = 0u;
            v102 = 0u;
          }

          result = v99;
          if (v99)
          {
            if (v100)
            {
              return (*(*v99 + 5))();
            }
          }
        }
      }
    }
  }

  return result;
}

unsigned __int8 *re::BlendShapeDeformer::addDeformationInstance@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 2;
  if (a2[1])
  {
    v4 = 6;
  }

  v5 = 8;
  if (!a2[2])
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  v7 = 16;
  if (!a2[3])
  {
    v7 = 0;
  }

  v8 = v6 | v7;
  v9 = *a2;
  v10 = result[89] ^ 1;
  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = v8;
  *(a3 + 16) = v8;
  if (v10 | v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
    if (a2[4] == 1)
    {
      result = re::DeformerFeatureFlags::enableStitchableDeformation(result);
      if (result)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }
  }

  *(a3 + 24) = v11;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t *re::BlendShapeDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = a5;
  v87 = *MEMORY[0x1E69E9840];
  v61 = *a5;
  v11 = *(*a5 + 48);
  re::globalAllocators(a1);
  v12 = (*(*a2 + 32))(a2, 48, 8);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v13 = re::globalAllocators(v12)[2];
  *&v82 = &unk_1F5D05F10;
  *(&v83 + 1) = v13;
  *&v84 = &v82;
  v14 = (*(*a2 + 16))(a2, v12, &v82);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v82);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v14, a2, v11);
  v69 = v14;
  v57 = a2;
  re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v14 + 3, a2, v11);
  v59 = v11;
  if (v11)
  {
    v15 = 0;
    v68 = 0;
    v16 = 0;
    v62 = a4;
    v58 = v8;
    do
    {
      v17 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v61 + 8, v16);
      v19 = *(v17 + 8);
      v20 = v8[6];
      if (v20 <= v19)
      {
        re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v17 + 8), v20);
        _os_crash();
        __break(1u);
LABEL_47:
        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v24);
        _os_crash();
        __break(1u);
LABEL_48:
        *&v71 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 476;
        v78 = 2048;
        v79 = v11;
        v80 = 2048;
        v81 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_49:
        *&v71 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 476;
        v78 = 2048;
        v79 = v8;
        v80 = 2048;
        v81 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_50:
        *&v71 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v16;
        v80 = 2048;
        v81 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_51:
        *&v71 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v16;
        v80 = 2048;
        v81 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_52:
        *&v71 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v16;
        v80 = 2048;
        v81 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_53:
        *&v71 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v7;
        v80 = 2048;
        v81 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_54:
        *&v71 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v16;
        v80 = 2048;
        v81 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_55:
        v73 = 0;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v74 = 136315906;
        v75 = "operator[]";
        v76 = 1024;
        v77 = 468;
        v78 = 2048;
        v79 = v66;
        v80 = 2048;
        v81 = a4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_56:
        re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v6);
        _os_crash();
        __break(1u);
LABEL_57:
        re::internal::assertLog(5, v29, "assertion failure: '%s' (%s:line %i) Unsupported execution mode: %u.", "!Unreachable code", "allocateBuffers", 1172, a4);
        _os_crash();
        __break(1u);
      }

      v21 = v17;
      a4 = v8[5];
      v22 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v8[1], v19);
      v6 = *(v21 + 16);
      v24 = *(v22 + 336);
      if (v24 <= v6)
      {
        goto LABEL_47;
      }

      v25 = **(v22 + 344);
      v11 = *(v22 + 392);
      v7 = v25[5];
      if (v7 <= v11)
      {
        goto LABEL_48;
      }

      v8 = *(v25[6] + 4 * v11);
      v11 = v25[2];
      if (v11 <= v8)
      {
        goto LABEL_49;
      }

      v26 = (a4 + 312 * v19);
      v27 = *(v22 + 328);
      v11 = *(*(v22 + 352) + 24);
      v28 = v25[3];
      LOBYTE(v82) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v65 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v82) + 20);
      v30 = v27 + (v6 << 6);
      v32 = *(v30 + 16);
      v6 = v30 + 16;
      LOBYTE(v31) = v32;
      if ((v32 & 4) != 0)
      {
        LOBYTE(v82) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 2u);
        v33 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v82) + 20);
        v31 = *v6;
      }

      else
      {
        v33 = 0;
      }

      a4 = v62;
      v70 = v33;
      if ((v31 & 8) != 0)
      {
        LOBYTE(v82) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 3u);
        v7 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v82) + 20);
        if ((*v6 & 0x10) != 0)
        {
LABEL_12:
          LOBYTE(v82) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 4u);
          v34 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v82) + 20);
          goto LABEL_15;
        }
      }

      else
      {
        v7 = 0;
        if ((v31 & 0x10) != 0)
        {
          goto LABEL_12;
        }
      }

      v34 = 0;
LABEL_15:
      v35 = v69;
      if (v11)
      {
        v6 = v69[1];
        if (v6 <= v16)
        {
          goto LABEL_51;
        }

        *(v69[2] + v15) = *v11;
      }

      v11 = v69[1];
      if (v11 <= v16)
      {
        goto LABEL_50;
      }

      v36 = *(v28 + 336 * v8) + 3;
      v6 = v36 & 0xFFFFFFFFFFFFFFFCLL;
      v67 = v34;
      if (*(v69[2] + v15 + 8) != (v36 & 0xFFFFFFFFFFFFFFFCLL))
      {
        v37 = 4 * v6;
        if (v6)
        {
          if (v36 >> 62 || v37 >= 0xFFFFFFFFFFFFFFF0)
          {
            goto LABEL_56;
          }

          v38 = (*(*v57 + 32))(v57, (v37 + 16) | 3, 0);
          v39 = ((v38 + 19) & 0xFFFFFFFFFFFFFFFCLL);
          *(v39 - 2) = v6;
          *(v39 - 1) = v38;
          bzero(v39, 4 * v6);
          v35 = v69;
          v11 = v69[1];
        }

        else
        {
          v39 = 0;
        }

        if (v11 <= v16)
        {
          goto LABEL_52;
        }

        v40 = v35[2] + v15;
        v41 = *(v40 + 8);
        if (4 * v41 >= 4 * v6)
        {
          v42 = 4 * v6;
        }

        else
        {
          v42 = 4 * v41;
        }

        memcpy(v39, *v40, v42);
        bzero(v39 + v42, v37 - v42);
        v11 = v69[1];
        if (v11 <= v16)
        {
          goto LABEL_54;
        }

        v43 = (v69[2] + v15);
        *v43 = v39;
        v43[1] = v6;
        v34 = v67;
      }

      v66 = v16;
      v44 = (v65 + 15) & 0x1FFFFFFF0;
      v45 = v7;
      v46 = ((v70 + 15) & 0x1FFFFFFF0) + v44;
      v64 = v45;
      v47 = (v45 + 15) & 0x1FFFFFFF0;
      v48 = v47 + ((v34 + 15) & 0x1FFFFFFF0);
      v63 = v47;
      if (v62 == 1)
      {
        v16 = ((v70 + 15) & 0x1FFFFFFF0) + v44;
        a4 = a3;
        re::PerFrameGPUDataAllocator::perFrameAllocGpuBuffer(a3, v48 + v46, 0x10uLL, &v82);
        v11 = v69[1];
        v7 = v66;
        if (v11 <= v66)
        {
          goto LABEL_53;
        }

        v49 = v82;
        v6 = DWORD2(v82);
        v11 = v83;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuDataArray<float>(&v71, a3, *(v69[2] + v15), *(v69[2] + v15 + 8));
        a4 = v69[4];
        if (a4 <= v66)
        {
          goto LABEL_55;
        }

        v50 = v69[5] + v68;
        *v50 = v71;
        *(v50 + 16) = v72;
        a4 = v62;
        LODWORD(v46) = ((v70 + 15) & 0xFFFFFFF0) + v44;
      }

      else
      {
        if (v62)
        {
          goto LABEL_57;
        }

        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v48 + v46, 0x10uLL, &v82);
        v49 = v82;
        v6 = DWORD2(v82);
        v11 = v83;
      }

      *&v82 = v49;
      *(&v82 + 1) = __PAIR64__(v65, v6);
      *&v83 = v11;
      LOBYTE(v74) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v51 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v74);
      re::DeformationVertexBufferState::setOutputBuffer(v26, 1u, a4, &v82, v26[16] + 20 * v51 + 4);
      if (v70)
      {
        *&v82 = v49;
        DWORD2(v82) = v6 + v44;
        HIDWORD(v82) = v70;
        *&v83 = v11;
        LOBYTE(v74) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 2u);
        v52 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v74);
        re::DeformationVertexBufferState::setOutputBuffer(v26, 2u, a4, &v82, v26[16] + 20 * v52 + 4);
        LODWORD(v44) = v46;
      }

      if (v64)
      {
        *&v82 = v49;
        DWORD2(v82) = v6 + v44;
        HIDWORD(v82) = v64;
        *&v83 = v11;
        LOBYTE(v74) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 3u);
        v53 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v74);
        v7 = 20;
        re::DeformationVertexBufferState::setOutputBuffer(v26, 3u, a4, &v82, v26[16] + 20 * v53 + 4);
        LODWORD(v44) = v44 + v63;
      }

      else
      {
        v7 = 20;
      }

      if (v67)
      {
        *&v82 = v49;
        DWORD2(v82) = v6 + v44;
        HIDWORD(v82) = v67;
        *&v83 = v11;
        LOBYTE(v74) = 4;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 4u);
        v54 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v74);
        re::DeformationVertexBufferState::setOutputBuffer(v26, 4u, a4, &v82, v26[16] + 20 * v54 + 4);
      }

      v16 = v66 + 1;
      v68 += 24;
      v15 += 16;
      v8 = v58;
    }

    while (v59 != v66 + 1);
  }

  *a6 |= 0x1EuLL;
  *(a6 + 9) = 16843009;
  return v69;
}

void re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuDataArray<float>(uint64_t a1, re::PerFrameAllocatorGPU **this, __int32 *a3, uint64_t a4)
{
  v4 = a4;
  *&v8 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(this, 4 * a4, 4uLL, &v17);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  *a1 = v17;
  *(a1 + 8) = v10;
  *(a1 + 12) = v11;
  *(a1 + 16) = v12;
  if (v4)
  {
    v13 = (v9 + v10);
    v14 = v11 >> 2;
    for (i = v11 >> 2; i; --i)
    {
      v16 = *a3++;
      LODWORD(v8) = v16;
      *v13++ = v16;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, *&v7, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v14);
    _os_crash();
    __break(1u);
  }
}

void re::BlendShapeDeformer::stitchedFunctionParameters(void *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t *a4, void *a5)
{
  v5 = a4;
  v86 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  v8 = *(*a4 + 48);
  re::globalAllocators(a1);
  v9 = (*(*a2 + 32))(a2, 48, 8);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v10 = re::globalAllocators(v9)[2];
  *&v83[0] = &unk_1F5D05F68;
  *(&v83[1] + 1) = v10;
  *&v83[2] = v83;
  v11 = (*(*a2 + 16))(a2, v9, v83);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v83);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v11, a2, v8);
  v59 = a2;
  re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v11 + 3, a2, v8);
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v71 = a1 + 7;
    v15 = 8;
    v61 = v8;
    v62 = v7;
    v63 = v5;
    v60 = v11;
    do
    {
      v16 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v14);
      v18 = *(v16 + 8);
      v19 = *(v5 + 48);
      if (v19 <= v18)
      {
        re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v16 + 8), v19);
        _os_crash();
        __break(1u);
LABEL_53:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 476;
        v79 = 2048;
        v80 = v7;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_54:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        v14 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 476;
        v79 = 2048;
        v80 = v7;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_55:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v14;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_56:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v14;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_57:
        v74 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v14;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_58:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v14;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_59:
        re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v39);
        _os_crash();
        __break(1u);
LABEL_60:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v14;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v14;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        *&v72 = 0;
        v84 = 0u;
        v85 = 0u;
        memset(v83, 0, sizeof(v83));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 468;
        v79 = 2048;
        v80 = v14;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_63:
        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v5);
        _os_crash();
        __break(1u);
      }

      if (*v71)
      {
        v20 = *(v5 + 40) + 312 * v18;
        LOBYTE(v83[0]) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 2u);
        v70 = *(*(v20 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 56), v83) + 20);
        if (v70)
        {
          if (!a1[8])
          {
            goto LABEL_50;
          }

          LOBYTE(v83[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 3u);
          if (*(*(v20 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 56), v83) + 20))
          {
            if (!a1[9])
            {
              goto LABEL_50;
            }

            LOBYTE(v83[0]) = 4;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 4u);
            if (*(*(v20 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 56), v83) + 20))
            {
              if (!a1[10])
              {
                goto LABEL_50;
              }

              v68 = 1;
              v69 = 1;
              v21 = 3;
            }

            else
            {
              v68 = 1;
              v69 = 0;
              v21 = 2;
            }
          }

          else
          {
            v68 = 0;
            v69 = 0;
            v21 = 1;
          }

          v67 = v21;
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v67 = 0;
        }

        v22 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](*(v5 + 8), v18);
        v24 = **(v22 + 344);
        v7 = *(v22 + 392);
        v8 = v24[5];
        if (v8 <= v7)
        {
          goto LABEL_53;
        }

        v7 = *(v24[6] + 4 * v7);
        v8 = v24[2];
        if (v8 <= v7)
        {
          goto LABEL_54;
        }

        v25 = v24[3];
        v26 = *(*(v22 + 352) + 24);
        if (v26)
        {
          v8 = v11[1];
          if (v8 <= v14)
          {
            goto LABEL_60;
          }

          *(v11[2] + v15 - 8) = *v26;
        }

        v8 = v11[1];
        if (v8 <= v14)
        {
          goto LABEL_55;
        }

        v27 = v25 + 336 * v7;
        v28 = *v27 + 3;
        v5 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v11[2] + v15) != (v28 & 0xFFFFFFFFFFFFFFFCLL))
        {
          v29 = 4 * v5;
          if (v5)
          {
            if (v28 >> 62 || v29 >= 0xFFFFFFFFFFFFFFF0)
            {
              goto LABEL_63;
            }

            v30 = (*(*v59 + 32))(v59, (v29 + 16) | 3, 0);
            v31 = ((v30 + 19) & 0xFFFFFFFFFFFFFFFCLL);
            *(v31 - 2) = v5;
            *(v31 - 1) = v30;
            bzero(v31, 4 * v5);
            v8 = v11[1];
          }

          else
          {
            v31 = 0;
          }

          if (v8 <= v14)
          {
            goto LABEL_61;
          }

          v32 = (v11[2] + v15);
          v33 = *(v32 - 1);
          v34 = 4 * *v32;
          if (v34 >= 4 * v5)
          {
            v35 = 4 * v5;
          }

          else
          {
            v35 = v34;
          }

          memcpy(v31, v33, v35);
          bzero(v31 + v35, v29 - v35);
          v8 = v11[1];
          if (v8 <= v14)
          {
            goto LABEL_62;
          }

          v36 = (v11[2] + v15);
          *(v36 - 1) = v31;
          *v36 = v5;
          v8 = v11[1];
        }

        if (v8 <= v14)
        {
          goto LABEL_56;
        }

        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuDataArray<float>(&v72, a3, *(v11[2] + v15 - 8), *(v11[2] + v15));
        v8 = v11[4];
        if (v8 <= v14)
        {
          goto LABEL_57;
        }

        v38 = v11[5] + v12;
        *v38 = v72;
        *(v38 + 16) = v73;
        v8 = v11[4];
        if (v8 <= v14)
        {
          goto LABEL_58;
        }

        v39 = a5[1];
        if (v39 <= v14)
        {
          goto LABEL_59;
        }

        v40 = v11[5];
        v41 = *(v27 + 8);
        v42 = *(v27 + 132);
        v43 = (*a5 + v13);
        *v43 = &v71[v67];
        if (v43[2] <= 6uLL)
        {
          re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v43 + 1, 7uLL);
        }

        LODWORD(v83[0]) = 1;
        v44 = v42 / (16 * v41) / (v67 + 1) + 16 * v41;
        memset(v83 + 8, 0, 32);
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v83);
        LODWORD(v83[0]) = 3;
        re::BufferSlice::buffer(v27 + 136, v45);
        *(&v83[0] + 1) = *(v27 + 136);
        LODWORD(v83[1]) = 0;
        *(&v83[1] + 1) = *(v27 + 168);
        *&v83[2] = 0;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v83);
        LODWORD(v83[0]) = 2;
        *(&v83[0] + 1) = *(v40 + v12 + 16);
        LODWORD(v83[1]) = 0;
        *(&v83[1] + 1) = *(v40 + v12 + 8);
        *&v83[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v83);
        LODWORD(v83[0]) = 2;
        re::BufferSlice::buffer(v27 + 96, v46);
        *(&v83[0] + 1) = *(v27 + 96);
        LODWORD(v83[1]) = 0;
        *(&v83[1] + 1) = *(v27 + 128);
        *&v83[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v83);
        LODWORD(v83[0]) = 2;
        v48 = v70;
        if (v70)
        {
          re::BufferSlice::buffer(v27 + 96, v47);
          v49 = *(v27 + 128);
          v48 = *(v27 + 132);
          *(&v83[0] + 1) = *(v27 + 96);
          LODWORD(v83[1]) = 0;
          v50 = v49 + v44;
        }

        else
        {
          v50 = 0;
          *(&v83[0] + 1) = 0;
          *&v83[1] = 0;
        }

        *(&v83[1] + 1) = __PAIR64__(v48, v50);
        *&v83[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v83);
        LODWORD(v83[0]) = 2;
        v11 = v60;
        v52 = v68;
        if (v68)
        {
          re::BufferSlice::buffer(v27 + 96, v51);
          v53 = *(v27 + 128);
          v52 = *(v27 + 132);
          *(&v83[0] + 1) = *(v27 + 96);
          LODWORD(v83[1]) = 0;
          v54 = v53 + 2 * v44;
        }

        else
        {
          v54 = 0;
          *(&v83[0] + 1) = 0;
          *&v83[1] = 0;
        }

        *(&v83[1] + 1) = __PAIR64__(v52, v54);
        *&v83[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v83);
        LODWORD(v83[0]) = 2;
        if (v69)
        {
          re::BufferSlice::buffer(v27 + 96, v55);
          v57 = *(v27 + 128);
          v56 = *(v27 + 132);
          *(&v83[0] + 1) = *(v27 + 96);
          LODWORD(v83[1]) = 0;
          v58 = v57 + 3 * v44;
        }

        else
        {
          v58 = 0;
          v56 = 0;
          *(&v83[0] + 1) = 0;
          *&v83[1] = 0;
        }

        v7 = v62;
        v5 = v63;
        *(&v83[1] + 1) = __PAIR64__(v56, v58);
        *&v83[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v83);
        v8 = v61;
      }

LABEL_50:
      ++v14;
      v13 += 48;
      v12 += 24;
      v15 += 16;
    }

    while (v8 != v14);
  }
}