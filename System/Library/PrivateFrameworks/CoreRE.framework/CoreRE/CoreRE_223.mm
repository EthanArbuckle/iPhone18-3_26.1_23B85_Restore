void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
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
          v5 += 14;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_27, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void *re::internal::SharedObjectGraph::beginObject(void *result, uint64_t a2, __int128 *a3)
{
  v12 = a2;
  if (*result == 1)
  {
    v4 = result;
    v11 = result[9];
    v8 = -1;
    v10 = 0;
    v6 = a2;
    v7 = *a3;
    v9 = result[19] == 0;
    re::DynamicArray<re::internal::SharedObjectGraph::Entry>::add((result + 7), &v6);
    if (a2)
    {
      re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::addNew((v4 + 1), &v12, &v11);
    }

    if (*(v4 + 1) == 1)
    {
      v5 = v4[19];
      if (v5)
      {
        re::internal::SharedObjectGraph::addChild(v4, *(v4[21] + 4 * v5 - 4), v11);
      }
    }

    return re::DynamicArray<int>::add(v4 + 17, &v11);
  }

  return result;
}

__n128 re::DynamicArray<re::internal::SharedObjectGraph::Entry>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::internal::SharedObjectGraph::Entry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::addNew(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

void *re::internal::SharedObjectGraph::addChild(void *this, unsigned int a2, unsigned int a3)
{
  if (this[9] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = this;
  v5 = this[11] + 32 * a2;
  v6 = *(v5 + 24);
  v8 = this[13];
  v7 = this[14];
  *(v5 + 24) = v7;
  if (v7 >= v8)
  {
    v9 = v7 + 1;
    if (v8 < v7 + 1)
    {
      if (this[12])
      {
        v10 = 2 * v8;
        if (!v8)
        {
          v10 = 8;
        }

        if (v10 <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(this + 12, v11);
      }

      else
      {
        this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v4 + 12, v9);
        ++*(v4 + 30);
      }
    }

    v7 = v4[14];
  }

  *(v4[16] + 8 * v7) = a3 | (v6 << 32);
  ++v4[14];
  ++*(v4 + 30);
  return this;
}

uint64_t re::internal::SharedObjectGraph::object(re::internal::SharedObjectGraph *this, unsigned int a2)
{
  if (*this != 1)
  {
    return 0;
  }

  if (*(this + 9) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 11) + 32 * a2);
}

double re::internal::SharedObjectGraph::typeID@<D0>(re::internal::SharedObjectGraph *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (*this)
  {
    if (*(this + 9) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = *(*(this + 11) + 32 * a2 + 8);
    *a3 = v3;
  }

  else
  {
    *a3 = 0;
    *&v3 = 0xFFFFFFFFLL;
    *(a3 + 8) = 0xFFFFFFFFLL;
  }

  return *&v3;
}

re::internal::SharedObjectGraph *re::internal::SharedObjectGraph::markAndSweep(re::internal::SharedObjectGraph *this, re::Allocator *a2, void *a3)
{
  if (*this == 1)
  {
    v18 = v3;
    v19 = v4;
    v5 = this;
    v6 = *(this + 9);
    if (v6)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        if (*(*(v5 + 11) + 32 * v9 + 28) == 1)
        {
          this = re::internal::SharedObjectGraph::mark(v5, v10 - 1);
          v6 = *(v5 + 9);
        }

        v9 = v10;
        v11 = v6 > v10++;
      }

      while (v11);
      if (v6)
      {
        v12 = 0;
        v13 = 1;
        do
        {
          v14 = *(v5 + 11) + 32 * v12;
          if (*v14 && (*(v14 + 29) & 1) == 0)
          {
            this = *(v14 + 8);
            if (this)
            {
              re::TypeRegistry::typeInfo(this, (v14 + 8), v15);
              re::TypeInfo::TypeInfo(v17, &v16);
              re::TypeInfo::releaseInstance(v17, *v14, a2, a3);
              this = re::internal::SharedObjectGraph::mark(v5, v13 - 1);
              v6 = *(v5 + 9);
            }
          }

          v12 = v13;
          v11 = v6 > v13++;
        }

        while (v11);
      }
    }
  }

  return this;
}

re::internal::SharedObjectGraph *re::internal::SharedObjectGraph::mark(re::internal::SharedObjectGraph *this, unsigned int a2)
{
  if (*(this + 9) <= a2)
  {
    goto LABEL_13;
  }

  v2 = this;
  v3 = *(this + 11) + 32 * a2;
  if (*v3 && (*(v3 + 29) != 1 || (*(v3 + 30) & 1) == 0))
  {
    *(v3 + 29) = 257;
    v4 = *(v3 + 24);
    if (v4 != -1)
    {
      v5 = *(this + 14);
      while (v5 > v4)
      {
        this = re::internal::SharedObjectGraph::mark(v2, *(*(v2 + 16) + 8 * v4));
        v5 = *(v2 + 14);
        if (v5 <= v4)
        {
          goto LABEL_12;
        }

        v4 = *(*(v2 + 16) + 8 * v4 + 4);
        if (v4 == -1)
        {
          return this;
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
  }

  return this;
}

void *re::DynamicArray<re::internal::SharedObjectGraph::Entry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::internal::SharedObjectGraph::Entry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::SharedObjectGraph::Entry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::SharedObjectGraph::Entry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::SharedObjectGraph::Entry>::setCapacity(v5, a2);
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
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v13 = v8[1];
          v8 += 2;
          *v11 = v12;
          v11[1] = v13;
          v11 += 2;
          v10 -= 32;
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

uint64_t re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v7 = *(a2 + 16);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27, 4 * v10);
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

uint64_t re::PropertyBagHelper::copyToIntrospectedData(id *a1, re *a2, re::DynamicString **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v31[0] = a5;
  v31[1] = a6;
  v31[2] = a4;
  v9 = *a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = *a1;
    v13 = [v12 objectForKey:@"type"];
    v14 = v13;
    if (v13 && (objc_opt_class(), v13 = objc_opt_isKindOfClass(), (v13 & 1) != 0))
    {
      re::getPrettyTypeName(a2, &v27);
      if (v28)
      {
        v15 = v30;
      }

      else
      {
        v15 = v29;
      }

      v16 = strcmp(v15, [v14 UTF8String]);
      v17 = v27;
      if (v27 && (v28 & 1) != 0)
      {
        v17 = (*(*v27 + 40))();
      }

      if (!v16)
      {
        v25 = [v12 objectForKey:@"value"];
        if (v25)
        {
        }

        else
        {
          v26 = *re::foundationSerializationLogObjects(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v27) = 0;
            _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "PropertyBagReader; property bag missing value.", &v27, 2u);
          }

          Value = 0;
        }

        goto LABEL_24;
      }

      v18 = *re::foundationSerializationLogObjects(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        re::getPrettyTypeName(a2, &v27);
        if (v28)
        {
          v20 = v30;
        }

        else
        {
          v20 = v29;
        }

        *buf = 136315138;
        v33 = v20;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "PropertyBagReader; property bag is wrong type, expecting '%s'.", buf, 0xCu);

        if (v27 && (v28 & 1) != 0)
        {
          (*(*v27 + 40))();
        }
      }
    }

    else
    {
      v23 = *re::foundationSerializationLogObjects(v13);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "PropertyBagReader; missing property bag type.", &v27, 2u);
      }
    }

    Value = 0;
LABEL_24:

    return Value;
  }

  v21 = *re::foundationSerializationLogObjects(v11);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v27) = 0;
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "PropertyBagReader; expected NSDictionary.", &v27, 2u);
  }

  return 0;
}

uint64_t anonymous namespace::PropertyBagReader::readValue(_anonymous_namespace_::PropertyBagReader *this, objc_object *a2, const re::IntrospectionBase *a3, re::DynamicString **a4)
{
  v249 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  switch(*(a3 + 4))
  {
    case 0:
      v9 = v7;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v112 = *re::foundationSerializationLogObjects(isKindOfClass);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          v176 = v112;
          re::getPrettyTypeName(a3, __src);
          v177 = (__src[8] & 1) != 0 ? *&__src[16] : &__src[9];
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v177;
          _os_log_error_impl(&dword_1E1C61000, v176, OS_LOG_TYPE_ERROR, "PropertyBagReader; expected NSNumber for '%s'.", &buf, 0xCu);

          if (*__src)
          {
            if (__src[8])
            {
              (*(**__src + 40))();
            }
          }
        }

        LinearArray = 0;
LABEL_204:

        goto LABEL_214;
      }

      v11 = v9;
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v214);
      }

      if (re::introspect<BOOL>(BOOL)::info == a3)
      {
        v141 = [(objc_object *)v11 BOOLValue];
      }

      else
      {
        {
          re::introspect<char>(BOOL)::info = re::introspect_char(0, v215);
        }

        if (re::introspect<char>(BOOL)::info == a3)
        {
          v141 = [(objc_object *)v11 charValue];
        }

        else
        {
          {
            re::introspect<double>(BOOL)::info = re::introspect_double(0, v216);
          }

          if (re::introspect<double>(BOOL)::info == a3)
          {
            [(objc_object *)v11 doubleValue];
            *__src = v151;
            goto LABEL_202;
          }

          {
            re::introspect<float>(BOOL)::info = re::introspect_float(0, v217);
          }

          if (re::introspect<float>(BOOL)::info == a3)
          {
            [(objc_object *)v11 floatValue];
            *__src = v153;
            goto LABEL_202;
          }

          {
            re::introspect<short>(BOOL)::info = re::introspect_short(0, v218);
          }

          if (re::introspect<short>(BOOL)::info == a3)
          {
            v179 = [(objc_object *)v11 shortValue];
LABEL_263:
            *__src = v179;
            goto LABEL_202;
          }

          {
            re::introspect<int>(BOOL)::info = re::introspect_int(0, v219);
          }

          if (re::introspect<int>(BOOL)::info == a3)
          {
            v181 = [(objc_object *)v11 intValue];
LABEL_267:
            *__src = v181;
            goto LABEL_202;
          }

          {
            re::introspect<long>(BOOL)::info = re::introspect_long(0, v220);
          }

          if (re::introspect<long>(BOOL)::info == a3)
          {
            v187 = [(objc_object *)v11 longValue];
LABEL_296:
            *__src = v187;
            goto LABEL_202;
          }

          if (re::introspect<unsigned long>() == a3)
          {
LABEL_288:
            v187 = [(objc_object *)v11 unsignedLongLongValue];
            goto LABEL_296;
          }

          if (re::introspect<long long>(0) == a3)
          {
            v187 = [(objc_object *)v11 longLongValue];
            goto LABEL_296;
          }

          if (re::introspect<unsigned char>(0) != a3)
          {
            if (re::introspect<unsigned short>(0) != a3)
            {
              if (re::introspect<unsigned int>(0) != a3)
              {
                v12 = re::introspect<unsigned long long>(0);
                if (v12 != a3)
                {
                  v13 = *re::foundationSerializationLogObjects(v12);
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                  {
                    v207 = v13;
                    re::getPrettyTypeName(a3, __src);
                    if (__src[8])
                    {
                      v208 = *&__src[16];
                    }

                    else
                    {
                      v208 = &__src[9];
                    }

                    LODWORD(buf) = 136315138;
                    *(&buf + 4) = v208;
                    _os_log_error_impl(&dword_1E1C61000, v207, OS_LOG_TYPE_ERROR, "PropertyBagWriter; unhandled type '%s'.", &buf, 0xCu);

                    if (*__src && (__src[8] & 1) != 0)
                    {
                      (*(**__src + 40))();
                    }
                  }

                  LinearArray = 0;
LABEL_203:

                  goto LABEL_204;
                }

                goto LABEL_288;
              }

              v181 = [(objc_object *)v11 unsignedIntValue];
              goto LABEL_267;
            }

            v179 = [(objc_object *)v11 unsignedShortValue];
            goto LABEL_263;
          }

          v141 = [(objc_object *)v11 unsignedCharValue];
        }
      }

      __src[0] = v141;
LABEL_202:
      memcpy(a4, __src, *(a3 + 5));
      LinearArray = 1;
      goto LABEL_203;
    case 1:
      v18 = v7;
      v54 = *(a3 + 6);
      if (*(v54 + 16) != 8)
      {
        goto LABEL_62;
      }

      v55 = *(v54 + 56);
      if (!v55)
      {
        goto LABEL_62;
      }

      v56 = 0;
      v57 = *(v54 + 64);
      v58 = 8 * v55;
      do
      {
        v59 = v57[v56 / 8];
        if (*v59 == 2)
        {
          if (*a4)
          {
            re::introspectionReleasePointer(*a4, *this, *(this + 2), *(a3 + 6));
            *a4 = 0;
            v57 = *(v54 + 64);
          }

          v142 = *v57;
          if (**v57 != 3)
          {
            v143 = (v57 + 1);
            do
            {
              v144 = *v143++;
              v142 = v144;
            }

            while (*v144 != 3);
          }

LABEL_192:
          LinearArray = PointerPolymorphic;
          goto LABEL_213;
        }

        v56 += 8;
      }

      while (v58 != v56);
LABEL_62:
      v60 = [MEMORY[0x1E695DFB0] null];

      if (v60 == v18)
      {
        if (*a4)
        {
          re::introspectionReleasePointer(*a4, *this, *(this + 2), *(a3 + 6));
          *a4 = 0;
        }

        goto LABEL_222;
      }

      v61 = *(a3 + 6);
      {
        re::introspect<char>(BOOL)::info = re::introspect_char(0, v213);
      }

      v62 = *a4;
      if (v61 != re::introspect<char>(BOOL)::info)
      {
        if (!v62)
        {
          v62 = re::introspectionAllocPointer(*this, *(this + 2), *(a3 + 6));
        }

        if ((Value & 1) == 0)
        {
          v64 = *re::foundationSerializationLogObjects(Value);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v188 = v64;
            re::getPrettyTypeName(a3, __src);
            v189 = (__src[8] & 1) != 0 ? *&__src[16] : &__src[9];
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v189;
            _os_log_error_impl(&dword_1E1C61000, v188, OS_LOG_TYPE_ERROR, "PropertyBagReader; failed to read pointer target of type '%s'.", &buf, 0xCu);

            if (*__src)
            {
              if (__src[8])
              {
                (*(**__src + 40))();
              }
            }
          }

          re::introspectionReleasePointer(v62, *this, *(this + 2), *(a3 + 6));
          goto LABEL_212;
        }

LABEL_221:
        *a4 = v62;
LABEL_222:
        LinearArray = 1;
        goto LABEL_213;
      }

      if (v62)
      {
        re::introspectionReleasePointer(v62, *this, *(this + 2), *(a3 + 6));
        *a4 = 0;
      }

      objc_opt_class();
      v131 = objc_opt_isKindOfClass();
      if ((v131 & 1) == 0)
      {
        v149 = *re::foundationSerializationLogObjects(v131);
        if (!os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_212;
        }

        v104 = v149;
        re::getPrettyTypeName(a3, __src);
        if (__src[8])
        {
          v190 = *&__src[16];
        }

        else
        {
          v190 = &__src[9];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v190;
        v106 = "PropertyBagReader; expected NSString for pointer '%s'.";
        goto LABEL_143;
      }

      v132 = v18;
      v133 = [(objc_object *)v132 lengthOfBytesUsingEncoding:4];
      v134 = v133 + 1;
      if ((v134 << 31) >> 31 == v134)
      {
        v62 = (*(**this + 32))(*this, v134, 0);
        memcpy(v62, [(objc_object *)v132 UTF8String], v134);

        goto LABEL_221;
      }

      v135 = *re::foundationSerializationLogObjects(v133);
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        *__src = 0;
        _os_log_error_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_ERROR, "PropertyBagReader; string length overflowed.", __src, 2u);
      }

      goto LABEL_212;
    case 2:
      v18 = v7;
      objc_opt_class();
      v51 = objc_opt_isKindOfClass();
      if (v51)
      {
        v20 = v18;
        v52 = *(a3 + 16);
        v53 = [(objc_object *)v20 count];
        if (v53 == v52)
        {
          v29 = *(a3 + 6);
          v30 = this;
          v31 = v20;
          v28 = a4;
          goto LABEL_56;
        }

        v124 = *re::foundationSerializationLogObjects(v53);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          v182 = v124;
          re::getPrettyTypeName(a3, __src);
          v183 = (__src[8] & 1) != 0 ? *&__src[16] : &__src[9];
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v183;
          _os_log_error_impl(&dword_1E1C61000, v182, OS_LOG_TYPE_ERROR, "PropertyBagReader; array incorrect size for '%s'.", &buf, 0xCu);

          if (*__src)
          {
            if (__src[8])
            {
              (*(**__src + 40))();
            }
          }
        }

        goto LABEL_162;
      }

      v113 = *re::foundationSerializationLogObjects(v51);
      if (!os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_212;
      }

      v104 = v113;
      re::getPrettyTypeName(a3, __src);
      if (__src[8])
      {
        v114 = *&__src[16];
      }

      else
      {
        v114 = &__src[9];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v114;
      v106 = "PropertyBagReader; expected NSArray for '%s'.";
      goto LABEL_143;
    case 3:
      v18 = v7;
      objc_opt_class();
      v45 = objc_opt_isKindOfClass();
      if (v45)
      {
        v46 = v18;
        (*(*a3 + 72))(a3, *this, *(this + 2), a4, [(NSArray *)v46 count]);
        if ([(NSArray *)v46 count])
        {
          v47 = (*(*a3 + 96))(a3, a4, 0);
        }

        else
        {
          LinearArray = 1;
        }

        goto LABEL_213;
      }

      v110 = *re::foundationSerializationLogObjects(v45);
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_212;
      }

      v104 = v110;
      re::getPrettyTypeName(a3, __src);
      if (__src[8])
      {
        v111 = *&__src[16];
      }

      else
      {
        v111 = &__src[9];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v111;
      v106 = "PropertyBagReader; expected NSArray for '%s'.";
      goto LABEL_143;
    case 4:
      v18 = v7;
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();
      if ((v19 & 1) == 0)
      {
        v103 = *re::foundationSerializationLogObjects(v19);
        if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_212;
        }

        v104 = v103;
        re::getPrettyTypeName(a3, __src);
        if (__src[8])
        {
          v105 = *&__src[16];
        }

        else
        {
          v105 = &__src[9];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v105;
        v106 = "PropertyBagReader; expected NSArray for '%s'.";
        goto LABEL_143;
      }

      v20 = v18;
      if (((*(*a3 + 88))(a3, a4) & 1) == 0)
      {
        v21 = *this;
        v22 = v8;
        v23 = *(this + 2);
        v24 = [(objc_object *)v20 count];
        v25 = v23;
        v8 = v22;
        (*(*a3 + 64))(a3, a4, v21, v25, v24);
      }

      v26 = (*(*a3 + 80))(a3, a4);
      v27 = [(objc_object *)v20 count];
      if (v26 == v27)
      {
        if (![(objc_object *)v20 count])
        {
          goto LABEL_185;
        }

        v28 = (*(*a3 + 96))(a3, a4, 0);
        v29 = *(a3 + 6);
        v30 = this;
        v31 = v20;
LABEL_56:
        goto LABEL_163;
      }

      v38 = *re::foundationSerializationLogObjects(v27);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_162;
      }

      *__src = 0;
      v39 = "PropertyBagReader; cannot resize existing fixed array.";
      goto LABEL_160;
    case 5:
      v18 = v7;
      objc_opt_class();
      v36 = objc_opt_isKindOfClass();
      if (v36)
      {
        v20 = v18;
        v37 = (*(*a3 + 80))(a3, a4);
        if (v37)
        {
          v38 = *re::foundationSerializationLogObjects(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *__src = 0;
            v39 = "PropertyBagReader; cannot read into existing data array.";
LABEL_160:
            _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, v39, __src, 2u);
          }

LABEL_162:
          LinearArray = 0;
        }

        else if ([(objc_object *)v20 count])
        {
          v136 = v8;
          v137 = 0;
          while (1)
          {
            v138 = (*(*a3 + 72))(a3, *this, *(this + 2), a4);
            v139 = [(objc_object *)v20 objectAtIndex:v137];
            if ((v140 & 1) == 0)
            {
              break;
            }

            if ([(objc_object *)v20 count]<= ++v137)
            {
              LinearArray = 1;
              goto LABEL_219;
            }
          }

          v152 = *re::foundationSerializationLogObjects(v140);
          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
          {
            *__src = 67109120;
            *&__src[4] = v137;
            _os_log_error_impl(&dword_1E1C61000, v152, OS_LOG_TYPE_ERROR, "PropertyBagReader; dynamic array failed to read [%d].", __src, 8u);
          }

          LinearArray = 0;
LABEL_219:
          v8 = v136;
        }

        else
        {
LABEL_185:
          LinearArray = 1;
        }

