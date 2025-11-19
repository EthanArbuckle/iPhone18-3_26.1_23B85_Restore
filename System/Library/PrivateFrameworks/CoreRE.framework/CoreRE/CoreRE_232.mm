uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 200 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 200 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 200 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 192) = a3;
  ++*(a1 + 28);
  return v7 + 200 * v5;
}

void re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
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
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 50;
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

__n128 re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, __int128 *a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v26);
  v7 = HIDWORD(v27);
  if (HIDWORD(v27) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v27, v26);
    *(v8 + 8) = *a2;
    v9 = a3[7];
    v10 = a3[8];
    v11 = a3[10];
    *(v8 + 160) = a3[9];
    *(v8 + 176) = v11;
    *(v8 + 128) = v9;
    *(v8 + 144) = v10;
    v12 = a3[3];
    v13 = a3[4];
    v14 = a3[6];
    *(v8 + 96) = a3[5];
    *(v8 + 112) = v14;
    *(v8 + 64) = v12;
    *(v8 + 80) = v13;
    v16 = *a3;
    result = a3[1];
    v17 = a3[2];
    *(v8 + 32) = result;
    *(v8 + 48) = v17;
    *(v8 + 16) = v16;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v18 = *(a1 + 16) + 200 * v7;
    v19 = a3[2];
    v20 = *a3;
    *(v18 + 32) = a3[1];
    *(v18 + 48) = v19;
    v21 = a3[3];
    v22 = a3[4];
    v23 = a3[6];
    *(v18 + 96) = a3[5];
    *(v18 + 112) = v23;
    *(v18 + 64) = v21;
    *(v18 + 80) = v22;
    result = a3[7];
    v24 = a3[8];
    v25 = a3[9];
    *(v18 + 172) = *(a3 + 156);
    *(v18 + 144) = v24;
    *(v18 + 160) = v25;
    *(v18 + 128) = result;
    *(v18 + 16) = v20;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 200 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 200 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 200 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 200 * v8) & 0x7FFFFFFF;
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

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

  return re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

    re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, void *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 200 * v4) & 0x80000000) != 0)
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
          v5 += 50;
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 200 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 200 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ClockOrTimebase,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::createSubscription<re::TimebaseManager>(re::TimebaseManager *,REEventHandlerResult (re::TimebaseManager::*)(re::SharedClockService*,OpaqueCMClock *,OpaqueCMClock *,unsigned long long))::{lambda(re::SharedClockService*,re::Event<re::SharedClockService,OpaqueCMClock *,OpaqueCMClock *,unsigned long long>::Subscription const&,OpaqueCMClock *&&,OpaqueCMClock *&,unsigned long long &&)#1}::__invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = (*a2 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, a1, *a3, *a4, *a5);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,void const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,re::TimebaseManager::ClockOrTimebaseRefCount>>>::__erase_unique<void const*>(void *a1, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(a1, a2);
  if (result)
  {
    v4 = a1[1];
    v5 = result[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != result);
    if (v8 == a1 + 2)
    {
      goto LABEL_19;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v10 = *(*result + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_20:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *result;
    if (*result)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *result;
      }
    }

    *v8 = v11;
    *result = 0;
    --a1[3];
    v13[0] = result;
    v13[1] = a1;
    v14 = 1;
    memset(v15, 0, sizeof(v15));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,re::audio::AudioGroup>,void *>>>>::~unique_ptr[abi:ne200100](v13);
  }

  return result;
}

void *std::__hash_table<OpaqueCMTimebase *,std::hash<OpaqueCMTimebase *>,std::equal_to<OpaqueCMTimebase *>,std::allocator<OpaqueCMTimebase *>>::__emplace_unique_key_args<OpaqueCMTimebase *,OpaqueCMTimebase *>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::TimebaseManager::ExternallyControlledTimebase>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::__unordered_map_hasher<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::hash<re::TimebaseTree *>,std::equal_to<re::TimebaseTree *>,true>,std::__unordered_map_equal<re::TimebaseTree *,std::__hash_value_type<re::TimebaseTree *,unsigned long long>,std::equal_to<re::TimebaseTree *>,std::hash<re::TimebaseTree *>,true>,std::allocator<std::__hash_value_type<re::TimebaseTree *,unsigned long long>>>::__emplace_unique_key_args<re::TimebaseTree *,std::piecewise_construct_t const&,std::tuple<re::TimebaseTree * const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *re::TraceDelta::reduce(void *this)
{
  v1 = this[4];
  if (v1)
  {
    v2 = this;
    v3 = this[6];
    if (v1 == 1)
    {
      v4 = this[6];
    }

    else
    {
      v5 = v3 + 64;
      do
      {
        if (*(v3 + 16))
        {
          if (*v3 == *v5 && *(v3 + 8) == *(v5 + 8))
          {
            re::TraceDelta::merge(this, v3, v5, &v11);
            v9 = v11;
            *(v3 + 16) = v12;
            *v3 = v9;
            re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 24, v13);
            this = v13[0];
            if (v13[0] && v13[4])
            {
              this = (*(*v13[0] + 40))();
            }
          }

          else
          {
            if (v5 - 64 != v3)
            {
              v7 = *v5;
              *(v3 + 80) = *(v5 + 16);
              *(v3 + 64) = v7;
              this = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 88, v5 + 24);
            }

            v3 += 64;
          }
        }

        else
        {
          v8 = *v5;
          *(v3 + 16) = *(v5 + 16);
          *v3 = v8;
          this = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 24, v5 + 24);
        }

        v5 += 64;
        v4 = v2[6];
      }

      while (v5 != v4 + (v2[4] << 6));
    }

    v10 = -64;
    if (*(v3 + 16))
    {
      v10 = 0;
    }

    return re::DynamicArray<re::TraceEntry>::resize(v2 + 2, ((v3 + v10 - v4) >> 6) + 1);
  }

  return this;
}

re *re::TraceDelta::merge@<X0>(re *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) > 1u)
  {
    if (*(a3 + 16) == 2)
    {
      v8 = *(a2 + 16);
      if (v8 == 3)
      {
        v9 = *re::traceLogObjects(result);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "TraceDelta: Unxpected sequence Remove + Update", v11, 2u);
        }

        *a4 = *a2;
        *(a4 + 16) = *(a2 + 16);
        return re::DynamicArray<BOOL>::DynamicArray(a4 + 24, (a2 + 24));
      }

      *a4 = *a3;
      *(a4 + 16) = v8;
      *(a4 + 17) = *(a3 + 17) | *(a2 + 17);
    }

    else
    {
      if (*(a2 + 16) == 1)
      {
        *(a4 + 56) = 0;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        *(a4 + 24) = 0;
        *(a4 + 48) = 0;
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return result;
      }

      *a4 = *a3;
      *(a4 + 16) = *(a3 + 16);
    }

    v6 = a4 + 24;
    v7 = (a3 + 24);
    goto LABEL_17;
  }

  if (!*(a3 + 16))
  {
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 16);
    v6 = a4 + 24;
    v7 = (a2 + 24);
LABEL_17:

    return re::DynamicArray<BOOL>::DynamicArray(v6, v7);
  }

  v10 = *(a2 + 16);
  *a4 = *a3;
  *(a4 + 16) = *(a3 + 16);
  result = re::DynamicArray<BOOL>::DynamicArray(a4 + 24, (a3 + 24));
  if (v10 == 3)
  {
    *(a4 + 16) = 2;
  }

  return result;
}

void *re::DynamicArray<re::TraceEntry>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (a2 << 6) | 0x18;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 64;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::TraceEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 56) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        *(v7 + 48) = 0;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::TraceDelta::merge(re::TraceDelta *this, const re::TraceDelta *a2)
{
  v3 = *(this + 3);
  v4 = (this + 16);
  v5 = *(this + 4);
  v25[0] = *(this + 2);
  v25[1] = v3;
  v26 = v5;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v6 = *(this + 6);
  v28 = v6;
  *(this + 6) = 0;
  ++*(this + 10);
  v27 = 1;
  v7 = *(a2 + 6);
  *(this + 1) = *(a2 + 1);
  v8 = *(a2 + 4) + v5;
  if (v8)
  {
    this = re::DynamicArray<re::TraceEntry>::setCapacity(this + 2, v8);
  }

  v9 = v6;
  while (1)
  {
    v10 = *(a2 + 6) + (*(a2 + 4) << 6);
    if (v9 == &v6[4 * v5])
    {
      break;
    }

    if (v7 == v10)
    {
      goto LABEL_14;
    }

    if (!v9[1].n128_u8[0] || ((v11 = v9->n128_u64[0], v12 = v9->n128_u64[1], v13 = *v7, v14 = *(v7 + 8), v9->n128_u64[0] == *v7) ? (v15 = v12 == v14) : (v15 = 0), v15))
    {
      re::TraceDelta::merge(this, v9, v7, &v21);
      if (v22)
      {
        v17 = re::DynamicArray<re::TraceEntry>::add(v4, &v21);
      }

      this = v23;
      if (v23 && v24)
      {
        this = (*(*v23 + 40))(v17);
      }

      v9 += 4;
      goto LABEL_23;
    }

    v16 = v12 < v14;
    if (v11 != v13)
    {
      v16 = v11 < v13;
    }

    if (v16)
    {
LABEL_14:
      re::DynamicArray<re::TraceEntry>::add(v4, v9);
      v9 += 4;
      goto LABEL_24;
    }

    v18 = v14 < v12;
    if (v11 == v13)
    {
      v19 = v18;
    }

    else
    {
      v19 = v13 < v11;
    }

    if (v19)
    {
      goto LABEL_16;
    }

LABEL_24:
    v6 = v28;
    v5 = v26;
  }

  if (v7 != v10)
  {
LABEL_16:
    this = re::DynamicArray<re::TraceEntry>::add(v4, v7);
LABEL_23:
    v7 += 64;
    goto LABEL_24;
  }

  return re::DynamicArray<re::TraceEntry>::deinit(v25);
}

uint64_t re::TraceDelta::indexOf@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 48);
  v5 = *(this + 32);
  v6 = (v4 + (v5 << 6));
  if (v5)
  {
    v7 = *(this + 48);
    do
    {
      v8 = v5 >> 1;
      v9 = &v7[8 * (v5 >> 1)];
      v11 = *v9;
      v12 = v9[1];
      v10 = v9 + 8;
      v13 = v12 < a3;
      v14 = v11 == a2;
      v15 = v11 < a2;
      if (v14)
      {
        v15 = v13;
      }

      v5 += ~(v5 >> 1);
      if (v15)
      {
        v7 = v10;
      }

      else
      {
        v5 = v8;
      }
    }

    while (v5);
  }

  else
  {
    v7 = *(this + 48);
  }

  if (v7 != v6 && *v7 == a2 && v7[1] == a3)
  {
    *a4 = 1;
    *(a4 + 8) = (v7 - v4) >> 6;
  }

  else
  {
    *a4 = 0;
  }

  return this;
}

void std::__stable_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::TraceEntry *,std::__less<void,void>>(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 6;
  if (v6 < 1)
  {
    v10 = 0;
LABEL_7:

    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(a1, a2, a3, v6, 0, v10);
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = (a2 - a1) >> 6;
    while (1)
    {
      v9 = operator new(v8 << 6, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = v9;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(a1, a2, a3, v6, v9, v8);

    operator delete(v12);
  }
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(uint64_t result, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  v20 = result;
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2[-4].n128_u64[0];
      v19 = a2 - 4;
      v9 = v8 == *result;
      v10 = v8 < *result;
      if (v9)
      {
        v10 = a2[-4].n128_u64[1] < *(result + 8);
      }

      if (v10)
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v20, &v19);
      }
    }

    else
    {
      v11 = a4;
      if (a4 <= 0)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(result, a2);
      }

      else
      {
        v15 = a4 >> 1;
        v16 = (result + (a4 >> 1 << 6));
        v17 = a4 >> 1;
        if (v11 <= a6)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(result, v16, a3, v17, a5);
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>((v7 + (v11 >> 1 << 6)), a2, a3, v11 - (v11 >> 1), &a5[4 * v15]);
          result = std::__merge_move_assign[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *,re::TraceEntry *,re::TraceEntry *>(a5, &a5[4 * v15], &a5[4 * v15], &a5[4 * v11], v7);
          if (a5)
          {
            v18 = &a5[1].n128_i64[1];
            do
            {
              result = re::DynamicArray<unsigned long>::deinit(v18);
              v18 += 64;
              --v11;
            }

            while (v11);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(result, v16, a3, v17, a5, a6);
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v7 + (v11 >> 1 << 6), a2, a3, v11 - (v11 >> 1), a5, a6);

          return std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v7, (v7 + (v11 >> 1 << 6)), a2, a3, v11 >> 1, v11 - (v11 >> 1), a5, a6);
        }
      }
    }
  }

  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v9 = *(*a1 + 8);
  v8 = **a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 5);
  v10[0] = *(*a1 + 3);
  v10[1] = v4;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v10[2] = v5;
  *(v2 + 5) = 0;
  v12 = *(v2 + 7);
  *(v2 + 7) = 0;
  ++*(v2 + 12);
  v11 = 1;
  v6 = *v3;
  *(v2 + 8) = *(v3 + 8);
  *v2 = v6;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v2 + 24, v3 + 24);
  *v3 = v8;
  *(v3 + 8) = v9;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3 + 24, v10);
  result = v10[0];
  if (v10[0])
  {
    if (v12)
    {
      return (*(*v10[0] + 40))();
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v24 = v2;
    v25 = v3;
    v5 = result;
    v6 = result + 64;
    if (result + 64 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v6;
        v10 = *(v8 + 64);
        v11 = v10 == *v8;
        v12 = v10 < *v8;
        if (v11)
        {
          v12 = *(v8 + 72) < *(v8 + 8);
        }

        if (v12)
        {
          v18 = *v9;
          v19 = *(v9 + 16);
          v20 = *(v8 + 88);
          v21 = *(v8 + 96);
          *(v8 + 88) = 0;
          *(v8 + 96) = 0;
          *(v8 + 104) = 0;
          v23 = *(v8 + 120);
          *(v8 + 120) = 0;
          ++*(v8 + 112);
          v13 = v7;
          v22 = 1;
          while (1)
          {
            v14 = v5 + v13;
            *(v14 + 64) = *(v5 + v13);
            *(v14 + 80) = *(v5 + v13 + 16);
            re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v5 + v13 + 88, v5 + v13 + 24);
            if (!v13)
            {
              break;
            }

            v15 = *(v14 - 64);
            v16 = v18 < v15;
            if (v18 == v15)
            {
              v16 = *(&v18 + 1) < *(v14 - 56);
            }

            v13 -= 64;
            if (!v16)
            {
              v17 = v5 + v13 + 64;
              goto LABEL_14;
            }
          }

          v17 = v5;
LABEL_14:
          *v17 = v18;
          *(v17 + 16) = v19;
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v14 + 24, &v20);
          result = v20;
          if (v20)
          {
            if (v23)
            {
              result = (*(*v20 + 40))();
            }
          }
        }

        v6 = v9 + 64;
        v7 += 64;
        v8 = v9;
      }

      while (v9 + 64 != a2);
    }
  }

  return result;
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5)
{
  if (!a4)
  {
    return;
  }

  v5 = a5;
  v8 = a1;
  if (a4 == 2)
  {
    v10 = a2[-4].n128_u64[0];
    v11 = a2 - 4;
    v12 = v10 == a1->n128_u64[0];
    v13 = v10 < a1->n128_u64[0];
    if (v12)
    {
      v13 = a2[-4].n128_u64[1] < a1->n128_u64[1];
    }

    if (!v13)
    {
      std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(a5, a1);
      v9 = v5 + 4;
      v14 = v11;
      goto LABEL_29;
    }

    std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(a5, v11);
    v9 = v5 + 4;
LABEL_9:
    v14 = v8;
LABEL_29:

    std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v9, v14);
    return;
  }

  if (a4 == 1)
  {
    v9 = a5;
    goto LABEL_9;
  }

  if (a4 > 8)
  {
    v29 = &a1[4 * (a4 >> 1)];
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(a1, v29, a3, a4 >> 1, a5, a4 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), &v5[4 * (a4 >> 1)], a4 - (a4 >> 1));
    v30 = &v8[4 * (a4 >> 1)];
    while (v30 != a2)
    {
      v31 = v30->n128_u64[0] < v8->n128_u64[0];
      if (v30->n128_u64[0] == v8->n128_u64[0])
      {
        v31 = v30->n128_u64[1] < v8->n128_u64[1];
      }

      if (v31)
      {
        std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v30);
        v30 += 4;
      }

      else
      {
        std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v8);
        v8 += 4;
      }

      v5 += 4;
      if (v8 == v29)
      {
        while (v30 != a2)
        {
          std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v30);
          v30 += 4;
          v5 += 4;
        }

        return;
      }
    }

    while (v8 != v29)
    {
      std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v5, v8);
      v8 += 4;
      v5 += 4;
    }
  }

  else if (a1 != a2)
  {
    std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(a5, a1);
    v15 = v8 + 4;
    if (&v8[4] != a2)
    {
      v16 = 0;
      v17 = v5;
      do
      {
        v18 = v15;
        v19 = v17 + 4;
        v20 = v8[4].n128_u64[0];
        v12 = v20 == v17->n128_u64[0];
        v21 = v20 < v17->n128_u64[0];
        if (v12)
        {
          v21 = v8[4].n128_u64[1] < v17->n128_u64[1];
        }

        v22 = v17 + 4;
        if (v21)
        {
          std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v22, v17);
          v23 = v5;
          if (v17 != v5)
          {
            v24 = v16;
            while (1)
            {
              v23 = (v5 + v24);
              v25 = *(v5[-4].n128_u64 + v24);
              v12 = v18->n128_u64[0] == v25;
              v26 = v18->n128_u64[0] < v25;
              if (v12)
              {
                v26 = v8[4].n128_u64[1] < *(&v5[-3] + v24 - 8);
              }

              if (!v26)
              {
                break;
              }

              *v23 = *(v5 + v24 - 64);
              v23[1].n128_u16[0] = *(v5[-3].n128_u16 + v24);
              re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v23[1].n128_i64[1], &v23[-3].n128_i64[1]);
              v24 -= 64;
              if (!v24)
              {
                v23 = v5;
                break;
              }
            }
          }

          v27 = *v18;
          v23[1].n128_u16[0] = v18[1].n128_u16[0];
          *v23 = v27;
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v23[1].n128_i64[1], &v8[5].n128_i64[1]);
        }

        else
        {
          std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(v22, v18);
        }

        v15 = v18 + 4;
        v16 += 64;
        v17 = v19;
        v8 = v18;
      }

      while (&v18[4] != a2);
    }
  }
}

