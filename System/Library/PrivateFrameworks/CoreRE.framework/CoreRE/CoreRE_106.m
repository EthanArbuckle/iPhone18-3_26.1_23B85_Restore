uint64_t re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(uint64_t a1)
{
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(a1 + 16);
  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(a1 + 6944);
  *a1 = 0;
  *(a1 + 8) = 0;
  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(a1 + 6944);
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(a1 + 16);
  return a1;
}

void re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 864 * *a1;
    v3 = a1 + 416;
    do
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v3);
      re::StringID::destroyString((v3 - 384));
      v3 += 864;
      v2 -= 864;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

double re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::free(a1, v3++);
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

void re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::free(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 16) + 864 * a2);
  if ((*v3 & 0x80000000) != 0)
  {
    *v3 &= ~0x80000000;
    v4 = (v3 + 4);
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((v3 + 100));

    re::StringID::destroyString(v4);
  }
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 7168 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 7168 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 7168 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 7168 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

void *re::BucketArray<re::MeshPart,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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
          result = (*(**v3 + 32))(*v3, 4352, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::MeshPart,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::DynamicArray<re::DirectResourceId>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DirectResourceId>::setCapacity(v5, a2);
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
          result = (*(*result + 32))(result, 16 * a2, 1);
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
        v10 = 16 * v9;
        v11 = v7;
        do
        {
          uuid_copy(v11, v8);
          v8 += 16;
          v11 += 16;
          v10 -= 16;
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

void *re::DynamicArray<re::TextureHandle>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TextureHandle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TextureHandle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TextureHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TextureHandle>::setCapacity(v5, a2);
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
              goto LABEL_21;
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
LABEL_21:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v12 = *v8;
          if (*(v8 + 1))
          {
            v13 = v12 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            *v11 = v12;
            v11[1] = *(v8 + 1);
            *(v8 + 1) = 0;
          }

          re::TextureHandle::invalidate(v8);
          v8 = (v8 + 16);
          v11 += 2;
          v10 -= 16;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

__n128 re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, __n128 *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::init(v30, v11, v10);
          v13 = *v30;
          *v30 = *a1;
          *a1 = v13;
          v14 = *&v30[16];
          v15 = *(a1 + 16);
          *&v30[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v16 = *&v30[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = 0;
            v20 = v15 + 16;
            do
            {
              if ((*(v20 - 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::addAsMove(a1, *(v20 - 16) % *(a1 + 24), *(v20 - 16), v20);
              }

              ++v19;
              v20 += 80;
            }

            while (v19 < v18);
          }

          re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v10)
        {
          v23 = v10;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 80 * v7 + 8);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 80 * v7 + 8);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  *(v21 + 80 * v7 + 8) = v22 | 0x80000000;
  *(*(a1 + 16) + 80 * v7 + 8) = *(*(a1 + 16) + 80 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 80 * v7) = a3;
  v24 = *(a1 + 16) + 80 * v7;
  result = *a4;
  *(v24 + 16) = *a4;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  *(v24 + 32) = 0;
  v26 = a4[1].n128_u64[1];
  *(v24 + 32) = a4[1].n128_u64[0];
  *(v24 + 40) = v26;
  a4[1].n128_u64[0] = 0;
  a4[1].n128_u64[1] = 0;
  v27 = *(v24 + 48);
  *(v24 + 48) = a4[2].n128_u64[0];
  a4[2].n128_u64[0] = v27;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  v28 = a4[3].n128_u64[0];
  *(v24 + 56) = a4[2].n128_u64[1];
  *(v24 + 64) = v28;
  a4[2].n128_u64[1] = 0;
  a4[3].n128_u64[0] = 0;
  v29 = *(v24 + 72);
  *(v24 + 72) = a4[3].n128_u64[1];
  a4[3].n128_u64[1] = v29;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return result;
}

void re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 80 * v10, 16);
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
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

void *re::FixedArray<MTL::Buffer *>::init<MTL::Buffer *&>(void *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  a1[1] = 1;
  result = (*(*a2 + 32))(a2, 8, 8);
  a1[2] = result;
  if (result)
  {
    *result = *a3;
  }

  else
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::FixedArray<re::AABB>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 32 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0u;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 32) = 0;
                *(v17 + 16) = 0u;
                *(v17 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v17, (v13 + 16));
              }

              v13 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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
    v20 = *(v19 + 72 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 72 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 64) = a3;
  ++*(a1 + 28);
  return v19 + 72 * v5;
}

void *re::FixedArray<re::MeshRangeGroup>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 96 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 7168 * v10, 16);
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

double re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 64;
      v7 = 7104;
      do
      {
        v8 = a1[2];
        v9 = *(v8 + v4);
        if (v9 < 0)
        {
          *(v8 + v4) = v9 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v8 + v7);
          re::DynamicArray<unsigned long>::deinit(v8 + v7 - 40);
          re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(v8 + v6);
          re::DynamicArray<re::MeshScene>::deinit(v8 + v4 + 16);
          v3 = *(a1 + 8);
        }

        ++v5;
        v6 += 7168;
        v7 += 7168;
        v4 += 7168;
      }

      while (v5 < v3);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          _ZF = v5 == v8;
        }

        else
        {
          _ZF = 1;
        }

        if (!_ZF && (v7 & 0x80000000) == 0)
        {
          memset(v42, 0, 36);
          *&v42[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v42, v9, v8);
          v11 = *v42;
          *v42 = *a1;
          *a1 = v11;
          v12 = *&v42[16];
          v13 = *(a1 + 16);
          *&v42[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v42[24];
          *&v42[24] = *(a1 + 24);
          v14 = *&v42[32];
          *(a1 + 24) = v15;
          ++*&v42[40];
          if (v14)
          {
            v16 = 0;
            v17 = 7168 * v14;
            do
            {
              _X27 = v13 + v16;
              __asm { PRFM            #0, [X27,#0x3800] }

              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                _X28 = _X27 + 21392;
                _X8 = _X27 + 21488;
                __asm { PRFM            #0, [X8] }

                v26 = re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(_X27 + 7152) % *(a1 + 24));
                v27 = *(_X27 + 8);
                *(v26 + 48) = 0;
                *(v26 + 40) = 0;
                *(v26 + 24) = 0;
                *(v26 + 32) = 0;
                *(v26 + 8) = v27;
                *(v26 + 16) = 0;
                v28 = *(_X27 + 24);
                *(v26 + 16) = *(_X27 + 16);
                *(v26 + 24) = v28;
                *(_X27 + 16) = 0;
                *(_X27 + 24) = 0;
                v29 = *(v26 + 32);
                *(v26 + 32) = *(_X27 + 32);
                *(_X27 + 32) = v29;
                v30 = *(v26 + 48);
                *(v26 + 48) = *(_X27 + 48);
                *(_X27 + 48) = v30;
                ++*(_X27 + 40);
                ++*(v26 + 40);
                re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::SmallHashTable(v26 + 64);
                __asm { PRFM            #0, [X28] }

                *(v26 + 7056) = *(v13 + 7056 + v16);
                *(v26 + 7096) = 0;
                *(v26 + 7088) = 0;
                *(v26 + 7080) = 0;
                *(v26 + 7072) = 0;
                *(v26 + 7064) = 0;
                *(v26 + 7064) = *(_X27 + 7064);
                *(_X27 + 7064) = 0;
                *(v26 + 7072) = *(_X27 + 7072);
                *(_X27 + 7072) = 0;
                v32 = *(v26 + 7080);
                *(v26 + 7080) = *(_X27 + 7080);
                *(_X27 + 7080) = v32;
                v33 = *(v26 + 7096);
                *(v26 + 7096) = *(_X27 + 7096);
                *(_X27 + 7096) = v33;
                ++*(_X27 + 7088);
                ++*(v26 + 7088);
                *(v26 + 7136) = 0;
                *(v26 + 7104) = 0;
                *(v26 + 7120) = 0;
                *(v26 + 7112) = 0;
                *(v26 + 7128) = 0;
                *(v26 + 7104) = *(_X27 + 7104);
                *(_X27 + 7104) = 0;
                *(v26 + 7112) = *(_X27 + 7112);
                *(_X27 + 7112) = 0;
                v34 = *(v26 + 7120);
                *(v26 + 7120) = *(_X27 + 7120);
                *(_X27 + 7120) = v34;
                v35 = *(v26 + 7136);
                *(v26 + 7136) = *(_X27 + 7136);
                *(_X27 + 7136) = v35;
                ++*(_X27 + 7128);
                ++*(v26 + 7128);
                *(v26 + 7144) = *(_X27 + 7144);
              }

              v16 += 7168;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v42);
        }
      }

      else
      {
        if (v8)
        {
          v38 = 2 * v7;
        }

        else
        {
          v38 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v36 = *(a1 + 16);
    v37 = *(v36 + 7168 * v5);
  }

  else
  {
    v36 = *(a1 + 16);
    v37 = *(v36 + 7168 * v5);
    *(a1 + 36) = v37 & 0x7FFFFFFF;
  }

  v39 = v36 + 7168 * v5;
  *v39 = v37 | 0x80000000;
  v40 = *(a1 + 8);
  *v39 = *(v40 + 4 * a2) | 0x80000000;
  *(v40 + 4 * a2) = v5;
  *(v39 + 7152) = a3;
  ++*(a1 + 28);
  return v36 + 7168 * v5;
}

uint64_t re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::SmallHashTable(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v5 = (v1 + 16);
  *(v1 + 24) = 0;
  *(v1 + 6976) = 0;
  *(v1 + 6960) = 0u;
  *(v1 + 6944) = 0u;
  *(v1 + 6980) = 0x7FFFFFFFLL;
  *v1 = *v2;
  *v2 = 0;
  *(v1 + 8) = *(v2 + 8);
  *(v2 + 8) = 0;
  v6 = (v2 + 16);
  *&v8 = 0;
  DWORD2(v8) = 0;
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(&v8, (v1 + 16));
  if (v4 != v3)
  {
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(v5, v6);
    ++*(v4 + 24);
  }

  if (&v8 != v6)
  {
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(v6, &v8);
    ++*(v3 + 24);
  }

  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(&v8);
  v8 = *(v4 + 6944);
  *(v4 + 6944) = 0u;
  v9 = *(v4 + 6960);
  *(v4 + 6960) = 0;
  v10 = *(v4 + 6968);
  *(v4 + 6968) = xmmword_1E3058120;
  v11 = 1;
  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(v4 + 6944, v3 + 6944);
  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(v3 + 6944, &v8);
  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(&v8);
  return v4;
}

void re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(void *a1, void *a2)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 >= *a1)
  {
    v11 = a2 + 2;
    if (v4)
    {
      v12 = 864 * v4;
      v13 = (a1 + 2);
      v14 = (a2 + 2);
      do
      {
        re::KeyValuePair<unsigned long long,re::StencilPortal>::operator=(v13, v14);
        v14 += 864;
        v13 += 864;
        v12 -= 864;
      }

      while (v12);
      v4 = *a1;
    }

    if (v4 != v3)
    {
      v15 = &v11[108 * v3];
      v16 = 108 * v4;
      v18 = a2;
      v17 = a1;
      do
      {
        v19 = &v17[v16];
        v20 = &v18[v16];
        v19[2] = v18[v16 + 2];
        v21 = v18[v16 + 4];
        v19[4] = v17[v16 + 4] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
        v19[4] = v18[v16 + 4] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
        v22 = v18[v16 + 6];
        v19[5] = v18[v16 + 5];
        v20[4] = 0;
        v20[5] = &str_67;
        v19[6] = v22;
        memcpy(&v17[v16 + 8], &v18[v16 + 8], 0x160uLL);
        *(v19 + 26) = 0u;
        *(v19 + 27) = 0u;
        *(v19 + 28) = 0u;
        *(v19 + 29) = 0u;
        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(&v17[v16 + 52], &v18[v16 + 52]);
        *(v19 + 120) = v18[v16 + 60];
        v23 = LOBYTE(v18[v16 + 61]);
        *(v19 + 488) = v23;
        if (v23 == 1)
        {
          v19[62] = v20[62];
        }

        v24 = *(v20 + 63);
        *(v19 + 65) = *(v20 + 65);
        *(v19 + 63) = v24;
        v25 = *(v20 + 67);
        v26 = *(v20 + 69);
        v27 = *(v20 + 71);
        *(v19 + 581) = *(v20 + 581);
        *(v19 + 71) = v27;
        *(v19 + 69) = v26;
        *(v19 + 67) = v25;
        v28 = *(v20 + 608);
        *(v19 + 608) = v28;
        if (v28 == 1)
        {
          v29 = &v17[v16];
          v30 = *&v18[v16 + 80];
          *(v29 + 39) = *&v18[v16 + 78];
          *(v29 + 40) = v30;
        }

        v19[82] = v20[82];
        v31 = *(v20 + 672);
        *(v19 + 672) = v31;
        if (v31 == 1)
        {
          v32 = &v17[v16];
          v33 = *&v18[v16 + 86];
          v34 = *&v18[v16 + 88];
          v35 = *&v18[v16 + 92];
          v32[45] = *&v18[v16 + 90];
          v32[46] = v35;
          v32[43] = v33;
          v32[44] = v34;
        }

        v36 = *(v20 + 47);
        v37 = *(v20 + 48);
        *(v19 + 392) = *(v20 + 392);
        *(v19 + 47) = v36;
        *(v19 + 48) = v37;
        v38 = *(v20 + 802);
        *(v19 + 400) = *(v20 + 400);
        *(v19 + 802) = v38;
        v39 = *(v20 + 816);
        *(v19 + 816) = v39;
        if (v39 == 1)
        {
          v40 = &v17[v16];
          v41 = *&v18[v16 + 106];
          *(v40 + 52) = *&v18[v16 + 104];
          *(v40 + 53) = v41;
        }

        *(v19 + 216) = *(v20 + 216);
        v18 += 108;
        v17 += 108;
      }

      while (v20 + 110 != v15);
    }
  }

  else
  {
    v5 = 108 * v3;
    if (v3)
    {
      v6 = (a1 + 2);
      v7 = (a2 + 2);
      v8 = 864 * v3;
      do
      {
        re::KeyValuePair<unsigned long long,re::StencilPortal>::operator=(v6, v7);
        v7 += 864;
        v6 += 864;
        v8 -= 864;
      }

      while (v8);
      v4 = *a1;
    }

    if (v3 != v4)
    {
      v9 = 864 * v4 - v5 * 8;
      v10 = &a1[v5 + 52];
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v10);
        re::StringID::destroyString((v10 - 384));
        v10 += 864;
        v9 -= 864;
      }

      while (v9);
    }
  }

  *a1 = v3;

  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(a2);
}