LABEL_163:

        goto LABEL_213;
      }

      v107 = *re::foundationSerializationLogObjects(v36);
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_212;
      }

      v104 = v107;
      re::getPrettyTypeName(a3, __src);
      if (__src[8])
      {
        v108 = *&__src[16];
      }

      else
      {
        v108 = &__src[9];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v108;
      v106 = "PropertyBagReader; expected NSArray for '%s'.";
      goto LABEL_143;
    case 6:
      objc_opt_class();
      v65 = objc_opt_isKindOfClass();
      if (v65)
      {
        *__src = [(objc_object *)v8 UTF8String];
        *&__src[8] = strlen(*__src);
        re::DynamicString::operator=(a4, __src);
        goto LABEL_150;
      }

      v115 = *re::foundationSerializationLogObjects(v65);
      if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_137;
      }

      v100 = v115;
      re::getPrettyTypeName(a3, __src);
      if (__src[8])
      {
        v178 = *&__src[16];
      }

      else
      {
        v178 = &__src[9];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v178;
      v102 = "PropertyBagReader; expected NSString for string '%s'.";
      goto LABEL_258;
    case 7:
      v18 = v7;
      objc_opt_class();
      v66 = objc_opt_isKindOfClass();
      if (v66)
      {
        v231 = v8;
        v67 = v18;
        (*(*a3 + 88))(a3, a4);
        (*(*a3 + 72))(a3, a4, [(objc_object *)v67 count]);
        v68 = (*(**(this + 1) + 32))(*(this + 1), *(*(a3 + 6) + 20), 0);
        *__src = &unk_1F5D16CF8;
        *&__src[8] = this;
        v244 = __src;
        v240 = &v238 + 8;
        *&v238 = v68;
        *(&v238 + 1) = &unk_1F5D16CF8;
        v239 = this;
        std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](__src);
        buf = 0u;
        v246 = 0u;
        v247 = 0u;
        v248 = 0u;
        v69 = v67;
        v70 = [(objc_object *)v69 countByEnumeratingWithState:&buf objects:__src count:16];
        if (v70)
        {
          v71 = v70;
          v233 = a4;
          v235 = *v246;
          v229 = v18;
          while (1)
          {
            for (i = 0; i != v71; ++i)
            {
              if (*v246 != v235)
              {
                objc_enumerationMutation(v69);
              }

              v73 = *(*(&buf + 1) + 8 * i);
              v74 = [(objc_object *)v69 objectForKeyedSubscript:v73];
              v75 = *this;
              v76 = *(a3 + 6);
              re::introspectionCallConstructor(*(this + 2), v76, v238);
              re::introspectionInitElement(v75, v77, v76, v238);
              if ((v78 & 1) == 0)
              {
                v145 = *re::foundationSerializationLogObjects(v78);
                if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                {
                  *v241 = 0;
                  _os_log_error_impl(&dword_1E1C61000, v145, OS_LOG_TYPE_ERROR, "PropertyBagReader; failed to read hash table key", v241, 2u);
                }

                (*(*a3 + 112))(a3, v238);
LABEL_198:

                LinearArray = 0;
                v18 = v229;
LABEL_199:

                std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](&v238);
                v8 = v231;
                goto LABEL_213;
              }

              v79 = (*(*a3 + 96))(a3, *this, *(this + 2), v233, v238);
              (*(*a3 + 112))(a3, v238);
              if ((v80 & 1) == 0)
              {
                v146 = *re::foundationSerializationLogObjects(v80);
                if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
                {
                  *v241 = 0;
                  _os_log_error_impl(&dword_1E1C61000, v146, OS_LOG_TYPE_ERROR, "PropertyBagReader; failed to read hash table value", v241, 2u);
                }

                goto LABEL_198;
              }
            }

            v71 = [(objc_object *)v69 countByEnumeratingWithState:&buf objects:__src count:16];
            LinearArray = 1;
            v18 = v229;
            if (!v71)
            {
              goto LABEL_199;
            }
          }
        }

        LinearArray = 1;
        goto LABEL_199;
      }

      v116 = *re::foundationSerializationLogObjects(v66);
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_212;
      }

      v104 = v116;
      re::getPrettyTypeName(a3, __src);
      if (__src[8])
      {
        v117 = *&__src[16];
      }

      else
      {
        v117 = &__src[9];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v117;
      v106 = "PropertyBagReader; expected NSDictionary for hash table '%s'.";
LABEL_143:
      _os_log_error_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_ERROR, v106, &buf, 0xCu);

      goto LABEL_144;
    case 8:
      v18 = v7;
      v84 = *(a3 + 14);
      if (!v84)
      {
        goto LABEL_94;
      }

      v85 = *(a3 + 8);
      v86 = 1;
      v87 = *(a3 + 14);
      v88 = 1;
      do
      {
        if (**v85 == 4 && (*(*v85 + 4) & 1) != 0)
        {
          break;
        }

        v88 = v86++ < v84;
        v85 += 8;
        --v87;
      }

      while (v87);
      if (v88)
      {
        StructureMember = re::introspectionFirstStructureMember(a3, v83);
        if (StructureMember)
        {
          goto LABEL_192;
        }

        v147 = *re::foundationSerializationLogObjects(0);
        if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_212;
        }

        v121 = v147;
        re::getPrettyTypeName(a3, __src);
        if (__src[8])
        {
          v148 = *&__src[16];
        }

        else
        {
          v148 = &__src[9];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v148;
        v123 = "PropertyBagReader; expected member in for struct '%s'.";
      }

      else
      {
LABEL_94:
        objc_opt_class();
        v91 = objc_opt_isKindOfClass();
        if (v91)
        {
          v92 = v18;
          v93 = [(objc_object *)v92 objectForKey:@"type"];
          v94 = v93;
          if (v93 && (objc_opt_class(), v93 = objc_opt_isKindOfClass(), (v93 & 1) != 0))
          {
            v236 = v92;
            v232 = v8;
            re::getPrettyTypeName(a3, __src);
            if (__src[8])
            {
              v95 = *&__src[16];
            }

            else
            {
              v95 = &__src[9];
            }

            v96 = strcmp(v95, [v94 UTF8String]);
            v97 = *__src;
            if (*__src && (__src[8] & 1) != 0)
            {
              v97 = (*(**__src + 40))();
            }

            v92 = v236;
            if (v96)
            {
              v98 = *re::foundationSerializationLogObjects(v97);
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                v191 = v98;
                re::getPrettyTypeName(a3, __src);
                if (__src[8])
                {
                  v192 = *&__src[16];
                }

                else
                {
                  v192 = &__src[9];
                }

                LODWORD(buf) = 136315138;
                *(&buf + 4) = v192;
                _os_log_error_impl(&dword_1E1C61000, v191, OS_LOG_TYPE_ERROR, "PropertyBagReader; struct is wrong type '%s'.", &buf, 0xCu);

                v8 = v232;
                if (*__src && (__src[8] & 1) != 0)
                {
                  (*(**__src + 40))();
                }

                LinearArray = 0;
                v92 = v236;
              }

              else
              {
                LinearArray = 0;
                v8 = v232;
              }
            }

            else
            {
              v154 = [(objc_object *)v236 objectForKey:@"value"];
              v230 = v154;
              if (v154 && (v155 = v154, objc_opt_class(), v154 = objc_opt_isKindOfClass(), (v154 & 1) != 0))
              {
                v247 = 0u;
                v248 = 0u;
                buf = 0u;
                v246 = 0u;
                obj = v155;
                v221 = [obj countByEnumeratingWithState:&buf objects:__src count:16];
                if (!v221)
                {
                  LinearArray = 1;
LABEL_294:
                  v8 = v232;
                  goto LABEL_332;
                }

                v222 = *v246;
                v234 = a4;
LABEL_228:
                v156 = 0;
                while (1)
                {
                  if (*v246 != v222)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v227 = v156;
                  v157 = *(*(&buf + 1) + 8 * v156);
                  objc_opt_class();
                  v158 = objc_opt_isKindOfClass();
                  if ((v158 & 1) == 0)
                  {
                    break;
                  }

                  v159 = v157;
                  v160 = [v159 objectForKey:@"name"];
                  v161 = v160;
                  if (!v160 || (objc_opt_class(), v160 = objc_opt_isKindOfClass(), (v160 & 1) == 0))
                  {
                    v193 = *re::foundationSerializationLogObjects(v160);
                    v8 = v232;
                    if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                    {
                      v205 = v193;
                      re::getPrettyTypeName(a3, &v238);
                      if (BYTE8(v238))
                      {
                        v206 = v239;
                      }

                      else
                      {
                        v206 = (&v238 + 9);
                      }

                      *v241 = 136315138;
                      v242 = v206;
                      _os_log_error_impl(&dword_1E1C61000, v205, OS_LOG_TYPE_ERROR, "PropertyBagReader; missing member name '%s'.", v241, 0xCu);

                      if (v238 && (BYTE8(v238) & 1) != 0)
                      {
                        (*(*v238 + 40))();
                      }

                      v8 = v232;
                      v92 = v236;
                    }

                    goto LABEL_331;
                  }

                  *v237 = 0;
                  v228 = v161;
                  v162 = [v161 UTF8String];
                  *v237 = 0;
                  IntrospectionMemberByNameRecursive = re::getIntrospectionMemberByNameRecursive(a3, v162, v237, v163);
                  v8 = v232;
                  if (!IntrospectionMemberByNameRecursive)
                  {
                    v200 = *re::foundationSerializationLogObjects(0);
                    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                    {
                      v201 = v161;
                      v202 = v200;
                      v203 = [v161 UTF8String];
                      LODWORD(v238) = 136315138;
                      *(&v238 + 4) = v203;
                      _os_log_error_impl(&dword_1E1C61000, v202, OS_LOG_TYPE_ERROR, "PropertyBagReader; unknown member name '%s'.", &v238, 0xCu);

                      v92 = v236;
                    }

LABEL_330:

LABEL_331:
                    LinearArray = 0;
                    goto LABEL_332;
                  }

                  v165 = IntrospectionMemberByNameRecursive;
                  v225 = *v237;
                  v166 = v159;
                  v167 = [v159 objectForKey:@"type"];
                  v226 = v167;
                  if (!v167 || (v168 = v167, objc_opt_class(), v167 = objc_opt_isKindOfClass(), (v167 & 1) == 0))
                  {
                    v194 = *re::foundationSerializationLogObjects(v167);
                    v159 = v166;
                    if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                    {
                      v195 = v194;
                      re::getPrettyTypeName(a3, &v238);
                      if (BYTE8(v238))
                      {
                        v196 = v239;
                      }

                      else
                      {
                        v196 = (&v238 + 9);
                      }

                      *v241 = 136315138;
                      v242 = v196;
                      _os_log_error_impl(&dword_1E1C61000, v195, OS_LOG_TYPE_ERROR, "PropertyBagReader; missing member type '%s'.", v241, 0xCu);

                      if (v238 && (BYTE8(v238) & 1) != 0)
                      {
                        (*(*v238 + 40))();
                      }

                      v8 = v232;
                      v92 = v236;
                    }

LABEL_329:

                    goto LABEL_330;
                  }

                  v224 = v166;
                  re::getPrettyTypeName(v165[2], &v238);
                  v169 = [v168 UTF8String];
                  v170 = BYTE8(v238) & 1;
                  if (BYTE8(v238))
                  {
                    v171 = v239;
                  }

                  else
                  {
                    v171 = &v238 + 9;
                  }

                  v172 = strcmp(v171, v169);
                  v173 = v238;
                  if (v238 && v170)
                  {
                    v173 = (*(*v238 + 40))();
                  }

                  if (v172)
                  {
                    v204 = *re::foundationSerializationLogObjects(v173);
                    v8 = v232;
                    v92 = v236;
                    v159 = v224;
                    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
                    {
                      v211 = v204;
                      re::getPrettyTypeName(a3, &v238);
                      if (BYTE8(v238))
                      {
                        v212 = v239;
                      }

                      else
                      {
                        v212 = (&v238 + 9);
                      }

                      *v241 = 136315138;
                      v242 = v212;
                      _os_log_error_impl(&dword_1E1C61000, v211, OS_LOG_TYPE_ERROR, "PropertyBagReader; member is wrong type '%s'.", v241, 0xCu);

                      if (v238 && (BYTE8(v238) & 1) != 0)
                      {
                        (*(*v238 + 40))();
                      }

                      v8 = v232;
                      v92 = v236;
                      v159 = v224;
                    }

                    goto LABEL_329;
                  }

                  v174 = [v166 objectForKey:@"value"];

                  if (!Member)
                  {
                    goto LABEL_353;
                  }

                  v156 = v227 + 1;
                  v92 = v236;
                  if (v221 == v227 + 1)
                  {
                    LinearArray = 1;
                    v8 = v232;
                    v221 = [obj countByEnumeratingWithState:&buf objects:__src count:16];
                    if (!v221)
                    {
                      goto LABEL_332;
                    }

                    goto LABEL_228;
                  }
                }

                v199 = *re::foundationSerializationLogObjects(v158);
                if (!os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
                {
                  LinearArray = 0;
                  goto LABEL_294;
                }

                v209 = v199;
                re::getPrettyTypeName(a3, &v238);
                if (BYTE8(v238))
                {
                  v210 = v239;
                }

                else
                {
                  v210 = (&v238 + 9);
                }

                *v241 = 136315138;
                v242 = v210;
                _os_log_error_impl(&dword_1E1C61000, v209, OS_LOG_TYPE_ERROR, "PropertyBagReader; expected NSDictionary for member '%s'.", v241, 0xCu);

                if (v238 && (BYTE8(v238) & 1) != 0)
                {
                  (*(*v238 + 40))();
                }

LABEL_353:
                LinearArray = 0;
                v8 = v232;
                v92 = v236;
LABEL_332:
              }

              else
              {
                v180 = *re::foundationSerializationLogObjects(v154);
                if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                {
                  v197 = v180;
                  re::getPrettyTypeName(a3, __src);
                  if (__src[8])
                  {
                    v198 = *&__src[16];
                  }

                  else
                  {
                    v198 = &__src[9];
                  }

                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v198;
                  _os_log_error_impl(&dword_1E1C61000, v197, OS_LOG_TYPE_ERROR, "PropertyBagReader; missing struct value '%s'.", &buf, 0xCu);

                  if (*__src && (__src[8] & 1) != 0)
                  {
                    (*(**__src + 40))();
                  }

                  LinearArray = 0;
                  v8 = v232;
                  v92 = v236;
                }

                else
                {
                  LinearArray = 0;
                  v8 = v232;
                }
              }
            }
          }

          else
          {
            v130 = *re::foundationSerializationLogObjects(v93);
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              v184 = v92;
              v185 = v130;
              re::getPrettyTypeName(a3, __src);
              if (__src[8])
              {
                v186 = *&__src[16];
              }

              else
              {
                v186 = &__src[9];
              }

              LODWORD(buf) = 136315138;
              *(&buf + 4) = v186;
              _os_log_error_impl(&dword_1E1C61000, v185, OS_LOG_TYPE_ERROR, "PropertyBagReader; missing struct type '%s'.", &buf, 0xCu);

              if (*__src && (__src[8] & 1) != 0)
              {
                (*(**__src + 40))();
              }

              LinearArray = 0;
              v92 = v184;
            }

            else
            {
              LinearArray = 0;
            }
          }

          goto LABEL_213;
        }

        v120 = *re::foundationSerializationLogObjects(v91);
        if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_212;
        }

        v121 = v120;
        re::getPrettyTypeName(a3, __src);
        if (__src[8])
        {
          v122 = *&__src[16];
        }

        else
        {
          v122 = &__src[9];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v122;
        v123 = "PropertyBagReader; expected NSDictionary for struct '%s'.";
      }

      _os_log_error_impl(&dword_1E1C61000, v121, OS_LOG_TYPE_ERROR, v123, &buf, 0xCu);

LABEL_144:
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }

LABEL_212:
      LinearArray = 0;
LABEL_213:

      goto LABEL_214;
    case 9:
      v9 = v7;
      objc_opt_class();
      v81 = objc_opt_isKindOfClass();
      LinearArray = v81;
      if (v81)
      {
        v11 = v9;
        IntrospectionEnumValueWithVersioning = re::getIntrospectionEnumValueWithVersioning(*(a3 + 8), [(objc_object *)v11 UTF8String], &buf);
        if (buf)
        {
          memcpy(a4, &buf + 8, *(a3 + 5));
        }

        else
        {
          v125 = *re::foundationSerializationLogObjects(IntrospectionEnumValueWithVersioning);
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            v126 = v11;
            v127 = v125;
            v128 = [(objc_object *)v11 UTF8String];
            v129 = *(a3 + 6);
            *__src = 136315394;
            *&__src[4] = v128;
            *&__src[12] = 2080;
            *&__src[14] = v129;
            _os_log_error_impl(&dword_1E1C61000, v127, OS_LOG_TYPE_ERROR, "PropertyBagReader; unexpected enum '%s' type for '%s' - skipping.", __src, 0x16u);
          }
        }

        goto LABEL_203;
      }

      v118 = *re::foundationSerializationLogObjects(v81);
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v119 = *(a3 + 6);
        *__src = 136315138;
        *&__src[4] = v119;
        _os_log_error_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_ERROR, "PropertyBagReader; expected NSString for enum '%s'.", __src, 0xCu);
      }

      goto LABEL_204;
    case 0xA:
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();
      if (v15)
      {
        v16 = [(objc_object *)v8 UTF8String];
        *__src = 0;
        *&__src[8] = &str_67;
        v17 = re::StringID::operator=(a4, __src);
        if (__src[0])
        {
          if (__src[0])
          {
          }
        }

        goto LABEL_150;
      }

      v99 = *re::foundationSerializationLogObjects(v15);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        v100 = v99;
        re::getPrettyTypeName(a3, __src);
        if (__src[8])
        {
          v101 = *&__src[16];
        }

        else
        {
          v101 = &__src[9];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v101;
        v102 = "PropertyBagReader; expected NSString for stringid '%s'.";
LABEL_258:
        _os_log_error_impl(&dword_1E1C61000, v100, OS_LOG_TYPE_ERROR, v102, &buf, 0xCu);

LABEL_259:
        if (*__src && (__src[8] & 1) != 0)
        {
          (*(**__src + 40))();
        }
      }

      goto LABEL_137;
    case 0xB:
      objc_opt_class();
      v40 = objc_opt_isKindOfClass();
      if ((v40 & 1) == 0)
      {
        v42 = *re::foundationSerializationLogObjects(v40);
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_137;
        }

        v109 = *(a3 + 6);
        *__src = 136315138;
        *&__src[4] = v109;
        v44 = "PropertyBagReader; expected NSString for callback '%s'.";
        goto LABEL_123;
      }

      v41 = (*(a3 + 10))(*this, *(this + 2), a3, a4, [(objc_object *)v8 UTF8String]);
      if (v41)
      {
        goto LABEL_150;
      }

      v42 = *re::foundationSerializationLogObjects(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a3 + 6);
        *__src = 136315138;
        *&__src[4] = v43;
        v44 = "PropertyBagReader; failed to read type '%s' using callback.";
LABEL_123:
        _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, v44, __src, 0xCu);
      }

LABEL_137:
      LinearArray = 0;
LABEL_214:

      return LinearArray & 1;
    case 0xD:
      v32 = [MEMORY[0x1E695DFB0] null];

      v33 = *(*a3 + 64);
      if (v32 == v8)
      {
        v33(a3, a4, 0);
LABEL_150:
        LinearArray = 1;
      }

      else
      {
        v33(a3, a4, 1);
        v34 = *(a3 + 6);
        v35 = (*(*a3 + 72))(a3, a4);
      }

      goto LABEL_214;
    default:
      v48 = *re::foundationSerializationLogObjects(v7);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_137;
      }

      v49 = v48;
      re::getPrettyTypeName(a3, __src);
      if (__src[8])
      {
        v50 = *&__src[16];
      }

      else
      {
        v50 = &__src[9];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v50;
      _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "PropertyBagReader; unhandled introspection type '%s'.", &buf, 0xCu);

      goto LABEL_259;
  }
}

uint64_t re::introspect<unsigned long>()
{
  v0 = &unk_1ECF17000;
  {
    v0 = &unk_1ECF17000;
    if (v2)
    {
      re::introspect<unsigned long>(BOOL)::info = re::introspect_size_t(0, v3);
      v0 = &unk_1ECF17000;
    }
  }

  return v0[390];
}

uint64_t re::introspect<unsigned short>(unsigned int a1)
{
  v1 = &unk_1ECF17000;
  {
    v1 = &unk_1ECF17000;
    if (v3)
    {
      re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(a1, v4);
      v1 = &unk_1ECF17000;
    }
  }

  return v1[392];
}

uint64_t re::introspect<unsigned long long>(unsigned int a1)
{
  v1 = &unk_1ECF17000;
  {
    v1 = &unk_1ECF17000;
    if (v3)
    {
      re::introspect<unsigned long long>(BOOL)::info = re::introspect_uint64_t(a1, v4);
      v1 = &unk_1ECF17000;
    }
  }

  return v1[394];
}

uint64_t anonymous namespace::PropertyBagReader::readPointerPolymorphic(re **a1, void *a2, re::DynamicString **a3, _anonymous_namespace_ *a4, char *a5, int a6, uint64_t a7, int a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = v15;
  if (!a4)
  {
    v30 = *re::foundationSerializationLogObjects(v15);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = "PropertyBagReader; invalid polymorphic data.";
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
    }

LABEL_24:
    v29 = 0;
    goto LABEL_25;
  }

  if (!a7)
  {
    v30 = *re::foundationSerializationLogObjects(v15);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = "PropertyBagReader; invalid polymorphic type data.";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v17 = [MEMORY[0x1E695DFB0] null];

  if (v17 != v16)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v19 = v16;
      v20 = [(objc_object *)v19 objectForKey:@"type"];
      v21 = v20;
      if (v20 && (objc_opt_class(), v20 = objc_opt_isKindOfClass(), (v20 & 1) != 0))
      {
        IntrospectionPolymorphicTypeByPrettyType = re::getIntrospectionPolymorphicTypeByPrettyType(a4, [v21 UTF8String]);
        if (!IntrospectionPolymorphicTypeByPrettyType)
        {
          v34 = *re::foundationSerializationLogObjects(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = v21;
            v36 = v34;
            *buf = 136315138;
            *&buf[4] = [v21 UTF8String];
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "PropertyBagReader; failed to find polymorphic type '%s'.", buf, 0xCu);
          }

          goto LABEL_27;
        }

        v23 = IntrospectionPolymorphicTypeByPrettyType;
        v24 = *(IntrospectionPolymorphicTypeByPrettyType + 1);
        if (v24)
        {
          v46 = re::introspectionAllocPointer(*a1, a1[2], v24);
          if (Value)
          {
            v26 = *(v23 + 8);
            v27 = (v46 - v26);
            if (a8)
            {
              v28 = a5;
            }

            else
            {
              v28 = v46 - v26;
            }

            memcpy(&v28[a6], v23 + 24, *(a7 + 20));
            *a3 = v27;
            v29 = 1;
            goto LABEL_28;
          }

          v42 = *re::foundationSerializationLogObjects(Value);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = *(v23 + 1);
            v44 = v42;
            re::getPrettyTypeName(v43, buf);
            v45 = (buf[8] & 1) != 0 ? v48 : &buf[9];
            *v49 = 136315138;
            v50 = v45;
            _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "PropertyBagReader; failed to read polymorphic pointer target of type '%s'.", v49, 0xCu);

            if (*buf)
            {
              if (buf[8])
              {
                (*(**buf + 40))();
              }
            }
          }

          re::introspectionReleasePointer(v46, *a1, a1[2], *(v23 + 1));
LABEL_27:
          v29 = 0;
