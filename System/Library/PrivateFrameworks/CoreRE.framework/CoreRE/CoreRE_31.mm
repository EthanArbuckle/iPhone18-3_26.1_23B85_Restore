uint64_t re::Optional<re::internal::AssetLoadItem::LegacySource>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::DynamicString::deinit((a1 + 48));
      re::DynamicString::deinit((a1 + 16));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 8);
    re::DynamicString::operator=((a1 + 16), (a2 + 16));
    re::DynamicString::operator=((a1 + 48), (a2 + 48));
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    v5 = *(a2 + 32);
    *(a2 + 40) = 0;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 72) = *(a2 + 72);
    v8 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 48) = 0;
    v9 = *(a2 + 64);
    *(a2 + 72) = 0;
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a2 + 56) = v11;
    *(a2 + 64) = v10;
LABEL_6:
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

void re::internal::AssetBackgroundLoader::unloadAssetAsync(re::internal::AssetBackgroundLoader *this@<X0>, void *a2@<X1>, const re::AssetType *a3@<X2>, void *a4@<X3>, const char *a5@<X4>, re::internal::AssetLoadItem **a6@<X8>)
{
  re::make::shared::object<re::internal::AssetLoadItem>(this, a6);
  v12 = *a6;
  *(v12 + 3) = a2;
  *(v12 + 12) = a4;
  *(v12 + 36) = 1;
  v13 = *(this + 80);
  v14 = *(this + 82);
  *(v12 + 8) = a3;
  *(v12 + 9) = v13;
  *(v12 + 10) = 0;
  *(v12 + 11) = v14;
  v15 = *a6;
  v17[0] = a5;
  v17[1] = strlen(a5);
  re::DynamicString::operator=((v15 + 32), v17);
  v16 = *a6;

  re::internal::AssetBackgroundLoader::queueOrStartBackgroundTask(this, v16, "unload", 0);
}

uint64_t re::internal::AssetLoadItem::setFailure(re::internal::AssetLoadItem *this, const re::DynamicString *a2)
{
  v4[0] = 1;
  re::DynamicString::DynamicString(&v5, a2);
  result = re::Optional<re::DynamicString>::operator=(this + 152, v4);
  if (v4[0] == 1)
  {
    result = v5;
    if (v5)
    {
      if (v6)
      {
        result = (*(*v5 + 40))();
      }
    }
  }

  *(this + 36) = 3;
  return result;
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,std::variant<re::DynamicString,re::Data,unsigned long>>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v8) + 40;
  }
}

uint64_t re::Queue<re::internal::AssetLoadItem *>::dequeue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(*(a1 + 40) + 8 * v5);
    if ((v5 + 1) < *(a1 + 8))
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 16) = v4 - 1;
    *(a1 + 24) = v7;
    ++*(a1 + 32);
    return v6;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::AssetBackgroundLoader::tryGetLoadItemResult(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    os_unfair_lock_lock((a1 + 680));
  }

  if (*(a1 + 536))
  {
    v4 = re::Queue<re::internal::AssetLoadItem *>::dequeue(a1 + 520, a2);
  }

  else
  {
    if (*(a1 + 408))
    {
      v5 = *(a1 + 424);
      v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v7 = *(a1 + 424);
      v8 = *(a1 + 408);
      if (v5 != (v7 + 8 * v8))
      {
        rep = v6.__d_.__rep_;
        do
        {
          if ((*(*v5 + 440) & 1) == 0)
          {
            v10 = rep - *(*v5 + 432);
            if (v10 >= 1001000)
            {
              v11 = *re::assetsLogObjects(v6.__d_.__rep_);
              v6.__d_.__rep_ = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
              if (LODWORD(v6.__d_.__rep_))
              {
                v12 = *v5;
                if (*(*v5 + 40))
                {
                  v13 = *(v12 + 48);
                }

                else
                {
                  v13 = v12 + 41;
                }

                v14 = *(a1 + 152);
                v15 = *(a1 + 408);
                v16 = *(a1 + 536);
                *buf = 136316162;
                v19 = v13;
                v20 = 2048;
                v21 = v10 / 1000;
                v22 = 2048;
                v23 = v14;
                v24 = 2048;
                v25 = v15;
                v26 = 2048;
                v27 = v16;
                _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Asset '%s' has been in active state in Asset Background Loader for '%lld' ms.\nPending: %zu, Active: %zu, Done: %zu", buf, 0x34u);
              }

              *(*v5 + 440) = 1;
              v7 = *(a1 + 424);
              v8 = *(a1 + 408);
            }
          }

          ++v5;
        }

        while (v5 != (v7 + 8 * v8));
      }
    }

    v4 = 0;
  }

  if (v2 == 1)
  {
    os_unfair_lock_unlock((a1 + 680));
  }

  return v4;
}

void re::internal::AssetBackgroundLoader::assetLoadItemFree(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 8);
  }

  v4 = *(a2 + 392);
  if (v4)
  {

    *(a2 + 392) = 0;
  }
}

void re::internal::AssetBackgroundLoader::waitForActiveLoadItemsToComplete(re::internal::AssetBackgroundLoader *this)
{
  for (i = *(this + 48); ; i = *(this + 48))
  {
    os_unfair_lock_lock(i);
    if (!*(this + 51))
    {
      break;
    }

    v3 = **(this + 53);
    if (!v3)
    {
      break;
    }

    v4 = &v3[2];
    os_unfair_lock_unlock(*(this + 48));
    re::internal::AssetBackgroundLoader::runIfNeeded(this, v3);
  }

  v5 = *(this + 48);

  os_unfair_lock_unlock(v5);
}

void re::internal::AssetBackgroundLoader::loadNow(os_unfair_lock_s *this, re::internal::AssetLoadItem *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    os_unfair_lock_lock(this + 170);
  }

  v6 = *&this[70]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = 0;
LABEL_5:
    v8 = 1 - v6;
    do
    {
      *v16 = re::Queue<re::internal::AssetLoadItem *>::dequeue(&this[66], a2);
      if (*v16 == a2)
      {
        v6 = -v8;
        v7 = 1;
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }

      re::Queue<re::internal::AssetLoadItem *>::enqueue(&this[66]._os_unfair_lock_opaque, v16);
      ++v8;
    }

    while (v8 != 1);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v9 = *&this[38]._os_unfair_lock_opaque;
  if (v9)
  {
    v10 = 0;
LABEL_14:
    v11 = 1 - v9;
    do
    {
      *v16 = re::Queue<re::internal::AssetLoadItem *>::dequeue(&this[34], a2);
      if (*v16 == a2)
      {
        v9 = -v11;
        v10 = 1;
        if (v11)
        {
          goto LABEL_14;
        }

        goto LABEL_21;
      }

      re::Queue<re::internal::AssetLoadItem *>::enqueue(&this[34]._os_unfair_lock_opaque, v16);
      ++v11;
    }

    while (v11 != 1);
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_21:
    v12.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v13 = v12.__d_.__rep_ - *(a2 + 53);
    if (v13 >= 300000)
    {
      v14 = *re::assetsLogObjects(v12.__d_.__rep_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 40))
        {
          v15 = *(a2 + 6);
        }

        else
        {
          v15 = a2 + 41;
        }

        *v16 = 136315394;
        *&v16[4] = v15;
        v17 = 2048;
        v18 = v13 / 1000;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Asset '%s' has been in pending state in Asset Background Loader for '%lld' ms, started loading now via loadNow", v16, 0x16u);
      }
    }

    re::internal::AssetBackgroundLoader::prepareBackgroundTask(this, a2, 0);
  }

LABEL_28:
  if (a3 == 1)
  {
    os_unfair_lock_unlock(this + 170);
  }

  re::internal::AssetBackgroundLoader::runIfNeeded(this, a2);
}

void *re::Queue<re::internal::AssetLoadItem *>::growCapacity(void *this, unint64_t a2)
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

      return re::Queue<re::internal::AssetLoadItem *>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::internal::AssetLoadItem *>::setCapacity(v4, v3);
      v4[2] = 0;
      v4[3] = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

void *re::Queue<re::internal::AssetLoadItem *>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::internal::AssetLoadItem *>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v8 = result;
            v3 = v5[1];
            if (!v3)
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v9 = v5[2];
      if (v9)
      {
        v10 = v5[3];
        v11 = v10;
        do
        {
          v8[v11] = *(v5[5] + 8 * (v10 % v3));
          if (v11 + 1 < a2)
          {
            ++v11;
          }

          else
          {
            v11 = 0;
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

re::internal::AssetLoadItem *re::make::shared::object<re::internal::AssetLoadItem>@<X0>(re *a1@<X0>, re::internal::AssetLoadItem **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 448, 8);
  result = re::internal::AssetLoadItem::AssetLoadItem(v4);
  *a2 = result;
  return result;
}

double re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
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

void re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(int *a1)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    v8 = v1;
    v9 = v2;
    *a1 = v3 & 0x7FFFFFFF;
    v5 = re::DynamicString::deinit((a1 + 2));
    v6 = a1[18];
    if (v6 != -1)
    {
      (*(&off_1F5CB91E0 + v6))(&v7, a1 + 10, v5);
    }

    a1[18] = -1;
  }
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,std::variant<re::DynamicString,re::Data,unsigned long>>(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 40) = 0;
  v7 += 40;
  *(v7 + 32) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(v7, a4);
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 88 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 80) = a3;
  ++*(a1 + 28);
  return v7 + 88 * v5;
}

void re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

unsigned int *re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(unsigned int *result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % v4[6]);
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = *(a2 + 16) + v5;
        *(v8 + 40) = 0;
        v8 += 40;
        *(v8 + 32) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(v8, v14 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = result[8];
  if (v4 != -1)
  {
    result = (*(&off_1F5CB91E0 + v4))(&v7, result);
  }

  v3[8] = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CB91F8[v5])(&v6, a2);
    v3[8] = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::Data,unsigned long> &&>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 24) = a2[3];
  v4 = a2[1];
  *v2 = *a2;
  *a2 = 0;
  v5 = a2[2];
  a2[3] = 0;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::Data,unsigned long>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::DynamicString,re::Data,unsigned long> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

uint64_t re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::WrappedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {

      *(a1 + 16) = 0;
    }
  }

  else
  {
  }

  return a1;
}

void *re::allocInfo_AssetService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_36, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_36))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191BF0, "AssetService");
    __cxa_guard_release(&_MergedGlobals_36);
  }

  return &unk_1EE191BF0;
}

void re::initInfo_AssetService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x308AF415FCB3338ALL;
  v6[1] = "AssetService";
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
  *(this + 8) = &re::initInfo_AssetService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::RealityArchiveWriter *re::RealityArchiveWriter::RealityArchiveWriter(re::RealityArchiveWriter *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9220;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 16) = 1;
  *(this + 9) = 0;
  return this;
}

void re::RealityArchiveWriter::~RealityArchiveWriter(re::RealityArchiveWriter *this)
{
  *this = &unk_1F5CB9220;
  v2 = *(this + 9);
  if (v2)
  {
    zip_entry_save_data_end(v2);
  }

  *(this + 9) = 0;
  re::DynamicString::deinit((this + 32));
  v3 = *(this + 3);
  if (v3)
  {
    zip_close(v3);
    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityArchiveWriter::~RealityArchiveWriter(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RealityArchiveWriter::open@<X0>(re::RealityArchiveWriter *this@<X0>, re *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 3))
  {
  }

  else if (re::ensureFolderExistsForFile(a2, a2))
  {
    if (!*(this + 3))
    {
      v10 = zip_file_create(a2);
      *(this + 3) = v10;
      if (v10)
      {
        v10->_extra = 4096;
        *&v11 = a2;
        *(&v11 + 1) = strlen(a2);
        result = re::DynamicString::operator=((this + 32), &v11);
        *a3 = 1;
        return result;
      }
    }

    result = re::DynamicString::format("Failed to open reality archive for writing at path '%s'.", &v11, a2);
  }

  else
  {
    result = re::DynamicString::format("Could not create parent folders for file path %s.", &v11, a2);
  }

  v7 = v11;
  v8 = v12;
  v9 = v13;
  *a3 = 0;
  *(a3 + 8) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  return result;
}

uint64_t re::RealityArchiveWriter::getCompressionMethod(re::RealityArchiveWriter *this, uint64_t a2)
{
  v4 = *(this + 16);
  if (v4 < 3)
  {
    return (0x20301u >> (8 * v4)) & 3;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown compression method set", "!Unreachable code", "convertToArchiveCompression", 47, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::RealityArchiveWriter::writeEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFData *a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 24);
  if (!v9)
  {
LABEL_76:
    v41 = v48;
    v42 = v49;
    v43 = v50;
    *a7 = 0;
    *(a7 + 8) = v41;
    *(a7 + 24) = v42;
    *(a7 + 32) = v43;
    return result;
  }

  if (a4)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        if (a5)
        {
          v14 = a6 == 0;
        }

        else
        {
          v14 = 1;
        }

        v15 = !v14;
        goto LABEL_11;
      }

      v16 = 0;
      if (a5)
      {
        v21 = a6 == 0;
      }

      else
      {
        v21 = 1;
      }

      v15 = !v21;
      goto LABEL_38;
    }

    if (a5)
    {
      v18 = a6 == 0;
    }

    else
    {
      v18 = 1;
    }

    v15 = !v18;
LABEL_29:
    if (v15)
    {
      v16 = -32669;
    }

    else
    {
      v16 = 99;
    }

    goto LABEL_38;
  }

  v19 = *(a1 + 64);
  if (a5)
  {
    v20 = a6 == 0;
  }

  else
  {
    v20 = 1;
  }

  v15 = !v20;
  if ((v19 - 2) < 2)
  {
    goto LABEL_29;
  }

  if (v19 == 4)
  {
    v16 = 14;
  }

  else
  {
    if (v19 == 1)
    {
LABEL_11:
      v16 = 8;
      goto LABEL_38;
    }

    v16 = 0;
  }

LABEL_38:
  v22 = v16 < 0;
  v23 = v15 & v22;
  if ((v15 & v22) != 0)
  {
    v24 = a5;
  }

  else
  {
    v24 = 0;
  }

  entry = zip_create_entry(v9, a2, v16, v24);
  if (!entry)
  {
    result = re::DynamicString::format("Failed to create archive entry named '%s'.", &v48, a2);
    goto LABEL_76;
  }

  v26 = zip_entry_save_data_begin(entry);
  if (!v26)
  {
    result = re::DynamicString::format("Failed to initialize entry '%s' for writing.", &v48, a2);
    goto LABEL_76;
  }

  v27 = v26;
  v47 = a2;
  Length = CFDataGetLength(a3);
  BytePtr = CFDataGetBytePtr(a3);
  v30 = BytePtr;
  if (v23)
  {
    v31 = 0;
    v32 = (a6 + 8);
    v33 = a5;
    while (1)
    {
      v34 = *v32;
      if (v34 == 3)
      {
        v35 = 0;
      }

      else if (v34 == 2)
      {
        v35 = 1;
      }

      else if (*v32)
      {
        v35 = -1;
      }

      else
      {
        v35 = *(a1 + 64) - 1;
      }

      v36 = *(v32 - 1);
      v37 = __CFADD__(v36, v31);
      v31 += v36;
      if (v37 || v31 > Length)
      {
        re::DynamicString::format("Chunks requested overflowed available data '%s'.", &v48, v47);
        goto LABEL_79;
      }

      v38 = v35 >= 4 ? 0 : 0xE006300630008uLL >> (16 * v35);
      if (zip_entry_save_chunk_begin(v27, v38))
      {
        v39 = *(*(v27 + 16) + 92) < 0 && *(v27 + 184) == 1 ? zip_entry_save_data_write(v30, v36, v27) : 0;
        v40 = zip_entry_save_chunk_end(v27) ? v39 : 0;
      }

      else
      {
        v40 = 0;
      }

      if (v40 != v36)
      {
        break;
      }

      v30 += v36;
      v32 += 16;
      if (!--v33)
      {
        goto LABEL_72;
      }
    }

    re::DynamicString::format("Failed to write chunk data to entry '%s'.", &v48, v47);
    goto LABEL_79;
  }

  if (zip_entry_save_data_write(BytePtr, Length, v27) == Length)
  {
LABEL_72:
    result = zip_entry_save_data_end(v27);
    if (result)
    {
      *a7 = 1;
      return result;
    }

    result = re::DynamicString::format("Failed to finalize write of entry '%s'.", &v48, v47);
    goto LABEL_76;
  }

  re::DynamicString::format("Failed to write data to entry '%s'.", &v48, v47);
LABEL_79:
  v44 = v48;
  v45 = v49;
  v46 = v50;
  *a7 = 0;
  *(a7 + 8) = v44;
  *(a7 + 24) = v45;
  *(a7 + 32) = v46;

  return zip_entry_save_data_end(v27);
}

__n128 re::RealityArchiveWriter::close@<Q0>(re::RealityArchiveWriter *this@<X0>, uint64_t a2@<X8>)
{
  v5 = (this + 24);
  v4 = *(this + 3);
  if (!v4)
  {
    v10 = "This RealityArchiveWriter is not opened for writing.";
LABEL_12:
    result = v13;
    v11 = v14;
    v12 = v15;
    *a2 = 0;
    *(a2 + 8) = result;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    return result;
  }

  v6 = zip_save_manifest(v4, 0, v5, 1uLL);
  if ((v6 & 1) == 0)
  {
    v10 = "Failed to save archive manifest.";
    goto LABEL_12;
  }

  if (*v5)
  {
    v8 = zip_close(*v5);
    *v5 = 0;
    if ((v8 & 1) == 0)
    {
      v10 = "Failed to write and close archive.";
      goto LABEL_12;
    }
  }

  if (*(this + 40))
  {
    *(this + 5) = 1;
    v9 = *(this + 6);
  }

  else
  {
    *(this + 40) = 0;
    v9 = this + 41;
  }

  *v9 = 0;
  *a2 = 1;
  return result;
}

void *re::allocInfo_ResourceSharingService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_37, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_37))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191C88, "ResourceSharingService");
    __cxa_guard_release(&_MergedGlobals_37);
  }

  return &unk_1EE191C88;
}

void re::initInfo_ResourceSharingService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xEF2E39053FE8140ELL;
  v6[1] = "ResourceSharingService";
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
  *(this + 8) = &re::initInfo_ResourceSharingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_ResourceFetchService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191D20, "ResourceFetchService");
    __cxa_guard_release(&_MergedGlobals_38);
  }

  return &unk_1EE191D20;
}

void re::initInfo_ResourceFetchService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB75BF8A4312FB3D2;
  v6[1] = "ResourceFetchService";
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
  *(this + 8) = &re::initInfo_ResourceFetchService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::AssetPath *re::AssetPath::AssetPath(re::AssetPath *this, re::Allocator *a2)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 1) = a2;
  re::DynamicString::setCapacity(this + 1, 0);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 5) = a2;
  re::DynamicString::setCapacity(this + 5, 0);
  *(this + 9) = 0;
  return this;
}

uint64_t re::AssetPath::reset(uint64_t this)
{
  *this = 0;
  if (*(this + 16))
  {
    *(this + 16) = 1;
    v1 = *(this + 24);
  }

  else
  {
    *(this + 16) = 0;
    v1 = (this + 17);
  }

  *v1 = 0;
  if (*(this + 48))
  {
    *(this + 48) = 1;
    v2 = *(this + 56);
  }

  else
  {
    *(this + 48) = 0;
    v2 = (this + 49);
  }

  *v2 = 0;
  *(this + 72) = 0;
  return this;
}

__n128 re::AssetPath::hadParseError@<Q0>(uint64_t a1@<X0>, const char *a2@<X1>, const char **a3@<X2>, uint64_t a4@<X8>)
{
  re::AssetPath::reset(a1);
  v8 = *(a1 + 8);
  v13 = 0;
  v14 = 0;
  v12 = v8;
  re::DynamicString::setCapacity(&v12, 0);
  re::DynamicString::appendf(&v12, "Invalid asset path: %s '%s'", a2, *a3);
  result = v12;
  v10 = v13;
  v11 = v14;
  *a4 = 0;
  *(a4 + 8) = 200;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = result;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  return result;
}

BOOL re::AssetPath::tryParseBuiltInPrefix(re::AssetPath *this, const char *a2, size_t a3, BOOL *a4)
{
  if (matchPrefix("app", a2, a3))
  {
    v8 = 1;
    *this = 1;
LABEL_11:
    *a4 = v8;
    return 1;
  }

  if (matchPrefix("framework", a2, a3))
  {
    v9 = 2;
LABEL_5:
    *this = v9;
    v8 = 1;
    goto LABEL_11;
  }

  if (matchPrefix("assetId", a2, a3))
  {
    v8 = 0;
    v10 = 8;
LABEL_8:
    *this = v10;
    goto LABEL_11;
  }

  matched = matchPrefix("engine", a2, a3);
  if (matched)
  {
    *this = 2;
    v13[0] = re::bundleFrameworkIdentifier(matched);
    v13[1] = strlen(v13[0]);
    re::DynamicString::operator=((this + 8), v13);
    v8 = 0;
    goto LABEL_11;
  }

  if (matchPrefix("memory", a2, a3))
  {
    v8 = 0;
    v10 = 3;
    goto LABEL_8;
  }

  if (matchPrefix("singlefilearchive", a2, a3))
  {
    v8 = 0;
    v10 = 7;
    goto LABEL_8;
  }

  if (matchPrefix("peer", a2, a3))
  {
    v9 = 4;
    goto LABEL_5;
  }

  result = matchPrefix("sourcepath", a2, a3);
  if (result)
  {
    v8 = 0;
    v10 = 5;
    goto LABEL_8;
  }

  return result;
}

BOOL re::AssetPath::tryParseExternalPrefix(re::Allocator **this, const char *a2, size_t a3, os_unfair_lock_s *a4)
{
  v6 = (this + 1);
  re::DynamicString::DynamicString(&v9, a2, a3, this[1]);
  hasResolverForScheme = re::AssetProviderRegistry::hasResolverForScheme(a4, &v9);
  if (hasResolverForScheme)
  {
    *this = 6;
    re::DynamicString::operator=(v6, &v9);
  }

  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return hasResolverForScheme;
}