uint64_t re::KeyValuePair<unsigned long long,re::StencilPortal>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  re::StringID::operator=((a1 + 16), (a2 + 16));
  *(a1 + 32) = *(a2 + 32);
  memcpy((a1 + 48), (a2 + 48), 0x160uLL);
  if (a1 != a2)
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 400), (a2 + 400));
  }

  *(a1 + 464) = *(a2 + 464);
  if (*(a1 + 472))
  {
    if ((*(a2 + 472) & 1) == 0)
    {
      *(a1 + 472) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    if ((*(a2 + 472) & 1) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 472) = 1;
  }

  *(a1 + 480) = *(a2 + 480);
LABEL_9:
  v4 = *(a2 + 488);
  v5 = *(a2 + 504);
  v6 = *(a2 + 536);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 536) = v6;
  *(a1 + 488) = v4;
  *(a1 + 504) = v5;
  *(a1 + 552) = *(a2 + 552);
  v7 = *(a2 + 560);
  *(a1 + 573) = *(a2 + 573);
  *(a1 + 560) = v7;
  if (*(a1 + 592))
  {
    if ((*(a2 + 592) & 1) == 0)
    {
      *(a1 + 592) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((*(a2 + 592) & 1) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 592) = 1;
  }

  v8 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v8;
LABEL_15:
  *(a1 + 640) = *(a2 + 640);
  if (*(a1 + 656))
  {
    if ((*(a2 + 656) & 1) == 0)
    {
      *(a1 + 656) = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if ((*(a2 + 656) & 1) == 0)
    {
      goto LABEL_21;
    }

    *(a1 + 656) = 1;
  }

  v9 = *(a2 + 672);
  v10 = *(a2 + 688);
  v11 = *(a2 + 720);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = v11;
  *(a1 + 672) = v9;
  *(a1 + 688) = v10;
LABEL_21:
  v12 = *(a2 + 736);
  v13 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 736) = v12;
  *(a1 + 752) = v13;
  v14 = *(a2 + 786);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 786) = v14;
  if ((*(a1 + 800) & 1) == 0)
  {
    if ((*(a2 + 800) & 1) == 0)
    {
      goto LABEL_27;
    }

    *(a1 + 800) = 1;
LABEL_26:
    v15 = *(a2 + 832);
    *(a1 + 816) = *(a2 + 816);
    *(a1 + 832) = v15;
    goto LABEL_27;
  }

  if (*(a2 + 800))
  {
    goto LABEL_26;
  }

  *(a1 + 800) = 0;
LABEL_27:
  *(a1 + 848) = *(a2 + 848);
  return a1;
}

uint64_t re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(uint64_t a1)
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
        re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::free(a1, v3++);
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

void re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::move(uint64_t *result, uint64_t a2)
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
        v10 = re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v11 = *(a2 + 16);
        v12 = v11 + v5;
        *(v10 + 8) = *(v11 + v5 + 8);
        v13 = *(v11 + v5 + 16);
        *(v10 + 16) = *(v10 + 16) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
        *(v10 + 16) = *(v11 + v5 + 16) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
        v14 = *(v11 + v5 + 32);
        *(v10 + 24) = *(v11 + v5 + 24);
        *(v12 + 16) = 0;
        *(v12 + 24) = &str_67;
        *(v10 + 32) = v14;
        memcpy((v10 + 48), (v11 + v5 + 48), 0x160uLL);
        *(v10 + 400) = 0u;
        *(v10 + 416) = 0u;
        *(v10 + 432) = 0u;
        *(v10 + 448) = 0u;
        result = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v10 + 400), (v11 + v5 + 400));
        *(v10 + 464) = *(v11 + v5 + 464);
        v15 = *(v11 + v5 + 472);
        *(v10 + 472) = v15;
        if (v15 == 1)
        {
          *(v10 + 480) = *(v12 + 480);
        }

        v16 = *(v12 + 504);
        *(v10 + 488) = *(v12 + 488);
        *(v10 + 504) = v16;
        v17 = *(v12 + 520);
        v18 = *(v12 + 536);
        v19 = *(v12 + 552);
        *(v10 + 565) = *(v12 + 565);
        *(v10 + 536) = v18;
        *(v10 + 552) = v19;
        *(v10 + 520) = v17;
        v20 = *(v12 + 592);
        *(v10 + 592) = v20;
        if (v20 == 1)
        {
          v21 = *(v11 + v5 + 624);
          *(v10 + 608) = *(v11 + v5 + 608);
          *(v10 + 624) = v21;
        }

        v22 = v11 + v5;
        *(v10 + 640) = *(v11 + v5 + 640);
        v23 = *(v11 + v5 + 656);
        *(v10 + 656) = v23;
        if (v23 == 1)
        {
          v24 = *(v22 + 672);
          v25 = *(v22 + 688);
          v26 = *(v22 + 720);
          *(v10 + 704) = *(v22 + 704);
          *(v10 + 720) = v26;
          *(v10 + 672) = v24;
          *(v10 + 688) = v25;
        }

        v27 = *(v22 + 736);
        v28 = *(v22 + 752);
        *(v10 + 768) = *(v22 + 768);
        *(v10 + 736) = v27;
        *(v10 + 752) = v28;
        v29 = *(v22 + 786);
        *(v10 + 784) = *(v22 + 784);
        *(v10 + 786) = v29;
        v30 = *(v22 + 800);
        *(v10 + 800) = v30;
        if (v30 == 1)
        {
          v31 = *(v11 + v5 + 832);
          *(v10 + 816) = *(v11 + v5 + 816);
          *(v10 + 832) = v31;
        }

        *(v10 + 848) = *(v11 + v5 + 848);
        v2 = *(a2 + 32);
      }

      v5 += 864;
    }
  }

  return result;
}

void re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 864 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 864 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 864 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 864 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 864 * v4;
}

uint64_t re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *(a2 + 56);
  if (v4)
  {
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(a1, v4, *(a2 + 24));
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::copy(a1, a2);
  }

  return a1;
}

void *re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a1);
  v13[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v13[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v14 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(*(v13[0] + 8) + 16 * v11);
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(a1, &v12, &v12 + 2);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v13);
        v11 = v14;
      }

      while (v14 != -1);
    }
  }

  return result;
}

float re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addNew(uint64_t a1, void *a2, uint64_t *a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v27);
  if (HIDWORD(v28) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v28, v27);
    *(v8 + 8) = *a2;
    v9 = *a3;
    *(v8 + 16) = *(v8 + 16) & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
    *(v8 + 16) = *a3 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
    v10 = a3[2];
    *(v8 + 24) = a3[1];
    *a3 = 0;
    a3[1] = &str_67;
    *(v8 + 32) = v10;
    memcpy((v8 + 48), a3 + 4, 0x160uLL);
    *(v8 + 400) = 0u;
    *(v8 + 416) = 0u;
    *(v8 + 432) = 0u;
    *(v8 + 448) = 0u;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v8 + 400), a3 + 48);
    *(v8 + 464) = *(a3 + 112);
    v11 = *(a3 + 456);
    *(v8 + 472) = v11;
    if (v11 == 1)
    {
      *(v8 + 480) = a3[58];
    }

    v12 = *(a3 + 61);
    *(v8 + 488) = *(a3 + 59);
    *(v8 + 504) = v12;
    v13 = *(a3 + 63);
    v14 = *(a3 + 65);
    v15 = *(a3 + 67);
    *(v8 + 565) = *(a3 + 549);
    *(v8 + 536) = v14;
    *(v8 + 552) = v15;
    *(v8 + 520) = v13;
    v16 = *(a3 + 576);
    *(v8 + 592) = v16;
    if (v16 == 1)
    {
      v17 = *(a3 + 38);
      *(v8 + 608) = *(a3 + 37);
      *(v8 + 624) = v17;
    }

    *(v8 + 640) = a3[78];
    v18 = *(a3 + 640);
    *(v8 + 656) = v18;
    if (v18 == 1)
    {
      v19 = *(a3 + 41);
      v20 = *(a3 + 42);
      v21 = *(a3 + 44);
      *(v8 + 704) = *(a3 + 43);
      *(v8 + 720) = v21;
      *(v8 + 672) = v19;
      *(v8 + 688) = v20;
    }

    v22 = *(a3 + 45);
    v23 = *(a3 + 46);
    *(v8 + 768) = *(a3 + 376);
    *(v8 + 736) = v22;
    *(v8 + 752) = v23;
    v24 = *(a3 + 770);
    *(v8 + 784) = *(a3 + 384);
    *(v8 + 786) = v24;
    v25 = *(a3 + 784);
    *(v8 + 800) = v25;
    if (v25 == 1)
    {
      v26 = *(a3 + 51);
      *(v8 + 816) = *(a3 + 50);
      *(v8 + 832) = v26;
    }

    result = *(a3 + 208);
    *(v8 + 848) = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 864 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 864 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 864 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 864 * v8) & 0x7FFFFFFF;
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

void *re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      v4 = result[1];
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = v3 + 3;
          if ((v5 & 1) == 0)
          {
            v6 = v3[4];
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = v3[1] - 1;
          v3[1] = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 4, 0);
          v9 = result;
          if (*v3)
          {
            v10 = v3[1];
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = v3 + 3;
          if ((v11 & 1) == 0)
          {
            v18 = v3[4];
          }

          v19 = v3[1];
          v18[v19++] = v9;
          v3[1] = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul> *>::__handle[abi:nn200100];
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
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul> *>::__handle[abi:nn200100];
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
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul> *>::__id;
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

uint64_t re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, int a4, unsigned __int8 *src)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 32 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 32 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 32 * v9 + 8) = v12 | 0x80000000;
  *(*(a1 + 16) + 32 * v9 + 8) = *(*(a1 + 16) + 32 * v9 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v9) = a3;
  uuid_copy((*(a1 + 16) + 32 * v9 + 12), src);
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

void re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 12, (*&v13[16] + v10 + 12));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 32;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v13);
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

void re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

uint64_t re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  updated = re::EventBus::getTypeId<re::DirectResourceDidUpdateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, updated);
  re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CED6C8;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CED720;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v8);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CED6C8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CED6C8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CED6C8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CED6C8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CED720;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CED720;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CED720;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(re::DirectResourceAssetTracker *,re::Function<REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CED720;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void re::DynamicOverflowArray<re::MeshScene,2ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::MeshScene,2ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = a1[4];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v15 = a1[5];
        if (v7)
        {
          v16 = a1 + 4;
        }

        else
        {
          v16 = a1[5];
        }

        if (v9)
        {
          v17 = &v16[92 * v9];
          v18 = a1;
          do
          {
            memcpy(v18 + 4, v16, 0x160uLL);
            v19 = v16 + 44;
            *(v18 + 24) = 0u;
            *(v18 + 25) = 0u;
            *(v18 + 26) = 0u;
            *(v18 + 27) = 0u;
            re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(v18 + 48, v16 + 44);
            *(v18 + 112) = *(v16 + 104);
            v20 = *(v16 + 424);
            *(v18 + 456) = v20;
            if (v20 == 1)
            {
              v18[58] = v16[54];
            }

            v21 = *(v16 + 55);
            *(v18 + 61) = *(v16 + 57);
            *(v18 + 59) = v21;
            v22 = *(v16 + 59);
            v23 = *(v16 + 61);
            v24 = *(v16 + 63);
            *(v18 + 549) = *(v16 + 517);
            *(v18 + 67) = v24;
            *(v18 + 65) = v23;
            *(v18 + 63) = v22;
            v25 = *(v16 + 544);
            *(v18 + 576) = v25;
            if (v25 == 1)
            {
              v26 = *(v16 + 36);
              *(v18 + 37) = *(v16 + 35);
              *(v18 + 38) = v26;
            }

            v18[78] = v16[74];
            v27 = *(v16 + 608);
            *(v18 + 640) = v27;
            if (v27 == 1)
            {
              v28 = *(v16 + 39);
              v29 = *(v16 + 40);
              v30 = *(v16 + 42);
              *(v18 + 43) = *(v16 + 41);
              *(v18 + 44) = v30;
              *(v18 + 41) = v28;
              *(v18 + 42) = v29;
            }

            v31 = *(v16 + 43);
            v32 = *(v16 + 44);
            *(v18 + 376) = *(v16 + 360);
            *(v18 + 45) = v31;
            *(v18 + 46) = v32;
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((v16 + 44));
            v18 += 92;
            v16 += 92;
          }

          while (v19 + 48 != v17);
          v5 = *a1;
        }

        (*(*v5 + 40))(v5, v15);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x2E0uLL))
      {
        v2 = 736 * a2;
        v10 = (*(*v5 + 32))(v5, 736 * a2, 16);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 4;
          }

          else
          {
            v14 = a1[5];
          }

          v33 = a1[1];
          if (v33)
          {
            v34 = &v14[92 * v33];
            v35 = v10;
            do
            {
              memcpy(v35, v14, 0x160uLL);
              v36 = v14 + 44;
              *(v35 + 352) = 0u;
              *(v35 + 368) = 0u;
              *(v35 + 384) = 0u;
              *(v35 + 400) = 0u;
              re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v35 + 352), v14 + 44);
              *(v35 + 416) = *(v14 + 104);
              v37 = *(v14 + 424);
              *(v35 + 424) = v37;
              if (v37 == 1)
              {
                *(v35 + 432) = v14[54];
              }

              v38 = *(v14 + 55);
              *(v35 + 456) = *(v14 + 57);
              *(v35 + 440) = v38;
              v39 = *(v14 + 59);
              v40 = *(v14 + 61);
              v41 = *(v14 + 63);
              *(v35 + 517) = *(v14 + 517);
              *(v35 + 504) = v41;
              *(v35 + 488) = v40;
              *(v35 + 472) = v39;
              v42 = *(v14 + 544);
              *(v35 + 544) = v42;
              if (v42 == 1)
              {
                v43 = *(v14 + 36);
                *(v35 + 560) = *(v14 + 35);
                *(v35 + 576) = v43;
              }

              *(v35 + 592) = v14[74];
              v44 = *(v14 + 608);
              *(v35 + 608) = v44;
              if (v44 == 1)
              {
                v45 = *(v14 + 39);
                v46 = *(v14 + 40);
                v47 = *(v14 + 42);
                *(v35 + 656) = *(v14 + 41);
                *(v35 + 672) = v47;
                *(v35 + 624) = v45;
                *(v35 + 640) = v46;
              }

              v48 = *(v14 + 43);
              v49 = *(v14 + 44);
              *(v35 + 720) = *(v14 + 360);
              *(v35 + 688) = v48;
              *(v35 + 704) = v49;
              re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((v14 + 44));
              v14 += 92;
              v35 += 736;
            }

            while (v36 + 48 != v34);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[5]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[4] = a2;
          a1[5] = v12;
          return;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 736, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t re::DebugSettingsManager::getWithErrorCode<BOOL>(uint64_t a1, void *a2, _BYTE *a3)
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
  v6 = re::DebugSettingsManager::contains<BOOL>(a1, a2);
  if (!v6)
  {
    v7 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v13);
    v8 = *(a1 + 16) + 40 * v14;
    v10 = *(v8 + 24);
    v9 = v8 + 24;
    if (v10 == 1)
    {
      v11 = *(v9 + 4);
      if ((v11 & 0xFFFFFFFF00000000) == 0x200000000)
      {
        *a3 = v11;
      }

      v6 = (v11 & 0xFFFFFFFF00000000) != 0x200000000;
    }

    else
    {
      v6 = 5;
    }
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