LABEL_28:

          goto LABEL_25;
        }

        v37 = *re::foundationSerializationLogObjects(IntrospectionPolymorphicTypeByPrettyType);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v38 = *v23;
        *buf = 136315138;
        *&buf[4] = v38;
        v39 = "PropertyBagReader; invlaid polymorphic info '%s'.";
        v40 = v37;
        v41 = 12;
      }

      else
      {
        v33 = *re::foundationSerializationLogObjects(v20);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v39 = "PropertyBagReader; missing polymorphic type.";
        v40 = v33;
        v41 = 2;
      }

      _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
      goto LABEL_27;
    }

    v30 = *re::foundationSerializationLogObjects(isKindOfClass);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v31 = "PropertyBagReader; expected NSDictionary for polymorphic type.";
    goto LABEL_23;
  }

  if (*a3)
  {
    re::introspectionReleasePointer(*a3, *a1, a1[2], a7);
    *a3 = 0;
  }

  v29 = 1;
LABEL_25:

  return v29;
}

uint64_t anonymous namespace::PropertyBagReader::readLinearArray(_anonymous_namespace_::PropertyBagReader *this, NSArray *a2, const re::IntrospectionBase *a3, char *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([(NSArray *)v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = &a4[*(a3 + 5) * v8];
      v10 = [(NSArray *)v7 objectAtIndex:v8];
      if ((Value & 1) == 0)
      {
        break;
      }

      if ([(NSArray *)v7 count]<= ++v8)
      {
        goto LABEL_5;
      }
    }

    v13 = *re::foundationSerializationLogObjects(Value);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = v13;
      re::getPrettyTypeName(a3, &v17);
      if (v18)
      {
        v16 = *&v19[7];
      }

      else
      {
        v16 = v19;
      }

      *buf = 136315394;
      v21 = v16;
      v22 = 1024;
      v23 = v8;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "PropertyBagReader; failed to read %s[%d].", buf, 0x12u);

      if (v17 && (v18 & 1) != 0)
      {
        (*(*v17 + 40))();
      }
    }

    v12 = 0;
  }

  else
  {
LABEL_5:
    v12 = 1;
  }

  return v12;
}

uint64_t std::__function::__func<anonymous namespace::PropertyBagReader::readHashTable(objc_object *,re::IntrospectionBase const&,void *)::{lambda(unsigned char *)#1},std::allocator<anonymous namespace::PropertyBagReader::readHashTable(objc_object *,re::IntrospectionBase const&,void *)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D16CF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(unsigned char *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(unsigned char *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(unsigned char *)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v8);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
}

uint64_t anonymous namespace::PropertyBagReader::readMember(_anonymous_namespace_::PropertyBagReader *this, objc_object *a2, const re::IntrospectionMember *a3, char *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  v9 = *(a3 + 10);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = v7;
        v11 = *(a3 + 9);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          *__src = 0;
          if (*(a3 + 10) == 1)
          {
            v13 = *(a3 + 6);
            if (v13)
            {
              memcpy(&a4[*(a3 + 16)], __src, *(v13 + 20));
              *&a4[v11] = 0;

LABEL_11:
              v15 = 1;
              goto LABEL_49;
            }
          }

          v41 = *re::foundationSerializationLogObjects(isKindOfClass);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = *(a3 + 1);
            *__src = 136315138;
            *&__src[4] = v42;
            v43 = "PropertyBagReader; failed to set array size '%s'.";
LABEL_33:
            _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, v43, __src, 0xCu);
          }

LABEL_44:

          v21 = *re::foundationSerializationLogObjects(v49);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v50 = *(a3 + 1);
            *__src = 136315138;
            *&__src[4] = v50;
            v18 = "PropertyBagReader; failed to read polymorphic member '%s'.";
            goto LABEL_46;
          }

LABEL_48:
          v15 = 0;
          goto LABEL_49;
        }

        objc_opt_class();
        v33 = objc_opt_isKindOfClass();
        if ((v33 & 1) == 0)
        {
          v41 = *re::foundationSerializationLogObjects(v33);
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          v44 = *(a3 + 1);
          *__src = 136315138;
          *&__src[4] = v44;
          v43 = "PropertyBagReader; expected NSArray for array '%s'.";
          goto LABEL_33;
        }

        v34 = v10;
        v35 = [(objc_object *)v34 count];
        if (v35 >> 31)
        {
          v36 = *re::foundationSerializationLogObjects(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = *(a3 + 1);
            *__src = 136315138;
            *&__src[4] = v37;
            v38 = "PropertyBagReader; array too big '%s'.";
LABEL_56:
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, v38, __src, 0xCu);
          }
        }

        else
        {
          v46 = [(objc_object *)v34 count];
          *__src = v46;
          if (*(a3 + 10) == 1)
          {
            v47 = *(a3 + 6);
            if (v47)
            {
              memcpy(&a4[*(a3 + 16)], __src, *(v47 + 20));
              re::IntrospectionCStyleArray::IntrospectionCStyleArray(__src, *(*(a3 + 2) + 48), [(objc_object *)v34 count]);
              re::IntrospectionPointer::IntrospectionPointer(v55, __src);
              if (Value)
              {
                re::IntrospectionPointer::~IntrospectionPointer(v55);
                re::IntrospectionCStyleArray::~IntrospectionCStyleArray(__src);

                goto LABEL_11;
              }

              v52 = *re::foundationSerializationLogObjects(Value);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                v54 = *(a3 + 1);
                *buf = 136315138;
                v57 = v54;
                _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "PropertyBagReader; failed to read array data for member '%s'.", buf, 0xCu);
              }

              re::IntrospectionPointer::~IntrospectionPointer(v55);
              re::IntrospectionCStyleArray::~IntrospectionCStyleArray(__src);
              goto LABEL_43;
            }
          }

          v36 = *re::foundationSerializationLogObjects(v46);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v53 = *(a3 + 1);
            *__src = 136315138;
            *&__src[4] = v53;
            v38 = "PropertyBagReader; failed to set array size '%s'.";
            goto LABEL_56;
          }
        }

LABEL_43:

        goto LABEL_44;
      }

LABEL_12:
      v16 = *re::foundationSerializationLogObjects(v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a3 + 10);
        *__src = 67109120;
        *&__src[4] = v17;
        v18 = "PropertyBagReader; unknown member type '%d'.";
        v19 = v16;
        v20 = 8;
LABEL_47:
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v18, __src, v20);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    goto LABEL_10;
  }

  if (v9 != 2)
  {
    if (v9 != 3)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v14)
    {
      goto LABEL_11;
    }

    v21 = *re::foundationSerializationLogObjects(v14);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v22 = *(a3 + 1);
    *__src = 136315138;
    *&__src[4] = v22;
    v18 = "PropertyBagReader; failed to read target for member '%s'.";
LABEL_46:
    v19 = v21;
    v20 = 12;
    goto LABEL_47;
  }

  v23 = v7;
  v24 = v23;
  v25 = *(a3 + 2);
  if (*(v25 + 16) != 1)
  {
    v39 = *re::foundationSerializationLogObjects(v23);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_35:

LABEL_36:
      v21 = *re::foundationSerializationLogObjects(v32);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v45 = *(a3 + 1);
      *__src = 136315138;
      *&__src[4] = v45;
      v18 = "PropertyBagReader; failed to read polymorphic member '%s'.";
      goto LABEL_46;
    }

    *__src = 0;
    v40 = "PropertyBagReader; polymorphic member needs to be pointer.";
LABEL_54:
    _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, v40, __src, 2u);
    goto LABEL_35;
  }

  v26 = *(v25 + 48);
  if (*(v26 + 16) != 8)
  {
    v39 = *re::foundationSerializationLogObjects(v23);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *__src = 0;
    v40 = "PropertyBagReader; polymorphic member needs to point to structure.";
    goto LABEL_54;
  }

  v27 = *(v26 + 64);
  v28 = *v27;
  if (**v27 != 2)
  {
    v29 = v27 + 1;
    do
    {
      v30 = *v29++;
      v28 = v30;
    }

    while (*v30 != 2);
  }

  v15 = 1;

  if ((PointerPolymorphic & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_49:

  return v15;
}

uint64_t anonymous namespace::BinarySerializer::serialize(_anonymous_namespace_ *a1, const re::IntrospectionBase *a2, const re::IntrospectionBase **a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v16[0] = a1;
  v16[1] = a5;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v23 = 0x7FFFFFFFLL;
  v24 = a4;
  *(&v25 + 1) = 0;
  v26 = 0uLL;
  re::DynamicString::setCapacity(&v25, 0);
  v17 = a5;
  *&v25 = a5;
  re::DynamicString::setCapacity(&v25, 0);
  v15[0] = 0;
  re::SmallHashTable<void const*,unsigned int,8ul,re::Hash<void const*>,re::EqualTo<void const*>,false>::add(&v17, &v27, v15);
  if (v9)
  {
    LOBYTE(v15[0]) = 69;
    v10 = 1;
    v11 = (*(*a1 + 16))(a1, v15, 1);
    if (v11 == 1)
    {
      goto LABEL_7;
    }

    v12 = *re::foundationSerializationLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      v13 = "Binary Serialization; failed to write end of file tag.";
LABEL_13:
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, v13, v15, 2u);
    }
  }

  else
  {
    v12 = *re::foundationSerializationLogObjects(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      v13 = "Binary Serialization; failed to write body serialization.";
      goto LABEL_13;
    }
  }

  v10 = 0;
LABEL_7:
  if (v25)
  {
    if (BYTE8(v25))
    {
      (*(*v25 + 40))();
    }

    v26 = 0u;
    v25 = 0u;
  }

  v19 = 0;
  ++v20;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v21);
  v17 = 0;
  v18 = 0;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v21);
  return v10;
}

uint64_t re::serializeBinaryToBuffer(const re::IntrospectionBase *a1, const re::IntrospectionBase **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v20 = &unk_1F5D0A808;
  v21 = 0;
  {
    v17 = 0;
    goto LABEL_6;
  }

  v14 = v21;
  *a7 = v21;
  if (!v14)
  {
    v17 = 0;
    *a6 = 0;
    return v17;
  }

  v15 = (*(*a4 + 32))(a4, v14, 0);
  *a6 = v15;
  v16 = *a7;
  v19[0] = &unk_1F5D0ADB8;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = 0;
  if ((v17 & 1) == 0)
  {
    (*(*a4 + 40))(a4, *a6);
LABEL_6:
    *a6 = 0;
    *a7 = 0;
  }

  return v17;
}

uint64_t anonymous namespace::BinarySerializer::write(_anonymous_namespace_::BinarySerializer *this, const re::IntrospectionBase *a2, const re::IntrospectionBase **a3)
{
  v97[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = this;
    switch(*(a2 + 4))
    {
      case 0:
      case 9:
        v6 = (*(**this + 16))();
        if (v6 == *(a2 + 5))
        {
          return 1;
        }

        v7 = *re::foundationSerializationLogObjects(v6);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v8 = *(a2 + 6);
        LODWORD(v87) = 136315138;
        *(&v87 + 4) = v8;
        v9 = "Binary Serialization; failed to write basic type '%s'.";
        goto LABEL_90;
      case 1:
        v28 = *a3;
        re::PolymorphicData::makeWithPointer(*(a2 + 6), *a3, &v87);
      case 2:
        v26 = *(a2 + 6);
        v27 = *(a2 + 16);

      case 3:
        LODWORD(v87) = (*(*a2 + 88))(a2, a3);
        v18 = (*(**v5 + 16))(*v5, &v87, 4);
        if (v18 == 4)
        {
          if (!v87)
          {
            return 1;
          }

          goto LABEL_19;
        }

        v10 = *re::foundationSerializationLogObjects(v18);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 0;
        v9 = "Binary Serialization; failed to write dynamic array length.";
        goto LABEL_83;
      case 4:
        LODWORD(v87) = (*(*a2 + 80))(a2, a3);
        v23 = (*(**v5 + 16))(*v5, &v87, 4);
        if (v23 == 4)
        {
          if (!v87)
          {
            return 1;
          }

LABEL_19:
          v24 = (*(*a2 + 104))(a2, a3, 0);
        }

        v10 = *re::foundationSerializationLogObjects(v23);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 0;
        v9 = "Binary Serialization; failed to write fixed array length.";
LABEL_83:
        v62 = buf;
        goto LABEL_106;
      case 5:
        *buf = (*(*a2 + 80))(a2, a3);
        v29 = (*(**v5 + 16))(*v5, buf, 4);
        if (v29 != 4)
        {
          v10 = *re::foundationSerializationLogObjects(v29);
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          LOWORD(v87) = 0;
          v9 = "Binary Serialization; failed to write data array length.";
          goto LABEL_105;
        }

        *&v87 = (*(*a2 + 88))(a2, a3);
        DWORD2(v87) = v30;
        while (1)
        {
          v31 = (*(*a2 + 96))(a2, a3);
          if (v87 == v31 && WORD4(v87) == v32 && WORD5(v87) == HIWORD(v32))
          {
            return 1;
          }

          v33 = *(a2 + 6);
          v34 = (*(*a2 + 104))(a2, &v87);
          if ((v35 & 1) == 0)
          {
            break;
          }

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v87);
        }

        v10 = *re::foundationSerializationLogObjects(v35);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LOWORD(__dst[0]) = 0;
        v9 = "Binary Serialization; failed to write data array item.";
        v62 = __dst;
        goto LABEL_106;
      case 6:
        v36 = *this;
        if (a3[1])
        {
          v37 = a3[2];
        }

        else
        {
          v37 = a3 + 9;
        }

        v69 = strlen(v37);
        LODWORD(v87) = v69;
        v70 = (*(*v36 + 16))(v36, &v87, 4);
        if (v70 == 4)
        {
          v71 = (*(*v36 + 16))(v36, v37, v69);
          if (v71 == v69)
          {
            return 1;
          }
        }

        else
        {
          v72 = *re::foundationSerializationLogObjects(v70);
          v71 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
          if (v71)
          {
            LOWORD(v87) = 0;
            _os_log_error_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_ERROR, "Binary Serialization; failed to write string length.", &v87, 2u);
          }
        }

        v10 = *re::foundationSerializationLogObjects(v71);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LOWORD(v87) = 0;
        v9 = "Binary Serialization; failed to write dynamic string.";
        goto LABEL_105;
      case 7:
        *buf = (*(*a2 + 80))(a2, a3);
        v58 = (*(**v5 + 16))(*v5, buf, 4);
        if (v58 == 4)
        {
          *&v87 = &unk_1F5D16D40;
          *(&v87 + 1) = v5;
          v88 = a2;
          v89 = &v87;
          v59 = (*(*a2 + 104))(a2, a3, &v87);
          v60 = std::__function::__value_func<BOOL ()(void const*,void *)>::~__value_func[abi:nn200100](&v87);
          if (v59)
          {
            return 1;
          }

          v10 = *re::foundationSerializationLogObjects(v60);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v87) = 0;
            v9 = "Binary Serialization; failed to iterate over hash table keys.";
            goto LABEL_105;
          }

          return 0;
        }

        v10 = *re::foundationSerializationLogObjects(v58);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LOWORD(v87) = 0;
        v9 = "Binary Serialization; failed to write hash table length.";
        goto LABEL_105;
      case 8:
        if (!*(a2 + 14))
        {
          return 1;
        }

        v41 = 0;
        break;
      case 0xA:
        re::StringID::StringID(&v87, a3);
        v13 = *v5;
        v14 = *(&v87 + 1);
        v15 = strlen(*(&v87 + 1));
        *buf = v15;
        v16 = (*(*v13 + 16))(v13, buf, 4);
        if (v16 == 4)
        {
          v17 = (*(*v13 + 16))(v13, v14, v15);
          v11 = v17 == v15;
        }

        else
        {
          v61 = *re::foundationSerializationLogObjects(v16);
          v17 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
          if (v17)
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Binary Serialization; failed to write string length.", buf, 2u);
          }

          v11 = 0;
        }

        if (v87)
        {
          if (v87)
          {
          }
        }

        return v11;
      case 0xB:
        if (*(this + 240))
        {
          *(this + 30) = 1;
          v25 = *(this + 31);
        }

        else
        {
          *(this + 240) = 0;
          v25 = this + 241;
        }

        *v25 = 0;
        v63 = (*(a2 + 9))(*(this + 28), a2, a3, this + 232);
        if ((v63 & 1) == 0)
        {
          v7 = *re::foundationSerializationLogObjects(v63);
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v66 = *(a2 + 6);
          LODWORD(v87) = 136315138;
          *(&v87 + 4) = v66;
          v9 = "Binary Serialization; failed to write type '%s' using serialization callback.";
LABEL_90:
          v62 = &v87;
          v67 = v7;
          goto LABEL_91;
        }

        v64 = *v5;
        if (*(v5 + 240))
        {
          v65 = *(v5 + 31);
        }

        else
        {
          v65 = v5 + 241;
        }

        v73 = strlen(v65);
        LODWORD(v87) = v73;
        v74 = (*(*v64 + 16))(v64, &v87, 4);
        if (v74 == 4)
        {
          return (*(*v64 + 16))(v64, v65, v73) == v73;
        }

        v10 = *re::foundationSerializationLogObjects(v74);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v87) = 0;
          v9 = "Binary Serialization; failed to write string length.";
          goto LABEL_105;
        }

        return 0;
      case 0xD:
        buf[0] = (*(*a2 + 56))(a2, a3);
        v19 = (*(**v5 + 16))(*v5, buf, 1);
        if (v19 == 1)
        {
          if (buf[0] != 1)
          {
            return 1;
          }

          v20 = *(a2 + 6);
          v21 = (*(*a2 + 80))(a2, a3);
        }

        v10 = *re::foundationSerializationLogObjects(v19);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LOWORD(v87) = 0;
        v9 = "Binary Serialization; failed to write optional value.";
        goto LABEL_105;
      default:
        v38 = *re::foundationSerializationLogObjects(this);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = v38;
          re::getPrettyTypeName(a2, &v87);
          v40 = (BYTE8(v87) & 1) != 0 ? v88 : (&v87 + 9);
          *buf = 136315138;
          *&buf[4] = v40;
          _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Binary Serialization; unhandled introspection type '%s'.", buf, 0xCu);

          if (v87)
          {
            if (BYTE8(v87))
            {
              (*(*v87 + 40))();
            }
          }
        }

        return 0;
    }

    while (1)
    {
      v42 = *(*(a2 + 8) + 8 * v41);
      if (*v42 != 1)
      {
        goto LABEL_65;
      }

      v43 = *(v42 + 40);
      if (v43 <= 1)
      {
        break;
      }

      if (v43 != 2)
      {
        if (v43 != 3)
        {
LABEL_128:
          re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "write", 213, v84);
          result = _os_crash();
          __break(1u);
          return result;
        }

LABEL_56:
        if ((this & 1) == 0)
        {
          v75 = *re::foundationSerializationLogObjects(this);
          if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v77 = *(v42 + 8);
          LODWORD(v87) = 136315138;
          *(&v87 + 4) = v77;
          v9 = "Binary Serialization; failed to write target for member '%s'.";
          goto LABEL_127;
        }

        goto LABEL_65;
      }

      v50 = *(*(v42 + 16) + 48);
      v51 = *(v50 + 8);
      v52 = *v51;
      if (**v51 != 2)
      {
        v53 = (v51 + 1);
        do
        {
          v54 = *v53++;
          v52 = v54;
        }

        while (*v54 != 2);
      }

      v55 = *(a3 + *(v42 + 36));
      v56 = *(v42 + 48);
      *&v87 = a3 + *(v42 + 64);
      *(&v87 + 1) = v56;
      v88 = *(v52 + 1);
      if ((this & 1) == 0)
      {
        v75 = *re::foundationSerializationLogObjects(this);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v80 = *(v42 + 8);
        LODWORD(v87) = 136315138;
        *(&v87 + 4) = v80;
        v9 = "Binary Serialization; failed to find polymorphic member '%s'.";
LABEL_127:
        v62 = &v87;
        v67 = v75;
LABEL_91:
        v68 = 12;
LABEL_107:
        _os_log_error_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_ERROR, v9, v62, v68);
        return 0;
      }

LABEL_65:
      ++v41;
      v11 = 1;
      if (v41 >= *(a2 + 14))
      {
        return v11;
      }
    }

    if (v43)
    {
      if (v43 != 1)
      {
        goto LABEL_128;
      }

      v44 = *(v42 + 48);
      if (!v44)
      {
        v75 = *re::foundationSerializationLogObjects(this);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v78 = *(v42 + 8);
        LODWORD(v87) = 136315138;
        *(&v87 + 4) = v78;
        v9 = "Binary Serialization; failed to get array length for member '%s'.";
        goto LABEL_127;
      }

      v45 = *(v42 + 64);
      __dst[0] = 0;
      v46 = memcpy(__dst, a3 + v45, *(v44 + 20));
      if (HIDWORD(__dst[0]))
      {
        v75 = *re::foundationSerializationLogObjects(v46);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v81 = *(v42 + 8);
        LODWORD(v87) = 136315138;
        *(&v87 + 4) = v81;
        v9 = "Binary Serialization; array too big for member '%s'.";
        goto LABEL_127;
      }

      v85 = __dst[0];
      v47 = (*(**v5 + 16))(*v5, &v85, 4);
      if (v47 != 4)
      {
        v75 = *re::foundationSerializationLogObjects(v47);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v82 = *(v42 + 8);
        LODWORD(v87) = 136315138;
        *(&v87 + 4) = v82;
        v9 = "Binary Serialization; failed to write member array length for member '%s'.";
        goto LABEL_127;
      }

      v48 = *(v42 + 16);
      v84 = 0;
      if (v85)
      {
        v49 = a3 + *(v42 + 36);
      }

      else
      {
        v49 = &v84;
      }

      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&v87, *(v48 + 48), v85);
      ArcSharedObject::ArcSharedObject(buf, 0);
      v92 = 0x800000001;
      v93 = 8;
      v94 = 0;
      v95 = 0;
      v96 = 0xFFFFFFFFLL;
      *buf = &unk_1F5CBD2C0;
      v97[0] = &v87;
      v97[1] = 0;
      *buf = &unk_1F5CBD2C0;
      re::SerializedReference<re::IntrospectionBase const*>::reset(v97);
      *buf = &unk_1F5CCF868;
      objc_destructInstance(&buf[8]);
      *&v87 = &unk_1F5CB0038;
      re::SerializedReference<re::IntrospectionBase const*>::reset(&v90);
      *&v87 = &unk_1F5CCF868;
      this = objc_destructInstance(&v87 + 8);
      if ((v57 & 1) == 0)
      {
        v75 = *re::foundationSerializationLogObjects(this);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v83 = *(v42 + 8);
        LODWORD(v87) = 136315138;
        *(&v87 + 4) = v83;
        v9 = "Binary Serialization; failed to write array data for member '%s'.";
        goto LABEL_127;
      }

      goto LABEL_65;
    }

    goto LABEL_56;
  }

  v10 = *re::foundationSerializationLogObjects(this);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v87) = 0;
    v9 = "Binary Serialization; target memory is empty (FATAL, INTERNAL).";