BOOL re::AssetPath::tryParseOtherResolverPrefix(re::Allocator **this, const char *a2, size_t a3, os_unfair_lock_s *a4)
{
  v6 = (this + 1);
  re::DynamicString::DynamicString(&v10, a2, a3, this[1]);
  if (v11)
  {
    v7 = *&v12[7];
  }

  else
  {
    v7 = v12;
  }

  ProviderForScheme = re::AssetProviderRegistry::tryGetProviderForScheme(a4, v7);
  if (ProviderForScheme)
  {
    *this = 9;
    re::DynamicString::operator=(v6, &v10);
  }

  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  return ProviderForScheme != 0;
}

void re::AssetPath::parseRootAndFilePath(char *__s@<X1>, uint64_t a2@<X0>, const char **a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = strchr(__s, 47);
  if (!v8)
  {
    v11 = "Missing slash after prefix";
LABEL_8:

    re::AssetPath::hadParseError(a2, v11, a3, a4);
    return;
  }

  v9 = v8;
  re::DynamicString::assign((a2 + 8), __s, v8 - __s);
  if (*(a2 + 16))
  {
    v10 = *(a2 + 24);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = (a2 + 17);
  }

  if (strpbrk(v10, ":<>|?*"))
  {
    v11 = "Invalid characters in root";
    goto LABEL_8;
  }

LABEL_11:

  re::AssetPath::parseFilePath(v9, a2, a3, 1, a4);
}

void re::AssetPath::parseFilePath(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v7 = __s;
  v10 = strrchr(__s, 46);
  if (!v10)
  {

    re::AssetPath::hadParseError(a2, "Missing asset type suffix", a3, a5);
    return;
  }

  v11 = v10;
  v12 = *(a2 + 8);
  v37 = 0;
  v38 = 0;
  v35 = v12;
  v36 = 0;
  re::DynamicString::setCapacity(&v35, 0);
  if (strncmp("compiled", v11 + 1, 8uLL) || (v16 = re::internal::AssetTypeRegistry::assetTypeWithName(*(a3 + 16), v11 + 9)) == 0)
  {
    v13 = re::internal::AssetTypeRegistry::assetTypeWithExtension(*(a3 + 16), v11 + 1);
    *(a2 + 72) = v13;
    if (!v13)
    {
      v15 = "Unknown asset type suffix";
      goto LABEL_24;
    }

LABEL_4:
    v14 = strlen(v7);
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  *(a2 + 72) = v16;
  if (!dyld_program_sdk_at_least() || (*a2 - 3) < 6)
  {
    goto LABEL_4;
  }

  re::DynamicString::assign(&v35, v7, v11 - v7);
  if (v36)
  {
    v7 = v37;
    v14 = v36 >> 1;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = &v36 + 1;
    v14 = v36 >> 1;
  }

LABEL_5:
  if (strpbrk(v7, ":<>|?*") && *a2 != 6)
  {
    v15 = "Contains invalid characters in file path";
    goto LABEL_24;
  }

LABEL_7:
  if (strstr(v7, "//"))
  {
    v15 = "Paths can't have double slashes";
LABEL_24:
    v24 = re::AssetPath::hadParseError(a2, v15, a3, a5);
    goto LABEL_25;
  }

  v17 = *(a2 + 8);
  v33 = 0;
  v34 = 0;
  v31 = v17;
  v32 = 0;
  v18 = re::DynamicString::setCapacity(&v31, 0);
  if (!v14)
  {
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    return;
  }

  v20 = *v7;
  if (v20 == 47 || a4)
  {
    if (v20 == 47 && *a2 != 3 && *a2 != 5)
    {
      ++v7;
    }

    goto LABEL_34;
  }

  ParentDirectory = re::AssetPath::getParentDirectory(v18, *(a3 + 8));
  re::DynamicString::append(&v31, ParentDirectory, v22);
  v23 = strlen(v7);
  re::DynamicString::append(&v31, v7, v23);
  if ((v32 & 1) == 0)
  {
    v7 = &v32 + 1;
    goto LABEL_34;
  }

  v7 = v33;
  if (v33)
  {
LABEL_34:
    v25 = v7 - 1;
    do
    {
      v26 = *++v25;
    }

    while (v26 == 47);
    goto LABEL_36;
  }

  v25 = 0;
LABEL_36:
  v27 = 0;
  while (1)
  {
    if (!v25 || (v28 = strchr(v25, 47)) == 0)
    {
LABEL_52:
      v30[0] = v7;
      v30[1] = strlen(v7);
      re::AssetPath::standardizePath(v30, (a2 + 40));
      *a5 = 1;
      goto LABEL_53;
    }

    if (v28 - v25 != 2)
    {
      if (v28 - v25 == 1)
      {
        if (*v25 != 46)
        {
          ++v27;
        }
      }

      else
      {
        ++v27;
      }

      goto LABEL_51;
    }

    if (*v25 == 46)
    {
      v29 = v25[1] == 46 ? -1 : 1;
    }

    else
    {
      v29 = 1;
    }

    v27 += v29;
    if (v27 < 0)
    {
      break;
    }

LABEL_51:
    v25 = v28 + 1;
    if (!v28[1])
    {
      goto LABEL_52;
    }
  }

  v24 = re::AssetPath::hadParseError(a2, "Unsupported relative path", a3, a5);
LABEL_53:
  if (v31 && (v32 & 1) != 0)
  {
    (*(*v31 + 40))();
  }

LABEL_25:
  if (v35)
  {
    if (v36)
    {
      (*(*v35 + 40))(v24);
    }
  }
}

const char *re::AssetPath::getParentDirectory(re::AssetPath *this, const re::AssetPath *a2)
{
  if (!a2)
  {
    return &str_12_2;
  }

  if (*a2 == 6)
  {
    v3 = (*(a2 + 2) & 1) != 0 ? *(a2 + 3) : a2 + 17;
    if (!strcmp(v3, "invalidResolver"))
    {
      return "i/n/v/a/l/i/d/";
    }
  }

  if (*(a2 + 48))
  {
    v4 = *(a2 + 7);
  }

  else
  {
    v4 = a2 + 49;
  }

  if (strrchr(v4, 47))
  {
    return v4;
  }

  else
  {
    return &str_12_2;
  }
}

_BYTE *re::AssetPath::standardizePath(void *a1, re::DynamicString *this)
{
  re::DynamicString::deinit(this);
  v4 = a1[1];
  result = re::DynamicString::setCapacity(this, v4 + 1);
  v25[0] = "/";
  v25[1] = 1;
  if (!a1[1])
  {
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = re::StringSlice::findFirstOf(a1, v25, v7, v23);
    v9 = a1[1];
    v10 = v23[0] ? v24 + 1 : a1[1];
    v11 = v10 - v7;
    if (v10 - v7 != 2)
    {
      break;
    }

    if (v9 <= v7)
    {
      goto LABEL_36;
    }

    v12 = *a1;
    if (*(*a1 + v7) != 46)
    {
      goto LABEL_26;
    }

    v20 = v7 + 1;
    if (v9 <= v7 + 1)
    {
      goto LABEL_37;
    }

    if (v12[v20] != 47)
    {
      goto LABEL_26;
    }

LABEL_27:
    v7 = v10;
    if (v10 >= a1[1])
    {
      return result;
    }
  }

  if (v11 != 3)
  {
    v12 = *a1;
LABEL_26:
    result = re::DynamicString::append(this, &v12[v7], v11);
    goto LABEL_27;
  }

  if (v9 > v7)
  {
    v12 = *a1;
    if (*(*a1 + v7) != 46)
    {
      goto LABEL_26;
    }

    v13 = v7 + 1;
    if (v9 <= v7 + 1)
    {
      goto LABEL_38;
    }

    if (v12[v13] != 46)
    {
      goto LABEL_26;
    }

    v14 = v7 + 2;
    if (v9 <= v7 + 2)
    {
      goto LABEL_39;
    }

    if (v12[v14] != 47)
    {
      goto LABEL_26;
    }

    v15 = *(this + 1);
    if (v15)
    {
      v16 = v15 >> 1;
    }

    else
    {
      v16 = v15 >> 1;
    }

    if (v16 >= 2)
    {
      re::DynamicString::rfind(this, 47, v16 - 2, v21);
      if (v21[0])
      {
        v18 = v22 + 1;
        v19 = this;
LABEL_33:
        result = re::DynamicString::resize(v19, v18, 0);
        goto LABEL_27;
      }

      if (!a1[1])
      {
        goto LABEL_40;
      }
    }

    v19 = this;
    if (**a1 != 47)
    {
      v18 = 0;
      goto LABEL_33;
    }

    re::DynamicString::resize(this, 1uLL, 0);
    result = re::DynamicString::operator[](this, 0);
    *result = 47;
    goto LABEL_27;
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v9);
  _os_crash();
  __break(1u);
LABEL_36:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v9);
  _os_crash();
  __break(1u);
LABEL_37:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v9);
  _os_crash();
  __break(1u);
LABEL_38:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v9);
  _os_crash();
  __break(1u);
LABEL_39:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v9);
  _os_crash();
  __break(1u);
LABEL_40:
  re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::AssetPath::putCurrentAppNameInRoot(re::AssetPath *this)
{
  re::Bundle::application(&v9);
  v2 = v9;
  if (v9)
  {
    re::Bundle::ID(&v9, &v7);
    re::DynamicString::operator=((this + 8), &v7);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = v3 >> 1;
    }

    else
    {
      v4 = v3 >> 1;
    }

    v5 = v4 != 0;
    v2 = v9;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double re::AssetPath::parse@<D0>(re::AssetPath *this@<X0>, char *a2@<X1>, const re::AssetPath *a3@<X2>, const re::internal::AssetTypeRegistry *a4@<X3>, os_unfair_lock_s *a5@<X4>, _BYTE *a6@<X8>)
{
  re::AssetPath::reset(this);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v12 = strchr(a2, 58);
  if (!v12)
  {
    if (!*a2)
    {
      *this = 0;
      *a6 = 1;
      return result;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

    v17 = *a3;
    if (*a3 <= 8u)
    {
      if (((1 << v17) & 0x1EE) != 0)
      {
        *this = v17;
        re::DynamicString::operator=((this + 8), (a3 + 8));
        goto LABEL_18;
      }

      if (!v17)
      {
LABEL_16:
        if (!re::AssetPath::putCurrentAppNameInRoot(this))
        {
          v21 = "Can't find current app name";
          goto LABEL_22;
        }

        *this = 1;
LABEL_18:
        v18 = a6;
        v19 = this;
        v16 = a2;
        v20 = 0;
LABEL_19:
        re::AssetPath::parseFilePath(v16, v19, v23, v20, v18);
        return result;
      }
    }

    v21 = "Invalid parent asset path";
    goto LABEL_22;
  }

  v14 = v12;
  v15 = v12 - a2;
  v22 = 0;
  if (re::AssetPath::tryParseBuiltInPrefix(this, a2, v12 - a2, &v22) || re::AssetPath::tryParseExternalPrefix(this, a2, v15, a5) || re::AssetPath::tryParseOtherResolverPrefix(this, a2, v15, a5))
  {
    v16 = v14 + 1;
    if (v22)
    {
      re::AssetPath::parseRootAndFilePath(v16, this, v23, a6);
      return result;
    }

    v18 = a6;
    v19 = this;
    v20 = 1;
    goto LABEL_19;
  }

  v21 = "Unknown prefix";
LABEL_22:
  *&result = re::AssetPath::hadParseError(this, v21, v23, a6).n128_u64[0];
  return result;
}

char *re::AssetPath::fullAssetPath(char *this, re::DynamicString *a2)
{
  v3 = this;
  v4 = *this;
  if (*this > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v22 = *(this + 6);
        if (v22)
        {
          v23 = v22 >> 1;
        }

        else
        {
          v23 = v22 >> 1;
        }

        re::DynamicString::setCapacity(a2, v23 + 12);
        v24 = "sourcepath:";
        v25 = a2;
        v26 = 11;
        goto LABEL_76;
      }

      if (v4 != 6)
      {
        return this;
      }
    }

    else
    {
      if (v4 == 7)
      {
        v37 = *(this + 6);
        if (v37)
        {
          v38 = v37 >> 1;
        }

        else
        {
          v38 = v37 >> 1;
        }

        re::DynamicString::setCapacity(a2, v38 + 19);
        v24 = "singlefilearchive:";
        v25 = a2;
        v26 = 18;
        goto LABEL_76;
      }

      if (v4 == 8)
      {
        v41 = *(this + 6);
        if (v41)
        {
          v42 = v41 >> 1;
        }

        else
        {
          v42 = v41 >> 1;
        }

        re::DynamicString::setCapacity(a2, v42 + 9);
        v24 = "assetId:";
        v25 = a2;
        v26 = 8;
        goto LABEL_76;
      }

      if (v4 != 9)
      {
        return this;
      }
    }

    v17 = *(this + 2);
    if (v17)
    {
      v18 = v17 >> 1;
    }

    else
    {
      v18 = v17 >> 1;
    }

    v19 = *(this + 6);
    if (v19)
    {
      v20 = v19 >> 1;
    }

    else
    {
      v20 = v19 >> 1;
    }

    re::DynamicString::setCapacity(a2, v18 + v20 + 2);
    if (v3[16])
    {
      v21 = *(v3 + 3);
    }

    else
    {
      v21 = v3 + 17;
    }

    v27 = strlen(v21);
    re::DynamicString::append(a2, v21, v27);
    v24 = ":";
    goto LABEL_75;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      v45[0] = &str_12_2;
      v45[1] = 0;
      return re::DynamicString::operator=(a2, v45);
    }

    if (v4 != 1)
    {
      return this;
    }

    v10 = *(this + 2);
    if (v10)
    {
      v11 = v10 >> 1;
    }

    else
    {
      v11 = v10 >> 1;
    }

    v12 = *(this + 6);
    if (v12)
    {
      v13 = v12 >> 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    re::DynamicString::setCapacity(a2, v11 + v13 + 7);
    v14 = "app:";
    v15 = a2;
    v16 = 4;
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v39 = *(this + 6);
        if (v39)
        {
          v40 = v39 >> 1;
        }

        else
        {
          v40 = v39 >> 1;
        }

        re::DynamicString::setCapacity(a2, v40 + 8);
        v24 = "memory:";
        v25 = a2;
        v26 = 7;
        goto LABEL_76;
      }

      if (v4 != 4)
      {
        return this;
      }

      v5 = *(this + 2);
      if (v5)
      {
        v6 = v5 >> 1;
      }

      else
      {
        v6 = v5 >> 1;
      }

      v7 = *(this + 6);
      if (v7)
      {
        v8 = v7 >> 1;
      }

      else
      {
        v8 = v7 >> 1;
      }

      re::DynamicString::setCapacity(a2, v6 + v8 + 7);
      re::DynamicString::append(a2, "peer:", 5uLL);
      if (v3[16])
      {
        v9 = *(v3 + 3);
      }

      else
      {
        v9 = v3 + 17;
      }

      v43 = strlen(v9);
      re::DynamicString::append(a2, v9, v43);
      v24 = "/";
LABEL_75:
      v25 = a2;
      v26 = 1;
LABEL_76:
      re::DynamicString::append(v25, v24, v26);
      if (v3[48])
      {
        v36 = *(v3 + 7);
      }

      else
      {
        v36 = v3 + 49;
      }

LABEL_79:
      v44 = strlen(v36);

      return re::DynamicString::append(a2, v36, v44);
    }

    v28 = *(this + 2);
    if (v28)
    {
      v29 = v28 >> 1;
    }

    else
    {
      v29 = v28 >> 1;
    }

    v30 = *(this + 6);
    if (v30)
    {
      v31 = v30 >> 1;
    }

    else
    {
      v31 = v30 >> 1;
    }

    re::DynamicString::setCapacity(a2, v29 + v31 + 12);
    v14 = "framework:";
    v15 = a2;
    v16 = 10;
  }

  re::DynamicString::append(v15, v14, v16);
  if (v3[16])
  {
    v32 = *(v3 + 3);
  }

  else
  {
    v32 = v3 + 17;
  }

  v33 = strlen(v32);
  re::DynamicString::append(a2, v32, v33);
  re::DynamicString::append(a2, "/", 1uLL);
  if (v3[48])
  {
    v34 = *(v3 + 7);
  }

  else
  {
    v34 = v3 + 49;
  }

  v35 = strlen(v34);
  re::DynamicString::append(a2, v34, v35);
  if ((this & 1) == 0)
  {
    re::DynamicString::append(a2, ".", 1uLL);
    v36 = *(*(v3 + 9) + 8);
    goto LABEL_79;
  }

  return this;
}

char *re::AssetPath::fullAssetPath@<X0>(re::AssetPath *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = *(this + 1);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = v4;
  *(a2 + 1) = 0;
  re::DynamicString::setCapacity(a2, 0);

  return re::AssetPath::fullAssetPath(this, a2);
}

char *re::AssetPath::makeRelativeAssetPath@<X0>(re::AssetPath *this@<X0>, const re::AssetPath *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v6 = *this != *a2 || (*this | 8) == 8;
  if (v6 || ((*(this + 2) & 1) != 0 ? (v10 = *(this + 3)) : (v10 = this + 17), (*(a2 + 2) & 1) != 0 ? (v11 = *(a2 + 3)) : (v11 = a2 + 17), v12 = strcmp(v10, v11), v12))
  {
    v7 = *(a2 + 1);
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *a3 = v7;
    *(a3 + 1) = 0;
    re::DynamicString::setCapacity(a3, 0);

    return re::AssetPath::fullAssetPath(a2, a3);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 1) = 0u;
    v13 = re::DynamicString::setCapacity(a3, 0);
    ParentDirectory = re::AssetPath::getParentDirectory(v13, this);
    v16 = v14;
    v17 = *(*(a2 + 9) + 8);
    if (*(a2 + 48))
    {
      v18 = *(a2 + 7);
    }

    else
    {
      v18 = a2 + 49;
    }

    if (!strncmp(v18, ParentDirectory, v14))
    {
      v20 = strlen(&v18[v16]);
      v22 = &v18[v16];
      v21 = a3;
    }

    else
    {
      re::DynamicString::append(a3, "/", 1uLL);
      if (*(a2 + 6))
      {
        v19 = *(a2 + 7);
      }

      else
      {
        v19 = a2 + 49;
      }

      v20 = strlen(v19);
      v21 = a3;
      v22 = v19;
    }

    re::DynamicString::append(v21, v22, v20);
    re::DynamicString::append(a3, ".", 1uLL);
    v23 = strlen(v17);

    return re::DynamicString::append(a3, v17, v23);
  }
}

char *re::AssetPath::assetPathForNetwork@<X0>(re::Allocator **this@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*this == 3)
  {
    re::DynamicString::DynamicString(a3, "peer:", this[1]);
    v9 = strlen(a2);
    re::DynamicString::append(a3, a2, v9);
    re::DynamicString::append(a3, "/", 1uLL);
    if (this[6])
    {
      v10 = this[7];
    }

    else
    {
      v10 = this + 49;
    }

    v12 = strlen(v10);

    return re::DynamicString::append(a3, v10, v12);
  }

  else if (*this == 5)
  {
    v5 = *re::assetsLogObjects(this);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      v13 = v5;
      re::AssetPath::fullAssetPath(this, &v15);
      if (v16)
      {
        v14 = *&v17[7];
      }

      else
      {
        v14 = v17;
      }

      *buf = 136315138;
      v19 = v14;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Can't get network asset handle for source asset path '%s'", buf, 0xCu);

      v6 = v15;
      if (v15)
      {
        if (v16)
        {
          v6 = (*(*v15 + 40))();
        }
      }
    }
  }

  else
  {
    v11 = this[1];
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *a3 = v11;
    *(a3 + 1) = 0;
    re::DynamicString::setCapacity(a3, 0);

    return re::AssetPath::fullAssetPath(this, a3);
  }
}

uint64_t re::AssetPath::filePathToAsset(re::AssetPath *this, re::DynamicString *a2, uint64_t a3, os_unfair_lock_s *a4)
{
  v4 = a3;
  BundleResource = 0;
  v26 = *MEMORY[0x1E69E9840];
  v8 = *this;
  if (*this <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v10 = *(*(this + 9) + 8);
        if (*(this + 16))
        {
          v11 = *(this + 3);
        }

        else
        {
          v11 = (this + 17);
        }

        re::Bundle::searchForAppOrAppExtension(v11, &buf);
        v12 = buf;
        if (!buf)
        {
          re::Bundle::application(&v23);
          v13 = v23;
          v14 = buf;
          v23 = 0;
          *&buf = v13;

          v12 = buf;
        }

        v22 = v12;

        v15 = buf;
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        if (*(this + 16))
        {
          v9 = *(this + 3);
        }

        else
        {
          v9 = (this + 17);
        }

        v16 = *(*(this + 9) + 8);
        re::Bundle::findWithBundleID(v9, &v23);
        if (v23)
        {
          v21 = v23;
        }

        else
        {
          v18 = *re::assetsLogObjects(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 16))
            {
              v20 = *(this + 3);
            }

            else
            {
              v20 = this + 17;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v20;
            _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Unable to make compiled asset '%s' file path because no valid framework was found", &buf, 0xCu);
          }

          BundleResource = 0;
        }

        v15 = v23;
      }
    }

    return BundleResource;
  }

  if (v8 > 8)
  {
    goto LABEL_39;
  }

  if (((1 << v8) & 0x198) != 0)
  {
    return BundleResource;
  }

  if (v8 == 5)
  {
    re::DynamicString::operator=(a2, (this + 40));
    if ((v4 & 1) == 0)
    {
      re::DynamicString::operator=(a2, &buf);
      if (buf)
      {
        if (BYTE8(buf))
        {
          (*(*buf + 40))();
        }
      }
    }

    return 1;
  }

  if (v8 == 6)
  {
    re::AssetPath::getPathFromResolver(&buf, this, a4);
    BundleResource = buf;
    if (buf == 1)
    {
      re::DynamicString::operator=(a2, (&buf + 8));
      if (buf)
      {
        if (*(&buf + 1))
        {
          if (v25)
          {
            (*(**(&buf + 1) + 40))();
          }
        }
      }
    }

    return BundleResource;
  }