uint64_t re::DebugSettingsManager::contains<BOOL>(uint64_t a1, void *a2)
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
  if (v9 == 1 && *(v8 + 8) != 2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 224 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 224 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 224 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 224 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::ecs2::EntityHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::EntityHandle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::EntityHandle>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::EntityHandle>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::EntityHandle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::EntityHandle>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::EntityHandle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::EntityHandle>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  objc_initWeak(location, 0);
  location[1] = 0;
  location[2] = 0;
  re::ecs2::EntityHandle::reset(location);
  re::DynamicArray<re::ecs2::EntityHandle>::add(a4, location);
  re::ecs2::EntityHandle::reset(location);
  objc_destroyWeak(location);
  v8 = (*(a4 + 4) + 24 * *(a4 + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::EntityHandle>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(v5, a2);
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
        v10 = 24 * v9;
        v11 = v7;
        do
        {
          re::ecs2::EntityHandle::EntityHandle(v11, v8);
          re::ecs2::EntityHandle::reset(v8);
          objc_destroyWeak(v8);
          *v8 = 0;
          v8 = (v8 + 24);
          v11 += 24;
          v10 -= 24;
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

void re::DynamicArray<re::ecs2::EntityHandle>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32);
      re::ecs2::EntityHandle::reset((v10 + v8));
      objc_destroyWeak((v10 + v8));
      *(v10 + v8) = 0;
      ++v9;
      v8 += 24;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        objc_initWeak(v7, 0);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        re::ecs2::EntityHandle::reset(v7);
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::DynamicArray<re::ecs2::EntityHandle>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::EntityHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::ecs2::EntityHandle::EntityHandle(*(this + 4) + 24 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::ecs2::EntityHandle>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::ecs2::EntityHandle>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::ecs2::EntityHandle>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  re::DynamicArray<re::ecs2::EntityHandle>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 24 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 24;
        v12 -= 24;
      }

      while (v12);
    }
  }
}

void re::DynamicArray<re::ecs2::EntityHandle>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 24 * v2;
    do
    {
      re::ecs2::EntityHandle::reset(v3);
      objc_destroyWeak(v3);
      *v3 = 0;
      v3 = (v3 + 24);
      v4 -= 24;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs213MeshComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_PortalComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_225, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_225))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6158, "PortalComponent");
    __cxa_guard_release(&_MergedGlobals_225);
  }

  return &unk_1EE1A6158;
}

void re::ecs2::initInfo_PortalComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v49[0] = 0x5CCB8BD8A8704BA2;
  v49[1] = "PortalComponent";
  if (v49[0])
  {
    if (v49[0])
    {
    }
  }

  *(this + 2) = v50;
  if ((atomic_load_explicit(&qword_1EE1A60E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A60E8);
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
      qword_1EE1A60F0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "clipPlanePosition";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x4000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A60F8 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 5;
      *(v13 + 1) = "planePosition";
      *(v13 + 2) = "clipPlanePosition";
      qword_1EE1A6100 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::introspect_Vector3F(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "clipPlaneNormal";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x5000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A6108 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = (*(*v17 + 32))(v17, 24, 8);
      *v18 = 5;
      *(v18 + 1) = "planeNormal";
      *(v18 + 2) = "clipPlaneNormal";
      qword_1EE1A6110 = v18;
      v19 = re::introspectionAllocator(v18);
      v20 = re::ecs2::introspect_WorldRootToken(1);
      v21 = (*(*v19 + 32))(v19, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "worldRootToken";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A6118 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "useClipPlane";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x8000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1A6120 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "allowsCrossing";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x810000000ALL;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1A6128 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::ecs2::introspect_EntityHandle(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "targetWorldEntity";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x280000000BLL;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1A6130 = v33;
      v34 = re::introspectionAllocator(v33);
      v35 = re::introspect_Vector3F(1);
      v36 = (*(*v34 + 32))(v34, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "crossPlanePosition";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x600000000CLL;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1A6138 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = re::introspect_Vector3F(1);
      v39 = (*(*v37 + 32))(v37, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "crossPlaneNormal";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x700000000DLL;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1A6140 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::introspect_float(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "lightingBlendDistance";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x840000000ELL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1A6148 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::introspect_BOOL(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "useLegacySortMode";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x880000000FLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1A6150 = v47;
      __cxa_guard_release(&qword_1EE1A60E8);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1A60F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PortalComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PortalComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PortalComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PortalComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs215PortalComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v48 = v50;
}

void *re::internal::defaultDestruct<re::ecs2::PortalComponent>(uint64_t a1, uint64_t a2, id *a3)
{
  re::ecs2::EntityHandle::reset((a3 + 19));
  objc_destroyWeak(a3 + 19);
  a3[19] = 0;
  re::ecs2::EntityHandle::reset((a3 + 5));
  objc_destroyWeak(a3 + 5);
  a3[5] = 0;
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::PortalComponent>(id *a1)
{
  re::ecs2::EntityHandle::reset((a1 + 19));
  objc_destroyWeak(a1 + 19);
  a1[19] = 0;
  re::ecs2::EntityHandle::reset((a1 + 5));
  objc_destroyWeak(a1 + 5);
  a1[5] = 0;
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

char *re::ecs2::PortalComponent::targetWorldRootToken(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    result = re::ecs2::EntityHandle::resolve((a1 + 40), a2);
    if (result)
    {
      result = re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (result)
      {
        return *(result + 4);
      }
    }
  }

  return result;
}

uint64_t re::ecs2::PortalComponent::targetWorldUseLegacyIBL(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v3 = re::ecs2::EntityHandle::resolve((a1 + 40), a2);
    if (v3 && (v4 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0)
    {
      v2 = *(v4 + 41);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::PortalComponent>(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
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
  *v2 = &unk_1F5CE3A70;
  *(v2 + 32) = 0;
  objc_initWeak((v2 + 40), 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  re::ecs2::EntityHandle::reset((a1 + 40));
  *(a1 + 64) = 0u;
  *(a1 + 80) = xmmword_1E30476A0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = xmmword_1E30476A0;
  *(a1 + 128) = 256;
  if (re::PortalUserDefaults::portalLightingBlendDistance(void)::onceToken != -1)
  {
    dispatch_once(&re::PortalUserDefaults::portalLightingBlendDistance(void)::onceToken, &__block_literal_global_33);
  }

  *(a1 + 132) = re::PortalUserDefaults::portalLightingBlendDistance(void)::portalLightingBlendDistance;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  objc_initWeak((a1 + 152), 0);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  re::ecs2::EntityHandle::reset((a1 + 152));
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs215PortalComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::ARSegmentationSystem::update(uint64_t a1, void **a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 224);
  if (!v6 || (*(v6 + 432) & 0x10) != 0)
  {
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v7;
      while (1)
      {
        v10 = *(a1 + 232);
        if (!v10)
        {
          break;
        }

        v11 = *v8;
        v12 = *(v10 + 112);
        if (v12)
        {
          v3 = re::RenderFrameBox::get((v12 + 328), 0xFFFFFFFFFFFFFFFuLL);
        }

        else
        {
          v3 = 0;
        }

        v13 = re::ecs2::SceneComponentTable::get((v11 + 200), re::ecs2::ComponentImpl<re::ecs2::ARSegmentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v13 && *(v13 + 384))
        {
          v14 = re::ecs2::SceneComponentTable::get((v11 + 200), re::ecs2::ComponentImpl<re::ecs2::ARSegmentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (!v14)
          {
            goto LABEL_46;
          }

          v16 = *(v14 + 384);
          if (!v16)
          {
            goto LABEL_46;
          }

          v4 = *(*(v14 + 400) + 8 * v16 - 8);
          a2 = v4 + 4;
          if (v4[4])
          {
            if (v4[6] && v4[7])
            {
              v31[2] = &unk_1F5CED808;
              *v32 = 0u;
              *v33 = 0u;
              NS::SharedPtr<MTL::Buffer>::operator=(v32, a2);
              NS::SharedPtr<MTL::Buffer>::operator=(&v32[1], v4 + 5);
              NS::SharedPtr<MTL::Buffer>::operator=(v33, v4 + 6);
              NS::SharedPtr<MTL::Buffer>::operator=(&v33[1], v4 + 7);
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v11, 0, v3, v31);
              v30 = v31[0] >> 1;
              v17 = re::RenderFrameData::stream((v3 + 264), &v30);
              re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v17, &v34, v45);
              if (HIDWORD(v45[0]) == 0x7FFFFFFF)
              {
                v18 = *(*(v17 + 48) + 8);
                v19 = (*(*v18 + 32))(v18, 56, 8);
                *v19 = 0;
                *(v19 + 8) = 0;
                *(v19 + 16) = 1;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 48) = 0;
                v20 = re::BucketArray<re::ARSegmentationInputData,4ul>::init(v19, v18, 1uLL);
                v21 = re::globalAllocators(v20)[2];
                v35 = &unk_1F5CED878;
                *&v36 = v18;
                *&v37 = v21;
                *(&v37 + 1) = &v35;
                *&v45[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::ARSegmentationInputData,4ul> *>::__handle[abi:nn200100];
                *(&v45[0] + 1) = v19;
                *(&v47 + 1) = v21;
                *&v48 = 0;
                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v46, &v35);
                v22 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v17, &v34, v45);
                if (v48)
                {
                  *v38 = v45;
                  (*(*v48 + 16))(v48, v38);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v46);
                if (*&v45[0])
                {
                  (*&v45[0])(0, v45, 0, 0, 0);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v35);
              }

              else
              {
                v22 = (*(v17 + 16) + 96 * HIDWORD(v45[0]) + 16);
              }

              v35 = &unk_1F5CED808;
              v36 = *v32;
              v37 = *v33;
              *v32 = 0u;
              *v33 = 0u;
              v24 = *(v23 + 40);
              v4 = *(v23 + 8);
              if (v24 + 1 > 4 * v4)
              {
                re::BucketArray<re::ARSegmentationInputData,4ul>::setBucketsCapacity(v23, (v24 + 4) >> 2);
                v4 = *(v23 + 8);
              }

              v3 = v24 >> 2;
              if (v4 <= v24 >> 2)
              {
                goto LABEL_44;
              }

              if (*(v23 + 16))
              {
                v25 = v23 + 24;
              }

              else
              {
                v25 = *(v23 + 32);
              }

              v26 = *(v25 + 8 * v3);
              v27 = *(v23 + 40);
              *(v23 + 40) = v27 + 1;
              ++*(v23 + 48);
              v28 = (v26 + 40 * (v24 & 3));
              *v28 = &unk_1F5CED808;
              v28[1] = v36;
              *&v36 = 0;
              v28[2] = *(&v36 + 1);
              *(&v36 + 1) = 0;
              v28[3] = v37;
              *&v37 = 0;
              v28[4] = *(&v37 + 1);
              if (v27 == -1)
              {
                goto LABEL_45;
              }

              v29 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v23, v27);
              if (v31[0])
              {
                if (v31[0])
                {
                }
              }

              if (v33[1])
              {

                v33[1] = 0;
              }

              if (v33[0])
              {

                v33[0] = 0;
              }

              if (v32[1])
              {

                v32[1] = 0;
              }

              if (v32[0])
              {
              }
            }
          }
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return;
        }
      }

      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 41);
      _os_crash();
      __break(1u);
LABEL_44:
      v34 = 0;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(v45, 0, sizeof(v45));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v38 = 136315906;
      *&v38[4] = "operator[]";
      v39 = 1024;
      v40 = 858;
      v41 = 2048;
      v42 = v3;
      v43 = 2048;
      v44 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_45:
      re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash();
      __break(1u);
LABEL_46:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
      _os_crash();
      __break(1u);
    }
  }
}

void re::ARSegmentationInputData::~ARSegmentationInputData(re::ARSegmentationInputData *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {

    *(this + 1) = 0;
  }
}

{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {

    *(this + 1) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_ARSegmentationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_226, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_226))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6208, "ARSegmentationComponent");
    __cxa_guard_release(&_MergedGlobals_226);
  }

  return &unk_1EE1A6208;
}

void re::ecs2::initInfo_ARSegmentationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x6DFB8A95934C1F94;
  v10[1] = "ARSegmentationComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A61F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A61F8);
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
      qword_1EE1A61F0 = v8;
      __cxa_guard_release(&qword_1EE1A61F8);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A61F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ARSegmentationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ARSegmentationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ARSegmentationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ARSegmentationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223ARSegmentationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

double re::internal::defaultConstruct<re::ecs2::ARSegmentationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDA760;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::ARSegmentationComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[7];
  if (v4)
  {

    a3[7] = 0;
  }

  v5 = a3[6];
  if (v5)
  {

    a3[6] = 0;
  }

  v6 = a3[5];
  if (v6)
  {

    a3[5] = 0;
  }

  v7 = a3[4];
  if (v7)
  {

    a3[4] = 0;
  }

  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::ARSegmentationComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDA760;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::ARSegmentationComponent>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {

    a1[7] = 0;
  }

  v3 = a1[6];
  if (v3)
  {

    a1[6] = 0;
  }

  v4 = a1[5];
  if (v4)
  {

    a1[5] = 0;
  }

  v5 = a1[4];
  if (v5)
  {

    a1[4] = 0;
  }

  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_ARSegmentationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6200))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6298, "ARSegmentationSystem");
    __cxa_guard_release(&qword_1EE1A6200);
  }

  return &unk_1EE1A6298;
}

void re::ecs2::initInfo_ARSegmentationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x65F0A673CEC7504;
  v6[1] = "ARSegmentationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ARSegmentationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ARSegmentationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ARSegmentationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ARSegmentationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ARSegmentationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ARSegmentationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ARSegmentationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::ARSegmentationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CED778;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ARSegmentationSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CED778;
  return result;
}

