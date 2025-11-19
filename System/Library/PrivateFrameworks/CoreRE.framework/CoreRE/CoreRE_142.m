BOOL re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::EntryBase::free(v6 + 56 * v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 56 * v9) = *(*(a1 + 16) + 56 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

double re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v6 + v4 + 16);
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

void *re::DynamicArray<re::Event<re::NetworkSystem,unsigned long long,RESyncPendingCommitAction *>::Subscription>::setCapacity(void *result)
{
  if (result[1])
  {
    v1 = result;
    if (!result[2])
    {
      v2 = *result;
      if (*v1)
      {
        result = (*(*v2 + 40))(v2, v1[4]);
        v1[4] = 0;
        v1[1] = 0;
      }

      else
      {
        result = re::DynamicArray<re::Event<re::NetworkSystem,unsigned long long,RESyncPendingCommitAction *>::Subscription>::setCapacity(v1);
        ++*(v1 + 6);
      }
    }
  }

  return result;
}

void re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 328 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_154, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          if (v14)
          {
            v16 = 0;
            v17 = 328 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v16 + 320) % *(a1 + 24));
                *(v19 + 8) = *(v13 + v16 + 8);
                *(v19 + 16) = *(v13 + v16 + 16);
                *(v19 + 24) = *(v13 + v16 + 24);
                *(v19 + 25) = 0;
                *(v19 + 32) = *(v13 + v16 + 32);
                re::snapshot::BufferEncoder::BufferEncoder(v19 + 40, v13 + v16 + 40);
                *(v19 + 40) = &unk_1F5D17050;
                *(v19 + 160) = 0;
                *(v19 + 128) = 0u;
                *(v19 + 144) = 0u;
                *(v19 + 164) = 0x7FFFFFFFLL;
                *(v19 + 128) = *(v13 + v16 + 128);
                *(v18 + 128) = 0;
                v20 = *(v19 + 136);
                *(v19 + 136) = *(v13 + v16 + 136);
                *(v18 + 136) = v20;
                v21 = *(v19 + 144);
                *(v19 + 144) = *(v13 + v16 + 144);
                *(v18 + 144) = v21;
                LODWORD(v21) = *(v19 + 152);
                *(v19 + 152) = *(v13 + v16 + 152);
                *(v18 + 152) = v21;
                LODWORD(v21) = *(v19 + 156);
                *(v19 + 156) = *(v13 + v16 + 156);
                *(v18 + 156) = v21;
                LODWORD(v21) = *(v19 + 160);
                *(v19 + 160) = *(v13 + v16 + 160);
                *(v18 + 160) = v21;
                LODWORD(v21) = *(v19 + 164);
                *(v19 + 164) = *(v13 + v16 + 164);
                *(v18 + 164) = v21;
                *(v19 + 208) = 0;
                *(v19 + 192) = 0u;
                *(v19 + 176) = 0u;
                *(v19 + 212) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 176), (v13 + v16 + 176));
                *(v19 + 224) = 0u;
                *(v19 + 240) = 0u;
                v19 += 224;
                *(v19 + 32) = 0x7FFFFFFF00000000;
                *(v19 + 40) = 0;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v19, (v13 + v16 + 224));
                *(v19 + 80) = 0x7FFFFFFF00000000;
                *(v19 + 48) = 0u;
                *(v19 + 64) = 0u;
                *(v19 + 88) = 0;
                *(v18 + 32) = 0;
              }

              v16 += 328;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 328 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 328 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 328 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 320) = a3;
  ++*(a1 + 28);
  return v22 + 328 * v5;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ServiceRegistry>(uint64_t a1)
{
  {
    re::introspect<re::ServiceRegistry>(BOOL)::info = re::introspect_ServiceRegistry(0);
  }

  v2 = re::introspect<re::ServiceRegistry>(BOOL)::info;
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

uint64_t re::introspect<re::ServiceRegistry>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ServiceRegistry>(BOOL)::info = re::introspect_ServiceRegistry(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[221];
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)16>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[136].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[136].i64[0] = v5;
      v6 = v3[136].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[136].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[137] = vaddq_s64(v3[137], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)17>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[144].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[144].i64[0] = v5;
      v6 = v3[144].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[144].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[145] = vaddq_s64(v3[145], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = *v17;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_154, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::ComponentTypeBase const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::ComponentTypeBase const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1E69063F0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
    v7 = v9;
  }

  while (v9 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v10 = a1->__end_;
      v11 = ++v7;
      do
      {
        v12 = v7;
        std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
        v7 = v13;
      }

      while (v13 != v12);
      if (v12 == v11)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v10);
    }

    while (v12 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != a3)
  {
    do
    {
      v6 = v3;
      v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
      v3 = v7;
    }

    while (v7 != v6);
    if (v6 != a3 && (v7 + 1) == a3 && *v7 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v3;
    }
  }

  if (v3 == a3)
  {
    return v3;
  }

  v9 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    JUMPOUT(0x1E2630DE8);
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1E6906520);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 != 92)
    {
      if (v6 == 94)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        return;
      }

      goto LABEL_63;
    }

    if (a2 + 1 != a3)
    {
      v13 = a2[1];
      if (v13 == 66)
      {
        v14 = 1;
        goto LABEL_53;
      }

      if (v13 == 98)
      {
        v14 = 0;
LABEL_53:
        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v14);
        return;
      }
    }

    end = a1->__end_;
    marked_count = a1->__marked_count_;
    goto LABEL_34;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    return;
  }

  if (v6 != 40)
  {
    goto LABEL_63;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_19;
  }

  v7 = a2[2];
  if (v7 != 33)
  {
    if (v7 == 61)
    {
      std::regex_traits<char>::regex_traits(&v44.__traits_);
      memset(&v44.__flags_, 0, 40);
      v44.__flags_ = a1->__flags_;
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v44, a2 + 3, a3);
      v9 = v44.__marked_count_;
      v10 = a1->__marked_count_;
      v11 = a1;
      v12 = 0;
      goto LABEL_59;
    }

LABEL_19:
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_20:
    if (a2 + 1 == a3)
    {
LABEL_97:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_98:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
      goto LABEL_99;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &a1->__open_count_;
      ++a1->__open_count_;
      v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, a2 + 3, a3);
      if (v18 == a3)
      {
        goto LABEL_97;
      }

      v19 = v18;
      if (*v18 != 41)
      {
        goto LABEL_97;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      v20 = a1->__marked_count_;
      p_open_count = &a1->__open_count_;
      ++a1->__open_count_;
      v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, a2 + 1, a3);
      if (v21 == a3)
      {
        goto LABEL_97;
      }

      v19 = v21;
      if (*v21 != 41)
      {
        goto LABEL_97;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v20);
    }

    --*p_open_count;
    v22 = v19 + 1;
LABEL_31:
    if (v22 != a2)
    {
      goto LABEL_92;
    }

    return;
  }

  std::regex_traits<char>::regex_traits(&v44.__traits_);
  memset(&v44.__flags_, 0, 40);
  v44.__flags_ = a1->__flags_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v44, a2 + 3, a3);
  v9 = v44.__marked_count_;
  v10 = a1->__marked_count_;
  v11 = a1;
  v12 = 1;
LABEL_59:
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v11, &v44, v12, v10);
  a1->__marked_count_ += v9;
  if (v8 == a3 || *v8 != 41)
  {
    goto LABEL_97;
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v44.__traits_.__loc_);
  if (v8 + 1 != a2)
  {
    return;
  }

  v6 = *a2;
LABEL_63:
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (v6 > 62)
  {
    v31 = (v6 - 92);
    if (v31 > 0x21)
    {
LABEL_72:
      if (v6 == 91)
      {
        v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
        goto LABEL_31;
      }

      if (v6 != 63)
      {
        goto LABEL_79;
      }

LABEL_96:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
      goto LABEL_97;
    }

    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return;
    }

    if (v6 != 92)
    {
      if (v31 == 31)
      {
        goto LABEL_96;
      }

      goto LABEL_72;
    }

LABEL_34:
    v23 = a2 + 1;
    if (a2 + 1 == a3)
    {
LABEL_99:
      v40 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_94:
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(v40, v41, v42, v43, v38, v39);
      return;
    }

    v24 = *v23;
    if (v24 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
LABEL_91:
      v22 = a2 + 2;
LABEL_92:
      v38 = marked_count + 1;
      v39 = a1->__marked_count_ + 1;
      v40 = a1;
      v41 = v22;
      v42 = a3;
      v43 = end;

      goto LABEL_94;
    }

    if ((v24 - 49) <= 8)
    {
      v25 = (v24 - 48);
      v22 = a2 + 2;
      if (a2 + 2 != a3)
      {
        while (1)
        {
          v26 = *v22;
          if ((v26 - 48) > 9)
          {
            break;
          }

          if (v25 >= 0x19999999)
          {
            goto LABEL_98;
          }

          v25 = v26 + 10 * v25 - 48;
          if (++v22 == a3)
          {
            v22 = a3;
            break;
          }
        }

        if (!v25)
        {
          goto LABEL_98;
        }
      }

      if (v25 > marked_count)
      {
        goto LABEL_98;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v25);
      if (v22 != v23)
      {
        goto LABEL_31;
      }

      v24 = *v23;
    }

    if (v24 > 99)
    {
      if (v24 == 119)
      {
        v27 = a1;
        v28 = 0;
        goto LABEL_83;
      }

      if (v24 == 115)
      {
        v36 = a1;
        v37 = 0;
LABEL_89:
        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v36, v37);
        v33 = started->__mask_ | 0x4000;
        goto LABEL_90;
      }

      if (v24 != 100)
      {
        goto LABEL_84;
      }

      v29 = a1;
      v30 = 0;
    }

    else
    {
      if (v24 != 68)
      {
        if (v24 != 83)
        {
          if (v24 == 87)
          {
            v27 = a1;
            v28 = 1;
LABEL_83:
            v34 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
            v34->__mask_ |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v34, 95);
            goto LABEL_91;
          }

LABEL_84:
          std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2 + 1, a3, 0);
          if (v35 == v23)
          {
            v22 = a2;
          }

          else
          {
            v22 = v35;
          }

          goto LABEL_31;
        }

        v36 = a1;
        v37 = 1;
        goto LABEL_89;
      }

      v29 = a1;
      v30 = 1;
    }

    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v29, v30);
    v33 = started->__mask_ | 0x400;