LABEL_39:
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "filePathToAsset", 770);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t anonymous namespace::findBundleResource(re::DynamicString *a1, id *a2, _anonymous_namespace_ *a3, const char *a4, int a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = v12;
  if ((v12 & 1) != 0 || a5)
  {
    v14 = (*(a3 + 1) & 1) != 0 ? *(a3 + 2) : a3 + 9;
    v12 = re::Bundle::pathForResource(a2, v14, a1);
    if (v12)
    {
      return 1;
    }
  }

  if ((v13 & 1) == 0)
  {
    if (buf[8])
    {
      v16 = *&v32[2];
    }

    else
    {
      v16 = &buf[9];
    }

    if (re::Bundle::pathForResource(a2, v16, a1))
    {
      v17 = dyld_program_sdk_at_least();
      if (v17)
      {
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }

        return 1;
      }

      v18 = *re::assetsLogObjects(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[8])
        {
          v19 = *&v32[2];
        }

        else
        {
          v19 = &buf[9];
        }

        if (*(a3 + 1))
        {
          v20 = *(a3 + 2);
        }

        else
        {
          v20 = a3 + 9;
        }

        v24 = 136315650;
        v25 = a6;
        v26 = 2080;
        v27 = v19;
        v28 = 2080;
        v29 = v20;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "%s compiled resource '%s' exists, but was requested as '%s'", &v24, 0x20u);
      }
    }

    v12 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v12 = (*(**buf + 40))();
    }
  }

  v21 = *re::assetsLogObjects(v12);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v22)
  {
    if (*(a3 + 1))
    {
      v23 = *(a3 + 2);
    }

    else
    {
      v23 = a3 + 9;
    }

    *buf = 136315394;
    *&buf[4] = a6;
    v31 = 2080;
    *v32 = v23;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Failed to find %s resource file '%s'", buf, 0x16u);
    return 0;
  }

  return result;
}

re::DynamicString *anonymous namespace::setExtension@<X0>(_anonymous_namespace_ *this@<X0>, const re::DynamicString *a2@<X1>, re::DynamicString *a3@<X8>)
{
  result = re::DynamicString::DynamicString(a3, this);
  if ((v7 & 1) == 0)
  {
    re::DynamicString::append(a3, ".", 1uLL);
    v9 = strlen(a2);

    return re::DynamicString::append(a3, a2, v9);
  }

  return result;
}

void re::AssetPath::getPathFromResolver(re::AssetPath *this, const re::AssetProviderRegistry *a2, os_unfair_lock_s *a3)
{
  if (a3)
  {
    v5 = (a2 + 8);

    re::AssetProviderRegistry::getPathFromResolver(a3, v5, (a2 + 40), this);
  }

  else
  {
    v6 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Tried to open resolver asset path without a resolve manager defined", v7, 2u);
    }

    *this = 0;
  }
}

uint64_t re::AssetPath::temp_filePathToSourceAssetInBundle(re::AssetPath *this, re::DynamicString *a2, os_unfair_lock_s *a3)
{
  v5 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v6 = *this;
  if (*this <= 2)
  {
    switch(v6)
    {
      case 0:
        return v5;
      case 1:
        if (*(this + 16))
        {
          v9 = *(this + 3);
        }

        else
        {
          v9 = (this + 17);
        }

        re::Bundle::searchForAppOrAppExtension(v9, &v23);
        if (v23)
        {
          if (*(this + 48))
          {
            v11 = *(this + 7);
          }

          else
          {
            v11 = this + 49;
          }

          v17 = re::Bundle::pathForResource(&v23, v11, a2);
          if (v17)
          {
            goto LABEL_45;
          }

          v14 = *re::assetsLogObjects(v17);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 48))
            {
              v18 = *(this + 7);
            }

            else
            {
              v18 = this + 49;
            }

            *buf = 136315138;
            *v25 = v18;
            v21 = "Failed to find app resource file '%s'";
            goto LABEL_57;
          }
        }

        else
        {
          v14 = *re::assetsLogObjects(v10);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 16))
            {
              v15 = *(this + 3);
            }

            else
            {
              v15 = this + 17;
            }

            *buf = 136315138;
            *v25 = v15;
            v21 = "Unable to make source asset file path because missing app '%s'";
            goto LABEL_57;
          }
        }

        break;
      case 2:
        if (*(this + 16))
        {
          v8 = *(this + 3);
        }

        else
        {
          v8 = (this + 17);
        }

        re::Bundle::findWithBundleID(v8, &v23);
        if (v23)
        {
          if (*(this + 48))
          {
            v13 = *(this + 7);
          }

          else
          {
            v13 = this + 49;
          }

          v19 = re::Bundle::pathForResource(&v23, v13, a2);
          if (v19)
          {
LABEL_45:
            v5 = 1;
LABEL_59:

            return v5;
          }

          v14 = *re::assetsLogObjects(v19);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 48))
            {
              v20 = *(this + 7);
            }

            else
            {
              v20 = this + 49;
            }

            *buf = 136315138;
            *v25 = v20;
            v21 = "Failed to find framework resource file '%s'";
LABEL_57:
            _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
          }
        }

        else
        {
          v14 = *re::assetsLogObjects(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (*(this + 16))
            {
              v16 = *(this + 3);
            }

            else
            {
              v16 = this + 17;
            }

            *buf = 136315138;
            *v25 = v16;
            v21 = "Unable to make compiled asset '%s' file path because no valid framework was found";
            goto LABEL_57;
          }
        }

        break;
      default:
LABEL_14:
        re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "temp_filePathToSourceAssetInBundle", 825);
        _os_crash();
        __break(1u);
        goto LABEL_15;
    }

    v5 = 0;
    goto LABEL_59;
  }

  if (v6 <= 5)
  {
    if ((v6 - 3) < 2)
    {
      return v5;
    }

    if (v6 == 5)
    {
      if (*(this + 48))
      {
        v7 = *(this + 7);
      }

      else
      {
        v7 = this + 49;
      }

      re::DynamicString::assignf(a2, "%s", v7);
      return 1;
    }

    goto LABEL_14;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      return v5;
    }

    goto LABEL_14;
  }

LABEL_15:
  re::AssetPath::getPathFromResolver(buf, this, a3);
  v5 = buf[0];
  if (buf[0] == 1)
  {
    re::DynamicString::operator=(a2, &v25[4]);
    if (buf[0] & 1) != 0 && *&v25[4] && (v26)
    {
      (*(**&v25[4] + 40))();
    }
  }

  return v5;
}

uint64_t re::AssetPath::initMemoryAssetPath(void *a1, const char *a2, uint64_t a3)
{
  *a1 = 3;
  if (a1[2])
  {
    a1[2] = 1;
    v6 = a1[3];
  }

  else
  {
    *(a1 + 16) = 0;
    v6 = a1 + 17;
  }

  *v6 = 0;
  a1[9] = a3;
  re::DynamicString::operator=((a1 + 5), v10);
  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

  result = v8;
  if (v8)
  {
    if (v9)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::AssetPath::initSingleFileArchiveAssetPath(uint64_t a1, char *__s, uint64_t a3)
{
  *a1 = 7;
  if (*(a1 + 16))
  {
    *(a1 + 16) = 1;
    v5 = *(a1 + 24);
  }

  else
  {
    *(a1 + 16) = 0;
    v5 = (a1 + 17);
  }

  *v5 = 0;
  v7[0] = __s;
  v7[1] = strlen(__s);
  result = re::DynamicString::operator=((a1 + 40), v7);
  *(a1 + 72) = a3;
  return result;
}

uint64_t re::AssetPath::initAssetIdAssetPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 8;
  if (*(a1 + 16))
  {
    *(a1 + 16) = 1;
    v5 = *(a1 + 24);
  }

  else
  {
    *(a1 + 16) = 0;
    v5 = (a1 + 17);
  }

  *v5 = 0;
  re::DynamicString::format("%llu.%s", &v7, a2, *(a3 + 8));
  re::DynamicString::operator=((a1 + 40), &v7);
  result = v7;
  if (v7 && (v8 & 1) != 0)
  {
    result = (*(*v7 + 40))();
  }

  *(a1 + 72) = a3;
  return result;
}

BOOL re::AssetPath::getAssetId(re::AssetPath *this, unint64_t *a2)
{
  if (*this != 8)
  {
    return 0;
  }

  if (*(this + 48))
  {
    v2 = *(this + 7);
  }

  else
  {
    v2 = this + 49;
  }

  return sscanf(v2, "%llu", a2) == 1;
}

char *anonymous namespace::hasExtension(uint64_t a1, const char *a2)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (a1 + 9);
  }

  result = strrchr(v3, 46);
  if (result)
  {
    return (strcmp(result + 1, a2) == 0);
  }

  return result;
}

re::DynamicString *re::AssetPath::initPeerAssetPath(uint64_t a1, char *__s, const char *a3, uint64_t a4)
{
  *a1 = 4;
  v9 = __s;
  v10 = strlen(__s);
  re::DynamicString::operator=((a1 + 8), &v9);
  v7 = strlen(a3);
  v9 = a3;
  v10 = v7;
  result = re::DynamicString::operator=((a1 + 40), &v9);
  *(a1 + 72) = a4;
  return result;
}

re::DynamicString *re::AssetPath::invalidAssetPath@<X0>(re::AssetPath *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = this;
  v5 = (a2 + 8);
  re::DynamicString::setCapacity((a2 + 8), 0);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 40) = this;
  re::DynamicString::setCapacity((a2 + 40), 0);
  *(a2 + 72) = 0;
  *a2 = 6;
  v7 = "invalidResolver";
  v8 = 15;
  re::DynamicString::operator=(v5, &v7);
  v7 = "none";
  v8 = 4;
  result = re::DynamicString::operator=((a2 + 40), &v7);
  *(a2 + 72) = 0;
  return result;
}

const char *re::AssetPath::removingCompiledExtension@<X0>(re::AssetPath *this@<X0>, uint64_t a2@<X8>)
{
  result = strrchr(this, 46);
  if (result && (v6 = result, result = strncmp(".compiled", result, 9uLL), !result))
  {
    *(a2 + 8) = this;
    *(a2 + 16) = v6 - this;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

re::AssetPath *re::AssetPath::fixLegacyPath(re::AssetPath *this, const char *a2)
{
  v2 = this;
  v8 = *MEMORY[0x1E69E9840];
  strcpy(__s1, "engine:");
  if (!strncmp(__s1, this, 7uLL) || !strncmp("framework:", v2, 0xAuLL) && re::isEngineFrameworkPath((v2 + 10), v3))
  {
    re::AssetPath::removingCompiledExtension(v2, v5);
    if (v5[0] == 1)
    {
      return v6;
    }
  }

  strlen(v2);
  return v2;
}

char *re::AssetPath::getAssetTypeNameFromPath(re::AssetPath *this, const char *a2)
{
  result = strrchr(this, 46);
  if (result)
  {
    if (!strncmp("compiled", this, 8uLL))
    {
      return this + 8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::AssetPath::getAssetTypeFromFilePath(re::AssetPath *this, re::internal::AssetTypeRegistry *a2, const re::internal::AssetTypeRegistry *a3)
{
  result = strrchr(this, 46);
  if (result)
  {
    v5 = result;
    if (strncmp("compiled", (result + 1), 8uLL) || (result = re::internal::AssetTypeRegistry::assetTypeWithName(a2, (v5 + 9))) == 0)
    {

      return re::internal::AssetTypeRegistry::assetTypeWithExtension(a2, (v5 + 1));
    }
  }

  return result;
}

BOOL re::AssetPath::pathIsAppBased(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >> 1;
  if ((v1 & 1) == 0)
  {
    v2 = (v1 >> 1) & 0x7C;
  }

  if (v2 < 4)
  {
    return 0;
  }

  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = (a1 + 9);
  }

  return strncmp(v3, "app:", 4uLL) == 0;
}

char *re::AssetPath::updateWithCompiledExtension(char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(a2 + 8);
    v4 = (*(result + 1) & 1) != 0 ? *(result + 2) : result + 9;
    result = strrchr(v4, 46);
    if (result)
    {
      result = strcmp(result + 1, v3);
      if (result)
      {
        re::DynamicString::append(v2, ".", 1uLL);
        v5 = strlen(v3);

        return re::DynamicString::append(v2, v3, v5);
      }
    }
  }

  return result;
}

uint64_t zip_find_central_directory(void *a1)
{
  v3 = *(a1 + 137);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v44 = v1;
  v45 = v2;
  *(a1 + 137) = v3 & 0xFD;
  v6 = a1[19];
  v7 = a1[20];
  if (v7 == v6)
  {
    v8 = a1 + 23;
    v7 = a1[19];
  }

  else
  {
    v8 = a1 + 23;
    v9 = a1[22];
    v10 = &v6[v9 / 0x27];
    v11 = *v10;
    v12 = *v10 + 104 * (v9 % 0x27);
    v13 = v6[(a1[23] + v9) / 0x27] + 104 * ((a1[23] + v9) % 0x27);
    if (v12 != v13)
    {
      do
      {
        if (*(v12 + 31) < 0)
        {
          operator delete(*(v12 + 8));
          v11 = *v10;
        }

        v12 += 104;
        if (v12 - v11 == 4056)
        {
          v14 = v10[1];
          ++v10;
          v11 = v14;
          v12 = v14;
        }
      }

      while (v12 != v13);
      v6 = a1[19];
      v7 = a1[20];
    }
  }

  *v8 = 0;
  v15 = v7 - v6;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v6);
      v16 = a1[20];
      v6 = (a1[19] + 8);
      a1[19] = v6;
      v15 = (v16 - v6) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v17 = 19;
    goto LABEL_18;
  }

  if (v15 == 2)
  {
    v17 = 39;
LABEL_18:
    a1[22] = v17;
  }

  v18 = (a1[1])(*a1, 0, 2);
  if (v18 < 0x16)
  {
    return 0;
  }

  v19 = v18;
  v20 = 0;
  if (v18 - 22 >= 0x10000)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = v18 - 22;
  }

  v22 = 1;
  for (i = -22; ; --i)
  {
    size_2[0] = 0;
    (a1[1])(*a1, v19 + i, 0);
    if ((a1[2])(*a1, size_2, 4) != 4)
    {
      goto LABEL_45;
    }

    if (size_2[0] == 101010256)
    {
      break;
    }

    v22 = v20 < v21;
    if (v21 + 1 == ++v20)
    {
      return 0;
    }
  }

  v24 = v19 + i;
  (a1[1])(*a1, v19 + i, 0);
  if ((a1[2])(*a1, v39, 22) != 22)
  {
    goto LABEL_45;
  }

  v25 = size;
  if (size)
  {
    v26 = malloc_type_malloc(size, 0x30E4C224uLL);
    if (*(a1 + 88) == 1)
    {
      free(a1[9]);
    }

    a1[9] = v26;
    a1[10] = v25;
    *(a1 + 88) = 1;
    if ((a1[2])(*a1, v26, v25) != a1[10])
    {
      goto LABEL_45;
    }
  }

  if (v24 < 0x14)
  {
    v27 = 0;
  }

  else
  {
    v27 = v19 - v20 - 42;
    (a1[1])(*a1, v27, 0);
    if ((a1[2])(*a1, size_2, 4) != 4)
    {
      goto LABEL_45;
    }
  }

  if (size_2[0] == 117853008)
  {
    (a1[1])(*a1, v27, 0);
    if ((a1[2])(*a1, v37, 20) != 20)
    {
      goto LABEL_45;
    }

    (a1[1])(*a1, v38, 0);
    if ((a1[2])(*a1, v34, 56) != 56 || v34[0] != 101075792)
    {
      goto LABEL_45;
    }

    v29 = v35;
    v28 = v36;
    a1[6] = v36;
    v30 = v29 + v28;
    goto LABEL_49;
  }

  (a1[1])(*a1, v41, 0);
  if ((a1[2])(*a1, size_2, 4) != 4)
  {
LABEL_45:
    v32 = 0;
    return v22 & v32;
  }

  if (size_2[0] == 33639248)
  {
    v28 = v41;
    v31 = v40;
    a1[6] = v41;
    v30 = v31 + v28;
  }

  else
  {
    v33 = v40;
    v28 = v19 - v40 - v20 - 22;
    a1[6] = v28;
    v30 = v19 + v33 - v20 - 22;
  }

LABEL_49:
  a1[7] = v28;
  a1[8] = v30;
  v32 = 1;
  return v22 & v32;
}

unint64_t zip_load_entry_from_central_directory(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1[6])
  {
    return 0;
  }

  if ((*(a1 + 137) & 1) == 0)
  {
    return 0;
  }

  v2 = a1[7];
  if (v2 >= a1[8])
  {
    return 0;
  }

  (a1[1])(*a1, a1[7], 0);
  if ((a1[2])(*a1, v21, 46) != 46 || *v21 != 33639248)
  {
    return 0;
  }

  v31 = a1;
  *__p = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 36);
  v37 = 0;
  std::string::basic_string[abi:nn200100](&v29, v25);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  *&v33 = v30;
  *__p = v29;
  v36 = v21[7];
  v35[0] = v22;
  v35[9] = *&v21[5];
  if (v30 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = (a1[2])(*a1, v6, v25);
  if (v7 == v25)
  {
    v8 = v2 + v7 + 46;
    v9 = v8 + v26;
    if (v8 < v9)
    {
      v10 = 0;
      while (1)
      {
        if ((a1[2])(*a1, &v19, 4) != 4)
        {
          goto LABEL_41;
        }

        if (v19 == 65534)
        {
          break;
        }

        if (v19 == 1)
        {
          v29 = 0uLL;
          v30 = 0;
          if (v20 >= 0x18u)
          {
            v11 = 24;
          }

          else
          {
            v11 = v20;
          }

          if ((a1[2])(*a1, &v29, v11) != v11 || v20 < 8u)
          {
            goto LABEL_41;
          }

          if (v24 == -1)
          {
            v34.i64[0] = v29;
            v13 = &v29 + 1;
            v12 = 1;
          }

          else
          {
            v12 = 0;
            v13 = &v29;
          }

          v14 = v20 >> 3;
          if (v23 == -1)
          {
            if (v12 >= v14)
            {
              goto LABEL_41;
            }

            ++v12;
            v34.i64[1] = *v13;
          }

          if (v28 == -1)
          {
            if (v12 >= v14)
            {
              goto LABEL_41;
            }

            *(&v33 + 1) = *(&v29 + v12);
          }

          v8 += v20 + 4;
          v10 = 1;
          if (v8 >= v9)
          {
            goto LABEL_46;
          }
        }

        else
        {
LABEL_30:
          v8 += v20 + 4;
          if (v8 >= v9)
          {
            if (v10)
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          }
        }
      }

      if (v20 != 32 || (a1[2])(*a1, &v35[1], 32) != 32)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

LABEL_43:
    v15 = v28;
    v16.i64[0] = v23;
    v16.i64[1] = v24;
    v34 = vextq_s8(v16, v16, 8uLL);
    v17 = a1[16];
    if (a1[15] > v28)
    {
      a1[16] = ++v17;
    }

    *(&v33 + 1) = v15 | (v17 << 32);
    a1[15] = v15;
LABEL_46:
    a1[7] += v25 + v26 + v27 + 46;
    std::deque<zip_entry_t>::push_back(a1 + 18, &v31);
    v18 = a1[23] + a1[22] - 1;
    v4 = *(a1[19] + 8 * (v18 / 0x27)) + 104 * (v18 % 0x27);
  }

  else
  {
LABEL_41:
    v4 = 0;
  }

  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

_BYTE *std::string::basic_string[abi:nn200100](_BYTE *a1, size_t a2)
{
  if (a2 >= 0x17)
  {
    operator new();
  }

  a1[23] = a2;
  if (a2)
  {
    bzero(a1, a2);
  }

  a1[a2] = 0;
  return a1;
}

__n128 std::deque<zip_entry_t>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 39 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<zip_entry_t>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x27)) + 104 * (v7 % 0x27);
  *v8 = *a2;
  v9 = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v8 + 32) = *(a2 + 32);
  v11 = *(a2 + 64);
  result = *(a2 + 80);
  v12 = *(a2 + 48);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 64) = v11;
  *(v8 + 80) = result;
  *(v8 + 48) = v12;
  ++a1[5];
  return result;
}

{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 39 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<zip_entry_t>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x27)) + 104 * (v7 % 0x27);
  *v8 = *a2;
  v9 = (v8 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 8);
    *(v8 + 24) = *(a2 + 24);
    *&v9->__r_.__value_.__l.__data_ = v10;
  }

  *(v8 + 32) = *(a2 + 32);
  result = *(a2 + 48);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  *(v8 + 48) = result;
  ++a1[5];
  return result;
}

uint64_t zip_load_all_from_central_directory(void *a1)
{
  if (!zip_find_central_directory(a1))
  {
    return 0;
  }

  v2 = -1;
  do
  {
    ++v2;
  }

  while (zip_load_entry_from_central_directory(a1));
  return v2;
}