uint64_t std::__merge_move_assign[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *,re::TraceEntry *,re::TraceEntry *>(uint64_t result, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (result == a2)
  {
LABEL_12:
    while (a3 != a4)
    {
      v13 = *a3;
      *(a5 + 16) = *(a3 + 8);
      *a5 = v13;
      result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + 24, a3 + 24);
      a3 += 4;
      a5 += 64;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      v10 = *a3 < *v9;
      if (*a3 == *v9)
      {
        v10 = *(a3 + 1) < *(v9 + 8);
      }

      if (v10)
      {
        v11 = *a3;
        *(a5 + 16) = *(a3 + 8);
        *a5 = v11;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + 24, a3 + 24);
        a3 += 4;
      }

      else
      {
        v12 = *v9;
        *(a5 + 16) = *(v9 + 16);
        *a5 = v12;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + 24, v9 + 24);
        v9 += 64;
      }

      a5 += 64;
      if (v9 == a2)
      {
        goto LABEL_12;
      }
    }

    if (v9 != a2)
    {
      v14 = 0;
      do
      {
        v15 = a5 + v14;
        v16 = v9 + v14;
        v17 = *(v9 + v14);
        *(v15 + 16) = *(v9 + v14 + 16);
        *v15 = v17;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a5 + v14 + 24, v9 + v14 + 24);
        v14 += 64;
      }

      while (v16 + 64 != a2);
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(uint64_t result, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v93 = a2;
  if (a6)
  {
    v11 = a2;
    v12 = result;
    while (a5 > a8 && a6 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = *v11;
      v15 = -a5;
      while (1)
      {
        v16 = (v12 + v13);
        v17 = *(v12 + v13);
        v65 = v14 == v17;
        v18 = v14 < v17;
        if (v65)
        {
          v18 = *(v11 + 1) < *(v12 + v13 + 8);
        }

        if (v18)
        {
          break;
        }

        v13 += 64;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v94 = (v12 + v13);
      v20 = -v15;
      v89 = a7;
      v91 = a3;
      if (-v15 >= a6)
      {
        if (v15 == -1)
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v94, &v93);
        }

        v33 = a6;
        v35 = v20 / 2;
        v25 = (v12 + ((v20 / 2) << 6) + v13);
        if (a3 == v11)
        {
          v22 = v11;
        }

        else
        {
          v36 = (a3 - v11) >> 6;
          v37 = *v25;
          v22 = v11;
          do
          {
            v38 = v36 >> 1;
            v39 = &v22[4 * (v36 >> 1)];
            v41 = *v39;
            v42 = *(v39 + 1);
            v40 = v39 + 4;
            v43 = v42 < *(v25 + 1);
            v65 = v41 == v37;
            v44 = v41 < v37;
            if (v65)
            {
              v44 = v43;
            }

            v36 += ~(v36 >> 1);
            if (v44)
            {
              v22 = v40;
            }

            else
            {
              v36 = v38;
            }
          }

          while (v36);
        }

        v21 = (v22 - v11) >> 6;
      }

      else
      {
        v21 = a6 / 2;
        v22 = &v11[4 * (a6 / 2)];
        if (v16 == v11)
        {
          v33 = a6;
          v34 = (v12 + v13);
          v25 = (v12 + v13);
        }

        else
        {
          v23 = (v11 - v12 - v13) >> 6;
          v24 = *v22;
          v25 = (v12 + v13);
          do
          {
            v26 = v23 >> 1;
            v27 = &v25[4 * (v23 >> 1)];
            v29 = *v27;
            v30 = v27[1];
            v28 = (v27 + 8);
            v31 = *(v22 + 1) < v30;
            v65 = v24 == v29;
            v32 = v24 < v29;
            if (v65)
            {
              v32 = v31;
            }

            v23 += ~(v23 >> 1);
            if (v32)
            {
              v23 = v26;
            }

            else
            {
              v25 = v28;
            }
          }

          while (v23);
          v33 = a6;
          v34 = v25;
        }

        v35 = (v34 - v12 - v13) >> 6;
      }

      v45 = v22;
      if (v25 != v11)
      {
        v45 = v25;
        if (v11 != v22)
        {
          v95 = v11;
          v96 = v25;
          while (1)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v96, &v95);
            v45 = v96 + 4;
            v46 = v95 + 4;
            v95 = v46;
            v96 += 4;
            if (v46 == v22)
            {
              break;
            }

            if (v45 == v11)
            {
              v11 = v46;
            }
          }

          if (v45 != v11)
          {
            do
            {
              v95 = v11;
              while (1)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TraceEntry *&,re::TraceEntry *&>(&v96, &v95);
                v47 = v96 + 4;
                v48 = v95 + 4;
                v95 = v48;
                v96 += 4;
                if (v48 == v22)
                {
                  break;
                }

                if (v47 == v11)
                {
                  v11 = v48;
                }
              }
            }

            while (v47 != v11);
          }
        }
      }

      a5 = -(v35 + v15);
      v49 = v33;
      v50 = v33 - v21;
      if (v35 + v21 >= v49 - (v35 + v21) - v15)
      {
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v45, v22, v91, a4, -(v35 + v15), v50, v89, a8);
        v22 = v25;
        a7 = v89;
        v50 = v21;
        a5 = v35;
        v91 = v45;
      }

      else
      {
        v51 = v25;
        a7 = v89;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,re::TraceEntry *>(v16, v51, v45, a4, v35, v21, v89, a8);
        v94 = v45;
        v16 = v45;
      }

      v93 = v22;
      a6 = v50;
      v11 = v22;
      v12 = v16;
      a3 = v91;
      if (!v50)
      {
        return result;
      }
    }

    if (a5 <= a6)
    {
      if (v12 == v11)
      {
        return result;
      }

      v70 = 0;
      v53 = 0;
      do
      {
        v71 = &a7[v70 / 0x10];
        v72 = v12 + v70;
        v73 = *(v12 + v70);
        *(v71 + 8) = *(v12 + v70 + 16);
        *v71 = v73;
        *(v71 + 7) = 0;
        *(v71 + 4) = 0;
        *(v71 + 5) = 0;
        *(v71 + 3) = 0;
        *(v71 + 12) = 0;
        v74 = *(v12 + v70 + 32);
        *(v71 + 3) = *(v12 + v70 + 24);
        *(v71 + 4) = v74;
        *(v72 + 24) = 0;
        *(v72 + 32) = 0;
        v75 = *(&a7[v70 / 0x10 + 2] + 1);
        *(v71 + 5) = *(v12 + v70 + 40);
        *(v72 + 40) = v75;
        v76 = *(&a7[v70 / 0x10 + 3] + 1);
        *(v71 + 7) = *(v12 + v70 + 56);
        *(v72 + 56) = v76;
        *(v72 + 48) = *(v12 + v70 + 48) + 1;
        *(v71 + 12) = LODWORD(a7[v70 / 0x10 + 3]) + 1;
        ++v53;
        v70 += 64;
      }

      while ((v72 + 64) != v11);
      v77 = &a7[v70 / 0x10];
      v78 = &a7[v70 / 0x10 - 4];
      v79 = a7;
      while (v11 != a3)
      {
        v80 = *v11 < *v79;
        if (*v11 == *v79)
        {
          v80 = *(v11 + 1) < *(v79 + 1);
        }

        if (v80)
        {
          v81 = *v11;
          *(v12 + 16) = *(v11 + 8);
          *v12 = v81;
          result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v12 + 24, v11 + 24);
          v11 += 4;
        }

        else
        {
          v82 = *v79;
          *(v12 + 16) = *(v79 + 8);
          *v12 = v82;
          result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v12 + 24, v79 + 24);
          v79 += 4;
        }

        v12 += 64;
        if (v77 == v79)
        {
          goto LABEL_93;
        }
      }

      v84 = 0;
      do
      {
        v85 = v12 + v84 * 16;
        v86 = &v79[v84];
        v87 = v79[v84];
        *(v85 + 16) = v79[v84 + 1];
        *v85 = v87;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v12 + v84 * 16 + 24, &v79[v84 + 1] + 8);
        v84 += 4;
      }

      while (v78 != v86);
    }

    else
    {
      if (v11 == a3)
      {
        return result;
      }

      v52 = 0;
      v53 = 0;
      do
      {
        v54 = &a7[v52];
        v55 = &v11[v52];
        v56 = v11[v52];
        *(v54 + 8) = v11[v52 + 1];
        *v54 = v56;
        *(v54 + 7) = 0;
        *(v54 + 4) = 0;
        *(v54 + 5) = 0;
        *(v54 + 3) = 0;
        *(v54 + 12) = 0;
        v57 = *&v11[v52 + 2];
        *(v54 + 3) = *(&v11[v52 + 1] + 1);
        *(v54 + 4) = v57;
        *(v55 + 3) = 0;
        *(v55 + 4) = 0;
        v58 = *(&a7[v52 + 2] + 1);
        *(v54 + 5) = *(&v11[v52 + 2] + 1);
        *(v55 + 5) = v58;
        v59 = *(&a7[v52 + 3] + 1);
        *(v54 + 7) = *(&v11[v52 + 3] + 1);
        *(v55 + 7) = v59;
        *(v55 + 12) = LODWORD(v11[v52 + 3]) + 1;
        *(v54 + 12) = LODWORD(a7[v52 + 3]) + 1;
        ++v53;
        v52 += 4;
      }

      while (v55 + 4 != a3);
      v60 = a3 - 4;
      v61 = &a7[v52];
      while (v11 != v12)
      {
        v62 = *(v61 - 8);
        v63 = *(v11 - 8);
        v65 = v62 == v63;
        v64 = v62 < v63;
        if (v65)
        {
          v64 = *(v61 - 7) < *(v11 - 7);
        }

        v65 = !v64;
        if (v64)
        {
          v66 = v11 - 4;
        }

        else
        {
          v66 = v61 - 4;
        }

        v67 = *v66;
        v68 = *(v66 + 8);
        if (v65)
        {
          v69 = v61;
        }

        else
        {
          v69 = v11;
        }

        if (v65)
        {
          v61 -= 4;
        }

        else
        {
          v11 -= 4;
        }

        *(v60 + 8) = v68;
        *v60 = v67;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v60 + 24, v69 - 40);
        v60 -= 4;
        if (v61 == a7)
        {
          goto LABEL_93;
        }
      }

      for (; v61 != a7; v61 -= 4)
      {
        v83 = *(v61 - 4);
        *(v60 + 8) = *(v61 - 24);
        *v60 = v83;
        result = re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v60 + 24, v61 - 40);
        v60 -= 4;
      }
    }

LABEL_93:
    if (a7)
    {
      v88 = a7 + 24;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v88);
        v88 += 64;
        --v53;
      }

      while (v53);
    }
  }

  return result;
}

__n128 std::__construct_at[abi:nn200100]<re::TraceEntry,re::TraceEntry,re::TraceEntry*>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  a1[3].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  a1[1].n128_u64[1] = 0;
  a1[3].n128_u32[0] = 0;
  v3 = a2[2].n128_u64[0];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a1[2].n128_u64[0] = v3;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  v4 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v4;
  v5 = a1[3].n128_u64[1];
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v5;
  ++a2[3].n128_u32[0];
  ++a1[3].n128_u32[0];
  return result;
}

re::TraceServer *re::TraceServer::TraceServer(re::TraceServer *this)
{
  v22 = *MEMORY[0x1E69E9840];
  *(this + 32) = 0;
  v2 = this + 32;
  *(this + 10) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 96) = 0;
  v3 = this + 96;
  *(this + 88) = 0;
  *(this + 18) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 76) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 46) = 0;
  *this = &unk_1F5D19F30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 56) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 32) = 850045863;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 39) = 0;
  *(this + 40) = 1018212795;
  *(this + 50) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 0;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INTERACTIVE, 0);
  *(this + 31) = dispatch_queue_create("trace server", v5);
  dispatch_release(v5);
  secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  *(this + 1) = secure_tcp;
  v7 = nw_parameters_copy_default_protocol_stack(secure_tcp);
  v8 = re::TraceFramer::definition(v7);
  options = nw_framer_create_options(v8);
  nw_protocol_stack_prepend_application_protocol(v7, options);
  nw_release(options);
  nw_release(v7);
  v11 = *re::traceLogObjects(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "TraceServer: Construct", v21, 2u);
  }

  *(this + 32) = 3;
  *(this + 96) = 4;
  v13 = re::globalAllocators(v12);
  v14 = (*(*v13[2] + 32))(v13[2], 56, 8);
  *v14 = v2;
  *(v14 + 8) = v3;
  *(v14 + 48) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 0;
  *(this + 3) = v14;
  re::Defaults::BOOLValue("trace.enableTraceFromInit", v15, v21);
  if (LOBYTE(v21[0]))
  {
    v17 = BYTE1(v21[0]);
  }

  else
  {
    v17 = 0;
  }

  *(this + 153) = v17;
  v18 = *re::traceLogObjects(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(this + 153);
    v21[0] = 67109120;
    v21[1] = v19;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "TraceServer: Collect trace data from initialzation: %d", v21, 8u);
  }

  return this;
}

void re::TraceServer::~TraceServer(re::TraceServer *this)
{
  *this = &unk_1F5D19F30;
  re::TraceServer::stopListening(this);
  __lk.__m_ = (this + 256);
  __lk.__owns_ = 1;
  std::mutex::lock(this + 4);
  v2 = *(this + 31);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2re11TraceServerD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_35;
  block[4] = this;
  dispatch_async(v2, block);
  std::condition_variable::wait((this + 320), &__lk);
  v3 = *(this + 27);
  if (v3)
  {
    v4 = *(this + 29);
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      nw_connection_set_state_changed_handler(*v6, 0);
      nw_connection_force_cancel(*v6);
      v8 = re::globalAllocators(v7)[2];
      re::TraceServer::NetworkClient::~NetworkClient(v6);
      (*(*v8 + 40))(v8, v6);
      v5 -= 8;
    }

    while (v5);
  }

  *(this + 27) = 0;
  ++*(this + 56);
  v9 = *(this + 1);
  if (v9)
  {
    nw_release(v9);
    *(this + 1) = 0;
  }

  dispatch_release(*(this + 31));
  *(this + 31) = 0;
  v11 = *(this + 3);
  if (v11)
  {
    v12 = re::globalAllocators(v10)[2];
    v13 = *(v11 + 16);
    *(v11 + 32) = 0;
    v14 = *(v11 + 40) + 1;
    *(v11 + 40) = v14;
    if (v13)
    {
      if (*(v11 + 48))
      {
        (*(*v13 + 40))(v13);
        v14 = *(v11 + 40);
      }

      *(v11 + 48) = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      *(v11 + 40) = v14 + 1;
    }

    (*(*v12 + 40))(v12, v11);
    *(this + 3) = 0;
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 368);
  std::condition_variable::~condition_variable((this + 320));
  std::mutex::~mutex(this + 4);
  v15 = *(this + 25);
  if (v15)
  {
    if (*(this + 29))
    {
      (*(*v15 + 40))(v15);
    }

    *(this + 29) = 0;
    *(this + 26) = 0;
    *(this + 27) = 0;
    *(this + 25) = 0;
    ++*(this + 56);
  }

  v16 = *(this + 20);
  if (v16)
  {
    v17 = *(this + 24);
    if (v17)
    {
      v18 = *(this + 22);
      if (v18)
      {
        v19 = 56 * v18;
        v20 = v17 + 16;
        do
        {
          re::DynamicArray<re::TraceEntry>::deinit(v20);
          v20 += 56;
          v19 -= 56;
        }

        while (v19);
        v16 = *(this + 20);
        v17 = *(this + 24);
      }

      (*(*v16 + 40))(v16, v17);
    }

    *(this + 24) = 0;
    *(this + 21) = 0;
    *(this + 22) = 0;
    *(this + 20) = 0;
    ++*(this + 46);
  }

  re::DynamicArray<re::TraceEntry>::deinit(this + 112);
  re::DynamicArray<re::TraceEntry>::deinit(this + 48);
}

{
  re::TraceServer::~TraceServer(this);

  JUMPOUT(0x1E6906520);
}

void ___ZN2re11TraceServerD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 256));
  std::condition_variable::notify_all((v1 + 320));

  std::mutex::unlock((v1 + 256));
}

void re::TraceServer::startListening(nw_parameters_t *this, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *re::traceLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "TraceServer: start listening on port %s", buf, 0xCu);
  }

  ((*this)[5].isa)(this);
  v5 = nw_listener_create_with_port(a2, this[1]);
  this[2] = v5;
  nw_listener_set_queue(v5, this[31]);
  nw_listener_set_state_changed_handler(this[2], &__block_literal_global_55);
  v6 = this[31];
  v7 = this[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2re11TraceServer14startListeningEPKc_block_invoke_5;
  v8[3] = &__block_descriptor_tmp_7_0;
  v8[4] = this;
  v8[5] = v6;
  nw_listener_set_new_connection_handler(v7, v8);
  nw_listener_start(this[2]);
}

void ___ZN2re11TraceServer14startListeningEPKc_block_invoke(re *a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *re::traceLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "TraceServer: listener state changed to %d\n", v4, 8u);
  }
}

void ___ZN2re11TraceServer14startListeningEPKc_block_invoke_5(uint64_t a1, NSObject *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (specific)
  {
    v5 = specific;
    re::TraceServer::addConnection(*(a1 + 32), a2);
    v6 = nw_connection_copy_endpoint(a2);
    v7 = nw_endpoint_copy_address_string(v6);
    v8 = nw_endpoint_copy_port_string(v6);
    v9 = *re::traceLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v5[27];
      v11 = 136315650;
      v12 = v7;
      v13 = 2080;
      v14 = v8;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "TraceServer: new client connection from %s port %s (count=%zu)", &v11, 0x20u);
    }

    free(v7);
    free(v8);
    nw_release(v6);
  }
}

void re::TraceServer::addConnection(re::TraceServer *this, NSObject *a2)
{
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 160, 8);
  *v5 = a2;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 100) = 0u;
  *(v5 + 116) = 0x7FFFFFFFLL;
  *(v5 + 128) = 1;
  *(v5 + 132) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  v6 = nw_retain(*v5);
  *(v5 + 8) = 2;
  v7 = *(this + 26);
  v8 = *(this + 27);
  if (v8 >= v7)
  {
    v9 = v8 + 1;
    if (v7 < v8 + 1)
    {
      if (*(this + 25))
      {
        v10 = 2 * v7;
        v11 = v7 == 0;
        v12 = 8;
        if (!v11)
        {
          v12 = v10;
        }

        if (v12 <= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v12;
        }

        re::DynamicArray<float *>::setCapacity(this + 25, v13);
      }

      else
      {
        re::DynamicArray<float *>::setCapacity(this + 25, v9);
        ++*(this + 56);
      }
    }

    v8 = *(this + 27);
  }

  *(*(this + 29) + 8 * v8) = v5;
  *(this + 27) = v8 + 1;
  ++*(this + 56);
  v14 = *(this + 31);
  nw_connection_set_queue(a2, v14);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN2re11TraceServer13addConnectionEP13nw_connection_block_invoke;
  v15[3] = &__block_descriptor_tmp_13_2;
  v15[4] = v14;
  v15[5] = a2;
  nw_connection_set_state_changed_handler(a2, v15);
  nw_connection_start(a2);
}

void re::TraceServer::stopListening(re::TraceServer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    nw_listener_cancel(v2);
    nw_release(*(this + 2));
    *(this + 2) = 0;
  }
}

void re::TraceServer::send(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 248);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_10TraceDeltaENS_9REDeleterIS3_EEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_8_4;
  block[4] = a1;
  block[5] = v2;
  block[6] = v3;
  dispatch_async(v3, block);
}

{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 248);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_14TransferReportENS_9REDeleterIS3_EEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_9_2;
  v4[4] = v2;
  v4[5] = v3;
  dispatch_async(v3, v4);
}

re *___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_10TraceDeltaENS_9REDeleterIS3_EEEE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!specific)
  {
    goto LABEL_34;
  }

  v5 = specific;
  if (!(*(*specific + 72))(specific) && *(v3 + 153) != 1)
  {
    goto LABEL_34;
  }

  v7 = *(a1 + 40);
  v8 = *v7;
  if (!*v7 || !*(v7 + 4))
  {
    goto LABEL_34;
  }

  if (v8 == 3)
  {
    v9 = *(a1 + 40);
    *(v5 + 2) = *v9;
    re::DynamicArray<re::TraceEntry>::operator=((v5 + 6), (v9 + 16));
    atomic_store(1u, v5 + 152);
    goto LABEL_14;
  }

  if (v8 != 4)
  {
    if (!(*(*v5 + 72))(v5) && *(v3 + 153) == 1)
    {
      re::DynamicArray<re::TraceDelta>::add(v3 + 160, *(a1 + 40));
      goto LABEL_15;
    }

    re::TraceDelta::merge((v5 + 4), *(a1 + 40));
LABEL_14:
    goto LABEL_15;
  }

  *(v5 + 6) = *v7;
  re::DynamicArray<re::TraceEntry>::operator=((v5 + 14), v7 + 2);
  atomic_store(1u, v5 + 88);
LABEL_15:
  v11 = *(a1 + 40);
  v12 = v5[27];
  if (v12)
  {
    v13 = v5[29];
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if ((*v13)[19])
      {
        re::TraceServer::trySendInitialDeltas(v5, *v13);
        if ((v15[16] & 1) == 0 && *(v11 + 1) > *(v15 + 18))
        {
          if (*(v15 + 33) < 1)
          {
            re::TraceServer::send(v5, v11, *v15);
            v15[18] = *(v11 + 1);
          }

          else
          {
            re::TraceDelta::merge((v15 + 1), v11);
          }
        }
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v16 = v5[3];
  v17 = v16[4];
  if (v17)
  {
    v18 = v16[6];
    v19 = 8 * v17;
    do
    {
      if ((*(*v18 + 8) & 1) == 0)
      {
        (*(**v18 + 16))(*v18, v11);
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
    v20 = v16[4];
    if (v20)
    {
      v21 = v16[6];
      v22 = 8 * v20;
      do
      {
        if ((*v21)[8] == 1)
        {
          re::TraceDirectServer::trySendInitialDeltas(v16, *v21);
        }

        ++v21;
        v22 -= 8;
      }

      while (v22);
    }
  }

LABEL_34:

  return re::internal::destroyPersistent<re::TraceDelta>("operator()", 274, v2);
}

void re::anonymous namespace::validateTraceDelta(unint64_t **this, const re::TraceDelta *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v4 = this[4];
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = this[6];
      v9 = v4 << 6;
      do
      {
        if (*(v8 + 16) != 3 && !v8[5])
        {
          v10 = *re::traceLogObjects(v3);
          v3 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
          if (v3)
          {
            v16 = this[1];
            v17 = *v8;
            v18 = v8[1];
            v19 = *(v8 + 16);
            *buf = 134218752;
            *v23 = v16;
            *&v23[8] = 2048;
            *&v23[10] = v17;
            v24 = 2048;
            v25 = v18;
            v26 = 1024;
            v27 = v19;
            _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Missing entry payload in non-removal trace: timestamp: %f, id=%llu, child=%llu, mode=%d", buf, 0x26u);
          }

          ++v5;
        }

        if (*v8 <= v6)
        {
          if (*v8 != v6 || v8[1] <= v7)
          {
            v11 = *re::traceLogObjects(v3);
            v3 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
            if (v3)
            {
              v12 = this[1];
              v13 = *v8;
              v14 = v8[1];
              v15 = *(v8 + 16);
              *buf = 134219264;
              *v23 = v12;
              *&v23[8] = 2048;
              *&v23[10] = v13;
              v24 = 2048;
              v25 = v14;
              v26 = 1024;
              v27 = v15;
              v28 = 2048;
              v29 = v6;
              v30 = 2048;
              v31 = v7;
              _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Detected non-sorted entry: timestamp: %f, id=%llu, child=%llu, mode=%d, prevId=%llu, prevChild=%llu", buf, 0x3Au);
            }

            ++v5;
            v6 = *v8;
          }
        }

        else
        {
          v6 = *v8;
        }

        v7 = v8[1];
        v8 += 8;
        v9 -= 64;
      }

      while (v9);
      if (v5 > 0)
      {
        v20 = *re::traceLogObjects(v3);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = this[1];
          *buf = 67109376;
          *v23 = v5;
          *&v23[4] = 2048;
          *&v23[6] = v21;
          _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "%d errors found at timestamp: %f", buf, 0x12u);
        }
      }
    }
  }
}