LABEL_105:
    v62 = &v87;
LABEL_106:
    v67 = v10;
    v68 = 2;
    goto LABEL_107;
  }

  return 0;
}

uint64_t re::SmallHashTable<void const*,unsigned int,8ul,re::Hash<void const*>,re::EqualTo<void const*>,false>::add(uint64_t result, uint64_t *a2, int *a3)
{
  v5 = result;
  if (!*(result + 188))
  {
    v7 = *(result + 16);
    v8 = *a2;
    if (v7)
    {
      v9 = 16 * v7;
      v10 = result + 32;
      v11 = 32;
      v12 = 16 * v7;
      do
      {
        if (*(result + v11) == v8)
        {
          return result;
        }

        v11 += 16;
        v12 -= 16;
      }

      while (v12);
      if ((v7 & 0xFFFFFFF8) != 0)
      {
        if (!*(result + 160))
        {
          v13 = *result;
          if (!*result)
          {
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v5 + 160, v13, 16);
          v14 = *(v5 + 16);
          if (!v14)
          {
            goto LABEL_19;
          }

          v9 = 16 * v14;
        }

        do
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v15 = 0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30));
          re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::findEntry<void const*>(&v19, v5 + 160, *v10, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31));
          if (HIDWORD(v20) == 0x7FFFFFFF)
          {
            v16 = re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::allocEntry(v5 + 160, v20, v19);
            *(v16 + 8) = *v10;
            *(v16 + 16) = *(v10 + 8);
            ++*(v5 + 200);
          }

          v10 += 16;
          v9 -= 16;
        }

        while (v9);
LABEL_19:
        *(v5 + 16) = 0;
        ++*(v5 + 24);
        v6 = v5 + 160;
        goto LABEL_3;
      }

      if (v7 >= 8)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    v17 = *a3;
    v18 = result + 16 * v7;
    *(v18 + 32) = v8;
    *(v18 + 40) = v17;
    *(result + 16) = v7 + 1;
    ++*(result + 24);
    return result;
  }

  v6 = result + 160;
LABEL_3:

  return re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::add(v6, a2, a3);
}

uint64_t re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::add(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::findEntry<void const*>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::findEntry<void const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 24 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v26, v9, v8);
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
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                *(v19 + 8) = *v17;
                *(v19 + 16) = *(v17 + 8);
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v26);
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
    v21 = *(v20 + 24 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 24 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 24 * v4;
}

uint64_t anonymous namespace::BinarySerializer::writePointer(_anonymous_namespace_::BinarySerializer *this, const re::IntrospectionBase *a2, unint64_t a3, re::PolymorphicData *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  __s = a3;
  if (a3)
  {
    v7 = *(this + 51);
    if (v7)
    {
      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,false,false>::findEntry<void const*>(buf, this + 176, a3, v8 ^ (v8 >> 31));
      if (v47 != 0x7FFFFFFF)
      {
        v9 = (*(this + 24) + 24 * v47 + 16);
        goto LABEL_5;
      }
    }

    else
    {
      v18 = *(this + 4);
      if (v18)
      {
        v19 = 16 * v18;
        v9 = this + 56;
        while (*(v9 - 1) != a3)
        {
          v9 += 16;
          v19 -= 16;
          if (!v19)
          {
            goto LABEL_16;
          }
        }

LABEL_5:
        v10 = *this;
        buf[0] = 82;
        v11 = (*(*v10 + 16))(v10, buf, 1);
        if (v11 != 1)
        {
          v13 = *re::foundationSerializationLogObjects(v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v14 = "Binary Serialization; failed to write reference tag.";
            goto LABEL_47;
          }

          return 0;
        }

        v12 = (*(**this + 16))(*this, v9, 4);
        if (v12 != 4)
        {
          v13 = *re::foundationSerializationLogObjects(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v14 = "Binary Serialization; failed to write reference tag index.";
LABEL_47:
            v34 = buf;
LABEL_48:
            v35 = v13;
            v36 = 2;
LABEL_49:
            _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, v14, v34, v36);
            return 0;
          }

          return 0;
        }

        return 1;
      }

LABEL_16:
      v7 = *(this + 8);
    }

    *buf = v7;
    re::SmallHashTable<void const*,unsigned int,8ul,re::Hash<void const*>,re::EqualTo<void const*>,false>::add(this + 16, &__s, buf);
    v20 = *this;
    buf[0] = 73;
    v21 = (*(*v20 + 16))(v20, buf, 1);
    if (v21 != 1)
    {
      v13 = *re::foundationSerializationLogObjects(v21);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "Binary Serialization; failed to write inline object tag.";
        goto LABEL_47;
      }

      return 0;
    }

    {
      if (v21)
      {
        re::introspect<char>(BOOL)::info = re::introspect_char(0, v42);
      }
    }

    if (re::introspect<char>(BOOL)::info != a2)
    {
      if (a4 && (v22 = *(a4 + 2)) != 0)
      {
        v23 = *a4;
        if (!*a4 || (v24 = *(a4 + 1)) == 0)
        {
          v13 = *re::foundationSerializationLogObjects(v21);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v14 = "Binary Serialization; invalid polymorphic data.";
            goto LABEL_47;
          }

          return 0;
        }

        v25 = __s;
        __dst[0] = 0;
        v26 = memcpy(__dst, v23, *(v24 + 20));
        v27 = *v22;
        if (!v27)
        {
LABEL_28:
          v13 = *re::foundationSerializationLogObjects(v26);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v14 = "Binary Serialization; failed to find polymorphic type.";
            goto LABEL_47;
          }

          return 0;
        }

        v28 = (*(v22 + 1) + 32);
        while (*(v28 - 1) != __dst[0])
        {
          v28 += 10;
          if (!--v27)
          {
            goto LABEL_28;
          }
        }

        v38 = (*(**this + 16))(*this, __dst, 8);
        if (v38 != 8)
        {
          v40 = *re::foundationSerializationLogObjects(v38);
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v41 = *(v28 - 4);
          *buf = 136315138;
          v46 = v41;
          v14 = "Binary Serialization; failed to write type for polymorphic type '%s'.";
          v34 = buf;
          v35 = v40;
          v36 = 12;
          goto LABEL_49;
        }

        if ((v39 & 1) == 0)
        {
          v13 = *re::foundationSerializationLogObjects(v39);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          *buf = 0;
          v14 = "Binary Serialization; failed to write pointer dereferenced target.";
          goto LABEL_47;
        }
      }

      else
      {
        if ((v29 & 1) == 0)
        {
          v13 = *re::foundationSerializationLogObjects(v29);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v14 = "Binary Serialization; failed to write pointer dereferenced target.";
            goto LABEL_47;
          }

          return 0;
        }
      }

      return 1;
    }

    v30 = __s;
    v31 = strlen(__s);
    if (HIDWORD(v31))
    {
      v13 = *re::foundationSerializationLogObjects(v31);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "Binary Serialization; string too long.";
        goto LABEL_47;
      }

      return 0;
    }

    *buf = v31;
    v32 = (*(**this + 16))(*this, buf, 4);
    if (v32 == 4)
    {
      v33 = (*(**this + 16))(*this, v30, *buf);
      if (v33 == *buf)
      {
        return 1;
      }

      v13 = *re::foundationSerializationLogObjects(v33);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LOWORD(__dst[0]) = 0;
      v14 = "Binary Serialization; failed to write string.";
    }

    else
    {
      v13 = *re::foundationSerializationLogObjects(v32);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LOWORD(__dst[0]) = 0;
      v14 = "Binary Serialization; failed to write string length.";
    }

    v34 = __dst;
    goto LABEL_48;
  }

  v15 = *this;
  buf[0] = 78;
  v16 = 1;
  v17 = (*(*v15 + 16))(v15, buf, 1, a4);
  if (v17 != 1)
  {
    v13 = *re::foundationSerializationLogObjects(v17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Binary Serialization; failed to write NULL tag.";
      goto LABEL_47;
    }

    return 0;
  }

  return v16;
}

BOOL anonymous namespace::BinarySerializer::writeLinearArray(_anonymous_namespace_::BinarySerializer *this, const re::IntrospectionBase *a2, uint64_t a3, char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 4);
  if (v8)
  {
    v9 = v8 == 9;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (a3)
    {
      v14 = 0;
      while (1)
      {
        if ((v15 & 1) == 0)
        {
          break;
        }

        if (a3 == ++v14)
        {
          return 1;
        }
      }

      v16 = *re::foundationSerializationLogObjects(v15);
      result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v17 = v16;
        re::getPrettyTypeName(a2, v19);
        if (v19[8])
        {
          v18 = v20;
        }

        else
        {
          v18 = &v19[9];
        }

        *buf = 136315394;
        v22 = v18;
        v23 = 1024;
        v24 = v14;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Binary Serialization; failed to write %s[%d].", buf, 0x12u);

        if (*v19)
        {
          if (v19[8])
          {
            (*(**v19 + 40))();
          }
        }

        return 0;
      }

      return result;
    }

    return 1;
  }

  v10 = (*(**this + 16))();
  if (v10 == (*(a2 + 5) * a3))
  {
    return 1;
  }

  v11 = *re::foundationSerializationLogObjects(v10);
  result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v13 = *(a2 + 6);
    *v19 = 136315138;
    *&v19[4] = v13;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Binary Serialization; failed to fast write array of basic type '%s'.", v19, 0xCu);
    return 0;
  }

  return result;
}

__n128 std::__function::__func<anonymous namespace::BinarySerializer::write(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::BinarySerializer::write(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D16D40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<anonymous namespace::BinarySerializer::write(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::BinarySerializer::write(re::IntrospectionBase const&,void const*)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, const re::IntrospectionBase ***a2, const re::IntrospectionBase ***a3)
{
  v4 = *a3;
  v5 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    v9 = *re::foundationSerializationLogObjects(v6);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v13 = 0;
    v10 = "Binary Serialization; failed to write hash table key.";
    v11 = &v13;
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    return 0;
  }

  if (v7)
  {
    return 1;
  }

  v9 = *re::foundationSerializationLogObjects(v7);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = 0;
    v10 = "Binary Serialization; failed to write hash table value.";
    v11 = &v12;
    goto LABEL_9;
  }

  return result;
}

uint64_t *re::foundationSerializationLogObjects(re *this)
{
  {
    re::foundationSerializationLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Serialization");
  }

  return &re::foundationSerializationLogObjects(void)::logObjects;
}

BOOL re::scanForCopy(uint64_t a1, uint64_t *a2, void *a3)
{
  if (*(a1 + 8))
  {
    v5 = a1;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *a3;
      if (!*a3)
      {
        return *a3 != 0;
      }

      v9 = *(v8 + 16);
      if (v9 > 3)
      {
        if (v9 == 4)
        {
          goto LABEL_13;
        }

        if (v9 == 8)
        {
          v14 = *(*(v5 + 16) + 4 * v6);
          while (1)
          {
            v15 = *(v8 + 56);
            if (v14 < v15)
            {
              break;
            }

            if (v15)
            {
              v16 = *(v8 + 64);
              v17 = *(v8 + 56);
              while (1)
              {
                v18 = *v16;
                if (**v16 == 1 && v18[10] == 3)
                {
                  break;
                }

                ++v16;
                if (!--v17)
                {
                  goto LABEL_20;
                }
              }

              v8 = *(v18 + 2);
              v14 -= v15;
              if (v8)
              {
                continue;
              }
            }

            goto LABEL_20;
          }

          v19 = *(*(v8 + 64) + 8 * v14);
          *a2 += *(v19 + 36);
          v13 = *(v19 + 16);
          goto LABEL_19;
        }

        if (v9 != 9)
        {
LABEL_14:
          *a3 = 0;
          v10 = *re::foundationSerializationLogObjects(a1);
          a1 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          if (a1)
          {
            v21[0] = 0;
            _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Connection source type isn't supported.", v21, 2u);
          }

          goto LABEL_20;
        }
      }

      else if (v9)
      {
        if (v9 == 2)
        {
          v11 = *a2;
          v12 = -1;
          do
          {
            v11 += *(*(v8 + 48) + 20);
            *a2 = v11;
            ++v12;
          }

          while (v12 < *(*(v5 + 16) + 4 * v6));
        }

        else
        {
          if (v9 != 3)
          {
            goto LABEL_14;
          }

LABEL_13:
          a1 = (*(*v8 + 96))(*a3, *a2, *(*(v5 + 16) + 4 * v6));
          *a2 = a1;
        }

        v13 = *(v8 + 48);
LABEL_19:
        *a3 = v13;
        goto LABEL_20;
      }

      *a3 = 0;
LABEL_20:
      v6 = ++v7;
    }

    while (*(v5 + 8) > v7);
  }

  return *a3 != 0;
}

uint64_t anonymous namespace::DeepCopier::write(_anonymous_namespace_::DeepCopier *this, const re::IntrospectionBase *a2, char *a3, re::DynamicString **a4)
{
  v6 = a2;
  v7 = this;
  v88[4] = *MEMORY[0x1E69E9840];
  while (1)
  {
    v8 = *(v6 + 4);
    if (v8 != 13)
    {
      break;
    }

    v9 = (*(*v6 + 56))(v6, a3);
    (*(*v6 + 64))(v6, a4, v9);
    if (!v9)
    {
      return 1;
    }

    v10 = *(v6 + 6);
    a3 = (*(*v6 + 80))(v6, a3);
    this = (*(*v6 + 72))(v6, a4);
    a4 = this;
    v6 = v10;
  }

  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          if (v8 == 2)
          {
            v11 = *(v6 + 6);
            v12 = *(v6 + 16);
            v13 = v7;
            v14 = a3;
            v15 = a4;
LABEL_60:
          }

LABEL_63:
          v49 = *re::foundationSerializationLogObjects(this);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v71 = v49;
            re::getPrettyTypeName(v6, &__src);
            v72 = (BYTE8(__src) & 1) != 0 ? v87 : (&__src + 9);
            *v79 = 136315138;
            *&v79[4] = v72;
            _os_log_error_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_ERROR, "DeepCopier; unhandled type '%s'.", v79, 0xCu);

            if (__src)
            {
              if (BYTE8(__src))
              {
                (*(*__src + 40))();
              }
            }
          }

          return 0;
        }

        v43 = *a3;
        re::PolymorphicData::makeWithPointer(*(v6 + 6), v43, &__src);
        if (v87)
        {
          {
            return 0;
          }

          if (*a4)
          {
            re::PolymorphicData::makeWithPointer(*(v6 + 6), *a4, v79);
            memmove(*v79, __src, *(*(&__src + 1) + 20));
          }
        }

        else if (v43)
        {
          v51 = *(v6 + 6);
          v52 = re::introspect<char>(0);
          v53 = *a4;
          if (v51 == v52)
          {
            if (v53)
            {
              re::introspectionReleasePointer(*a4, *v7, v7[2], *(v6 + 6));
              *a4 = 0;
            }

            v65 = strlen(v43);
            v66 = v65 + 1;
            v67 = (((v65 == -1) << 63) >> 63) ^ (v65 == -1);
            v68 = v67 != 0;
            if (v67)
            {
              v69 = *re::foundationSerializationLogObjects(v65);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                *v79 = 0;
                _os_log_error_impl(&dword_1E1C61000, v69, OS_LOG_TYPE_ERROR, "DeepCopier; string length overflowed.", v79, 2u);
              }
            }

            else
            {
              v75 = (*(**v7 + 32))(*v7, v66, 0);
              memcpy(v75, v43, v66);
              *a4 = v75;
            }

            return !v68;
          }

          if (!v53)
          {
            v53 = re::introspectionAllocPointer(*v7, v7[2], *(v6 + 6));
          }

          if ((v54 & 1) == 0)
          {
            v70 = *re::foundationSerializationLogObjects(v54);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *v79 = 0;
              _os_log_error_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_ERROR, "DeepCopier; failed to write pointer dereferenced target.", v79, 2u);
            }

            re::introspectionReleasePointer(v53, *v7, v7[2], *(v6 + 6));
            return 0;
          }

          *a4 = v53;
        }

        else if (*a4)
        {
          re::introspectionReleasePointer(*a4, *v7, v7[2], *(v6 + 6));
          *a4 = 0;
        }

        return 1;
      }

LABEL_48:
      memcpy(a4, a3, *(v6 + 5));
      return 1;
    }

    if (v8 == 3)
    {
      v45 = (*(*v6 + 88))(v6, a3);
      (*(*v6 + 72))(v6, *v7, v7[2], a4, v45);
      if (!v45)
      {
        return 1;
      }
    }

    else
    {
      if (v8 != 4)
      {
        v35 = (*(*v6 + 80))(v6, a4);
        if (!v35)
        {
          *&__src = (*(*v6 + 88))(v6, a3);
          DWORD2(__src) = v55;
          while (1)
          {
            v56 = (*(*v6 + 96))(v6, a3);
            if (__src == v56 && WORD4(__src) == v57 && WORD5(__src) == HIWORD(v57))
            {
              return 1;
            }

            v58 = (*(*v6 + 104))(v6, &__src);
            v59 = (*(*v6 + 72))(v6, *v7, v7[2], a4);
            if ((v60 & 1) == 0)
            {
              v36 = *re::foundationSerializationLogObjects(v60);
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                return 0;
              }

              *v79 = 0;
              v37 = "DeepCopier; failed to write data array item.";
              p_src = v79;
              goto LABEL_79;
            }

            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&__src);
          }
        }

        v36 = *re::foundationSerializationLogObjects(v35);
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LOWORD(__src) = 0;
        v37 = "DeepCopier; cannot read into existing data array.";
        p_src = &__src;
LABEL_79:
        v42 = v36;
        v61 = 2;
        goto LABEL_106;
      }

      v45 = (*(*v6 + 80))(v6, a3);
      (*(*v6 + 64))(v6, a4, *v7, v7[2], v45);
      if (!v45)
      {
        return 1;
      }
    }

    v46 = (*(*v6 + 104))(v6, a3, 0);
    v47 = (*(*v6 + 96))(v6, a4, 0);
    v11 = *(v6 + 6);
    v15 = v47;
    v13 = v7;
    v12 = v45;
    v14 = v46;
    goto LABEL_60;
  }

  if (v8 > 8)
  {
    if (v8 == 9)
    {
      goto LABEL_48;
    }

    if (v8 == 10)
    {
      re::StringID::operator=(a4, a3);
      return 1;
    }

    if (v8 != 11)
    {
      goto LABEL_63;
    }

    v39 = (*(v6 + 11))(*v7, v7[2], v6, a3, a4);
    if (v39)
    {
      return 1;
    }

    v40 = *re::foundationSerializationLogObjects(v39);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v41 = *(v6 + 6);
    LODWORD(__src) = 136315138;
    *(&__src + 4) = v41;
    v37 = "DeepCopier; failed to write type '%s' using serialization callback.";
    p_src = &__src;
    v42 = v40;
LABEL_105:
    v61 = 12;
LABEL_106:
    _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, v37, p_src, v61);
    return 0;
  }

  if (v8 == 6)
  {
    re::DynamicString::operator=(a4, a3);
    return 1;
  }

  if (v8 == 7)
  {
    *v79 = a4;
    v44 = (*(*v6 + 80))(v6, a3);
    (*(*v6 + 72))(v6, a4, v44);
    operator new();
  }

  if (!*(v6 + 14))
  {
    return 1;
  }

  v16 = 0;
  while (1)
  {
    v17 = *(*(v6 + 8) + 8 * v16);
    if (*v17 != 1)
    {
      goto LABEL_35;
    }

    v18 = *(v17 + 40);
    if (v18 > 1)
    {
      break;
    }

    if (!v18)
    {
      goto LABEL_28;
    }

    if (v18 != 1)
    {
      goto LABEL_109;
    }

    v19 = *(v17 + 48);
    if (!v19)
    {
      v62 = *re::foundationSerializationLogObjects(this);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v73 = *(v17 + 8);
      LODWORD(__src) = 136315138;
      *(&__src + 4) = v73;
      v37 = "DeepCopier; failed to get array length for member '%s'.";
      goto LABEL_104;
    }

    v20 = *(v17 + 64);
    __dst = 0;
    v21 = *(v19 + 20);
    memcpy(&__dst, &a3[v20], v21);
    v22 = __dst;
    *&__src = __dst;
    memcpy(a4 + v20, &__src, v21);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&__src, *(*(v17 + 16) + 48), v22);
    ArcSharedObject::ArcSharedObject(v79, 0);
    v80 = 0x800000001;
    v81 = 8;
    v82 = 0;
    v83 = 0;
    v84 = 0xFFFFFFFFLL;
    *v79 = &unk_1F5CBD2C0;
    v85[0] = &__src;
    v85[1] = 0;
    v24 = v23;
    if ((v23 & 1) == 0)
    {
      v25 = *re::foundationSerializationLogObjects(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v17 + 8);
        *buf = 136315138;
        v78 = v34;
        _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "DeepCopier; failed to write array data for member '%s'.", buf, 0xCu);
      }
    }

    *v79 = &unk_1F5CBD2C0;
    re::SerializedReference<re::IntrospectionBase const*>::reset(v85);
    *v79 = &unk_1F5CCF868;
    objc_destructInstance(&v79[8]);
    *&__src = &unk_1F5CB0038;
    re::SerializedReference<re::IntrospectionBase const*>::reset(v88);
    *&__src = &unk_1F5CCF868;
    this = objc_destructInstance(&__src + 8);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

LABEL_35:
    if (++v16 >= *(v6 + 14))
    {
      return 1;
    }
  }

  if (v18 == 2)
  {
    v26 = *(*(*(v17 + 16) + 48) + 64);
    v27 = *v26;
    if (**v26 != 2)
    {
      v28 = (v26 + 1);
      do
      {
        v29 = *v28++;
        v27 = v29;
      }

      while (*v29 != 2);
    }

    v30 = *(v17 + 36);
    v31 = *&a3[v30];
    v32 = *(v17 + 48);
    *&__src = &a3[*(v17 + 64)];
    *(&__src + 1) = v32;
    v87 = *(v27 + 1);
    if (!v33)
    {
      v62 = *re::foundationSerializationLogObjects(v33);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v74 = *(v17 + 8);
      LODWORD(__src) = 136315138;
      *(&__src + 4) = v74;
      v37 = "DeepCopier; failed to find polymorphic member '%s'.";
      goto LABEL_104;
    }

    this = memmove(a4 + *(v17 + 64), __src, *(*(&__src + 1) + 20));
    goto LABEL_35;
  }

  if (v18 != 3)
  {
LABEL_109:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "writeStructure", 353);
    result = _os_crash();
    __break(1u);
    return result;
  }