LABEL_90:
    started->__mask_ = v33;
    goto LABEL_91;
  }

  if (v6 <= 40)
  {
    if (v6 == 36)
    {
      return;
    }

    if (v6 != 40)
    {
LABEL_79:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      v22 = a2 + 1;
      goto LABEL_92;
    }

    goto LABEL_20;
  }

  if (v6 != 41)
  {
    if (v6 == 46)
    {
      operator new();
    }

    if ((v6 - 42) < 2)
    {
      goto LABEL_96;
    }

    goto LABEL_79;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v22 = a2 + 1;
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == a3;
      }

      if (!v23 && *v22 == 63)
      {
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v19 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v19 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 == a3)
      {
LABEL_57:
        v29 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(v29);
        return;
      }

      v17 = *v16;
      if (v17 == 44)
      {
        v26 = v16 + 1;
        if (v16 + 1 != a3)
        {
          if (*v26 == 125)
          {
            v27 = v16 + 2;
            if (!v11 && v27 != a3 && *v27 == 63)
            {
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              goto LABEL_26;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
LABEL_36:
            v19 = -1;
            goto LABEL_45;
          }

          v30 = -1;
          v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v30);
          if (v28 == v26 || v28 == a3 || *v28 != 125)
          {
            goto LABEL_57;
          }

          v19 = v30;
          v14 = __max;
          if (v30 >= __max)
          {
            v25 = 1;
            if (!v11 && v28 + 1 != a3)
            {
              v25 = v28[1] != 63;
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v24 = __s;
            goto LABEL_46;
          }
        }
      }

      else if (v17 == 125)
      {
        v18 = v16 + 1;
        if (!v11 && v18 != a3 && *v18 == 63)
        {
          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
          v19 = __max;
LABEL_33:
          v24 = __s;
          v25 = 0;
LABEL_46:
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v19, v24, a5, a6, v25);
          return;
        }

        v14 = __max;
        a5 = v7;
        a6 = v6;
        a1 = v10;
        v19 = __max;
LABEL_45:
        v24 = __s;
        v25 = 1;
        goto LABEL_46;
      }
    }

    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_57;
  }

  if (v12 == 42)
  {
    v20 = a2 + 1;
    if (v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (!v21 && *v20 == 63)
    {
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v19 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFA00;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFA00;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFA48;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFA48;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1E6906520);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40, v7);
  if (*(a1 + 84) == v8)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(begin);
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    __x.first = a3;
    __x.second = a3;
    __x.matched = 0;
    *v34 = 0;
    memset(&v34[8], 0, 32);
    v35 = 0u;
    *__p = 0u;
    memset(v37, 0, 21);
    std::vector<std::__state<char>>::push_back[abi:nn200100](&v39, v34);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*&v34[32])
    {
      operator delete(*&v34[32]);
    }

    v13 = v40;
    *(v40 - 96) = 0;
    *(v13 - 88) = a2;
    *(v13 - 80) = a2;
    *(v13 - 72) = a3;
    std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
    std::vector<std::pair<unsigned long,char const*>>::resize((v13 - 40), *(a1 + 32));
    *(v13 - 16) = v6;
    *(v13 - 8) = a5;
    v14 = 1;
    *(v13 - 4) = a6;
    do
    {
      if ((v14 & 0xFFF) == 0 && (v14 >> 12) >= a3 - a2)
      {
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_35:
        v31 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::vector<std::sub_match<char const*>>::assign(v31, v32, v33);
        return;
      }

      v15 = *(v13 - 16);
      v16 = (v13 - 96);
      if (v15)
      {
        (*(*v15 + 16))(v15, v13 - 96);
      }

      v17 = *v16;
      if (*v16 > -994)
      {
        switch(v17)
        {
          case -993:
            goto LABEL_23;
          case -992:
            v20 = *(v13 - 80);
            *v34 = *v16;
            *&v34[16] = v20;
            std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v34[32], (v13 - 64));
            std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](__p, (v13 - 40));
            v21 = *(v13 - 16);
            *(&v37[1] + 5) = *(v13 - 11);
            v37[1] = v21;
            (*(**(v13 - 16) + 24))(*(v13 - 16), 1, v13 - 96);
            (*(*v37[1] + 24))(v37[1], 0, v34);
            std::vector<std::__state<char>>::push_back[abi:nn200100](&v39, v34);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (*&v34[32])
            {
              *&v35 = *&v34[32];
              operator delete(*&v34[32]);
            }

            break;
          case -991:
            break;
          default:
            goto LABEL_35;
        }
      }

      else if ((v17 + 995) >= 2)
      {
        if (v17 != -1000)
        {
          goto LABEL_35;
        }

        v18 = *(v13 - 80);
        if (((a5 & 0x20) == 0 || v18 != a2) && ((a5 & 0x1000) == 0 || v18 == a3))
        {
          v22 = *a4;
          *v22 = a2;
          *(v22 + 8) = v18;
          *(v22 + 16) = 1;
          v23 = *(v13 - 64);
          v24 = *(v13 - 56) - v23;
          if (v24)
          {
            v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
            v26 = (v23 + 16);
            v27 = 1;
            do
            {
              v28 = v22 + 24 * v27;
              *v28 = *(v26 - 1);
              v29 = *v26;
              v26 += 24;
              *(v28 + 16) = v29;
            }

            while (v25 > v27++);
          }

          break;
        }

LABEL_23:
        v19 = v40 - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100]((v40 - 96));
        v40 = v19;
      }

      v13 = v40;
      ++v14;
    }

    while (v39 != v40);
  }

  *v34 = &v39;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v34);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](this, v9);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<std::__state<char>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v7 = 96 * v8 + 96;
    v16 = *a1;
    v17 = a1[1];
    v18 = 96 * v8 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v13 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz < v6)
    {
      this->__end_ = &begin[__sz];
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::allocator<std::__state<char>>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::vector<std::sub_match<char const*>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void *std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_237;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_237;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v8 = (v7 + 136);
      v86 = a3 - 4;
      while (1)
      {
        v9 = v5;
        if (v5 == a3)
        {
          goto LABEL_15;
        }

        v10 = *v5;
        v9 = v5;
        if (v10 == 93)
        {
          goto LABEL_15;
        }

        memset(&v90, 0, sizeof(v90));
        if (v5 + 1 != a3 && v10 == 91)
        {
          v13 = v5[1];
          switch(v13)
          {
            case '.':
              v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, &v90);
              v11 = *(a1 + 24) & 0x1F0;
              size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
              if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v90.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                goto LABEL_66;
              }

              goto LABEL_31;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_237;
              }

              for (i = 0; v5[i + 2] != 58 || v5[i + 3] != 93; ++i)
              {
                if (v86 - v5 == i)
                {
                  goto LABEL_237;
                }
              }

              v24 = &v5[i + 2];
              if (v24 == a3)
              {
                goto LABEL_237;
              }

              v25 = *(a1 + 24);
              std::string::__init_with_size[abi:nn200100]<char const*,char const*>(&__dst, v5 + 2, v24, i);
              end_high = HIBYTE(__dst.__end_);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__first_;
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                end_high = __dst.__begin_;
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, end_high + p_dst);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                first = &__dst;
              }

              else
              {
                first = __dst.__first_;
              }

              classname = std::__get_classname(first, v25 & 1);
              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              if (!classname)
              {
                goto LABEL_239;
              }

              v30 = 0;
              *(v7 + 160) |= classname;
              v11 = &v5[i + 4];
              goto LABEL_143;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_237;
              }

              v14 = v86 - v5;
              v15 = v5 + 2;
              for (j = v5 + 2; ; v15 = j)
              {
                v17 = *j++;
                if (v17 == 61 && *j == 93)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_237;
                }

                --v14;
              }

              if (v15 == a3)
              {
                goto LABEL_237;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__p, a1, v5 + 2, v15);
              v22 = SHIBYTE(v94);
              if ((SHIBYTE(v94) & 0x8000000000000000) != 0)
              {
                v22 = __p[1];
                if (!__p[1])
                {
                  goto LABEL_238;
                }

                v23 = __p[0];
              }

              else
              {
                if (!HIBYTE(v94))
                {
                  goto LABEL_238;
                }

                v23 = __p;
              }

              std::string::__init_with_size[abi:nn200100]<char const*,char const*>(&__dst, v23, v23 + v22, v22);
              (*(**(a1 + 16) + 32))(__s);
              v37 = HIBYTE(v92);
              if (v92 < 0)
              {
                v37 = __s[1];
              }

              if (v37 != 1)
              {
                if (v37 == 12)
                {
                  v38 = __s;
                  if (v92 < 0)
                  {
                    v38 = __s[0];
                  }

                  *(v38 + 11) = *(v38 + 3);
                }

                else if (SHIBYTE(v92) < 0)
                {
                  *__s[0] = 0;
                  __s[1] = 0;
                }

                else
                {
                  LOBYTE(__s[0]) = 0;
                  HIBYTE(v92) = 0;
                }
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              v39 = HIBYTE(v92);
              if (v92 < 0)
              {
                v39 = __s[1];
              }

              if (v39)
              {
                v41 = *(v7 + 144);
                v40 = *(v7 + 152);
                if (v41 >= v40)
                {
                  v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v8) >> 3);
                  v46 = v45 + 1;
                  if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_241;
                  }

                  v47 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *v8) >> 3);
                  if (2 * v47 > v46)
                  {
                    v46 = 2 * v47;
                  }

                  if (v47 >= 0x555555555555555)
                  {
                    v48 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  __dst.__end_cap_.__value_ = (v7 + 136);
                  if (v48)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v8, v48);
                  }

                  v51 = (24 * v45);
                  if (v92 < 0)
                  {
                    std::string::__init_copy_ctor_external(v51, __s[0], __s[1]);
                  }

                  else
                  {
                    v52 = *__s;
                    v51->__r_.__value_.__r.__words[2] = v92;
                    *&v51->__r_.__value_.__l.__data_ = v52;
                  }

                  v50 = v51 + 1;
                  v53 = *(v7 + 136);
                  v54 = *(v7 + 144) - v53;
                  v55 = v51 - v54;
                  memcpy(v51 - v54, v53, v54);
                  v56 = *(v7 + 136);
                  *(v7 + 136) = v55;
                  *(v7 + 144) = v51 + 1;
                  v57 = *(v7 + 152);
                  *(v7 + 152) = 0;
                  __dst.__end_ = v56;
                  __dst.__end_cap_.__value_ = v57;
                  __dst.__first_ = v56;
                  __dst.__begin_ = v56;
                  std::__split_buffer<std::string>::~__split_buffer(&__dst);
                }

                else
                {
                  if (SHIBYTE(v92) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v42 = *__s;
                    *(v41 + 16) = v92;
                    *v41 = v42;
                  }

                  v50 = (v41 + 24);
                }

                *(v7 + 144) = v50;
              }

              else
              {
                v43 = HIBYTE(v94);
                if (SHIBYTE(v94) < 0)
                {
                  v43 = __p[1];
                }

                if (v43 == 2)
                {
                  v49 = __p;
                  if (SHIBYTE(v94) < 0)
                  {
                    v49 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, *v49, *(v49 + 1));
                }

                else
                {
                  if (v43 != 1)
                  {
                    goto LABEL_238;
                  }

                  v44 = __p;
                  if (SHIBYTE(v94) < 0)
                  {
                    v44 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, *v44);
                }
              }

              if (SHIBYTE(v92) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v94) < 0)
              {
                operator delete(__p[0]);
              }

              v30 = 0;
              v11 = (v15 + 2);
LABEL_143:
              v34 = v5;
              goto LABEL_144;
          }
        }

        v11 = *(a1 + 24) & 0x1F0;
        v9 = v5;
LABEL_31:
        if ((v11 | 0x40) != 0x40)
        {
          LOBYTE(v18) = *v9;
LABEL_36:
          std::string::operator=(&v90, v18);
          ++v9;
          goto LABEL_66;
        }

        v18 = *v9;
        if (v18 != 92)
        {
          goto LABEL_36;
        }

        if (v11)
        {
          v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 1, a3, &v90);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 1, a3, &v90, v7);
        }

        v9 = v19;
LABEL_66:
        if (v9 == a3 || (v31 = *v9, v31 == 93) || (v33 = v9 + 1, v9 + 1 == a3) || v31 != 45 || *v33 == 93)
        {
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!v90.__r_.__value_.__l.__size_)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
              goto LABEL_15;
            }

            if (v90.__r_.__value_.__l.__size_ != 1)
            {
              v32 = v90.__r_.__value_.__r.__words[0];
              goto LABEL_85;
            }

            v32 = v90.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&v90.__r_.__value_.__s + 23))
            {
              goto LABEL_15;
            }

            v32 = &v90;
            if (HIBYTE(v90.__r_.__value_.__r.__words[2]) != 1)
            {
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, v32->__r_.__value_.__s.__data_[0], v32->__r_.__value_.__s.__data_[1]);
              goto LABEL_86;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, v32->__r_.__value_.__s.__data_[0]);
LABEL_86:
          v30 = 1;
          v34 = v9;
          goto LABEL_144;
        }

        memset(&v89, 0, sizeof(v89));
        v34 = v9 + 2;
        if (v9 + 2 != a3 && *v33 == 91 && *v34 == 46)
        {
          v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v9 + 3, a3, &v89);
          goto LABEL_151;
        }

        if ((v11 | 0x40) != 0x40)
        {
          LOBYTE(v33) = *v33;
LABEL_103:
          std::string::operator=(&v89, v33);
          goto LABEL_151;
        }

        LODWORD(v33) = *v33;
        if (v33 != 92)
        {
          goto LABEL_103;
        }

        v35 = v9 + 2;
        if (v11)
        {
          v36 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v35, a3, &v89);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v35, a3, &v89, v7);
        }

        v34 = v36;