void re::anonymous namespace::validateSnapshot(unint64_t **this, const re::TraceDelta *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    if (*this != 3)
    {
      v4 = *re::traceLogObjects(v3);
      v3 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        v28 = *this;
        *buf = 67109120;
        *v31 = v28;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid type for initial snapshot: %d", buf, 8u);
      }
    }

    v5 = this[4];
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = this[6];
      v10 = v5 << 6;
      do
      {
        if (*(v9 + 16) != 1)
        {
          v11 = *re::traceLogObjects(v3);
          v3 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
          if (v3)
          {
            v14 = this[1];
            v15 = *v9;
            v16 = v9[1];
            v17 = *(v9 + 16);
            v18 = v9[5];
            *buf = 134219008;
            *v31 = v14;
            *&v31[8] = 2048;
            *&v31[10] = v15;
            v32 = 2048;
            v33 = v16;
            v34 = 1024;
            v35 = v17;
            v36 = 2048;
            v37 = v18;
            _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Unexpected mode in initial snapshot: timestamp: %f, id=%llu, child=%llu, mode=%d, data=%zu", buf, 0x30u);
          }

          ++v6;
        }

        if (!v9[5])
        {
          v12 = *re::traceLogObjects(v3);
          v3 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          if (v3)
          {
            v19 = this[1];
            v20 = *v9;
            v21 = v9[1];
            v22 = *(v9 + 16);
            *buf = 134218752;
            *v31 = v19;
            *&v31[8] = 2048;
            *&v31[10] = v20;
            v32 = 2048;
            v33 = v21;
            v34 = 1024;
            v35 = v22;
            _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Missing snapshot payload in non-removal trace: timestamp: %f, id=%llu, child=%llu, mode=%d", buf, 0x26u);
          }

          ++v6;
        }

        if (*v9 <= v7)
        {
          if (*v9 != v7 || v9[1] <= v8)
          {
            v13 = *re::traceLogObjects(v3);
            v3 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
            if (v3)
            {
              v23 = this[1];
              v24 = *v9;
              v25 = v9[1];
              v26 = *(v9 + 16);
              *buf = 134219264;
              *v31 = v23;
              *&v31[8] = 2048;
              *&v31[10] = v24;
              v32 = 2048;
              v33 = v25;
              v34 = 1024;
              v35 = v26;
              v36 = 2048;
              v37 = v7;
              v38 = 2048;
              v39 = v8;
              _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Detected non-sorted entry in snapshot: timestamp: %f, id=%llu, child=%llu, mode=%d, prevId=%llu, prevChild=%llu", buf, 0x3Au);
            }

            ++v6;
            v7 = *v9;
          }
        }

        else
        {
          v7 = *v9;
        }

        v8 = v9[1];
        v9 += 8;
        v10 -= 64;
      }

      while (v10);
      if (v6 > 0)
      {
        v27 = *re::traceLogObjects(v3);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = this[1];
          *buf = 67109376;
          *v31 = v6;
          *&v31[4] = 2048;
          *&v31[6] = v29;
          _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "%d errors found in snapshot at timestamp: %f", buf, 0x12u);
        }
      }
    }
  }
}

uint64_t re::DynamicArray<re::TraceDelta>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::TraceDelta>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::TraceDelta>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 56 * v5);
  *v11 = *a2;
  result = re::DynamicArray<re::TraceEntry>::DynamicArray((v11 + 1), (a2 + 16));
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::TraceServer::trySendInitialDeltas(re::TraceServer *this, NSObject **a2)
{
  if (*(a2 + 128) == 1)
  {
    v19[12] = v2;
    v19[13] = v3;
    if ((*(*this + 80))(this))
    {
      if ((*(*this + 88))(this))
      {
        v6 = *(this + 13);
        v7 = *(this + 5);
        if (v6 >= v7)
        {
          v8 = (this + 32);
        }

        else
        {
          v8 = (this + 96);
        }

        if (v6 >= v7)
        {
          v9 = (this + 96);
        }

        else
        {
          v9 = (this + 32);
        }

        if (v6 >= v7)
        {
          v10 = this + 104;
        }

        else
        {
          v10 = this + 40;
        }

        re::TraceServer::send(this, v8, *a2);
        re::TraceServer::send(this, v9, *a2);
        a2[18] = *v10;
        if (*(this + 153) == 1)
        {
          v11 = *(this + 22);
          if (v11)
          {
            v12 = 56 * v11;
            v13 = (*(this + 24) + 16);
            do
            {
              v18 = *(v13 - 1);
              re::DynamicArray<re::TraceEntry>::DynamicArray(v19, v13);
              re::TraceServer::send(this, &v18, *a2);
              re::TraceDelta::merge((this + 32), &v18);
              re::DynamicArray<re::TraceEntry>::deinit(v19);
              v13 += 7;
              v12 -= 56;
            }

            while (v12);
            v14 = *(this + 22);
            v15 = *(this + 24);
            *(this + 153) = 0;
            *(this + 22) = 0;
            if (v14)
            {
              v16 = 56 * v14;
              v17 = v15 + 16;
              do
              {
                re::DynamicArray<re::TraceEntry>::deinit(v17);
                v17 += 56;
                v16 -= 56;
              }

              while (v16);
            }
          }

          else
          {
            *(this + 153) = 0;
          }

          ++*(this + 46);
        }

        *(a2 + 128) = 0;
      }
    }
  }
}

void re::TraceServer::send(re::TraceServer *this, const re::TraceDelta *a2, NSObject *a3)
{
  if (*(a2 + 1) == 0.0)
  {
    v7 = *re::traceLogObjects(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Sending a trace frame with timestamp=0.0. This is unexpected!", buf, 2u);
    }
  }

  *buf = &unk_1F5D0CAE0;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  re::zerocopy::DispatchWriteStream::clear(buf);
  *&v12[8] = vdupq_n_s64(0x1000uLL);
  *(&v11 + 1) = dispatch_data_create_alloc();
  v8 = &v9;
  v9 = buf;
  re::TraceDeltaWriter::writeDelta(&v8, a2);
  re::zerocopy::DispatchWriteStream::mergeTail(buf);
  v6 = v11;
  *&v11 = 0;
  re::zerocopy::DispatchWriteStream::clear(buf);
  *buf = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(buf);
  *buf = 2;
  *&v11 = v6;
  re::TraceServer::send(this, buf, a3);
  dispatch_release(v6);
}

void re::TraceServer::send(void *a1, unsigned __int8 *a2, NSObject *a3)
{
  v5 = a1[27];
  if (v5)
  {
    v6 = a1[29];
    v7 = 8 * v5;
    while (**v6 != a3)
    {
      v6 += 8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    if (*a2 == 2)
    {
      ++*(*v6 + 132);
    }
  }

LABEL_8:
  v8 = a1[31];
  v9 = *a2;
  v10 = nw_content_context_create("re-trace");
  re::TraceFramer::setMessageType(v10, *a2);
  v11 = *(a2 + 1);
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 0x40000000;
  completion[2] = ___ZN2re11TraceServer4sendERKNS_12TraceMessageEP13nw_connection_block_invoke;
  completion[3] = &__block_descriptor_tmp_17_1;
  v13 = v9;
  completion[4] = v8;
  completion[5] = a3;
  nw_connection_send(a3, v11, v10, 1, completion);
  nw_release(v10);
}

re *___ZN2re11TraceServer4sendENSt3__110unique_ptrINS_14TransferReportENS_9REDeleterIS3_EEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (specific)
  {
    v4 = specific;
    v5 = specific[27];
    if (v5)
    {
      v6 = specific[29];
      for (i = 8 * v5; i; i -= 8)
      {
        v8 = *v6;
        if ((*(*v6 + 152) & 2) != 0)
        {
          if (*(v8 + 136) < 1)
          {
            if (*(v8 + 108))
            {
              re::TransferReport::aggregate((v8 + 64), *(a1 + 32));
              re::TraceServer::send(v4, v8 + 64, *v8);
              memset(v16, 0, 36);
              *&v16[36] = 0x7FFFFFFFLL;
              *(v8 + 64) = 0u;
              v10 = (v8 + 80);
              if ((v8 + 80) != v16)
              {
                v11 = *v10;
                if (*v10)
                {
                  v12 = v11 == *v16;
                }

                else
                {
                  v12 = 1;
                }

                if (v12)
                {
                  *(v8 + 80) = *v16;
                  *v16 = v11;
                  v13 = *(v8 + 88);
                  *(v8 + 88) = *&v16[8];
                  *&v16[8] = v13;
                  v14 = *(v8 + 104);
                  *(v8 + 104) = *&v16[24];
                  *&v16[24] = v14;
                  goto LABEL_20;
                }

                re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(v8 + 80);
                if (*v16)
                {
                  if (*(v8 + 104) < *&v16[28])
                  {
                    re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(v8 + 80, *&v16[28]);
                  }

                  re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move((v8 + 80), v16);
LABEL_20:
                  ++*(v8 + 120);
                }
              }

              re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v16);
              goto LABEL_22;
            }

            re::TraceServer::send(v4, *(a1 + 32), *v8);
          }

          else
          {
            re::TransferReport::aggregate((v8 + 64), *(a1 + 32));
          }
        }

LABEL_22:
        ++v6;
      }
    }
  }

  return re::internal::destroyPersistent<re::TransferReport>("operator()", 356, v2);
}

void re::TraceServer::send(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = &unk_1F5D0CAE0;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  re::zerocopy::DispatchWriteStream::clear(&v9);
  *&v11[8] = vdupq_n_s64(0x1000uLL);
  *(&v10 + 1) = dispatch_data_create_alloc();
  v7 = &v8;
  v8 = &v9;
  re::TransferReportWriter::write(&v7, a2);
  re::zerocopy::DispatchWriteStream::mergeTail(&v9);
  v6 = v10;
  *&v10 = 0;
  re::zerocopy::DispatchWriteStream::clear(&v9);
  v9 = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(&v9);
  v9 = 3;
  *&v10 = v6;
  re::TraceServer::send(a1, &v9, a3);
  dispatch_release(v6);
}

BOOL re::TraceServer::addClientFromConnectedSocket(re::TraceServer *this, int a2)
{
  v4 = nw_connection_create_with_connected_socket_and_parameters();
  if (v4)
  {
    v5 = *(this + 31);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2re11TraceServer28addClientFromConnectedSocketEi_block_invoke;
    block[3] = &__block_descriptor_tmp_10_1;
    block[4] = v4;
    block[5] = v5;
    v8 = a2;
    dispatch_async(v5, block);
  }

  return v4 != 0;
}

void ___ZN2re11TraceServer28addClientFromConnectedSocketEi_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (specific)
  {
    v4 = specific;
    re::TraceServer::addConnection(specific, v2);
    v6 = *re::traceLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(v4 + 27);
      v9[0] = 67109376;
      v9[1] = v7;
      v10 = 2048;
      v11 = v8;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "TraceServer: new client connection from fd://%d (count=%zu)", v9, 0x12u);
    }
  }

  nw_release(v2);
}

void re::TraceServer::addDirectClient(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2re11TraceServer15addDirectClientEPNS_17TraceDirectClientE_block_invoke;
  v3[3] = &__block_descriptor_tmp_11_1;
  v3[4] = v2;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2re11TraceServer15addDirectClientEPNS_17TraceDirectClientE_block_invoke(uint64_t a1)
{
  if (specific)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(specific + 3);
      v5 = *(v4 + 48);
      v6 = *(v4 + 32);
      v7 = v5;
      if (v6)
      {
        v8 = 8 * v6;
        v7 = *(v4 + 48);
        while (*v7 != v3)
        {
          ++v7;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }

      if (v7 == &v5[v6])
      {
LABEL_13:
        v12 = *(v4 + 24);
        if (v6 >= v12)
        {
          v13 = v6 + 1;
          if (v12 < v6 + 1)
          {
            if (*(v4 + 16))
            {
              v14 = 2 * v12;
              if (!v12)
              {
                v14 = 8;
              }

              if (v14 <= v13)
              {
                v15 = v13;
              }

              else
              {
                v15 = v14;
              }

              re::DynamicArray<float *>::setCapacity((v4 + 16), v15);
            }

            else
            {
              re::DynamicArray<float *>::setCapacity((v4 + 16), v13);
              ++*(v4 + 40);
            }
          }

          v6 = *(v4 + 32);
          v5 = *(v4 + 48);
        }

        v5[v6] = v3;
        *(v4 + 32) = v6 + 1;
        ++*(v4 + 40);
        v3[8] = 1;

        re::TraceDirectServer::trySendInitialDeltas(v4, v3);
      }

      else
      {
        v9 = *re::traceLogObjects(specific);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v16 = 0;
          v10 = "TraceServer: error adding TraceDirectClient. The client has already been added";
          v11 = &v16;
LABEL_28:
          _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
        }
      }
    }

    else
    {
      v9 = *re::traceLogObjects(specific);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v11 = buf;
        goto LABEL_28;
      }
    }
  }
}

void re::TraceServer::removeDirectClient(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2re11TraceServer18removeDirectClientEPNS_17TraceDirectClientE_block_invoke;
  v3[3] = &__block_descriptor_tmp_12_2;
  v3[4] = v2;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2re11TraceServer18removeDirectClientEPNS_17TraceDirectClientE_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (specific)
  {
    v3 = specific;
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(specific + 3);
      v6 = *(v5 + 48);
      v7 = *(v5 + 32);
      v8 = v6;
      if (v7)
      {
        v9 = 8 * v7;
        v8 = *(v5 + 48);
        while (*v8 != v4)
        {
          v8 += 8;
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_16;
          }
        }
      }

      v10 = &v6[8 * v7];
      if (v8 != v10)
      {
        v11 = v8 - v6;
        if (v7 <= v11 >> 3)
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (v7 - 1 > v11 >> 3)
        {
          *&v6[v11] = *(v10 - 1);
        }

        *(v5 + 32) = v7 - 1;
        ++*(v5 + 40);
      }
    }

    else
    {
      v12 = *re::traceLogObjects(specific);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
      }
    }

LABEL_16:

    re::TraceServer::tryClearDeltas(v3);
  }
}

void re::TraceServer::tryClearDeltas(re::TraceServer *this)
{
  if (!(*(*this + 72))(this))
  {
    *(this + 5) = 0;
    re::DynamicArray<re::TraceEntry>::clear(this + 48);
    atomic_store(0, this + 152);
    *(this + 13) = 0;
    re::DynamicArray<re::TraceEntry>::clear(this + 112);
    atomic_store(0, this + 88);

    re::DynamicArray<re::SceneCompatibilityVariant>::clear(this + 368);
  }
}

void ___ZN2re11TraceServer13addConnectionEP13nw_connection_block_invoke(uint64_t a1, int a2)
{
  if (specific)
  {
    if (a2 == 3)
    {
      v5 = *(a1 + 40);
      v6 = *(specific + 31);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = ___ZN2re11TraceServer15scheduleReceiveEPS0_P13nw_connection_block_invoke;
      v8[3] = &__block_descriptor_tmp_15_2;
      v8[4] = v6;
      v8[5] = v5;
      nw_connection_receive_message(v5, v8);
    }

    else if ((a2 & 0xFFFFFFFE) == 4)
    {
      v7 = *(a1 + 40);

      re::TraceServer::removeConnection(specific, v7);
    }
  }
}

void re::TraceServer::removeConnection(re::TraceServer *this, nw_connection_t connection)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(this + 27);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = -v3;
    while (1)
    {
      v7 = *(*(this + 29) + v5);
      if (*v7 == connection)
      {
        break;
      }

      v5 += 8;
      if (v6 == --v4)
      {
        goto LABEL_14;
      }
    }

    v8 = -v4;
    if (*(v7 + 152))
    {
      atomic_fetch_add(this + 30, 0xFFFFFFFFFFFFFFFFLL);
    }

    nw_connection_cancel(connection);
    v10 = re::globalAllocators(v9)[2];
    re::TraceServer::NetworkClient::~NetworkClient(v7);
    v11 = (*(*v10 + 40))(v10, v7);
    v12 = *(this + 27);
    if (v12 <= v8)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v13 = v12 - 1;
    if (v12 - 1 > v8 && 8 * v12 - 8 != v5)
    {
      v11 = memmove((*(this + 29) + v5), (*(this + 29) + v5 + 8), 8 * v12 - v5 - 8);
      v13 = *(this + 27) - 1;
    }

    *(this + 27) = v13;
    ++*(this + 56);
    v14 = *re::traceLogObjects(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(this + 27);
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "TraceServer: removed client connection (count=%zu)", buf, 0xCu);
    }
  }

LABEL_14:
  re::TraceServer::tryClearDeltas(this);
}

void ___ZN2re11TraceServer15scheduleReceiveEPS0_P13nw_connection_block_invoke(uint64_t a1, void *a2, re::TraceFramer *a3, char a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!specific)
  {
    return;
  }

  v11 = specific;
  if (a2)
  {
    if (a3)
    {
      re::TraceFramer::messageType(a3, &v43);
      if (v43 == 1)
      {
        v13 = *(v11 + 27);
        if (v13)
        {
          v14 = *(a1 + 40);
          v15 = v44;
          v16 = 8 * v13;
          v17 = *(v11 + 29);
          while (1)
          {
            v18 = *v17;
            if (**v17 == v14)
            {
              break;
            }

            ++v17;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_62;
            }
          }

          if (v44 != 4)
          {
            if (v44 != 1)
            {
              v28 = *re::traceLogObjects(v12);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0]) = 67109120;
                HIDWORD(buf[0]) = v15;
                _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "TraceServer received unexpected TraceMessageType: %hhu", buf, 8u);
              }

              goto LABEL_62;
            }

            re::zerocopy::DispatchReadStream::DispatchReadStream(v49, a2);
            re::OPackReader::OPackReader(buf, v49);
            if (re::OPackReader::next(buf, v19) && v54[140] == 6)
            {
              v20 = *(v18 + 38);
              v21 = v55 & 1;
              *(v18 + 38) = v55;
              if ((v20 & 1) != 0 || !v21)
              {
                if ((v20 & 1) != 0 && !v21)
                {
                  atomic_fetch_add(v11 + 30, 0xFFFFFFFFFFFFFFFFLL);
                }
              }

              else
              {
                atomic_fetch_add(v11 + 30, 1uLL);
                re::TraceServer::trySendInitialDeltas(v11, v18);
              }
            }

            if (!v57)
            {
              goto LABEL_61;
            }

            if (v61)
            {
              (*(*v57 + 40))();
            }

            v61 = 0;
            v58 = 0;
            v59 = 0;
            v57 = 0;
            goto LABEL_60;
          }

          re::zerocopy::DispatchReadStream::DispatchReadStream(v49, a2);
          re::OPackReader::OPackReader(buf, v49);
          v48 = 0;
          v45[1] = 0;
          v46 = 0;
          v45[0] = 0;
          v47 = 0;
          *v50 = buf;
          v22 = re::TraceTargetAppInfoReader::read(v50, v45);
          if (v22)
          {
            v23 = v46;
            v24 = atomic_load(v11 + 30);
            v25 = *(v11 + 48);
            if (v24)
            {
              if (v25 != v46)
              {
LABEL_34:
                v29 = *re::traceLogObjects(v22);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *v50 = 0;
                  _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "TraceServer is already capturing with different app-mode configuration, stopping the connection", v50, 2u);
                }

                re::TraceServer::removeConnection(v11, v14);
                goto LABEL_56;
              }

              if (v46)
              {
                v26 = (v48 + 1);
                v27 = *(v11 + 50) + 8;
                while (1)
                {
                  v22 = re::DynamicString::operator!=(v27, v26);
                  if (v22)
                  {
                    goto LABEL_34;
                  }

                  v26 += 40;
                  v27 += 40;
                  if (!--v23)
                  {
                    goto LABEL_56;
                  }
                }
              }

LABEL_38:
              if (v46)
              {
                v30 = v48;
                v31 = 40 * v46;
                do
                {
                  v32 = v30[2];
                  if (v32)
                  {
                    v33 = v32 >> 1;
                  }

                  else
                  {
                    v33 = v32 >> 1;
                  }

                  if (v33 && *v30)
                  {
                    v34 = *re::traceLogObjects(v22);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v30[2])
                      {
                        v35 = v30[3];
                      }

                      else
                      {
                        v35 = v30 + 17;
                      }

                      v37 = *v30;
                      *v50 = 136315394;
                      *&v50[4] = v35;
                      v51 = 2048;
                      v52 = v37;
                      _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "TraceServer received App mode request: %s, %llu", v50, 0x16u);
                    }

                    v38 = *(v11 + 48);
                    if (v38 >= *(v11 + 47))
                    {
                      re::DynamicArray<re::TraceTargetAppInfo>::growCapacity(v11 + 46, v38 + 1);
                      v38 = *(v11 + 48);
                    }

                    v39 = (*(v11 + 50) + 40 * v38);
                    *v39 = *v30;
                    v22 = re::DynamicString::DynamicString((v39 + 1), (v30 + 1));
                    ++*(v11 + 48);
                    ++*(v11 + 98);
                  }

                  else
                  {
                    v36 = *re::traceLogObjects(v22);
                    v22 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                    if (v22)
                    {
                      *v50 = 0;
                      _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "TraceServer received App mode request with incorrect bundleID or peerID", v50, 2u);
                    }
                  }

                  v30 += 5;
                  v31 -= 40;
                }

                while (v31);
              }

              goto LABEL_56;
            }

            if (!v25)
            {
              goto LABEL_38;
            }
          }