void re::ecs2::ARSegmentationSystem::~ARSegmentationSystem(re::ecs2::ARSegmentationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::BucketArray<re::ARSegmentationInputData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ARSegmentationInputData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ARSegmentationInputData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 160, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::ARSegmentationInputData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::ARSegmentationInputData,4ul> *>::__handle[abi:nn200100];
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
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::ARSegmentationInputData,4ul> *>::__handle[abi:nn200100];
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
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::ARSegmentationInputData,4ul> *>::__id;
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

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::ARSegmentationInputData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
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
        v7 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v4, i);
        v8 = v7[4];
        if (v8)
        {

          v7[4] = 0;
        }

        v9 = v7[3];
        if (v9)
        {

          v7[3] = 0;
        }

        v10 = v7[2];
        if (v10)
        {

          v7[2] = 0;
        }

        v11 = v7[1];
        if (v11)
        {

          v7[1] = 0;
        }
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
    v12 = *(*v2 + 40);

    return v12(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::ARSegmentationInputData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CED878;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::ARSegmentationInputData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CED878;
  a2[1] = v2;
  return a2;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223ARSegmentationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_EnvironmentLightingConfigurationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_227, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_227))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6348, "EnvironmentLightingConfigurationComponent");
    __cxa_guard_release(&_MergedGlobals_227);
  }

  return &unk_1EE1A6348;
}

void re::ecs2::initInfo_EnvironmentLightingConfigurationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x7F1E61447B892B4CLL;
  v14[1] = "EnvironmentLightingConfigurationComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A6330, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6330);
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
      qword_1EE1A6338 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "environmentLightingWeight";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A6340 = v12;
      __cxa_guard_release(&qword_1EE1A6330);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A6338;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EnvironmentLightingConfigurationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EnvironmentLightingConfigurationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EnvironmentLightingConfigurationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EnvironmentLightingConfigurationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs241EnvironmentLightingConfigurationComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::EnvironmentLightingConfigurationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6000;
  *(v3 + 28) = 1065353216;
}

void re::internal::defaultConstructV2<re::ecs2::EnvironmentLightingConfigurationComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6000;
  *(v1 + 28) = 1065353216;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs241EnvironmentLightingConfigurationComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

float *re::ecs2::PerspectiveCameraComponent::moveCameraToLookAtAABB(re::ecs2::PerspectiveCameraComponent *this, re::ecs2::Entity *a2, const AABB *a3)
{
  result = re::TransformService::transformServiceFromEntity(this, a2);
  if (result)
  {

    return CameraHelper<re::ecs2::PerspectiveCameraComponent>::moveCameraToLookAtAABB(this, a2, result);
  }

  return result;
}

float *CameraHelper<re::ecs2::PerspectiveCameraComponent>::moveCameraToLookAtAABB(float *result, float32x4_t *a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2[1];
    v6 = vcgtq_f32(*a2, v5);
    v6.i32[3] = v6.i32[2];
    v7 = vmaxvq_u32(v6);
    v30 = v5;
    v31 = *a2;
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9 = vmulq_f32(vaddq_f32(*a2, v5), v8);
    v10 = v7 >= 0 ? v9.i64[1] : 0;
    v11 = v7 >= 0 ? v9.i64[0] : 0;
    result = re::ecs2::EntityComponentCollection::get((result + 12), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v12.i64[0] = v11;
      v12.i64[1] = v10;
      v29 = v12;
      v13 = vsubq_f32(v30, v31);
      v14 = vmulq_f32(v13, v13);
      v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) * 0.5;
      re::ecs2::PerspectiveCameraComponent::calculateProjection(result, v32, 1.0);
      v16 = atan2f((*&v34.i32[1] - *&v34.i32[2]) * 0.5, v33);
      v17 = (v16 + v16) * 0.5;
      v18 = v4[32];
      if (!v18)
      {
        v18 = re::ecs2::EntityComponentCollection::add((v4 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      re::TransformService::worldTransform(a3, v4, 0, v32);
      v19 = tanf(v17);
      v20.i64[0] = 0;
      v20.i32[3] = 0;
      *&v20.i32[2] = (v15 * 0.1) + (v15 / v19);
      v21 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
      v22 = vnegq_f32(v34);
      v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v22), v20, v21);
      v24 = vaddq_f32(v23, v23);
      v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
      v26 = vaddq_f32(v20, vmulq_laneq_f32(v25, v34, 3));
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v22), v25, v21);
      v28 = vaddq_f32(vaddq_f32(v26, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL)), v29);
      re::ecs2::TransformComponent::setWorldPosition(v18, v28.i64[0], v28.i64[1]);
      return re::ecs2::Component::markDirty(v18);
    }
  }

  return result;
}

_BYTE *re::ecs2::PerspectiveCameraComponent::getRealTimeProjection@<X0>(re::ecs2::PerspectiveCameraComponent *this@<X0>, re::ecs2::Entity *a2@<X1>, re::RenderManager *a3@<X2>, float a4@<S0>, float32x4_t *a5@<X8>)
{
  v117 = a3;
  v213 = *MEMORY[0x1E69E9840];
  v8 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v11 = v9;
  v12 = 0;
  a5->i64[0] = 0;
  a5->i32[2] = 0;
  a5[15].i64[0] = 0;
  v116 = &a5[15];
  a5[15].i32[2] = 0;
  v13 = xmmword_1E30476A0;
  v118 = a5;
  a5[34].i8[0] = 0;
  do
  {
    v14 = &v167[v12];
    *v14 = 0;
    *(v14 + 4) = xmmword_1E30806D0;
    *(v14 + 20) = 0xBDCCCCCD3DCCCCCDLL;
    v14[28] = 0;
    *(v14 + 2) = xmmword_1E30476A0;
    *(v14 + 12) = 1;
    *(v14 + 7) = 0;
    *(v14 + 32) = 0;
    v14[80] = 0;
    v12 += 240;
    v14[160] = 0;
  }

  while (v12 != 480);
  for (i = 0; i != 30; i += 15)
  {
    v16 = &v140[i];
    *v16 = 0;
    *(v16 + 4) = xmmword_1E30806D0;
    *(v16 + 20) = 0xBDCCCCCD3DCCCCCDLL;
    *(v16 + 28) = 0;
    v16[2] = xmmword_1E30476A0;
    *(v16 + 12) = 1;
    *(v16 + 7) = 0;
    *(v16 + 32) = 0;
    *(v16 + 80) = 0;
    *(v16 + 160) = 0;
  }

  for (j = 0; j != 64; j += 32)
  {
    v18 = (&v136 + j);
    *v18 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v18[3] = 0x3F80000000000000;
  }

  *&v167[12] = xmmword_1E3087B40;
  *(v181 + 12) = xmmword_1E3087B40;
  v140[2] = v168;
  v140[3] = v169;
  v141 = v170;
  v140[0] = *v167;
  v140[1] = *&v167[16];
  if (v142)
  {
    if ((v171 & 1) == 0)
    {
      v142 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v171 & 1) == 0)
    {
      goto LABEL_13;
    }

    v142 = 1;
  }

  v143 = v172;
  v144 = v173;
  v145 = v174;
  v146 = v175;
LABEL_13:
  if (v147)
  {
    if ((v176 & 1) == 0)
    {
      v147 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((v176 & 1) == 0)
    {
      goto LABEL_19;
    }

    v147 = 1;
  }

  v148 = v177;
  v149 = v178;
  v150 = v179;
  v151 = v180;
LABEL_19:
  v154 = v182;
  v155 = v183;
  v156 = v184;
  v152 = v181[0];
  v153 = v181[1];
  if (v157)
  {
    if ((v185 & 1) == 0)
    {
      v157 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if ((v185 & 1) == 0)
    {
      goto LABEL_25;
    }

    v157 = 1;
  }

  v158 = v186;
  v159 = v187;
  v160 = v188;
  v161 = v189;
LABEL_25:
  if ((v162 & 1) == 0)
  {
    if ((v190 & 1) == 0)
    {
      goto LABEL_31;
    }

    v162 = 1;
LABEL_30:
    v163 = v191;
    v164 = v192;
    v165 = v193;
    v166 = v194;
    goto LABEL_31;
  }

  if (v190)
  {
    goto LABEL_30;
  }

  v162 = 0;
LABEL_31:
  v122 = v8;
  v123 = v9;
  if (!*(v8 + 27))
  {
    goto LABEL_94;
  }

  v19 = 0;
  do
  {
    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, v19);
    re::ecs2::PerspectiveCameraComponent::calculateProjection(v11, &v195, 1.0);
    v168 = v197;
    v169 = v198;
    v170 = v199;
    *v167 = v195;
    *&v167[16] = v196;
    if (v171)
    {
      if ((v200 & 1) == 0)
      {
        v171 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      if ((v200 & 1) == 0)
      {
        goto LABEL_39;
      }

      v171 = 1;
    }

    v172 = v201;
    v173 = v202;
    v174 = v203;
    v175 = v204;
LABEL_39:
    if (v176)
    {
      if ((v205 & 1) == 0)
      {
        v176 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      if ((v205 & 1) == 0)
      {
        goto LABEL_45;
      }

      v176 = 1;
    }

    v177 = v206;
    v178 = v207;
    v179 = v208;
    v180 = v209;
LABEL_45:
    re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v11, 1, &v195);
    v136 = v195;
    v137 = v196;
    v120 = v19;
    if (*(ViewDescriptor + 200))
    {
      re::ecs2::PerspectiveCameraComponent::calculateProjection(v11, &v195, 1.0);
      v182 = v197;
      v183 = v198;
      v184 = v199;
      v181[0] = v195;
      v181[1] = v196;
      if (v185)
      {
        if ((v200 & 1) == 0)
        {
          v185 = 0;
          goto LABEL_53;
        }
      }

      else
      {
        if ((v200 & 1) == 0)
        {
          goto LABEL_53;
        }

        v185 = 1;
      }

      v186 = v201;
      v187 = v202;
      v188 = v203;
      v189 = v204;
LABEL_53:
      if (v190)
      {
        if ((v205 & 1) == 0)
        {
          v190 = 0;
LABEL_59:
          re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v11, 2, &v195);
          v138 = v195;
          v139 = v196;
          v21 = 2;
          goto LABEL_60;
        }
      }

      else
      {
        if ((v205 & 1) == 0)
        {
          goto LABEL_59;
        }

        v190 = 1;
      }

      v191 = v206;
      v192 = v207;
      v193 = v208;
      v194 = v209;
      goto LABEL_59;
    }

    v21 = 1;
LABEL_60:
    v124 = v21;
    v22 = 0;
    v23 = 0;
    v24 = *(ViewDescriptor + 928);
    v25 = 32;
    v26 = 80;
    do
    {
      if (!v24)
      {
        goto LABEL_92;
      }

      v27 = 0;
      v28 = ViewDescriptor + 204 + 16 * v23;
      v128 = v25;
      v130 = v23;
      v29 = &v167[240 * v23];
      v30 = &v140[15 * v23];
      v126 = v26;
      v132 = v22;
      do
      {
        v31 = *(ViewDescriptor + 944);
        re::AssetHandle::AssetHandle(&v195, (v31 + v25));
        v33 = *(v28 + 8);
        v34 = *(v28 + 12);
        if (!v195.i64[1])
        {
          v39 = *(v31 + v26);
          if (v39 != -1)
          {
            v40 = *(a2 + 14);
            if (v40)
            {
              v38 = re::DrawingManager::layerAspect(v40, v39, v32);
              goto LABEL_76;
            }

            goto LABEL_75;
          }

          v41 = v31 + v22;
          v42 = *(v41 + 88);
          if (v42)
          {
            v43 = [v42 width];
            v44 = *(v41 + 88);
          }

          else
          {
            v45 = *(v41 + 104);
            if (!v45)
            {
LABEL_75:
              v38 = 1.0;
              goto LABEL_76;
            }

            v43 = [v45 width];
            v44 = *(v41 + 104);
          }

          v38 = v43 / [v44 height];
          goto LABEL_76;
        }

        v35 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v195);
        if (*(v35 + 120))
        {
LABEL_237:
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        v36 = *(v35 + 112);
        v37 = [v36 width];
        v38 = v37 / [v36 height];
        if (v36)
        {
        }

LABEL_76:
        re::Projection::setAspect(v29, 0, (v33 / v34) * v38);
        if (a4 > 0.0)
        {
          re::Projection::setAspect(v29, 0, a4);
        }

        v46 = *(v29 + 12);
        v47 = *(v30 + 12);
        v48 = vextq_s8(v47, v46, 4uLL);
        v49 = vextq_s8(v46, v47, 4uLL);
        *v48.i8 = vmovn_s32(vcgtq_f32(vextq_s8(vtrn2q_s32(v48, v46), v48, 8uLL), vextq_s8(vtrn2q_s32(v49, v47), v49, 8uLL)));
        *(v29 + 12) = vbslq_s8(vmovl_s16(vuzp1_s16(*v48.i8, vext_s8(*v48.i8, *v48.i8, 6uLL))), v47, v46);
        v50 = *(v29 + 3);
        v30[2] = *(v29 + 2);
        v30[3] = v50;
        *(v30 + 32) = *(v29 + 32);
        v51 = *(v29 + 1);
        *v30 = *v29;
        v30[1] = v51;
        if (v30[5])
        {
          if ((v29[80] & 1) == 0)
          {
            *(v30 + 80) = 0;
            goto LABEL_84;
          }
        }

        else
        {
          if ((v29[80] & 1) == 0)
          {
            goto LABEL_84;
          }

          *(v30 + 80) = 1;
        }

        v52 = *(v29 + 7);
        v30[6] = *(v29 + 6);
        v30[7] = v52;
        v53 = *(v29 + 9);
        v30[8] = *(v29 + 8);
        v30[9] = v53;
LABEL_84:
        if (v30[10])
        {
          if ((v29[160] & 1) == 0)
          {
            *(v30 + 160) = 0;
            goto LABEL_90;
          }
        }

        else
        {
          if ((v29[160] & 1) == 0)
          {
            goto LABEL_90;
          }

          *(v30 + 160) = 1;
        }

        v54 = *(v29 + 12);
        v30[11] = *(v29 + 11);
        v30[12] = v54;
        v55 = *(v29 + 14);
        v30[13] = *(v29 + 13);
        v30[14] = v55;
LABEL_90:
        re::AssetHandle::~AssetHandle(&v195);
        ++v27;
        v24 = *(ViewDescriptor + 928);
        v22 += 136;
        v26 += 136;
        v25 += 136;
      }

      while (v24 > v27);
      v23 = v130;
      v22 = v132;
      v26 = v126;
      v25 = v128;
LABEL_92:
      ++v23;
      v22 += 8;
      v26 += 4;
      v25 += 24;
    }

    while (v23 != v124);
    v8 = v122;
    v19 = (v120 + 1);
    v11 = v123;
  }

  while (*(v122 + 27) > v120 + 1);
LABEL_94:
  if (!*(v8 + 32))
  {
    v119 = 1;
    goto LABEL_171;
  }

  v56 = 0;
  v119 = 1;
  while (2)
  {
    v57 = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, (v56 + 0x10000));
    re::ecs2::PerspectiveCameraComponent::calculateProjection(v123, &v195, 1.0);
    v168 = v197;
    v169 = v198;
    v170 = v199;
    *v167 = v195;
    *&v167[16] = v196;
    if (v171)
    {
      if ((v200 & 1) == 0)
      {
        v171 = 0;
        goto LABEL_102;
      }

LABEL_101:
      v172 = v201;
      v173 = v202;
      v174 = v203;
      v175 = v204;
    }

    else if (v200)
    {
      v171 = 1;
      goto LABEL_101;
    }

LABEL_102:
    v121 = v56;
    if (v176)
    {
      if ((v205 & 1) == 0)
      {
        v176 = 0;
        goto LABEL_108;
      }

LABEL_107:
      v177 = v206;
      v178 = v207;
      v179 = v208;
      v180 = v209;
    }

    else if (v205)
    {
      v176 = 1;
      goto LABEL_107;
    }

LABEL_108:
    re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v123, 1, &v195);
    v136 = v195;
    v137 = v196;
    if (*(v57 + 200))
    {
      re::ecs2::PerspectiveCameraComponent::calculateProjection(v123, &v195, 1.0);
      v182 = v197;
      v183 = v198;
      v184 = v199;
      v181[0] = v195;
      v181[1] = v196;
      if (v185)
      {
        if ((v200 & 1) == 0)
        {
          v185 = 0;
          goto LABEL_116;
        }

LABEL_115:
        v186 = v201;
        v187 = v202;
        v188 = v203;
        v189 = v204;
      }

      else if (v200)
      {
        v185 = 1;
        goto LABEL_115;
      }

LABEL_116:
      if (v190)
      {
        if ((v205 & 1) == 0)
        {
          v190 = 0;
          goto LABEL_122;
        }

LABEL_121:
        v191 = v206;
        v192 = v207;
        v193 = v208;
        v194 = v209;
      }

      else if (v205)
      {
        v190 = 1;
        goto LABEL_121;
      }

LABEL_122:
      re::ecs2::PerspectiveCameraComponent::calculateProjection(v123, &v195, 1.0);
      v182 = v197;
      v183 = v198;
      v184 = v199;
      v181[0] = v195;
      v181[1] = v196;
      if (v185)
      {
        if ((v200 & 1) == 0)
        {
          v185 = 0;
          goto LABEL_128;
        }

LABEL_127:
        v186 = v201;
        v187 = v202;
        v188 = v203;
        v189 = v204;
      }

      else if (v200)
      {
        v185 = 1;
        goto LABEL_127;
      }

LABEL_128:
      if (v190)
      {
        if ((v205 & 1) == 0)
        {
          v190 = 0;
          goto LABEL_134;
        }

LABEL_133:
        v191 = v206;
        v192 = v207;
        v193 = v208;
        v194 = v209;
      }

      else if (v205)
      {
        v190 = 1;
        goto LABEL_133;
      }

LABEL_134:
      v125 = 2;
      re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v123, 2, &v195);
      v138 = v195;
      v139 = v196;
      v119 = 2;
    }

    else
    {
      v125 = 1;
    }

    v58 = 0;
    v59 = 0;
    v60 = *(v57 + 928);
    v61 = 32;
    v62 = 80;
    while (2)
    {
      if (!v60)
      {
        goto LABEL_167;
      }

      v63 = 0;
      v64 = v57 + 204 + 16 * v59;
      v129 = v61;
      v131 = v59;
      v65 = &v167[240 * v59];
      v66 = &v140[15 * v59];
      v127 = v62;
      v133 = v58;
      while (2)
      {
        v67 = *(v57 + 944);
        re::AssetHandle::AssetHandle(&v195, (v67 + v61));
        v69 = *(v64 + 8);
        v70 = *(v64 + 12);
        if (!v195.i64[1])
        {
          v75 = *(v67 + v62);
          if (v75 != -1)
          {
            v76 = *(a2 + 14);
            if (v76)
            {
              v74 = re::DrawingManager::layerAspect(v76, v75, v68);
              goto LABEL_151;
            }

            goto LABEL_150;
          }

          v77 = v67 + v58;
          v78 = *(v77 + 88);
          if (v78)
          {
            v79 = [v78 width];
            v80 = *(v77 + 88);
          }

          else
          {
            v81 = *(v77 + 104);
            if (!v81)
            {
LABEL_150:
              v74 = 1.0;
              goto LABEL_151;
            }

            v79 = [v81 width];
            v80 = *(v77 + 104);
          }

          v74 = v79 / [v80 height];
          goto LABEL_151;
        }

        v71 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v195);
        if (*(v71 + 120))
        {
          goto LABEL_237;
        }

        v72 = *(v71 + 112);
        v73 = [v72 width];
        v74 = v73 / [v72 height];
        if (v72)
        {
        }

LABEL_151:
        re::Projection::setAspect(v65, 0, (v69 / v70) * v74);
        if (a4 > 0.0)
        {
          re::Projection::setAspect(v65, 0, a4);
        }

        v82 = *(v65 + 12);
        v83 = *(v66 + 12);
        v84 = vextq_s8(v83, v82, 4uLL);
        v85 = vextq_s8(v82, v83, 4uLL);
        *v84.i8 = vmovn_s32(vcgtq_f32(vextq_s8(vtrn2q_s32(v84, v82), v84, 8uLL), vextq_s8(vtrn2q_s32(v85, v83), v85, 8uLL)));
        *(v65 + 12) = vbslq_s8(vmovl_s16(vuzp1_s16(*v84.i8, vext_s8(*v84.i8, *v84.i8, 6uLL))), v83, v82);
        v86 = *(v65 + 3);
        v66[2] = *(v65 + 2);
        v66[3] = v86;
        *(v66 + 32) = *(v65 + 32);
        v87 = *(v65 + 1);
        *v66 = *v65;
        v66[1] = v87;
        if (v66[5])
        {
          if ((v65[80] & 1) == 0)
          {
            *(v66 + 80) = 0;
            goto LABEL_159;
          }

LABEL_158:
          v88 = *(v65 + 7);
          v66[6] = *(v65 + 6);
          v66[7] = v88;
          v89 = *(v65 + 9);
          v66[8] = *(v65 + 8);
          v66[9] = v89;
        }

        else if (v65[80])
        {
          *(v66 + 80) = 1;
          goto LABEL_158;
        }

LABEL_159:
        if (v66[10])
        {
          if ((v65[160] & 1) == 0)
          {
            *(v66 + 160) = 0;
            goto LABEL_165;
          }

LABEL_164:
          v90 = *(v65 + 12);
          v66[11] = *(v65 + 11);
          v66[12] = v90;
          v91 = *(v65 + 14);
          v66[13] = *(v65 + 13);
          v66[14] = v91;
        }

        else if (v65[160])
        {
          *(v66 + 160) = 1;
          goto LABEL_164;
        }

LABEL_165:
        re::AssetHandle::~AssetHandle(&v195);
        ++v63;
        v60 = *(v57 + 928);
        v58 += 136;
        v62 += 136;
        v61 += 136;
        if (v60 > v63)
        {
          continue;
        }

        break;
      }

      v59 = v131;
      v58 = v133;
      v62 = v127;
      v61 = v129;