LABEL_28:
  if (this)
  {
    goto LABEL_35;
  }

  v62 = *re::foundationSerializationLogObjects(this);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v64 = *(v17 + 8);
    LODWORD(__src) = 136315138;
    *(&__src + 4) = v64;
    v37 = "DeepCopier; failed to write target for member '%s'.";
LABEL_104:
    p_src = &__src;
    v42 = v62;
    goto LABEL_105;
  }

  return 0;
}

BOOL anonymous namespace::DeepCopier::writePolymorphicPointer(_anonymous_namespace_::DeepCopier *this, re::PolymorphicData *a2, char *a3, re::DynamicString **a4)
{
  v5 = *(a2 + 1);
  if (!v5 || !*(a2 + 2))
  {
    v16 = *re::foundationSerializationLogObjects(this);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(__dst[0]) = 0;
    v18 = "DeepCopier; invalid polymorphic data.";
LABEL_15:
    v19 = __dst;
LABEL_16:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    return 0;
  }

  v9 = *a4;
  if (*a4)
  {
    re::introspectionReleasePointer(v9, *this, *(this + 2), v5);
    *a4 = 0;
  }

  if (!a3)
  {
    return 1;
  }

  v10 = *a2;
  if (!*a2)
  {
    v16 = *re::foundationSerializationLogObjects(v9);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(__dst[0]) = 0;
    v18 = "DeepCopier; invalid polymorphic data type.";
    goto LABEL_15;
  }

  v11 = *(a2 + 1);
  __dst[0] = 0;
  v12 = memcpy(__dst, v10, *(v11 + 20));
  v13 = *(a2 + 2);
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v16 = *re::foundationSerializationLogObjects(v12);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v24 = 0;
    v18 = "DeepCopier; failed to find polymorphic type.";
    v19 = v24;
    goto LABEL_16;
  }

  v15 = (*(v13 + 1) + 32);
  while (*(v15 - 1) != __dst[0])
  {
    v15 += 10;
    if (!--v14)
    {
      goto LABEL_11;
    }
  }

  v20 = *v15;
  v21 = re::introspectionAllocPointer(*this, *(this + 2), *(v15 - 3));
  if (v22)
  {
    *a4 = (v21 - *v15);
    return 1;
  }

  v23 = *re::foundationSerializationLogObjects(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "DeepCopier; failed to write pointer dereferenced target.", v24, 2u);
  }

  re::introspectionReleasePointer(v21, *this, *(this + 2), *(v15 - 3));
  return 0;
}

uint64_t re::introspect<char>(unsigned int a1)
{
  v1 = &unk_1ECF17000;
  {
    v1 = &unk_1ECF17000;
    if (v3)
    {
      re::introspect<char>(BOOL)::info = re::introspect_char(a1, v4);
      v1 = &unk_1ECF17000;
    }
  }

  return v1[408];
}

BOOL anonymous namespace::DeepCopier::writeLinearArray(_anonymous_namespace_::DeepCopier *this, const re::IntrospectionBase *a2, uint64_t a3, char *__src, char *__dst)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 4);
  if (v9)
  {
    v10 = v9 == 9;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    memcpy(__dst, __src, *(a2 + 5) * a3);
    return 1;
  }

  if (!a3)
  {
    return 1;
  }

  v13 = 0;
  while (1)
  {
    if ((v14 & 1) == 0)
    {
      break;
    }

    if (a3 == ++v13)
    {
      return 1;
    }
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v16 = v15;
    re::getPrettyTypeName(a2, &v18);
    if (v19)
    {
      v17 = *&v20[7];
    }

    else
    {
      v17 = v20;
    }

    *buf = 136315394;
    v22 = v17;
    v23 = 1024;
    v24 = v13;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "DeepCopier; failed to write %s[%d].", buf, 0x12u);

    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))();
      }
    }

    return 0;
  }

  return result;
}

__n128 std::__function::__func<anonymous namespace::DeepCopier::writeHashTable(re::IntrospectionBase const&,void const*,void *)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::DeepCopier::writeHashTable(re::IntrospectionBase const&,void const*,void *)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D16D88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::DeepCopier::writeHashTable(re::IntrospectionBase const&,void const*,void *)::{lambda(void const*,void *)#1},std::allocator<anonymous namespace::DeepCopier::writeHashTable(re::IntrospectionBase const&,void const*,void *)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, void *a2, char **a3)
{
  v4 = *a3;
  v5 = *(a1 + 16);
  v6 = (*(**(a1 + 8) + 96))(*(a1 + 8), *v5, *(v5 + 2), **(a1 + 24), *a2);
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::foundationSerializationLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "DeepCopier; failed to write hash table value.", v11, 2u);
    }
  }

  return v8;
}

uint64_t re::snapshot::BufferEncoder::BufferEncoder(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 20);
  v6 = *(a2 + 80);
  v7 = *(a2 + 72);
  *a1 = &unk_1F5D16DD0;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 20) = v5;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  re::DynamicString::setCapacity(v8, 0);
  *(a1 + 72) = v7;
  *(a1 + 80) = v6;
  *(a1 + 16) = *(a2 + 16);
  re::DynamicString::operator=(v8, (a2 + 40));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t re::snapshot::BufferEncoder::error(re::snapshot::BufferEncoder *this, const char *__format, ...)
{
  va_start(va, __format);
  v4 = *(this + 6);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    re::DynamicString::append((this + 40), "\n", 1uLL);
  }

  return re::DynamicString::vappendf((this + 40), __format, va);
}

unsigned int *re::snapshot::EncoderOPACK::operator<<(unsigned int *this, int a2)
{
  v2 = this;
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = this[4];
  if (v4 < this[5])
  {
    goto LABEL_5;
  }

  this = re::snapshot::BufferEncoder::grow(this, v4 + 1);
  if (this)
  {
    LODWORD(v4) = v2[4];
LABEL_5:
    v5 = *(v2 + 1);
    v2[4] = v4 + 1;
    *(v5 + v4) = v3;
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::operator<<(unsigned int *this, float a2)
{
  v3 = this;
  v4 = this[4];
  if (v4 + 5 <= this[5])
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v4 + 5);
  if (this)
  {
    v4 = v3[4];
LABEL_2:
    v5 = *(v3 + 1);
    v3[4] = v4 + 1;
    *(v5 + v4) = 53;
    *(*(v3 + 1) + v3[4]) = a2;
    v3[4] += 4;
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::operator<<(unsigned int *this, double a2)
{
  v3 = this;
  v4 = this[4];
  if (v4 + 9 <= this[5])
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v4 + 9);
  if (this)
  {
    v4 = v3[4];
LABEL_2:
    v5 = *(v3 + 1);
    v3[4] = v4 + 1;
    *(v5 + v4) = 54;
    *(*(v3 + 1) + v3[4]) = a2;
    v3[4] += 8;
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::serializeString(unsigned int *this, const char *__src, size_t __len)
{
  v5 = this;
  if (__src || !__len)
  {
    v8 = this[4];
    if (__len > 0x20)
    {
      if (__len > 0xFF)
      {
        v15 = this[5];
        if (__len >> 16)
        {
          v18 = __len + v8 + 5;
          if (v18 > v15)
          {
            this = re::snapshot::BufferEncoder::grow(this, v18);
            if (!this)
            {
              return this;
            }
          }

          if (HIDWORD(__len))
          {
            re::internal::assertLog(5, v18, "assertion failure: '%s' (%s:line %i) len %zu exceeds uint32_t capacity", "!overflow", "serializeString", 100, __len);
            this = _os_crash();
            __break(1u);
            return this;
          }

          v19 = *(v5 + 1);
          v20 = v5[4];
          v5[4] = v20 + 1;
          *(v19 + v20) = 99;
          *(*(v5 + 1) + v5[4]) = __len;
          v14 = v5[4] + 4;
        }

        else
        {
          v16 = __len + v8 + 3;
          if (v16 > v15)
          {
            this = re::snapshot::BufferEncoder::grow(this, v16);
            if (!this)
            {
              return this;
            }

            v8 = v5[4];
          }

          v17 = *(v5 + 1);
          v5[4] = v8 + 1;
          *(v17 + v8) = 98;
          *(*(v5 + 1) + v5[4]) = __len;
          v14 = v5[4] + 2;
        }
      }

      else
      {
        v12 = __len + v8 + 2;
        if (v12 > this[5])
        {
          this = re::snapshot::BufferEncoder::grow(this, v12);
          if (!this)
          {
            return this;
          }

          v8 = v5[4];
        }

        v13 = *(v5 + 1);
        v5[4] = v8 + 1;
        *(v13 + v8) = 97;
        *(*(v5 + 1) + v5[4]) = __len;
        v14 = v5[4] + 1;
      }

      v5[4] = v14;
      v11 = (*(v5 + 1) + v14);
    }

    else
    {
      v9 = __len + v8 + 1;
      if (v9 > this[5])
      {
        this = re::snapshot::BufferEncoder::grow(this, v9);
        if (!this)
        {
          return this;
        }

        v8 = v5[4];
      }

      v10 = *(v5 + 1);
      v5[4] = v8 + 1;
      *(v10 + v8) = __len | 0x40;
      if (!__len)
      {
LABEL_20:
        v5[4] += __len;
        return this;
      }

      v11 = (*(v5 + 1) + v5[4]);
    }

    this = memmove(v11, __src, __len);
    goto LABEL_20;
  }

  v6 = this[4];
  if (v6 < this[5])
  {
LABEL_4:
    v7 = *(v5 + 1);
    v5[4] = v6 + 1;
    *(v7 + v6) = 4;
    return this;
  }

  this = re::snapshot::BufferEncoder::grow(this, v6 + 1);
  if (this)
  {
    LODWORD(v6) = v5[4];
    goto LABEL_4;
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::beginArray(unsigned int *this, unint64_t a2)
{
  v3 = this;
  if (a2 < 0xF)
  {
    v6 = this[4];
    if (v6 >= this[5])
    {
      this = re::snapshot::BufferEncoder::grow(this, v6 + 1);
      if (!this)
      {
        return this;
      }

      LODWORD(v6) = *(v3 + 16);
    }

    v7 = *(v3 + 8);
    *(v3 + 16) = v6 + 1;
    *(v7 + v6) = a2 | 0xD0;
    return this;
  }

  v4 = this[4];
  if (v4 >= this[5])
  {
    if (!re::snapshot::BufferEncoder::grow(this, v4 + 1))
    {
      goto LABEL_4;
    }

    LODWORD(v4) = *(v3 + 16);
  }

  v5 = *(v3 + 8);
  *(v3 + 16) = v4 + 1;
  *(v5 + v4) = -33;
LABEL_4:

  return re::snapshot::EncoderOPACK::writeInteger(v3, a2);
}

unsigned int *re::snapshot::EncoderOPACK::writeInteger(unsigned int *this, uint64_t a2)
{
  if (a2 != a2)
  {
    v3 = this[4];
    if (v3 + 9 > this[5])
    {
      v5 = this;
      v6 = a2;
      this = re::snapshot::BufferEncoder::grow(this, v3 + 9);
      if (!this)
      {
        return this;
      }

      this = v5;
      a2 = v6;
      v3 = v5[4];
    }

    v4 = *(this + 1);
    this[4] = v3 + 1;
    *(v4 + v3) = 51;
    *(*(this + 1) + this[4]) = a2;
    this[4] += 8;
    return this;
  }

  return re::snapshot::EncoderOPACK::writeInteger(this, a2);
}

unsigned int *re::snapshot::EncoderOPACK::endArray(unsigned int *this, unint64_t a2)
{
  if (a2 >= 0xF)
  {
    v2 = this;
    v3 = this[4];
    if (v3 < this[5])
    {
LABEL_3:
      v4 = *(v2 + 1);
      v2[4] = v3 + 1;
      *(v4 + v3) = 3;
      return this;
    }

    this = re::snapshot::BufferEncoder::grow(this, v3 + 1);
    if (this)
    {
      LODWORD(v3) = v2[4];
      goto LABEL_3;
    }
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::beginDictionary(unsigned int *this, unint64_t a2)
{
  v2 = this;
  if (a2 < 0xF)
  {
    v5 = a2 | 0xE0;
    v3 = this[4];
    v4 = this + 4;
    if (v3 < this[5])
    {
      goto LABEL_5;
    }

    v7 = a2 | 0xE0;
    this = re::snapshot::BufferEncoder::grow(this, v3 + 1);
    if (this)
    {
LABEL_9:
      LODWORD(v3) = *v4;
      v5 = v7;
      goto LABEL_5;
    }
  }

  else
  {
    v3 = this[4];
    v4 = this + 4;
    if (v3 < this[5])
    {
      v5 = -17;
LABEL_5:
      v6 = *(v2 + 1);
      v2[4] = v3 + 1;
      *(v6 + v3) = v5;
      return this;
    }

    this = re::snapshot::BufferEncoder::grow(this, v3 + 1);
    if (this)
    {
      v7 = -17;
      goto LABEL_9;
    }
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::endDictionary(unsigned int *this, unint64_t a2)
{
  if (a2 >= 0xF)
  {
    v2 = this;
    v3 = this[4];
    if (v3 < this[5])
    {
LABEL_3:
      v4 = *(v2 + 1);
      v2[4] = v3 + 1;
      *(v4 + v3) = 3;
      return this;
    }

    this = re::snapshot::BufferEncoder::grow(this, v3 + 1);
    if (this)
    {
      LODWORD(v3) = v2[4];
      goto LABEL_3;
    }
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::beginData(unsigned int *this, unint64_t a2, unint64_t a3)
{
  v4 = this;
  if (a3 > 0x20)
  {
    if (a3 > 0xFF)
    {
      v12 = this[5];
      if (a3 >> 16)
      {
        v16 = this[4];
        if (HIDWORD(a3))
        {
          if (v16 + 9 > v12)
          {
            this = re::snapshot::BufferEncoder::grow(this, v16 + 9);
            if (!this)
            {
              return this;
            }

            v16 = *(v4 + 16);
          }

          v20 = *(v4 + 8);
          *(v4 + 16) = v16 + 1;
          *(v20 + v16) = -108;
          *(*(v4 + 8) + *(v4 + 16)) = a2;
          v11 = *(v4 + 16) + 8;
LABEL_19:
          *(v4 + 16) = v11;
          return this;
        }

        v17 = v16 + 5;
        if (v16 + 5 <= v12)
        {
LABEL_15:
          if (HIDWORD(a2))
          {
            re::internal::assertLog(5, v17, "assertion failure: '%s' (%s:line %i) count %zu exceeds uint32_t capacity", "!overflow", "beginData", 170, a2);
            this = _os_crash();
            __break(1u);
            return this;
          }

          v18 = *(v4 + 8);
          v19 = *(v4 + 16);
          *(v4 + 16) = v19 + 1;
          *(v18 + v19) = -109;
          *(*(v4 + 8) + *(v4 + 16)) = a2;
          v11 = *(v4 + 16) + 4;
          goto LABEL_19;
        }

LABEL_30:
        this = re::snapshot::BufferEncoder::grow(v4, v17);
        if (!this)
        {
          return this;
        }

        goto LABEL_15;
      }

      v13 = this[4] + 3;
      if (v13 <= v12)
      {
LABEL_11:
        if (a2 < 0x10000)
        {
          v14 = *(v4 + 8);
          v15 = *(v4 + 16);
          *(v4 + 16) = v15 + 1;
          *(v14 + v15) = -110;
          *(*(v4 + 8) + *(v4 + 16)) = a2;
          v11 = *(v4 + 16) + 2;
          goto LABEL_19;
        }

        re::internal::assertLog(5, v13, "assertion failure: '%s' (%s:line %i) count %zu exceeds uint16_t capacity", "!overflow", "beginData", 162, a2);
        _os_crash();
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v8 = this[4] + 2;
      if (v8 > this[5])
      {
        this = re::snapshot::BufferEncoder::grow(this, v8);
        if (!this)
        {
          return this;
        }
      }

      if (a2 < 0x100)
      {
        v9 = *(v4 + 8);
        v10 = *(v4 + 16);
        *(v4 + 16) = v10 + 1;
        *(v9 + v10) = -111;
        *(*(v4 + 8) + *(v4 + 16)) = a2;
        v11 = *(v4 + 16) + 1;
        goto LABEL_19;
      }

      re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) count %zu exceeds uint8_t capacity", "!overflow", "beginData", 154, a2);
      _os_crash();
      __break(1u);
    }

    this = re::snapshot::BufferEncoder::grow(v4, v13);
    if (!this)
    {
      return this;
    }

    goto LABEL_11;
  }

  v5 = a2 + 112;
  if (a2 + 112 >= 0x100)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) tag %zu exceeds uint8_t capacity", "!overflow", "beginData", 148, v5);
    _os_crash();
    __break(1u);
  }

  else
  {
    v6 = this[4];
    if (v6 < this[5])
    {
LABEL_4:
      v7 = *(v4 + 8);
      *(v4 + 16) = v6 + 1;
      *(v7 + v6) = v5;
      return this;
    }
  }

  this = re::snapshot::BufferEncoder::grow(v4, v6 + 1);
  if (this)
  {
    LODWORD(v6) = *(v4 + 16);
    goto LABEL_4;
  }

  return this;
}

uint64_t re::snapshot::EncoderOPACK::beginOptional(re::snapshot::EncoderOPACK *this, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(this + 4);
    if (v4 >= *(this + 5))
    {
      if (!re::snapshot::BufferEncoder::grow(this, v4 + 1))
      {
        return a2;
      }

      LODWORD(v4) = *(this + 4);
    }

    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 4;
  }

  return a2;
}

unsigned int *re::snapshot::EncoderOPACK::writeInteger(unsigned int *this, int a2)
{
  v2 = a2;
  v3 = this;
  if ((a2 + 1) > 0x28)
  {
    v6 = this[4];
    if (v6 + 2 > this[5])
    {
      this = re::snapshot::BufferEncoder::grow(this, v6 + 2);
      if (!this)
      {
        return this;
      }

      v6 = v3[4];
    }

    v7 = *(v3 + 1);
    v3[4] = v6 + 1;
    *(v7 + v6) = 48;
    *(*(v3 + 1) + v3[4]++) = v2;
    return this;
  }

  v4 = this[4];
  if (v4 < this[5])
  {
LABEL_3:
    v5 = *(v3 + 1);
    v3[4] = v4 + 1;
    *(v5 + v4) = v2 + 8;
    return this;
  }

  this = re::snapshot::BufferEncoder::grow(this, v4 + 1);
  if (this)
  {
    LODWORD(v4) = v3[4];
    goto LABEL_3;
  }

  return this;
}

{
  if (a2 != a2)
  {
    v3 = this[4];
    if (v3 + 3 > this[5])
    {
      v6 = a2;
      v5 = this;
      this = re::snapshot::BufferEncoder::grow(this, v3 + 3);
      if (!this)
      {
        return this;
      }

      this = v5;
      v3 = v5[4];
      LOWORD(a2) = v6;
    }

    v4 = *(this + 1);
    this[4] = v3 + 1;
    *(v4 + v3) = 49;
    *(*(this + 1) + this[4]) = a2;
    this[4] += 2;
    return this;
  }

  a2 = a2;

  return re::snapshot::EncoderOPACK::writeInteger(this, a2);
}

{
  if (a2 != a2)
  {
    v3 = this[4];
    if (v3 + 5 > this[5])
    {
      v6 = a2;
      v5 = this;
      this = re::snapshot::BufferEncoder::grow(this, v3 + 5);
      if (!this)
      {
        return this;
      }

      this = v5;
      v3 = v5[4];
      a2 = v6;
    }

    v4 = *(this + 1);
    this[4] = v3 + 1;
    *(v4 + v3) = 50;
    *(*(this + 1) + this[4]) = a2;
    this[4] += 4;
    return this;
  }

  return re::snapshot::EncoderOPACK::writeInteger(this, a2);
}

unsigned int *re::snapshot::EncoderRaw::serializeString(unsigned int *this, const char *__src, size_t __len)
{
  v5 = this;
  if (!__src && __len)
  {
    __srca = -1;
    return re::snapshot::BufferEncoder::writeRaw<true>(this, &__srca, 8uLL);
  }

  v6 = this[4];
  v7 = __len + v6 + 8;
  if (v7 > this[5])
  {
    this = re::snapshot::BufferEncoder::grow(this, v7);
    if (!this)
    {
      return this;
    }

    v6 = v5[4];
  }

  *(*(v5 + 1) + v6) = __len;
  v8 = v5[4] + 8;
  v5[4] = v8;
  if (__len)
  {
    this = memmove((*(v5 + 1) + v8), __src, __len);
    v8 = v5[4];
  }

  v5[4] = v8 + __len;
  return this;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(unsigned int *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  switch(*(a3 + 16))
  {
    case 0:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 1:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 2:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 3:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 4:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 5:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 6:
      v7 = *(a2 + 8);
      v8 = (v7 & 1) == 0;
      if (v7)
      {
        v6 = *(a2 + 16);
      }

      else
      {
        v6 = (a2 + 9);
      }

      v9 = v7 >> 1;
      v10 = v7 >> 1;
      if (v8)
      {
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }

      goto LABEL_33;
    case 7:

      re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 8:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 9:

      return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
    case 0xA:
      v4 = *(a2 + 8);
      v5 = strlen(v4);
      this = v3;
      v6 = v4;
LABEL_33:

      this = re::snapshot::EncoderRaw::serializeString(this, v6, v5);
      break;
    case 0xB:

      this = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
      break;
    case 0xD:

      this = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, a2, a3);
      break;
    default:
      return this;
  }

  return this;
}

{
  v5 = this;
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 120);
  if (!v6)
  {
    if (!*(a3 + 56))
    {
      return this;
    }

    v7 = 0;
    v8 = *(a3 + 60);
    while (1)
    {
      v9 = *(*(a3 + 64) + 8 * v7);
      if (*v9 != 1)
      {
        goto LABEL_41;
      }

      v10 = *(v9 + 40);
      if ((v8 & 1) != 0 && v10 == 3)
      {
        goto LABEL_41;
      }

      v11 = *(v9 + 36);
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = *(*(*(v9 + 16) + 48) + 64);
          v19 = *v18;
          if (**v18 != 2)
          {
            v20 = (v18 + 1);
            do
            {
              v21 = *v20++;
              v19 = v21;
            }

            while (*v21 != 2);
          }

          v22 = *(v19 + 1);
          if (v22)
          {
            if (a2)
            {
              v23 = *(v9 + 64);
              v24 = *(v9 + 48);
              __src = 0;
              this = memcpy(&__src, (a2 + v23), *(v24 + 20));
              v25 = __src;
            }

            else
            {
              v25 = 0;
            }

            v30 = *v22;
            if (v30)
            {
              v31 = *(v22 + 1);
              while (*(v31 + 24) != v25)
              {
                v31 += 40;
                if (!--v30)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
LABEL_37:
              v31 = 0;
            }

            v32 = *(a2 + v11);
            *__dst = v31;
            v38[2] = re::globalAllocators(this)[2];
            v38[3] = &__src;
            __src = &unk_1F5D17598;
            v38[0] = __dst;
            re::snapshot::EncoderRaw::serializePolymorphicPointer(v5, v32, v25, &__src);
            this = re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&__src);
            goto LABEL_41;
          }

          v29 = *re::foundationSerializationLogObjects(this);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            re::getPrettyTypeName(a3, &__src);
            v35 = v38 + 1;
            if (v38[0])
            {
              v35 = v38[1];
            }

            v36 = *(v9 + 8);
            *__dst = 136315394;
            *&__dst[4] = v35;
            v40 = 2080;
            v41 = v36;
            _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "No polymorphic table for %s.%s", __dst, 0x16u);
            if (__src && (v38[0] & 1) != 0)
            {
              (*(*__src + 40))();
            }
          }

          LOBYTE(__src) = 0;
          p_src = &__src;
          v27 = v5;
          v28 = 1;
          goto LABEL_40;
        }

        if (v10 == 3)
        {
LABEL_21:
          this = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(v5);
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_21;
        }

        if (v10 == 1)
        {
          v12 = *(a2 + v11);
          v13 = *(v9 + 16);
          if (v12)
          {
            v14 = *(v9 + 48);
            if (!v14)
            {
              re::snapshot::BufferEncoder::error(v5, "Snapshot writer failed to get array length for member '%s' in %s.", *(v9 + 8), *(a3 + 48));
              __src = 0;
              return re::snapshot::BufferEncoder::writeRaw<true>(v5, &__src, 8uLL);
            }

            v15 = *(v9 + 64);
            *__dst = 0;
            memcpy(__dst, (a2 + v15), *(v14 + 20));
            v16 = *(v13 + 48);
            v17 = *__dst;
            if (*(v16 + 16))
            {
              __src = *__dst;
              for (this = re::snapshot::BufferEncoder::writeRaw<true>(v5, &__src, 8uLL); v17; --v17)
              {
                this = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(v5);
                v12 = (v12 + *(*(v13 + 48) + 20));
              }

              goto LABEL_41;
            }

            __src = *__dst * *(v16 + 20);
            v33 = __src;
            re::snapshot::BufferEncoder::writeRaw<true>(v5, &__src, 8uLL);
            v27 = v5;
            p_src = v12;
            v28 = v33;
            goto LABEL_40;
          }

          if (*(*(v13 + 48) + 16))
          {
            __src = 0;
            p_src = &__src;
            v27 = v5;
            v28 = 8;
LABEL_40:
            this = re::snapshot::BufferEncoder::writeRaw<true>(v27, p_src, v28);
            goto LABEL_41;
          }

          __src = 0;
          this = re::snapshot::BufferEncoder::writeRaw<true>(v5, &__src, 8uLL);
          v34 = v5[4];
          if (v34 > v5[5])
          {
            this = re::snapshot::BufferEncoder::grow(v5, v34);
            if (!this)
            {
              goto LABEL_41;
            }

            LODWORD(v34) = v5[4];
          }

          v5[4] = v34;
        }
      }

LABEL_41:
      if (++v7 >= *(a3 + 56))
      {
        return this;
      }
    }
  }

  return v6();
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(unsigned int *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  switch(*(a3 + 16))
  {
    case 0:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 1:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 2:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 3:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 4:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 5:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 6:
      v7 = *(a2 + 8);
      v8 = (v7 & 1) == 0;
      if (v7)
      {
        v6 = *(a2 + 16);
      }

      else
      {
        v6 = (a2 + 9);
      }

      v9 = v7 >> 1;
      v10 = v7 >> 1;
      if (v8)
      {
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }

      goto LABEL_33;
    case 7:

      re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 8:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 9:

      return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
    case 0xA:
      v4 = *(a2 + 8);
      v5 = strlen(v4);
      this = v3;
      v6 = v4;
LABEL_33:

      this = re::snapshot::EncoderOPACK::serializeString(this, v6, v5);
      break;
    case 0xB:

      this = re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
      break;
    case 0xD:

      this = re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a2, a3);
      break;
    default:
      return this;
  }

  return this;
}

{
  v5 = this;
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 120);
  if (v6)
  {

    return v6();
  }

  v7 = *(a3 + 60);
  if ((v7 & 1) == 0)
  {
    this = re::snapshot::EncoderOPACK::beginObject(this);
  }

  if (*(a3 + 56))
  {
    for (i = 0; i < *(a3 + 56); ++i)
    {
      v9 = *(*(a3 + 64) + 8 * i);
      if (*v9 == 1)
      {
        if (v7)
        {
          v10 = *(v9 + 40);
          if (v10 == 3)
          {
            continue;
          }
        }

        else
        {
          this = re::snapshot::EncoderOPACK::writeInteger(v5, *(v9 + 32));
          v10 = *(v9 + 40);
        }

        v11 = *(v9 + 36);
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v19 = *(*(*(v9 + 16) + 48) + 64);
            v20 = *v19;
            if (**v19 != 2)
            {
              v21 = (v19 + 1);
              do
              {
                v22 = *v21++;
                v20 = v22;
              }

              while (*v22 != 2);
            }

            v23 = *(v20 + 1);
            if (v23)
            {
              if (a2)
              {
                v24 = *(v9 + 64);
                v25 = *(v9 + 48);
                __dst = 0;
                this = memcpy(&__dst, (a2 + v24), *(v25 + 20));
                v26 = __dst;
              }

              else
              {
                v26 = 0;
              }

              v28 = *v23;
              if (v28)
              {
                v29 = *(v23 + 1);
                while (*(v29 + 24) != v26)
                {
                  v29 += 40;
                  if (!--v28)
                  {
                    goto LABEL_41;
                  }
                }
              }

              else
              {
LABEL_41:
                v29 = 0;
              }

              v30 = *(a2 + v11);
              *buf = v29;
              v36[2] = re::globalAllocators(this)[2];
              v36[3] = &__dst;
              __dst = &unk_1F5D17760;
              v36[0] = buf;
              re::snapshot::EncoderOPACK::serializePolymorphicPointer(v5, v30, v26, &__dst);
              this = re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&__dst);
            }

            else
            {
              v27 = *re::foundationSerializationLogObjects(this);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                re::getPrettyTypeName(a3, &__dst);
                v33 = v36 + 1;
                if (v36[0])
                {
                  v33 = v36[1];
                }

                v34 = *(v9 + 8);
                *buf = 136315394;
                *&buf[4] = v33;
                v38 = 2080;
                v39 = v34;
                _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "No polymorphic table for %s.%s", buf, 0x16u);
                if (__dst && (v36[0] & 1) != 0)
                {
                  (*(*__dst + 40))();
                }
              }

              this = re::snapshot::EncoderOPACK::beginOptional(v5, 0);
            }

            continue;
          }

          if (v10 == 3)
          {
LABEL_25:
            this = re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(v5);
          }
        }

        else
        {
          if (!v10)
          {
            goto LABEL_25;
          }

          if (v10 == 1)
          {
            v12 = *(a2 + v11);
            v13 = *(v9 + 16);
            if (v12)
            {
              v14 = *(v9 + 48);
              if (!v14)
              {
                re::snapshot::BufferEncoder::error(v5, "Snapshot writer failed to get array length for member '%s' in %s.", *(v9 + 8), *(a3 + 48));
                return re::snapshot::EncoderOPACK::beginArray(v5, 0);
              }

              v15 = *(v9 + 64);
              __dst = 0;
              memcpy(&__dst, (a2 + v15), *(v14 + 20));
              v16 = *(v13 + 48);
              v17 = __dst;
              if (*(v16 + 16))
              {
                re::snapshot::EncoderOPACK::beginArray(v5, __dst);
                if (v17)
                {
                  v18 = v17;
                  do
                  {
                    re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(v5);
                    v12 += *(*(v13 + 48) + 20);
                    --v18;
                  }

                  while (v18);
                }

                this = re::snapshot::EncoderOPACK::endArray(v5, v17);
              }

              else
              {
                v31 = __dst * *(v16 + 20);
                re::snapshot::EncoderOPACK::beginData(v5, v31, v31);
                this = re::snapshot::BufferEncoder::writeRaw<true>(v5, v12, v31);
              }
            }

            else if (*(*(v13 + 48) + 16))
            {
              this = re::snapshot::EncoderOPACK::beginArray(v5, 0);
            }

            else
            {
              this = re::snapshot::EncoderOPACK::beginData(v5, 0, 0);
              v32 = v5[4];
              if (v32 > v5[5])
              {
                this = re::snapshot::BufferEncoder::grow(v5, v32);
                if (!this)
                {
                  continue;
                }

                LODWORD(v32) = v5[4];
              }

              v5[4] = v32;
            }
          }
        }
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    return re::snapshot::EncoderOPACK::endObject(v5);
  }

  return this;
}