LABEL_56:
          re::DynamicArray<re::SceneCompatibilityVariant>::deinit(v45);
          if (!v57)
          {
LABEL_61:
            re::OPackReader::Buffer::~Buffer(&v56);
            re::zerocopy::BufferedReadStream::~BufferedReadStream(v54);
            re::zerocopy::DispatchReadStream::~DispatchReadStream(v49);
            goto LABEL_62;
          }

          if (v61)
          {
            (*(*v57 + 40))();
          }

          v61 = 0;
          v58 = 0;
          v59 = 0;
          v57 = 0;
LABEL_60:
          ++v60;
          goto LABEL_61;
        }
      }
    }
  }

LABEL_62:
  if (a2)
  {
    v40 = 0;
  }

  else
  {
    v40 = a4;
  }

  if ((v40 & 1) == 0 && !a5)
  {
    v41 = *(a1 + 40);
    v42 = *(v11 + 31);
    buf[0] = MEMORY[0x1E69E9820];
    buf[1] = 0x40000000;
    buf[2] = ___ZN2re11TraceServer15scheduleReceiveEPS0_P13nw_connection_block_invoke;
    buf[3] = &__block_descriptor_tmp_15_2;
    buf[4] = v42;
    buf[5] = v41;
    nw_connection_receive_message(v41, buf);
  }
}

re::TraceServer *___ZN2re11TraceServer4sendERKNS_12TraceMessageEP13nw_connection_block_invoke(uint64_t a1)
{
  if (result)
  {
    v3 = *(result + 27);
    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 40);
      v6 = 8 * v3;
      for (i = *(result + 29); ; ++i)
      {
        v8 = *i;
        v9 = **i;
        if (v9 == v5)
        {
          break;
        }

        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }

      if (v4 == 2)
      {
        v10 = *(v8 + 33) - 1;
        *(v8 + 33) = v10;
        if (!v10)
        {
          if (v8[5])
          {
            re::TraceServer::send(result, (v8 + 1), v9);
            v8[18] = v8[2];

            return re::DynamicArray<re::TraceEntry>::clear((v8 + 3));
          }
        }
      }
    }
  }

  return result;
}

void re::TraceServer::NetworkClient::~NetworkClient(void **this)
{
  v2 = (this + 10);
  nw_release(*this);
  *this = 0;
  re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v2);
  re::DynamicArray<re::TraceEntry>::deinit((this + 3));
}

void *re::TraceDirectServer::trySendInitialDeltas(void *result, _BYTE *a2)
{
  if (*(result[1] + 32))
  {
    v3 = result;
    if (*(*result + 32))
    {
      if (a2[8] == 1)
      {
        (*(*a2 + 16))(a2);
        result = (*(*a2 + 16))(a2, *v3);
        a2[8] = 0;
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::TraceEntry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::TraceEntry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::TraceEntry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::TraceEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::TraceEntry>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::TraceEntry>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::TraceEntry>::setCapacity(result, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = v3[2];
    v14 = v3[4];
    if (v13)
    {
      v15 = &v12[4 * v13];
      do
      {
        v16 = *v12;
        *(v14 + 16) = *(v12 + 8);
        *v14 = v16;
        result = re::DynamicArray<BOOL>::operator=(v14 + 24, v12 + 3);
        v12 += 4;
        v14 += 64;
      }

      while (v12 != v15);
      v14 = v3[4];
      v13 = v3[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = (v4 << 6) - (v13 << 6);
      v18 = (v13 << 6) | 0x18;
      v19 = (v12 + v18);
      result = (v14 + v18);
      do
      {
        v20 = *(v19 - 3);
        *(result - 4) = *(v19 - 4);
        *(result - 3) = v20;
        v21 = re::DynamicArray<BOOL>::DynamicArray(result, v19);
        v19 += 8;
        result = (v21 + 64);
        v17 -= 64;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = &v7[4 * v4];
      do
      {
        v9 = *v7;
        *(v6 + 16) = *(v7 + 8);
        *v6 = v9;
        result = re::DynamicArray<BOOL>::operator=(v6 + 24, v7 + 3);
        v7 += 4;
        v6 += 64;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v10 = (v5 << 6) - (v4 << 6);
      v11 = v6 + (v4 << 6) + 24;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v11);
        v11 += 64;
        v10 -= 64;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::anonymous namespace::enableTraceValidation(re::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE1C4610, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1EE1C4610);
    if (v2)
    {
      __cxa_guard_release(&qword_1EE1C4610);
    }
  }

  return _MergedGlobals_570;
}

uint64_t re::anonymous namespace::enableTraceValidation(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("trace.validateTraces", a2, v6);
  if (LOBYTE(v6[0]))
  {
    v3 = BYTE1(v6[0]);
  }

  else
  {
    v3 = 0;
  }

  v4 = *re::traceLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "ValidateSnapshot enabled: %d", v6, 8u);
  }

  return v3 & 1;
}

uint64_t re::DynamicArray<re::TraceEntry>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::TraceEntry>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::TraceEntry>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::TraceDelta>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TraceDelta>::setCapacity(v5, a2);
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
        v10 = v8 + 56 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[6] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          *(v11 + 10) = 0;
          v12 = *(v8 + 16);
          v13 = *(v8 + 24);
          v14 = v8 + 16;
          v11[2] = v12;
          v11[3] = v13;
          *v14 = 0;
          *(v14 + 8) = 0;
          v15 = v11[4];
          v11[4] = *(v14 + 16);
          *(v14 + 16) = v15;
          v16 = v11[6];
          v11[6] = *(v14 + 32);
          *(v14 + 32) = v16;
          ++*(v14 + 24);
          ++*(v11 + 10);
          re::DynamicArray<re::TraceEntry>::deinit(v14);
          v11 += 7;
          v8 = v14 + 40;
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

void *re::DynamicArray<re::TraceTargetAppInfo>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TraceTargetAppInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 3) = 0u;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v13;
          *v12 = 0;
          v11[4] = v12[3];
          v12[3] = 0;
          v15 = v11[2];
          v14 = v11[3];
          v16 = v12[2];
          v11[2] = v12[1];
          v11[3] = v16;
          v12[1] = v15;
          v12[2] = v14;
          re::DynamicString::deinit(v12);
          v11 += 5;
          v8 = v12 + 4;
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

void re::TraceHistory::TraceHistory(re::TraceHistory *this)
{
  *this = 0x3E800000000;
  *(this + 4) = 0;
  *(this + 5) = re::s_nullDelegate;
  operator new();
}

uint64_t re::TraceHistory::setPersistence(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    *(a1 + 32) = a2;
    v5 = *(a1 + 24);
    *(v5 + 8) = 0;
    re::DynamicArray<re::TraceEntry>::clear(v5 + 16);
    (*(**(a1 + 32) + 64))(*(a1 + 32), *(a1 + 24));
    (*(**(a1 + 40) + 24))(*(a1 + 40), *(a1 + 24));
    (*(**(a1 + 32) + 88))(*(a1 + 32));
    v6 = *(**(a1 + 40) + 16);

    return v6();
  }

  return result;
}

void re::TraceHistory::~TraceHistory(re::TraceHistory *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v2 + 16);
    MEMORY[0x1E6906520](v2, 0x1020C4094B8BC74);
  }

  *(this + 1) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v3 + 16);
    MEMORY[0x1E6906520](v3, 0x1020C4094B8BC74);
  }

  *(this + 2) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v4 + 16);
    MEMORY[0x1E6906520](v4, 0x1020C4094B8BC74);
  }

  *(this + 3) = 0;
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 4) = 0;
}

re::TraceDelta **re::TraceHistory::addData(re::TraceDelta **this, const re::TraceDelta *a2)
{
  v2 = *a2;
  if ((v2 - 1) < 2)
  {
    return re::TraceHistory::addDelta(this, a2);
  }

  if (v2 == 4)
  {
    return re::TraceHistory::addMetadata(this, a2);
  }

  if (v2 == 3)
  {
    return re::TraceHistory::addSnapshot(this, a2);
  }

  return this;
}

uint64_t re::TraceHistory::addSnapshot(re::TraceHistory *this, const re::TraceDelta *a2)
{
  (*(**(this + 4) + 40))(*(this + 4), a2, 0);
  v4 = *(this + 2);
  *v4 = *a2;
  re::DynamicArray<re::TraceEntry>::operator=((v4 + 1), a2 + 2);
  v5 = *(this + 1);
  *(v5 + 8) = 0;
  re::DynamicArray<re::TraceEntry>::clear(v5 + 16);
  *this = 0;
  (*(**(this + 4) + 88))(*(this + 4));
  v6 = *(**(this + 5) + 16);

  return v6();
}

uint64_t re::TraceHistory::addDelta(re::TraceDelta **this, const re::TraceDelta *a2)
{
  re::TraceDelta::merge(this[1], a2);
  v3 = *(this + 1);
  v4 = *this + 1;
  *this = v4;
  if (v4 >= v3)
  {
    re::TraceDelta::merge(this[2], this[1]);
    v5 = this[1];
    *(v5 + 1) = 0;
    re::DynamicArray<re::TraceEntry>::clear(v5 + 16);
    *this = 0;
  }

  (*(*this[4] + 40))();
  (*(*this[4] + 88))(this[4]);
  v6 = *(*this[5] + 16);

  return v6();
}

uint64_t re::TraceHistory::addMetadata(re::TraceDelta **this, const re::TraceDelta *a2)
{
  re::TraceDelta::merge(this[3], a2);
  (*(*this[4] + 32))(this[4], this[3]);
  v3 = *(*this[5] + 24);

  return v3();
}

void re::TraceHistory::clear(re::TraceHistory *this)
{
  *this = 0;
  v2 = *(this + 1);
  *(v2 + 8) = 0;
  re::DynamicArray<re::TraceEntry>::clear(v2 + 16);
  v3 = *(this + 2);
  *(v3 + 8) = 0;
  re::DynamicArray<re::TraceEntry>::clear(v3 + 16);
  operator new();
}

uint64_t *re::traceLogObjects(re *this)
{
  {
    re::traceLogObjects(void)::logObjects = os_log_create("com.apple.re", "Trace");
  }

  return &re::traceLogObjects(void)::logObjects;
}

uint64_t re::TraceDeltaWriter::writeDelta(re::zerocopy ***this, const re::TraceDelta *a2)
{
  v4 = *this;
  v9 = -29;
  re::zerocopy::writeAll(*v4, &v9, 1);
  v5 = *this;
  v10 = 8;
  re::zerocopy::writeAll(*v5, &v10, 1);
  re::OPackWriter::writeInteger(*this, *a2);
  v6 = *this;
  v11 = 9;
  re::zerocopy::writeAll(*v6, &v11, 1);
  re::OPackWriter::writeFloat64(*this, *(a2 + 1));
  v7 = *this;
  v12 = 10;
  re::zerocopy::writeAll(*v7, &v12, 1);

  return re::TraceDeltaWriter::writeEntries(this, a2 + 16);
}

uint64_t re::TraceDeltaWriter::writeEntries(re::zerocopy ***a1, uint64_t a2)
{
  result = re::OPackWriter::writeArrayBegin(*a1, *(a2 + 16));
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = v5 << 6;
    do
    {
      result = re::TraceDeltaWriter::writeEntry(a1, v6);
      v6 += 64;
      v7 -= 64;
    }

    while (v7);
    if (*(a2 + 16) >= 0xFuLL)
    {
      v8 = *a1;
      v9 = 3;
      return re::zerocopy::writeAll(*v8, &v9, 1);
    }
  }

  return result;
}

uint64_t re::TraceDeltaWriter::writeEntry(re::zerocopy ***a1, uint64_t a2)
{
  v4 = *a1;
  v14 = -27;
  re::zerocopy::writeAll(*v4, &v14, 1);
  v5 = *a1;
  v15 = 8;
  re::zerocopy::writeAll(*v5, &v15, 1);
  re::OPackWriter::writeInteger(*a1, *a2);
  v6 = *a1;
  v16 = 9;
  re::zerocopy::writeAll(*v6, &v16, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 8));
  v7 = *a1;
  v17 = 10;
  re::zerocopy::writeAll(*v7, &v17, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 16));
  v8 = *a1;
  v18 = 11;
  re::zerocopy::writeAll(*v8, &v18, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 17));
  v9 = *a1;
  v19 = 12;
  re::zerocopy::writeAll(*v9, &v19, 1);
  v10 = *a1;
  v11 = *(a2 + 56);
  v12 = *(a2 + 40);

  return re::OPackWriter::writeData(v10, v11, v12);
}

uint64_t re::TraceDeltaReader::read(re::OPackReader **this, re::TraceDelta *a2)
{
  v4 = *this;
  result = re::OPackReader::next(*this, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v7 = *this;
      if (re::OPackReader::next(*this, v6))
      {
        while (*(v7 + 196) == 6)
        {
          v9 = *(v7 + 224);
          if (v9 == 2)
          {
            v12 = *this;
            result = re::OPackReader::next(*this, v8);
            if (!result)
            {
              return result;
            }

            if (*(v12 + 196) != 12)
            {
              return 0;
            }

            while (re::OPackReader::next(*this, v13) && *(*this + 184) != 3)
            {
              v21 = 0;
              v18 = 0;
              v19 = 0;
              v17 = 0;
              v20 = 0;
              v15 = 0uLL;
              v16 = 0;
              v14 = re::DynamicArray<re::TraceEntry>::add((a2 + 16), &v15);
              if (v17)
              {
                if (v21)
                {
                  (*(*v17 + 40))(v14);
                }
              }

              *(*this + 2) = 1;
              if ((re::TraceDeltaReader::read(this, *(a2 + 6) + (*(a2 + 4) << 6) - 64) & 1) == 0)
              {
                return 0;
              }
            }
          }

          else if (v9 == 1)
          {
            v11 = *this;
            result = re::OPackReader::next(*this, v8);
            if (!result)
            {
              return result;
            }

            if (*(v11 + 196) != 8)
            {
              return 0;
            }

            *(a2 + 1) = *(v11 + 28);
          }

          else if (!*(v7 + 224))
          {
            v10 = *this;
            result = re::OPackReader::next(*this, v8);
            if (!result)
            {
              return result;
            }

            if (*(v10 + 196) != 6)
            {
              return 0;
            }

            *a2 = *(v10 + 28);
          }

          v7 = *this;
          if ((re::OPackReader::next(*this, v8) & 1) == 0)
          {
            return *(*this + 184) == 5;
          }
        }
      }

      return *(*this + 184) == 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::TraceDeltaReader::read(re::OPackReader **a1, uint64_t a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v7 = *a1;
      if (re::OPackReader::next(*a1, v6))
      {
        while (*(v7 + 196) == 6)
        {
          result = 0;
          v9 = *(v7 + 224);
          if (v9 <= 1)
          {
            if (*(v7 + 224))
            {
              if (v9 != 1)
              {
                return result;
              }

              v12 = *a1;
              result = re::OPackReader::next(*a1, v8);
              if (!result)
              {
                return result;
              }

              if (*(v12 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 8) = *(v12 + 28);
            }

            else
            {
              v14 = *a1;
              result = re::OPackReader::next(*a1, v8);
              if (!result)
              {
                return result;
              }

              if (*(v14 + 196) != 6)
              {
                return 0;
              }

              *a2 = *(v14 + 28);
            }
          }

          else
          {
            switch(v9)
            {
              case 2u:
                v15 = *a1;
                result = re::OPackReader::next(*a1, v8);
                if (!result)
                {
                  return result;
                }

                if (*(v15 + 196) != 6)
                {
                  return 0;
                }

                *(a2 + 16) = *(v15 + 28);
                break;
              case 3u:
                v13 = *a1;
                result = re::OPackReader::next(*a1, v8);
                if (!result)
                {
                  return result;
                }

                if (*(v13 + 196) != 6)
                {
                  return 0;
                }

                *(a2 + 17) = *(v13 + 28);
                break;
              case 4u:
                v10 = *a1;
                result = re::OPackReader::next(*a1, v8);
                if (!result)
                {
                  return result;
                }

                if (*(v10 + 196) != 11)
                {
                  return 0;
                }

                re::DynamicArray<unsigned char>::resizeUninitialized((a2 + 24), *(*a1 + 27));
                memcpy(*(a2 + 56), *(*a1 + 26), *(*a1 + 27));
                break;
              default:
                return result;
            }
          }

          v7 = *a1;
          if ((re::OPackReader::next(*a1, v11) & 1) == 0)
          {
            return *(*a1 + 184) == 5;
          }
        }
      }

      return *(*a1 + 184) == 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::TraceTargetAppInfoWriter::write(re::zerocopy ***a1, uint64_t a2)
{
  result = re::OPackWriter::writeArrayBegin(*a1, *(a2 + 16));
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = v6 + 40 * v5;
    v8 = v6 + 17;
    do
    {
      v9 = *a1;
      v18 = -30;
      re::zerocopy::writeAll(*v9, &v18, 1);
      v10 = *a1;
      v19 = 8;
      re::zerocopy::writeAll(*v10, &v19, 1);
      v11 = v8 - 17;
      re::OPackWriter::writeInteger(*a1, *(v8 - 17));
      v12 = *a1;
      v20 = 9;
      re::zerocopy::writeAll(*v12, &v20, 1);
      v13 = *(v8 - 1);
      v14 = v8;
      if (v13)
      {
        v14 = *(v8 + 7);
        v15 = v13 >> 1;
      }

      else
      {
        v15 = v13 >> 1;
      }

      result = re::OPackWriter::writeString(*a1, v14, v15);
      v8 += 40;
    }

    while (v11 + 40 != v7);
    if (*(a2 + 16) >= 0xFuLL)
    {
      v16 = *a1;
      v17 = 3;
      return re::zerocopy::writeAll(*v16, &v17, 1);
    }
  }

  return result;
}

BOOL re::TraceTargetAppInfoReader::read(re::OPackReader **a1, _anonymous_namespace_ *a2)
{
  v4 = *a1;
  if (!re::OPackReader::next(*a1, a2) || *(v4 + 196) != 12)
  {
    return 0;
  }

  v6 = re::OPackReader::next(*a1, v5);
  v7 = *a1;
  if (!v6)
  {
    return *(v7 + 184) == 3;
  }

  while (1)
  {
    v8 = *(v7 + 184);
    v9 = v8 == 3;
    if (v8 == 3)
    {
      return v9;
    }

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    re::DynamicString::setCapacity(&v22 + 1, 0);
    v11 = re::DynamicArray<re::TraceTargetAppInfo>::add(a2, &v22);
    if (*(&v22 + 1) && (v23 & 1) != 0)
    {
      (*(**(&v22 + 1) + 40))(v11);
    }

    v12 = *a1;
    *(v12 + 2) = 1;
    if (!re::OPackReader::next(v12, v10) || *(v12 + 196) != 13)
    {
      return v9;
    }

    v14 = *a1;
    if (re::OPackReader::next(*a1, v13))
    {
      while (*(v14 + 196) == 6)
      {
        if (*(v14 + 224) == 1)
        {
          v20 = *a1;
          if (!re::OPackReader::next(*a1, v15) || *(v20 + 196) != 10)
          {
            return 0;
          }

          re::DynamicString::assign((*(a2 + 4) + 40 * *(a2 + 2) - 32), *(*a1 + 26), *(*a1 + 27));
        }

        else
        {
          if (*(v14 + 224))
          {
            return 0;
          }

          v16 = *a1;
          v17 = *(a2 + 4);
          v18 = *(a2 + 2);
          if (!re::OPackReader::next(*a1, v15) || *(v16 + 196) != 6)
          {
            return 0;
          }

          *(v17 + 40 * v18 - 40) = *(v16 + 28);
        }

        v14 = *a1;
        if ((re::OPackReader::next(*a1, v19) & 1) == 0)
        {
          break;
        }
      }
    }

    v6 = re::OPackReader::next(*a1, v15);
    v7 = *a1;
    if ((v6 & 1) == 0)
    {
      return *(v7 + 184) == 3;
    }
  }
}

double re::DynamicArray<re::TraceTargetAppInfo>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TraceTargetAppInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = *a2;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 32) = a2[4];
  v7 = a2[2];
  *(v5 + 8) = a2[1];
  a2[1] = 0;
  v8 = a2[3];
  a2[4] = 0;
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  *(v5 + 16) = v7;
  *(v5 + 24) = v8;
  a2[2] = v10;
  a2[3] = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::TraceDump::dump(re::zerocopy **this, const re::TraceDelta *a2)
{
  result = re::zerocopy::writeAll(*this, "delta\n", 6);
  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = *(a2 + 6);
    v7 = v5 << 6;
    do
    {
      result = re::TraceDump::dump(this, v6);
      v6 += 8;
      v7 -= 64;
    }

    while (v7);
  }

  return result;
}

uint64_t re::TraceDump::dump(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    return re::TraceDump::dumpChild(a1, a2);
  }

  else
  {
    return re::TraceDump::dumpParent(a1, a2);
  }
}