LABEL_167:
      ++v59;
      v58 += 8;
      v62 += 4;
      v61 += 24;
      if (v59 != v125)
      {
        continue;
      }

      break;
    }

    v8 = v122;
    v56 = v121 + 1;
    if (*(v122 + 32) > (v121 + 1))
    {
      continue;
    }

    break;
  }

LABEL_171:
  v135[0] = v117;
  v135[1] = 0;
  re::buildCullingFrustum(&v136, v167, v119, v135, &v195, v13, v10);
  v92 = v118;
  if (&v195 != v118)
  {
    re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::move(v118, &v195);
    ++v118->i32[2];
    re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::move(v116, v210);
    v92 = v118;
    ++v118[15].i32[2];
  }

  v92[34].i8[0] = v212;
  if (v210[0])
  {
    v93 = &v210[18 * v210[0] + 2];
    v94 = v211;
    do
    {
      *v94 = 0;
      ++*(v94 + 2);
      v94 += 18;
    }

    while (v94 != v93);
  }

  if (v195.i64[0])
  {
    v95 = &v195 + 7 * v195.i64[0] + 1;
    v96 = &v196;
    do
    {
      v96->i64[0] = 0;
      ++v96->i32[2];
      v96 += 7;
    }

    while (v96 != v95);
  }

  result = re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v123, 0, &v195);
  v136 = v195;
  v137 = v196;
  v98 = *(v8 + 27);
  if (!v98)
  {
    if (*(v8 + 32))
    {
      return result;
    }

    v102 = *(a2 + 14);
    if (v102)
    {
      v103 = re::DrawingManager::layerAspect(v102, 0, *v195.i64);
    }

    else
    {
      v103 = 1.0;
    }

    re::ecs2::PerspectiveCameraComponent::calculateProjection(v123, &v195, 1.0);
    v168 = v197;
    v169 = v198;
    v170 = v199;
    *v167 = v195;
    *&v167[16] = v196;
    if (v171)
    {
      if ((v200 & 1) == 0)
      {
        v171 = 0;
        goto LABEL_196;
      }
    }

    else
    {
      if ((v200 & 1) == 0)
      {
        goto LABEL_196;
      }

      v171 = 1;
    }

    v172 = v201;
    v173 = v202;
    v174 = v203;
    v175 = v204;
LABEL_196:
    if (v176)
    {
      if ((v205 & 1) == 0)
      {
        v176 = 0;
LABEL_202:
        re::Projection::setAspect(v167, 0, v103);
        if (a4 > 0.0)
        {
          re::Projection::setAspect(v167, 0, a4);
        }

        re::buildCullingFrustum(&v136, v167, 1u, v135, &v195, v104, v105);
        result = v118;
        if (&v195 != v118)
        {
          re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::move(v118, &v195);
          ++v118->i32[2];
          re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::move(v116, v210);
          result = v118;
          ++v118[15].i32[2];
        }

        result[544] = v212;
        if (v210[0])
        {
          v106 = &v210[18 * v210[0] + 2];
          v107 = v211;
          do
          {
            *v107 = 0;
            ++*(v107 + 2);
            v107 += 18;
          }

          while (v107 != v106);
        }

        if (v195.i64[0])
        {
          v108 = &v195 + 7 * v195.i64[0] + 1;
          v109 = &v196;
          do
          {
            v109->i64[0] = 0;
            ++v109->i32[2];
            v109 += 7;
          }

          while (v109 != v108);
        }

        v98 = *(v8 + 27);
        goto LABEL_180;
      }
    }

    else
    {
      if ((v205 & 1) == 0)
      {
        goto LABEL_202;
      }

      v176 = 1;
    }

    v177 = v206;
    v178 = v207;
    v179 = v208;
    v180 = v209;
    goto LABEL_202;
  }

LABEL_180:
  if (v98 == 1 && !*(v8 + 32))
  {
    result = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, 0);
    if (!*(result + 116))
    {
      v100 = *(a2 + 14);
      if (v100)
      {
        v101 = re::DrawingManager::layerAspect(v100, 0, v99);
      }

      else
      {
        v101 = 1.0;
      }

      re::ecs2::PerspectiveCameraComponent::calculateProjection(v123, &v195, 1.0);
      v168 = v197;
      v169 = v198;
      v170 = v199;
      *v167 = v195;
      *&v167[16] = v196;
      if (v171)
      {
        if ((v200 & 1) == 0)
        {
          v171 = 0;
          goto LABEL_220;
        }

LABEL_219:
        v172 = v201;
        v173 = v202;
        v174 = v203;
        v175 = v204;
      }

      else if (v200)
      {
        v171 = 1;
        goto LABEL_219;
      }

LABEL_220:
      if (v176)
      {
        if ((v205 & 1) == 0)
        {
          v176 = 0;
          goto LABEL_226;
        }

LABEL_225:
        v177 = v206;
        v178 = v207;
        v179 = v208;
        v180 = v209;
      }

      else if (v205)
      {
        v176 = 1;
        goto LABEL_225;
      }

LABEL_226:
      re::Projection::setAspect(v167, 0, v101);
      if (a4 > 0.0)
      {
        re::Projection::setAspect(v167, 0, a4);
      }

      re::buildCullingFrustum(&v136, v167, 1u, v135, &v195, v110, v111);
      result = v118;
      if (&v195 != v118)
      {
        re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::move(v118, &v195);
        ++v118->i32[2];
        re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::move(v116, v210);
        result = v118;
        ++v118[15].i32[2];
      }

      result[544] = v212;
      if (v210[0])
      {
        v112 = &v210[18 * v210[0] + 2];
        v113 = v211;
        do
        {
          *v113 = 0;
          ++*(v113 + 2);
          v113 += 18;
        }

        while (v113 != v112);
      }

      if (v195.i64[0])
      {
        v114 = &v195 + 7 * v195.i64[0] + 1;
        v115 = &v196;
        do
        {
          v115->i64[0] = 0;
          ++v115->i32[2];
          v115 += 7;
        }

        while (v115 != v114);
      }
    }
  }

  return result;
}

float *re::ecs2::OrthographicCameraComponent::moveCameraToLookAtAABB(re::ecs2::OrthographicCameraComponent *this, re::ecs2::Entity *a2, const AABB *a3)
{
  result = re::TransformService::transformServiceFromEntity(this, a2);
  if (result)
  {

    return CameraHelper<re::ecs2::OrthographicCameraComponent>::moveCameraToLookAtAABB(this, a2, result);
  }

  return result;
}

float *CameraHelper<re::ecs2::OrthographicCameraComponent>::moveCameraToLookAtAABB(float *result, float32x4_t *a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2[1];
    v6 = vcgtq_f32(*a2, v5);
    v6.i32[3] = v6.i32[2];
    v7 = vmaxvq_u32(v6);
    v30 = v5;
    v31 = *a2;
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9 = vmulq_f32(vaddq_f32(*a2, v5), v8);
    v10 = v7 >= 0 ? v9.i64[1] : 0;
    v11 = v7 >= 0 ? v9.i64[0] : 0;
    result = re::ecs2::EntityComponentCollection::get((result + 12), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v12.i64[0] = v11;
      v12.i64[1] = v10;
      v29 = v12;
      v13 = vsubq_f32(v30, v31);
      v14 = vmulq_f32(v13, v13);
      v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) * 0.5;
      re::ecs2::OrthographicCameraComponent::calculateProjection(result, v32, 1.0);
      v16 = atan2f((*&v34.i32[1] - *&v34.i32[2]) * 0.5, v33);
      v17 = (v16 + v16) * 0.5;
      v18 = v4[32];
      if (!v18)
      {
        v18 = re::ecs2::EntityComponentCollection::add((v4 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      re::TransformService::worldTransform(a3, v4, 0, v32);
      v19 = tanf(v17);
      v20.i64[0] = 0;
      v20.i32[3] = 0;
      *&v20.i32[2] = (v15 * 0.1) + (v15 / v19);
      v21 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
      v22 = vnegq_f32(v34);
      v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v22), v20, v21);
      v24 = vaddq_f32(v23, v23);
      v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
      v26 = vaddq_f32(v20, vmulq_laneq_f32(v25, v34, 3));
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v22), v25, v21);
      v28 = vaddq_f32(vaddq_f32(v26, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL)), v29);
      re::ecs2::TransformComponent::setWorldPosition(v18, v28.i64[0], v28.i64[1]);
      return re::ecs2::Component::markDirty(v18);
    }
  }

  return result;
}