uint64_t *re::snapshot::DecoderOPACK::operator>>(uint64_t *result, _BYTE *a2)
{
  v2 = result[3];
  if (v2 >= result[4])
  {
    v3 = 0;
  }

  else
  {
    result[3] = (v2 + 1);
    v3 = *v2;
    if (v3 == 1)
    {
      *a2 = 1;
      return result;
    }

    if (v3 == 2)
    {
      *a2 = 0;
      return result;
    }
  }

  return re::snapshot::BufferDecoder::error(result, "expected BOOL, found tag %x", v3);
}

uint64_t *re::snapshot::BufferDecoder::error(const char **this, const char *a2, ...)
{
  va_start(va, a2);
  v20 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::DynamicString::setCapacity(&v10, 0);
  v4 = re::DynamicString::vassignf(&v10, a2, va);
  v5 = *re::foundationSerializationLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = this[8];
    if (!v7)
    {
      v7 = "<unknown>";
    }

    v8 = *(this + 10);
    if (v11)
    {
      v9 = v12;
    }

    else
    {
      v9 = &v11 + 1;
    }

    *buf = 136315650;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Snapshot reader (%s:%d): %s", buf, 0x1Cu);
  }

  this[3] = this[4];
  *(this + 44) = 1;
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

uint64_t *re::snapshot::DecoderOPACK::operator>>(uint64_t *result, float *a2)
{
  v3 = result[3];
  v2 = result[4];
  if (v3 >= v2)
  {
    return re::snapshot::BufferDecoder::error(result, "expected float, found tag %x");
  }

  v5 = (v3 + 1);
  result[3] = (v3 + 1);
  v6 = *v3;
  if (v6 != 54)
  {
    if (v6 == 53)
    {
      if (v2 - v5 <= 3)
      {
        return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      *a2 = *v5;
      result[3] += 4;
      return result;
    }

    return re::snapshot::BufferDecoder::error(result, "expected float, found tag %x");
  }

  v7 = v2 - v5;
  if (v7 <= 7)
  {
    result = re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7);
    v9 = 0.0;
  }

  else
  {
    v8 = *(v3 + 1);
    result[3] = (v3 + 9);
    v9 = v8;
  }

  *a2 = v9;
  return result;
}

uint64_t *re::snapshot::DecoderOPACK::operator>>(uint64_t *result, double *a2)
{
  v3 = result[3];
  v2 = result[4];
  if (v3 >= v2)
  {
    return re::snapshot::BufferDecoder::error(result, "expected double, found tag %x");
  }

  v5 = (v3 + 1);
  result[3] = (v3 + 1);
  v6 = *v3;
  if (v6 != 53)
  {
    if (v6 == 54)
    {
      if (v2 - v5 <= 7)
      {
        return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      *a2 = *v5;
      result[3] += 8;
      return result;
    }

    return re::snapshot::BufferDecoder::error(result, "expected double, found tag %x");
  }

  v7 = v2 - v5;
  if (v7 <= 3)
  {
    result = re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v7);
    v9 = 0.0;
  }

  else
  {
    v8 = *(v3 + 1);
    result[3] = (v3 + 5);
    v9 = v8;
  }

  *a2 = v9;
  return result;
}

uint64_t re::snapshot::DecoderOPACK::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (*v3 == 4)
  {
    *(a1 + 24) = v3 + 1;
  }

  return (*(**(a3 + 32) + 16))();
}

uint64_t *re::snapshot::DecoderOPACK::deserializePolymorphicPointer(re::snapshot::DecoderOPACK *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 3);
  v7 = *v6;
  if (v7 == 225)
  {
    *(this + 3) = v6 + 1;
    v10 = 1;
    Integer = re::snapshot::DecoderOPACK::readInteger(this, 0);
    return (*(**(a3 + 32) + 16))(*(a3 + 32), this, a2, &v10, &Integer);
  }

  if (v7 == 4)
  {
    *(this + 3) = v6 + 1;
    v10 = 0;
    Integer = 0;
    return (*(**(a3 + 32) + 16))(*(a3 + 32), this, a2, &v10, &Integer);
  }

  return re::snapshot::BufferDecoder::error(this, "expected polymorphic header, found %x", *v6);
}

uint64_t re::snapshot::DecoderOPACK::operator>>(re::snapshot::DecoderOPACK *a1, uint64_t *a2)
{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::snapshot::DecoderOPACK::beginString(re::snapshot::DecoderOPACK *this, unint64_t *a2)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    goto LABEL_19;
  }

  v5 = v3 + 1;
  *(this + 3) = v3 + 1;
  v6 = *v3;
  if (v6 <= 0x61)
  {
    if (v6 == 4)
    {
      *a2 = -1;
      return 1;
    }

    if (v6 == 97)
    {
      if (v5 < v2)
      {
        v5 = v3 + 2;
        *(this + 3) = v3 + 2;
        v8 = v3[1];
        goto LABEL_26;
      }

      re::snapshot::BufferDecoder::error(this, "overrun in beginString: expected 1 byte, but 0 bytes remaining");
      return 0;
    }
  }

  else
  {
    switch(v6)
    {
      case 'b':
        v7 = v2 - v5;
        if (v7 > 1)
        {
          v8 = *(v3 + 1);
          v5 = v3 + 3;
          goto LABEL_16;
        }

        v9 = 2;
LABEL_23:
        re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", v9, v7);
        *a2 = 0;
        return 1;
      case 'c':
        v7 = v2 - v5;
        if (v7 > 3)
        {
          v8 = *(v3 + 1);
          v5 = v3 + 5;
          goto LABEL_16;
        }

        v9 = 4;
        goto LABEL_23;
      case 'd':
        v7 = v2 - v5;
        if (v7 > 7)
        {
          v8 = *(v3 + 1);
          v5 = v3 + 9;
LABEL_16:
          *(this + 3) = v5;
          goto LABEL_26;
        }

        v9 = 8;
        goto LABEL_23;
    }
  }

  if (v6 - 97 <= 0xFFFFFFDE)
  {
LABEL_19:
    re::snapshot::BufferDecoder::error(this, "expected string, found tag %x");
    return 0;
  }

  v8 = v6 - 64;
LABEL_26:
  *a2 = v8;
  if (v2 - v5 < v8)
  {
    re::snapshot::BufferDecoder::error(this, "overrun in beginString: size is %zu, but only %zu bytes remaining");
    return 0;
  }

  return 1;
}

uint64_t re::snapshot::DecoderOPACK::beginObject(re::snapshot::DecoderOPACK *this, const char **a2)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v5 = v3 + 1;
  *(this + 3) = v3 + 1;
  v6 = *v3;
  if (v6 != 239)
  {
LABEL_13:
    re::snapshot::BufferDecoder::error(this, "expected object, found tag %x", v6);
    return 0;
  }

  if (v5 >= v4 || (v8 = *v5, v8 == 3))
  {
    Integer = 0x7FFFFFFF;
  }

  else if ((v8 - 7) > 0x28)
  {
    Integer = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
  }

  else
  {
    *(this + 3) = v3 + 2;
    Integer = v8 - 8;
  }

  *(this + 10) = Integer;
  if (a2)
  {
    v10 = *(this + 8);
    *(this + 8) = *a2;
    *a2 = v10;
  }

  return 1;
}

uint64_t *re::snapshot::DecoderOPACK::endObject(uint64_t *this, const char *a2)
{
  v3 = this;
  v4 = this[3];
  for (i = this[4]; v4 < i; i = v3[4])
  {
    v3[3] = (v4 + 1);
    v6 = *v4;
    if (v6 == 3)
    {
      break;
    }

    this = re::snapshot::DecoderOPACK::skip(v3, v6);
    v4 = v3[3];
  }

  v3[8] = a2;
  return this;
}

uint64_t *re::snapshot::DecoderOPACK::skip(uint64_t *result, int a2)
{
  v2 = result;
  if (a2 > 97)
  {
    if (a2 <= 145)
    {
      if (a2 > 99)
      {
        if (a2 != 100)
        {
          if (a2 != 145)
          {
            goto LABEL_60;
          }

          goto LABEL_33;
        }

        goto LABEL_43;
      }

      if (a2 != 98)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a2 > 147)
      {
        if (a2 != 148)
        {
          if (a2 == 223 || a2 == 239)
          {
            v4 = result[3];
            v3 = result[4];
            if (v4 >= v3)
            {
              v5 = 0;
            }

            else
            {
              result[3] = (v4 + 1);
              v5 = *v4++;
            }

            if (v4 < v3 && v5 != 3)
            {
              do
              {
                result = re::snapshot::DecoderOPACK::skip(v2, v5);
                v6 = v2[3];
                v7 = v2[4];
                if (v6 >= v7)
                {
                  break;
                }

                v8 = v6 + 1;
                v2[3] = (v6 + 1);
                v5 = *v6;
              }

              while (v8 < v7 && v5 != 3);
            }

            return result;
          }

          goto LABEL_60;
        }

LABEL_43:
        v19 = result[3];
        v20 = result[4];
        v16 = v20 - v19;
        if ((v20 - v19) > 7)
        {
          v21 = *v19;
          v12 = (v19 + 1);
          v13 = v21;
          result[3] = v12;
          v22 = v20 - v12;
          if (v21 <= v22)
          {
            goto LABEL_56;
          }

          goto LABEL_49;
        }

        v25 = 8;
        goto LABEL_54;
      }

      if (a2 != 146)
      {
LABEL_36:
        v15 = result[3];
        v11 = result[4];
        v16 = v11 - v15;
        if ((v11 - v15) > 3)
        {
          v17 = *v15;
          v12 = v15 + 4;
          v13 = v17;
          goto LABEL_48;
        }

        v25 = 4;
        goto LABEL_54;
      }
    }

    v23 = result[3];
    v11 = result[4];
    v16 = v11 - v23;
    if ((v11 - v23) > 1)
    {
      v24 = *v23;
      v12 = v23 + 2;
      v13 = v24;
LABEL_48:
      result[3] = v12;
      v22 = v11 - v12;
      if (v22 >= v13)
      {
LABEL_56:
        v18 = &v12[v13];
        goto LABEL_57;
      }

LABEL_49:
      result = re::snapshot::BufferDecoder::error(result, "invalid size when skipping string or data: %zu, only %zu remaining", v13, v22);
      v12 = v2[3];
      v13 = v2[4] - v12;
      goto LABEL_56;
    }

    v25 = 2;
LABEL_54:
    result = re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", v25, v16);
    goto LABEL_55;
  }

  if (a2 <= 49)
  {
    if (a2 > 47)
    {
      if (a2 == 48)
      {
        v18 = result[3] + 1;
      }

      else
      {
        v18 = result[3] + 2;
      }

      goto LABEL_57;
    }

    if ((a2 - 1) < 2 || a2 == 4)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (a2 <= 52)
  {
    if (a2 != 50)
    {
      if (a2 != 51)
      {
        goto LABEL_60;
      }

      goto LABEL_42;
    }

LABEL_50:
    v18 = result[3] + 4;
    goto LABEL_57;
  }

  switch(a2)
  {
    case '5':
      goto LABEL_50;
    case '6':
LABEL_42:
      v18 = result[3] + 8;
LABEL_57:
      v2[3] = v18;
      return result;
    case 'a':
LABEL_33:
      v10 = result[3];
      v11 = result[4];
      if (v11 != v10)
      {
        v14 = *v10;
        v12 = v10 + 1;
        v13 = v14;
        goto LABEL_48;
      }

      result = re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
LABEL_55:
      v13 = 0;
      v12 = v2[3];
      goto LABEL_56;
  }

LABEL_60:
  if ((a2 - 7) >= 0x29)
  {
    if ((a2 - 64) <= 0x20)
    {
      v18 = result[3] + a2 - 64;
      goto LABEL_57;
    }

    if ((a2 - 112) <= 0x20)
    {
      v18 = result[3] + a2 - 112;
      goto LABEL_57;
    }

    if ((a2 - 208) > 0xE)
    {
      if ((a2 - 224) > 0xE)
      {
        return re::snapshot::BufferDecoder::error(result, "unexpected tag while skipping: %x", a2);
      }

      else if (a2 >= 0xE1)
      {
        v29 = a2 - 223;
        do
        {
          v30 = v2[3];
          if (v30 >= v2[4])
          {
            v31 = 0;
          }

          else
          {
            v2[3] = (v30 + 1);
            v31 = *v30;
          }

          re::snapshot::DecoderOPACK::skip(v2, v31);
          v32 = v2[3];
          if (v32 >= v2[4])
          {
            v33 = 0;
          }

          else
          {
            v2[3] = (v32 + 1);
            v33 = *v32;
          }

          result = re::snapshot::DecoderOPACK::skip(v2, v33);
          --v29;
        }

        while (v29 > 1);
      }
    }

    else if (a2 >= 0xD1)
    {
      v26 = a2 - 207;
      do
      {
        v27 = v2[3];
        if (v27 >= v2[4])
        {
          v28 = 0;
        }

        else
        {
          v2[3] = (v27 + 1);
          v28 = *v27;
        }

        result = re::snapshot::DecoderOPACK::skip(v2, v28);
        --v26;
      }

      while (v26 > 1);
    }
  }

  return result;
}