LABEL_151:
        v88 = v90;
        v87 = v89;
        memset(&v89, 0, sizeof(v89));
        memset(&v90, 0, sizeof(v90));
        v11 = &v87;
        if (*(v7 + 170) == 1)
        {
          if (*(v7 + 169) == 1)
          {
            v58 = v88.__r_.__value_.__l.__size_;
            if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
            }

            if (v58)
            {
              v59 = 0;
              v60 = SHIBYTE(v88.__r_.__value_.__r.__words[2]) >> 63;
              do
              {
                if (v60)
                {
                  v61 = v88.__r_.__value_.__r.__words[0];
                }

                else
                {
                  v61 = &v88;
                }

                v62 = (*(**(v7 + 24) + 40))(*(v7 + 24), v61->__r_.__value_.__s.__data_[v59]);
                if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v63 = &v88;
                }

                else
                {
                  v63 = v88.__r_.__value_.__r.__words[0];
                }

                v63->__r_.__value_.__s.__data_[v59++] = v62;
                v64 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
                v60 = SHIBYTE(v88.__r_.__value_.__r.__words[2]) >> 63;
                if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v64 = v88.__r_.__value_.__l.__size_;
                }
              }

              while (v59 < v64);
            }

            v65 = v87.__r_.__value_.__l.__size_;
            if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
            }

            if (v65)
            {
              v66 = 0;
              v67 = SHIBYTE(v87.__r_.__value_.__r.__words[2]) >> 63;
              do
              {
                if (v67)
                {
                  v68 = v87.__r_.__value_.__r.__words[0];
                }

                else
                {
                  v68 = &v87;
                }

                v69 = (*(**(v7 + 24) + 40))(*(v7 + 24), v68->__r_.__value_.__s.__data_[v66]);
                if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v70 = &v87;
                }

                else
                {
                  v70 = v87.__r_.__value_.__r.__words[0];
                }

                v70->__r_.__value_.__s.__data_[v66++] = v69;
                v71 = SHIBYTE(v87.__r_.__value_.__r.__words[2]);
                v67 = SHIBYTE(v87.__r_.__value_.__r.__words[2]) >> 63;
                if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v71 = v87.__r_.__value_.__l.__size_;
                }
              }

              while (v66 < v71);
            }
          }

          v72 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v88;
          }

          else
          {
            v73 = v88.__r_.__value_.__r.__words[0];
          }

          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v72 = v88.__r_.__value_.__l.__size_;
          }

          std::regex_traits<char>::transform<char *>(__p, v7 + 16, v73, v73 + v72);
          v74 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = &v87;
          }

          else
          {
            v75 = v87.__r_.__value_.__r.__words[0];
          }

          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v74 = v87.__r_.__value_.__l.__size_;
          }

          std::regex_traits<char>::transform<char *>(__s, v7 + 16, v75, v75 + v74);
          *&__dst.__first_ = *__p;
          __dst.__end_ = v94;
          __p[1] = 0;
          v94 = 0;
          __dst.__end_cap_ = *__s;
          v96 = v92;
          __s[0] = 0;
          __s[1] = 0;
          v92 = 0;
          __p[0] = 0;
          std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((v7 + 88), &__dst);
          if (SHIBYTE(v96) < 0)
          {
            operator delete(__dst.__end_cap_.__value_);
          }

          if (SHIBYTE(__dst.__end_) < 0)
          {
            operator delete(__dst.__first_);
          }

          if (SHIBYTE(v92) < 0)
          {
            operator delete(__s[0]);
          }

          if ((SHIBYTE(v94) & 0x80000000) == 0)
          {
            goto LABEL_222;
          }

          v76 = __p[0];
        }

        else
        {
          v77 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v77 = v88.__r_.__value_.__l.__size_;
          }

          if (v77 != 1)
          {
            goto LABEL_240;
          }

          v78 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v78 = v87.__r_.__value_.__l.__size_;
          }

          if (v78 != 1)
          {
            goto LABEL_240;
          }

          if (*(v7 + 169) == 1)
          {
            if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v79 = &v88;
            }

            else
            {
              v79 = v88.__r_.__value_.__r.__words[0];
            }

            v80 = (*(**(v7 + 24) + 40))(*(v7 + 24), v79->__r_.__value_.__s.__data_[0]);
            if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v81 = &v88;
            }

            else
            {
              v81 = v88.__r_.__value_.__r.__words[0];
            }

            v81->__r_.__value_.__s.__data_[0] = v80;
            if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = &v87;
            }

            else
            {
              v82 = v87.__r_.__value_.__r.__words[0];
            }

            v83 = (*(**(v7 + 24) + 40))(*(v7 + 24), v82->__r_.__value_.__s.__data_[0]);
            if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = &v87;
            }

            else
            {
              v84 = v87.__r_.__value_.__r.__words[0];
            }

            v84->__r_.__value_.__s.__data_[0] = v83;
          }

          *&__dst.__first_ = *&v88.__r_.__value_.__l.__data_;
          __dst.__end_ = v88.__r_.__value_.__r.__words[2];
          memset(&v88, 0, sizeof(v88));
          __dst.__end_cap_ = *&v87.__r_.__value_.__l.__data_;
          v96 = v87.__r_.__value_.__r.__words[2];
          memset(&v87, 0, sizeof(v87));
          std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((v7 + 88), &__dst);
          if (SHIBYTE(v96) < 0)
          {
            operator delete(__dst.__end_cap_.__value_);
          }

          if ((SHIBYTE(__dst.__end_) & 0x80000000) == 0)
          {
            goto LABEL_222;
          }

          v76 = __dst.__first_;
        }

        operator delete(v76);
LABEL_222:
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v30 = 1;
LABEL_144:
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
          v9 = v34;
          if ((v30 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v9 = v34;
          if (!v30)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        v11 = v9;
LABEL_16:
        v12 = v11 == v5;
        v5 = v11;
        if (v12)
        {
          goto LABEL_230;
        }
      }
    }

    v11 = v5;
LABEL_230:
    if (v11 == a3)
    {
      goto LABEL_237;
    }

    if (*v11 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, 45);
      ++v11;
    }

    if (v11 == a3 || *v11 != 93)
    {
LABEL_237:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_238:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_239:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_240:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_241:
      std::string::__throw_length_error[abi:nn200100]();
    }

    return (v11 + 1);
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this)
{
  v4 = a2;
  if (a2 != a3)
  {
    v5 = *a2;
    if (*a2 <= 0x71u)
    {
      if (*a2 <= 0x65u)
      {
        if (v5 != 48)
        {
          if (v5 == 99)
          {
            if (a2 + 1 != a3)
            {
              v7 = a2[1];
              if (((v7 & 0xDF) - 65) <= 0x19u)
              {
                v8 = v7 & 0x1F;
                if (this)
                {
LABEL_14:
                  std::string::operator=(this, v8);
                  return;
                }

                goto LABEL_53;
              }
            }

            goto LABEL_69;
          }

          if (v5 == 95)
          {
LABEL_69:
            v18 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
            std::basic_regex<char,std::regex_traits<char>>::__push_char(v18, v19);
            return;
          }

          goto LABEL_62;
        }

        if (this)
        {
          v9 = this;
          v10 = 0;
          goto LABEL_66;
        }

        v10 = 0;
        goto LABEL_67;
      }

      if (v5 == 102)
      {
        if (this)
        {
          v9 = this;
          v10 = 12;
          goto LABEL_66;
        }

        v10 = 12;
        goto LABEL_67;
      }

      if (v5 != 110)
      {
        goto LABEL_62;
      }

      if (!this)
      {
        v10 = 10;
        goto LABEL_67;
      }

      v9 = this;
      v10 = 10;
    }

    else
    {
      if (*a2 > 0x74u)
      {
        if (v5 == 117)
        {
          if (a2 + 1 == a3)
          {
            goto LABEL_69;
          }

          v11 = a2[1];
          if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
          {
            goto LABEL_69;
          }

          v4 = a2 + 2;
          if (a2 + 2 == a3)
          {
            goto LABEL_69;
          }

          v12 = *v4;
          v13 = -48;
          if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
          {
            v12 |= 0x20u;
            if ((v12 - 97) >= 6)
            {
              goto LABEL_69;
            }

            v13 = -87;
          }

          v6 = 16 * (v13 + v12);
          goto LABEL_39;
        }

        if (v5 != 118)
        {
          if (v5 == 120)
          {
            v6 = 0;
LABEL_39:
            if (v4 + 1 != a3)
            {
              v14 = v4[1];
              v15 = -48;
              if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
              {
LABEL_44:
                if (v4 + 2 != a3)
                {
                  v16 = v4[2];
                  v17 = -48;
                  if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
                  {
LABEL_49:
                    v8 = v16 + 16 * (v6 + v15 + v14) + v17;
                    if (this)
                    {
                      goto LABEL_14;
                    }

LABEL_53:
                    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
                    return;
                  }

                  v16 |= 0x20u;
                  if ((v16 - 97) < 6)
                  {
                    v17 = -87;
                    goto LABEL_49;
                  }
                }

                goto LABEL_69;
              }

              v14 |= 0x20u;
              if ((v14 - 97) < 6)
              {
                v15 = -87;
                goto LABEL_44;
              }
            }

            goto LABEL_69;
          }

LABEL_62:
          if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
          {
            goto LABEL_69;
          }

          v10 = *a2;
          if (this)
          {
            v9 = this;
            goto LABEL_66;
          }

          goto LABEL_67;
        }

        if (this)
        {
          v9 = this;
          v10 = 11;
          goto LABEL_66;
        }

        v10 = 11;
LABEL_67:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v10);
        return;
      }

      if (v5 == 114)
      {
        if (!this)
        {
          v10 = 13;
          goto LABEL_67;
        }

        v9 = this;
        v10 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_62;
        }

        if (!this)
        {
          v10 = 9;
          goto LABEL_67;
        }

        v9 = this;
        v10 = 9;
      }
    }

LABEL_66:
    std::string::operator=(v9, v10);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFAD8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFAD8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFB20;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFB20;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFBB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFBB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFBF8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5CFFBF8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

std::__bracket_expression<char, std::regex_traits<char>> *std::__back_ref<char>::__exec(std::__bracket_expression<char, std::regex_traits<char>> *result, uint64_t a2)
{
  locale_low = LODWORD(result->__traits_.__loc_.__locale_);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < locale_low)
  {
    v10 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    return std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v10, v11);
  }

  else
  {
    v5 = v3 + 24 * (locale_low - 1);
    if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
    {
      *a2 = -994;
      *(a2 + 16) = v8 + v7;
      first = v6->__first_;
    }

    else
    {
      first = 0;
      *a2 = -993;
    }

    *(a2 + 80) = first;
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:nn200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:nn200100](a1 + 40, &v7);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x1E6906520);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_89;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_64;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v114, &__s);
  __p = v114;
  size = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v114.__r_.__value_.__r.__words[2]);
  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v114.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v114);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v114;
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v114.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v114.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_180;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_180:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_64:
    negate = 0;
    v9 = 1;
    goto LABEL_65;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_64;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_233;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_s = &__s;
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v114);
    v17 = this->__ranges_.__begin_;
    v18 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v19 = this->__ranges_.__end_ - v17;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v109 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      v22 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v23 = &v17->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      while (1)
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v21)
        {
          v29 = v21;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(p_s, v28, v29);
        v31 = v21 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v21 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v21;
          }

          v36 = memcmp(v34, p_s, v35);
          v37 = v33 >= v21;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            break;
          }
        }

        v25 = v24++ < v20;
        v23 += 48;
        if (!--v22)
        {
          v38 = 0;
          goto LABEL_183;
        }
      }

      v38 = 5;
LABEL_183:
      v18 = v109;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v89 = 1;
      goto LABEL_213;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v89 = 0;
    goto LABEL_215;
  }

  v90 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v114);
  v91 = this->__equivalences_.__begin_;
  v92 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v93 = this->__equivalences_.__end_ - v91;
  if (v93)
  {
    v94 = 0xAAAAAAAAAAAAAAABLL * (v93 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v95 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v90 = __s.__r_.__value_.__r.__words[0];
    }

    if (v94 <= 1)
    {
      v96 = 1;
    }

    else
    {
      v96 = 0xAAAAAAAAAAAAAAABLL * (v93 >> 3);
    }

    v97 = 1;
    v98 = 1;
    while (1)
    {
      v99 = HIBYTE(v91->__r_.__value_.__r.__words[2]);
      v100 = v99;
      if ((v99 & 0x80u) != 0)
      {
        v99 = v91->__r_.__value_.__l.__size_;
      }

      if (v95 == v99)
      {
        v101 = v100 >= 0 ? v91 : v91->__r_.__value_.__r.__words[0];
        if (!memcmp(v90, v101, v95))
        {
          break;
        }
      }

      v98 = v97++ < v94;
      ++v91;
      if (!--v96)
      {
        goto LABEL_210;
      }
    }

    v89 = 1;
    v38 = 5;
    if (v92 < 0)
    {
LABEL_211:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v98 = 0;
LABEL_210:
    v38 = 0;
    v89 = 0;
    if (v92 < 0)
    {
      goto LABEL_211;
    }
  }

  if (!v98)
  {
LABEL_215:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v104 = tab[__src];
      if (((v104 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_233;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v104) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_232:
        negate = v89;
LABEL_234:
        v9 = 2;
        goto LABEL_89;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_234;
        }
      }

      goto LABEL_232;
    }

LABEL_233:
    negate = 1;
    goto LABEL_234;
  }

LABEL_213:
  v9 = 2;
  negate = v89;
  if (v38)
  {
    goto LABEL_89;
  }