void **re::ecs2::CustomMatrixCameraComponent::moveCameraToLookAtAABB(re::ecs2::CustomMatrixCameraComponent *this, re::ecs2::Entity *a2, const AABB *a3)
{
  result = re::TransformService::transformServiceFromEntity(this, a2);
  if (result)
  {

    return CameraHelper<re::ecs2::CustomMatrixCameraComponent>::moveCameraToLookAtAABB(this, a2, result);
  }

  return result;
}

void **CameraHelper<re::ecs2::CustomMatrixCameraComponent>::moveCameraToLookAtAABB(void **result, float32x4_t *a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2[1];
    v6 = vcgtq_f32(*a2, v5);
    v6.i32[3] = v6.i32[2];
    v7 = vmaxvq_u32(v6);
    v30 = v5;
    v31 = *a2;
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9 = vmulq_f32(vaddq_f32(*a2, v5), v8);
    v10 = v7 >= 0 ? v9.i64[1] : 0;
    v11 = v7 >= 0 ? v9.i64[0] : 0;
    result = re::ecs2::EntityComponentCollection::get((result + 6), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v12.i64[0] = v11;
      v12.i64[1] = v10;
      v29 = v12;
      v13 = vsubq_f32(v30, v31);
      v14 = vmulq_f32(v13, v13);
      v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) * 0.5;
      re::ecs2::CustomMatrixCameraComponent::calculateProjection(result, 0, v32);
      v16 = atan2f((*&v34.i32[1] - *&v34.i32[2]) * 0.5, v33);
      v17 = (v16 + v16) * 0.5;
      v18 = v4[32];
      if (!v18)
      {
        v18 = re::ecs2::EntityComponentCollection::add((v4 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      re::TransformService::worldTransform(a3, v4, 0, v32);
      v19 = tanf(v17);
      v20.i64[0] = 0;
      v20.i32[3] = 0;
      *&v20.i32[2] = (v15 * 0.1) + (v15 / v19);
      v21 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
      v22 = vnegq_f32(v34);
      v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v22), v20, v21);
      v24 = vaddq_f32(v23, v23);
      v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
      v26 = vaddq_f32(v20, vmulq_laneq_f32(v25, v34, 3));
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v22), v25, v21);
      v28 = vaddq_f32(vaddq_f32(v26, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL)), v29);
      re::ecs2::TransformComponent::setWorldPosition(v18, v28.i64[0], v28.i64[1]);
      return re::ecs2::Component::markDirty(v18);
    }
  }

  return result;
}

unint64_t *re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::move(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 + 2);
  v5 = *a2;
  v6 = (a1 + 2);
  if (*a2 >= *a1)
  {
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,re::DynamicInlineArray<re::PlaneF,6ul> *,re::DynamicInlineArray<re::PlaneF,6ul> *,re::DynamicInlineArray<re::PlaneF,6ul> *,0>(v4, &v4[14 * *a1], v6);
    if (*a1 != v5)
    {
      v10 = 14 * *a1;
      v11 = &v4[v10];
      v12 = v6 + v10 * 8;
      v13 = -112 * *a1 + 112 * v5;
      do
      {
        *v12 = 0;
        *(v12 + 8) = 0;
        result = re::DynamicInlineArray<re::PlaneF,6ul>::move(v12, v11);
        v11 += 14;
        v12 += 112;
        v13 -= 112;
      }

      while (v13);
    }
  }

  else
  {
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,re::DynamicInlineArray<re::PlaneF,6ul> *,re::DynamicInlineArray<re::PlaneF,6ul> *,re::DynamicInlineArray<re::PlaneF,6ul> *,0>(v4, &v4[14 * v5], v6);
    if (v5 != *a1)
    {
      v8 = v6 + 112 * *a1;
      v9 = v6 + 112 * v5;
      do
      {
        *v9 = 0;
        ++*(v9 + 8);
        v9 += 112;
      }

      while (v9 != v8);
    }
  }

  *a1 = v5;
  if (*a2)
  {
    v14 = &a2[14 * *a2 + 2];
    do
    {
      *v4 = 0;
      ++*(v4 + 2);
      v4 += 14;
    }

    while (v4 != v14);
  }

  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

unint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,re::DynamicInlineArray<re::PlaneF,6ul> *,re::DynamicInlineArray<re::PlaneF,6ul> *,re::DynamicInlineArray<re::PlaneF,6ul> *,0>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        re::DynamicInlineArray<re::PlaneF,6ul>::move(a3, v4);
        ++*(a3 + 8);
      }

      v4 += 14;
      a3 += 112;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

unint64_t *re::DynamicInlineArray<re::PlaneF,6ul>::move(unint64_t *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *result;
  v6 = *a2 - *result;
  if (*a2 >= *result)
  {
    v7 = a2 + 2;
    v8 = result + 2;
    if (v5)
    {
      memmove(result + 2, v7, 16 * v5);
    }

    result = memcpy(&v8[2 * v5], &a2[2 * v5 + 2], 16 * v6);
  }

  else if (v4)
  {
    result = memmove(result + 2, a2 + 2, 16 * v4);
  }

  *v3 = v4;
  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

unint64_t *re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::move(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 + 2);
  v5 = *a2;
  v6 = (a1 + 2);
  if (*a2 >= *a1)
  {
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,re::DynamicInlineArray<re::Vector4<float>,8ul> *,re::DynamicInlineArray<re::Vector4<float>,8ul> *,re::DynamicInlineArray<re::Vector4<float>,8ul> *,0>(v4, &v4[18 * *a1], v6);
    if (*a1 != v5)
    {
      v10 = &v4[18 * *a1];
      v11 = v6 + 144 * *a1;
      v12 = 144 * v5 - 144 * *a1;
      do
      {
        *v11 = 0;
        *(v11 + 8) = 0;
        result = re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, v10);
        v10 += 18;
        v11 += 144;
        v12 -= 144;
      }

      while (v12);
    }
  }

  else
  {
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,re::DynamicInlineArray<re::Vector4<float>,8ul> *,re::DynamicInlineArray<re::Vector4<float>,8ul> *,re::DynamicInlineArray<re::Vector4<float>,8ul> *,0>(v4, &v4[18 * v5], v6);
    if (v5 != *a1)
    {
      v8 = v6 + 144 * *a1;
      v9 = v6 + 144 * v5;
      do
      {
        *v9 = 0;
        ++*(v9 + 8);
        v9 += 144;
      }

      while (v9 != v8);
    }
  }

  *a1 = v5;
  if (*a2)
  {
    v13 = &a2[18 * *a2 + 2];
    do
    {
      *v4 = 0;
      ++*(v4 + 2);
      v4 += 18;
    }

    while (v4 != v13);
  }

  *a2 = 0;
  ++*(a2 + 2);
  return result;
}

unint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,re::DynamicInlineArray<re::Vector4<float>,8ul> *,re::DynamicInlineArray<re::Vector4<float>,8ul> *,re::DynamicInlineArray<re::Vector4<float>,8ul> *,0>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        re::DynamicInlineArray<re::PlaneF,6ul>::move(a3, v4);
        ++*(a3 + 8);
      }

      v4 += 18;
      a3 += 144;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

BOOL re::ecs2::AnchorComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v29, a5, 0);
  v7 = *&v29[0];
  v18 = *&v29[0];
  v19 = DWORD2(v29[0]);
  v8 = WORD4(v29[0]);
  v9 = HIWORD(DWORD2(v29[0]));
  if (*&v29[0] != a5 || WORD4(v29[0]) != 0xFFFF || v9 != 0xFFFF)
  {
    do
    {
      v12 = v9;
      v13 = *(v7 + 16);
      if (v13 <= v9)
      {
        v20 = 0;
        memset(v29, 0, sizeof(v29));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = *(*(*(v7 + 32) + 16 * v9) + 8 * v8);
      *(v14 + 44) = *(a1 + 32);
      re::DynamicArray<re::Matrix4x4<float>>::add((a1 + 16), v14 + 48);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
      v7 = v18;
      v8 = v19;
      v9 = HIWORD(v19);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::AnchorSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v54);
  v5 = a1[29];
  if (v5 && *(v5 + 205) == 1)
  {
    v6 = re::RenderManager::perFrameAllocator(v5);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = 0;
      v9 = *(a3 + 216);
      v10 = 8 * v7;
      do
      {
        v11 = re::ecs2::SceneComponentTable::get((*v9 + 200), re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v11)
        {
          v12 = *(v11 + 384);
        }

        else
        {
          v12 = 0;
        }

        v8 += v12;
        v9 += 8;
        v10 -= 8;
      }

      while (v10);
      v13 = (v8 + 1);
    }

    else
    {
      v13 = 1;
    }

    *&v70 = 0;
    *&v69 = 0;
    DWORD2(v69) = 0;
    v68 = v6;
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(&v68, v13);
    ++DWORD2(v69);
    re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 69), &v68);
    if (v68 && v70)
    {
      (*(*v68 + 40))();
    }

    v68 = xmmword_1E3047670;
    v69 = xmmword_1E3047680;
    v70 = xmmword_1E30476A0;
    v71 = xmmword_1E30474D0;
    re::DynamicArray<re::Matrix4x4<float>>::add((a1 + 69), &v68);
    re::StackScratchAllocator::StackScratchAllocator(&v68);
    v64 = 1;
    v65 = 0;
    v66 = 0;
    v62 = &v68;
    v63 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v62, 0);
    v64 += 2;
    v14 = a1[63];
    if ((v14 & 0x3F) != 0)
    {
      v15 = (v14 >> 6) + 1;
    }

    else
    {
      v15 = v14 >> 6;
    }

    v67 = a1[63];
    v57[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v62, v15, v57);
    v16 = *(v56 + 200);
    if (v16)
    {
      v17 = *(v56 + 216);
      v18 = 8 * v16;
      do
      {
        v19 = *v17++;
        v57[0] = v19;
        v20 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 44, v57);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v62, *(a1[45] + 16 * v20 + 8));
        v18 -= 8;
      }

      while (v18);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v62, (a1 + 58));
    v58 = 1;
    v59 = 0;
    v60 = 0;
    v57[0] = &v68;
    v57[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v57, 0);
    v58 += 2;
    v21 = a1[63];
    if ((v21 & 0x3F) != 0)
    {
      v22 = (v21 >> 6) + 1;
    }

    else
    {
      v22 = v21 >> 6;
    }

    v61 = a1[63];
    v72 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v57, v22, &v72);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 58), &v62);
    v23 = v66;
    if (v64)
    {
      v23 = &v65;
    }

    v24 = v63;
    if ((v63 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v25 = 0;
      while (1)
      {
        v27 = *v23++;
        v26 = v27;
        if (v27)
        {
          break;
        }

        v25 -= 64;
        if (!--v24)
        {
          goto LABEL_43;
        }
      }

      v28 = __clz(__rbit64(v26));
      if (v28 + 1 != v25)
      {
        FirstBitSet = v28 - v25;
        do
        {
          v30 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 37), FirstBitSet);
          v31 = *(*v30 + 224);
          v32 = v30[3];
          v33 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v30[2] + 8, v32);
          if (*(v33 + 40))
          {
            v34 = (*(*v31 + 24))(v31, &v55, v30, v32, v33, 0);
          }

          else
          {
            v34 = 0;
          }

          v35 = v30[5];
          v36 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v30[2] + 8, v35);
          if (*(v36 + 40))
          {
            v34 |= (*(*v31 + 32))(v31, &v55, v30, v35, v36, 0);
          }

          v37 = v30[6];
          v38 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v30[2] + 8, v37);
          if (*(v38 + 40))
          {
            if (((v34 | (*(*v31 + 40))(v31, &v55, v30, v37, v38, 0)) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else if (!v34)
          {
LABEL_41:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v57, FirstBitSet);
            goto LABEL_42;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v57, FirstBitSet);
LABEL_42:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v62, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_43:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 58), v57);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 37));
    if (v57[0] && (v58 & 1) == 0)
    {
      (*(*v57[0] + 40))();
    }

    if (v62 && (v64 & 1) == 0)
    {
      (*(*v62 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(&v68);
    v39 = **(re::RenderFrameBox::get((*(a1[29] + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 320);
    (*(v39 + 1192))();
    *&v70 = 0;
    *&v69 = 0;
    v68 = 0uLL;
    DWORD2(v69) = 0;
    re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 69), &v68);
    if (v68 && v70)
    {
      (*(*v68 + 40))();
    }

    v40 = *(v56 + 200);
    if (v40)
    {
      v41 = *(v56 + 216);
      v42 = v41 + 8 * v40;
      do
      {
        v43 = re::ecs2::SceneComponentTable::get((*v41 + 200), re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v43)
        {
          v44 = *(v43 + 384);
          if (v44)
          {
            v45 = *(v43 + 400);
            v46 = &v45[v44];
            do
            {
              v47 = *v45;
              v48 = *(*v45 + 2);
              v49 = *(v48 + 32);
              v50 = *(v49 + 304);
              do
              {
                if ((v50 & 0x80) != 0)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v49;
                }

                v49 = *(v51 + 32);
                if (!v49)
                {
                  break;
                }

                v50 = *(v49 + 304);
              }

              while ((v50 & 0x80) == 0);
              v52 = re::ecs2::EntityComponentCollection::getOrAdd((v51 + 48), re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginRefComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
              *(v52 + 32) = *(v48 + 312);
              *(v52 + 40) = 1;
              re::ecs2::EntityComponentCollection::remove((*(v47 + 2) + 48), v47);
              ++v45;
            }

            while (v45 != v46);
          }
        }

        v41 += 8;
      }

      while (v41 != v42);
    }
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v54);
}

double re::ecs2::AnchorSystem::willRemoveSystemFromECSService(re::ecs2::AnchorSystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::AnchorSystem::willAddSceneToECSService(re::ecs2::AnchorSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 53);
  v5 = *(this + 108);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 440);
    }

    else
    {
      v6 = *(this + 56);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 440);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 56);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 416, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::init(v12, this + 296, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 44, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 416, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(this + 42);
  *&v47 = 0;
  v15 = *(this + 38);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,4ul>::setBucketsCapacity(this + 37, (v14 + 4) >> 2);
    v15 = *(this + 38);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 312))
  {
    v16 = this + 320;
  }

  else
  {
    v16 = *(this + 41);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 42);
  ++*(this + 86);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(this + 42);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::init(v24, this + 296, v48[0]);
  *&v57[0] = *(this + 42) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 44, v48, v57);
  v25 = *(this + 42);
  v26 = *(this + 57);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 57) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 416), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 57) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 432))
    {
      v30 = this + 440;
    }

    else
    {
      v30 = *(this + 56);
    }

    *&v30[8 * *(this + 53) - 8] &= v28;
  }

  v31 = *(this + 42);
  v32 = *(this + 63);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 63) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 464), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 63) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 480))
    {
      v36 = this + 488;
    }

    else
    {
      v36 = *(this + 62);
    }

    *&v36[8 * *(this + 59) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 464, v13);
  if (*(this + 528) == 1)
  {
    v38 = *(this + 64);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 296);
  }

  return result;
}