unint64_t zip_load_entry_from_file_header(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 137) & 2) == 0)
  {
    return 0;
  }

  *(a1 + 137) &= ~1u;
  v2 = a1[7];
  (a1[1])(*a1, v2, 0);
  v3 = (a1[2])(*a1, &v37, 30) == 30 && v37 == 67324752;
  if (!v3)
  {
    return 0;
  }

  v46 = a1;
  v48 = 0;
  *__p = 0u;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  v55 = 0;
  v49 = v2;
  std::string::basic_string[abi:nn200100](&v44[3], v44[0]);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  v48 = v45;
  *__p = *&v44[3];
  v54 = v40;
  LODWORD(v51[0]) = v41;
  v53 = v39;
  v6.i64[0] = v42;
  v6.i64[1] = v43;
  v50 = vextq_s8(v6, v6, 8uLL);
  if (v45 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = (a1[2])(*a1, v7, v44[0]);
  v9 = v44[0];
  if (v8 == v44[0])
  {
    v10 = v2 + v8 + 30;
    v11 = v44[1];
    v12 = v10 + v44[1];
    if (v10 >= v12)
    {
LABEL_26:
      v13 = v9 + v11 + 30;
      if ((v38 & 8) == 0)
      {
        v14 = v50.i64[1] + v13 + a1[7];
        a1[7] = v14;
LABEL_28:
        a1[6] = v14;
        std::deque<zip_entry_t>::push_back(a1 + 18, &v46);
        v15 = a1[23] + a1[22] - 1;
        v4 = *(a1[19] + 8 * (v15 / 0x27)) + 104 * (v15 % 0x27);
        goto LABEL_34;
      }

      v16 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
      v17 = (a1[1])(*a1, 0, 2);
      if (v17 - v49 >= 8 && (*(a1 + 137) & 2) != 0)
      {
        v18 = v17;
        v19 = v49 + v13;
        if (v19 + 28 <= v17)
        {
          do
          {
            v20 = v18 - v19 >= 0x10000 ? 0x10000 : v18 - v19;
            (a1[1])(*a1, v19, 0);
            if ((a1[2])(*a1, v16, v20) != v20)
            {
              break;
            }

            if (v18 - v19 >= 0x1D)
            {
              v21 = 0;
              v22 = 29;
              if (v20 > 0x1D)
              {
                v22 = v20;
              }

              v23 = v22 - 29;
              while (1)
              {
                if (*&v16[v21] == 134695760)
                {
                  v24 = v21 + 4;
                  v25 = v21 + 4;
                  if (v21 + 4 < v20)
                  {
                    while (1)
                    {
                      v26 = *&v16[v25];
                      if (v26 == 33639248 || v26 == 67324752)
                      {
                        break;
                      }

                      if (v20 == ++v25)
                      {
                        goto LABEL_53;
                      }
                    }
                  }

                  if (v25 != v20)
                  {
                    break;
                  }
                }

LABEL_53:
                v3 = v21++ == v23;
                if (v3)
                {
                  goto LABEL_55;
                }
              }

              a1[7] = v25 + v19;
              v29 = v25 - v21;
              if (v29 == 24)
              {
                v34 = &v16[v24];
                v31 = *&v16[v24];
                v32 = *&v16[v24 + 4];
                v33 = *(v34 + 12);
              }

              else
              {
                if (v29 != 16)
                {
                  break;
                }

                v30 = &v16[v24];
                v31 = *&v16[v24];
                v32 = *&v16[v24 + 4];
                v33 = *(v30 + 2);
              }

              LODWORD(v51[0]) = v31;
              v50.i64[0] = v33;
              v50.i64[1] = v32;
              (a1[1])(*a1);
              free(v16);
              v14 = a1[7];
              goto LABEL_28;
            }

LABEL_55:
            v28 = v20 + v19;
            v19 = v20 + v19 - 28;
          }

          while (v28 <= v18);
        }
      }

      free(v16);
    }

    else
    {
      while ((a1[2])(*a1, &v35, 4) == 4)
      {
        if (v35 == 1)
        {
          *&v44[3] = 0uLL;
          if (v36 < 0x10u || (a1[2])(*a1, &v44[3], 16) != 16)
          {
            break;
          }

          v50 = *&v44[3];
        }

        else if (v35 == 65534 && (v36 != 32 || (a1[2])(*a1, v51 + 4, 32) != 32))
        {
          break;
        }

        v10 += v36 + 4;
        if (v10 >= v12)
        {
          v9 = v44[0];
          v11 = v44[1];
          goto LABEL_26;
        }
      }
    }
  }

  v4 = 0;
LABEL_34:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

unint64_t zip_create_entry(void *a1, uint64_t a2, __int16 a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 < 0 == (a4 == 0))
  {
    return 0;
  }

  v16 = 0;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v10 = a1;
  MEMORY[0x1E6905F60](__p);
  *(&v12 + 1) = -1;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, 20);
  *&v15[20] = a3;
  *&v15[22] = 0;
  v16 = a4;
  if (SBYTE7(v12) < 0 && __p[1] >> 16)
  {
    v7 = 0;
LABEL_7:
    operator delete(__p[0]);
    return v7;
  }

  std::deque<zip_entry_t>::push_back(a1 + 18, &v10);
  v8 = a1[23] + a1[22] - 1;
  v7 = *(a1[19] + 8 * (v8 / 0x27)) + 104 * (v8 % 0x27);
  if (SBYTE7(v12) < 0)
  {
    goto LABEL_7;
  }

  return v7;
}

void *zip_append_entry(void *a1, uint64_t a2, __int16 a3, Bytef *a4, unint64_t a5)
{
  result = zip_create_entry(a1, a2, a3, 0);
  if (result)
  {
    v8 = result;
    if (zip_entry_save_data(result, a4, a5))
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t zip_save_central_directory(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = a1[14];
  if (!v1)
  {
    return 1;
  }

  if (a1[6] % a1[13])
  {
    *(a1 + 137) &= 0xFCu;
    entry = zip_create_entry(a1, ".align/", 0, 0);
    *(entry + 32) = a1[6];
    result = zip_write_file_header(entry, a1[13], 3);
    if (!result)
    {
      return result;
    }

    a1[6] += result;
    v1 = a1[14];
  }

  (a1[1])(*a1);
  v5 = a1[19];
  if (a1[20] == v5)
  {
    v8 = a1 + 23;
  }

  else
  {
    v6 = a1[22];
    v7 = *(v5 + 8 * (v6 / 0x27)) + 104 * (v6 % 0x27);
    v8 = a1 + 23;
    v9 = *(v5 + 8 * ((a1[23] + v6) / 0x27)) + 104 * ((a1[23] + v6) % 0x27);
    if (v7 != v9)
    {
      v10 = (v5 + 8 * (v6 / 0x27));
      while (1)
      {
        v11 = *(v7 + 31);
        if (v11 < 0 && *(v7 + 16) >> 16)
        {
          return 0;
        }

        if ((a1[17] & 1) != 0 || *(v7 + 52) || *(v7 + 44))
        {
          break;
        }

        v32 = *(v7 + 36);
        *v45 = 33639248;
        *&v45[4] = 4926;
        if (v32)
        {
          goto LABEL_14;
        }

        v13 = 0;
        v12 = 20;
LABEL_15:
        *&v45[6] = v12;
        *&v45[8] = 0;
        *&v45[10] = *(v7 + 92);
        v14 = *(v7 + 56);
        v46 = *(v7 + 94);
        LODWORD(v47) = v14;
        if ((v11 & 0x80000000) != 0)
        {
          LOWORD(v11) = *(v7 + 16);
        }

        v15 = (v7 + 8);
        WORD2(v48) = v11;
        LODWORD(v49) = 0;
        WORD2(v49) = 0;
        v16 = *(v7 + 31);
        if (v16 < 0)
        {
          v16 = *(v7 + 16);
          v17 = -2119958528;
          if (v16)
          {
            v18 = *v15;
LABEL_22:
            if (*(v18 + v16 - 1) == 47)
            {
              v17 = 1107230720;
            }

            else
            {
              v17 = -2119958528;
            }
          }
        }

        else
        {
          v17 = -2119958528;
          if (*(v7 + 31))
          {
            v18 = (v7 + 8);
            goto LABEL_22;
          }
        }

        *(&v49 + 6) = v17;
        v19 = *(v7 + 60);
        v20 = *(v7 + 48);
        if (v13)
        {
          v20 = -1;
        }

        v21 = *(v7 + 40);
        if (v13)
        {
          v21 = -1;
        }

        HIDWORD(v47) = v20;
        LODWORD(v48) = v21;
        v22 = *(v7 + 32);
        v23 = 28;
        if (v13)
        {
          v22 = -1;
        }

        else
        {
          v23 = 0;
        }

        *(&v49 + 10) = v22;
        v24 = v19 | *(v7 + 68) | *(v7 + 76) | *(v7 + 84);
        v25 = v24 == 0;
        v26 = v24 != 0;
        v27 = 36;
        if (v25)
        {
          v27 = 0;
        }

        v28 = v27 + v23;
        HIWORD(v48) = v28;
        if ((v28 + v11) >> 16)
        {
          return 0;
        }

        v29 = (a1[3])(*a1, v45, 46);
        a1[14] += v29;
        if (v29 != 46)
        {
          return 0;
        }

        if (*(v7 + 31) < 0)
        {
          v15 = *v15;
        }

        v30 = (a1[3])(*a1, v15, WORD2(v48));
        a1[14] += v30;
        if (v30 != WORD2(v48))
        {
          return 0;
        }

        if (v13)
        {
          v51 = *(v7 + 40);
          v52 = *(v7 + 32);
          if (!zip_write_extra_field(a1, 1, &v51, 24))
          {
            return 0;
          }
        }

        if (v26 && !zip_write_extra_field(a1, 65534, v7 + 60, 32))
        {
          return 0;
        }

        v7 += 104;
        if (v7 - *v10 == 4056)
        {
          v31 = v10[1];
          ++v10;
          v7 = v31;
        }

        if (v7 == v9)
        {
          v8 = a1 + 23;
          goto LABEL_51;
        }
      }

      *v45 = 33639248;
      *&v45[4] = 4926;
LABEL_14:
      v12 = 45;
      v13 = 1;
      goto LABEL_15;
    }
  }

LABEL_51:
  v33 = a1[14] - v1;
  v34 = a1[6];
  v35 = v34 + v33;
  a1[8] = v34 + v33;
  v36 = *(a1 + 136) | (HIDWORD(v34) != 0) | (HIDWORD(v33) != 0);
  v37 = a1[23];
  if (a1[17] & 1 | (HIDWORD(v34) != 0) | (HIDWORD(v33) != 0))
  {
    *v45 = 101075792;
    *&v45[4] = -101075744;
    v47 = 0;
    v48 = v37;
    v46 = 2954046;
    *&v49 = v37;
    *(&v49 + 1) = v33;
    v50 = v34;
    v38 = (a1[3])(*a1, v45, 56);
    a1[14] += v38;
    if (v38 != 56)
    {
      return 0;
    }

    *&v51 = 117853008;
    *(&v51 + 1) = v35;
    LODWORD(v52) = 1;
    v39 = (a1[3])(*a1, &v51, 20);
    a1[14] += v39;
    if (v39 != 20)
    {
      return 0;
    }

    v37 = *v8;
  }

  if (!(v37 >> 16))
  {
    v40 = a1[10];
    if (!(v40 >> 16))
    {
      *v45 = 101010256;
      *&v45[8] = v37;
      *&v45[10] = v37;
      v41 = (v36 & 1) != 0 ? -1 : v33;
      v46 = v41;
      v42 = (v36 & 1) != 0 ? -1 : *(a1 + 12);
      LODWORD(v47) = v42;
      WORD2(v47) = v40;
      v43 = (a1[3])(*a1, v45, 22);
      a1[14] += v43;
      if (v43 == 22)
      {
        if (!a1[10] || (v44 = (a1[3])(*a1, a1[9]), a1[14] += v44, v44 == a1[10]))
        {
          a1[14] = 0;
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL zip_write_extra_field(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a2;
  v10[1] = a4;
  v7 = (a1[3])(*a1, v10, 4);
  a1[14] += v7;
  if (v7 != 4)
  {
    return 0;
  }

  v8 = (a1[3])(*a1, a3, a4);
  a1[14] += v8;
  return v8 == a4;
}

void **zip_clone_entry(uint64_t a1, void **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 60);
  if (*(a2 + 60))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 68) == 0;
  }

  v7 = v5 && *(a2 + 76) == 0 && *(a2 + 84) == 0;
  v8 = !v7;
  if (!v7 || !*(a2 + 46))
  {
    *(a1 + 137) &= 0xFCu;
    v9 = a2 + 1;
    if (*(a2 + 31) < 0)
    {
      v9 = *v9;
    }

    entry = zip_create_entry(a1, v9, *(a2 + 46), *(a2 + 25));
    *(entry + 5) = *(a2 + 5);
    entry[4] = *(a1 + 48);
    *(entry + 94) = *(a2 + 94);
    *(entry + 14) = *(a2 + 14);
    v11 = v4[1];
    *(entry + 60) = *v4;
    *(entry + 76) = v11;
    v12 = zip_entry_data_offset(a2);
    if (v12)
    {
      v13 = v12;
      v14 = v12 - a2[4];
      if (v14 <= 0x10000)
      {
        v15 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
        ((*a2)[1])(**a2, a2[4], 0);
        if (((*a2)[2])(**a2, v15, v14) == v14)
        {
          ((*entry)[1])(**entry, entry[4], 0);
          v16 = *entry;
          v17 = ((*entry)[3])(**entry, v15, v14);
          v16[14] += v17;
          if (v17 == v14)
          {
            v18 = entry[4];
            CC_SHA256_Init(&c);
            if (!a2[6])
            {
LABEL_29:
              *(a1 + 48) += entry[6] + v14;
              if (!v8 && entry[5])
              {
                CC_SHA256_Final(md, &c);
                v24 = v29;
                *(entry + 60) = *md;
                *(entry + 76) = v24;
              }

              goto LABEL_35;
            }

            v19 = 0;
            v26 = v18 + v14;
            while (1)
            {
              ((*a2)[1])(**a2, v19 + v13, 0);
              v20 = a2[6] - v19 >= 0x10000 ? 0x10000 : a2[6] - v19;
              v21 = ((*a2)[2])(**a2, v15, v20);
              ((*entry)[1])(**entry, &v26[v19], 0);
              v22 = *entry;
              v23 = ((*entry)[3])(**entry, v15, v21);
              v22[14] += v23;
              if (v21 != v23)
              {
                break;
              }

              if (!v8)
              {
                CC_SHA256_Update(&c, v15, v21);
              }

              v19 += v21;
              if (v19 >= a2[6])
              {
                goto LABEL_29;
              }
            }
          }
        }

        entry = 0;
LABEL_35:
        free(v15);
        return entry;
      }
    }
  }

  return 0;
}

void *zip_set_comment(uint64_t a1, const void *a2, size_t size)
{
  v6 = malloc_type_malloc(size, 0x30E4C224uLL);
  if (*(a1 + 88) == 1)
  {
    free(*(a1 + 72));
  }

  *(a1 + 72) = v6;
  *(a1 + 80) = size;
  *(a1 + 88) = 1;

  return memcpy(v6, a2, size);
}

double zip_calculate_signature@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1[23];
  if (v3)
  {
    CC_SHA256_Init(&c);
    v5 = 0;
    while (1)
    {
      v6 = *(a1[19] + 8 * ((v5 + a1[22]) / 0x27uLL)) + 104 * ((v5 + a1[22]) % 0x27uLL);
      v7 = (v6 + 8);
      v8 = *(v6 + 31);
      if (v8 < 0)
      {
        v8 = *(v6 + 16);
        if (!v8)
        {
          goto LABEL_9;
        }

        v9 = *v7;
      }

      else
      {
        if (!*(v6 + 31))
        {
          goto LABEL_9;
        }

        v9 = (v6 + 8);
      }

      if (v9[v8 - 1] != 47)
      {
LABEL_9:
        data = 0u;
        v18 = 0u;
        v10 = *(v6 + 76);
        data = *(v6 + 60);
        v18 = v10;
        if (data)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(&data + 1) == 0;
        }

        if (v11 && v10 == 0 && *(&v10 + 1) == 0)
        {
          break;
        }

        if (*(v6 + 31) < 0)
        {
          v7 = *v7;
        }

        v14 = strlen(v7);
        CC_SHA256_Update(&c, v7, v14);
        CC_SHA256_Update(&c, &data, 0x20u);
      }

      if (v3 == ++v5)
      {
        CC_SHA256_Final(a2, &c);
        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t zip_close(void *a1)
{
  v2 = zip_save_central_directory(a1);
  v3 = a1[4];
  if (v3)
  {
    v3(*a1);
  }

  std::deque<zip_entry_t>::~deque[abi:nn200100]((a1 + 18));
  if (*(a1 + 88) == 1)
  {
    free(a1[9]);
  }

  a1[9] = 0;
  a1[10] = 0;
  *(a1 + 88) = 0;
  MEMORY[0x1E6906520](a1, 0x1080C4077E95D12);
  return v2;
}

BOOL zip_verify_crc_archive(void *a1)
{
  v2 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
  v3 = a1[23];
  if (v3)
  {
    v4 = a1[22];
    v5 = *(a1[19] + 8 * (v4 / 0x27));
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v5 + 104 * (v4 % 0x27);
      while (1)
      {
        v9 = (v8 + 8);
        v10 = *(v8 + 31);
        if (v10 < 0)
        {
          v10 = *(v8 + 16);
          if (v10)
          {
            v9 = *v9;
LABEL_9:
            if (*(v9 + v10 - 1) == 47)
            {
              goto LABEL_16;
            }
          }
        }

        else if (*(v8 + 31))
        {
          goto LABEL_9;
        }

        data_begin = zip_entry_load_data_begin(v8);
        v12 = crc32(0, 0, 0);
        v13 = zip_entry_load_data_read(v2, 0x10000uLL, data_begin);
        if (v13)
        {
          v14 = v13;
          do
          {
            v12 = crc32(v12, v2, v14);
            v15 = zip_entry_load_data_read(v2, 0x10000uLL, data_begin);
            v14 = v15;
          }

          while (v15);
        }

        v16 = *(v8 + 56);
        if (data_begin)
        {
          zip_entry_load_data_end(data_begin);
        }

        if (v16 != v12)
        {
          goto LABEL_21;
        }

LABEL_16:
        v7 = ++v6 >= v3;
        if (v6 != v3)
        {
          v17 = a1[22] + v6;
          v18 = *(a1[19] + 8 * (v17 / 0x27));
          v8 = v18 + 104 * (v17 % 0x27);
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

LABEL_21:
  free(v2);
  return v7;
}

uint64_t std::deque<zip_entry_t>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x27];
    v7 = *v6;
    v8 = *v6 + 104 * (v5 % 0x27);
    v9 = v3[(*(a1 + 40) + v5) / 0x27] + 104 * ((*(a1 + 40) + v5) % 0x27);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 104;
        if (v8 - v7 == 4056)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 19;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 39;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__deque_iterator<zip_entry_t,zip_entry_t const*,zip_entry_t const&,zip_entry_t const* const*,long,39l>::operator+=[abi:nn200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x4EC4EC4EC4EC4EC5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 38 - v3;
      v6 = &v2[-(v5 / 0x27)];
      *result = v6;
      v4 = *v6 + 104 * (39 * (v5 / 0x27) - v5) + 3952;
    }

    else
    {
      *result = &v2[v3 / 0x27];
      v4 = v2[v3 / 0x27] + 104 * (v3 % 0x27);
    }

    result[1] = v4;
  }

  return result;
}

double std::__for_each_segment[abi:nn200100]<std::__deque_iterator<zip_entry_t,zip_entry_t const*,zip_entry_t const&,zip_entry_t const* const*,long,39l>,std::__copy_impl::_CopySegment<std::__deque_iterator<zip_entry_t,zip_entry_t const*,zip_entry_t const&,zip_entry_t const* const*,long,39l>,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>>>(std::string::size_type *a1, std::string::size_type a2, std::string::size_type *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a3)
  {
    size = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v10 = a1 + 1;
    size = *a5;
    v8 = *(a5 + 8);
    for (i = *a1 + 4056; ; i = v12 + 4056)
    {
      std::__copy_impl::operator()[abi:nn200100]<zip_entry_t const*,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>,0>(&v14, a2, i, size, v8);
      v8 = v14.__r_.__value_.__r.__words[2];
      size = v14.__r_.__value_.__l.__size_;
      *a5 = v14.__r_.__value_.__l.__size_;
      *(a5 + 8) = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  std::__copy_impl::operator()[abi:nn200100]<zip_entry_t const*,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>,0>(&v14, a2, a4, size, v8);
  result = *&v14.__r_.__value_.__l.__size_;
  *a5 = *&v14.__r_.__value_.__r.__words[1];
  return result;
}

std::string *std::__copy_impl::operator()[abi:nn200100]<zip_entry_t const*,std::__deque_iterator<zip_entry_t,zip_entry_t*,zip_entry_t&,zip_entry_t**,long,39l>,0>(std::string *result, std::string::size_type a2, uint64_t a3, void *a4, std::string::size_type a5)
{
  v6 = a4;
  v7 = a2;
  v8 = result;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_14;
  }

  v10 = *a4;
  while (1)
  {
    v11 = 0x4EC4EC4EC4EC4EC5 * ((v10 - a5 + 4056) >> 3);
    if (0x4EC4EC4EC4EC4EC5 * ((a3 - v7) >> 3) < v11)
    {
      v11 = 0x4EC4EC4EC4EC4EC5 * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v16 = v6[1];
    ++v6;
    v10 = v16;
    a5 = v16;
  }

  v12 = v7 + 104 * v11;
  do
  {
    *a5 = *v7;
    result = std::string::operator=((a5 + 8), (v7 + 8));
    *(a5 + 32) = *(v7 + 32);
    v14 = *(v7 + 64);
    v13 = *(v7 + 80);
    v15 = *(v7 + 48);
    *(a5 + 96) = *(v7 + 96);
    *(a5 + 64) = v14;
    *(a5 + 80) = v13;
    *(a5 + 48) = v15;
    a5 += 104;
    v7 += 104;
  }

  while (v7 != v12);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (a5 == *v6 + 4056)
  {
    v17 = v6[1];
    ++v6;
    a5 = v17;
  }

LABEL_14:
  v8->__words[0] = v12;
  v8->__words[1] = v6;
  v8->__words[2] = a5;
  return result;
}

void *std::__split_buffer<zip_entry_t *>::emplace_back<zip_entry_t *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<zip_entry_t *>::emplace_front<zip_entry_t *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::deque<zip_entry_t>::__add_back_capacity(void *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x27;
  v4 = v2 - 39;
  if (!v3)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = v8 - *a1;
    if (v7 - a1[1] < v9)
    {
      if (v8 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v8 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v12 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(v10);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v11 = *v5;
  a1[1] = v5 + 1;
  return std::__split_buffer<zip_entry_t *>::emplace_back<zip_entry_t *&>(a1, &v11);
}

uint64_t re::internal::AssetNetworkLoader::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 160) = re::globalAllocators(a1)[2];
  *(a1 + 16) = a4;
  v22[0] = &unk_1F5CB92D0;
  v22[1] = a1;
  v22[3] = v22;
  v6 = *(a1 + 8);
  std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::__value_func[abi:nn200100](v21, v22);
  (*(*v6 + 24))(v6, v21);
  std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](v21);
  v20[0] = &unk_1F5CB9360;
  v20[1] = a1;
  v20[3] = v20;
  v7 = *(a1 + 8);
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:nn200100](v19, v20);
  (*(*v7 + 32))(v7, v19);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v19);
  re::dispatch::Queue::global(0x21, 0, &v18);
  v14 = 0x100000001;
  v15 = 0;
  v16 = &v18;
  re::dispatch::Queue::make("com.apple.re.AssetNetworkLoaderBackgroundSerializer", &v14, &v17);
  v8 = (a1 + 392);
  if ((a1 + 392) != &v17)
  {
    v9 = v17;
    v17 = 0;
    v10 = *v8;
    *v8 = v9;
  }

  v11 = dispatch_group_create();
  v12 = *(a1 + 400);
  *(a1 + 400) = v11;

  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v20);
  return std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](v22);
}

uint64_t re::internal::AssetNetworkLoader::deinit(re::internal::AssetNetworkLoader *this)
{
  v49 = *MEMORY[0x1E69E9840];
  atomic_store(1u, this + 384);
  v2 = dispatch_time(0, 180000000000);
  v3 = dispatch_group_wait(*(this + 50), v2);
  if (v3)
  {
    v4 = *re::assetsLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v48 = 180;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "AssetNetworkLoader::deinit: async group didn't complete for %llu seconds", buf, 0xCu);
    }
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    v6 = v5 << 6;
    v7 = (*(this + 7) + 40);
    do
    {
      re::AssetHandle::~AssetHandle(v7);
      re::DynamicString::deinit((v7 - 32));
      v7 = (v7 + 64);
      v6 -= 64;
    }

    while (v6);
  }

  ++*(this + 12);
  os_unfair_lock_lock(this + 64);
  v8 = *(this + 35);
  *(this + 35) = 0;
  if (v8)
  {
    v9 = 112 * v8;
    v10 = *(this + 37) + 64;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v10);
      re::DynamicString::deinit((v10 - 32));
      re::AssetHandle::~AssetHandle((v10 - 56));
      v10 += 112;
      v9 -= 112;
    }

    while (v9);
  }

  ++*(this + 72);
  os_unfair_lock_unlock(this + 64);
  v11 = *(this + 24);
  if (v11)
  {
    v12 = 0;
    v13 = *(this + 10);
    while (1)
    {
      v14 = *v13;
      v13 += 20;
      if (v14 < 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LODWORD(v12) = *(this + 24);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v15 = *(this + 24);
  while (v12 != v11)
  {
    re::AssetHandle::AssetHandle(buf, (*(this + 10) + 80 * v12 + 48));
    v16 = *&v48[4];
    if (*&v48[4])
    {
      os_unfair_lock_lock((*&v48[4] + 512));
      v17 = *this;
      v18 = *&v48[4];
      re::AssetManager::putEntryInFailedState_entryStateLocked(v17, v18, 302, v42);
      if (*&v42[0])
      {
        if (BYTE8(v42[0]))
        {
          (*(**&v42[0] + 40))();
        }

        memset(v42, 0, sizeof(v42));
      }

      os_unfair_lock_unlock(v16 + 128);
    }

    re::AssetHandle::~AssetHandle(buf);
    v15 = *(this + 24);
    if (v15 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = *(this + 24);
    }

    while (v20 - 1 != v12)
    {
      LODWORD(v12) = v12 + 1;
      if ((*(*(this + 10) + 80 * v12) & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    LODWORD(v12) = v20;
LABEL_30:
    ;
  }

  if (*(this + 23))
  {
    v21 = *(this + 22);
    if (v21)
    {
      memset_pattern16(*(this + 9), &unk_1E304C660, 4 * v21);
      v15 = *(this + 24);
    }

    if (v15)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(this + 10) + v22));
        ++v23;
        v22 += 80;
      }

      while (v23 < *(this + 24));
    }

    *(this + 23) = 0;
    *(this + 24) = 0;
    v24 = *(this + 26) + 1;
    *(this + 25) = 0x7FFFFFFF;
    *(this + 26) = v24;
  }

  v25.n128_f64[0] = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 8);
  v26 = *(this + 36);
  if (v26)
  {
    v27 = 0;
    v28 = *(this + 16);
    while (1)
    {
      v29 = *v28;
      v28 += 22;
      if (v29 < 0)
      {
        break;
      }

      if (v26 == ++v27)
      {
        LODWORD(v27) = *(this + 36);
        break;
      }
    }
  }

  else
  {
    LODWORD(v27) = 0;
  }

  v30 = *(this + 36);
  while (v27 != v26)
  {
    (*(**(this + 20) + 40))(*(this + 20), *(*(this + 16) + 88 * v27 + 48), v25);
    v30 = *(this + 36);
    if (v30 <= v27 + 1)
    {
      v31 = v27 + 1;
    }

    else
    {
      v31 = *(this + 36);
    }

    while (v31 - 1 != v27)
    {
      LODWORD(v27) = v27 + 1;
      if ((*(*(this + 16) + 88 * v27) & 0x80000000) != 0)
      {
        goto LABEL_52;
      }
    }

    LODWORD(v27) = v31;
LABEL_52:
    ;
  }

  if (*(this + 35))
  {
    v32 = *(this + 34);
    if (v32)
    {
      memset_pattern16(*(this + 15), &unk_1E304C660, 4 * v32);
      v30 = *(this + 36);
    }

    if (v30)
    {
      v33 = 0;
      for (i = 0; i < v30; ++i)
      {
        v35 = *(this + 16);
        v36 = *(v35 + v33);
        if (v36 < 0)
        {
          *(v35 + v33) = v36 & 0x7FFFFFFF;
          re::DynamicString::deinit((v35 + v33 + 8));
          v30 = *(this + 36);
        }

        v33 += 88;
      }
    }

    *(this + 35) = 0;
    *(this + 36) = 0;
    v37 = *(this + 38) + 1;
    *(this + 37) = 0x7FFFFFFF;
    *(this + 38) = v37;
  }

  v38 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  *(this + 20) = 0;
  v39 = *(this + 1);
  v46 = 0;
  (*(*v39 + 32))(v39, v45, v38);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v45);
  v40 = *(this + 1);
  v44 = 0;
  (*(*v40 + 24))(v40, v43);
  result = std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](v43);
  *this = 0;
  *(this + 1) = 0;
  return result;
}