LABEL_65:
  v40 = *a2->__current_;
  v114.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    v114.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_88;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v46 = (v44 >> 7) & 1;
      v45 = v40 == 95 ? v46 : 0;
    }

    else
    {
      v45 = 1;
    }

    end = this->__neg_chars_.__end_;
    v48 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v49 = !v48 || v48 == end;
    v50 = !v49;
    if ((v45 & 1) == 0 && !v50)
    {
LABEL_88:
      negate = 1;
      goto LABEL_89;
    }
  }

  v53 = this->__ranges_.__begin_;
  v54 = this->__ranges_.__end_;
  if (v53 != v54)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v114, &v114.__r_.__value_.__s.__data_[1]);
      v53 = this->__ranges_.__begin_;
      v54 = this->__ranges_.__end_;
      v55 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    }

    v56 = v54 - v53;
    if (v56)
    {
      v110 = v9;
      v106 = negate;
      v107 = v55;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
      if ((v55 & 0x80u) == 0)
      {
        v58 = v55;
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((v55 & 0x80u) == 0)
      {
        v59 = &__s;
      }

      else
      {
        v59 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
      }

      v61 = &v53->second.__r_.__value_.__r.__words[2] + 7;
      v62 = 1;
      v63 = 1;
      while (1)
      {
        v64 = *(v61 - 24);
        if (v64 >= 0)
        {
          v65 = *(v61 - 24);
        }

        else
        {
          v65 = *(v61 - 39);
        }

        if (v64 >= 0)
        {
          v66 = (v61 - 47);
        }

        else
        {
          v66 = *(v61 - 47);
        }

        if (v65 >= v58)
        {
          v67 = v58;
        }

        else
        {
          v67 = v65;
        }

        v68 = memcmp(v59, v66, v67);
        v69 = v58 >= v65;
        if (v68)
        {
          v69 = v68 >= 0;
        }

        if (v69)
        {
          v70 = *v61;
          if (v70 >= 0)
          {
            v71 = *v61;
          }

          else
          {
            v71 = *(v61 - 15);
          }

          if (v70 >= 0)
          {
            v72 = (v61 - 23);
          }

          else
          {
            v72 = *(v61 - 23);
          }

          if (v58 >= v71)
          {
            v73 = v71;
          }

          else
          {
            v73 = v58;
          }

          v74 = memcmp(v72, v59, v73);
          v75 = v71 >= v58;
          if (v74)
          {
            v75 = v74 >= 0;
          }

          if (v75)
          {
            break;
          }
        }

        v63 = v62++ < v57;
        v61 += 48;
        if (!--v60)
        {
          negate = v106;
          goto LABEL_144;
        }
      }

      negate = 1;
LABEL_144:
      v9 = v110;
      if ((v107 & 0x80) == 0)
      {
LABEL_146:
        if (v63)
        {
          goto LABEL_89;
        }

        goto LABEL_147;
      }
    }

    else
    {
      v63 = 0;
      if ((v55 & 0x80) == 0)
      {
        goto LABEL_146;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_146;
  }

LABEL_147:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_173;
  }

  v76 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v114, &v114.__r_.__value_.__s.__data_[1]);
  v77 = this->__equivalences_.__begin_;
  v78 = this->__equivalences_.__end_ - v77;
  if (!v78)
  {
    v83 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

  v108 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v111 = v9;
  v79 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = __s.__r_.__value_.__l.__size_;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v76 = __s.__r_.__value_.__r.__words[0];
  }

  if (v79 <= 1)
  {
    v81 = 1;
  }

  else
  {
    v81 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
  }

  v82 = 1;
  v83 = 1;
  while (1)
  {
    v84 = HIBYTE(v77->__r_.__value_.__r.__words[2]);
    v85 = v84;
    if ((v84 & 0x80u) != 0)
    {
      v84 = v77->__r_.__value_.__l.__size_;
    }

    if (v80 == v84)
    {
      v86 = v85 >= 0 ? v77 : v77->__r_.__value_.__r.__words[0];
      if (!memcmp(v76, v86, v80))
      {
        break;
      }
    }

    v83 = v82++ < v79;
    ++v77;
    if (!--v81)
    {
      goto LABEL_170;
    }
  }

  negate = 1;
LABEL_170:
  v9 = v111;
  if (v108 < 0)
  {
LABEL_171:
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_172:
  if (v83)
  {
    goto LABEL_89;
  }

LABEL_173:
  v87 = this->__mask_;
  if ((v114.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v114.__r_.__value_.__s.__data_[0]] & v87) != 0)
  {
    goto LABEL_88;
  }

  v88 = (v87 >> 7) & 1;
  if (v114.__r_.__value_.__s.__data_[0] != 95)
  {
    LOBYTE(v88) = 0;
  }

  negate |= v88;
LABEL_89:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v52 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v52 = -995;
  }

  a2->__do_ = v52;
  a2->__node_ = first;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v10 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v10);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v3 = a1[11].__locale_;
  if (v3)
  {
    v4 = a1[12].__locale_;
    v5 = a1[11].__locale_;
    if (v4 != v3)
    {
      do
      {
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:nn200100](v4);
      }

      while (v4 != v3);
      v5 = a1[11].__locale_;
    }

    a1[12].__locale_ = v3;
    operator delete(v5);
  }

  v6 = a1[8].__locale_;
  if (v6)
  {
    a1[9].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[5].__locale_;
  if (v7)
  {
    a1[6].__locale_ = v7;
    operator delete(v7);
  }

  std::locale::~locale(a1 + 2);
  v8 = a1[1].__locale_;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void std::vector<char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  }

  else
  {
    std::regex_traits<char>::__lookup_collatename<char const*>(&v16, a1, __src, v6);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v16;
    v9 = v17;
    *(a4 + 16) = v17;
    v10 = HIBYTE(v9);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a4 + 8);
    }

    if (v10 - 1 < 2)
    {
      return v6 + 2;
    }
  }

  v12 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(v12, v13, v14, v15);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    v13 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(v13, v14, v15, v16);
    return;
  }

  v6 = *a2;
  if (v6 <= 0x61)
  {
    if (*a2 > 0x52u)
    {
      if (v6 == 83)
      {
        v7 = *(a5 + 164) | 0x4000;
        goto LABEL_22;
      }

      if (v6 == 87)
      {
        *(a5 + 164) |= 0x500u;
        v19 = 95;
        if (*(a5 + 169) == 1)
        {
          v18 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
          v9 = a5 + 64;
          v10 = &v18;
        }

        else
        {
          if (*(a5 + 170) != 1)
          {
            std::vector<char>::push_back[abi:nn200100](a5 + 64, &v19);
            return;
          }

          v17 = 95;
          v9 = a5 + 64;
          v10 = &v17;
        }

        std::vector<char>::push_back[abi:nn200100](v9, v10);
        return;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_22:
        *(a5 + 164) = v7;
        return;
      }

      goto LABEL_25;
    }

    v11 = this;
    v12 = 0;
LABEL_20:
    std::string::operator=(v11, v12);
    return;
  }

  if (*a2 > 0x72u)
  {
    if (v6 == 115)
    {
      v8 = *(a5 + 160) | 0x4000;
      goto LABEL_24;
    }

    if (v6 == 119)
    {
      *(a5 + 160) |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](a5, 95);
      return;
    }
  }

  else
  {
    if (v6 == 98)
    {
      v11 = this;
      v12 = 8;
      goto LABEL_20;
    }

    if (v6 == 100)
    {
      v8 = *(a5 + 160) | 0x400;
LABEL_24:
      *(a5 + 160) = v8;
      return;
    }
  }

LABEL_25:

  std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
    goto LABEL_51;
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (this)
        {
          v6 = this;
          v5 = 12;
          goto LABEL_31;
        }

        v5 = 12;
        goto LABEL_47;
      }

      if (v5 == 110)
      {
        if (this)
        {
          v6 = this;
          v5 = 10;
          goto LABEL_31;
        }

        v5 = 10;
        goto LABEL_47;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (this)
          {
            v6 = this;
            v5 = 13;
            goto LABEL_31;
          }

          v5 = 13;
          goto LABEL_47;
        case 't':
          if (this)
          {
            v6 = this;
            v5 = 9;
            goto LABEL_31;
          }

          v5 = 9;
          goto LABEL_47;
        case 'v':
          if (this)
          {
            v6 = this;
            v5 = 11;
            goto LABEL_31;
          }

          v5 = 11;
LABEL_47:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
          return a2 + 1;
      }
    }

    goto LABEL_32;
  }

  if (v5 > 0x5Bu)
  {
    if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

LABEL_17:
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 == 34 || v5 == 47)
  {
    goto LABEL_17;
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) == 0x30)
  {
    v7 = v5 - 48;
    v8 = a2 + 1;
    if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
    {
      v7 = *v8 + 8 * v7 - 48;
      v8 = a2 + 2;
      if (a2 + 2 != a3)
      {
        v9 = *v8 + 8 * v7 - 48;
        if ((*v8 & 0xF8) == 0x30)
        {
          v8 = a2 + 3;
          v7 = v9;
        }
      }
    }

    if (this)
    {
      std::string::operator=(this, v7);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
    }

    return v8;
  }

LABEL_51:
  v11 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v11);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:nn200100](v6, v7);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char const*,char const*>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

void std::vector<std::pair<char,char>>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
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
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            v6 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
            return std::__loop<char>::~__loop(v6);
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E6906520);
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:nn200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:nn200100](result, a3);
  }

  return result;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E6906520);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F5CFFDC0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

unsigned int *std::__loop<char>::__init_repeat[abi:nn200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3))(std::__owns_one_state<char> *__hidden this)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 != a3 || v8 != 36)
  {
    if ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      goto LABEL_32;
    }

    if (v9 == a3 || v8 != 92)
    {
      if (v8 == 46)
      {
        operator new();
      }
    }

    else
    {
      v17 = *v9;
      if ((v17 - 36) <= 0x3A && ((1 << (v17 - 36)) & 0x580000000000441) != 0)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        v9 = v3 + 2;
        goto LABEL_32;
      }
    }
  }

  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  v9 = v10;
  if (v10 == v3 && v10 != a3 && v10 + 1 != a3 && *v10 == 92)
  {
    v11 = v10[1];
    if (v11 == 40)
    {
      v12 = v10 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      v13 = a1->__marked_count_;
      do
      {
        v14 = v12;
        v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v12, a3);
        v12 = v15;
      }

      while (v15 != v14);
      if (v14 == a3 || v15 + 1 == a3 || *v15 != 92 || v15[1] != 41)
      {
        goto LABEL_57;
      }

      v9 = v15 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v13);
    }

    else
    {
      v18 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v11);
      v19 = 2;
      if (!v18)
      {
        v19 = 0;
      }

      v9 += v19;
    }
  }

  if (v9 == v3)
  {
    return v3;
  }

LABEL_32:
  if (v9 == a3)
  {
    return v9;
  }

  v20 = a1->__marked_count_ + 1;
  v21 = *v9;
  if (v21 == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
    return (v9 + 1);
  }

  if (v9 + 1 == a3 || v21 != 92 || v9[1] != 123)
  {
    return v9;
  }

  LODWORD(__max) = 0;
  v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
  if (v22 == v9 + 2)
  {
    goto LABEL_58;
  }

  if (v22 == a3)
  {
    goto LABEL_56;
  }

  v23 = v22 + 1;
  v24 = *v22;
  if (v24 != 44)
  {
    if (v23 != a3 && v24 == 92 && *v23 == 125)
    {
      v3 = v22 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v20, 1);
      return v3;
    }

    goto LABEL_56;
  }

  v33 = -1;
  v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v22 + 1, a3, &v33);
  if (v25 == a3 || (v26 = v25, v25 + 1 == a3) || *v25 != 92 || (v27 = v25[1], v28 = v27 == 125, v27 != 125))
  {
LABEL_56:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_57:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_58;
  }

  v29 = v33;
  if (v33 == -1)
  {
    v30 = a1;
    v29 = -1;
    goto LABEL_55;
  }

  if (v33 >= __max)
  {
    v30 = a1;
LABEL_55:
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(v30, __max, v29, end, marked_count + 1, v20, 1);
    return &v26[2 * v28];
  }

LABEL_58:
  v32 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::__match_any<char>::~__match_any(v32);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    v3 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(v3);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
    return 1;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    v8 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(v8, v9, v10);
  }

  else
  {
    do
    {
      v7 = v6;
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
    }

    while (v6 != v7);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    goto LABEL_24;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 <= 0x3A)
  {
    if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v9 == 5)
    {
      if (!*(a1 + 36))
      {
        LOBYTE(v8) = 41;
LABEL_15:
        v12 = 1;
        goto LABEL_16;
      }

LABEL_24:
      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
      goto LABEL_25;
    }
  }

  if ((v8 - 123) >= 2)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = a2 + 1;
  if (a2 + 1 == a3 || v8 != 92)
  {
LABEL_22:
    if (v8 == 46)
    {
      operator new();
    }

    goto LABEL_24;
  }

  v11 = *v10;
  LOBYTE(v8) = *v10;
  v12 = 2;
  if (((v11 - 36) > 0x3A || ((1 << (v11 - 36)) & 0x5800000080004F1) == 0) && (v11 - 123) >= 3)
  {
    if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, a2 + 1, a3, 0);
    }

    else
    {
      v14 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v15 = 2;
      if (!v14)
      {
        v15 = 0;
      }

      v13 = &a2[v15];
    }

    if (v13 != a2)
    {
LABEL_25:
      if (v13 == a2 && v13 != a3)
      {
        v16 = *v13;
        switch(v16)
        {
          case '$':
            std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
            break;
          case '(':
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v17 = *(a1 + 28);
            ++*(a1 + 36);
            v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1);
            if (v18 == a3 || (v13 = v18, *v18 != 41))
            {
              v20 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
              std::regex_iterator<char *,char,std::regex_traits<char>>::operator==(v20);
              return;
            }

            std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
            --*(a1 + 36);
            break;
          case '^':
            std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
            break;
          default:
            goto LABEL_36;
        }

        ++v13;
      }