uint64_t re::ecs2::AnchorSystem::willRemoveSceneFromECSService(re::ecs2::AnchorSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 44, &v15);
  if (result != -1)
  {
    v4 = *(this + 45) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 416, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 464, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 352, &v15);
  }

  return result;
}

__n128 re::ecs2::AnchorTransformOp::calculateTransform@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v2;
  result = *(a1 + 80);
  v4 = *(a1 + 96);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void *re::ecs2::allocInfo_AnchorSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_228))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A63E0, "AnchorSystem");
    __cxa_guard_release(&_MergedGlobals_228);
  }

  return &unk_1EE1A63E0;
}

void re::ecs2::initInfo_AnchorSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x306AD891A07BB2C8;
  v6[1] = "AnchorSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x26800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AnchorSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnchorSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnchorSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AnchorSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AnchorSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnchorSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnchorSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::AnchorSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[67] = &unk_1F5CED8D0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 74);
  re::DynamicArray<unsigned long>::deinit((a3 + 69));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AnchorSystem>(uint64_t *a1)
{
  a1[67] = &unk_1F5CED8D0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 74);
  re::DynamicArray<unsigned long>::deinit((a1 + 69));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);

  re::ecs2::System::~System(a1);
}

void re::ecs2::BasicComponentStateImpl<re::ecs2::AnchorComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 144);
  if (v3)
  {
    v5 = 24;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v5), v3);
      if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
      {
        v10 = v7;
        v6 = v8;
        goto LABEL_11;
      }

      v5 += 8;
    }

    while (v5 != 56);
    v10 = -1;
LABEL_11:

    re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::setComponentState(a2, v10, v6);
  }
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AnchorComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AnchorComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

void re::ecs2::AnchorSystem::~AnchorSystem(re::ecs2::AnchorSystem *this)
{
  *(this + 67) = &unk_1F5CED8D0;
  re::FixedArray<CoreIKTransform>::deinit(this + 74);
  re::DynamicArray<unsigned long>::deinit(this + 552);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);

  re::ecs2::System::~System(this);
}

{
  *(this + 67) = &unk_1F5CED8D0;
  re::FixedArray<CoreIKTransform>::deinit(this + 74);
  re::DynamicArray<unsigned long>::deinit(this + 552);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AnchorTransformOp::~AnchorTransformOp(re::ecs2::AnchorTransformOp *this)
{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEDA30;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEDA88;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEDAE0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEDB38;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEDA30;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEDA88;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEDAE0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEDB38;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDA30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDA30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDA88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDA88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDAE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDAE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDB38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDB38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::IntrospectionInfo<re::Vector3<float> [2]>::get(int a1)
{
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v13);
    v2 = re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v13);
    if (v2)
    {
      return &re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
    if (re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::isInitialized)
    {
LABEL_17:
      v10 = re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(v10);
      return &re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::isInitialized = 1;
  v6 = re::introspect_Vector3F(1);
  re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::info, v6, 2);
  re::IntrospectionRegistry::add(v7, v8);
  re::getPrettyTypeName(&re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::info, &v13);
  if (BYTE8(v13))
  {
    v9 = v14;
  }

  else
  {
    v9 = &v13 + 9;
  }

  if (v13 && (BYTE8(v13) & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  v13 = *(v6 + 2);
  xmmword_1EE187030 = v12;
  if (v15)
  {
    if (v15)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_17;
  }

  return &re::IntrospectionInfo<re::Vector3<float> [2]>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_ClippingPrimitiveComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6478))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A64C8, "ClippingPrimitiveComponent");
    __cxa_guard_release(&qword_1EE1A6478);
  }

  return &unk_1EE1A64C8;
}

void re::ecs2::initInfo_ClippingPrimitiveComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v38[0] = 0x175D00AB0A0458B0;
  v38[1] = "ClippingPrimitiveComponent";
  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  *(this + 2) = v39;
  if ((atomic_load_explicit(&_MergedGlobals_229, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_229);
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
      qword_1EE1A6480 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_localBoundsMin";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A6488 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_Vector3F(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_localBoundsMax";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x3000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1A6490 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_BOOL(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "m_clipChildren";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x7000000005;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1A6498 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_BOOL(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "m_clipSelf";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x7100000008;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1A64A0 = v22;
      v23 = re::introspectionAllocator(v22);
      v24 = re::IntrospectionInfo<re::Vector3<float> [2]>::get(1);
      v25 = (*(*v23 + 32))(v23, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "m_featherIntervalFractionPerEdge";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x4000000009;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1A64A8 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "m_featherFalloffBehavior";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x6C0000000ALL;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1A64B0 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_float(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "m_cornerRadius";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x680000000BLL;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1A64B8 = v33;
      v34 = re::introspectionAllocator(v33);
      v35 = re::introspect_Vector2F(1);
      v36 = (*(*v34 + 32))(v34, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "m_smoothness";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x600000000CLL;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1A64C0 = v36;
      __cxa_guard_release(&_MergedGlobals_229);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1A6480;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClippingPrimitiveComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClippingPrimitiveComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClippingPrimitiveComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClippingPrimitiveComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226ClippingPrimitiveComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v37 = v39;
}

double re::internal::defaultConstruct<re::ecs2::ClippingPrimitiveComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDB2C8;
  *(v3 + 32) = 0xBF000000BF000000;
  *(v3 + 40) = 3204448256;
  *(v3 + 48) = 0x3F0000003F000000;
  *(v3 + 56) = 1056964608;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 96) = result;
  *(v3 + 104) = 0;
  *(v3 + 112) = 256;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ClippingPrimitiveComponent>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDB2C8;
  *(v1 + 32) = 0xBF000000BF000000;
  *(v1 + 40) = 3204448256;
  *(v1 + 48) = 0x3F0000003F000000;
  *(v1 + 56) = 1056964608;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 96) = result;
  *(v1 + 104) = 0;
  *(v1 + 112) = 256;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226ClippingPrimitiveComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::MeshSmoothComponent::resetDeformerInputs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  inited = objc_initWeak(&location, v9);
  memset(v15, 0, 24);
  v15[3] = re::globalAllocators(inited)[2];
  v15[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshSmoothComponent::SmoothDeformerInputs,re::FrameManager>::reset((a1 + 136), &location, a3, v15);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v15);
  objc_destroyWeak(&location);
  if (a5)
  {
    v11 = 168 * a5;
    v12 = (a4 + 104);
    do
    {
      ++*(v12 - 94);
      *v12 = 0;
      v12 += 21;
      v11 -= 168;
    }

    while (v11);
  }

  return a1 + 136;
}

BOOL re::ecs2::MeshSmoothComponentStateImpl::processDirtyComponents(re::ProfilerConfig *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v10 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v11 = re::ecs2::SceneComponentTable::get((*(a3 + 8) + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v12 = v11 ? *(v11 + 384) : 0;
    v13 = *(v10 + 152);
    if (v13)
    {
      v14 = v13[904].u64[0];
      if (v14 >= v12)
      {
        v14 = v12;
      }

      v13[904].i64[0] = v14;
      v15 = v13[904].u64[1];
      if (v15 <= v12)
      {
        v15 = v12;
      }

      v13[904].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v12;
      v13[905] = vaddq_s64(v13[905], v16);
      *(v10 + 184) = 0;
    }
  }

  re::ecs2::SceneComponentTable::get((*(a3 + 8) + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v47, 3041, a1);
  v17 = *(a1 + 1);
  v40 = v17[30];
  v41 = v17[29];
  v18 = v17[32];
  if (v18)
  {
    v19 = (*(*v18 + 104))(v18);
  }

  else
  {
    v19 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v44, a5, 0);
  v21 = v44;
  v20 = v45;
  v44 = a4;
  v45 = v21;
  v46 = v20;
  if (v21 != a5 || v20 != 0xFFFFFFFFLL)
  {
    do
    {
      v22 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v44);
      v23 = *(v22 + 2);
      v24 = *(v23 + 200);
      v25 = (a3 + 32);
      if (v24)
      {
        v26 = v22;
        v27 = *(v22 + 18);
        if (v27)
        {
          v28 = *(v24 + 248) != *v27 || v19 == 0;
          if (!v28 && v27[1] == v19)
          {
            goto LABEL_30;
          }

          v22 = re::ecs2::MeshSmoothComponent::resetDeformerInputs(v22, *(v41 + 144), 0, *(*(v24 + 392) + 96), *(*(v24 + 392) + 88));
        }

        v29 = *(v23 + 192);
        v25 = (a3 + 32);
        if (v29)
        {
          v25 = (a3 + 32);
          if (*(v29 + 40))
          {
            v25 = (a3 + 40);
            if (!*(v26 + 15))
            {
              v30 = re::globalAllocators(v22);
              v31 = (*(*v30[2] + 32))(v30[2], 40, 8);
              *v31 = 0u;
              *(v31 + 16) = 0u;
              *(v31 + 32) = 0;
              re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(v31, 0);
              ++*(v31 + 24);
              v25 = (a3 + 40);
              if (v40)
              {
                re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
                (*(*v40 + 424))(&v42);
                v32 = *(v26 + 7);
                *(v26 + 7) = v42;
                v42 = v32;
                v33 = *(v26 + 16);
                *(v26 + 16) = v43;
                v43 = v33;
                re::AssetHandle::~AssetHandle(&v42);
                v25 = (a3 + 40);
              }
            }
          }
        }
      }

      v34 = v44;
      v35 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v45);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v34, v35, *v25);
LABEL_30:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v45);
    }

    while (v45 != a5 || v46 != 0xFFFF || HIWORD(v46) != 0xFFFF);
  }

  v38 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v47);
  return v38;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::MeshSmoothComponentStateImpl::processPreparingComponents(re::ProfilerConfig *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v108 = *MEMORY[0x1E69E9840];
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v10 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v11 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v12 = v11 ? *(v11 + 384) : 0;
    v13 = *(v10 + 152);
    if (v13)
    {
      v14 = v13[904].u64[0];
      if (v14 >= v12)
      {
        v14 = v12;
      }

      v13[904].i64[0] = v14;
      v15 = v13[904].u64[1];
      if (v15 <= v12)
      {
        v15 = v12;
      }

      v13[904].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v12;
      v13[905] = vaddq_s64(v13[905], v16);
      *(v10 + 184) = 0;
    }
  }

  re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v88, 3041, a1);
  v17 = *(a1 + 1);
  v77 = *(v17 + 232);
  v18 = *(v17 + 256);
  if (v18)
  {
    v76 = (*(*v18 + 104))(v18);
  }

  else
  {
    v76 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v103, a5, 0);
  v85 = a4;
  v86 = v103;
  v87 = DWORD2(v103);
  if (v103 != a5 || DWORD2(v103) != 0xFFFFFFFFLL)
  {
    v79 = a3;
    v80 = a5;
    while (1)
    {
      v19 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v85);
      v20 = *(v19 + 16);
      v21 = *(v20 + 192);
      v22 = re::AssetHandle::loadedAsset<re::MeshAsset>((v21 + 4));
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v81 = v20;
      v82 = v21;
      v24 = re::AssetHandle::loadedAsset<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((v19 + 112));
      if (!v24)
      {
        v31 = *(v19 + 120);
        if (!v31 || (v32 = atomic_load((v31 + 896)), v32 != 3))
        {
          v30 = (v19 + 112);
          goto LABEL_28;
        }

LABEL_26:
        v33 = v85;
        v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v86);
        v35 = a3[2];
        v36 = a3[4];
LABEL_73:
        re::ecs2::ComponentBucketsBase::moveComponent(v35, v33, v34, v36);
        goto LABEL_74;
      }

      v25 = v24;
      v26 = v21[5];
      if (v26)
      {
        v27 = *(v26 + 792);
      }

      else
      {
        v27 = 0;
      }

      v37 = *(v19 + 120);
      if (v37)
      {
        v38 = *(v37 + 792);
      }

      else
      {
        v38 = 0;
      }

      v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));
      v40 = v27 ^ (v39 >> 31) ^ v39;
      v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v37 ^ (v37 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v37 ^ (v37 >> 30))) >> 27));
      v42 = ((v40 << 6) + (v40 >> 2) + (v38 ^ (v41 >> 31) ^ v41) - 0x61C8864680B583E9) ^ v40;
      if (*(v19 + 280) != v42)
      {
        v78 = v42;
        *(v19 + 280) = -1;
        re::FixedArray<CoreIKTransform>::deinit((v19 + 288));
        v43 = re::FixedArray<CoreIKTransform>::deinit((v19 + 312));
        *(v19 + 208) = 0;
        ++*(v19 + 216);
        *(v19 + 248) = 0;
        ++*(v19 + 256);
        v44 = *(v19 + 272);
        if (!v44)
        {
          *(v19 + 280) = -1;
        }

        re::FixedArray<int>::init<>((v19 + 312), v44, *(v23 + 856));
        if (*(v23 + 856))
        {
          v45 = 0;
          v46 = 0;
          while (1)
          {
            v47 = *(v19 + 320);
            if (v47 <= v46)
            {
              break;
            }

            *(*(v19 + 328) + 4 * v46) = v45;
            v45 += re::MeshNameMap::meshPartInstanceCount((v23 + 640), v46++);
            if (v46 >= *(v23 + 856))
            {
              goto LABEL_40;
            }
          }

LABEL_84:
          *v98 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          v91 = 1024;
          v92 = 468;
          v93 = 2048;
          v94 = v46;
          v95 = 2048;
          v96 = v47;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_40:
        v48 = *(v23 + 976);
        if (v48)
        {
          v49 = *(*(v23 + 984) + 4 * v48 - 4);
        }

        else
        {
          v49 = 0;
        }

        v50 = *(v19 + 272);
        LODWORD(v103) = -1;
        v24 = re::FixedArray<unsigned int>::init<int>((v19 + 288), v50, v49, &v103);
        if (*(v25 + 16))
        {
          v47 = 0;
          v51 = 0;
          while (1)
          {
            re::MeshNameMap::meshInstancePartsForIdentifier(v23 + 640, (*(v25 + 32) + 40 * v51), v90);
            if (*v90)
            {
              break;
            }

            v57 = v47;
LABEL_51:
            v24 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v90[8]);
            ++v51;
            v47 = v57;
            if (v51 >= *(v25 + 16))
            {
              goto LABEL_52;
            }
          }

          v52 = 0;
          while (1)
          {
            *&v103 = v52;
            (*(*v97 + 16))(v97, &v103);
            *&v103 = v52;
            (*(*v97 + 16))(v97, &v103);
            LODWORD(v103) = 10;
            re::DynamicArray<int>::add((v19 + 192), &v103);
            LODWORD(v103) = 1056964608;
            v53 = re::DynamicArray<float>::add((v19 + 232), &v103);
            *&v103 = v52;
            v54 = (*(*v97 + 16))(v97, &v103, v53);
            started = re::MeshNameMap::meshPartStartIndexForInstance((v23 + 640), v54);
            *&v103 = v52;
            v46 = started + ((*(*v97 + 16))(v97, &v103) >> 32);
            v56 = *(v19 + 296);
            if (v56 <= v46)
            {
              break;
            }

            v57 = (v47 + 1);
            *(*(v19 + 304) + 4 * v46) = v47;
            ++v52;
            v47 = v57;
            if (v52 == *v90)
            {
              goto LABEL_51;
            }
          }

          v83 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v98 = 136315906;
          *&v98[4] = "operator[]";
          *&v98[12] = 1024;
          *&v98[14] = 468;
          v99 = 2048;
          v100 = v46;
          v101 = 2048;
          v102 = v56;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_79:
          v89 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          v91 = 1024;
          v92 = 789;
          v93 = 2048;
          v94 = v52;
          v95 = 2048;
          v96 = v47;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_80:
          v89 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          v91 = 1024;
          v92 = 789;
          v93 = 2048;
          v94 = v52;
          v95 = 2048;
          v96 = v47;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_81:
          v89 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          v91 = 1024;
          v92 = 468;
          v93 = 2048;
          v94 = v47;
          v95 = 2048;
          v96 = v51;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_82:
          re::internal::assertLog(6, v67, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v47, v25);
          _os_crash();
          __break(1u);
LABEL_83:
          v89 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          v91 = 1024;
          v92 = 468;
          v93 = 2048;
          v94 = v47;
          v95 = 2048;
          v96 = v52;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_84;
        }

LABEL_52:
        a3 = v79;
        *(v19 + 280) = v78;
        a5 = v80;
      }

      v58 = *(v81 + 200);
      if (*(v58 + 30))
      {
        v59 = *(v19 + 144);
        if (!v59 || *(v58 + 31) != *v59)
        {
          v60 = *(v58 + 49);
          v25 = *(v60 + 88);
          v46 = *(v60 + 96);
          v61 = re::globalAllocators(v24);
          v62 = (*(*v61[2] + 32))(v61[2], 40, 8);
          *v62 = *(v58 + 31);
          v62[1] = v76;
          v62[3] = 0;
          v62[4] = 0;
          v62[2] = 0;
          v63 = re::ecs2::MeshSmoothComponent::resetDeformerInputs(v19, *(v77 + 144), v62, v46, v25);
          if (*(v19 + 48) && *(v19 + 88))
          {
            re::DynamicArray<float>::operator=(v19 + 192, (v19 + 32));
            re::DynamicArray<float>::operator=(v19 + 232, (v19 + 72));
          }

          v83 = (v58 + 232);
          v84 = 10;
          *v98 = v58 + 232;
          *&v98[8] = 10;
          *&v98[16] = 0;
          while (1)
          {
            re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v83, &v103);
            if (*&v98[12] == HIDWORD(v103) && *&v98[16] == v104)
            {
              break;
            }

            v64 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(v98);
            v65 = re::DeformedMeshAssetsMap::deformedIndex((v19 + 272), v64, WORD2(v64));
            if (v65 != -1)
            {
              v51 = v65;
              v66 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(v98);
              v52 = v51;
              v47 = *(v19 + 208);
              if (v47 <= v51)
              {
                goto LABEL_79;
              }

              v47 = *(v19 + 248);
              if (v47 <= v51)
              {
                goto LABEL_80;
              }

              v47 = v66;
              v68 = *(v63 + 8);
              v51 = *(v68 + 24);
              if (v51 <= v66)
              {
                goto LABEL_81;
              }

              v69 = *(*(v19 + 264) + 4 * v52);
              v70 = (*(v68 + 32) + 8 * v66);
              *v70 = *(*(v19 + 224) + 4 * v52);
              v70[1] = v69;
              if (v25 <= v66)
              {
                goto LABEL_82;
              }

              v71 = *(v63 + 8);
              v52 = *(v71 + 24);
              if (v52 <= v66)
              {
                goto LABEL_83;
              }

              v72 = v46 + 168 * v66;
              v73 = *(v71 + 32) + 8 * v66;
              ++*(v72 + 10);
              *(v72 + 104) = v73;
            }

            re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(v98);
          }

          a3 = v79;
          a5 = v80;
        }

        if (re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v58, v82))
        {
          v33 = v85;
          v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v86);
          v35 = a3[2];
          v36 = a3[6];
          goto LABEL_73;
        }
      }