uint64_t re::TraceDump::dumpChild(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2 != *(a1 + 88))
  {
    *(a1 + 88) = v4;
    re::zerocopy::writeAll(*a1, "  +-- ", 6);
    v5 = (*(**(a1 + 8) + 8))(*(a1 + 8), v4);
    v6 = strlen(v5);
    re::zerocopy::writeAll(*a1, v5, v6);
    re::zerocopy::writeAll(*a1, "\n", 1);
  }

  re::zerocopy::writeAll(*a1, "    +-- ", 8);
  v7 = (***(a1 + 8))(*(a1 + 8), a2[1]);
  v8 = strlen(v7);
  re::zerocopy::writeAll(*a1, v7, v8);
  re::zerocopy::writeAll(*a1, " ", 1);
  v9 = *(a2 + 16);
  if (v9 > 3)
  {
    v10 = "???";
  }

  else
  {
    v10 = *(&off_1E8721F48 + v9);
  }

  v11 = strlen(v10);
  re::zerocopy::writeAll(*a1, v10, v11);
  if (*(a1 + 97) == 1 && a2[5])
  {
    re::zerocopy::writeAll(*a1, " ", 1);
    re::zerocopy::writeAll(*a1, a2[7], a2[5]);
  }

  v12 = *a1;

  return re::zerocopy::writeAll(v12, "\n", 1);
}

uint64_t re::TraceDump::dumpParent(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *a2;
  re::zerocopy::writeAll(*a1, "  +-- ", 6);
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8), *a2);
  v5 = strlen(v4);
  re::zerocopy::writeAll(*a1, v4, v5);
  re::zerocopy::writeAll(*a1, " ", 1);
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v7 = "???";
  }

  else
  {
    v7 = *(&off_1E8721F48 + v6);
  }

  v8 = strlen(v7);
  re::zerocopy::writeAll(*a1, v7, v8);
  if (*(a1 + 96) == 1 && *(a2 + 40))
  {
    re::zerocopy::writeAll(*a1, " ", 1);
    re::zerocopy::writeAll(*a1, *(a2 + 56), *(a2 + 40));
  }

  v9 = *a1;

  return re::zerocopy::writeAll(v9, "\n", 1);
}

void *re::allocInfo_TraceService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_571, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_571))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4620, "TraceService");
    __cxa_guard_release(&_MergedGlobals_571);
  }

  return &unk_1EE1C4620;
}

void re::initInfo_TraceService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3DE7F4E91F7F73A0;
  v6[1] = "TraceService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_TraceService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

id re::TraceFramer::definition(re::TraceFramer *this)
{
  v2 = &re::introspect_BOOL(BOOL)::info;
  {
    v2 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::TraceFramer::definition(void)::definition = re::TraceFramer::create(v5);
      v2 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  v3 = v2[161];

  return v3;
}

nw_protocol_definition_t re::TraceFramer::create(re::TraceFramer *this)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2re11TraceFramer6createEv_block_invoke_9;
  v4[3] = &unk_1E8721FF8;
  v5 = &__block_literal_global_56;
  v6 = &__block_literal_global_7_1;
  v1 = _Block_copy(v4);
  definition = nw_framer_create_definition("re-trace-header", 0, v1);

  return definition;
}

uint64_t ___ZN2re11TraceFramer6createEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  while (1)
  {
    *temp_buffer = 0;
    if (!nw_framer_parse_input(v2, 8uLL, 8uLL, temp_buffer, &__block_literal_global_3))
    {
      break;
    }

    v3 = nw_framer_message_create(v2);
    nw_framer_message_set_value(v3, "type", temp_buffer[4], 0);
    v4 = nw_framer_deliver_input_no_copy(v2, bswap32(*temp_buffer), v3, 1);

    if (!v4)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  v5 = 8;
LABEL_6:

  return v5;
}

uint64_t ___ZN2re11TraceFramer6createEv_block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 8 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

void ___ZN2re11TraceFramer6createEv_block_invoke_3(uint64_t a1, void *a2, NSObject *a3, size_t a4)
{
  v6 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  access_value[0] = MEMORY[0x1E69E9820];
  access_value[1] = 3221225472;
  access_value[2] = ___ZN2re11TraceFramer6createEv_block_invoke_4;
  access_value[3] = &unk_1E8721FD0;
  access_value[4] = &v12;
  v7 = nw_framer_message_access_value(a3, "type", access_value);
  if (v7)
  {
    v9 = bswap32(a4);
    v10 = *(v13 + 24);
    nw_framer_write_output(v6, &v9, 8uLL);
    nw_framer_write_output_no_copy(v6, a4);
  }

  else
  {
    v8 = *re::traceLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "TraceFramer: Could not access TraceMessageType of output message.", &v9, 2u);
    }
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t ___ZN2re11TraceFramer6createEv_block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  nw_framer_set_input_handler(v4, v3);
  nw_framer_set_output_handler(v4, *(a1 + 40));

  return 1;
}

void re::TraceFramer::setMessageType(re::TraceFramer *a1, unsigned int a2)
{
  v4 = re::TraceFramer::definition(a1);
  message = nw_framer_protocol_create_message(v4);

  nw_framer_message_set_value(message, "type", a2, &__block_literal_global_14_4);
  nw_content_context_set_metadata_for_protocol(a1, message);
}

void re::TraceFramer::messageType(re::TraceFramer *this@<X0>, _BYTE *a2@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = re::TraceFramer::definition(this);
  v6 = nw_content_context_copy_protocol_metadata(this, v5);

  if (!v6 || !(is_framer_message = nw_protocol_metadata_is_framer_message(v6)))
  {
    v10 = *re::traceLogObjects(is_framer_message);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      v11 = "TraceFramer: Could not get framer message from context.";
      goto LABEL_11;
    }

LABEL_6:
    *a2 = 0;
    goto LABEL_7;
  }

  access_value[0] = MEMORY[0x1E69E9820];
  access_value[1] = 3221225472;
  access_value[2] = ___ZN2re11TraceFramer11messageTypeEPv_block_invoke;
  access_value[3] = &unk_1E8721FD0;
  access_value[4] = &v14;
  v8 = nw_framer_message_access_value(v6, "type", access_value);
  if (!v8)
  {
    v10 = *re::traceLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      v11 = "TraceFramer: Could not get TraceMessageType from the framer message.";
LABEL_11:
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v9 = v15;
  *a2 = 1;
  a2[1] = *(v9 + 24);
LABEL_7:

  _Block_object_dispose(&v14, 8);
}

NSObject **re::TraceClient::TraceClient(NSObject **a1, dispatch_queue_t target)
{
  v3 = dispatch_queue_create_with_target_V2("trace client", 0, target);
  *a1 = v3;
  a1[1] = 0;
  *(a1 + 4) = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 10) = 1;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
  *(a1 + 18) = 0;
  a1[10] = 0;
  a1[11] = re::s_nullClientDelegate;
  re::TraceClient::initParameters(a1);
  return a1;
}

void re::TraceClient::initParameters(re::TraceClient *this)
{
  v2 = MEMORY[0x1E69075D0]();
  v3 = *(this + 3);
  *(this + 3) = v2;

  stack = nw_parameters_copy_default_protocol_stack(*(this + 3));
  v4 = MEMORY[0x1E6907640]();
  nw_protocol_stack_set_transport_protocol(stack, v4);

  v6 = re::TraceFramer::definition(v5);
  options = nw_framer_create_options(v6);

  nw_protocol_stack_prepend_application_protocol(stack, options);
}

void re::TraceClient::~TraceClient(re::TraceClient *this)
{
  re::TraceClient::forceCancel(this);
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 48);
}

void re::TraceClient::forceCancel(re::TraceClient *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 4) != 5)
    {
      nw_connection_force_cancel(v2);
      v2 = *(this + 1);
    }

    *(this + 1) = 0;
  }
}

void re::TraceClient::addTargetApp(re::TraceClient *this, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v7 = a3;
    v5 = re::DynamicArray<re::TraceTargetAppInfo>::add((this + 48), &v7);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))(v5);
      }
    }
  }

  else
  {
    v6 = *re::traceLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "TraceClient: Invalid app bundleID or peerID", &v7, 2u);
    }
  }
}

void re::TraceClient::connect(nw_parameters_t *this, const char *a2, const char *a3)
{
  re::TraceClient::disconnect(this);
  re::TraceClient::forceCancel(this);
  host = nw_endpoint_create_host(a2, a3);
  v7 = this[4];
  this[4] = host;

  v8 = nw_connection_create(this[4], this[3]);
  v9 = this[1];
  this[1] = v8;

  re::TraceClient::startConnection(this);
}

void re::TraceClient::disconnect(re::TraceClient *this)
{
  v2 = *(this + 1);
  if (v2 && *(this + 4) != 5)
  {
    nw_connection_send(v2, 0, *MEMORY[0x1E6977E98], 1, *MEMORY[0x1E6977E80]);
    nw_connection_cancel(*(this + 1));

    re::DynamicArray<re::SceneCompatibilityVariant>::clear(this + 48);
  }
}

void re::TraceClient::startConnection(id *this)
{
  v2 = *this;
  v3 = this[1];
  nw_connection_set_queue(this[1], *this);
  v4 = this[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN2re11TraceClient15startConnectionEv_block_invoke;
  v7[3] = &unk_1E8722040;
  v8 = v2;
  v9 = v3;
  v5 = v3;
  v6 = v2;
  nw_connection_set_state_changed_handler(v4, v7);
  nw_connection_start(this[1]);
}

void re::TraceClient::connectWithFileHandle(re::TraceClient *this)
{
  re::TraceClient::disconnect(this);
  re::TraceClient::forceCancel(this);
  v2 = nw_connection_create_with_connected_socket_and_parameters();
  v3 = *(this + 1);
  *(this + 1) = v2;

  re::TraceClient::startConnection(this);
}

void ___ZN2re11TraceClient15startConnectionEv_block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (specific)
  {
    v7 = specific;
    v8 = *(a1 + 40);
    v9 = a3;
    v10 = v9;
    if (v7[1] != v8)
    {
LABEL_3:

      goto LABEL_6;
    }

    v12 = *re::traceLogObjects(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      *buf = 136315138;
      *&buf[4] = nw_connection_state_to_string();
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "TraceClient connection state = %s", buf, 0xCu);
    }

    v14 = *(v7 + 4);
    *(v7 + 4) = a2;
    if (a2 > 3)
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          if (v14 != 4)
          {
            (*(v7[11]->isa + 5))(v7[11]);
          }

          v21 = v7[1];
          v7[1] = 0;
        }

        goto LABEL_3;
      }

      (*(v7[11]->isa + 5))(v7[11]);
    }

    else if (a2 != 1)
    {
      if (a2 != 3)
      {
        goto LABEL_3;
      }

      (*(v7[11]->isa + 2))(v7[11]);
      if (v7[8])
      {
        if (!v7[1] || *(v7 + 4) == 5)
        {
LABEL_20:
          re::TraceClient::scheduleReceive(v7, v15);
          goto LABEL_3;
        }

        *buf = &unk_1F5D0CAE0;
        *&buf[8] = 0u;
        memset(v25, 0, 24);
        re::zerocopy::DispatchWriteStream::clear(buf);
        *(v25 + 8) = vdupq_n_s64(0x1000uLL);
        *&buf[16] = dispatch_data_create_alloc();
        v22 = &v23;
        v23 = buf;
        re::TraceTargetAppInfoWriter::write(&v22, (v7 + 6));
        re::zerocopy::DispatchWriteStream::mergeTail(buf);
        v16 = *&buf[8];
        *&buf[8] = 0;
        re::zerocopy::DispatchWriteStream::clear(buf);
        *buf = &unk_1F5D0CAE0;
        re::zerocopy::DispatchWriteStream::clear(buf);
        v17 = nw_content_context_create("re-trace");
        re::TraceFramer::setMessageType(v17, 4u);
        nw_connection_send(v7[1], v16, v17, 1, &__block_literal_global_5_2);
      }

      if (v7[1])
      {
        if (*(v7 + 4) != 5)
        {
          v18 = *(v7 + 10);
          *buf = &unk_1F5D0CAE0;
          *&buf[8] = 0u;
          memset(v25, 0, 24);
          re::zerocopy::DispatchWriteStream::clear(buf);
          *(v25 + 8) = vdupq_n_s64(0x20uLL);
          *&buf[16] = dispatch_data_create_alloc();
          v23 = buf;
          re::OPackWriter::writeInteger(&v23, v18);
          re::zerocopy::DispatchWriteStream::mergeTail(buf);
          v19 = *&buf[8];
          *&buf[8] = 0;
          re::zerocopy::DispatchWriteStream::clear(buf);
          *buf = &unk_1F5D0CAE0;
          re::zerocopy::DispatchWriteStream::clear(buf);
          v20 = nw_content_context_create("re-trace");
          re::TraceFramer::setMessageType(v20, 1u);
          nw_connection_send(v7[1], v19, v20, 1, &__block_literal_global_57);
        }
      }

      goto LABEL_20;
    }

    re::TraceClient::disconnect(v7);
    goto LABEL_3;
  }

  v11 = *re::traceLogObjects(0);
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  v8 = v11;
  *buf = 136315138;
  *&buf[4] = nw_connection_state_to_string();
  _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "TraceClient: connection state changed (%s) for detached connection", buf, 0xCu);
LABEL_6:
}

void re::TraceClient::scheduleReceive(id *this, re::TraceClient *a2)
{
  v3 = *this;
  v4 = this[1];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = ___ZN2re11TraceClient15scheduleReceiveEPS0__block_invoke;
  completion[3] = &unk_1E8722068;
  v7 = v3;
  v5 = v3;
  nw_connection_receive_message(v4, completion);
}

void ___ZN2re11TraceClient15scheduleReceiveEPS0__block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (specific)
  {
    v14 = specific;
    if (v9 && v10)
    {
      re::TraceFramer::messageType(v10, v19);
      if (v19[0] == 1)
      {
        v15 = v19[1];
        v16 = v9;
        v17 = v16;
        if (v15 == 3)
        {
          LODWORD(v21[0]) = 0;
          memset(v20, 0, sizeof(v20));
          *(v21 + 4) = 0x7FFFFFFFLL;
          re::zerocopy::DispatchReadStream::DispatchReadStream(v23, v17);
          re::OPackReader::OPackReader(buf, v23);
          v22 = buf;
          if (re::TransferReportReader::read(&v22, v20))
          {
            (*(**(v14 + 11) + 32))(*(v14 + 11), v20);
          }

          if (v27)
          {
            if (v31)
            {
              (*(*v27 + 40))(v27);
            }

            v31 = 0;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            ++v30;
          }

          re::OPackReader::Buffer::~Buffer(v26);
          re::zerocopy::BufferedReadStream::~BufferedReadStream(v25);
          re::zerocopy::DispatchReadStream::~DispatchReadStream(v23);
          re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(&v20[1]);
        }

        else if (v15 == 2)
        {
          LOBYTE(v20[0]) = 0;
          v21[0] = 0;
          memset(v20 + 8, 0, 36);
          re::zerocopy::DispatchReadStream::DispatchReadStream(v23, v16);
          re::OPackReader::OPackReader(buf, v23);
          v22 = buf;
          if (re::TraceDeltaReader::read(&v22, v20))
          {
            (*(**(v14 + 11) + 24))(*(v14 + 11), v20);
          }

          if (v27)
          {
            if (v31)
            {
              (*(*v27 + 40))(v27);
            }

            v31 = 0;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            ++v30;
          }

          re::OPackReader::Buffer::~Buffer(v26);
          re::zerocopy::BufferedReadStream::~BufferedReadStream(v25);
          re::zerocopy::DispatchReadStream::~DispatchReadStream(v23);
          re::DynamicArray<re::TraceEntry>::deinit(&v20[1]);
        }

        else
        {
          v18 = *re::traceLogObjects(v16);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 67109120;
            buf[1] = v15;
            _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "TraceClient received unexpected TraceMessageType: %hhu", buf, 8u);
          }
        }
      }

      goto LABEL_27;
    }

    if (v9 || !a4)
    {
LABEL_27:
      re::TraceClient::scheduleReceive(v14, v13);
      goto LABEL_28;
    }

    re::TraceClient::disconnect(specific);
  }

LABEL_28:
}

FILE *re::TraceClientDelegateNone::clientLoadedDelta(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9858];
  v7 = &unk_1F5D0C9A0;
  v8 = v1;
  v9 = 0;
  v4[0] = &v7;
  v4[1] = v5;
  v5[0] = &unk_1F5D1A050;
  v5[9] = 0;
  v6 = 257;
  re::TraceDump::dump(v4, v2);
  v7 = &unk_1F5D0C9A0;
  result = v8;
  if (v8)
  {
    if (v9 == 1)
    {
      return fclose(v8);
    }
  }

  return result;
}

uint64_t re::TracePersistenceUtils::copyAll(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v27 = 0;
  memset(&v25[8], 0, 32);
  v26 = 0;
  v6 = (*(*a2 + 64))(a2, v25);
  if (v6)
  {
    (*(*a1 + 16))(a1);
    (*(*a1 + 72))(a1);
    (*(*a1 + 32))(a1, v25);
    (*(*a2 + 88))(a2);
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v22[0] = 0;
      v24 = 0;
      memset(&v22[8], 0, 32);
      v23 = 0;
      v10 = (*(*a2 + 48))(a2, v9, v22);
      v19[0] = 0;
      v21 = 0;
      memset(&v19[8], 0, 32);
      v20 = 0;
      v11 = (*(*a2 + 56))(a2, v9, v19);
      v12 = v11;
      if (!v10)
      {
        break;
      }

      v13 = *(a3 + 32);
      if (v13)
      {
        (*(*v13 + 16))(v13, v22);
      }

      if (v12)
      {
        goto LABEL_9;
      }

      v14 = 0;
      v15 = v22;
LABEL_15:
      (*(*a1 + 40))(a1, v15, v14);
LABEL_16:
      re::DynamicArray<re::TraceEntry>::deinit(&v19[16]);
      re::DynamicArray<re::TraceEntry>::deinit(&v22[16]);
      if (++v9 > v8)
      {
        (*(*a1 + 24))(a1);
        goto LABEL_20;
      }
    }

    if (!v11)
    {
      v17 = *re::traceLogObjects(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = v9;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Frame %zu contains neither snapshot nor delta. Skipping", buf, 0xCu);
      }

      goto LABEL_16;
    }

LABEL_9:
    v16 = *(a3 + 32);
    if (v16)
    {
      (*(*v16 + 16))(v16, v19);
    }

    if (v10)
    {
      v15 = v22;
    }

    else
    {
      v15 = 0;
    }

    v14 = v19;
    goto LABEL_15;
  }

LABEL_20:
  re::DynamicArray<re::TraceEntry>::deinit(&v25[16]);
  return v6;
}

void re::TracePersistenceSqlite::~TracePersistenceSqlite(sqlite3_stmt **this)
{
  *this = &unk_1F5D1A1C0;
  if (this[2])
  {
    sqlite3_finalize(this[3]);
    this[3] = 0;
    sqlite3_finalize(this[4]);
    this[4] = 0;
    sqlite3_finalize(this[5]);
    this[5] = 0;
    sqlite3_finalize(this[6]);
    this[6] = 0;
    sqlite3_close(this[2]);
    this[2] = 0;
  }
}