LABEL_36:
      if (v13 == a2)
      {
        return;
      }

      goto LABEL_37;
    }

    v8 = *v13;
    goto LABEL_22;
  }

LABEL_16:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v13 = &a2[v12];
LABEL_37:
  v19 = (*(a1 + 28) + 1);

  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v13, a3, v6, (v7 + 1), v19);
}

BOOL std::regex_iterator<char *,char,std::regex_traits<char>>::operator==(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && std::sub_match<char *>::compare[abi:nn200100](v4, v7) == 0;
  }

  return v10;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0);
  if (!v12)
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v19 = &a2->first + 1;
    if (v19 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v19, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v20)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v19 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v19, a3, this, v9 | 0x80, 0);
    if (!v21)
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v15 = v11;
  }

  else
  {
    v15 = begin;
  }

  first = v15->first;
  this[2].__end_ = v15->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v15->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

uint64_t *std::match_results<char *>::__assign[abi:nn200100]<char const*,std::allocator<std::sub_match<char const*>>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = a4[6];
  v6 = a4[1] - *a4;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v9 = *result;
  v8 = result[1];
  v10 = v8 - *result;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  v12 = v7 - v11;
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      v8 = v9 + v6;
      result[1] = v9 + v6;
    }
  }

  else
  {
    v13 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) < v12)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3);
        v15 = 2 * v14;
        if (2 * v14 <= v7)
        {
          v15 = v7;
        }

        if (v14 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v17 = v8 + 24 * v12;
    v18 = 24 * v7 - 8 * (v10 >> 3);
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v8 += 24;
      v18 -= 24;
    }

    while (v18);
    result[1] = v17;
    v8 = v17;
  }

  v19 = v8 - *result;
  if (v8 != *result)
  {
    v20 = 0;
    v21 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
    v22 = *a4;
    v23 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    if (v21 <= 1)
    {
      v21 = 1;
    }

    v24 = (*result + 16);
    do
    {
      if (v23 <= v20)
      {
        v25 = a4 + 3;
      }

      else
      {
        v25 = v22;
      }

      v26 = a2 + v25[1] - v5;
      *(v24 - 2) = a2 + *v25 - v5;
      *(v24 - 1) = v26;
      *v24 = *(v25 + 16);
      v24 += 24;
      ++v20;
      v22 += 3;
    }

    while (v21 != v20);
  }

  result[3] = a3;
  result[4] = a3;
  v27 = a2 + a4[6] - v5;
  v28 = a2 + a4[7] - v5;
  result[6] = v27;
  result[7] = v28;
  *(result + 64) = *(a4 + 64);
  v29 = a4[9] - v5;
  v30 = a4[10] - v5;
  *(result + 40) = 0;
  result[9] = a2 + v29;
  result[10] = a2 + v30;
  *(result + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    result[13] = v27;
  }

  *(result + 96) = *(a4 + 96);
  return result;
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v10 = a2;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
    return;
  }

  v12 = a3 - a2;
  if (!*(a1 + 28))
  {
    v109 = 0u;
    v110 = 0u;
    *v108 = 0u;
    v48 = *(a1 + 40);
    if (!v48)
    {
      goto LABEL_151;
    }

    *v111 = 0;
    memset(&v111[8], 0, 32);
    v112 = 0uLL;
    *__p = 0uLL;
    memset(v114, 0, 21);
    std::deque<std::__state<char>>::push_back(v108, v111);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*&v111[32])
    {
      operator delete(*&v111[32]);
    }

    v49 = v108[1];
    v50 = v110.i64[1] + v110.i64[0] - 1;
    v51 = v50 / 0x2A;
    v52 = *(v108[1] + v50 / 0x2A);
    v53 = 3 * (v50 % 0x2A);
    v54 = v52 + 32 * v53;
    *v54 = 0;
    *(v54 + 8) = v10;
    *(v49[v51] + 32 * v53 + 16) = v10;
    v103 = a3;
    *(v49[v51] + 32 * v53 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((v49[v51] + 32 * v53 + 56), *(a1 + 32));
    v101 = 0;
    v55 = 0;
    v100 = 0;
    v56 = v110.i64[1];
    v57 = v108[1];
    v58 = v110.i64[1] + v110.i64[0] - 1;
    v59 = v58 / 0x2A;
    v60 = 3 * (v58 % 0x2A);
    *(*(v108[1] + v59) + 32 * v60 + 80) = v48;
    v61 = v57[v59] + 32 * v60;
    v62 = a5;
    *(v61 + 88) = a5;
    *(v61 + 92) = a6;
    while (1)
    {
      if ((++v55 & 0xFFF) == 0 && (v55 >> 12) >= v12)
      {
LABEL_166:
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_167:
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        goto LABEL_168;
      }

      v64 = *(v108[1] + (v56 + v110.i64[0] - 1) / 0x2AuLL) + 96 * ((v56 + v110.i64[0] - 1) % 0x2AuLL);
      v66 = (v64 + 80);
      v65 = *(v64 + 80);
      if (v65)
      {
        (*(*v65 + 16))(v65, v64);
      }

      v67 = *v64;
      if (*v64 <= -995)
      {
        switch(v67)
        {
          case -1000:
            v72 = *(v64 + 16);
            if ((v62 & 0x20) != 0 && v72 == v10 || (v62 & 0x1000) != 0 && v72 != v103)
            {
              goto LABEL_147;
            }

            v73 = &v72[-*(v64 + 8)];
            v74 = v100;
            if (v100 <= v73)
            {
              v74 = v73;
            }

            if (v101)
            {
              v73 = v74;
            }

            if (v73 == v12)
            {
              v75 = v108[1];
              v76 = v109;
              if (v109 == v108[1])
              {
                v76 = v108[1];
              }

              else
              {
                v77 = v10;
                v78 = v108[1] + 8 * (v110.i64[0] / 0x2AuLL);
                v79 = (*v78 + 96 * (v110.i64[0] % 0x2AuLL));
                v80 = *(v108[1] + (v110.i64[1] + v110.i64[0]) / 0x2AuLL) + 96 * ((v110.i64[1] + v110.i64[0]) % 0x2AuLL);
                if (v79 != v80)
                {
                  do
                  {
                    std::allocator<std::__state<char>>::destroy[abi:nn200100](v79);
                    v79 += 12;
                    if ((v79 - *v78) == 4032)
                    {
                      v81 = v78[1];
                      ++v78;
                      v79 = v81;
                    }
                  }

                  while (v79 != v80);
                  v75 = v108[1];
                  v76 = v109;
                }

                v10 = v77;
                v62 = a5;
              }

              v110.i64[1] = 0;
              v85 = (v76 - v75) >> 3;
              if (v85 >= 3)
              {
                do
                {
                  operator delete(*v75);
                  v75 = (v108[1] + 8);
                  v108[1] = v75;
                  v85 = (v109 - v75) >> 3;
                }

                while (v85 > 2);
              }

              if (v85 == 1)
              {
                v86 = 21;
LABEL_138:
                v110.i64[0] = v86;
              }

              else if (v85 == 2)
              {
                v86 = 42;
                goto LABEL_138;
              }

              v101 = 1;
              v100 = v12;
              break;
            }

            v100 = v73;
            std::deque<std::__state<char>>::pop_back(v108);
            v101 = 1;
            break;
          case -999:
            break;
          case -995:
            v68 = v110.i64[0];
            v69 = v108[1];
            v70 = v109;
            if (!v110.i64[0])
            {
              v71 = 42 * ((v109 - v108[1]) >> 3) - 1;
              if (v109 == v108[1])
              {
                v71 = 0;
              }

              if ((v71 - v110.i64[1]) < 0x2A)
              {
                if (v109 - v108[1] < *(&v109 + 1) - v108[0])
                {
                  if (v108[1] != v108[0])
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*(&v109 + 1) == v108[0])
                {
                  v84 = 1;
                }

                else
                {
                  v84 = (*(&v109 + 1) - v108[0]) >> 2;
                }

                *&v111[32] = v108;
                std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v84);
              }

              v110.i64[0] = 42;
              *v111 = *(v109 - 8);
              *&v109 = v109 - 8;
              std::__split_buffer<zip_entry_t *>::emplace_front<zip_entry_t *>(v108, v111);
              v68 = v110.i64[0];
              v69 = v108[1];
              v70 = v109;
            }

            v87 = &v69[8 * (v68 / 0x2A)];
            v88 = *v87 + 96 * (v68 % 0x2A);
            if (v70 == v69)
            {
              v89 = 0;
            }

            else
            {
              v89 = v88;
            }

            if (v89 == *v87)
            {
              v89 = *(v87 - 1) + 4032;
            }

            v90 = *(v64 + 16);
            *(v89 - 96) = *v64;
            *(v89 - 80) = v90;
            *(v89 - 56) = 0;
            *(v89 - 48) = 0;
            *(v89 - 64) = 0;
            *(v89 - 64) = *(v64 + 32);
            *(v89 - 48) = *(v64 + 48);
            *(v64 + 32) = 0;
            *(v64 + 40) = 0;
            *(v64 + 48) = 0;
            *(v89 - 40) = 0;
            *(v89 - 32) = 0;
            *(v89 - 24) = 0;
            *(v89 - 40) = *(v64 + 56);
            *(v89 - 24) = *(v64 + 72);
            *(v64 + 56) = 0;
            *(v64 + 64) = 0;
            *(v64 + 72) = 0;
            v91 = *v66;
            *(v89 - 11) = *(v64 + 85);
            *(v89 - 16) = v91;
            v110 = vaddq_s64(v110, xmmword_1E309DBF0);
            goto LABEL_147;
          default:
            goto LABEL_167;
        }
      }

      else
      {
        if (v67 > -993)
        {
          if (v67 == -992)
          {
            v82 = *(v64 + 16);
            *v111 = *v64;
            *&v111[16] = v82;
            std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v111[32], (v64 + 32));
            std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](__p, (v64 + 56));
            v83 = *v66;
            *(&v114[1] + 5) = *(v64 + 85);
            v114[1] = v83;
            (*(**(v64 + 80) + 24))(*(v64 + 80), 1, v64);
            (*(*v114[1] + 24))(v114[1], 0, v111);
            std::deque<std::__state<char>>::push_back(v108, v111);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (*&v111[32])
            {
              *&v112 = *&v111[32];
              operator delete(*&v111[32]);
            }
          }

          else if (v67 != -991)
          {
            goto LABEL_167;
          }

          goto LABEL_148;
        }

        if (v67 != -994)
        {
          if (v67 != -993)
          {
            goto LABEL_167;
          }

LABEL_147:
          std::deque<std::__state<char>>::pop_back(v108);
        }
      }