uint64_t re::internal::AssetNetworkLoader::sendFailureResponse(re *a1, uint64_t a2, uint64_t a3, re::DynamicString *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = *re::assetsLogObjects(a1);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (*(a3 + 168))
    {
      v10 = *(a3 + 176);
    }

    else
    {
      v10 = a3 + 169;
    }

    *buf = 134218242;
    *v27 = a2;
    *&v27[8] = 2080;
    *&v27[10] = v10;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Sending peer asset load failure to '%llu' for '%s'", buf, 0x16u);
  }

  *&v27[12] = 0;
  v28 = 0;
  v29 = 0;
  re::DynamicString::setCapacity(&v27[4], 0);
  *buf = 102;
  v11 = re::DynamicString::operator=(&v27[4], a4);
  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DB8))
  {
    _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0);
    __cxa_guard_release(&qword_1EE191DB8);
  }

  v22 = 0;
  v23 = 0;
  if ((v12 & 1) == 0)
  {
    v17 = *re::assetsLogObjects(v12);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    if (*(a3 + 168))
    {
      v21 = *(a3 + 176);
    }

    else
    {
      v21 = a3 + 169;
    }

    *v24 = 136315138;
    v25 = v21;
    v19 = "Failed to serialize network message for '%s'";
    goto LABEL_23;
  }

  v13 = *(a1 + 1);
  v14 = v23;
  v15 = (*(*v13 + 16))(v13, a2, v23, v22);
  if ((v15 & 1) == 0)
  {
    v17 = *re::assetsLogObjects(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 168))
      {
        v18 = *(a3 + 176);
      }

      else
      {
        v18 = a3 + 169;
      }

      *v24 = 136315138;
      v25 = v18;
      v19 = "Failed to send failure message for '%s'";
LABEL_23:
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, v19, v24, 0xCu);
    }
  }

LABEL_15:
  result = *&v27[4];
  if (*&v27[4])
  {
    if (v27[12])
    {
      return (*(**&v27[4] + 40))();
    }
  }

  return result;
}

void re::internal::AssetNetworkLoader::queueAssetSerializationResponse(uint64_t a1, uint64_t *a2)
{
  re::AssetHandle::AssetHandle(v13, (a2 + 5));
  re::DynamicString::DynamicString(&v10, (a2 + 1));
  v4 = *a2;
  v5 = *(a1 + 392);
  v9 = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1174405120;
  v6[2] = ___ZN2re8internal18AssetNetworkLoader31queueAssetSerializationResponseERKNS0_22NetworkLoadRequestDataE_block_invoke;
  v6[3] = &__block_descriptor_tmp_50;
  v6[4] = a1;
  re::AssetHandle::AssetHandle(v7, v13);
  re::DynamicString::DynamicString(v8, &v10);
  v8[4] = v4;
  re::dispatch::Group::async((a1 + 400), &v9, v6);

  if (v8[0])
  {
    if (v8[1])
    {
      (*(*v8[0] + 40))();
    }

    memset(v8, 0, 32);
  }

  re::AssetHandle::~AssetHandle(v7);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))(v10, v12);
  }

  re::AssetHandle::~AssetHandle(v13);
}

void ___ZN2re8internal18AssetNetworkLoader31queueAssetSerializationResponseERKNS0_22NetworkLoadRequestDataE_block_invoke(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *re::assetsLogObjects(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v48 = re::AssetHandle::assetInfo((a1 + 40));
    if (v48[17])
    {
      v49 = v48[18];
    }

    else
    {
      v49 = v48 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v49;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "Async network serialization of '%s'", buf, 0xCu);
  }

  v5 = atomic_load((v2 + 384));
  if (v5)
  {
    v6 = *re::assetsLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 72))
      {
        v7 = *(a1 + 80);
      }

      else
      {
        v7 = a1 + 73;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Deiniting AssetNetworkLoader: Skipping asset serialization for %s", buf, 0xCu);
    }

    return;
  }

  v8 = *(*v2 + 1808);
  v9 = *(a1 + 48);
  if (v9)
  {
    v9 = *(v9 + 280);
  }

  *buf = v9;
  v10 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v8, buf);
  v11 = (*(**v10 + 128))(*v10);
  v12 = *v10;
  v76 = 0u;
  v75 = 0u;
  re::DynamicString::setCapacity(&v75, 0);
  LODWORD(v74) = 101;
  re::DynamicString::operator=(&v75, (a1 + 64));
  v13 = (*(**(v2 + 8) + 40))(&v70);
  v69 = 0;
  v67 = 0uLL;
  v68 = 0;
  v14 = re::DynamicArray<char>::setCapacity(&v66, 0x100uLL);
  ++v68;
  v65[0] = &unk_1F5D0A7B0;
  v65[1] = &v66;
  v65[2] = 0;
  v15 = *(v2 + 16);
  v16 = *(a1 + 48);
  if (v71)
  {
    v17 = v73;
  }

  else
  {
    v17 = v72;
  }

  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DB8))
  {
    _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0);
    __cxa_guard_release(&qword_1EE191DB8);
  }

  if ((v18 & 1) == 0)
  {
    v26 = *re::assetsLogObjects(v18);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (*(v16 + 21))
      {
        v28 = *(v16 + 22);
      }

      else
      {
        v28 = v16 + 169;
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to serialize network message for '%s'", buf, 0xCu);
    }

    goto LABEL_45;
  }

  v19 = re::AssetHandle::AssetHandle(v77, v16);
  v20 = *(v16 + 3);
  re::DefaultAssetSerialize::DefaultAssetSerialize(buf, v77);
  *buf = &unk_1F5CB9868;
  LOBYTE(v89) = 0;
  re::DynamicString::DynamicString(&v90, &v80);
  v92 = v20;
  if (v80 && (v81 & 1) != 0)
  {
    (*(*v80 + 40))(v80, v82, v21);
  }

  v22 = (*(*v12 + 128))(v12);
  re::AssetHandle::serializableAsset(v77, &v80);
  v23 = (**v15)(v15, v65, v22, v80, buf);
  if (v23)
  {
    v24 = (*(*v12 + 72))(v12, v65, v80, 0);
    if (v24)
    {
      v25 = 1;
      goto LABEL_31;
    }

    v29 = *re::assetsLogObjects(v24);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    if (*(v16 + 21))
    {
      v64 = *(v16 + 22);
    }

    else
    {
      v64 = v16 + 169;
    }

    *v78 = 136315138;
    v79 = v64;
    v63 = "Serializing compiled file blob failed '%s'";
LABEL_107:
    _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v63, v78, 0xCu);
LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  v29 = *re::assetsLogObjects(v23);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    if (*(v16 + 21))
    {
      v62 = *(v16 + 22);
    }

    else
    {
      v62 = v16 + 169;
    }

    *v78 = 136315138;
    v79 = v62;
    v63 = "Serializing compiled file failed '%s'";
    goto LABEL_107;
  }

  v25 = 0;
LABEL_31:
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v80);
  *buf = &unk_1F5CB9868;
  if (v90)
  {
    if (BYTE8(v90))
    {
      (*(*v90 + 40))(v90, v91, v30);
    }

    v91 = 0u;
    v90 = 0u;
  }

  *buf = &unk_1F5CB98A0;
  if (buf[8] == 1)
  {
    if (*&v86[8])
    {
      if (v86[16])
      {
        (*(**&v86[8] + 40))(*&v86[8], v87, v30);
      }

      v87 = 0u;
      *&v86[8] = 0u;
    }

    if (v84 && (v85 & 1) != 0)
    {
      (*(*v84 + 40))(v84, *(&v85 + 1), v30);
    }
  }

  re::AssetHandle::~AssetHandle(v77);
  if ((v25 & 1) == 0)
  {
LABEL_45:
    v32 = *re::assetsLogObjects(v27);
    v27 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      v57 = re::AssetHandle::assetInfo((a1 + 40));
      if (v57[17])
      {
        v58 = v57[18];
      }

      else
      {
        v58 = v57 + 137;
      }

      if (v71)
      {
        v59 = v73;
      }

      else
      {
        v59 = v72;
      }

      *buf = 136315394;
      *&buf[4] = v58;
      *&buf[12] = 2080;
      *&buf[14] = v59;
      _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Failed to create a response message for '%s' for peer '%s'", buf, 0x16u);
    }

    v31 = 1;
    goto LABEL_47;
  }

  v31 = 0;
LABEL_47:
  v33 = atomic_load((v2 + 384));
  if (v33)
  {
    v34 = *re::assetsLogObjects(v27);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 72))
      {
        v36 = *(a1 + 80);
      }

      else
      {
        v36 = a1 + 73;
      }

      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Deiniting AssetNetworkLoader: Skipping asset serialization response for %s", buf, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock((v2 + 256));
    v38 = *re::assetsLogObjects(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v60 = re::AssetHandle::assetInfo((a1 + 40));
      if (v60[17])
      {
        v61 = v60[18];
      }

      else
      {
        v61 = v60 + 137;
      }

      *buf = 136315138;
      *&buf[4] = v61;
      _os_log_debug_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEBUG, "Completed network serialization of Asset '%s'", buf, 0xCu);
    }

    *buf = *(a1 + 96);
    re::AssetHandle::AssetHandle(&buf[8], (a1 + 40));
    v39 = re::DynamicString::DynamicString(&v85, (a1 + 64));
    *&v86[16] = v66;
    v87 = v67;
    v66 = 0;
    v67 = 0uLL;
    v89 = v69;
    v69 = 0;
    ++v68;
    v88 = 1;
    LOBYTE(v90) = v31;
    v41 = *(v2 + 272);
    v42 = *(v2 + 280);
    if (v42 >= v41)
    {
      v43 = v42 + 1;
      if (v41 < v42 + 1)
      {
        if (*(v2 + 264))
        {
          v44 = 2 * v41;
          v45 = v41 == 0;
          v46 = 8;
          if (!v45)
          {
            v46 = v44;
          }

          if (v46 <= v43)
          {
            v47 = v43;
          }

          else
          {
            v47 = v46;
          }

          re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity((v2 + 264), v47);
        }

        else
        {
          re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity((v2 + 264), v43);
          ++*(v2 + 288);
        }
      }

      v42 = *(v2 + 280);
    }

    v50 = *(v2 + 296) + 112 * v42;
    *v50 = *buf;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 16) = *&buf[16];
    *&buf[16] = 0;
    v51 = *(v50 + 8);
    *(v50 + 8) = 0;
    *(v50 + 8) = *&buf[8];
    *&buf[8] = v51;
    v52 = *(v50 + 24);
    *(v50 + 24) = v84;
    v84 = v52;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 0u;
    *(v50 + 32) = v85;
    *&v85 = 0;
    v53 = *(v50 + 48);
    *(v50 + 48) = *v86;
    *v86 = v53;
    *(v50 + 56) = *&v86[8];
    *&v86[8] = 0;
    v54 = *(v50 + 40);
    *(v50 + 40) = *(&v85 + 1);
    *(&v85 + 1) = v54;
    *(v50 + 96) = 0;
    *(v50 + 88) = 0;
    *(v50 + 72) = 0;
    *(v50 + 80) = 0;
    *(v50 + 64) = 0;
    *(v50 + 64) = *&v86[16];
    *&v86[16] = 0;
    *(v50 + 72) = v87;
    *&v87 = 0;
    v55 = *(v50 + 80);
    *(v50 + 80) = *(&v87 + 1);
    *(&v87 + 1) = v55;
    v56 = *(v50 + 96);
    *(v50 + 96) = v89;
    v89 = v56;
    ++v88;
    ++*(v50 + 88);
    *(v50 + 104) = v90;
    ++*(v2 + 280);
    ++*(v2 + 288);
    if (*&v86[16])
    {
      if (v56)
      {
        (*(**&v86[16] + 40))(*&v86[16], v56, v40);
      }

      v89 = 0;
      v87 = 0uLL;
      *&v86[16] = 0;
      ++v88;
    }

    if (v85)
    {
      if (BYTE8(v85))
      {
        (*(*v85 + 40))(v85, *v86, v40);
      }

      v85 = 0u;
      *v86 = 0u;
    }

    re::AssetHandle::~AssetHandle(&buf[8]);
    os_unfair_lock_unlock((v2 + 256));
  }

  if (v66 && v69)
  {
    (*(*v66 + 40))(v66, v69, v35);
  }

  if (v70 && (v71 & 1) != 0)
  {
    (*(*v70 + 40))(v70, v73, v35);
  }

  if (v75 && (BYTE8(v75) & 1) != 0)
  {
    (*(*v75 + 40))(v75, v76, v35);
  }
}

re::DynamicString *__copy_helper_block_8_40c22_ZTSN2re11AssetHandleE64c24_ZTSN2re13DynamicStringE(uint64_t a1, uint64_t a2)
{
  re::AssetHandle::AssetHandle((a1 + 40), (a2 + 40));

  return re::DynamicString::DynamicString((a1 + 64), (a2 + 64));
}

void __destroy_helper_block_8_40c22_ZTSN2re11AssetHandleE64c24_ZTSN2re13DynamicStringE(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 64));

  re::AssetHandle::~AssetHandle((a1 + 40));
}

void re::internal::AssetNetworkLoader::receiveAssetResponse(uint64_t a1, uint64_t a2, re::AssetHandle *a3, const void *a4, size_t a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v11 = *a6;
LABEL_5:
    re::AssetHandle::AssetHandle(buf, a3);
    v14 = *(a1 + 392);
    v20 = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1174405120;
    v18[2] = ___ZN2re8internal18AssetNetworkLoader20receiveAssetResponseEyRKNS_11AssetHandleEPvmPU13block_pointerFvvE_block_invoke_2;
    v18[3] = &unk_1F5CB9290;
    v18[5] = a1;
    re::AssetHandle::AssetHandle(v19, buf);
    v18[4] = v11;
    v19[3] = a2;
    v19[4] = a4;
    v19[5] = a5;
    re::dispatch::Group::async((a1 + 400), &v20, v18);

    re::AssetHandle::~AssetHandle(v19);
    re::AssetHandle::~AssetHandle(buf);
    return;
  }

  v12 = (*(**(a1 + 160) + 32))(*(a1 + 160), a5, 0);
  if (v12)
  {
    v13 = v12;
    memcpy(v12, a4, a5);
    v11 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZN2re8internal18AssetNetworkLoader20receiveAssetResponseEyRKNS_11AssetHandleEPvmPU13block_pointerFvvE_block_invoke;
    v21[3] = &__block_descriptor_tmp_3_0;
    v21[4] = a1;
    v21[5] = v13;
    a4 = v13;
    goto LABEL_5;
  }

  v15 = *re::assetsLogObjects(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = re::AssetHandle::assetInfo(a3);
    if (v16[17])
    {
      v17 = v16[18];
    }

    else
    {
      v17 = v16 + 137;
    }

    *buf = 136315138;
    v23 = v17;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to allocate memory for network asset '%s'", buf, 0xCu);
  }
}