uint64_t re::snapshot::DecoderOPACK::beginDictionary(re::snapshot::DecoderOPACK *this, unint64_t *a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 >= v3)
  {
    goto LABEL_8;
  }

  v4 = v2 + 1;
  *(this + 3) = v2 + 1;
  v5 = *v2;
  v6 = (v5 - 224);
  if (v6 > 0xE)
  {
    if (v5 == 239)
    {
      *a2 = -1;
      return 1;
    }

LABEL_8:
    re::snapshot::BufferDecoder::error(this, "expected dictionary, found tag %x");
    return 0;
  }

  *a2 = v6;
  if (v3 - v4 >= v6)
  {
    return 1;
  }

  re::snapshot::BufferDecoder::error(this, "overrun in beginDictionary: %zu items, only %zu bytes remaining");
  return 0;
}

BOOL re::snapshot::DecoderOPACK::endDictionary(re::snapshot::DecoderOPACK *this, unint64_t *a2)
{
  v4 = *(this + 3);
  v5 = *a2;
  if (v4 >= *(this + 4))
  {
    if (v5)
    {
      re::snapshot::BufferDecoder::error(this, "reached end of buffer but expected more dictionary entries", v2, v3);
      return 1;
    }

    return 1;
  }

  if (v5 <= 0xE)
  {
    *a2 = v5 - 1;
    return v5 == 0;
  }

  if (*v4 == 3)
  {
    *(this + 3) = v4 + 1;
    return 1;
  }

  return 0;
}

uint64_t re::snapshot::DecoderOPACK::beginArray(re::snapshot::DecoderOPACK *this, unint64_t *a2)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    goto LABEL_9;
  }

  v6 = v3 + 1;
  *(this + 3) = v3 + 1;
  v7 = *v3;
  v8 = (v7 - 208);
  if (v8 <= 0xE)
  {
    *a2 = v8;
    if (v4 - v6 < v8)
    {
      goto LABEL_7;
    }

    return 1;
  }

  if (v7 != 223)
  {
LABEL_9:
    re::snapshot::BufferDecoder::error(this, "expected array, found tag %x");
    return 0;
  }

  Integer = re::snapshot::DecoderOPACK::readInteger(this, -1);
  *a2 = Integer;
  if (*(this + 4) - *(this + 3) >= Integer + 1)
  {
    return 1;
  }

LABEL_7:
  re::snapshot::BufferDecoder::error(this, "overrun in beginArray: %zu items, only %zu bytes remaining");
  return 0;
}

uint64_t re::snapshot::DecoderOPACK::readInteger(re::snapshot::DecoderOPACK *this, uint64_t a2)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    goto LABEL_22;
  }

  v5 = v3 + 1;
  *(this + 3) = v3 + 1;
  v6 = *v3;
  if (v6 > 0x31)
  {
    if (v6 != 50)
    {
      if (v6 == 51)
      {
        if (v4 - v5 <= 7)
        {
          re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
        }

        else
        {
          a2 = *(v3 + 1);
          *(this + 3) = v3 + 9;
        }

        return a2;
      }

LABEL_11:
      if (v6 - 7 <= 0x28)
      {
        return (v6 - 8);
      }

LABEL_22:
      re::snapshot::BufferDecoder::error(this, "expected integer, found tag %x");
      return a2;
    }

    if (v4 - v5 <= 3)
    {
      re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v4 - v5);
    }

    else
    {
      LODWORD(a2) = *(v3 + 1);
      *(this + 3) = v3 + 5;
    }

    return a2;
  }

  else
  {
    if (v6 != 48)
    {
      if (v6 == 49)
      {
        if (v4 - v5 <= 1)
        {
          re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 2uLL, v4 - v5);
        }

        else
        {
          LOWORD(a2) = *(v3 + 1);
          *(this + 3) = v3 + 3;
        }

        return a2;
      }

      goto LABEL_11;
    }

    if (v5 < v4)
    {
      *(this + 3) = v3 + 2;
      return v3[1];
    }
  }

  return a2;
}

BOOL re::snapshot::DecoderOPACK::endArray(re::snapshot::DecoderOPACK *this, unint64_t *a2)
{
  v4 = *(this + 3);
  v5 = *a2;
  if (v4 >= *(this + 4))
  {
    if (v5)
    {
      re::snapshot::BufferDecoder::error(this, "reached end of buffer but expected more array entries", v2, v3);
      return 1;
    }

    return 1;
  }

  if (v5 <= 0xE)
  {
    *a2 = v5 - 1;
    return v5 == 0;
  }

  if (*v4 == 3)
  {
    *(this + 3) = v4 + 1;
    return 1;
  }

  return 0;
}

uint64_t re::snapshot::DecoderOPACK::beginData(re::snapshot::DecoderOPACK *this, unint64_t *a2, int a3)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  if (v4 >= v3)
  {
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_32:
    re::snapshot::BufferDecoder::error(this, "expected data, found tag %x");
    return 0;
  }

  v6 = v4 + 1;
  *(this + 3) = v4 + 1;
  v7 = *v4;
  if (v7 > 0x92)
  {
    if (v7 == 147)
    {
      v8 = v3 - v6;
      if (v8 > 3)
      {
        v9 = *(v4 + 1);
        v6 = v4 + 5;
        goto LABEL_18;
      }

      v11 = 4;
LABEL_26:
      re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", v11, v8);
      goto LABEL_27;
    }

    if (v7 == 148)
    {
      v8 = v3 - v6;
      if (v8 > 7)
      {
        v9 = *(v4 + 1);
        v6 = v4 + 9;
        goto LABEL_18;
      }

      v11 = 8;
      goto LABEL_26;
    }
  }

  else
  {
    if (v7 == 145)
    {
      if (v3 != v6)
      {
        v9 = v4[1];
        v6 = v4 + 2;
        goto LABEL_18;
      }

      re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
LABEL_27:
      *a2 = 0;
      return 1;
    }

    if (v7 == 146)
    {
      v8 = v3 - v6;
      if (v8 > 1)
      {
        v9 = *(v4 + 1);
        v6 = v4 + 3;
LABEL_18:
        *(this + 3) = v6;
        goto LABEL_19;
      }

      v11 = 2;
      goto LABEL_26;
    }
  }

  if (v7 - 145 > 0xFFFFFFDE)
  {
    v9 = v7 - 112;
LABEL_19:
    *a2 = v9;
    if (v3 - v6 < v9)
    {
      re::snapshot::BufferDecoder::error(this, "overrun in data: size = %zu, only %zu bytes left");
      return 0;
    }

    return 1;
  }

  ++v4;
  if (!a3)
  {
    goto LABEL_32;
  }

LABEL_13:
  v10 = 0;
  *(this + 3) = v4 - 1;
  return v10;
}

uint64_t re::snapshot::DecoderOPACK::beginOptional(re::snapshot::DecoderOPACK *this)
{
  v1 = *(this + 3);
  if (v1 >= *(this + 4))
  {
    return 0;
  }

  if (*v1 != 4)
  {
    return 1;
  }

  result = 0;
  *(this + 3) = v1 + 1;
  return result;
}

uint64_t *re::snapshot::BufferDecoder::skipData(uint64_t *this, unint64_t a2)
{
  v2 = this;
  v3 = this[3];
  v4 = this[4] - v3;
  if (v4 < a2)
  {
    this = re::snapshot::BufferDecoder::error(this, "overrun: attempted to skip %zu bytes, only %zu remaining", a2, v4);
    v3 = v2[3];
    a2 = v2[4] - v3;
  }

  v2[3] = v3 + a2;
  return this;
}

uint64_t re::snapshot::DecoderRaw::deserializePolymorphicPointer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[3];
  a1[3] = (v4 + 1);
  if (*v4)
  {
    v7 = 0;
    re::snapshot::DecoderRaw::operator>>(a1, &v7);
    v9 = 1;
    v8 = v7;
    v5 = *(**(a3 + 32) + 16);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
    v5 = *(**(a3 + 32) + 16);
  }

  return v5();
}

BOOL re::snapshot::DecoderRaw::beginDictionary(re::snapshot::DecoderRaw *this, unint64_t *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 <= 7)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
    v6 = *a2;
    v7 = *(this + 3);
  }

  else
  {
    v6 = *v4;
    *a2 = *v4;
    v7 = *(this + 3) + 8;
    *(this + 3) = v7;
  }

  v8 = 2 * v6;
  v9 = *(this + 4) - v7;
  if (v9 < 2 * v6)
  {
    re::snapshot::BufferDecoder::error(this, "overrun in beginDictionary: size is %zu, but only %zu bytes remaining", v6, v9);
  }

  return v9 >= v8;
}

BOOL re::snapshot::DecoderRaw::beginArray(re::snapshot::DecoderRaw *this, unint64_t *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 <= 7)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
    v6 = *a2;
    v7 = *(this + 3);
  }

  else
  {
    v6 = *v4;
    *a2 = *v4;
    v7 = *(this + 3) + 8;
    *(this + 3) = v7;
  }

  v8 = *(this + 4) - v7;
  if (v8 < v6)
  {
    re::snapshot::BufferDecoder::error(this, "overrun in beginArray: size is %zu, but only %zu bytes remaining", v6, v8);
  }

  return v8 >= v6;
}

uint64_t re::snapshot::DecoderRaw::beginString(re::snapshot::DecoderRaw *this, unint64_t *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 <= 7)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
    v6 = *a2;
  }

  else
  {
    v6 = *v4;
    *a2 = *v4;
    *(this + 3) += 8;
  }

  if (v6 == -1)
  {
    return 1;
  }

  v7 = *(this + 4) - *(this + 3);
  if (v7 >= v6)
  {
    return 1;
  }

  re::snapshot::BufferDecoder::error(this, "overrun in beginString: size is %zu, but only %zu bytes remaining", v6, v7);
  return 0;
}

uint64_t re::snapshot::DecoderRaw::beginOptional(re::snapshot::DecoderRaw *this)
{
  v1 = *(this + 3);
  if (*(this + 4) == v1)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
    v2 = 0;
  }

  else
  {
    v2 = *v1;
    *(this + 3) = v1 + 1;
  }

  return v2 & 1;
}

void re::snapshot::BufferDecoder::logInput(re::snapshot::BufferDecoder *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *re::foundationSerializationLogObjects(this);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v4 = *(this + 2);
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_INFO, "Snapshot reader data is %zu bytes", buf, 0xCu);
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (v5 >= 0x100)
      {
        v7 = 256;
      }

      else
      {
        v7 = v5;
      }

      *buf = 0u;
      v22 = 0u;
      re::DynamicString::setCapacity(buf, 0);
      v8 = re::DynamicString::resize(buf, 3 * v7, 0);
      if (v5)
      {
        v10 = 0;
        v11 = v6;
        do
        {
          v12 = *(this + 2);
          if (v12 <= v11)
          {
            re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v12);
            _os_crash();
            __break(1u);
LABEL_23:
            re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v15);
            _os_crash();
            __break(1u);
          }

          v13 = re::snapshot::BufferDecoder::logInput(void)const::chars[*(*(this + 1) + v11) >> 4];
          *re::DynamicString::operator[](buf, v10) = v13;
          v15 = *(this + 2);
          if (v15 <= v11)
          {
            goto LABEL_23;
          }

          v16 = re::snapshot::BufferDecoder::logInput(void)const::chars[*(*(this + 1) + v11) & 0xF];
          *re::DynamicString::operator[](buf, v10 + 1) = v16;
          v8 = re::DynamicString::operator[](buf, v10 + 2);
          *v8 = 32;
          v10 += 3;
          ++v11;
        }

        while (3 * v7 != v10);
      }

      v17 = *re::foundationSerializationLogObjects(v8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = &buf[9];
        if (buf[8])
        {
          v18 = v22;
        }

        *v19 = 136315138;
        v20 = v18;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "Snapshot reader data = %s", v19, 0xCu);
      }

      v3 = *buf;
      if (*buf)
      {
        if (buf[8])
        {
          v3 = (*(**buf + 40))();
        }
      }

      v6 += v7;
      v5 -= v7;
    }

    while (*(this + 2) > v6);
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *this, unint64_t a2, unint64_t a3)
{
  switch(*(a3 + 16))
  {
    case 0:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 1:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 2:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 3:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 4:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 5:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 6:
      v12 = 0;
      if (re::snapshot::DecoderRaw::beginString(this, &v12))
      {
        v10 = v12;
        re::DynamicString::resize(a2, v12, 0);
        if (*(a2 + 8))
        {
          v11 = *(a2 + 16);
        }

        else
        {
          v11 = (a2 + 9);
        }

        re::snapshot::BufferDecoder::readRaw(this, v11, v10);
      }

      break;
    case 7:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 8:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 9:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 0xA:
      v14 = 0;
      v5 = re::snapshot::DecoderRaw::beginString(this, &v14);
      if (v5)
      {
        v6 = v14;
        v7 = *(this + 3);
        v8 = *(this + 4) - v7;
        if (v8 >= v14)
        {
          v8 = v14;
        }

        *(this + 3) = &v7[v8];
        v12 = 0;
        v13 = &str_67;
        v9 = re::StringID::operator=(a2, &v12);
        if (v12)
        {
          if (v12)
          {
          }
        }
      }

      break;
    case 0xB:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    case 0xD:

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
      break;
    default:
      return;
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(const char **this, size_t a2, size_t a3)
{
  switch(*(a3 + 16))
  {
    case 0:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 1:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 2:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 3:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 4:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 5:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 6:
      v12 = 0;
      if (re::snapshot::DecoderOPACK::beginString(this, &v12))
      {
        v10 = v12;
        re::DynamicString::resize(a2, v12, 0);
        if (*(a2 + 8))
        {
          v11 = *(a2 + 16);
        }

        else
        {
          v11 = (a2 + 9);
        }

        re::snapshot::BufferDecoder::readRaw(this, v11, v10);
      }

      break;
    case 7:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 8:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 9:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 0xA:
      v14 = 0;
      v5 = re::snapshot::DecoderOPACK::beginString(this, &v14);
      if (v5)
      {
        v6 = v14;
        v7 = this[3];
        v8 = this[4] - v7;
        if (v8 >= v14)
        {
          v8 = v14;
        }

        this[3] = &v7[v8];
        v12 = 0;
        v13 = &str_67;
        v9 = re::StringID::operator=(a2, &v12);
        if (v12)
        {
          if (v12)
          {
          }
        }
      }

      break;
    case 0xB:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    case 0xD:

      re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
      break;
    default:
      return;
  }
}

BOOL re::snapshot::BufferEncoder::isOK(re::snapshot::BufferEncoder *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = v1 >> 1;
  }

  else
  {
    v2 = v1 >> 1;
  }

  return v2 == 0;
}

void re::snapshot::EncoderOPACK::~EncoderOPACK(re::snapshot::EncoderOPACK *this)
{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));
}

{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));

  JUMPOUT(0x1E6906520);
}

uint64_t re::snapshot::EncoderOPACK::arrayAsData(re::snapshot::EncoderOPACK *this, int a2, int a3, int a4)
{
  if ((a3 & a4 & 1) != 0 || a2)
  {
    return (*(this + 72) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

unsigned int *re::snapshot::EncoderOPACK::serializeData(re::snapshot::EncoderOPACK *this, void *a2, unint64_t a3)
{
  re::snapshot::EncoderOPACK::beginData(this, a3, a3);

  return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, a3);
}

unsigned int *re::snapshot::EncoderOPACK::serializePolymorphicPointer(unsigned int *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v5 = this[4];
  v6 = this[5];
  if (a2)
  {
    if (v5 >= v6)
    {
      if (!re::snapshot::BufferEncoder::grow(this, v5 + 1))
      {
        goto LABEL_4;
      }

      LODWORD(v5) = *(v4 + 16);
    }

    v10 = *(v4 + 8);
    *(v4 + 16) = v5 + 1;
    *(v10 + v5) = -31;
LABEL_4:
    re::snapshot::EncoderOPACK::writeInteger(v4, a3);
    v12 = a2;
    return (*(**(a4 + 32) + 16))(*(a4 + 32), v4, &v12);
  }

  if (v5 < v6)
  {
    goto LABEL_6;
  }

  this = re::snapshot::BufferEncoder::grow(this, v5 + 1);
  if (this)
  {
    LODWORD(v5) = *(v4 + 16);
LABEL_6:
    v11 = *(v4 + 8);
    *(v4 + 16) = v5 + 1;
    *(v11 + v5) = 4;
  }

  return this;
}

void re::snapshot::EncoderRaw::~EncoderRaw(re::snapshot::EncoderRaw *this)
{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));
}

{
  *this = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 40));

  JUMPOUT(0x1E6906520);
}

uint64_t re::snapshot::EncoderRaw::beginOptional(re::snapshot::EncoderRaw *this, unsigned __int8 a2)
{
  __src = a2;
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
  return __src;
}

unsigned int *re::snapshot::EncoderRaw::operator<<(unsigned int *a1, char a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
}

unsigned int *re::snapshot::EncoderRaw::operator<<(unsigned int *a1, __int16 a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 2uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 2uLL);
}

unsigned int *re::snapshot::EncoderRaw::operator<<(unsigned int *a1, int a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 4uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 4uLL);
}

unsigned int *re::snapshot::EncoderRaw::operator<<(unsigned int *a1, uint64_t a2)
{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
}

{
  __src = a2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
}

unsigned int *re::snapshot::EncoderRaw::serializeData(re::snapshot::EncoderRaw *this, void *a2, size_t a3)
{
  __src = a3;
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
  return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, a3);
}

unsigned int *re::snapshot::EncoderRaw::serializePolymorphicPointer(re::snapshot::BufferEncoder *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    __src = 2;
    re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
    v10 = a3;
    re::snapshot::BufferEncoder::writeRaw<true>(this, &v10, 8uLL);
    v10 = a2;
    return (*(**(a4 + 32) + 16))(*(a4 + 32), this, &v10);
  }

  else
  {
    LOBYTE(v10) = 0;
    return re::snapshot::BufferEncoder::writeRaw<true>(this, &v10, 1uLL);
  }
}

uint64_t re::snapshot::DecoderOPACK::operator>>(re::snapshot::DecoderOPACK *a1, _BYTE *a2)
{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::snapshot::DecoderOPACK::operator>>(re::snapshot::DecoderOPACK *a1, _WORD *a2)
{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

uint64_t re::snapshot::DecoderOPACK::operator>>(re::snapshot::DecoderOPACK *a1, _DWORD *a2)
{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

{
  result = re::snapshot::DecoderOPACK::readInteger(a1, 0);
  *a2 = result;
  return result;
}

BOOL re::snapshot::DecoderRaw::beginData(re::snapshot::DecoderRaw *this, unint64_t *a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4) - v2;
  if (v3 <= 7)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v3);
  }

  else
  {
    *a2 = *v2;
    *(this + 3) += 8;
  }

  return v3 > 7;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  if (v3 <= 5)
  {
    if (v3 <= 2)
    {
      if (v3 == 1 || v3 == 2)
      {
        goto LABEL_16;
      }

      return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
    }

    if (v3 == 3)
    {
LABEL_18:
      LOWORD(__src) = *a2;
      v4 = 2;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
    }

    if (v3 == 4)
    {
LABEL_17:
      LODWORD(__src) = *a2;
LABEL_22:
      v4 = 4;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
    }

LABEL_19:
    __src = *a2;
    goto LABEL_20;
  }

  if (v3 <= 8)
  {
    if (v3 != 6)
    {
      if (v3 != 7)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_16:
    LOBYTE(__src) = *a2;
    v4 = 1;
    return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
  }

  switch(v3)
  {
    case 9:
      goto LABEL_19;
    case 10:
      LODWORD(__src) = *a2;
      goto LABEL_22;
    case 11:
      __src = *a2;
LABEL_20:
      v4 = 8;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, v4);
  }

  return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(unsigned int *a1, int *a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      __src = *a2;
      p_src = &__src;
      v5 = 4;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
    }

    if (v3 == 8)
    {
      v10 = *a2;
      p_src = &v10;
      v5 = 8;
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
    }

    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", *(a3 + 20));
  }

  if (v3 == 1)
  {
    v7 = *a2;
    p_src = &v7;
    v5 = 1;
    return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
  }

  if (v3 != 2)
  {
    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", *(a3 + 20));
  }

  v8 = *a2;
  p_src = &v8;
  v5 = 2;
  return re::snapshot::BufferEncoder::writeRaw<true>(a1, p_src, v5);
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *a1, const re::IntrospectionBase **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C30))
  {
    _MergedGlobals_553 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C30);
  }

  v6 = *a2;
  v7 = *(a3 + 48);
  v8 = re::PolymorphicData::makeWithPointer(v7, v6, &__src);
  v9 = v25;
  if (v25)
  {
    v10 = v24 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && __src != 0)
  {
    __dst = 0;
    v13 = memcpy(&__dst, __src, *(v24 + 20));
    v14 = __dst;
    v15 = *(v9 + 8);
    v16 = v15[3];
    while (v16 != __dst)
    {
      v16 = v15[8];
      v15 += 5;
    }

    v17 = v15[1];
    v21[0] = v7;
    v21[1] = v17;
    v18 = re::globalAllocators(v13)[2];
    v26 = &unk_1F5D17450;
    v27 = v21;
    v28 = v18;
    v29 = &v26;
    re::snapshot::EncoderRaw::serializePolymorphicPointer(a1, v6, v14, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  if (v7 != _MergedGlobals_553)
  {
    v21[0] = v7;
    v12 = re::globalAllocators(v8)[2];
    v26 = &unk_1F5D174D0;
    v27 = v21;
    v28 = v12;
    v29 = &v26;
    re::snapshot::EncoderRaw::serializePointer(a1, v6, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  LOBYTE(v26) = v6 != 0;
  result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &v26, 1uLL);
  if (v26 == 1)
  {
    if (v6)
    {
      v20 = strlen(v6);
    }

    else
    {
      v20 = -1;
    }

    return re::snapshot::EncoderRaw::serializeString(a1, v6, v20);
  }

  return result;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  __src = (*(*a3 + 56))(a3);
  result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 1uLL);
  if (__src == 1)
  {
    (*(*a3 + 80))(a3, a2);
    return re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1);
  }

  return result;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::BufferEncoder *this, char *a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  if (*(v5 + 28) == 1)
  {
    __src = *(v5 + 20) * *(a3 + 64);
    v6 = __src;
    re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, v6);
  }

  else
  {
    __src = *(a3 + 64);
    result = re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
    if (*(a3 + 64) >= 1)
    {
      v9 = 0;
      do
      {
        result = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this);
        a2 += *(v5 + 20);
        ++v9;
      }

      while (v9 < *(a3 + 64));
    }
  }

  return result;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderRaw>(unsigned int *a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v7 = (*(*a3 + 88))(a3);
  v8 = v7;
  if (*(v6 + 28) == 1)
  {
    if (v7)
    {
      v9 = (*(*a3 + 104))(a3, a2, 0);
      v10 = v8 * *(v6 + 20);
      __src = v10;
      re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, v9, v10);
    }

    __src = 0;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    v13 = a1[4];
    if (v13 <= a1[5])
    {
      goto LABEL_9;
    }

    result = re::snapshot::BufferEncoder::grow(a1, v13);
    if (result)
    {
      LODWORD(v13) = a1[4];
LABEL_9:
      a1[4] = v13;
    }
  }

  else
  {
    __src = v7;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        (*(*a3 + 104))(a3, a2, i);
        result = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1);
      }
    }
  }

  return result;
}