{
  re::TracePersistenceSqlite::~TracePersistenceSqlite(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::TracePersistenceSqlite::createFile(sqlite3 **this, const char *filename)
{
  if (sqlite3_open_v2(filename, this + 2, 6, 0))
  {
    return 0;
  }

  result = re::TracePersistenceSqlite::createTables(this);
  if (result)
  {
    result = re::TracePersistenceSqlite::createStatements(this);
    if (result)
    {
      (*(*this + 9))(this);
      return 1;
    }
  }

  return result;
}

uint64_t re::TracePersistenceSqlite::add(sqlite3_stmt **this, const re::TraceDelta *a2, const re::TraceDelta *a3, int a4)
{
  v5 = a3;
  if (a2)
  {
    if (v15 && v19)
    {
      (*(*v15 + 40))();
    }

    if (!v5)
    {
      LOBYTE(v15) = 1;
      v20 = 0;
      v17 = 0;
      *v18 = 0;
      v5 = a2;
      v16 = 0;
LABEL_11:
      v9 = *(v5 + 1);
      v8 = v21[0];
      goto LABEL_12;
    }

LABEL_8:
    if (v14[0] && v14[4])
    {
      (*(*v14[0] + 40))();
    }

    goto LABEL_11;
  }

  v8 = 1;
  v21[0] = 1;
  v25 = 0;
  v23 = 0;
  *n = 0;
  v22 = 0;
  if (a3)
  {
    goto LABEL_8;
  }

  LOBYTE(v15) = 1;
  v20 = 0;
  v17 = 0;
  *v18 = 0;
  v9 = 0.0;
  v16 = 0;
LABEL_12:
  sqlite3_bind_int(this[3], 1, a4);
  sqlite3_bind_double(this[3], 2, v9);
  v10 = this[3];
  if (v8)
  {
    sqlite3_bind_blob(v10, 3, v25, n[0], 0);
  }

  else
  {
    sqlite3_bind_null(v10, 3);
  }

  v11 = v15;
  v12 = this[3];
  if (v15 == 1)
  {
    sqlite3_bind_blob(v12, 4, v20, v18[0], 0);
  }

  else
  {
    sqlite3_bind_null(v12, 4);
  }

  sqlite3_step(this[3]);
  sqlite3_reset(this[3]);
  sqlite3_bind_null(this[3], 3);
  sqlite3_bind_null(this[3], 4);
  if (v11 && v16 && v20)
  {
    (*(*v16 + 40))();
  }

  if ((v8 & 1) != 0 && v22 && v25)
  {
    (*(*v22 + 40))();
  }

  return 1;
}

uint64_t re::anonymous namespace::toOpack(re::_anonymous_namespace_ *this, const re::TraceDelta *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  re::DynamicArray<BOOL>::setCapacity(this, 0x1000uLL);
  v7[0] = &unk_1F5D0C9F0;
  v7[1] = this;
  v6 = v7;
  v5 = &v6;
  return re::TraceDeltaWriter::writeDelta(&v5, a2);
}

uint64_t re::TracePersistenceSqlite::saveFrame(re::TracePersistenceSqlite *this, const re::TraceDelta *a2, const re::TraceDelta *a3)
{
  result = re::TracePersistenceSqlite::add(this, a2, a3, *(this + 2));
  ++*(this + 2);
  return result;
}

uint64_t re::TracePersistenceSqlite::loadSnapshotFromRow(sqlite3_stmt **this, int a2, re::TraceDelta *a3)
{
  sqlite3_reset(this[4]);
  sqlite3_bind_int(this[4], 1, a2);
  if (sqlite3_step(this[4]) != 100)
  {
    return 0;
  }

  sqlite3_column_blob(this[4], 1);
  if (sqlite3_column_bytes(this[4], 1) < 1)
  {
    return 0;
  }

  if (v9[0] != 1)
  {
    return 0;
  }

  v6 = v12;
  if (v10 && v6)
  {
    (*(*v10 + 40))();
  }

  return v7;
}

uint64_t re::anonymous namespace::fromOpack(uint64_t a1, uint64_t a2, re::TraceDelta *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5D0CA98;
  v7[1] = a2;
  v7[2] = a2;
  v7[3] = a2 + a1;
  re::OPackReader::OPackReader(v8, v7);
  v6 = v8;
  v4 = re::TraceDeltaReader::read(&v6, a3);
  if (v11)
  {
    if (v15)
    {
      (*(*v11 + 40))();
    }

    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    ++v14;
  }

  re::OPackReader::Buffer::~Buffer(&v10);
  re::zerocopy::BufferedReadStream::~BufferedReadStream(&v9);
  return v4;
}

uint64_t re::TracePersistenceSqlite::loadDelta(sqlite3_stmt **this, int a2, re::TraceDelta *a3)
{
  sqlite3_reset(this[5]);
  sqlite3_bind_int(this[5], 1, a2);
  if (sqlite3_step(this[5]) != 100)
  {
    return 0;
  }

  sqlite3_column_blob(this[5], 1);
  if (sqlite3_column_bytes(this[5], 1) < 1)
  {
    return 0;
  }

  if (v9[0] != 1)
  {
    return 0;
  }

  v6 = v12;
  if (v10 && v6)
  {
    (*(*v10 + 40))();
  }

  return v7;
}

uint64_t re::TracePersistenceSqlite::truncate(sqlite3 **this)
{
  result = sqlite3_exec(this[2], "DELETE FROM rk_frames", 0, 0, 0);
  *(this + 2) = 0;
  return result;
}

uint64_t re::TracePersistenceSqlite::findSnapshot(sqlite3_stmt **this, int a2)
{
  sqlite3_reset(this[6]);
  sqlite3_bind_int(this[6], 1, a2);
  if (sqlite3_step(this[6]) == 100)
  {
    return sqlite3_column_int(this[6], 0);
  }

  else
  {
    return -1;
  }
}

uint64_t re::anonymous namespace::performCompression(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v34 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0uLL;
  v15 = 0;
  v17 = 0;
  re::DynamicArray<BOOL>::setCapacity(&v15, 0x8000uLL);
  memset(&stream, 0, sizeof(stream));
  compression_stream_init(&stream, v3, COMPRESSION_LZFSE);
  stream.src_ptr = v7;
  stream.src_size = v5;
  while (1)
  {
    stream.dst_ptr = __src;
    stream.dst_size = 0x8000;
    v9 = compression_stream_process(&stream, 1);
    if (v9 > COMPRESSION_STATUS_END)
    {
      break;
    }

    v10 = stream.dst_ptr - __src;
    v11 = *(&v16 + 1);
    re::DynamicArray<BOOL>::resize(&v15, stream.dst_ptr - __src + *(&v16 + 1));
    v12 = *(&v16 + 1);
    if (*(&v16 + 1) <= v11)
    {
      v19 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      v24 = 789;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    memcpy((v18 + v11), __src, v10);
    if (v9)
    {
      result = compression_stream_destroy(&stream);
LABEL_7:
      *(v8 + 8) = v15;
      *(v8 + 16) = v16;
      *(v8 + 40) = v18;
      *(v8 + 32) = 1;
      *v8 = 1;
      return result;
    }
  }

  result = compression_stream_destroy(&stream);
  if (v9 != COMPRESSION_STATUS_ERROR)
  {
    goto LABEL_7;
  }

  result = v15;
  *v8 = 0;
  if (result && v18)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void re::TracePersistenceMemory::TracePersistenceMemory(re::TracePersistenceMemory *this)
{
  *this = &unk_1F5D1A258;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(this + 1, 0x400uLL);
  operator new();
}

void *re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 8);
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
        v10 = v8 + (v9 << 7);
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = *(v8 + 8);
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v12 = v8 + 24;
          v13 = *(v8 + 32);
          v11[3] = *(v8 + 24);
          *(v8 + 24) = 0;
          v11[4] = v13;
          *(v8 + 32) = 0;
          v14 = v11[5];
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v14;
          v15 = v11[7];
          v11[7] = *(v8 + 56);
          *(v8 + 56) = v15;
          ++*(v8 + 48);
          ++*(v11 + 12);
          *(v11 + 64) = *(v8 + 64);
          *(v11 + 9) = *(v8 + 72);
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v16 = *(v8 + 88);
          v17 = *(v8 + 96);
          v18 = v8 + 88;
          v11[11] = v16;
          v11[12] = v17;
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = v11[13];
          v11[13] = *(v18 + 16);
          *(v18 + 16) = v19;
          v20 = v11[15];
          v11[15] = *(v18 + 32);
          *(v18 + 32) = v20;
          ++*(v18 + 24);
          ++*(v11 + 28);
          re::DynamicArray<re::TraceEntry>::deinit(v18);
          re::DynamicArray<re::TraceEntry>::deinit(v12);
          v11 += 16;
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

void re::TracePersistenceMemory::~TracePersistenceMemory(re::TracePersistenceMemory *this)
{
  *this = &unk_1F5D1A258;
  v2 = *(this + 6);
  if (v2)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v2 + 16);
    MEMORY[0x1E6906520](v2, 0x1020C4094B8BC74);
  }

  v3 = *(this + 1);
  *(this + 6) = 0;
  if (v3)
  {
    v4 = *(this + 5);
    if (v4)
    {
      v5 = *(this + 3);
      if (v5)
      {
        v6 = v5 << 7;
        v7 = v4 + 88;
        do
        {
          re::DynamicArray<re::TraceEntry>::deinit(v7);
          re::DynamicArray<re::TraceEntry>::deinit(v7 - 64);
          v7 += 128;
          v6 -= 128;
        }

        while (v6);
        v3 = *(this + 1);
        v4 = *(this + 5);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 5) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 1) = 0;
    ++*(this + 8);
  }
}

{
  re::TracePersistenceMemory::~TracePersistenceMemory(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::TracePersistenceMemory::saveMetadata(re::TracePersistenceMemory *this, const re::TraceDelta *a2)
{
  v2 = *(this + 6);
  *v2 = *a2;
  return re::DynamicArray<re::TraceEntry>::operator=((v2 + 1), a2 + 2);
}

uint64_t re::TracePersistenceMemory::saveFrame(re::TracePersistenceMemory *this, const re::TraceDelta *a2, const re::TraceDelta *a3)
{
  v4 = this;
  v20 = a2 != 0;
  if (a2)
  {
    *v21 = *a2;
    this = re::DynamicArray<re::TraceEntry>::DynamicArray(&v21[16], a2 + 2);
  }

  else
  {
    v21[0] = 0;
    v24 = 0;
    *&v21[8] = 0u;
    v22 = 0u;
    v23 = 0;
  }

  v25 = a3 != 0;
  if (a3)
  {
    *v26 = *a3;
    this = re::DynamicArray<re::TraceEntry>::DynamicArray(&v26[16], a3 + 2);
  }

  else
  {
    v26[0] = 0;
    v29 = 0;
    *&v26[8] = 0u;
    v27 = 0u;
    v28 = 0;
  }

  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*(v4 + 1))
      {
        v8 = 2 * v5;
        v9 = v5 == 0;
        v10 = 8;
        if (!v9)
        {
          v10 = v8;
        }

        if (v10 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(v4 + 1, v11);
      }

      else
      {
        re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(v4 + 1, v7);
        ++*(v4 + 8);
      }
    }

    v6 = *(v4 + 3);
  }

  v12 = *(v4 + 5) + (v6 << 7);
  *v12 = v20;
  *(v12 + 8) = *v21;
  *(v12 + 56) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  *(v12 + 48) = 0;
  v13 = v22;
  *(v12 + 24) = *&v21[16];
  *(v12 + 32) = v13;
  *&v21[16] = 0;
  *&v22 = 0;
  v14 = *(v12 + 40);
  *(v12 + 40) = *(&v22 + 1);
  *(&v22 + 1) = v14;
  v15 = *(v12 + 56);
  *(v12 + 56) = v24;
  v24 = v15;
  ++v23;
  ++*(v12 + 48);
  *(v12 + 64) = v25;
  *(v12 + 72) = *v26;
  *(v12 + 120) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 88) = 0;
  *(v12 + 112) = 0;
  v16 = v27;
  *(v12 + 88) = *&v26[16];
  *(v12 + 96) = v16;
  *&v26[16] = 0;
  *&v27 = 0;
  v17 = *(v12 + 104);
  *(v12 + 104) = *(&v27 + 1);
  *(&v27 + 1) = v17;
  v18 = *(v12 + 120);
  *(v12 + 120) = v29;
  v29 = v18;
  ++v28;
  ++*(v12 + 112);
  ++*(v4 + 3);
  ++*(v4 + 8);
  re::DynamicArray<re::TraceEntry>::deinit(&v26[16]);
  return re::DynamicArray<re::TraceEntry>::deinit(&v21[16]);
}

uint64_t re::TracePersistenceMemory::loadSnapshot(re::TracePersistenceMemory *this, unint64_t a2, re::TraceDelta *a3)
{
  if (*(this + 3) <= a2)
  {
    return 0;
  }

  v3 = *(this + 5) + (a2 << 7);
  if (*v3 != 1)
  {
    return 0;
  }

  *a3 = *(v3 + 8);
  re::DynamicArray<re::TraceEntry>::operator=(a3 + 16, (v3 + 24));
  return 1;
}

uint64_t re::TracePersistenceMemory::loadDelta(re::TracePersistenceMemory *this, unint64_t a2, re::TraceDelta *a3)
{
  if (*(this + 3) <= a2)
  {
    return 0;
  }

  v3 = *(this + 5) + (a2 << 7);
  if (*(v3 + 64) != 1)
  {
    return 0;
  }

  *a3 = *(v3 + 72);
  re::DynamicArray<re::TraceEntry>::operator=(a3 + 16, (v3 + 88));
  return 1;
}

uint64_t re::TracePersistenceMemory::loadMetadata(re::TracePersistenceMemory *this, re::TraceDelta *a2)
{
  v2 = *(this + 6);
  *a2 = *v2;
  re::DynamicArray<re::TraceEntry>::operator=(a2 + 16, (v2 + 16));
  return 1;
}

uint64_t re::TracePersistenceMemory::truncate(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    v3 = v2 << 7;
    v4 = *(this + 40) + 88;
    do
    {
      re::DynamicArray<re::TraceEntry>::deinit(v4);
      this = re::DynamicArray<re::TraceEntry>::deinit(v4 - 64);
      v4 += 128;
      v3 -= 128;
    }

    while (v3);
  }

  ++*(v1 + 32);
  return this;
}

uint64_t re::TracePersistenceMemory::findSnapshot(re::TracePersistenceMemory *this, int a2)
{
  v2 = *(this + 3);
  v3 = v2 - 1;
  if (v2 - 1 >= a2)
  {
    v3 = a2;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  while (1)
  {
    v4 = v3;
    if (v2 <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(this + 5) + (v3 << 7)) == 1)
    {
      break;
    }

    --v3;
    if (v4 < 1)
    {
      return 0;
    }
  }

  return v4;
}

void re::TraceDirectCollector::~TraceDirectCollector(re::TraceDirectCollector *this)
{
  *this = &unk_1F5D1A2E0;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 64))(v2, this);
    *(this + 9) = 0;
  }

  re::TraceHistory::~TraceHistory((this + 80));
  re::TracePersistenceSqlite::~TracePersistenceSqlite(this + 2);
}

{
  re::TraceDirectCollector::~TraceDirectCollector(this);

  JUMPOUT(0x1E6906520);
}

void re::TraceDirectCollector::startCollecting(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[9];
    if (v3)
    {
      (*(*v3 + 64))(v3, a1);
      a1[9] = 0;
    }

    re::TraceHistory::clear((a1 + 10));
  }

  v4 = *re::traceLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid argument to TraceDirectCollector. traceService is nullptr", v5, 2u);
  }
}

uint64_t re::TraceDirectCollector::saveToFile(re::TraceDirectCollector *this, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = &unk_1F5D1A1C0;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v4 = re::TracePersistenceSqlite::createFile(&v15, a2);
  if (!v4)
  {
    v11 = *re::traceLogObjects(v4);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v9 = 1;
      goto LABEL_13;
    }

    *buf = 136315138;
    v21 = a2;
    v12 = "Unable to open '%s'\n";
    v13 = v11;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    goto LABEL_12;
  }

  v5 = *(this + 14);
  memset(v24, 0, sizeof(v24));
  v25 = re::globalAllocators(v4)[2];
  v26 = 0;
  v6 = re::TracePersistenceUtils::copyAll(&v15, v5, v24);
  v7 = v26;
  if (v26)
  {
    v7 = (**v26)(v26);
    if (v26 != v24)
    {
      v7 = (*(*v25 + 40))(v25);
    }

    v26 = 0;
  }

  v8 = *re::traceLogObjects(v7);
  if ((v6 & 1) == 0)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v21 = a2;
    v12 = "Failed to write '%s'\n";
    v13 = v8;
    goto LABEL_15;
  }

  v9 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(**(this + 14) + 88))(*(this + 14));
    *buf = 134218242;
    v21 = (v10 + 1);
    v22 = 2080;
    v23 = a2;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Saved %zu frames to '%s'\n", buf, 0x16u);
    v9 = 0;
  }

LABEL_13:
  re::TracePersistenceSqlite::~TracePersistenceSqlite(&v15);
  return v9;
}

re::TraceDelta **re::TraceDirectCollector::clientLoadedDelta(re::TraceDelta **this, const re::TraceDelta *a2)
{
  v2 = a2;
  v3 = this;
  if (*(this + 9) == 1)
  {
    v4 = *a2;
    if ((v4 - 1) < 2)
    {
      v5 = *(this + 6);
      v6 = this + 2;
      a2 = 0;
LABEL_10:
      this = re::TracePersistenceSqlite::add(v6, a2, v2, v5);
      ++*(v3 + 6);
      return this;
    }

    if (v4 != 4)
    {
      if (v4 != 3)
      {
        return this;
      }

      v5 = *(this + 6);
      v6 = this + 2;
      v2 = 0;
      goto LABEL_10;
    }

    v8 = this + 2;

    return re::TracePersistenceSqlite::add(v8, a2, 0, -1);
  }

  else
  {
    v7 = this + 10;

    return re::TraceHistory::addData(v7, a2);
  }
}

void re::xpc::Connection::makeWithListenerEndpoint(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:*a1];
  *a2 = v3;
}

void re::xpc::Connection::setExportedInterface(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  [v3 setExportedInterface:v2];
}

void re::xpc::Connection::setExportedObject(id *this, const re::ObjCObject *a2)
{
  v2 = *a2;
  v3 = *this;
  [v3 setExportedObject:v2];
}

void re::xpc::Connection::setRemoteObjectInterface(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  [v3 setRemoteObjectInterface:v2];
}

void re::xpc::Connection::remoteObjectProxy(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this remoteObjectProxy];
  *a2 = v3;
}

void re::xpc::Connection::remoteObjectProxyWithErrorHandler(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 remoteObjectProxyWithErrorHandler:a2];
  *a3 = v4;
}

void re::xpc::Connection::syncRemoteObjectProxy(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 synchronousRemoteObjectProxyWithErrorHandler:a2];
  *a3 = v4;
}

void re::xpc::Connection::setQueue(id *this, const re::dispatch::Queue *a2)
{
  v2 = *a2;
  v3 = *this;
  [v3 _setQueue:v2];
}

void re::xpc::Listener::makeAnonymous(void *a1@<X8>)
{
  v3 = [MEMORY[0x1E696B0D8] anonymousListener];
  *a1 = v3;
}

void re::xpc::Listener::setDelegate(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  [v3 setDelegate:v2];
}