uint64_t ___ZN2re8internal18AssetNetworkLoader20receiveAssetResponseEyRKNS_11AssetHandleEPvmPU13block_pointerFvvE_block_invoke_2(void *a1)
{
  v63[6] = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = *re::assetsLogObjects(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v31 = re::AssetHandle::assetInfo((a1 + 6));
    if (v31[17])
    {
      v32 = v31[18];
    }

    else
    {
      v32 = v31 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v32;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "Async network deserialization of '%s'", buf, 0xCu);
  }

  v5 = atomic_load(v2 + 384);
  if ((v5 & 1) == 0)
  {
    v9 = a1[7];
    os_unfair_lock_lock((v9 + 512));
    if ((*(v9 + 545) & 1) == 0)
    {
      v25 = *re::assetsLogObjects(v10);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        if (*(v9 + 168))
        {
          v26 = *(v9 + 176);
        }

        else
        {
          v26 = v9 + 169;
        }

        *buf = 136315138;
        *&buf[4] = v26;
        _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Received unexpected asset response '%s'", buf, 0xCu);
      }

      goto LABEL_70;
    }

    v11 = *(*v2 + 1808);
    *buf = *(v9 + 280);
    v12 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v11, buf);
    (*(**v12 + 128))(*v12);
    v13 = *v12;
    re::AssetHandle::AssetHandle(v52, v9);
    re::DynamicString::format("%llu", &v50, a1[9]);
    v14 = *v2;
    re::DefaultAssetSerialize::DefaultAssetSerialize(buf, v52);
    *buf = &unk_1F5CB9868;
    v62 = 1;
    re::DynamicString::DynamicString(v63, &v50);
    v63[4] = v14;
    *(v9 + 545) = 0;
    v15 = a1[11];
    v47 = a1[10];
    v48 = v15;
    v49 = 0;
    if (*(v9 + 112) == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v9 + 112);
    }

    re::AssetSignpost::ScopeGuard::ScopeGuard(v46, 2054, v16, **(v9 + 280));
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46);
    v17 = (*(**(v2 + 2) + 8))(*(v2 + 2), *v2, *(v9 + 280), buf, a1[10], a1[11], &v49);
    if (!v17)
    {
      v30 = *v2;
      re::AssetManager::putEntryInFailedState_entryStateLocked(v30, v9, 302, v45);
      if (*&v45[0])
      {
        if (BYTE8(v45[0]))
        {
          (*(**&v45[0] + 40))();
        }

        memset(v45, 0, sizeof(v45));
      }

      goto LABEL_54;
    }

    v18 = v17;
    v47 = re::Slice<unsigned char>::range(&v47, v49, v15);
    v48 = v19;
    v40 = &unk_1F5D0A468;
    v41 = 0;
    v42 = v47;
    v43 = v19;
    re::FixedArrayInputStream::FixedArrayInputStream(v44, v47, v19, -1);
    if (*(v9 + 112) == -1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v9 + 112);
    }

    re::AssetSignpost::ScopeGuard::ScopeGuard(v39, 2056, v20, **(v9 + 280));
    if (*(v53 + 336) == 1 && (*(*v13 + 320))(v13))
    {
      TaskID = re::MemoryAttributionIDMap::getTaskID(*(*v2 + 1896), *(v53 + 344), a1[9]);
      v22 = *re::assetsLogObjects(TaskID);
      if (!TaskID)
      {
        v33 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          if (*(v9 + 168))
          {
            v34 = *(v9 + 176);
          }

          else
          {
            v34 = v9 + 169;
          }

          *v54 = 136315138;
          *&v54[4] = v34;
          _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Asset '%s' is assigned to an unregistered memory attribution ID", v54, 0xCu);
        }

        goto LABEL_52;
      }

      log = v22;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        if (*(v9 + 168))
        {
          v24 = *(v9 + 176);
        }

        else
        {
          v24 = v9 + 169;
        }

        if (*(v53 + 336) == 1)
        {
          v23 = *(v53 + 344);
        }

        *v54 = 136315650;
        *&v54[4] = v24;
        *&v54[12] = 2048;
        *&v54[14] = v23;
        v55 = 2048;
        v56 = TaskID;
        _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_INFO, "AssetNetworkLoader: creating asset %s with memory attribution ID %llu and taskID %llu", v54, 0x20u);
      }

      v27 = (*(*v13 + 32))(v13, v18, TaskID, &v40, 0);
      if ((v27 & 1) == 0)
      {
LABEL_48:
        v35 = *v2;
        re::AssetManager::putEntryInFailedState_entryStateLocked(v35, v9, 302, v38);
        if (*&v38[0])
        {
          if (BYTE8(v38[0]))
          {
            (*(**&v38[0] + 40))();
          }

          memset(v38, 0, sizeof(v38));
        }

LABEL_52:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v39);
LABEL_53:
        v40 = &unk_1F5D0A468;
        re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v44);
LABEL_54:
        *buf = &unk_1F5CB9868;
        if (v63[0])
        {
          if (v63[1])
          {
            (*(*v63[0] + 40))();
          }

          memset(v63, 0, 32);
        }

        *buf = &unk_1F5CB98A0;
        if (buf[8] == 1)
        {
          if (v60)
          {
            if (BYTE8(v60))
            {
              (*(*v60 + 40))();
            }

            v61 = 0u;
            v60 = 0u;
          }

          if (v58 && (v59 & 1) != 0)
          {
            (*(*v58 + 40))();
          }
        }

        if (v50 && (v51 & 1) != 0)
        {
          (*(*v50 + 40))();
        }

        re::AssetHandle::~AssetHandle(v52);
LABEL_70:
        os_unfair_lock_unlock((v9 + 512));
        return (*(a1[4] + 16))();
      }
    }

    else
    {
      v27 = (*(*v13 + 24))(v13, v18, &v40, 0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v39);
    v28 = *(v9 + 280);
    *v54 = v18;
    *&v54[8] = v28;
    if (*(v9 + 112) == -1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v9 + 112);
    }

    re::NetworkActionQueue::queueSyncActionProcessLoadedAsset(*v2 + 1152, v29, v54);
    goto LABEL_53;
  }

  v6 = *re::assetsLogObjects(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = re::AssetHandle::assetInfo((a1 + 6));
    if (v7[17])
    {
      v8 = v7[18];
    }

    else
    {
      v8 = v7 + 137;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Deiniting AssetNetworkLoader: Skipping asset deserialization for %s", buf, 0xCu);
  }

  return (*(a1[4] + 16))();
}

uint64_t re::Slice<unsigned char>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash();
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::internal::AssetNetworkLoader::receiveAssetFailure(re **this, os_unfair_lock_s *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a2 + 128);
  if ((a2[136]._os_unfair_lock_opaque & 0x100) != 0)
  {
    v5 = *this;
    re::AssetManager::putEntryInFailedState_entryStateLocked(v5, a2, 302, v8);
    if (*&v8[0])
    {
      if (BYTE8(v8[0]))
      {
        (*(**&v8[0] + 40))();
      }

      memset(v8, 0, sizeof(v8));
    }
  }

  else
  {
    v6 = *re::assetsLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*&a2[42]._os_unfair_lock_opaque)
      {
        v7 = *&a2[44]._os_unfair_lock_opaque;
      }

      else
      {
        v7 = &a2[42]._os_unfair_lock_opaque + 1;
      }

      *buf = 136315138;
      v10 = v7;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Received unexpected asset request failure '%s'", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock(a2 + 128);
}

uint64_t re::internal::AssetNetworkLoader::receiveMessageFromNetworkPeer(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v110[0] = &unk_1F5D0B130;
  v110[1] = a3;
  v10 = a4;
  v111 = a4;
  v112 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v11 = re::DynamicString::setCapacity(&v103, 0);
  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0)
  {
    v11 = __cxa_guard_acquire(&qword_1EE191DB8);
    if (v11)
    {
      _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0);
      __cxa_guard_release(&qword_1EE191DB8);
    }
  }

  v12 = _MergedGlobals_39;
  v13 = re::globalAllocators(v11);
  if (v14)
  {
    v15 = a2;
    v16 = *(*a1 + 1808);
    v17 = *(*a1 + 1904);
    LODWORD(buf) = 0;
    memset(v98, 0, sizeof(v98));
    v18 = re::DynamicString::setCapacity(v98, 0);
    v100 = 0u;
    v99 = 0u;
    re::DynamicString::setCapacity(&v99, 0);
    v101 = 0;
    if (v104)
    {
      v19 = v105;
    }

    else
    {
      v19 = &v104 + 1;
    }

    v21 = re::AssetPath::parse(&buf, v19, 0, v16, v17, v114);
    if (v114[0])
    {
      if (buf != 3)
      {
        v22 = v15;
        if (buf == 4)
        {
          if (v102 != 100)
          {
            v26 = *re::assetsLogObjects(v20);
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_73;
            }

            *v114 = 0;
            v27 = "Received invalid asset network message: only requests can have peer asset paths";
            goto LABEL_21;
          }

          if (BYTE8(v99))
          {
            v23 = v100;
          }

          else
          {
            v23 = &v99 + 9;
          }

          re::AssetPath::initMemoryAssetPath(&buf, v23, v101);
        }

        goto LABEL_37;
      }

      if ((v102 - 104) > 0xFFFFFFFC)
      {
        re::DynamicString::format("%llu", v114, v15);
        if (v114[8])
        {
          v28 = *&v114[16];
        }

        else
        {
          v28 = &v114[9];
        }

        if (BYTE8(v99))
        {
          v29 = v100;
        }

        else
        {
          v29 = &v99 + 9;
        }

        re::AssetPath::initPeerAssetPath(&buf, v28, v29, v101);
        if (*v114 && (v114[8] & 1) != 0)
        {
          (*(**v114 + 40))();
        }

        v22 = v15;
LABEL_37:
        *v114 = *&v98[0];
        memset(&v114[8], 0, 24);
        re::DynamicString::setCapacity(v114, 0);
        re::AssetPath::fullAssetPath(&buf, v114);
        v30 = re::Hash<re::DynamicString>::operator()(v113, v114);
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v113, a1 + 64, v114, v30);
        v31 = 0;
        if (*&v113[12] != 0x7FFFFFFF)
        {
          v31 = *(a1 + 80) + 80 * *&v113[12] + 40;
        }

        v32 = *v114;
        if (*v114 && (v114[8] & 1) != 0)
        {
          v32 = (*(**v114 + 40))();
        }

        if (v102 == 100)
        {
          v33 = re::AssetManager::assetHandle(&buf, *a1, 1, &v95);
          v34 = v96;
          if (!v96)
          {
LABEL_72:
            re::AssetHandle::~AssetHandle(&v95);
            goto LABEL_73;
          }

          v35 = *re::assetsLogObjects(v33);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            re::AssetPath::fullAssetPath(&buf, v114);
            v58 = (v114[8] & 1) != 0 ? *&v114[16] : &v114[9];
            *v113 = 134218242;
            *&v113[4] = v22;
            *&v113[12] = 2080;
            *&v113[14] = v58;
            _os_log_debug_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEBUG, "Received peer asset load request from '%llu' for '%s'", v113, 0x16u);
            if (*v114)
            {
              if (v114[8])
              {
                (*(**v114 + 40))();
              }
            }
          }

          v94 = 0uLL;
          v93 = *&v98[0];
          re::DynamicString::setCapacity(&v93, 0);
          re::AssetPath::fullAssetPath(&buf, &v93);
          os_unfair_lock_lock((v34 + 512));
          v37 = atomic_load((v34 + 896));
          v38 = *(v34 + 548);
          if (v38 == 2)
          {
            v44 = *re::assetsLogObjects(v36);
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_64;
            }

            if (BYTE8(v93))
            {
              v81 = v94;
            }

            else
            {
              v81 = &v93 + 9;
            }

            *v114 = 136315138;
            *&v114[4] = v81;
            v47 = "Requested asset %s, is set to not sync over the network";
          }

          else
          {
            if (v38 == 1)
            {
              goto LABEL_64;
            }

            if (v37 == 2)
            {
              memset(&v114[16], 0, 24);
              re::DynamicString::setCapacity(&v114[8], 0);
              v39 = re::AssetHandle::AssetHandle(v113, v34);
              *&v114[40] = *v113;
              memset(v113, 0, 24);
              v115 = *&v113[16];
              re::AssetHandle::~AssetHandle(v39);
              *v114 = v22;
              re::DynamicString::operator=(&v114[8], &v93);
              re::internal::AssetNetworkLoader::queueAssetSerializationResponse(a1, v114);
LABEL_49:
              re::AssetHandle::~AssetHandle(&v114[40]);
              if (*&v114[8] && (v114[16] & 1) != 0)
              {
                (*(**&v114[8] + 40))();
              }

LABEL_68:
              os_unfair_lock_unlock((v34 + 512));
              if (v93)
              {
                if (BYTE8(v93))
                {
                  (*(*v93 + 40))();
                }

                v93 = 0u;
                v94 = 0u;
              }

              goto LABEL_72;
            }

            if (*(v34 + 120))
            {
              if (*(v34 + 328) != 1)
              {
                AssetAsync_entryStateLocked = re::AssetManager::loadAssetAsync_entryStateLocked(*a1, v34, 0);
                if (v37 != 3)
                {
                  memset(&v114[16], 0, 24);
                  re::DynamicString::setCapacity(&v114[8], 0);
                  v72 = re::AssetHandle::AssetHandle(v113, v34);
                  *&v114[40] = *v113;
                  memset(v113, 0, 24);
                  v115 = *&v113[16];
                  re::AssetHandle::~AssetHandle(v72);
                  *v114 = v22;
                  v73 = re::DynamicString::operator=(&v114[8], &v93);
                  v74 = *(a1 + 32);
                  v75 = *(a1 + 40);
                  if (v75 >= v74)
                  {
                    v76 = v75 + 1;
                    if (v74 < v75 + 1)
                    {
                      if (*(a1 + 24))
                      {
                        v77 = 2 * v74;
                        v78 = v74 == 0;
                        v79 = 8;
                        if (!v78)
                        {
                          v79 = v77;
                        }

                        if (v79 <= v76)
                        {
                          v80 = v76;
                        }

                        else
                        {
                          v80 = v79;
                        }

                        re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity((a1 + 24), v80);
                      }

                      else
                      {
                        re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity((a1 + 24), v76);
                        ++*(a1 + 48);
                      }
                    }

                    v75 = *(a1 + 40);
                  }

                  v90 = (*(a1 + 56) + (v75 << 6));
                  *v90 = *v114;
                  v91 = (v90 + 5);
                  re::DynamicString::DynamicString((v90 + 1), &v114[8]);
                  re::AssetHandle::AssetHandle(v91, &v114[40]);
                  ++*(a1 + 40);
                  ++*(a1 + 48);
                  goto LABEL_49;
                }

                v64 = *re::assetsLogObjects(AssetAsync_entryStateLocked);
                if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
LABEL_64:
                  re::DynamicString::DynamicString(v114, &v93);
                  re::internal::AssetNetworkLoader::sendFailureResponse(a1, v22, v34, v114);
                  if (*v114)
                  {
                    if (v114[8])
                    {
                      (*(**v114 + 40))();
                    }

                    memset(v114, 0, 32);
                  }

                  goto LABEL_68;
                }

                if (*(v34 + 168))
                {
                  v65 = *(v34 + 176);
                }

                else
                {
                  v65 = v34 + 169;
                }

                v66 = *(v34 + 920);
                v67 = *(v66 + 224);
                v68 = *(v66 + 232);
                v69 = v66 + 225;
                if (v67)
                {
                  v69 = v68;
                }

                *v114 = 136315394;
                *&v114[4] = v65;
                *&v114[12] = 2080;
                *&v114[14] = v69;
                v47 = "Network asset requested failed: Asset loading failed '%s' (%s)";
                v70 = v64;
                v71 = 22;
LABEL_139:
                _os_log_error_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_ERROR, v47, v114, v71);
                goto LABEL_64;
              }

              v44 = *re::assetsLogObjects(v36);
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_64;
              }

              if (*(v34 + 168))
              {
                v46 = *(v34 + 176);
              }

              else
              {
                v46 = v34 + 169;
              }

              *v114 = 136315138;
              *&v114[4] = v46;
              v47 = "Network asset requested failed: Memory asset is not loaded '%s'";
            }

            else
            {
              v44 = *re::assetsLogObjects(v36);
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_64;
              }

              if (*(v34 + 168))
              {
                v57 = *(v34 + 176);
              }

              else
              {
                v57 = v34 + 169;
              }

              *v114 = 136315138;
              *&v114[4] = v57;
              v47 = "Network asset requested failed: Asset is empty '%s'";
            }
          }

          v70 = v44;
          v71 = 12;
          goto LABEL_139;
        }

        if (!v31)
        {
          goto LABEL_73;
        }

        v40 = *(v31 + 16);
        if (!v40)
        {
          goto LABEL_73;
        }

        switch(v102)
        {
          case 'g':
            v49 = v111 - v112;
            v50 = (a3 + v10 - (v111 - v112));
            if (v108)
            {
              v51 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a1 + 112, &v103);
              v52 = v51;
              v53 = *(v51 + 16);
              *(v51 + 16) = &v53[v49];
              v54 = *(v51 + 32);
              if (v54 != v108)
              {
                v55 = *re::assetsLogObjects(v51);
                v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
                v54 = v108;
                if (v56)
                {
                  v88 = *(v52 + 32);
                  if (v104)
                  {
                    v89 = v105;
                  }

                  else
                  {
                    v89 = &v104 + 1;
                  }

                  *v114 = 67109634;
                  *&v114[4] = v108;
                  *&v114[8] = 1024;
                  *&v114[10] = v88;
                  *&v114[14] = 2080;
                  *&v114[16] = v89;
                  _os_log_error_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_ERROR, "Received asset fragment number %u when expecting fragment number %u for asset %s. This will quite possibly corrupt the asset.", v114, 0x18u);
                  v54 = v108;
                }
              }

              *(v52 + 32) = v54 + 1;
            }

            else
            {
              v53 = (*(**(a1 + 160) + 32))(*(a1 + 160), v107, 0);
              *v114 = v22;
              *&v114[8] = v53;
              *&v114[16] = &v53[v49];
              *&v114[24] = v107;
              *&v114[28] = v109;
              *&v114[32] = v108 + 1;
              re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(a1 + 112, &v103, v114);
            }

            v59 = memcpy(v53, v50, v49);
            v60 = *re::assetsLogObjects(v59);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v84 = v108;
              v85 = v109;
              v86 = re::AssetHandle::assetInfo((v31 + 8));
              if (v86[17])
              {
                v87 = v86[18];
              }

              else
              {
                v87 = v86 + 137;
              }

              *v114 = 67110402;
              *&v114[4] = v84;
              *&v114[8] = 1024;
              *&v114[10] = v85;
              *&v114[14] = 2048;
              *&v114[16] = v22;
              *&v114[24] = 2080;
              *&v114[26] = v87;
              *&v114[34] = 2048;
              *&v114[36] = v49;
              *&v114[44] = 1024;
              *&v114[46] = a4;
              _os_log_debug_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEBUG, "Received peer fragmented asset (%u / %u) load response from '%llu' for '%s' payloadSize = %zu, bufferSize = %u", v114, 0x32u);
            }

            if (v108 != v109 - 1)
            {
              goto LABEL_73;
            }

            v61 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a1 + 112, &v103);
            v62 = *(v61 + 8);
            v92[0] = MEMORY[0x1E69E9820];
            v92[1] = 0x40000000;
            v92[2] = ___ZN2re8internal18AssetNetworkLoader29receiveMessageFromNetworkPeerEyPKvjPU13block_pointerFvvE_block_invoke;
            v92[3] = &__block_descriptor_tmp_8;
            v92[4] = a1;
            v92[5] = v62;
            *v113 = v92;
            re::internal::AssetNetworkLoader::receiveMessageFromNetworkPeer(a1, v22);
            re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 112, &v103);
            *(v61 + 8) = 0;
            goto LABEL_114;
          case 'f':
            v48 = *re::assetsLogObjects(v32);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v82 = re::AssetHandle::assetInfo((v31 + 8));
              if (v82[17])
              {
                v83 = v82[18];
              }

              else
              {
                v83 = v82 + 137;
              }

              *v114 = 134218242;
              *&v114[4] = v22;
              *&v114[12] = 2080;
              *&v114[14] = v83;
              _os_log_debug_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEBUG, "Received peer asset load failure from '%llu' for '%s'", v114, 0x16u);
            }

            re::internal::AssetNetworkLoader::receiveAssetFailure(a1, v40);
            goto LABEL_114;
          case 'e':
            v41 = *re::assetsLogObjects(v32);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = re::AssetHandle::assetInfo((v31 + 8));
              if (v42[17])
              {
                v43 = v42[18];
              }

              else
              {
                v43 = v42 + 137;
              }

              *v114 = 134218242;
              *&v114[4] = v22;
              *&v114[12] = 2080;
              *&v114[14] = v43;
              _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Received peer asset load response from '%llu' for '%s'", v114, 0x16u);
            }

            re::internal::AssetNetworkLoader::receiveAssetResponse(a1, v22, (v31 + 8), (a3 + v10 - (v111 - v112)), v111 - v112, a5);
LABEL_114:
            re::AssetPath::fullAssetPath(&buf, v114);
            re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 64, v114);
            if (*v114 && (v114[8] & 1) != 0)
            {
              (*(**v114 + 40))();
            }

            goto LABEL_73;
        }

        v26 = *re::assetsLogObjects(v32);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

        *v114 = 0;
        v27 = "Received invalid asset network message: unknown message type";
        goto LABEL_21;
      }

      v26 = *re::assetsLogObjects(v20);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *v114 = 0;
      v27 = "Received invalid asset network message: only responses can have memory asset paths";
    }

    else
    {
      v25 = *&v114[24];
      if (*&v114[24] && (v114[32] & 1) != 0)
      {
        v25 = (*(**&v114[24] + 40))(*&v114[24], *&v114[40], v21);
      }

      v26 = *re::assetsLogObjects(v25);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *v114 = 0;
      v27 = "Received invalid asset network message: failed to parse asset path";
    }

LABEL_21:
    _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, v27, v114, 2u);