LABEL_74:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v86);
      if (v86 == a5 && v87 == 0xFFFF && HIWORD(v87) == 0xFFFF)
      {
        goto LABEL_77;
      }
    }

    v28 = v21[5];
    if (!v28 || (v29 = atomic_load((v28 + 896)), v29 != 3))
    {
      v30 = (v21 + 4);
LABEL_28:
      re::AssetHandle::loadAsync(v30);
      goto LABEL_74;
    }

    goto LABEL_26;
  }

LABEL_77:
  v74 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v88);
  return v74;
}

uint64_t re::AssetHandle::loadedAsset<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(re::AssetHandle *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

unsigned int *re::MeshDeformationRuntimeData::MeshDeformationIteration::end@<X0>(unsigned int *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = this[2];
  if (*(*this + 136) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*(v2 + 144) + 96 * v3 + 8);
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = 0;
  return this;
}

unint64_t re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(re::MeshDeformationRuntimeData::MeshDeformationIterator *this)
{
  v1 = *(this + 2);
  if (*(*this + 136) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  v2 = (*(*this + 144) + 96 * v1);
  v3 = *(this + 3);
  if (v2[1] <= v3)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (v2[4] <= v3)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v2[5] + 4 * v3) + *(this + 8);
  if (v2[7] <= v4)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2[10] <= v4)
  {
    goto LABEL_11;
  }

  return *(v2[2] + 2 * v3) | (*(v2[8] + 2 * v4) << 32) | (*(v2[11] + v4) << 48);
}

uint64_t re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(re::MeshDeformationRuntimeData::MeshDeformationIterator *this)
{
  v2 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(this);
  v3 = *this;
  if (*(*this + 64) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(v3[9] + 4 * v2) + WORD2(v2);
  if (v3[14] <= v4)
  {
    goto LABEL_5;
  }

  return *(v3[15] + 4 * v4);
}

uint64_t re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(uint64_t result)
{
  v1 = *(result + 8);
  if (*(*result + 136) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(*result + 144);
  v3 = *(result + 16) + 1;
  *(result + 16) = v3;
  v4 = v2 + 96 * v1;
  v5 = *(result + 12);
  v6 = (v5 + 1);
  v7 = *(v4 + 32);
  if (v7 <= v6)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v7 <= v5)
  {
    goto LABEL_9;
  }

  if ((*(*(v4 + 40) + 4 * v6) - *(*(v4 + 40) + 4 * v5)) <= v3)
  {
    *(result + 12) = v6;
    *(result + 16) = 0;
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::MeshSmoothSystem::willAddSystemToECSService(re::ecs2::MeshSmoothSystem *this)
{
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v2);
  *(this + 32) = result;
  return result;
}

double re::ecs2::MeshSmoothSystem::willRemoveSystemFromECSService(re::ecs2::MeshSmoothSystem *this)
{
  *(this + 32) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::MeshSmoothSystem::willAddSceneToECSService(re::ecs2::MeshSmoothSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 54);
  v5 = *(this + 110);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 448);
    }

    else
    {
      v6 = *(this + 57);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 448);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 57);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 424, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::init(v12, this + 304, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(this + 43);
  *&v47 = 0;
  v15 = *(this + 39);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::setBucketsCapacity(this + 38, (v14 + 4) >> 2);
    v15 = *(this + 39);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 320))
  {
    v16 = this + 328;
  }

  else
  {
    v16 = *(this + 42);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 43);
  ++*(this + 88);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(this + 43);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::init(v24, this + 304, v48[0]);
  *&v57[0] = *(this + 43) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, v48, v57);
  v25 = *(this + 43);
  v26 = *(this + 58);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 58) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 58) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 440))
    {
      v30 = this + 448;
    }

    else
    {
      v30 = *(this + 57);
    }

    *&v30[8 * *(this + 54) - 8] &= v28;
  }

  v31 = *(this + 43);
  v32 = *(this + 64);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 64) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 472), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 64) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 488))
    {
      v36 = this + 496;
    }

    else
    {
      v36 = *(this + 63);
    }

    *&v36[8 * *(this + 60) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 472, v13);
  if (*(this + 536) == 1)
  {
    v38 = *(this + 65);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 304);
  }

  return result;
}

uint64_t re::ecs2::MeshSmoothSystem::willRemoveSceneFromECSService(re::ecs2::MeshSmoothSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 45, &v15);
  if (result != -1)
  {
    v4 = *(this + 46) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 472, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 360, &v15);
  }

  return result;
}

uint64_t re::ecs2::MeshSmoothSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  re::StackScratchAllocator::StackScratchAllocator(v44);
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v38 = v44;
  v39 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
  v40 += 2;
  v5 = a1[64];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[64];
  v33[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v6, v33);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v33[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 45, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[46] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 59));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[64];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[64];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 59), &v38);
  v14 = v42;
  if (v40)
  {
    v14 = &v41;
  }

  v15 = v39;
  if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 38), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v32, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v32, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v32, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 59), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 38));
  if (v33[0] && (v34 & 1) == 0)
  {
    (*(*v33[0] + 40))();
  }

  if (v38 && (v40 & 1) == 0)
  {
    (*(*v38 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v44);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

void *re::ecs2::allocInfo_MeshSmoothAttributes(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_230))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A65B0, "MeshSmoothAttributes");
    __cxa_guard_release(&_MergedGlobals_230);
  }

  return &unk_1EE1A65B0;
}

void re::ecs2::initInfo_MeshSmoothAttributes(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xC51B688E53129BA4;
  v15[1] = "MeshSmoothAttributes";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A6560, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6560);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "iterations";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A6588 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "lambdas";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A6590 = v13;
      __cxa_guard_release(&qword_1EE1A6560);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A6588;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSmoothAttributes>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSmoothAttributes>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSmoothAttributes>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSmoothAttributes>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::ecs2::MeshSmoothAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 72) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::ecs2::MeshSmoothAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::ecs2::MeshSmoothAttributes>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::ecs2::MeshSmoothAttributes>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void *re::ecs2::allocInfo_MeshSmoothComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6570))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6640, "MeshSmoothComponent");
    __cxa_guard_release(&qword_1EE1A6570);
  }

  return &unk_1EE1A6640;
}

void re::ecs2::initInfo_MeshSmoothComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x92BED4AA627EFA44;
  v19[1] = "MeshSmoothComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1A6578, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6578);
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
      qword_1EE1A6598 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1A6568;
      if (!qword_1EE1A6568)
      {
        v11 = re::ecs2::allocInfo_MeshSmoothAttributes(v9);
        qword_1EE1A6568 = v11;
        re::ecs2::initInfo_MeshSmoothAttributes(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "attributes";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A65A0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_AssetHandle(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "assignedMeshDeformation";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x7000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A65A8 = v17;
      __cxa_guard_release(&qword_1EE1A6578);
    }
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A6598;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSmoothComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSmoothComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSmoothComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSmoothComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219MeshSmoothComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void *re::ecs2::allocInfo_MeshSmoothSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6580))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A66D0, "MeshSmoothSystem");
    __cxa_guard_release(&qword_1EE1A6580);
  }

  return &unk_1EE1A66D0;
}

void re::ecs2::initInfo_MeshSmoothSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD08070BBCBB71854;
  v6[1] = "MeshSmoothSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshSmoothSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSmoothSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSmoothSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshSmoothSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshSmoothSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSmoothSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSmoothSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::MeshSmoothSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 38);
  a3[33] = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 35);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshSmoothSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 38);
  a1[33] = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::MeshSmoothComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::MeshSmoothSystem::~MeshSmoothSystem(re::ecs2::MeshSmoothSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CEDB90;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<unsigned int>::init<int>(void *result, uint64_t a2, unint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 4 * a3, 4);
  v6[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = *a4;
    do
    {
      *result = v9;
      result = (result + 4);
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEDC88;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEDCE0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEDD38;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEDD90;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEDC88;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEDCE0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEDD38;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEDD90;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDC88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDC88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDCE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDCE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDD38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDD38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEDD90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEDD90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::MeshSmoothComponent>(uint64_t a1)
{
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
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
  *v2 = &unk_1F5CD0EC0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  inited = objc_initWeak((v2 + 136), 0);
  *(a1 + 144) = 0;
  *(a1 + 176) = re::globalAllocators(inited)[2];
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = -1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 288) = 0u;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219MeshSmoothComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 3;
    *(a2 + 8) = 0;
  }
}

void ___ZN2re19CARESortingDefaults15normalThresholdEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue("CASortingNormalThreshold", a2, v3);
  v2 = v4;
  if (!v3[0])
  {
    v2 = 0.0001;
  }

  re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold = LODWORD(v2);
}

void ___ZN2re19CARESortingDefaults17distanceThresholdEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue("CASortingDistanceThreshold", a2, v3);
  v2 = v4;
  if (!v3[0])
  {
    v2 = 0.0005;
  }

  re::CARESortingDefaults::distanceThreshold(void)::sortingDistanceThreshold = LODWORD(v2);
}

void ___ZN2re19CARESortingDefaults29displacementOrderingThresholdEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue("CASortingDisplacementOrderingThreshold", a2, v3);
  v2 = v4;
  if (!v3[0])
  {
    v2 = 0.0001;
  }

  re::CARESortingDefaults::displacementOrderingThreshold(void)::sortingDisplacementOrderingThreshold = LODWORD(v2);
}