{
  v6 = a3[6];
  v7 = (*(*a3 + 80))(a3);
  v8 = v7;
  if (*(v6 + 28) == 1)
  {
    if (v7)
    {
      v9 = (*(*a3 + 104))(a3, a2, 0);
      v10 = v8 * *(v6 + 20);
      __src = v10;
      re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
      return re::snapshot::BufferEncoder::writeRaw<true>(a1, v9, v10);
    }

    __src = 0;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    v13 = a1[4];
    if (v13 <= a1[5])
    {
      goto LABEL_9;
    }

    result = re::snapshot::BufferEncoder::grow(a1, v13);
    if (result)
    {
      LODWORD(v13) = a1[4];
LABEL_9:
      a1[4] = v13;
    }
  }

  else
  {
    __src = v7;
    result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        (*(*a3 + 104))(a3, a2, i);
        result = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::write<re::snapshot::EncoderRaw>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(*a3 + 80))(a3);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, &v9, 8uLL);
  v9 = (*(*a3 + 88))(a3, a2);
  v10 = v6;
  while (1)
  {
    result = (*(*a3 + 96))(a3, a2);
    if (v9 == result && v10 == v8 && HIWORD(v10) == HIWORD(v8))
    {
      break;
    }

    (*(*a3 + 104))(a3, &v9);
    re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a1);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v9);
  }

  return result;
}

void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  __src[4] = *MEMORY[0x1E69E9840];
  __src[0] = (*(*a3 + 80))(a3);
  re::snapshot::BufferEncoder::writeRaw<true>(a1, __src, 8uLL);
  operator new();
}

uint64_t re::snapshot::introspected::write<re::snapshot::EncoderRaw>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v6 = *(a3 + 72);
  v7 = (*(*a1 + 32))(a1);
  if ((v6(v7, a3, a2, &v12) & 1) == 0)
  {
    if (v13)
    {
      v13 = 1;
      v8 = v14;
    }

    else
    {
      LOBYTE(v13) = 0;
      v8 = &v13 + 1;
    }

    *v8 = 0;
  }

  if (v13)
  {
    v9 = v14;
  }

  else
  {
    v9 = &v13 + 1;
  }

  if (v13)
  {
    v10 = v13 >> 1;
  }

  else
  {
    v10 = v13 >> 1;
  }

  re::snapshot::EncoderRaw::serializeString(a1, v9, v10);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17490;
  *(a2 + 8) = *v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17490;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17490;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D17510;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17510;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17510;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17550;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(*(a1 + 8), *a2, *(a1 + 16));
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(*(a1 + 8), v4, *(a1 + 24));
  return 1;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D175D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D175D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderRaw>(re::snapshot::EncoderRaw &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D175D8;
  a2[1] = v2;
  return a2;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(unsigned int *a1, int *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        v9 = *a2;

        return re::snapshot::EncoderOPACK::operator<<(a1, v9);
      }

      else
      {
        if (v4 != 2)
        {
          return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
        }

        v8 = *a2;

        return re::snapshot::EncoderOPACK::writeInteger(a1, v8);
      }
    }

    if (v4 == 3)
    {
      v12 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v12);
    }

    if (v4 == 4)
    {
      v10 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v10);
    }

LABEL_23:
    v5 = *a2;

    return re::snapshot::EncoderOPACK::writeInteger(a1, v5);
  }

  if (v4 <= 8)
  {
    if (v4 != 6)
    {
      if (v4 != 7)
      {
        v5 = *a2;

        return re::snapshot::EncoderOPACK::writeInteger(a1, v5);
      }

      v10 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v10);
    }

    v12 = *a2;

    return re::snapshot::EncoderOPACK::writeInteger(a1, v12);
  }

  if (v4 == 9)
  {
    goto LABEL_23;
  }

  if (v4 != 10)
  {
    if (v4 == 11)
    {
      v7 = *a2;

      return re::snapshot::EncoderOPACK::operator<<(a1, v7);
    }

    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected basic type: %s", *(a3 + 48));
  }

  v11 = *a2;

  return re::snapshot::EncoderOPACK::operator<<(a1, v11);
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::BufferEncoder *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v7 = *a2;
    }

    else
    {
      if (v4 != 8)
      {
        return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", v4);
      }

      v7 = *a2;
    }

    return re::snapshot::EncoderOPACK::writeInteger(a1, v7);
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = *a2;

      return re::snapshot::EncoderOPACK::writeInteger(a1, v5);
    }

    return re::snapshot::BufferEncoder::error(a1, "Snapshot writer: Unexpected enum size %d", v4);
  }

  v8 = *a2;

  return re::snapshot::EncoderOPACK::writeInteger(a1, v8);
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(unsigned int *a1, const re::IntrospectionBase **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C40))
  {
    qword_1EE1C3C38 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C40);
  }

  v6 = *a2;
  v7 = *(a3 + 48);
  v8 = re::PolymorphicData::makeWithPointer(v7, v6, &__src);
  v9 = v25;
  if (v25)
  {
    v10 = v24 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && __src != 0)
  {
    __dst = 0;
    v13 = memcpy(&__dst, __src, *(v24 + 20));
    v14 = __dst;
    v15 = *(v9 + 8);
    v16 = v15[3];
    while (v16 != __dst)
    {
      v16 = v15[8];
      v15 += 5;
    }

    v17 = v15[1];
    v21[0] = v7;
    v21[1] = v17;
    v18 = re::globalAllocators(v13)[2];
    v26 = &unk_1F5D17618;
    v27 = v21;
    v28 = v18;
    v29 = &v26;
    re::snapshot::EncoderOPACK::serializePolymorphicPointer(a1, v6, v14, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  if (v7 != qword_1EE1C3C38)
  {
    v21[0] = v7;
    v12 = re::globalAllocators(v8)[2];
    v26 = &unk_1F5D17698;
    v27 = v21;
    v28 = v12;
    v29 = &v26;
    re::snapshot::EncoderOPACK::serializePointer(a1, v6, &v26);
    return re::FunctionBase<24ul,void ()(re::snapshot::Encoder &,void const*)>::destroyCallable(&v26);
  }

  result = re::snapshot::EncoderOPACK::beginOptional(a1, v6 != 0);
  if (v6)
  {
    v20 = strlen(v6);

    return re::snapshot::EncoderOPACK::serializeString(a1, v6, v20);
  }

  return result;
}

uint64_t re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a3 + 56))(a3);
  v7 = v6;
  result = re::snapshot::EncoderOPACK::beginOptional(a1, v6);
  if (v7)
  {
    (*(*a3 + 80))(a3, a2);

    return re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1);
  }

  return result;
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, char *a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  if (((*(v6 + 29) & *(v6 + 28) & 1) != 0 || ((v7 = *(v6 + 16), v7 != 9) ? (v8 = v7 == 0) : (v8 = 1), v8)) && (*(this + 72) & 4) != 0)
  {
    v12 = *(v6 + 20) * *(a3 + 64);
    re::snapshot::EncoderOPACK::beginData(this, v12, v12);

    return re::snapshot::BufferEncoder::writeRaw<true>(this, a2, v12);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(this, *(a3 + 64));
    v9 = *(a3 + 64);
    if (v9 >= 1)
    {
      for (i = 0; i < v9; ++i)
      {
        re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this);
        a2 += *(v6 + 20);
        v9 = *(a3 + 64);
      }
    }

    return re::snapshot::EncoderOPACK::endArray(this, v9);
  }
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v7 = *(v6 + 16);
  v8 = (*(*a3 + 88))(a3);
  v9 = v8;
  if (((*(v6 + 29) & *(v6 + 28) & 1) != 0 || (v7 != 9 ? (v10 = v7 == 0) : (v10 = 1), v10)) && (*(a1 + 72) & 4) != 0)
  {
    if (!v8)
    {
      result = re::snapshot::EncoderOPACK::beginData(a1, 0, 0);
      v15 = *(a1 + 16);
      if (v15 > *(a1 + 20))
      {
        result = re::snapshot::BufferEncoder::grow(a1, v15);
        if (!result)
        {
          return result;
        }

        LODWORD(v15) = *(a1 + 16);
      }

      *(a1 + 16) = v15;
      return result;
    }

    v13 = (*(*a3 + 104))(a3, a2, 0);
    v14 = v9 * *(v6 + 20);
    re::snapshot::EncoderOPACK::beginData(a1, v14, v14);

    return re::snapshot::BufferEncoder::writeRaw<true>(a1, v13, v14);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, v8);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        (*(*a3 + 104))(a3, a2, i);
        re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1);
      }
    }

    return re::snapshot::EncoderOPACK::endArray(a1, v9);
  }
}

{
  v6 = a3[6];
  v7 = *(v6 + 16);
  v8 = (*(*a3 + 80))(a3);
  v9 = v8;
  if (((*(v6 + 29) & *(v6 + 28) & 1) != 0 || (v7 != 9 ? (v10 = v7 == 0) : (v10 = 1), v10)) && (*(a1 + 72) & 4) != 0)
  {
    if (!v8)
    {
      result = re::snapshot::EncoderOPACK::beginData(a1, 0, 0);
      v15 = *(a1 + 16);
      if (v15 > *(a1 + 20))
      {
        result = re::snapshot::BufferEncoder::grow(a1, v15);
        if (!result)
        {
          return result;
        }

        LODWORD(v15) = *(a1 + 16);
      }

      *(a1 + 16) = v15;
      return result;
    }

    v13 = (*(*a3 + 104))(a3, a2, 0);
    v14 = v9 * *(v6 + 20);
    re::snapshot::EncoderOPACK::beginData(a1, v14, v14);

    return re::snapshot::BufferEncoder::writeRaw<true>(a1, v13, v14);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, v8);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        (*(*a3 + 104))(a3, a2, i);
        re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1);
      }
    }

    return re::snapshot::EncoderOPACK::endArray(a1, v9);
  }
}

unsigned int *re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a3 + 80))(a3);
  re::snapshot::EncoderOPACK::beginArray(a1, v6);
  v11 = (*(*a3 + 88))(a3, a2);
  v12 = v7;
  while (1)
  {
    v8 = (*(*a3 + 96))(a3, a2);
    if (v11 == v8 && v12 == v9 && HIWORD(v12) == HIWORD(v9))
    {
      break;
    }

    (*(*a3 + 104))(a3, &v11);
    re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(a1);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v11);
  }

  return re::snapshot::EncoderOPACK::endArray(a1, v6);
}

void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a3 + 80))(a3);
  re::snapshot::EncoderOPACK::beginDictionary(a1, v4);
  operator new();
}

uint64_t re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v6 = *(a3 + 72);
  v7 = (*(*a1 + 32))(a1);
  if ((v6(v7, a3, a2, &v12) & 1) == 0)
  {
    if (v13)
    {
      v13 = 1;
      v8 = v14;
    }

    else
    {
      LOBYTE(v13) = 0;
      v8 = &v13 + 1;
    }

    *v8 = 0;
  }

  if (v13)
  {
    v9 = v14;
  }

  else
  {
    v9 = &v13 + 1;
  }

  if (v13)
  {
    v10 = v13 >> 1;
  }

  else
  {
    v10 = v13 >> 1;
  }

  re::snapshot::EncoderOPACK::serializeString(a1, v9, v10);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D17658;
  *(a2 + 8) = *v2;
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17658;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17658;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D176D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D176D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionPointer const&)::{lambda(re::snapshot::Encoder &,void const*)#2},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D176D8;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D17718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1},std::allocator<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionHashTableBase const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(*(a1 + 8), *a2, *(a1 + 16));
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(*(a1 + 8), v4, *(a1 + 24));
  return 1;
}

void *re::internal::CallableRef<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *a2 = &unk_1F5D177A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D177A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<void re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK &,void const*,re::IntrospectionStructure const&)::{lambda(re::snapshot::Encoder &,void const*)#1},void ()(re::snapshot::Encoder &,void const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D177A0;
  a2[1] = v2;
  return a2;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderRaw>(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v4 = *(a3 + 56);
  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4 == 1)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      else
      {
        if (v4 != 2)
        {
          return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
        }

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }
    }

    else if (v4 == 3)
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }

    else if (v4 == 4)
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }

    else
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }
  }

  else
  {
    if (v4 <= 8)
    {
      if (v4 == 6)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      else if (v4 == 7)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      else
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }
    }

    switch(v4)
    {
      case 9:

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      case 10:

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      case 11:

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      default:
        return re::snapshot::BufferDecoder::error(a1, "unexpected basic type: %s", *(a3 + 48));
    }
  }
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderRaw>(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  if (v4 > 3)
  {
    if (v4 == 4)
    {

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }

    else
    {
      if (v4 != 8)
      {
        return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", v4);
      }

      return re::snapshot::DecoderRaw::operator>>(a1, a2);
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {

        return re::snapshot::DecoderRaw::operator>>(a1, a2);
      }

      return re::snapshot::BufferDecoder::error(a1, "unexpected enum size %d", v4);
    }

    return re::snapshot::DecoderRaw::operator>>(a1, a2);
  }
}

void re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *this, const re::IntrospectionBase **a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C3C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C3C50))
  {
    qword_1EE1C3C48 = re::introspect<char>(0);
    __cxa_guard_release(&qword_1EE1C3C50);
  }

  v6 = *(a3 + 48);
  if (v6 != qword_1EE1C3C48)
  {
    v7 = re::PolymorphicData::makeWithPointer(v6, *a2, &v20);
    if (v21 && *(&v20 + 1))
    {
      v17 = v6;
      v18 = v20;
      v19 = v21;
      v8 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D177E0;
      v23 = &v17;
      v24 = v8;
      p_len = &__len;
      re::snapshot::DecoderRaw::deserializePolymorphicPointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction,unsigned long long)>::destroyCallable(&__len);
    }

    else
    {
      v17 = v6;
      v15 = re::globalAllocators(v7)[2];
      __len = &unk_1F5D17860;
      v23 = &v17;
      v24 = v15;
      p_len = &__len;
      re::snapshot::DecoderRaw::deserializePointer(this, a2, &__len);
      re::FunctionBase<24ul,void ()(re::snapshot::Decoder &,void *&,re::snapshot::Decoder::DeserializePointerAction)>::destroyCallable(&__len);
    }

    return;
  }

  v9 = *(this + 3);
  if (*(this + 4) == v9)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  else
  {
    v10 = *v9;
    *(this + 3) = v9 + 1;
    if (v10)
    {
      __len = 0;
      if (re::snapshot::DecoderRaw::beginString(this, &__len))
      {
        v11 = *a2;
        v12 = __len;
        if (*a2 && strlen(*a2) != __len)
        {
          v13 = (*(*this + 40))(this);
          (*(*v13 + 40))(v13, *a2);
          v11 = 0;
          *a2 = 0;
        }

        if (v12 != -1)
        {
          if (v11 || (v14 = (*(*this + 40))(this), v11 = (*(*v14 + 32))(v14, v12 + 1, 0), (*a2 = v11) != 0))
          {
            re::snapshot::BufferDecoder::readRaw(this, v11, v12);
            *(*a2 + v12) = 0;
          }

          else
          {
            re::snapshot::BufferDecoder::error(this, "C String of %zu bytes", v12 + 1);
          }
        }
      }

      return;
    }
  }

  if (*a2)
  {
    v16 = (*(*this + 40))(this);
    (*(*v16 + 40))(v16, *a2);
    *a2 = 0;
  }
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 3);
  if (*(this + 4) == v6)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  else
  {
    v7 = *v6;
    *(this + 3) = v6 + 1;
    if (v7)
    {
      (*(*a3 + 64))(a3, a2, 1);
      (*(*a3 + 72))(a3, a2);

      return re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this);
    }
  }

  v9 = *(*a3 + 64);

  return v9(a3, a2, 0);
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *this, char *__dst, uint64_t a3)
{
  v4 = __dst;
  v6 = *(a3 + 48);
  v15 = 0;
  if (*(v6 + 28) == 1)
  {
    v7 = *(this + 3);
    v8 = *(this + 4) - v7;
    if (v8 > 7)
    {
      v9 = *v7;
      *(this + 3) = v7 + 1;
      v10 = *(v6 + 20);
      if (v9 % v10)
      {
        return re::snapshot::BufferDecoder::error(this, "C Array element size mismatch: expected multiple of %d, got %zu");
      }

      if (v9 / v10 != *(a3 + 64))
      {
        return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %d, got %zu");
      }

      return re::snapshot::BufferDecoder::readRaw(this, __dst, v9);
    }

    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v8);
  }

  result = re::snapshot::DecoderRaw::beginArray(this, &v15);
  if (result)
  {
    v12 = v15;
    if (v15 == *(a3 + 64))
    {
      v13 = 0;
      if (v15)
      {
        v14 = v15;
        do
        {
          if (v13 < *(a3 + 64))
          {
            result = re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this);
            v4 += *(v6 + 20);
            ++v13;
          }

          --v14;
        }

        while (v14);
      }

      if (v12 != v13)
      {
        return re::snapshot::BufferDecoder::error(this, "size mismatch: expected %zu, got %d");
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "unexpected C Array size: expected %d, got %zu");
    }
  }

  return result;
}

uint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *this, uint64_t a2, void *a3)
{
  v6 = a3[6];
  if (*(v6 + 28) == 1)
  {
    v7 = *(this + 3);
    v8 = *(this + 4) - v7;
    if (v8 > 7)
    {
      v9 = *v7;
      *(this + 3) = v7 + 1;
      if (v9 % *(v6 + 20))
      {

        return re::snapshot::BufferDecoder::skipData(this, v9);
      }

      else
      {
        v17 = (*(*this + 40))(this);
        v18 = (*(*this + 32))(this);
        result = (*(*a3 + 72))(a3, v17, v18, a2, v9 / *(v6 + 20));
        if (v9)
        {
          v19 = (*(*a3 + 96))(a3, a2, 0);

          return re::snapshot::BufferDecoder::readRaw(this, v19, v9);
        }
      }

      return result;
    }

    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v8);
  }

  v20 = 0;
  result = re::snapshot::DecoderRaw::beginArray(this, &v20);
  if (result)
  {
    v11 = (*(*this + 40))(this);
    v12 = (*(*this + 32))(this);
    v13 = v20;
    result = (*(*a3 + 72))(a3, v11, v12, a2, v20);
    v14 = 0;
    if (v13)
    {
      v15 = v13;
      do
      {
        if (v13 > v14)
        {
          v16 = v14++;
          (*(*a3 + 96))(a3, a2, v16);
          result = re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this);
        }

        --v15;
      }

      while (v15);
    }

    if (v13 != v14)
    {
      return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d", v13, v14);
    }
  }

  return result;
}

unint64_t re::snapshot::introspected::read<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *this, uint64_t a2, void *a3)
{
  v6 = a3[6];
  if (*(v6 + 28) == 1)
  {
    v7 = *(this + 3);
    v8 = *(this + 4) - v7;
    if (v8 > 7)
    {
      v9 = *v7;
      *(this + 3) = v7 + 1;
      if (((*(*a3 + 88))(a3, a2) & 1) == 0)
      {
        v10 = (*(*this + 40))(this);
        v11 = (*(*this + 32))(this);
        (*(*a3 + 64))(a3, a2, v10, v11, v9 / *(v6 + 20));
      }

      v12 = *(v6 + 20);
      v13 = v9 / v12;
      if (v9 % v12)
      {

        return re::snapshot::BufferDecoder::skipData(this, v9);
      }

      else
      {
        result = (*(*a3 + 80))(a3, a2);
        if (v13 == result)
        {
          if (v9)
          {
            v21 = (*(*a3 + 96))(a3, a2, 0);

            return re::snapshot::BufferDecoder::readRaw(this, v21, v9);
          }
        }

        else
        {
          (*(*a3 + 80))(a3, a2);
          return re::snapshot::BufferDecoder::error(this, "unexpected data size reading FixedArray: expected %zu, got %zu");
        }
      }

      return result;
    }

    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v8);
  }

  v22 = 0;
  result = re::snapshot::DecoderRaw::beginArray(this, &v22);
  if (result)
  {
    if ((*(*a3 + 88))(a3, a2))
    {
      v15 = v22;
    }

    else
    {
      v16 = (*(*this + 40))(this);
      v17 = (*(*this + 32))(this);
      v15 = v22;
      (*(*a3 + 64))(a3, a2, v16, v17, v22);
    }

    result = (*(*a3 + 80))(a3, a2);
    if (result == v15)
    {
      v18 = 0;
      if (v15)
      {
        v19 = v15;
        do
        {
          result = (*(*a3 + 80))(a3, a2);
          if (result > v18)
          {
            v20 = v18++;
            (*(*a3 + 96))(a3, a2, v20);
            result = re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this);
          }

          --v19;
        }

        while (v19);
      }

      if (v15 != v18)
      {
        return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
      }
    }

    else
    {
      (*(*a3 + 80))(a3, a2);
      return re::snapshot::BufferDecoder::error(this, "unexpected FixedArray size: expected %zu, got %zu");
    }
  }

  return result;
}

uint64_t *re::snapshot::introspected::read<re::snapshot::DecoderRaw>(const char **a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a3 + 80))(a3))
  {

    return re::snapshot::BufferDecoder::error(a1, "cannot read into existing DataArray");
  }

  else
  {
    v10 = 0;
    result = re::snapshot::DecoderRaw::beginArray(a1, &v10);
    if (result)
    {
      for (i = v10; i; result = re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1))
      {
        --i;
        v8 = (*(*a1 + 5))(a1);
        v9 = (*(*a1 + 4))(a1);
        (*(*a3 + 72))(a3, v8, v9, a2);
      }
    }
  }

  return result;
}