LABEL_73:
    if (v99)
    {
      if (BYTE8(v99))
      {
        (*(*v99 + 40))();
      }

      v100 = 0u;
      v99 = 0u;
    }

    if (*&v98[0] && (BYTE8(v98[0]) & 1) != 0)
    {
      (*(**&v98[0] + 40))();
    }

    goto LABEL_80;
  }

  v24 = *re::assetsLogObjects(v14);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Received invalid asset network message: failed to parse message", &buf, 2u);
  }

LABEL_80:
  result = v103;
  if (v103)
  {
    if (v104)
    {
      return (*(*v103 + 40))();
    }
  }

  return result;
}

void re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v10, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v10, a1, a2, v4);
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 80 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 80 * v13) = *(v6 + 80 * v13) & 0x80000000 | v8;
    }

    re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v7);
    *(*(a1 + 16) + 80 * v5) = *(*(a1 + 16) + 80 * v5) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = v5;
    *(a1 + 40) = v9;
  }
}

__n128 re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v10, a1, a2, v6);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    v9 = *(a3 + 16);
    *(v8 + 72) = *(a3 + 32);
    *(v8 + 56) = v9;
    *(v8 + 40) = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  return *(a1 + 16) + 88 * v7 + 40;
}

void re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v11, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v11, a1, a2, v4);
  v5 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 88 * v13);
    v8 = *v7 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v8;
    }

    else
    {
      *(v6 + 88 * v14) = *(v6 + 88 * v14) & 0x80000000 | v8;
    }

    v9 = *v7;
    if (*v7 < 0)
    {
      *v7 = v9 & 0x7FFFFFFF;
      re::DynamicString::deinit((v7 + 2));
      v6 = *(a1 + 16);
      v9 = *(v6 + 88 * v5);
    }

    *(v6 + 88 * v5) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    v10 = *(a1 + 40) + 1;
    *(a1 + 36) = v5;
    *(a1 + 40) = v10;
  }
}

uint64_t re::internal::AssetNetworkLoader::sendRequestToNetworkPeer_entryStateLocked(uint64_t a1, uint64_t a2, uint64_t a3, re::DynamicString *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *re::assetsLogObjects(a1);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (*(a2 + 168))
    {
      v20 = *(a2 + 176);
    }

    else
    {
      v20 = a2 + 169;
    }

    *buf = 134218242;
    *v32 = a3;
    *&v32[8] = 2080;
    *&v32[10] = v20;
    _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "Sending peer asset load request to '%llu' for '%s'", buf, 0x16u);
  }

  *&v32[12] = 0;
  v33 = 0;
  v34 = 0;
  re::DynamicString::setCapacity(&v32[4], 0);
  *buf = 100;
  v10 = re::DynamicString::operator=(&v32[4], a4);
  if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DB8))
  {
    _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0);
    __cxa_guard_release(&qword_1EE191DB8);
  }

  v25 = 0;
  v26 = 0;
  if (v11)
  {
    v12 = v26;
    v13 = (*(**(a1 + 8) + 16))(*(a1 + 8), a3, v26, v25);
    if (v13)
    {
      *(a2 + 545) = 1;
      re::AssetHandle::AssetHandle(&v21, a2);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v15 = re::Hash<re::DynamicString>::operator()(&v30, a4);
      re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v27, a1 + 64, a4, v15);
      if (HIDWORD(v28) == 0x7FFFFFFF)
      {
        v16 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 64, v28, v27);
        re::DynamicString::DynamicString((v16 + 8), a4);
        *(v16 + 40) = a3;
        *(v16 + 48) = v21;
        v21 = 0uLL;
        *(v16 + 64) = v22;
        v22 = 0;
        ++*(a1 + 104);
      }

      re::AssetHandle::~AssetHandle(&v21);
    }

    else
    {
      v18 = *a1;
      re::AssetManager::putEntryInFailedState_entryStateLocked(v18, a2, 302, v23);
      if (*&v23[0])
      {
        if (BYTE8(v23[0]))
        {
          (*(**&v23[0] + 40))();
        }

        memset(v23, 0, sizeof(v23));
      }
    }
  }

  else
  {
    v17 = *a1;
    re::AssetManager::putEntryInFailedState_entryStateLocked(v17, a2, 302, v24);
    if (*&v24[0])
    {
      if (BYTE8(v24[0]))
      {
        (*(**&v24[0] + 40))();
      }

      memset(v24, 0, sizeof(v24));
    }
  }

  result = *&v32[4];
  if (*&v32[4])
  {
    if (v32[12])
    {
      return (*(**&v32[4] + 40))();
    }
  }

  return result;
}

re::DynamicString *re::DynamicArray<re::DynamicString>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicString>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::DynamicString::DynamicString((*(this + 4) + 32 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::DynamicArray<re::internal::NetworkLoadRequestData>::removeAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + (v2 << 6);
    v6 = v4 + (a2 << 6);
    *v6 = *(v5 - 64);
    re::DynamicString::operator=((v6 + 8), (v5 - 56));
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
    v8 = *(v5 - 16);
    *(v6 + 40) = *(v5 - 24);
    *(v6 + 48) = v8;
    *(v5 - 24) = v7;
    v9 = *(v6 + 56);
    *(v6 + 56) = *(v5 - 8);
    *(v5 - 8) = v9;
    v2 = *(a1 + 16);
  }

  v10 = *(a1 + 32) + (v2 << 6);
  re::AssetHandle::~AssetHandle((v10 - 24));
  re::DynamicString::deinit((v10 - 56));
  --*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t re::internal::AssetNetworkLoader::update(re::internal::AssetNetworkLoader *this)
{
  v100 = *MEMORY[0x1E69E9840];
  if (*(this + 5) >= 1)
  {
    v2 = *(this + 5) & 0x7FFFFFFFLL;
    v3 = v2 + 1;
    v4 = (v2 << 6) - 64;
    while (1)
    {
      v5 = *(this + 5);
      if (v5 <= v3 - 2)
      {
        *v84 = 0;
        v82 = 0u;
        v83 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v95 = 136315906;
        *v96 = "operator[]";
        *&v96[8] = 1024;
        *&v96[10] = 789;
        *&v96[14] = 2048;
        *&v96[16] = v3 - 2;
        *&v96[24] = 2048;
        *&v96[26] = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(this + 7);
      v7 = *(v6 + v4 + 48);
      os_unfair_lock_lock((v7 + 512));
      v9 = atomic_load((v7 + 896));
      if (!v9)
      {
        v12 = *re::assetsLogObjects(v8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (*(v7 + 168))
          {
            v15 = *(v7 + 176);
          }

          else
          {
            v15 = v7 + 169;
          }

          *buf = 136315138;
          *&buf[4] = v15;
          _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Network asset requested failed: Asset didn't load '%s'", buf, 0xCu);
        }

        v13 = *(v6 + v4);
        re::DynamicString::DynamicString(v73, (v6 + v4 + 8));
        re::internal::AssetNetworkLoader::sendFailureResponse(this, v13, v7, v73);
        if (*&v73[0])
        {
          if (BYTE8(v73[0]))
          {
            (*(**&v73[0] + 40))();
          }

          memset(v73, 0, sizeof(v73));
        }

        goto LABEL_18;
      }

      if (v9 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        re::internal::AssetNetworkLoader::queueAssetSerializationResponse(this, (v6 + v4));
LABEL_18:
        re::DynamicArray<re::internal::NetworkLoadRequestData>::removeAt(this + 24, v3 - 2);
      }

      os_unfair_lock_unlock((v7 + 512));
      --v3;
      v4 -= 64;
      if (v3 <= 1)
      {
        goto LABEL_31;
      }
    }

    v10 = *re::assetsLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (*(v7 + 168))
      {
        v14 = *(v7 + 176);
      }

      else
      {
        v14 = v7 + 169;
      }

      v16 = *(v7 + 920);
      v17 = *(v16 + 224);
      v18 = *(v16 + 232);
      v19 = v16 + 225;
      if (v17)
      {
        v19 = v18;
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v19;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Network asset requested failed: Asset loading failed '%s' (%s)", buf, 0x16u);
    }

    v11 = *(v6 + v4);
    re::DynamicString::DynamicString(v74, (v6 + v4 + 8));
    re::internal::AssetNetworkLoader::sendFailureResponse(this, v11, v7, v74);
    if (*&v74[0])
    {
      if (BYTE8(v74[0]))
      {
        (*(**&v74[0] + 40))();
      }

      memset(v74, 0, sizeof(v74));
    }

    goto LABEL_18;
  }

LABEL_31:
  os_unfair_lock_lock(this + 64);
  memset(buf, 0, 24);
  v69 = 0;
  v70 = 0u;
  *&buf[32] = 0;
  v72 = 0;
  v71 = 1;
  *&buf[24] = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v69, this + 264);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 264, buf);
  re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(buf);
  os_unfair_lock_unlock(this + 64);
  if (*(&v70 + 1))
  {
    v21 = v72;
    v22 = &v72[14 * *(&v70 + 1)];
    v67 = v22;
    while (1)
    {
      v23 = *(v21 + 104);
      v24 = *re::assetsLogObjects(v20);
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v56 = re::AssetHandle::assetInfo((v21 + 1));
          if (v56[17])
          {
            v57 = v56[18];
          }

          else
          {
            v57 = v56 + 137;
          }

          v58 = *v21;
          *buf = 136315394;
          *&buf[4] = v57;
          *&buf[12] = 2048;
          *&buf[14] = v58;
          _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Failed to serialize reponse for asset '%s' for Peer '%llu'", buf, 0x16u);
        }

        v25 = *v21;
        v26 = v21[2];
        re::DynamicString::DynamicString(buf, (v21 + 4));
        re::internal::AssetNetworkLoader::sendFailureResponse(this, v25, v26, buf);
        v20 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v20 = (*(**buf + 40))();
        }

        goto LABEL_97;
      }

      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        v28 = re::AssetHandle::assetInfo((v21 + 1));
        if (v28[17])
        {
          v29 = v28[18];
        }

        else
        {
          v29 = v28 + 137;
        }

        v30 = *v21;
        *buf = 136315394;
        *&buf[4] = v29;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Sending network response for asset '%s' to Peer '%llu'", buf, 0x16u);
      }

      v31 = re::AssetSimpleMessage::maxBytesPerPacket(v27);
      v32 = v21[10];
      if (!v31 || (v33 = v31, v68 = v32, v32 <= v31))
      {
        v20 = (*(**(this + 1) + 16))(*(this + 1), *v21, v21[12], v32);
        v48 = v20;
        goto LABEL_66;
      }

      memset(&buf[8], 0, 32);
      re::DynamicString::setCapacity(&buf[8], 0);
      *buf = 101;
      v34 = re::DynamicString::operator=(&buf[8], (v21 + 4));
      LODWORD(v82) = (v32 - 1) / v33 + 1;
      *&buf[40] = v32;
      *&buf[44] = -1;
      v35 = *re::assetsLogObjects(v34);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
      if (v36)
      {
        v63 = &buf[17];
        if (buf[16])
        {
          v63 = *&buf[24];
        }

        v64 = *v21;
        *v95 = 136315650;
        *v96 = v63;
        *&v96[8] = 2048;
        *&v96[10] = v64;
        *&v96[18] = 1024;
        *&v96[20] = v82;
        _os_log_debug_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEBUG, "Asset %s for peer %llu needs to be fragmented (%u)", v95, 0x1Cu);
      }

      if ((atomic_load_explicit(&qword_1EE191DB8, memory_order_acquire) & 1) == 0)
      {
        v36 = __cxa_guard_acquire(&qword_1EE191DB8);
        if (v36)
        {
          _MergedGlobals_39 = re::introspect_AssetSimpleMessage(0);
          __cxa_guard_release(&qword_1EE191DB8);
        }
      }

      v37 = _MergedGlobals_39;
      memset(&v96[12], 0, 24);
      re::DynamicString::setCapacity(&v96[4], 0);
      v38 = re::DynamicString::operator=(&v96[4], &buf[8]);
      v97 = *&buf[40];
      v79 = &unk_1F5D0A808;
      v80 = 0;
      if ((v39 & 1) == 0)
      {
        break;
      }

      v40 = v80;
      if (!v80)
      {
        v54 = *re::assetsLogObjects(v39);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = &buf[17];
          if (buf[16])
          {
            v55 = *&buf[24];
          }

LABEL_106:
          *v84 = 136315138;
          *&v84[4] = v55;
          _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "Failed to serialize network message for '%s'", v84, 0xCu);
          v59 = 0;
          v48 = 0;
          goto LABEL_90;
        }

LABEL_82:
        v59 = 0;
        v48 = 0;
        goto LABEL_90;
      }

      v99 = (*&buf[40] - 1) / v33 + 1;
      *v95 = 103;
      v42 = v41;
      v98 = 0;
      if (v99)
      {
        v43 = 0;
        while (1)
        {
          if (v33 >= v68 - v43)
          {
            v44 = v68 - v43;
          }

          else
          {
            v44 = v33;
          }

          v75 = &unk_1F5D0ADB8;
          v76 = v42;
          v77 = v44 + v40;
          v78 = 0;
          v45 = *re::assetsLogObjects(v41);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v49 = &v96[13];
            if (v96[12])
            {
              v49 = *&v96[20];
            }

            v50 = *v21;
            *v84 = 136316418;
            *&v84[4] = v49;
            v85 = 2048;
            v86 = v50;
            v87 = 1024;
            v88 = v98;
            v89 = 1024;
            v90 = v99;
            v91 = 2048;
            v92 = v44;
            v93 = 2048;
            v94 = v44 + v40;
            _os_log_debug_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEBUG, "Sending '%s' fragmented to peer '%llu', current fragment (%u/ %u) payloadSize = %zu, bytesSent = %zu", v84, 0x36u);
          }

          if ((v46 & 1) == 0)
          {
            break;
          }

          if (v77 - v78 >= v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v77 - v78;
          }

          memcpy((v76 + v78), (v21[12] + v43), v47);
          v78 += v47;
          v41 = (*(**(this + 1) + 16))(*(this + 1), *v21, v42, v44 + v40);
          v48 = v41;
          if (++v98 < v99)
          {
            v43 += v44;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_89;
        }

        v62 = *re::assetsLogObjects(v46);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v65 = &v96[13];
          if (v96[12])
          {
            v65 = *&v96[20];
          }

          *v84 = 136315138;
          *&v84[4] = v65;
          _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, "Failed to serialize network message for '%s'", v84, 0xCu);
        }

        v59 = 0;
        v48 = 1;
        v22 = v67;
      }

      else
      {
        v48 = 1;
LABEL_89:
        v59 = 1;
        v22 = v67;
      }

LABEL_90:
      if (*&v96[4] && (v96[12] & 1) != 0)
      {
        (*(**&v96[4] + 40))();
      }

      v20 = *&buf[8];
      if (*&buf[8] && (buf[16] & 1) != 0)
      {
        v20 = (*(**&buf[8] + 40))();
      }

      if (!v59)
      {
        goto LABEL_97;
      }

LABEL_66:
      v51 = *re::assetsLogObjects(v20);
      v20 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        v60 = *v21;
        if (v21[5])
        {
          v61 = v21[6];
        }

        else
        {
          v61 = v21 + 41;
        }

        *buf = 134218242;
        *&buf[4] = v60;
        *&buf[12] = 2080;
        *&buf[14] = v61;
        _os_log_debug_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEBUG, "Sending peer asset load result to '%llu' for '%s'", buf, 0x16u);
        if ((v48 & 1) == 0)
        {
LABEL_68:
          v52 = *re::assetsLogObjects(v20);
          v20 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
          if (v20)
          {
            if (v21[5])
            {
              v53 = v21[6];
            }

            else
            {
              v53 = v21 + 41;
            }

            *buf = 136315138;
            *&buf[4] = v53;
            _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Failed to send message for '%s'", buf, 0xCu);
          }
        }
      }

      else if ((v48 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_97:
      v21 += 14;
      if (v21 == v22)
      {
        return re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(&v69);
      }
    }

    v54 = *re::assetsLogObjects(v39);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = &buf[17];
      if (buf[16])
      {
        v55 = *&buf[24];
      }

      goto LABEL_106;
    }

    goto LABEL_82;
  }

  return re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::deinit(&v69);
}

void *re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::AssetNetworkLoader::SerializedAssetResponse>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = v8 + 112 * v9;
        v11 = v8 + 8;
        v12 = v7;
        do
        {
          *v12 = *(v11 - 8);
          v12[1] = 0;
          v12[2] = 0;
          v12[3] = 0;
          v12[2] = *(v11 + 8);
          *(v11 + 8) = 0;
          v13 = v12[1];
          v12[1] = 0;
          v12[1] = *v11;
          *v11 = v13;
          v14 = v12[3];
          v12[3] = *(v11 + 16);
          *(v11 + 16) = v14;
          *(v12 + 2) = 0u;
          *(v12 + 3) = 0u;
          v12[4] = *(v11 + 24);
          *(v11 + 24) = 0;
          v12[7] = *(v11 + 48);
          *(v11 + 48) = 0;
          v16 = v12[5];
          v15 = v12[6];
          v17 = *(v11 + 40);
          v12[5] = *(v11 + 32);
          v12[6] = v17;
          *(v11 + 32) = v16;
          *(v11 + 40) = v15;
          v12[12] = 0;
          *(v12 + 22) = 0;
          v12[9] = 0;
          v12[10] = 0;
          v12[8] = 0;
          v18 = *(v11 + 64);
          v12[8] = *(v11 + 56);
          *(v11 + 56) = 0;
          v12[9] = v18;
          *(v11 + 64) = 0;
          v19 = v12[10];
          v12[10] = *(v11 + 72);
          *(v11 + 72) = v19;
          v20 = v12[12];
          v12[12] = *(v11 + 88);
          *(v11 + 88) = v20;
          ++*(v11 + 80);
          ++*(v12 + 22);
          *(v12 + 104) = *(v11 + 96);
          re::DynamicArray<unsigned long>::deinit(v11 + 56);
          re::DynamicString::deinit((v11 + 24));
          re::AssetHandle::~AssetHandle(v11);
          v12 += 14;
          v21 = v11 + 104;
          v11 += 112;
        }

        while (v21 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0>,void ()(unsigned long long,void const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB92D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_0>,void ()(unsigned long long,void const*,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB9360;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1>,void ()(unsigned long long)>::operator()(_anonymous_namespace_ *a1, uint64_t *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 1);
  v36 = 0;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  re::DynamicArray<re::DynamicString>::setCapacity(v33, 0);
  ++v35;
  v4 = re::DynamicString::format("%llu", &v31, v2);
  v5 = *(v3 + 96);
  if (v5)
  {
    v6 = 0;
    v7 = *(v3 + 80);
    while (1)
    {
      v8 = *v7;
      v7 += 20;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(v3 + 96);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  while (v6 != v5)
  {
    v20 = *(v3 + 80) + 80 * v6;
    v22 = *(v20 + 40);
    v21 = v20 + 40;
    if (v22 == v2)
    {
      v23 = v21 - 32;
      v24 = *(v21 + 16);
      if (v24)
      {
        os_unfair_lock_lock((v24 + 512));
        if (*(v24 + 545) == 1)
        {
          v26 = *v3;
          re::DynamicString::format("Network peer %llu has left", v30, v2);
          re::AssetManager::putEntryInFailedState_entryStateLocked(v26, v24, 302, v30);
          if (*&v30[0])
          {
            if (BYTE8(v30[0]))
            {
              (*(**&v30[0] + 40))();
            }

            memset(v30, 0, sizeof(v30));
          }

          re::DynamicArray<re::DynamicString>::add(v33, v23);
        }

        else
        {
          v27 = *re::assetsLogObjects(v25);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            if (*(v23 + 8))
            {
              v29 = *(v23 + 16);
            }

            else
            {
              v29 = v23 + 9;
            }

            *buf = 136315138;
            *&buf[4] = v29;
            _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Pending requested asset state is inconsistent: expected loading-from-peer state: %s", buf, 0xCu);
          }
        }

        os_unfair_lock_unlock((v24 + 512));
      }

      else
      {
        v4 = re::DynamicArray<re::DynamicString>::add(v33, (v21 - 32));
      }
    }

    v28 = *(v3 + 96);
    if (v28 <= v6 + 1)
    {
      v28 = v6 + 1;
    }

    while (v28 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(v3 + 80) + 80 * v6) & 0x80000000) != 0)
      {
        goto LABEL_43;
      }
    }

    LODWORD(v6) = v28;
LABEL_43:
    ;
  }

  if (v34)
  {
    v9 = *re::assetsLogObjects(v4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    v11 = v34;
    if (v10)
    {
      *buf = 134218240;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "%zu network asset load outstanding request(s) to peer '%llu' are being abandoned due to that peer leaving", buf, 0x16u);
      v11 = v34;
    }

    if (v11)
    {
      v12 = v36;
      v13 = 32 * v11;
      do
      {
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v3 + 64, v12);
        v14 = re::Hash<re::DynamicString>::operator()(buf, v12);
        re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, v3 + 112, v12, v14);
        if (*&buf[12] != 0x7FFFFFFF)
        {
          (*(**(v3 + 160) + 40))(*(v3 + 160), *(*(v3 + 128) + 88 * *&buf[12] + 48));
          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v3 + 112, v12);
        }

        v12 += 32;
        v13 -= 32;
      }

      while (v13);
    }
  }

  if (*(v3 + 40) >= 1)
  {
    v15 = *(v3 + 40) & 0x7FFFFFFFLL;
    v16 = v15 + 1;
    v17 = (v15 << 6) - 64;
    do
    {
      v18 = *(v3 + 40);
      if (v18 <= v16 - 2)
      {
        v37 = 0;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        v41 = 789;
        v42 = 2048;
        v43 = v16 - 2;
        v44 = 2048;
        v45 = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(*(v3 + 56) + v17) == v2)
      {
        re::DynamicArray<re::internal::NetworkLoadRequestData>::removeAt(v3 + 24, v16 - 2);
      }

      --v16;
      v17 -= 64;
    }

    while (v16 > 1);
  }

  if (v31 && (v32 & 1) != 0)
  {
    (*(*v31 + 40))();
  }

  return re::DynamicArray<re::DynamicString>::deinit(v33);
}