LABEL_148:
      v56 = v110.i64[1];
      if (!v110.i64[1])
      {
        if (v101)
        {
          v92 = *a4;
          *v92 = v10;
          *(v92 + 8) = &v10[v100];
          *(v92 + 16) = 1;
        }

LABEL_151:
        v93 = v108[1];
        v94 = v109;
        v110.i64[1] = 0;
        v95 = (v109 - v108[1]) >> 3;
        if (v95 >= 3)
        {
          do
          {
            operator delete(*v93);
            v94 = v109;
            v93 = (v108[1] + 8);
            v108[1] = v93;
            v95 = (v109 - v93) >> 3;
          }

          while (v95 > 2);
        }

        if (v95 == 1)
        {
          v96 = 21;
LABEL_158:
          v110.i64[0] = v96;
        }

        else if (v95 == 2)
        {
          v96 = 42;
          goto LABEL_158;
        }

        if (v93 != v94)
        {
          do
          {
            v97 = *v93++;
            operator delete(v97);
          }

          while (v93 != v94);
          if (v109 != v108[1])
          {
            *&v109 = v109 + ((v108[1] - v109 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        if (v108[0])
        {
          operator delete(v108[0]);
        }

        return;
      }
    }
  }

  v108[0] = 0;
  v108[1] = 0;
  *&v109 = 0;
  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_156;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v111 = 0;
  memset(&v111[8], 0, 32);
  v112 = 0u;
  *__p = 0u;
  memset(v114, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:nn200100](v108, v111);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v106 = a5;
  v98 = a4;
  if (*&v111[32])
  {
    operator delete(*&v111[32]);
  }

  v14 = v108[1];
  *(v108[1] - 24) = 0;
  *(v14 - 11) = a2;
  *(v14 - 10) = a2;
  v102 = a3;
  *(v14 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v14 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v14 - 5), *(a1 + 32));
  v15 = 0;
  v104 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  *(v14 - 2) = v13;
  *(v14 - 2) = v106;
  *(v14 - 4) = a6;
  do
  {
    v20 = (++v18 & 0xFFF) != 0 || (v18 >> 12) < v12;
    if (!v20)
    {
      goto LABEL_166;
    }

    v21 = *(v14 - 2);
    v22 = (v14 - 12);
    if (v21)
    {
      (*(*v21 + 16))(v21, v14 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_29;
        case -992:
          v28 = *(v14 - 5);
          *v111 = *v22;
          *&v111[16] = v28;
          std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v111[32], v14 - 8);
          std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](__p, v14 - 5);
          v29 = *(v14 - 2);
          *(&v114[1] + 5) = *(v14 - 11);
          v114[1] = v29;
          (*(**(v14 - 2) + 24))(*(v14 - 2), 1, v14 - 12);
          (*(*v114[1] + 24))(v114[1], 0, v111);
          std::vector<std::__state<char>>::push_back[abi:nn200100](v108, v111);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v111[32])
          {
            *&v112 = *&v111[32];
            operator delete(*&v111[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_167;
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_34;
      }

      if (v23 != -1000)
      {
        goto LABEL_167;
      }

      v24 = *(v14 - 10);
      if ((v106 & 0x20) != 0 && v24 == a2 || (v106 & 0x1000) != 0 && v24 != v102)
      {
LABEL_29:
        v27 = v108[1] - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v108[1] - 12);
        v108[1] = v27;
        goto LABEL_34;
      }

      v25 = &v24[-*(v14 - 11)];
      if ((v17 & (v19 >= v25)) != 0)
      {
        v25 = v19;
        v26 = v104;
      }

      else
      {
        v31 = *(v14 - 8);
        v30 = *(v14 - 7);
        if (v30 != v31)
        {
          v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 3);
          if (v32 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(v32);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v26 = v104;
        if (v31 == v30)
        {
          v15 = 0;
        }

        else
        {
          v15 = 0;
          do
          {
            *v15 = *v31;
            *(v15 + 16) = *(v31 + 16);
            v31 += 24;
            v15 += 24;
          }

          while (v31 != v30);
        }

        v34 = *(v14 - 5);
        v33 = *(v14 - 4);
        v35 = v33 - v34;
        if (-v104 < (v33 - v34))
        {
          if (!((v35 >> 4) >> 60))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(v35 >> 4);
          }

LABEL_168:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (&v16[-v104] >= v35)
        {
          v16 = v104;
          while (v34 != v33)
          {
            *v16 = *v34;
            *(v16 + 1) = *(v34 + 1);
            v34 += 16;
            v16 += 16;
          }
        }

        else
        {
          v36 = &v16[v34 - v104];
          if (v16 != v104)
          {
            v37 = v104;
            do
            {
              *v37 = *v34;
              v37[1] = *(v34 + 1);
              v34 += 16;
              v37 += 2;
            }

            while (v34 != v36);
          }

          if (v36 == v33)
          {
            v38 = v16;
          }

          else
          {
            v38 = v16;
            do
            {
              v39 = *v36;
              v36 += 16;
              *v16 = v39;
              v16 += 16;
              v38 += 16;
            }

            while (v36 != v33);
          }

          v16 = v38;
        }
      }

      v40 = v108[1];
      v104 = v26;
      if (v25 == v12)
      {
        v41 = v108[0];
        while (v40 != v41)
        {
          v40 -= 12;
          std::allocator<std::__state<char>>::destroy[abi:nn200100](v40);
        }

        v108[1] = v41;
        v17 = 1;
        v19 = v12;
      }

      else
      {
        v42 = v108[1] - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v108[1] - 12);
        v108[1] = v42;
        v17 = 1;
        v19 = v25;
      }
    }

LABEL_34:
    v14 = v108[1];
  }

  while (v108[0] != v108[1]);
  if (v17)
  {
    v43 = *v98;
    *v43 = a2;
    *(v43 + 8) = &a2[v19];
    *(v43 + 16) = 1;
    if (v15)
    {
      v44 = 16;
      v45 = 1;
      do
      {
        v46 = v43 + 24 * v45;
        *v46 = *(v44 - 16);
        v47 = *v44;
        v44 += 24;
        *(v46 + 16) = v47;
        v20 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3) > v45++;
      }

      while (v20);
    }
  }

LABEL_156:
  *v111 = v108;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v111);
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<zip_entry_t *>::emplace_back<zip_entry_t *&>(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v9 / 0x2A)] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:nn200100]((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::sub_match<char *>::compare[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:nn200100]<char const*,char const*>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:nn200100]<char const*,char const*>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

uint64_t re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      v10 = *(a1 + 28);
      v11 = 2 * v10;
      v12 = *a1;
      if (*a1)
      {
        if (v11)
        {
          v13 = v8 == v11;
        }

        else
        {
          v13 = 1;
        }

        if (!v13 && (v10 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::init(v26, v12, v11);
          v14 = *v26;
          *v26 = *a1;
          *a1 = v14;
          v15 = *&v26[16];
          v16 = *(a1 + 16);
          *&v26[16] = v16;
          *(a1 + 16) = v15;
          v18 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v17 = *&v26[32];
          *(a1 + 24) = v18;
          v19 = v17;
          if (v17)
          {
            v20 = v16 + 16;
            do
            {
              if ((*(v20 - 8) & 0x80000000) != 0)
              {
                re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addAsMove(a1, *(v20 - 16) % *(a1 + 24), *(v20 - 16), v20, v20);
              }

              v20 += 24;
              --v19;
            }

            while (v19);
          }

          re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v11)
        {
          v23 = v11;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v8 + 8);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v8 + 8);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  *(v21 + 24 * v8 + 8) = v22 | 0x80000000;
  v24 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v24 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *a5 = 0;
  *(v24 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  result = v7 + 16;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v10 = *a4;
  v11 = a4[1];
  *(result - 8) = v8;
  *result = v10;
  *(result + 8) = v11;
  *a4 = 0;
  a4[1] = 0;
  v12 = *(result + 16);
  *(result + 16) = a4[2];
  a4[2] = v12;
  v13 = *(result + 32);
  *(result + 32) = a4[4];
  a4[4] = v13;
  ++*(a4 + 6);
  ++*(result + 24);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

void re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_154, 4 * v10);
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

uint64_t re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addInternal<re::SharedPtr<re::ecs2::Entity> const&,unsigned long long const&>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a3;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  *(v7 + 16) = *a4;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v17 - 1) = 0;
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::deinit(v26);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

BOOL re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
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
      LODWORD(v9) = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
      v8 = v2;
      LODWORD(v9) = v2;
    }

    v10 = (v6 + 32 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      v11 &= ~0x80000000;
      *v10 = v11;
      v12 = *(v10 + 1);
      if (v12)
      {

        *(v10 + 1) = 0;
        v9 = a2[3];
        v6 = *(a1 + 16);
        v11 = *(v6 + 32 * v9);
      }
    }

    v13 = *(a1 + 40);
    *(v6 + 32 * v9) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + (v2 << 6)) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = a2[3];
    }

    else
    {
      *(v6 + (v5 << 6)) = *(v6 + (v5 << 6)) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + (v8 << 6));
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((v10 + 4));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + (v12 << 6));
      v9 = a2[3];
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + (v12 << 6)) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

re::ecs2::PhysicsConstraint *re::ecs2::PhysicsConstraint::PhysicsConstraint(re::ecs2::PhysicsConstraint *this)
{
  *this = 2;
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = &str_67;
  *(this + 24) = 0;
  objc_initWeak(this + 4, 0);
  *(this + 5) = 0;
  *(this + 6) = 0;
  re::ecs2::EntityHandle::reset((this + 32));
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0x3F80000000000000;
  *(this + 13) = &str_67;
  objc_initWeak(this + 14, 0);
  *(this + 15) = 0;
  *(this + 16) = 0;
  re::ecs2::EntityHandle::reset((this + 112));
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 21) = 0x3F80000000000000;
  *(this + 11) = 0u;
  *(this + 24) = 0;
  *(this + 25) = 0x3F80000000000000;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 29) = 0x3F80000000000000;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 15) = vnegq_f64(_Q0);
  *(this + 16) = xmmword_1E309E0F0;
  *(this + 17) = xmmword_1E309E100;
  *(this + 36) = 0;
  *(this + 37) = &str_67;
  v12 = 0;
  v13 = &str_67;
  v10 = re::StringID::operator=(v2, &v12);
  if (v12)
  {
  }

  return this;
}

uint64_t re::ecs2::PhysicsConstraint::PhysicsConstraint(uint64_t a1, int a2, uint64_t *a3, id *a4, _OWORD *a5, id *a6, _OWORD *a7, char a8)
{
  *a1 = 2;
  *(a1 + 16) = &str_67;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v12 = (a1 + 8);
  objc_initWeak((a1 + 32), 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  re::ecs2::EntityHandle::reset((a1 + 32));
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x3F80000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = &str_67;
  objc_initWeak((a1 + 112), 0);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  re::ecs2::EntityHandle::reset((a1 + 112));
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x3F80000000000000;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0x3F80000000000000;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 240) = vnegq_f64(_Q0);
  *(a1 + 256) = xmmword_1E309E0F0;
  *(a1 + 272) = xmmword_1E309E100;
  *(a1 + 288) = 0;
  *(a1 + 296) = &str_67;
  *a1 = a2;
  re::StringID::operator=(v12, a3);
  re::ecs2::EntityHandle::operator=((a1 + 32), a4);
  v20 = a5[1];
  *(a1 + 64) = *a5;
  *(a1 + 80) = v20;
  re::ecs2::EntityHandle::operator=((a1 + 112), a6);
  v21 = a7[1];
  *(a1 + 144) = *a7;
  *(a1 + 160) = v21;
  *(a1 + 24) = a8;
  return a1;
}

re::Constraint *re::ecs2::PhysicsConstraint::makeJoint(re::ecs2::PhysicsConstraint *this, re::ecs2::Scene *a2)
{
  v4 = re::ecs2::EntityHandle::resolve(this + 4, a2);
  v5 = *(re::ecs2::EntityComponentCollection::get((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 336);
  v6 = re::ecs2::EntityHandle::resolve(this + 14, a2);
  v7 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v9 = *(v7 + 42);
  v10 = 0;
  if (v5)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *this;
    if (*this <= 2)
    {
      if (v12 == 1)
      {
        v29 = re::PhysicsFactory::defaultFactory(v7, v8);
        v10 = (*(*v29 + 56))(v29, re::PhysicsFactory::m_defaultAllocator, v5, this + 64, v9, this + 144, *(this + 24));
      }

      else if (v12 == 2)
      {
        v20 = *(this + 69);
        v21 = *(this + 71);
        v22 = re::PhysicsFactory::defaultFactory(v7, v8);
        v23 = (*(*v22 + 72))(v22, re::PhysicsFactory::m_defaultAllocator, v5, this + 64, v9, this + 144, *(this + 24));
        v10 = v23;
        v24 = 3.1416;
        if (v20 <= 3.1416)
        {
          v25 = v20;
        }

        else
        {
          v25 = 3.1416;
        }

        if (v25 < -1.0)
        {
          v25 = -1.0;
        }

        if (v21 <= 3.1416)
        {
          v24 = v21;
        }

        if (v24 < -1.0)
        {
          v24 = -1.0;
        }

        v23[14] = v25;
        v23[15] = v24;
        (*(*v23 + 56))(v23);
      }
    }

    else
    {
      switch(v12)
      {
        case 3:
          v26 = re::PhysicsFactory::defaultFactory(v7, v8);
          v10 = (*(*v26 + 48))(v26, re::PhysicsFactory::m_defaultAllocator, v5, this + 64, v9, this + 144, *(this + 24));
          LODWORD(v27) = *(this + 70);
          re::HingeJoint::setAngularLimit(v10, v27, *(this + 71));
          break;
        case 4:
          v28 = re::PhysicsFactory::defaultFactory(v7, v8);
          v10 = (*(*v28 + 64))(v28, re::PhysicsFactory::m_defaultAllocator, v5, this + 64, v9, this + 144, *(this + 24));
          *(v10 + 7) = *(this + 30);
          (*(*v10 + 56))(v10);
          break;
        case 6:
          v13 = re::PhysicsFactory::defaultFactory(v7, v8);
          v10 = (*(*v13 + 88))(v13, re::PhysicsFactory::m_defaultAllocator, v5, this + 64, v9, this + 144, *(this + 24));
          v14 = *v10;
          v15 = *(this + 31);
          v16 = *(this + 32);
          v17 = *(this + 33);
          v18 = *(this + 34);
          v19 = *(this + 35);
          *(v10 + 7) = *(this + 30);
          (*(v14 + 56))();
          *(v10 + 8) = v15;
          (*(*v10 + 56))(v10);
          *(v10 + 9) = v16;
          (*(*v10 + 56))(v10);
          *(v10 + 10) = v17;
          (*(*v10 + 56))(v10);
          *(v10 + 11) = v18;
          (*(*v10 + 56))(v10);
          *(v10 + 12) = v19;
          (*(*v10 + 56))(v10);
          break;
      }
    }

    re::StringID::StringID(v35, (this + 8));
    v30 = re::StringID::operator=((v10 + 24), v35);
    if (v35[0])
    {
      if (v35[0])
      {
      }
    }

    v35[0] = 0;
    v35[1] = &str_67;
    v31 = (*(**(a2 + 7) + 32))(*(a2 + 7));
    v32 = re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(v31);
    v33 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v32, v4);
    if (v33)
    {
      re::PhysicsJointCollection::add((v33 + 136), v10);
    }
  }

  return v10;
}