void re::xpc::Listener::endpoint(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this endpoint];
  *a2 = v3;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(OpenSubdiv::v3_1_1::Far::PatchDescriptor *this)
{
  v1 = *this - 1;
  if (v1 > 8)
  {
    return -1;
  }

  else
  {
    return word_1E3109A08[v1];
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::~FVarLevel(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this)
{
  std::vector<unsigned int>::resize(this + 1, ((*(*this + 56) - *(*this + 48)) >> 2));
  v2 = *(this + 6);
  v8 = 0;
  v3 = *this;
  v4 = *(*this + 4);
  v5 = *(this + 7) - v2;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(this + 7) = v2 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(this + 6, v4 - v5, &v8);
    v3 = *this;
  }

  std::vector<unsigned short>::resize(this + 9, *(v3 + 8));
  std::vector<unsigned int>::resize(this + 4, *(*this + 8));
  v6 = ((*(*this + 296) - *(*this + 288)) >> 2);
  v7 = 0;
  std::vector<unsigned short>::resize(this + 15, v6, &v7);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(a1, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v4 = v3 >> 2;
  v5 = (v3 >> 2) & 7;
  if (v5)
  {
    v6 = (v3 & 3) != 2;
  }

  else
  {
    v6 = 0;
  }

  v151 = v6;
  *(this + 12) = v5 == 5;
  v150 = (v4 & 6) == 4;
  *(this + 13) = v150;
  v155 = v5;
  v152 = v5 - 3;
  v149 = v5 == 3;
  *(this + 14) = (v4 & 6) == 2;
  v7 = *this;
  v8 = *(*this + 8);
  v158 = 0;
  v159 = 0;
  v157 = 0;
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(&v157, v8);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = ((*(v7 + 296) - *(v7 + 288)) >> 2);
  LOWORD(v160) = 0;
  std::vector<unsigned short>::resize(this + 15, v9, &v160);
  v10 = *this;
  v11 = *(*this + 20);
  v175 = &v178;
  v176 = v11;
  v177 = 16;
  v179 = 0;
  if (v11 <= 0x10)
  {
    v12 = v173;
    v169 = 0;
    v170 = v173;
    v171 = v11;
    v172 = 16;
    v174 = 0;
    v13 = v168;
    __p = 0;
    v165 = v168;
    v166 = v11;
    v167 = 16;
    v160 = v163;
    v161 = v11;
    v162 = 16;
  }

  else
  {
    v179 = operator new(4 * v11);
    v175 = v179;
    v177 = v11;
    v170 = v173;
    v171 = v11;
    v172 = 16;
    v174 = 0;
    v174 = operator new(4 * v11);
    v169 = 0;
    v170 = v174;
    v172 = v11;
    v165 = v168;
    v166 = v11;
    v167 = 16;
    v169 = operator new(2 * v11);
    __p = 0;
    v165 = v169;
    v167 = v11;
    v160 = v163;
    v161 = v11;
    v162 = 16;
    __p = operator new(10 * v11);
    v160 = __p;
    v162 = v11;
    v12 = v170;
    v13 = v165;
    v10 = *this;
  }

  if (*(v10 + 8) < 1)
  {
    v15 = 0;
    goto LABEL_84;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = (2 * (v14 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v17 = *(v10 + 264);
    v18 = *(v17 + 8 * v14);
    v19 = v175;
    if (v18 >= 1)
    {
      v20 = *(v17 + 4 * v16);
      v21 = (*(v10 + 288) + 4 * v20);
      v22 = (*(v10 + 312) + 2 * v20);
      v23 = *(v10 + 24);
      v24 = *(this + 3);
      v25 = v175;
      v26 = v18;
      do
      {
        v27 = *v21++;
        v28 = *(v23 + 8 * v27 + 4);
        LODWORD(v27) = *v22++;
        *v25 = *(v24 + 4 * (v28 + v27));
        v25 = (v25 + 4);
        --v26;
      }

      while (v26);
    }

    v29 = *(v10 + 336);
    v30 = *(v29 + 4 * v16);
    v31 = *(v29 + 8 * v14);
    v32 = (*(v10 + 360) + 4 * v30);
    v33 = *(*(v10 + 432) + 2 * v14);
    if (v33)
    {
      if (v18 >= 1 && v31 >= 1)
      {
        v41 = 0;
        v42 = *(v10 + 384) + 2 * v30;
        do
        {
          v43 = v32[v41];
          v44 = *this;
          v45 = *(*this + 144);
          v46 = *(v45 + 8 * v43);
          if (v46 >= 2)
          {
            v47 = 0;
            v48 = 0;
            v49 = *(v45 + 8 * v43 + 4);
            v50 = (v44[15] + 8 * v43);
            while (v46 != v47)
            {
              v51 = *(v44[21] + 4 * v49 + 4 * v47);
              v52 = 2 * v51;
              v53 = v44[3];
              v54 = *(v53 + 8 * v51 + 4);
              v55 = v44[6] + 4 * v54;
              v56 = *(v53 + 4 * v52);
              v57 = *(v44[24] + 2 * v49 + 2 * v47);
              v58 = *(this + 3) + 4 * v54;
              v59 = *v50;
              if (*(v42 + 2 * v41) != (v59 != *(v55 + 4 * v57)))
              {
                LODWORD(v57) = v57 + 1;
              }

              if (v57 == v56)
              {
                LODWORD(v57) = 0;
              }

              v60 = *(v58 + 4 * v57);
              if (v47)
              {
                ++v47;
                if (v60 != v48)
                {
                  v61 = v157;
                  *(v157 + v59) = 1;
                  v61[v50[1]] = 1;
                  v62 = *(this + 6);
                  v63 = *(v62 + v43) & 0xFD | (2 * (v14 == v59));
                  *(v62 + v43) = v63;
                  v64 = v63 & 0xFB | (4 * (v14 == v50[1])) | 1;
                  *(v62 + v43) = v64;
                  *(v62 + v43) = v64 & 0xF7 | (8 * *(this + 13));
                  break;
                }
              }

              else
              {
                v47 = 1;
                v48 = v60;
              }
            }
          }

          ++v41;
        }

        while (v41 != v31);
      }
    }

    else if (v18 > (v33 & 4) >> 2)
    {
      v34 = (v33 >> 2) & 1;
      do
      {
        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = v18;
        }

        if (*(v19 + v34) != *(v19 + v35 - 1))
        {
          v36 = v32[v34];
          v37 = *(*this + 120) + 8 * v36;
          v38 = *v37;
          v39 = v157;
          *(v157 + v38) = 1;
          v39[*(v37 + 4)] = 1;
          v40 = *(this + 6);
          LOBYTE(v38) = *(v40 + v36) & 0xFD | (2 * (v14 == v38));
          *(v40 + v36) = v38;
          LOBYTE(v37) = v38 & 0xFB | (4 * (v14 == *(v37 + 4))) | 1;
          *(v40 + v36) = v37;
          *(v40 + v36) = v37 & 0xF7 | (8 * *(this + 13));
        }

        ++v34;
      }

      while (v18 != v34);
    }

    if ((v33 & 4) != 0 && !*(v157 + v14))
    {
      if (*(this + 13) == 1)
      {
        if (v18 < 1)
        {
          goto LABEL_68;
        }

        *(v157 + v14) = 1;
        if (v33)
        {
          if (v31 >= 1)
          {
            do
            {
              v75 = *v32++;
              v74 = v75;
              if ((*(*(*this + 240) + v75) & 2) != 0)
              {
                *(*(this + 6) + v74) |= 8u;
              }

              --v31;
            }

            while (v31);
          }
        }

        else
        {
          *(*(this + 6) + *v32) |= 8u;
          v70 = v32[v31 - 1];
          *(*(this + 6) + v70) |= 8u;
        }
      }

      else if (v18 == 1 && v151)
      {
        *(v157 + v14) = 1;
LABEL_68:
        *v12 = *v19;
        *v13 = 0;
LABEL_69:
        v66 = 1;
        if (v33)
        {
          goto LABEL_70;
        }

        goto LABEL_72;
      }
    }

    *v12 = *v19;
    *v13 = 0;
    if (v18 <= 1)
    {
      goto LABEL_69;
    }

    v65 = 1;
    v66 = 1;
    do
    {
      v67 = *(v19 + v65);
      if (v67 == *(v19 + v65 - 1))
      {
        v13[v65] = v13[v65 - 1];
        goto LABEL_59;
      }

      v13[v65] = v66;
      if (v66 == 2)
      {
        v68 = v12 + 2;
        if (*v12 != v67)
        {
          v12[2] = v67;
          v66 = 3;
          goto LABEL_59;
        }
      }

      else
      {
        if (v66 == 1)
        {
          v12[1] = v67;
          v66 = 2;
          goto LABEL_59;
        }

        v68 = &v12[v66];
        v69 = v12;
        if (!v66)
        {
          goto LABEL_56;
        }
      }

      v69 = v12;
      while (*v69 != v67)
      {
        if (++v69 == v68)
        {
          goto LABEL_58;
        }
      }

LABEL_56:
      if (v69 == v68)
      {
LABEL_58:
        ++v66;
        *v68 = v67;
      }

      else
      {
        v13[v65] = (v69 - v12) >> 2;
      }

LABEL_59:
      ++v65;
    }

    while (v65 != v18);
    if ((v33 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_70:
    if (!*(v157 + v14))
    {
      *(v157 + v14) = v66 > 1;
    }

LABEL_72:
    *(*(this + 9) + 2 * v14) = v66;
    *(*(this + 12) + 4 * v14) = v15;
    v10 = *this;
    if (v66 >= 2 && v18 >= 1)
    {
      v71 = (*(this + 15) + 2 * *(*(v10 + 264) + 4 * v16));
      v72 = v13;
      do
      {
        v73 = *v72++;
        *v71++ = v73;
        --v18;
      }

      while (v18);
    }

    v15 += v66;
    ++v14;
  }

  while (v14 < *(v10 + 8));
LABEL_84:
  v76 = v15;
  std::vector<unsigned int>::resize(this + 6, v15);
  v78 = *(this + 21);
  v77 = *(this + 22);
  if (v76 <= &v77[-v78])
  {
    if (v76 < &v77[-v78])
    {
      *(this + 22) = v78 + v76;
    }
  }

  else
  {
    v79 = *(this + 23);
    if (v79 - v77 < v76 - &v77[-v78])
    {
      if ((v76 & 0x80000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v80 = v76 + v78;
    bzero(v77, v76 - &v77[-v78]);
    *(this + 22) = v80;
  }

  if ((*(this + 13) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(this + 24, v76);
  }

  v81 = *this;
  if (*(*this + 8) >= 1)
  {
    v82 = 0;
    while (1)
    {
      v83 = (2 * v82) | 1;
      v84 = *(v81 + 264);
      v85 = *(v84 + 4 * v83);
      v86 = *(v81 + 288);
      v87 = *(v84 + 8 * v82);
      v88 = *(v81 + 312);
      v89 = v87 < 1 ? 0 : *(*(this + 3) + 4 * (*(*(v81 + 24) + 8 * *(v86 + 4 * v85) + 4) + *(v88 + 2 * v85)));
      v90 = *(*(this + 9) + 2 * v82);
      v91 = *(this + 12);
      v92 = (*(this + 18) + 4 * *(v91 + 4 * v82));
      *v92 = v89;
      if (*(v157 + v82))
      {
        break;
      }

LABEL_214:
      if (++v82 >= *(v81 + 8))
      {
        goto LABEL_217;
      }
    }

    if (v90 >= 2 && v87 >= 2)
    {
      v93 = *(v84 + 4 * v83);
      v94 = v87 - 1;
      v95 = (v88 + 2 * v85 + 2);
      v96 = (v86 + 4 * v85 + 4);
      v97 = (*(this + 15) + 2 * v93 + 2);
      v98 = 1;
      do
      {
        v99 = *v97++;
        if (v98 == v99)
        {
          v92[v98++] = *(*(this + 3) + 4 * (*(*(v81 + 24) + 8 * *v96 + 4) + *v95));
        }

        ++v95;
        ++v96;
        --v94;
      }

      while (v94);
    }

    v156 = *(v91 + 4 * v82);
    v154 = *(this + 21);
    v100 = *(*(v81 + 432) + 2 * v82);
    v101 = 1;
    if ((*(this + 13) & 1) == 0 && (v100 & 0x11) == 0)
    {
      if (*(this + 14) == 1)
      {
        v101 = v90 > 2;
        if (v90 > 2 || !v149 && !v150)
        {
          goto LABEL_114;
        }

        if (v90 != 1)
        {
          v101 = 0;
          goto LABEL_114;
        }

LABEL_113:
        v101 = (v100 & 4) == 0;
      }

      else
      {
        v101 = 0;
        if (v152 <= 2 && v90 == 1)
        {
          goto LABEL_113;
        }
      }
    }

LABEL_114:
    v102 = v160;
    bzero(v160, 10 * v90);
    v81 = *this;
    v103 = *(*(this + 9) + 2 * v82);
    if (*(*(*this + 432) + 2 * v82))
    {
      if (*(*(this + 9) + 2 * v82))
      {
        v119 = v102 + 2;
        do
        {
          *(v119 - 2) = 0;
          *v119 = 1;
          v119 += 5;
          --v103;
        }

        while (v103);
      }

      goto LABEL_160;
    }

    v104 = *(v81 + 336);
    v105 = (8 * ((2 * v82) >> 1)) | 4;
    v106 = *(v104 + v105);
    v107 = 8 * v82;
    v108 = *(v104 + v107);
    v109 = *(v81 + 264);
    v110 = *(v109 + v105);
    v111 = (*(v81 + 360) + 4 * v106);
    v112 = *(v109 + v107);
    v113 = *(v109 + v107);
    if (v103 == 1 && v108 <= v113)
    {
      *v102 = 0;
      if (v108 <= 0)
      {
        LOWORD(v112) = v113;
        goto LABEL_140;
      }

      v114 = 0;
      v115 = 0;
      v116 = *(this + 6);
      while (1)
      {
        v117 = v111[v115];
        if (*(v116 + v117))
        {
          if (v114)
          {
            v102[2] = 1;
LABEL_140:
            *v102 = v112;
LABEL_160:
            if ((v101 & 1) == 0 && (*(this + 14) == 1 ? (v131 = v90 == 2) : (v131 = 0), v131))
            {
              v101 = v102[4] || v102[9] || v102[2] || v102[7] != 0;
              if (v155 == 3)
              {
                v133 = *v102;
                if (v133 != 1)
                {
                  LOBYTE(v133) = v102[5] == 1;
                }

                v101 |= v133;
              }

              if ((v102[3] != 0) != (v102[8] != 0))
              {
                v132 = 48;
              }

              else
              {
                v132 = 8;
              }
            }

            else
            {
              if (!v90)
              {
                goto LABEL_214;
              }

              v132 = 8;
            }

            v134 = (v154 + v156);
            v135 = 2;
            while (2)
            {
              *v134 = 1;
              if (v102[2])
              {
                *v134 = 5;
                goto LABEL_181;
              }

              if ((v101 & 1) != 0 || v102[4])
              {
                v136 = *v102;
                v137 = v136 == 1;
                if (v136 == a2)
                {
                  v138 = 1;
                }

                else
                {
                  v138 = 3;
                }

                goto LABEL_188;
              }

              v142 = *v102;
              v137 = v142 == 1;
              v143 = v142 == 1 && v155 != 0;
              v140 = 3;
              if (v142 == a2)
              {
                v138 = 1;
              }

              else
              {
                v138 = 3;
              }

              if (v143)
              {
LABEL_188:
                v139 = 1;
                v140 = 1;
              }

              else
              {
                v139 = 0;
              }

              if (v137)
              {
                v138 = v140;
              }

              *v134 = v138;
              v141 = v138 | ((v102[4] != 0) << 6);
              *v134 = v141;
              if (v102[4])
              {
                LOBYTE(v141) = v141 | ((*v102 - v102[4] > 1) << 7);
                *v134 = v141;
                if ((v139 & 1) == 0)
                {
                  goto LABEL_205;
                }
              }

              else if (v139)
              {
                *v134 = v141 | ((*v102 > 1u) << 7);
              }

              else
              {
                v141 = v141 & 0xFFFFFF7F | (((v138 >> 1) & 1) << 7);
                *v134 = v141;
LABEL_205:
                if (v102[3] | v100 & 0x20)
                {
                  v144 = 16;
                }

                else
                {
                  v144 = v132;
                }

                *v134 = v144 | v141;
                if ((*(this + 13) & 1) == 0)
                {
                  v145 = *(this + 24) + 4 * *(*(this + 12) + 4 * v82);
                  v146 = v102[1];
                  *(v145 + v135 - 2) = v146;
                  v147 = *v102 + v146;
                  if (v135 == 2 && v146)
                  {
                    v148 = v147 + ~v87;
                  }

                  else
                  {
                    v148 = v147 - 1;
                  }

                  *(v145 + v135) = v148;
                }
              }

LABEL_181:
              v135 += 4;
              ++v134;
              v102 += 5;
              if (!--v90)
              {
                v81 = *this;
                goto LABEL_214;
              }

              continue;
            }
          }

          *v102 = v112;
          v102[1] = v115;
          v114 = v112;
        }

        else
        {
          v118 = *(*(v81 + 240) + v117);
          if ((v118 & 4) != 0)
          {
            ++v102[4];
          }

          else if ((v118 & 8) != 0)
          {
            ++v102[3];
          }
        }

        if (v108 == ++v115)
        {
          goto LABEL_140;
        }
      }
    }

    v120 = *(this + 15) + 2 * v110;
    *v102 = 1;
    v121 = v120 + 2 * v112;
    if (v108 > v112 || *(v121 - 2))
    {
      goto LABEL_144;
    }

    v122 = *v111;
    if (*(*(this + 6) + v122))
    {
      v124 = 2;
    }

    else
    {
      v123 = *(*(v81 + 240) + v122);
      if ((v123 & 4) == 0)
      {
        if ((v123 & 8) != 0)
        {
          v124 = 3;
          goto LABEL_143;
        }

LABEL_144:
        if (v113 >= 2)
        {
          v125 = (v120 + 2);
          v126 = 1;
          do
          {
            v127 = *v125;
            if (v127 == *(v125 - 1))
            {
              v128 = v111[v126];
              if (*(*(this + 6) + v128))
              {
                ++v102[5 * *v125 + 2];
              }

              else
              {
                v129 = *(*(v81 + 240) + v128);
                if ((v129 & 4) != 0)
                {
                  ++v102[5 * *v125 + 4];
                }

                else if ((v129 & 8) != 0)
                {
                  ++v102[5 * *v125 + 3];
                }
              }
            }

            else
            {
              if (v102[5 * *v125])
              {
                ++v102[5 * *v125 + 2];
                v127 = *v125;
              }

              v102[5 * v127 + 1] = v126;
            }

            v130 = *v125++;
            ++v102[5 * v130];
            ++v126;
          }

          while (v112 != v126);
        }

        if (!*(v121 - 2) && v108 <= v112)
        {
          --v102[2];
        }

        goto LABEL_160;
      }

      v124 = 4;
    }

LABEL_143:
    ++v102[v124];
    goto LABEL_144;
  }

LABEL_217:
  operator delete(__p);
  operator delete(v169);
  operator delete(v174);
  operator delete(v179);
  if (v157)
  {
    v158 = v157;
    operator delete(v157);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(void *this, int a2, unsigned int a3, int *a4)
{
  v4 = *(*(*this + 264) + 8 * a2 + 4);
  v5 = *(*this + 288) + 4 * v4;
  v6 = *(*this + 312) + 2 * v4;
  v7 = (this[24] + 4 * *(this[12] + 4 * a2) + 4 * a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v5 + 4 * v8);
  v11 = *(*this + 24);
  v12 = *(v11 + 8 * v10);
  v13 = this[3];
  v14 = v13 + 4 * *(v11 + 4 * ((2 * v10) | 1));
  v15 = *(v5 + 4 * v9);
  v16 = *(v11 + 8 * v15);
  v17 = *(v11 + 4 * ((2 * v15) | 1));
  v18 = *(v6 + 2 * v8);
  v19 = *(v6 + 2 * v9);
  v20 = v13 + 4 * v17;
  if (!v19)
  {
    v19 = v16;
  }

  if (v12 - 1 == v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 + 1;
  }

  *a4 = *(v14 + 4 * v21);
  a4[1] = *(v20 + 4 * v19 - 4);
  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(void *this)
{
  v1 = *this;
  v2 = *(*this + 48);
  v3 = *(*this + 56) - v2;
  if ((v3 >> 2) >= 1)
  {
    v4 = this[12];
    v5 = this[3];
    v6 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *v2++;
      *v5++ = *(v4 + 4 * v7);
      --v6;
    }

    while (v6);
  }

  v8 = *(v1 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = this[9];
    do
    {
      if (*(v10 + 2 * v9) >= 2u)
      {
        v11 = (*(v1 + 264) + 8 * v9);
        v12 = *v11;
        if (v12 >= 1)
        {
          v13 = v11[1];
          v14 = (*(v1 + 288) + 4 * v13);
          v15 = (*(v1 + 312) + 2 * v13);
          v16 = (this[15] + 2 * v13);
          do
          {
            v18 = *v16++;
            v17 = v18;
            if (v18)
            {
              v19 = *(*(v1 + 24) + 8 * *v14 + 4) + *v15;
              *(this[3] + 4 * v19) += v17;
            }

            ++v15;
            ++v14;
            --v12;
          }

          while (v12);
          v8 = *(v1 + 8);
        }
      }

      ++v9;
    }

    while (v9 < v8);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(void *this, int a2, int a3, int *a4)
{
  v4 = *this;
  v5 = (*(*this + 120) + 8 * a2);
  v6 = *v5;
  if (*(this[9] + 2 * v5[1]) + *(this[9] + 2 * v6) < 3)
  {
    if (*(v4 + 12) < 1)
    {
      v18 = this[12];
      v19 = this[18];
      *a4 = *(v19 + 4 * *(v18 + 4 * v6));
      v17 = *(v19 + 4 * *(v18 + 4 * v5[1]));
    }

    else
    {
      v16 = this[12];
      *a4 = *(v16 + 4 * v6);
      v17 = *(v16 + 4 * v5[1]);
    }

    a4[1] = v17;
  }

  else
  {
    v7 = *(*(v4 + 144) + 8 * a2 + 4);
    v8 = *(*(v4 + 168) + 4 * v7 + 4 * a3);
    v9 = *(*(v4 + 192) + 2 * v7 + 2 * a3);
    v10 = *(v4 + 24);
    LODWORD(v7) = *(v10 + 8 * v8);
    v11 = (2 * v8) | 1;
    v12 = this[3] + 4 * *(v10 + 4 * v11);
    v13 = *(v12 + 4 * v9);
    *a4 = v13;
    if (v9 + 1 < v7)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v12 + 4 * v14);
    a4[1] = v15;
    if (*v5 != *(*(v4 + 48) + 4 * *(v10 + 4 * v11) + 4 * v9))
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(void *this, int a2, int *a3)
{
  v3 = *this;
  v4 = *(*this + 336);
  v5 = *(v4 + 8 * a2);
  if (v5 >= 1)
  {
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = *(v4 + v6);
    v8 = (*(v3 + 360) + 4 * v7);
    v9 = (*(v3 + 384) + 2 * v7);
    v10 = *(*(v3 + 264) + v6);
    v11 = *(v3 + 288) + 4 * v10;
    v12 = *(v3 + 312) + 2 * v10;
    v13 = *(*(v3 + 432) + 2 * a2);
    v14 = *(v3 + 12);
    v15 = *(v3 + 120);
    v16 = (v5 - 1);
    v17 = v16 - 1;
    v18 = this[9];
    v19 = v16;
    v20 = v11;
    v21 = v12;
    v22 = a3;
    do
    {
      v24 = *v8++;
      v23 = v24;
      v25 = v15 + 8 * v24;
      LODWORD(v24) = *v9++;
      v26 = *(v25 + 4 * (v24 == 0));
      if (*(v18 + 2 * v26) == 1)
      {
        v27 = (this[12] + 4 * v26);
        if (!v14)
        {
          v27 = (this[18] + 4 * *v27);
        }

        v28 = *v27;
      }

      else if (v13)
      {
        v34 = *(*(v3 + 144) + 4 * ((2 * v23) | 1));
        v35 = *(*(v3 + 168) + 4 * v34);
        v36 = *(*(v3 + 192) + 2 * v34);
        v37 = *(v3 + 24);
        v38 = *(v37 + 8 * v35 + 4);
        v39 = *(v3 + 48) + 4 * v38;
        v40 = this[3] + 4 * v38;
        if (v26 == *(v39 + 4 * v36))
        {
          v28 = *(v40 + 4 * v36);
        }

        else
        {
          if (*(v37 + 8 * v35) - 1 == v36)
          {
            v47 = 0;
          }

          else
          {
            v47 = v36 + 1;
          }

          v28 = *(v40 + 4 * v47);
        }
      }

      else
      {
        if ((v13 & 4) != 0 && !v19)
        {
          v29 = *(v11 + 4 * v17);
          v30 = *(v3 + 24);
          v31 = *(v30 + 8 * v29);
          v32 = this[3] + 4 * *(v30 + 4 * ((2 * v29) | 1));
          v33 = *(v12 + 2 * v17);
          if (!*(v12 + 2 * v17))
          {
            v33 = v31;
          }

          a3[v16] = *(v32 + 4 * v33 - 4);
          goto LABEL_8;
        }

        v41 = *v20;
        v42 = *(v3 + 24);
        v43 = *(v42 + 8 * v41);
        v44 = this[3] + 4 * *(v42 + 4 * ((2 * v41) | 1));
        v45 = *v21;
        if (v43 - 1 == v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v45 + 1;
        }

        v28 = *(v44 + 4 * v46);
      }

      *v22 = v28;
LABEL_8:
      ++v22;
      ++v21;
      ++v20;
      --v19;
      --v5;
    }

    while (v5);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(void *result, int a2, uint64_t a3)
{
  v3 = *(*result + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 8 * a2 + 4);
    v7 = result[3] + 4 * v6;
    v8 = *(*result + 48) + 4 * v6;
    do
    {
      v9 = *(v7 + 4 * v5);
      if (*(*result + 12) <= 0)
      {
        v10 = *(result[12] + 4 * *(v8 + 4 * v5));
        v9 = v10 - 1;
        v11 = (result[18] + 4 * v10);
        do
        {
          v12 = *v11++;
          ++v9;
        }

        while (v12 != *(v7 + 4 * v5));
      }

      *(a3 + v5++) = *(result[21] + v9);
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v2 = *this;
  v3 = *(*this + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = *(v3 + 8 * a2 + 4);
  v8 = *(this + 3) + 4 * v7;
  v9 = *(v2 + 48) + 4 * v7;
  v10 = *(v2 + 12);
  do
  {
    v11 = *(v8 + 4 * v5);
    if (v10 <= 0)
    {
      v12 = *(*(this + 12) + 4 * *(v9 + 4 * v5));
      v11 = v12 - 1;
      v13 = (*(this + 18) + 4 * v12);
      do
      {
        v14 = *v13++;
        ++v11;
      }

      while (v14 != *(v8 + 4 * v5));
    }

    v6 = *(*(this + 21) + v11) | v6;
    ++v5;
  }

  while (v5 != v4);
  return v6;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049620)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049640)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049660)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E305F210))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E3049620)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E3049640)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E3049660)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E305F210))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(OpenSubdiv::v3_1_1::Sdc *this)
{
  {
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable = "bilinear";
    unk_1ECF1CE60 = xmmword_1E3109A20;
    qword_1ECF1CE70 = "catmark";
    xmmword_1ECF1CE78 = xmmword_1E3109A30;
    qword_1ECF1CE88 = "loop";
    *algn_1ECF1CE90 = xmmword_1E3109A40;
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::StencilTable::StencilTable(uint64_t a1, int a2, uint64_t *a3, void *a4, void *a5, void *a6, int a7, unint64_t a8)
{
  *a1 = &unk_1F5D1A330;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void OpenSubdiv::v3_1_1::Far::anonymous namespace::copyStencilData(int a1, int a2, unint64_t a3, uint64_t *a4, std::vector<int> *this, void *a6, std::vector<int> *a7, void *a8, std::vector<int> *a9, void *a10, std::vector<int> *a11, void *a12, std::vector<int> *a13, void *a14, std::vector<int> *a15, void *a16, std::vector<int> *a17, void *a18, std::vector<int> *a19, void *a20, std::vector<int> *a21)
{
  v33 = a2;
  if (a2)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  std::vector<unsigned int>::resize(this, (a4[1] - *a4) >> 2);
  v35 = a6;
  v38 = a7;
  std::vector<unsigned int>::resize(a7, (a6[1] - *a6) >> 2);
  std::vector<unsigned int>::resize(a9, (a8[1] - *a8) >> 2);
  std::vector<unsigned int>::resize(a11, (a10[1] - *a10) >> 2);
  if (a13)
  {
    std::vector<unsigned int>::resize(a13, (a12[1] - *a12) >> 2);
  }

  if (a15)
  {
    std::vector<unsigned int>::resize(a15, (a14[1] - *a14) >> 2);
  }

  if (a17)
  {
    std::vector<unsigned int>::resize(a17, (a16[1] - *a16) >> 2);
  }

  if (a19)
  {
    std::vector<unsigned int>::resize(a19, (a18[1] - *a18) >> 2);
  }

  if (a21)
  {
    std::vector<unsigned int>::resize(a21, (a20[1] - *a20) >> 2);
  }

  v25 = *a4;
  if (v24 >= (a4[1] - *a4) >> 2)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (((v24 == a1) & v33) != 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = v24;
      }

      v30 = *(*v35 + 4 * v29);
      v31 = *(v25 + 4 * v29);
      this->__begin_[v27] = v26;
      v38->__begin_[v27] = v30;
      memcpy(&a9->__begin_[v26], (*a8 + 4 * v31), 4 * v30);
      memcpy(&a11->__begin_[v26], (*a10 + 4 * v31), 4 * v30);
      if (a13 && a13->__begin_ != a13->__end_)
      {
        memcpy(&a13->__begin_[v26], (*a12 + 4 * v31), 4 * v30);
      }

      if (a15 && a15->__begin_ != a15->__end_)
      {
        memcpy(&a15->__begin_[v26], (*a14 + 4 * v31), 4 * v30);
      }

      if (a17 && a17->__begin_ != a17->__end_)
      {
        memcpy(&a17->__begin_[v26], (*a16 + 4 * v31), 4 * v30);
      }

      if (a19 && a19->__begin_ != a19->__end_)
      {
        memcpy(&a19->__begin_[v26], (*a18 + 4 * v31), 4 * v30);
      }

      if (a21 && a21->__begin_ != a21->__end_)
      {
        memcpy(&a21->__begin_[v26], (*a20 + 4 * v31), 4 * v30);
      }

      v26 += v30;
      ++v27;
      v28 += v30;
      v24 = v29 + 1;
      v25 = *a4;
    }

    while (v29 + 1 < (a4[1] - *a4) >> 2);
  }

  std::vector<unsigned int>::resize(this, v27);
  std::vector<unsigned int>::resize(v38, v27);
  std::vector<unsigned int>::resize(a9, v28);
  if (a13 && a13->__begin_ != a13->__end_)
  {
    std::vector<unsigned int>::resize(a13, v28);
  }

  if (a15 && a15->__begin_ != a15->__end_)
  {
    std::vector<unsigned int>::resize(a15, v28);
  }

  if (a17 && a17->__begin_ != a17->__end_)
  {
    std::vector<unsigned int>::resize(a17, v28);
  }

  if (a19 && a19->__begin_ != a19->__end_)
  {
    std::vector<unsigned int>::resize(a19, v28);
  }

  if (a21 && a21->__begin_ != a21->__end_)
  {

    std::vector<unsigned int>::resize(a21, v28);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D1A330;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::~StencilBuilder(OpenSubdiv::v3_1_1::Far::internal::WeightTable **this)
{
  v1 = *this;
  if (v1)
  {
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(v1);
    MEMORY[0x1E6906520]();
  }
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  if (*(a1 + 248) <= a2)
  {
    v11 = *(*(a1 + 216) + 4 * a2);
    if (v11 >= 1)
    {
      v12 = *(*(a1 + 192) + 4 * a2);
      v13 = v12 + v11;
      do
      {
        OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, *(*(a1 + 24) + 4 * v12), a3, *(a1 + 244), *(a1 + 240), a4, *(*(a4 + 48) + 4 * v12), a5);
        ++v12;
      }

      while (v12 < v13);
    }
  }

  else
  {
    v10 = *(a1 + 240);
    v9 = *(a1 + 244);

    OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, a2, a3, v9, v10, a4, a5, 1.0);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(uint64_t a1, unsigned int **a2, float a3)
{
  if (a3 != 0.0)
  {
    v3 = **a2;
    if (v3 >= 1)
    {
      v6 = a2[1];
      v7 = a2[2];
      do
      {
        if (*v7 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(**a1, *v6, *(a1 + 8), **a1, *v7 * a3);
        }

        ++v6;
        ++v7;
        --v3;
      }

      while (v3);
    }
  }
}

OpenSubdiv::v3_1_1::Far::internal::WeightTable *OpenSubdiv::v3_1_1::Far::internal::WeightTable::WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this, int a2, int a3, char a4)
{
  *(this + 3) = 0u;
  v7 = (this + 48);
  v8 = 2 * a2;
  if (a2 >= 2621440)
  {
    v8 = 5242880;
  }

  *(this + 12) = 0uLL;
  v9 = (this + 192);
  *(this + 30) = 0;
  *(this + 13) = 0uLL;
  *(this + 14) = 0uLL;
  *(this + 10) = 0uLL;
  *(this + 11) = 0uLL;
  *(this + 8) = 0uLL;
  *(this + 9) = 0uLL;
  *(this + 6) = 0uLL;
  *(this + 7) = 0uLL;
  *(this + 4) = 0uLL;
  *(this + 5) = 0uLL;
  *(this + 1) = 0uLL;
  *(this + 2) = 0uLL;
  *this = 0uLL;
  *(this + 62) = a2;
  if (v8 <= a2)
  {
    v8 = a2;
  }

  v10 = v8;
  *(this + 252) = a4;
  std::vector<int>::reserve(this, v8);
  std::vector<int>::reserve(this + 1, v10);
  std::vector<int>::reserve(v7, v10);
  if (a3)
  {
    std::vector<unsigned int>::resize(this + 1, a2);
    std::vector<unsigned int>::resize(v7, a2);
    std::vector<unsigned int>::resize(this, a2);
    std::vector<unsigned int>::resize(v9, a2);
    std::vector<unsigned int>::resize(this + 9, a2);
    v11 = *(this + 3);
    if (a2 >= 1)
    {
      v12 = 0;
      v13 = *(this + 24);
      v14 = *(this + 27);
      v15 = *this;
      v16 = *(this + 6);
      do
      {
        *(v13 + 4 * v12) = v12;
        *(v14 + 4 * v12) = 1;
        *(v15 + 4 * v12) = v12;
        *(v11 + 4 * v12) = v12;
        *(v16 + 4 * v12++) = 1065353216;
      }

      while (a2 != v12);
    }

    v17 = (*(this + 4) - v11) >> 2;
    *(this + 60) = v17;
    *(this + 61) = v17 - 1;
  }

  return this;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, __n);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

float OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, float a7, float a8)
{
  if (*(a1 + 252) == 1 && *a1 != *(a1 + 8) && a4 < a5 && *(*a1 + 4 * a4) == a3)
  {
    v8 = a4;
    while (*(*(a1 + 24) + 4 * v8) != a2)
    {
      if (a5 == ++v8)
      {
        goto LABEL_8;
      }
    }

    v10 = *(a6 + 48);
    result = (a7 * a8) + *(v10 + 4 * v8);
    *(v10 + 4 * v8) = result;
  }

  else
  {
LABEL_8:
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, a2, a3, a6, a7 * a8);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  v16 = a3;
  v17 = a2;
  v9 = *(a1 + 8);
  if (*a1 == v9 || *(v9 - 4) != a3)
  {
    v13 = *(a1 + 192);
    v12 = (a1 + 192);
    if (((*(a1 + 200) - v13) >> 2) <= a3)
    {
      v14 = a3 + 1;
      std::vector<unsigned int>::resize(v12, v14);
      std::vector<unsigned int>::resize((a1 + 216), v14);
      v13 = *(a1 + 192);
    }

    v15 = (*(a1 + 32) - *(a1 + 24)) >> 2;
    v11 = a3;
    *(v13 + 4 * a3) = v15;
    v10 = *(a1 + 216);
    *(v10 + 4 * a3) = 0;
    *(a1 + 244) = v15;
  }

  else
  {
    v10 = *(a1 + 216);
    v11 = a3;
  }

  ++*(a1 + 240);
  ++*(v10 + 4 * v11);
  std::vector<int>::push_back[abi:nn200100](a1, &v16);
  std::vector<int>::push_back[abi:nn200100]((a1 + 24), &v17);
  v18 = a5;
  std::vector<float>::push_back[abi:nn200100]((a4 + 48), &v18);
}

void std::vector<int>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<float>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  OpenSubdiv::v3_1_1::Far::PtexIndices::initializePtexIndices((a1 + 32), a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 24) = 1;
  if ((*(a1 + 9) & 0x10) != 0)
  {
    v5 = *(a1 + 12);
    if (v5 == -1)
    {
      std::vector<unsigned int>::resize((a1 + 144), ((*(**(*a1 + 40) + 464) - *(**(*a1 + 40) + 456)) >> 3));
      v6 = *(a1 + 144);
      v7 = *(a1 + 152) - v6;
      if ((v7 >> 2) >= 1)
      {
        v8 = 0;
        v9 = vdupq_n_s64(((v7 >> 2) & 0x7FFFFFFF) - 1);
        v10 = xmmword_1E3049640;
        v11 = xmmword_1E3049620;
        v12 = (v6 + 8);
        v13 = vdupq_n_s64(4uLL);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v14, *v9.i8).u8[0])
          {
            *(v12 - 2) = v8;
          }

          if (vuzp1_s16(v14, *&v9).i8[2])
          {
            *(v12 - 1) = v8 + 1;
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
          {
            *v12 = v8 + 2;
            v12[1] = v8 + 3;
          }

          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v12 += 4;
        }

        while ((((v7 >> 2) + 3) & 0xFFFFFFFC) != v8);
      }
    }

    else
    {
      if (v5)
      {
        if ((v5 & 0x80000000) == 0)
        {
          std::vector<int>::__vallocate[abi:nn200100](a1 + 144, v5);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      *(a1 + 152) = 4 * v5;
    }
  }

  return a1;
}

OpenSubdiv::v3_1_1::Vtr::internal::Level *OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(void *a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6)
{
  v23 = *MEMORY[0x1E69E9840];
  result = *(*(*a1 + 40) + 8 * a4);
  if ((a6 & 0x80000000) != 0)
  {
    v10 = a1 + 12;
    v11 = -1;
  }

  else
  {
    v10 = (a1[15] + 24 * a6);
    v11 = *(a1[18] + 4 * a6);
  }

  v12 = *(*v10 + 4 * a4);
  if (!a5)
  {
    goto LABEL_8;
  }

  v13 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::boundaryEdgeMaskToType[a5];
  v14 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::boundaryEdgeMaskToFeature[a5];
  switch(v13)
  {
    case 2:
      v15 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteCorner + 64 * v14;
      result = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints(result, a3, v22, v14, v11);
LABEL_11:
      v16 = 0;
      v17 = v22[0];
      do
      {
        v18 = *&v15[v16];
        v19 = v17;
        if ((v18 & 0x80000000) == 0)
        {
          v19 = v22[v18];
        }

        *(a2 + v16) = v19 + v12;
        v16 += 4;
      }

      while (v16 != 64);
      return result;
    case 1:
      v15 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteBoundary + 64 * v14;
      result = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints(result, a3, v22, v14, v11);
      goto LABEL_11;
    case 0:
LABEL_8:
      result = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(result, a3, v22, 0, v11);
      v15 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteRegular;
      goto LABEL_11;
  }

  if (v12)
  {
    v20 = 0;
    v21 = vdupq_n_s32(v12);
    do
    {
      *(a2 + v20 * 4) = vaddq_s32(*&v22[v20], v21);
      v20 += 4;
    }

    while (v20 != 16);
  }

  return result;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, int a3, unsigned int a4)
{
  v5 = a2;
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    v9 = -1;
  }

  else
  {
    v8 = *(*(this + 18) + 4 * a4);
    if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(*(v7 + 57) + 8 * v8), a3))
    {
      v9 = v8;
    }

    else
    {
      v9 = -1;
    }
  }

  FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v7, a3, v9);
  v11 = FaceCompositeVTag;
  LOBYTE(v12) = ((FaceCompositeVTag & 2) == 0) | FaceCompositeVTag;
  if ((*(this + 4) & 8) == 0 || (FaceCompositeVTag & 0x1010) == 0)
  {
    goto LABEL_21;
  }

  v12 = (FaceCompositeVTag & 0x4001) != 0x4000;
  if ((FaceCompositeVTag & 0x5001) == 0x5000)
  {
    v30 = v5;
    OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, a3, v33, v9);
    v13 = 0;
    v12 = 0;
    v32 = 0;
    v31 = 0;
    do
    {
      v14 = v33[0].i16[v13];
      if ((v14 & 0x4000) != 0)
      {
        v15 = (v14 & 0x2000) != 0 ? 2 : 1;
        if (v15 != v31)
        {
          break;
        }
      }

      v12 = v13++ > 2;
    }

    while (v13 != 4);
    v5 = v30;
  }

  if (v5 <= 1 && (v11 & 2) != 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, a3, v33, v9);
    v16 = vceq_s16(vand_s8(v33[0], vdup_n_s16(0x782u)), 0x82008200820082);
    v16.i16[0] = vmaxv_u16(v16);
    if (v12 & ~v16.i32[0])
    {
      return 1;
    }
  }

  else
  {
LABEL_21:
    if (v12)
    {
      return 1;
    }
  }

  result = 0;
  if (*(this + 24) != 1 || (v11 & 7) != 6)
  {
    return result;
  }

  v18 = *(*(*this + 40) + 8 * v5);
  if ((v9 & 0x80000000) != 0)
  {
    v20 = -1;
  }

  else
  {
    v19 = *(*(this + 18) + 4 * v9);
    if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(v18[57] + 8 * v19), a3))
    {
      v20 = v19;
    }

    else
    {
      v20 = -1;
    }
  }

  if (*(v18[3] + 8 * a3) != 4)
  {
    return 0;
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v18, a3, v33, v20);
  v21 = (*(this + 4) & 8) != 0 ? 6016 : 1924;
  v22 = (*(this + 4) & 8) != 0 ? 4608 : 516;
  v23 = vand_s8(vceq_s16(vand_s8(vdup_n_s16(v21), v33[0]), vdup_n_s16(v22)), 0x8000400020001);
  v23.i32[0] = vaddv_s16(v23) & 0xF;
  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  v25 = (v33[0].u16[0] >> 1) & 1;
  v26 = (v33[0].u16[1] >> 1) & 1;
  v27 = (v33[0].u16[2] >> 1) & 1;
  if (v24.i32[0] != 3 || v26 + v25 + v27 + ((v33[0].u16[3] >> 1) & 1) != 1)
  {
    return 0;
  }

  if (v5 > 1)
  {
    return 1;
  }

  if (v25)
  {
    v29 = v33[0].i16[2] & 0x780;
  }

  else if (v26)
  {
    v29 = v33[0].i16[3] & 0x780;
  }

  else if (v27)
  {
    v29 = v33[0].i16[0] & 0x780;
  }

  else
  {
    v29 = v33[0].i16[1] & 0x780;
  }

  return v29 == 128;
}

uint64_t OpenSubdiv::v3_1_1::Far::anonymous namespace::identifyManifoldCornerSpan(void *a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1[57] + 8 * a6);
  }

  v7 = 1;
  v8 = *(a1[3] + 4 * ((2 * a2) | 1));
  v9 = *(a1[6] + 4 * v8 + 4 * a3);
  v10 = 2 * v9;
  v11 = a1[42];
  v12 = a1[45] + 4 * *(v11 + 8 * v9 + 4);
  v13 = *(v11 + 4 * v10);
  if (v13 < 1)
  {
LABEL_8:
    LODWORD(v14) = -1;
  }

  else
  {
    v14 = 0;
    v15 = *(a1[9] + 4 * v8 + 4 * a3);
    while (*(v12 + 4 * v14) != v15)
    {
      if (v13 == ++v14)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = (v14 + 1) % v13;
  *(a5 + 2) = 0;
  *a5 = 1;
  v17 = a1[30];
  v18 = v14;
  while (1)
  {
    result = *(v12 + 4 * v18);
    v20 = *(v17 + result);
    if (v6)
    {
      result = *(*(v6 + 48) + result);
      if (result)
      {
        v20 |= 6u;
      }
    }

    if ((v20 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v18 = (v13 - 1 + v18) % v13;
    if (v18 == v16)
    {
      v18 = (v14 + 1) % v13;
      goto LABEL_16;
    }
  }

  do
  {
LABEL_16:
    v21 = *(v12 + 4 * v16);
    v22 = *(v17 + v21);
    if (v6)
    {
      result = v22 | 6u;
      if (*(*(v6 + 48) + v21))
      {
        v22 |= 6u;
      }
    }

    if ((v22 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v16 = (v16 + 1) % v13;
  }

  while (v16 != v14);
  *(a5 + 2) = v18;
  return result;
}