uint64_t std::__function::__func<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1,std::allocator<re::internal::AssetNetworkLoader::init(re::AssetManager *,re::AssetNetworkMessaging *,re::NetworkAssetSerializationService *)::$_1>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::NetworkLoadRequestData>::setCapacity(v5, a2);
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
        v10 = (v8 + (v9 << 6));
        v11 = (v8 + 40);
        v12 = v7;
        do
        {
          *v12 = *(v11 - 5);
          *(v12 + 1) = 0u;
          *(v12 + 3) = 0u;
          v12[1] = *(v11 - 4);
          *(v11 - 4) = 0;
          v12[4] = *(v11 - 1);
          *(v11 - 1) = 0;
          v14 = v12[2];
          v13 = v12[3];
          v15 = *(v11 - 2);
          v12[2] = *(v11 - 3);
          v12[3] = v15;
          *(v11 - 3) = v14;
          *(v11 - 2) = v13;
          v12[5] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[6] = *(v11 + 1);
          *(v11 + 1) = 0;
          v16 = v12[5];
          v12[5] = 0;
          v12[5] = *v11;
          *v11 = v16;
          v17 = v12[7];
          v12[7] = *(v11 + 2);
          *(v11 + 2) = v17;
          re::AssetHandle::~AssetHandle(v11);
          re::DynamicString::deinit((v11 - 32));
          v12 += 8;
          v18 = (v11 + 24);
          v11 = (v11 + 64);
        }

        while (v18 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<char>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, a2, 1);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<char>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

BOOL re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 80 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 80 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 80 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 80 * v12) & 0x7FFFFFFF;
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
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

BOOL re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 88 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 88 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 88 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 88 * v12) & 0x7FFFFFFF;
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
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 80) % *(a1 + 24));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v33[16];
                v25 = *(*&v33[16] + v17 + 40);
                v26 = *(*&v33[16] + v17 + 56);
                *(v20 + 72) = *(*&v33[16] + v17 + 72);
                *(v20 + 56) = v26;
                *(v20 + 40) = v25;
              }

              ++v18;
              v17 += 88;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 88 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 88 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 88 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 80) = a3;
  ++*(a1 + 28);
  return v27 + 88 * v5;
}

uint64_t re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          v13 = *(a1 + 16);
          *&v35[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v35[24];
          *&v35[24] = *(a1 + 24);
          v14 = *&v35[32];
          *(a1 + 24) = v15;
          ++*&v35[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 40;
            do
            {
              v19 = v13 + v18;
              if ((*(v13 + v18 - 40) & 0x80000000) != 0)
              {
                v20 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v19 + 32) % *(a1 + 24));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = *(v19 - 8);
                v21 = *(v19 - 24);
                *(v20 + 8) = *(v19 - 32);
                *(v19 - 32) = 0;
                v22 = *(v19 - 16);
                *(v19 - 8) = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                *(v19 - 24) = v24;
                *(v19 - 16) = v23;
                v13 = *&v35[16];
                v25 = (*&v35[16] + v18);
                v26 = *(*&v35[16] + v18);
                *(v20 + 56) = 0;
                *(v20 + 64) = 0;
                *(v20 + 40) = v26;
                *(v20 + 48) = 0;
                *(v20 + 56) = v25[2];
                v25[2] = 0;
                v27 = *(v20 + 48);
                *(v20 + 48) = 0;
                *(v20 + 48) = v25[1];
                v25[1] = v27;
                v28 = *(v20 + 64);
                *(v20 + 64) = v25[3];
                v25[3] = v28;
              }

              ++v17;
              v18 += 80;
            }

            while (v17 < v16);
          }

          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::PendingRequestedAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v35);
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v29 = *(a1 + 16);
    v30 = *(v29 + 80 * v5);
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = *(v29 + 80 * v5);
    *(a1 + 36) = v30 & 0x7FFFFFFF;
  }

  v32 = v29 + 80 * v5;
  *v32 = v30 | 0x80000000;
  v33 = *(a1 + 8);
  *v32 = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v5;
  *(v32 + 72) = a3;
  ++*(a1 + 28);
  return v29 + 80 * v5;
}

void *re::allocInfo_FileAssetLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191DF0, "FileAssetLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_40);
  }

  return &unk_1EE191DF0;
}

void re::initInfo_FileAssetLoadDescriptorParameters(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x2764D90FB3166F26;
  v11[1] = "FileAssetLoadDescriptorParameters";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE191DD0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191DD0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "path";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE191DC8 = v9;
      __cxa_guard_release(&qword_1EE191DD0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE191DC8;
  *(this + 9) = re::internal::defaultConstruct<re::FileAssetLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FileAssetLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::FileAssetLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::FileAssetLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::internal::defaultConstruct<re::FileAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::FileAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

re::FileAssetProvider *re::FileAssetProvider::FileAssetProvider(re::FileAssetProvider *this, const re::internal::AssetTypeRegistry *a2, const re::AssetCompilerRegistry *a3, const re::AssetProviderRegistry *a4)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CB93F0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ((atomic_load_explicit(&qword_1EE191DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191DE8))
  {
    qword_1EE191DE0 = re::internal::getOrCreateInfo("FileAssetLoadDescriptorParameters", re::allocInfo_FileAssetLoadDescriptorParameters, re::initInfo_FileAssetLoadDescriptorParameters, &unk_1EE191DD8, 0);
    __cxa_guard_release(&qword_1EE191DE8);
  }

  re::FileAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE191DE0;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 3) = a2;
  return this;
}

void re::FileAssetProvider::~FileAssetProvider(re::FileAssetProvider *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FileAssetProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v6 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  re::DynamicString::setCapacity((a3 + 112), 0);
  v12 = "FileAsset";
  v13 = 9;
  re::DynamicString::operator=(a3, &v12);
  v7 = re::DynamicString::operator=((a3 + 112), a2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::DynamicString::operator=(&v12, a1);
  re::DynamicString::DynamicString(v11, &v12);
  re::AssetLoadDescriptor::setIntrospectableData(a3, re::FileAssetProvider::s_loadDescriptorParametersIntrospect, v11, 0);
  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))(v12, v14, v8, v9);
    }
  }

  return result;
}

re::DynamicString *re::FileAssetProvider::load@<X0>(re::internal::AssetTypeRegistry **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 8))
  {
    v9 = *(a2 + 2);
  }

  else
  {
    v9 = a2 + 9;
  }

  v10 = strcmp(v9, "FileAsset");
  if (v10)
  {
    v12 = v23;
    v13 = v24;
    v14 = v25;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
  }

  else
  {
    *(&v23 + 1) = 0;
    v24 = 0;
    v25 = 0;
    re::DynamicString::setCapacity(&v23, 0);
    Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a2, &v23);
    if (Descriptor)
    {
      if (*(a2 + 120))
      {
        v16 = *(a2 + 16);
      }

      else
      {
        v16 = a2 + 121;
      }

      re::loadCompiledOrSourceFile(&v23, v16, this + 3, a3, a4);
    }

    else
    {
      v17 = v20;
      v18 = v21;
      v19 = v22;
      *a4 = 0;
      *(a4 + 8) = v17;
      *(a4 + 24) = v18;
      *(a4 + 32) = v19;
    }

    result = v23;
    if (v23)
    {
      if (BYTE8(v23))
      {
        return (*(*v23 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE191DE8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE191DE8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE191DE0 = re::internal::getOrCreateInfo("FileAssetLoadDescriptorParameters", re::allocInfo_FileAssetLoadDescriptorParameters, re::initInfo_FileAssetLoadDescriptorParameters, &unk_1EE191DD8, 0);
      __cxa_guard_release(&qword_1EE191DE8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE191DE0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

re::DynamicString *re::FileAssetProvider::resolveChild@<X0>(const re::AssetLoadDescriptor *a1@<X1>, re::AssetProvider *a2@<X2>, const char *a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {
    v9 = *(a1 + 2);
  }

  else
  {
    v9 = a1 + 9;
  }

  v10 = strcmp(v9, "FileAsset");
  if (v10)
  {
    result = re::DynamicString::format("Scheme %s does not match scheme %s.", &v30, v9, "FileAsset");
    v12 = v30;
    v13 = v31;
    v14 = v32;
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    re::DynamicString::setCapacity(&v43, 0);
    v15 = re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a1, &v43);
    if (v15)
    {
      if (v44)
      {
        v16 = v45;
      }

      else
      {
        v16 = (&v44 + 1);
      }

      v17 = re::AssetProvider::resolveChildPath(a2, v16, &v41);
      re::FileAssetProvider::makeDescriptor(&v41, v29, &v30);
      v18 = v30;
      *(a4 + 48) = v33;
      v19 = v36;
      *(a4 + 72) = v35;
      v30 = 0u;
      v20 = v31;
      v21 = v32;
      v31 = 0;
      v22 = *(&v32 + 1);
      v32 = 0u;
      ++v34;
      ++v37;
      v23 = v40;
      v24 = v39;
      v40 = 0u;
      v39 = 0;
      *a4 = 1;
      *(a4 + 24) = v20;
      *(a4 + 32) = v21;
      *(a4 + 8) = v18;
      *(a4 + 40) = v22;
      v33 = 0u;
      *(a4 + 64) = 1;
      v35 = 0u;
      v36 = 0u;
      *(a4 + 88) = v19;
      *(a4 + 104) = 1;
      v25 = v38;
      v38 = 0u;
      *(a4 + 112) = v25;
      *(a4 + 136) = v23;
      *(a4 + 128) = v24;
      if (*&v29[0])
      {
        if (BYTE8(v29[0]))
        {
          (*(**&v29[0] + 40))();
        }

        memset(v29, 0, sizeof(v29));
      }

      if (v41 && (v42 & 1) != 0)
      {
        (*(*v41 + 40))();
      }
    }

    else
    {
      v26 = v30;
      v27 = v31;
      v28 = v32;
      *a4 = 0;
      *(a4 + 8) = v26;
      *(a4 + 24) = v27;
      *(a4 + 32) = v28;
    }

    result = v43;
    if (v43)
    {
      if (v44)
      {
        return (*(*v43 + 40))();
      }
    }
  }

  return result;
}

re::DynamicString *re::FileAssetProvider::getDescription(re::FileAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::DynamicString::setCapacity(&v6, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a2, &v6))
  {
    re::DynamicString::operator=(a3, &v6);
  }

  else
  {
    v10[0] = "mangled";
    v10[1] = 7;
    re::DynamicString::operator=(a3, v10);
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::FileAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, re::AssetLoadDescriptor *a2@<X1>, const re::internal::AssetTypeRegistry *a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t a5@<X8>)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  re::DynamicString::setCapacity(&v35, 0);
  v9 = re::AssetLoadDescriptor::getIntrospectableData<re::FileAssetLoadDescriptorParameters>(a2, &v35);
  if (v9)
  {
    if (v36)
    {
      v10 = v37;
    }

    else
    {
      v10 = &v36 + 1;
    }

    v11 = re::DynamicString::format("sourcepath:%s", &v32, v10);
    LODWORD(v25) = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v12 = re::DynamicString::setCapacity(&v25 + 1, 0);
    *(&v29 + 1) = 0;
    v30 = 0uLL;
    re::DynamicString::setCapacity(&v29, 0);
    v31 = 0;
    if (v33)
    {
      v13 = *&v34[7];
    }

    else
    {
      v13 = v34;
    }

    v14 = re::AssetPath::parse(&v25, v13, 0, a3, a4, v22);
    if ((v22[0] & 1) == 0 && v23)
    {
      if (BYTE8(v23))
      {
        (*(*v23 + 40))(v14);
      }

      v24 = 0u;
      v23 = 0u;
    }

    re::DynamicString::DynamicString(&v19, &v32);
    *a5 = 1;
    *(a5 + 8) = v19;
    *(a5 + 32) = v21;
    *(a5 + 16) = v20;
    if (v29)
    {
      if (BYTE8(v29))
      {
        (*(*v29 + 40))();
      }

      v30 = 0u;
      v29 = 0u;
    }

    if (*(&v25 + 1) && (v26 & 1) != 0)
    {
      (*(**(&v25 + 1) + 40))();
    }

    if (v32 && (v33 & 1) != 0)
    {
      (*(*v32 + 40))();
    }
  }

  else
  {
    v15 = v25;
    v16 = v26;
    v17 = v27;
    *a5 = 0;
    *(a5 + 8) = v15;
    *(a5 + 24) = v16;
    *(a5 + 32) = v17;
  }

  result = v35;
  if (v35)
  {
    if (v36)
    {
      return (*(*v35 + 40))();
    }
  }

  return result;
}

uint64_t *re::FileAssetProvider::makeDescriptorFromAssetPath@<X0>(re::FileAssetProvider *this@<X0>, const char ***a2@<X1>, uint64_t a3@<X8>)
{
  v26 = 0;
  v25 = 0u;
  re::DynamicString::setCapacity(&v24, 0);
  v5 = re::AssetPath::filePathToAsset(a2, &v24, 1, 0);
  v6 = *a2[9];
  re::FileAssetProvider::makeDescriptor(&v24, v11, &v12);
  *(a3 + 16) = v13;
  *(a3 + 48) = v15;
  v7 = v18;
  *(a3 + 72) = v17;
  *a3 = 1;
  *(a3 + 8) = v12;
  v12 = 0;
  v8 = v14;
  v14 = 0u;
  v13 = 0u;
  *(a3 + 32) = v8;
  v15 = 0u;
  ++v16;
  *(a3 + 64) = 1;
  *(a3 + 88) = v7;
  v17 = 0u;
  v18 = 0u;
  ++v19;
  *(a3 + 104) = 1;
  *(a3 + 112) = v20;
  v20 = 0u;
  v9 = v23;
  *(a3 + 136) = v22;
  *(a3 + 144) = v9;
  v22 = 0;
  v23 = 0;
  *(a3 + 128) = v21;
  v21 = 0;
  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))(v24, *(&v25 + 1));
    }
  }

  return result;
}

void *re::allocInfo_NetworkAssetService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_41, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_41))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191E88, "NetworkAssetService");
    __cxa_guard_release(&_MergedGlobals_41);
  }

  return &unk_1EE191E88;
}

void re::initInfo_NetworkAssetService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x999814F5B285CDA6;
  v6[1] = "NetworkAssetService";
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
  *(this + 8) = &re::initInfo_NetworkAssetService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t reality_v1_entry_load_data_seek_to_chunk_for_offset(unint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return -1;
  }

  if (*(a2 + 32))
  {
    result = -1;
    v4 = 1;
  }

  else
  {
    result = zip_entry_seek_to_chunk_for_offset(a1, *(a2 + 24));
    v4 = **(a2 + 24);
  }

  *a2 = v4;
  return result;
}

unint64_t reality_v1_entry_load_data_read(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    return 0;
  }

  if (!*(a3 + 32))
  {
    result = zip_entry_load_data_read(a1, a2, *(a3 + 24));
    *a3 = **(a3 + 24);
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v8 = *(a3 + 64);
  while (1)
  {
    if (v8)
    {
      v9 = *(a3 + 8);
    }

    else
    {
      v10 = *(a3 + 40);
      v11 = *(a3 + 48);
      *(a3 + 56) = v10;
      v8 = zip_entry_load_data_read(v10, v11, *(a3 + 24));
      *(a3 + 64) = v8;
      v9 = *(a3 + 8) + v8;
      *(a3 + 8) = v9;
      v12 = **(a3 + 24);
      *a3 = v12;
      if (v12)
      {
        return 0;
      }
    }

    v13 = v9 == *(a3 + 16);
    v18 = *(a3 + 56);
    v19 = v8;
    v20 = v3 + a1;
    v21 = a2 - v3;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    reality_compression_process_read_chunk(*(a3 + 32), &v18, v13, &v15);
    v14 = v15;
    if (!v15)
    {
      break;
    }

    v8 = v19;
    *(a3 + 56) = v18;
    *(a3 + 64) = v8;
    v3 += v16;
    if (v14 == 1 || v3 >= a2)
    {
      return v3;
    }
  }

  v3 = 0;
  *a3 = 1;
  return v3;
}

void reality_v1_entry_load_data_end(uint64_t a1)
{
  zip_entry_load_data_end(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    reality_compression_stream_end(v2);
    free(*(a1 + 40));
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB9490;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) == 11 && *(a2 + 72) == re::AssetHandle::introspectionSerialize)
  {
    v3 = *(*(result + 8) + 24);
    v5 = *a3;
    if (v3)
    {
      return (*(*v3 + 48))(v3, &v5);
    }

    else
    {
      v4 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(v4);
    }
  }

  return result;
}

uint64_t std::__function::__func<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0,std::allocator<re::internal::AssetDependencyWalker::findAssetHandles(re::IntrospectionBase const&,void const*,std::function<void ()(re::AssetHandle *)>)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t reality_archive_file_upgrade(const char *a1, const char *a2, int a3)
{
  v5 = zip_file_open(a1);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  *(v5 + 104) = 4096;
  v7 = zip_file_create(a2);
  v43 = v7;
  if (!v7)
  {
    goto LABEL_91;
  }

  v8 = v7;
  v7->_extra = 4096;
  v9 = v6[23];
  v10 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
  if (!v9)
  {
    v38 = v8;
    v39 = a2;
LABEL_84:
    zip_save_manifest(v38, v39, &v43, 1uLL);
    if (!zip_close(v6))
    {
      v6 = 0;
      goto LABEL_88;
    }

    if (v8)
    {
      v6 = zip_close(v8);
      free(v10);
    }

    else
    {
      free(v10);
      return 1;
    }

    return v6;
  }

  v11 = 0;
  if (a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v41 = v12;
  while (1)
  {
    v13 = *(v6[19] + 8 * ((v6[22] + v11) / 0x27uLL)) + 104 * ((v6[22] + v11) % 0x27uLL);
    v14 = (v13 + 8);
    v15 = *(v13 + 31);
    if (v15 < 0)
    {
      break;
    }

    if (!*(v13 + 31) || v14[v15 - 1] != 47)
    {
      goto LABEL_16;
    }

LABEL_14:
    zip_clone_entry(v43, v13);
    if (++v11 == v9)
    {
      v8 = v43;
      v38 = v43;
      v39 = a2;
      goto LABEL_84;
    }
  }

  v16 = *(v13 + 16);
  if (v16 && *(*v14 + v16 - 1) == 47)
  {
    goto LABEL_14;
  }

  v14 = *v14;
LABEL_16:
  v17 = strlen(v14);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v17;
  if (v17)
  {
    memmove(&__dst, v14, v17);
  }

  __dst.__r_.__value_.__s.__data_[v18] = 0;
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  p_dst = __dst.__r_.__value_.__r.__words[0];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  else
  {
    p_dst = &__dst;
  }

  if (!size)
  {
    if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_40;
    }

LABEL_44:
    if (__dst.__r_.__value_.__l.__size_ == 11)
    {
      v34 = __dst.__r_.__value_.__r.__words[0];
      if (*__dst.__r_.__value_.__l.__data_ == 0x6A2E726564616568 && *(__dst.__r_.__value_.__r.__words[0] + 3) == 0x6E6F736A2E726564)
      {
        v37 = 0;
        goto LABEL_75;
      }
    }

    else if (__dst.__r_.__value_.__l.__size_ == 13)
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_47;
    }

    v33 = v43;
    v32 = v41;
LABEL_67:
    v34 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_68;
  }

  v22 = (p_dst + size);
  v23 = p_dst;
  v24 = v22;
  do
  {
    if (v23->__r_.__value_.__s.__data_[0] == 46)
    {
      v25 = 1u;
      while (v25 != 4)
      {
        if ((v23 + v25) == v22)
        {
          goto LABEL_36;
        }

        v26 = v23->__r_.__value_.__s.__data_[v25];
        v27 = aArz[v25++];
        if (v26 != v27)
        {
          goto LABEL_28;
        }
      }

      v24 = v23;
    }

LABEL_28:
    v23 = (v23 + 1);
  }

  while (v23 != v22);
LABEL_36:
  if (v24 != v22 && v24 - p_dst != -1)
  {
    std::string::erase(&__dst, v24 - p_dst, 0xFFFFFFFFFFFFFFFFLL);
    v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  if (v20 < 0)
  {
    goto LABEL_44;
  }

LABEL_40:
  if (v20 == 11)
  {
    v35 = __dst.__r_.__value_.__r.__words[0] == 0x6A2E726564616568 && *(__dst.__r_.__value_.__r.__words + 3) == 0x6E6F736A2E726564;
    if (!v35)
    {
      goto LABEL_61;
    }

    v37 = 0;
    v34 = &__dst;
LABEL_75:
    v33 = v43;
    goto LABEL_76;
  }

  if (v20 != 13)
  {
LABEL_61:
    v34 = &__dst;
    v33 = v43;
    v32 = v41;
    goto LABEL_68;
  }

  v28 = &__dst;
LABEL_47:
  v29 = bswap64(*v28);
  v30 = 0x61737365744D6170;
  if (v29 == 0x61737365744D6170 && (v29 = bswap64(*(v28 + 5)), v30 = 0x4D61702E6A736F6ELL, v29 == 0x4D61702E6A736F6ELL))
  {
    v31 = 0;
  }

  else if (v29 < v30)
  {
    v31 = -1;
  }

  else
  {
    v31 = 1;
  }

  v35 = v31 == 0;
  v32 = v41;
  if (v35)
  {
    v32 = 0;
  }

  v33 = v43;
  if (v20 < 0)
  {
    goto LABEL_67;
  }

  v34 = &__dst;
LABEL_68:
  if ((v32 - 2) >= 2)
  {
    if (v32 == 1)
    {
      v37 = 8;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 99;
  }

LABEL_76:
  if (zip_create_entry(v33, v34, v37, 0))
  {
    reality_v1_entry_load_data_begin();
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v8 = v43;
LABEL_88:
  free(v10);
  if (v8)
  {
    zip_close(v8);
  }

  if (v6)
  {
LABEL_91:
    zip_close(v6);
    return 0;
  }

  return v6;
}