void *re::IntrospectionInfo<float [2]>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<float [2]>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<float [2]>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<float [2]>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v3 = re::IntrospectionInfo<float [2]>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v3)
    {
      return &re::IntrospectionInfo<float [2]>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<float [2]>::get(BOOL)::isInitialized)
    {
LABEL_17:
      v11 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v11);
      return &re::IntrospectionInfo<float [2]>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<float [2]>::get(BOOL)::isInitialized = 1;
  v7 = re::introspect_float(1, a2);
  re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<float [2]>::get(BOOL)::info, v7, 2);
  re::IntrospectionRegistry::add(v8, v9);
  re::getPrettyTypeName(&re::IntrospectionInfo<float [2]>::get(BOOL)::info, &v14);
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

  v14 = *(v7 + 2);
  xmmword_1EE186FE0 = v13;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_17;
  }

  return &re::IntrospectionInfo<float [2]>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_PhysicsConstraint(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4BF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4C80, "PhysicsConstraint");
    __cxa_guard_release(&qword_1EE1B4BF0);
  }

  return &unk_1EE1B4C80;
}

void re::ecs2::initInfo_PhysicsConstraint(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v71[0] = 0x12E83513C6A856C8;
  v71[1] = "PhysicsConstraint";
  if (v71[0])
  {
    if (v71[0])
    {
    }
  }

  *(this + 2) = v72;
  if ((atomic_load_explicit(&_MergedGlobals_392, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_392);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_PhysicsJointType(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_type";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B4BF8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_name";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B4C00 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::ecs2::introspect_EntityHandle(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_entityHandleA";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B4C08 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::introspect_PoseF(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_localAnchorPoseA";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B4C10 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::StringID>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "m_pinNameA";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x6000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1B4C18 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::ecs2::introspect_EntityHandle(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "m_entityHandleB";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x7000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1B4C20 = v28;
      v29 = re::introspectionAllocator(v28);
      v30 = re::introspect_PoseF(1);
      v31 = (*(*v29 + 32))(v29, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "m_localAnchorPoseB";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x9000000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1B4C28 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::IntrospectionInfo<re::StringID>::get(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "m_pinNameB";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x12000000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1B4C30 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::introspect_BOOL(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "m_collisionEnabled";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x1800000009;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1B4C38 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::IntrospectionInfo<float [2]>::get(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "m_xLinearLimits";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0xF00000000ALL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1B4C40 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::IntrospectionInfo<float [2]>::get(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "m_yLinearLimits";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0xF80000000BLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1B4C48 = v47;
      v48 = re::introspectionAllocator(v47);
      v50 = re::IntrospectionInfo<float [2]>::get(1, v49);
      v51 = (*(*v48 + 32))(v48, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "m_zLinearLimits";
      *(v51 + 16) = v50;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x1000000000CLL;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1B4C50 = v51;
      v52 = re::introspectionAllocator(v51);
      v54 = re::IntrospectionInfo<float [2]>::get(1, v53);
      v55 = (*(*v52 + 32))(v52, 72, 8);
      *v55 = 1;
      *(v55 + 8) = "m_xAngularLimits";
      *(v55 + 16) = v54;
      *(v55 + 24) = 0;
      *(v55 + 32) = 0x1080000000DLL;
      *(v55 + 40) = 0;
      *(v55 + 48) = 0;
      *(v55 + 56) = 0;
      *(v55 + 64) = 0;
      qword_1EE1B4C58 = v55;
      v56 = re::introspectionAllocator(v55);
      v58 = re::IntrospectionInfo<float [2]>::get(1, v57);
      v59 = (*(*v56 + 32))(v56, 72, 8);
      *v59 = 1;
      *(v59 + 8) = "m_yAngularLimits";
      *(v59 + 16) = v58;
      *(v59 + 24) = 0;
      *(v59 + 32) = 0x1100000000ELL;
      *(v59 + 40) = 0;
      *(v59 + 48) = 0;
      *(v59 + 56) = 0;
      *(v59 + 64) = 0;
      qword_1EE1B4C60 = v59;
      v60 = re::introspectionAllocator(v59);
      v62 = re::IntrospectionInfo<float [2]>::get(1, v61);
      v63 = (*(*v60 + 32))(v60, 72, 8);
      *v63 = 1;
      *(v63 + 8) = "m_zAngularLimits";
      *(v63 + 16) = v62;
      *(v63 + 24) = 0;
      *(v63 + 32) = 0x1180000000FLL;
      *(v63 + 40) = 0;
      *(v63 + 48) = 0;
      *(v63 + 56) = 0;
      *(v63 + 64) = 0;
      qword_1EE1B4C68 = v63;
      v64 = re::introspectionAllocator(v63);
      v65 = re::introspect_PoseF(1);
      v66 = (*(*v64 + 32))(v64, 72, 8);
      *v66 = 1;
      *(v66 + 8) = "m_offsetPoseA";
      *(v66 + 16) = v65;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0xB000000010;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      qword_1EE1B4C70 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = re::introspect_PoseF(1);
      v69 = (*(*v67 + 32))(v67, 72, 8);
      *v69 = 1;
      *(v69 + 8) = "m_offsetPoseB";
      *(v69 + 16) = v68;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0xD000000011;
      *(v69 + 40) = 0;
      *(v69 + 48) = 0;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      qword_1EE1B4C78 = v69;
      __cxa_guard_release(&_MergedGlobals_392);
    }
  }

  *(this + 2) = 0x13000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 17;
  *(this + 8) = &qword_1EE1B4BF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsConstraint>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsConstraint>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsConstraint>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsConstraint>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v70 = v72;
}

void re::internal::defaultDestruct<re::ecs2::PhysicsConstraint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 288));
  re::ecs2::EntityHandle::reset((a3 + 112));
  objc_destroyWeak((a3 + 112));
  *(a3 + 112) = 0;
  re::StringID::destroyString((a3 + 96));
  re::ecs2::EntityHandle::reset((a3 + 32));
  objc_destroyWeak((a3 + 32));
  *(a3 + 32) = 0;

  re::StringID::destroyString((a3 + 8));
}

void re::internal::defaultDestructV2<re::ecs2::PhysicsConstraint>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 288));
  re::ecs2::EntityHandle::reset((a1 + 112));
  objc_destroyWeak((a1 + 112));
  *(a1 + 112) = 0;
  re::StringID::destroyString((a1 + 96));
  re::ecs2::EntityHandle::reset((a1 + 32));
  objc_destroyWeak((a1 + 32));
  *(a1 + 32) = 0;

  re::StringID::destroyString((a1 + 8));
}

void *re::ecs2::allocInfo_AcousticAdjustmentsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_393, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_393))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4D40, "AcousticAdjustmentsComponent");
    __cxa_guard_release(&_MergedGlobals_393);
  }

  return &unk_1EE1B4D40;
}

void re::ecs2::initInfo_AcousticAdjustmentsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xF58A58158D3F78F4;
  v22[1] = "AcousticAdjustmentsComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1B4D18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B4D18);
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
      qword_1EE1B4D20 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "dryWetAdjustment";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B4D28 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "dullBrightAdjustment";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B4D30 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "specularDiffuseAdjustment";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2400000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B4D38 = v20;
      __cxa_guard_release(&qword_1EE1B4D18);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B4D20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AcousticAdjustmentsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AcousticAdjustmentsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AcousticAdjustmentsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AcousticAdjustmentsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228AcousticAdjustmentsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::internal::defaultConstruct<re::ecs2::AcousticAdjustmentsComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD8AF8;
  *(v3 + 32) = 0;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::AcousticAdjustmentsComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD8AF8;
  *(v1 + 32) = 0;
  *(v1 + 28) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228AcousticAdjustmentsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_VisualProxyScopeService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_394, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_394))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4DD8, "VisualProxyScopeService");
    __cxa_guard_release(&_MergedGlobals_394);
  }

  return &unk_1EE1B4DD8;
}

void re::ecs2::initInfo_VisualProxyScopeService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x532BCA60CD03F79ELL;
  v6[1] = "VisualProxyScopeService";
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
  *(this + 8) = &re::ecs2::initInfo_VisualProxyScopeService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_PhysicsJointsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4E70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4E88, "PhysicsJointsComponent");
    __cxa_guard_release(&qword_1EE1B4E70);
  }

  return &unk_1EE1B4E88;
}

void re::ecs2::initInfo_PhysicsJointsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x19C0EC21209AF15ALL;
  v13[1] = "PhysicsJointsComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&_MergedGlobals_395, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_395);
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
      qword_1EE1B4E78 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::ecs2::introspect_PhysicsJointDefinitionAndRuntimeCollection(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_joints";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B4E80 = v11;
      __cxa_guard_release(&_MergedGlobals_395);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B4E78;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsJointsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsJointsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsJointsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsJointsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222PhysicsJointsComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

double re::internal::defaultConstruct<re::ecs2::PhysicsJointsComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v3 = (this + 32);
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CFFF10;
  *v3 = &unk_1F5CF54D0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = 0;
  *(v4 + 64) = 0;
  result = 0.0;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PhysicsJointsComponent>(uint64_t a1)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v1 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CFFF10;
  *v1 = &unk_1F5CF54D0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  *(v2 + 64) = 0;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 0;
  return result;
}

void re::ecs2::PhysicsJointsComponent::~PhysicsJointsComponent(re::ecs2::PhysicsJointsComponent *this)
{
  *this = &unk_1F5CFFF10;
  *(this + 4) = &unk_1F5CF54D0;
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 80);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(this + 40);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CFFF10;
  *(this + 4) = &unk_1F5CF54D0;
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 80);
  re::DynamicArray<re::ecs2::PhysicsJointDefinition>::deinit(this + 40);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void **re::ecs2::PhysicsJointsComponent::addJoint(re::ecs2::PhysicsJointsComponent *this, const re::ecs2::PhysicsJointDefinition *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 32);
    }

    while (v3);
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::addJoint((this + 32), a2, v5);

  return re::ecs2::Component::markDirty(this);
}

void **re::ecs2::PhysicsJointsComponent::setJoints(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 32);
    }

    while (v4);
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::setJoints((a1 + 32), a2, a3, v6);

  return re::ecs2::Component::markDirty(a1);
}

unint64_t re::ecs2::PhysicsJointsComponent::joint(re::ecs2::PhysicsJointsComponent *this, unint64_t a2)
{
  if (*(this + 7) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 9) + 304 * a2;
}

void **re::ecs2::PhysicsJointsComponent::removeFromSimulation(re::ecs2::PhysicsJointsComponent *this)
{
  if (*(this + 12))
  {
    v2 = 0;
    do
    {
      re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::deleteRuntimeJoint((this + 32), v2++, 0);
    }

    while (*(this + 12) > v2);
  }

  return re::ecs2::Component::markDirty(this);
}

uint64_t re::ecs2::PhysicsJointsComponentStateImpl::deleteDeferredDeletedJoints(uint64_t this, re::ecs2::PhysicsSimulationService *a2, const re::ecs2::Scene *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    this = (*(*this + 32))(this, a2, a3);
    if (this)
    {
      v3 = this;
      this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v23, this, 0);
      v4 = *&v23[0];
      v12 = *&v23[0];
      v13 = DWORD2(v23[0]);
      v5 = WORD4(v23[0]);
      v6 = HIWORD(DWORD2(v23[0]));
      v7 = v3 == *&v23[0] && WORD4(v23[0]) == 0xFFFF;
      if (!v7 || v6 != 0xFFFF)
      {
        do
        {
          v9 = v6;
          v10 = *(v4 + 16);
          if (v10 <= v6)
          {
            v14 = 0;
            memset(v23, 0, sizeof(v23));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v15 = 136315906;
            v16 = "operator[]";
            v17 = 1024;
            v18 = 797;
            v19 = 2048;
            v20 = v9;
            v21 = 2048;
            v22 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v11 = *(*(*(v4 + 32) + 16 * v6) + 272 * v5 + 16);
          if (v11)
          {
            re::PhysicsJointCollection::deleteDeferredDeletedJoints((v11 + 136));
          }

          this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v12);
          v4 = v12;
          v5 = v13;
          v6 = HIWORD(v13);
        }

        while (v12 != v3 || v13 != 0xFFFF || HIWORD(v13) != 0xFFFF);
      }
    }
  }

  return this;
}

BOOL re::ecs2::PhysicsJointsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v40, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), (*(*v9 + 24))(v9), (*(*v10 + 40))(v10, v11)))
  {
    re::ecs2::PhysicsJointsComponentStateImpl::deleteDeferredDeletedJoints(v10, *(a3 + 8), v12);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v50, a5, 0);
    v14 = *&v50[0];
    v37 = a4;
    v38 = *&v50[0];
    v39 = DWORD2(v50[0]);
    v15 = WORD4(v50[0]);
    v16 = HIWORD(DWORD2(v50[0]));
    if (*&v50[0] != a5 || WORD4(v50[0]) != 0xFFFF || v16 != 0xFFFF)
    {
      do
      {
        v17 = v16;
        v18 = *(v14 + 16);
        if (v18 <= v16)
        {
          v41 = 0;
          memset(v50, 0, sizeof(v50));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v42 = 136315906;
          v43 = "operator[]";
          v44 = 1024;
          v45 = 797;
          v46 = 2048;
          v47 = v17;
          v48 = 2048;
          v49 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v19 = *(*(*(v14 + 32) + 16 * v16) + 8 * v15);
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = *(v19 + 16);
          do
          {
            v22 = v21;
            v21 = *(v21 + 32);
          }

          while (v21);
          v23 = *(v22 + 24);
          do
          {
            v24 = v20;
            v20 = *(v20 + 32);
          }

          while (v20);
          v25 = *(v24 + 24);
          if (v25)
          {
            v26 = (*(**(v25 + 56) + 32))(*(v25 + 56));
            v27 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v26);
            if (v27)
            {
              v28 = v27;
              v29 = (*(*v27 + 24))(v27);
              v30 = (*(*v28 + 40))(v28, v25);
              *&v50[0] = v29;
              *(&v50[0] + 1) = v30;
              if (v30)
              {
                v31 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v50, *(v19 + 16));
                if (v31)
                {
                  v32 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v31);
                  v33 = 0;
                  if (v32 && v23)
                  {
                    v33 = *(*(v19 + 16) + 304) & 1;
                  }

                  goto LABEL_22;
                }
              }
            }
          }

          v32 = 0;
        }

        else
        {
          v32 = 0;
          v23 = 0;
        }

        v33 = 0;
LABEL_22:
        re::ecs2::PhysicsJointDefinitionAndRuntimeCollection::auditAndSyncRuntimeJoints((v19 + 32), v33, v32, v23);
        v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v38);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v37, v34, *(a3 + 48));
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v38);
        v14 = v38;
        v15 = v39;
        v16 = HIWORD(v39);
      }

      while (v38 != a5 || v39 != 0xFFFF || HIWORD(v39) != 0xFFFF);
    }

    re::ecs2::PhysicsJointsComponentStateImpl::deleteDeferredDeletedJoints(v10, *(a3 + 8), v13);
    v35 = *(a5 + 40) != 0;
  }

  else
  {
    v35 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v40);
  return v35;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsJointsComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 3;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(a2[2], a2[v6], v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      ++v6;
    }

    while (v6 != 7);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsJointsComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsJointsComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs222PhysicsJointsComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_TimebaseComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_396, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_396))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4F40, "TimebaseComponent");
    __cxa_guard_release(&_MergedGlobals_396);
  }

  return &unk_1EE1B4F40;
}

void re::ecs2::initInfo_TimebaseComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x3115163BF759E6BELL;
  v13[1] = "TimebaseComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1B4F20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B4F20);
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
      qword_1EE1B4F30 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_TimebaseTree(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "tree";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B4F38 = v11;
      __cxa_guard_release(&qword_1EE1B4F20);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B4F30;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TimebaseComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TimebaseComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TimebaseComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TimebaseComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217TimebaseComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void *re::ecs2::allocInfo_TimebaseSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4F28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4FD0, "TimebaseSystem");
    __cxa_guard_release(&qword_1EE1B4F28);
  }

  return &unk_1EE1B4FD0;
}

void re::ecs2::initInfo_TimebaseSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA77DDFB789D60E1ALL;
  v6[1] = "TimebaseSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_TimebaseSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TimebaseSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TimebaseSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::TimebaseSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::TimebaseSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TimebaseSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TimebaseSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::TimebaseSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5D00000;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::TimebaseSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5D00000;
  result[28] = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::TimebaseComponent::getTimebaseService(re::ecs2::TimebaseComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = v1;
    v1 = *(v1 + 32);
  }

  while (v1);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = (*(*v4 + 32))(v4);

  return re::ServiceLocator::serviceOrNull<re::TimebaseService>(v5);
}

_anonymous_namespace_ *re::ecs2::TimebaseSystem::willAddSystemToECSService(re::ecs2::TimebaseSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v2);
  *(this + 28) = result;
  return result;
}

double re::ecs2::TimebaseSystem::willAddSceneToECSService(re::ecs2::TimebaseSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v5 = this;
    v6 = re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::willRemoveComponents,re::ecs2::TimebaseSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 272), &v5);
    v5 = this;
    v6 = re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::didAddComponents,re::ecs2::TimebaseSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 8), &v5);
  }

  return result;
}

void re::ecs2::TimebaseSystem::willRemoveSceneFromECSService(re::ecs2::TimebaseSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::willRemoveComponents,re::ecs2::TimebaseSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 272, &v4);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::didAddComponents,re::ecs2::TimebaseSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 8, &v4);
  }
}

void ___ZN2re4ecs214TimebaseSystem16didAddComponentsEPNS0_24SceneComponentCollectionINS0_17TimebaseComponentEEENS_5SliceIPS3_EE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  re::ecs2::Component::markDirty(v1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {

      re::ecs2::NetworkComponent::markDirty(v3, v1);
    }
  }
}

uint64_t re::ecs2::TimebaseSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v3 = result;
    if (*(result + 224))
    {
      v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v39);
      v6 = *(a3 + 200);
      if (v6)
      {
        v7 = *(a3 + 216);
        v37 = &v7[v6];
        v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        v36 = vdupq_n_s64(1uLL).i64[1];
        while (1)
        {
          v9 = *v7;
          isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
          if (isStatisticCollectionEnabled)
          {
            v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
            v12 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[62]);
            v13 = v12 ? *(v12 + 384) : 0;
            v14 = *(v11 + 152);
            if (v14)
            {
              v15 = v14[1184].u64[0];
              if (v15 >= v13)
              {
                v15 = v13;
              }

              v14[1184].i64[0] = v15;
              v16 = v14[1184].u64[1];
              if (v16 <= v13)
              {
                v16 = v13;
              }

              v14[1184].i64[1] = v16;
              v17.i64[1] = v36;
              v17.i64[0] = v13;
              v14[1185] = vaddq_s64(v14[1185], v17);
              *(v11 + 184) = 0;
            }
          }

          re::ecs2::SceneComponentTable::get((v9 + 200), v8[62]);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v38, 3119, v3);
          v18 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[62]);
          if (v18)
          {
            v19 = *(v18 + 48);
            if (v19)
            {
              break;
            }
          }

LABEL_47:
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v38);
          ++v7;
          v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          if (v7 == v37)
          {
            return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v39);
          }
        }

        v20 = *(v18 + 50);
        v21 = 8 * v19;
        while (1)
        {
          v22 = *v20;
          v23 = *(*v20 + 16);
          if (v23)
          {
            v24 = *(v23 + 216);
            if (v24)
            {
              if (*(v24 + 4))
              {
                OwnerPeerID = RESyncableGetOwnerPeerID();
              }

              else
              {
                OwnerPeerID = *(v24 + 8);
              }

              v18 = re::ecs2::NetworkComponent::owningProcessType(v24);
              LOBYTE(v24) = v18;
              goto LABEL_26;
            }
          }

          else
          {
            LOBYTE(v24) = 0;
          }

          OwnerPeerID = 0;
LABEL_26:
          if (*(v22 + 168) != *(v22 + 80) && *(v22 + 160) == 1)
          {
            v26 = re::TimebaseLog(v18);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(v22 + 168);
              v28 = *(v22 + 80);
              *buf = 134218752;
              v41 = v22;
              v42 = 2048;
              v43 = OwnerPeerID;
              v44 = 2048;
              v45 = v27;
              v46 = 2048;
              v47 = v28;
              _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "removing timebase component %p (owner %llu) with registered parent ID %llu and desired parent ID %llu", buf, 0x2Au);
            }

            v18 = (*(**(v3 + 224) + 88))(*(v3 + 224), v22 + 32);
            *(v22 + 160) = 0;
            *(v22 + 168) = 0;
          }

          if (!OwnerPeerID && !*(v22 + 80))
          {
            goto LABEL_42;
          }

          if ((*(v22 + 160) & 1) == 0)
          {
            (*(**(v3 + 224) + 88))(*(v3 + 224), v22 + 32);
            v29 = (*(**(v3 + 224) + 80))(*(v3 + 224), v22 + 32);
            *(v22 + 160) = v29;
            if (v29)
            {
              v30 = *(v22 + 80);
            }

            else
            {
              v30 = 0;
            }

            *(v22 + 168) = v30;
            v31 = re::TimebaseLog(v29);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(v22 + 168);
              v33 = *(v22 + 80);
              *buf = 134218752;
              v41 = v22;
              v42 = 2048;
              v43 = OwnerPeerID;
              v44 = 2048;
              v45 = v32;
              v46 = 2048;
              v47 = v33;
              _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "removed and re-added timebase component %p (owner %llu) with new registered parent ID %llu and desired parent ID %llu", buf, 0x2Au);
            }
          }

          if (!OwnerPeerID && !*(v22 + 80))
          {
LABEL_42:
            if (*(v22 + 160) == 1)
            {
              v34 = re::TimebaseLog(v18);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = *(v22 + 168);
                *buf = 134218240;
                v41 = v22;
                v42 = 2048;
                v43 = v35;
                _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "removing locally-owned timebase component %p with registered parent ID %llu", buf, 0x16u);
              }

              v18 = (*(**(v3 + 224) + 88))(*(v3 + 224), v22 + 32);
              *(v22 + 160) = 0;
              *(v22 + 168) = 0;
            }
          }

          *(v22 + 152) = v24;
          ++v20;
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_47;
          }
        }
      }

      return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v39);
    }
  }

  return result;
}

void re::ecs2::TimebaseSystem::~TimebaseSystem(re::ecs2::TimebaseSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

__n128 re::make::shared::unsafelyInplace<re::ecs2::TimebaseComponent>(ArcSharedObject *a1)
{
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE4B20;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  v2 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(v1 + 88) = *MEMORY[0x1E6960CC0];
  v4 = *(v2 + 16);
  *(v1 + 104) = v4;
  *(v1 + 112) = result;
  *(v1 + 152) = 0;
  *(v1 + 128) = v4;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217TimebaseComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::willRemoveComponents,re::ecs2::TimebaseSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 224))
    {
      v5 = a4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3++;
        (*(**(a1 + 224) + 56))(*(a1 + 224), v8 + 32, 0);
        (*(**(a1 + 224) + 88))(*(a1 + 224), v8 + 32);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::TimebaseComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TimebaseSystem::didAddComponents,re::ecs2::TimebaseSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 224))
    {
      v5 = a4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 8 * a4;
      do
      {
        v9 = *a3++;
        v10 = *(a1 + 224);
        v12[0] = v7;
        v12[1] = 3221225472;
        v12[2] = ___ZN2re4ecs214TimebaseSystem16didAddComponentsEPNS0_24SceneComponentCollectionINS0_17TimebaseComponentEEENS_5SliceIPS3_EE_block_invoke;
        v12[3] = &__block_descriptor_40_e9_v16__0_v8l;
        v12[4] = v9;
        (*(*v10 + 56))(v10, v9 + 32, v12);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return 0;
}

void re::introspect_RenderPassGroupActiveState(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5068, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5070))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B50D8, "RenderPassGroupActiveState", 1, 1, 1, 1);
      qword_1EE1B50D8 = &unk_1F5D0C658;
      qword_1EE1B5118 = &re::introspect_RenderPassGroupActiveState(BOOL)::enumTable;
      dword_1EE1B50E8 = 9;
      __cxa_guard_release(&qword_1EE1B5070);
    }

    if (_MergedGlobals_397)
    {
      break;
    }

    _MergedGlobals_397 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B50D8, a2);
    v35 = 0xB4A8E64523292C66;
    v36 = "RenderPassGroupActiveState";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
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
      v6 = qword_1EE1B5118;
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
      xmmword_1EE1B50F8 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1B5068);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Always";
      qword_1EE1B50A8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Never";
      qword_1EE1B50B0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "DuringFade";
      qword_1EE1B50B8 = v34;
      __cxa_guard_release(&qword_1EE1B5068);
    }
  }
}