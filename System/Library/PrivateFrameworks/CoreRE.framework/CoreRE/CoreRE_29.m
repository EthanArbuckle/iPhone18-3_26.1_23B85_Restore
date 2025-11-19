void *re::DynamicArray<re::AssetLoadDescriptor>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v29, v9, v8);
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
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = v17[1];
                v19 = *(v17 - 1);
                *(v18 + 8) = *(v17 - 2);
                *(v17 - 2) = 0;
                v20 = *v17;
                v17[1] = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 1) = v22;
                *v17 = v21;
                *(v18 + 40) = v17[2];
                v17[2] = 0;
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29);
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
    v24 = *(v23 + 56 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 56 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 56 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 48) = a3;
  ++*(a1 + 28);
  return v23 + 56 * v5;
}

__n128 std::__function::__func<re::AssetManager::processRegisteringEntries(re::AssetManager::UpdateDeadline)::$_1,std::allocator<re::AssetManager::processRegisteringEntries(re::AssetManager::UpdateDeadline)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB8CE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::AssetManager::processRegisteringEntries(re::AssetManager::UpdateDeadline)::$_1,std::allocator<re::AssetManager::processRegisteringEntries(re::AssetManager::UpdateDeadline)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 40 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
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

void *re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<void ()(re::DynamicArray<unsigned long long>)>>::setCapacity(v5, a2);
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
              goto LABEL_28;
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
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          if (v8 != v11)
          {
            re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,void ()(re::DynamicArray<unsigned long long>)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

void re::details::release<re::ResourceRequest>(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 2, 0xFFFFFFFF);
  v3 = (add - 1);
  if (add - 1048578 <= 0xFFEFFFFE)
  {
    re::internal::refCountCheckFailHandler(0, a1, v3);
    if (v3)
    {
      return;
    }
  }

  else if (add != 1)
  {
    return;
  }

  v4 = *(*a1 + 16);

  v4(a1);
}

void re::DynamicArray<re::AssetLoadDescriptor>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = 144 * a2;
    v10 = a2;
    do
    {
      v11 = *(v3 + 4) + v9;
      re::DynamicString::deinit((v11 + 112));
      re::DynamicArray<unsigned long>::deinit(v11 + 72);
      re::DynamicArray<unsigned long>::deinit(v11 + 32);
      re::DynamicString::deinit(v11);
      ++v10;
      v9 += 144;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 144 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 56) = 0;
        *(v7 + 48) = 0;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 96) = 0;
        *(v7 + 104) = 0u;
        *(v7 + 120) = 0u;
        *(v7 + 136) = 0;
        a1 = re::DynamicString::setCapacity((v7 + 112), 0);
        v6 += 144;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

re::DynamicString *re::DynamicArray<re::AssetLoadDescriptor>::copy(re::DynamicString *this, re::DynamicString *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = this;
    v4 = *(this + 2);
    if (v4 == -1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      this = std::__copy_impl::operator()[abi:nn200100]<re::AssetLoadDescriptor const*,re::AssetLoadDescriptor const*,re::AssetLoadDescriptor*>(a2, (a2 + 144 * a3), *(this + 4));
    }

    else
    {
      re::DynamicArray<re::AssetLoadDescriptor>::growCapacity(this, a3);
      v7 = *(v3 + 2);
      v8 = (a2 + 144 * v7);
      this = std::__copy_impl::operator()[abi:nn200100]<re::AssetLoadDescriptor const*,re::AssetLoadDescriptor const*,re::AssetLoadDescriptor*>(a2, v8, *(v3 + 4));
      if (v7 != a3)
      {
        v9 = 0;
        v10 = *(v3 + 4) + 144 * *(v3 + 2);
        do
        {
          re::DynamicString::DynamicString((v10 + v9), (v8 + v9));
          re::DynamicArray<BOOL>::DynamicArray(v10 + v9 + 32, (v8 + v9 + 32));
          re::DynamicArray<BOOL>::DynamicArray(v10 + v9 + 72, (v8 + v9 + 72));
          this = re::DynamicString::DynamicString((v10 + v9 + 112), (v8 + v9 + 112));
          v9 += 144;
        }

        while (144 * a3 - 144 * v7 != v9);
      }

      *(v3 + 2) = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::AssetLoadDescriptor const*,re::AssetLoadDescriptor const*,re::AssetLoadDescriptor*>(re::DynamicString *result, re::DynamicString *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      re::DynamicString::operator=((a3 + v6), (v5 + v6));
      re::DynamicArray<BOOL>::operator=(a3 + v6 + 32, (v5 + v6 + 32));
      re::DynamicArray<BOOL>::operator=(a3 + v6 + 72, (v5 + v6 + 72));
      result = re::DynamicString::operator=((a3 + v6 + 112), (v5 + v6 + 112));
      v6 += 144;
    }

    while ((v5 + v6) != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::NetworkActionQueue::Action>::deinit(uint64_t a1)
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
        v5 = 168 * v4;
        do
        {
          v6 = *(v3 + 144);
          if (v6 != -1)
          {
            (off_1F5CB8AB0[v6])(&v7, v3);
          }

          *(v3 + 144) = -1;
          v3 += 168;
          v5 -= 168;
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

void *re::FixedArray<BOOL>::init<BOOL>(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *result = a2;
  result[1] = a3;
  if (a3)
  {
    v6 = result;
    result = (*(*a2 + 32))(a2, a3, 1);
    v6[2] = result;
    if (result)
    {
      v8 = result;
      v9 = a3 - 1;
      if (v9)
      {
        result = memset(result, *a4, v9);
        v8 += v9;
      }

      *v8 = *a4;
    }

    else
    {
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::AssetHandle const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v29, v9, v8);
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
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DynamicString,re::AssetHandle const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = v17[1];
                v19 = *(v17 - 1);
                *(v18 + 8) = *(v17 - 2);
                *(v17 - 2) = 0;
                v20 = *v17;
                v17[1] = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 1) = v22;
                *v17 = v21;
                *(v18 + 40) = v17[2];
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29);
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
    v24 = *(v23 + 56 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 56 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 56 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 48) = a3;
  ++*(a1 + 28);
  return v23 + 56 * v5;
}

uint64_t re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::findEntry<re::internal::AssetLoadingRoot>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_16;
  }

  v6 = result;
  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_16:
    v10 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v16 = a3 % *(result + 24);
  v17 = a3;
  v5 = 0x7FFFFFFF;
  v10 = 0x7FFFFFFF;
  do
  {
    v11 = v8;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    re::DynamicString::setCapacity(&v18, 0);
    v12 = *(v6 + 16) + 88 * v11;
    v14 = *(v12 + 8);
    v13 = v12 + 8;
    if (v14 == *a2)
    {
      v15 = re::DynamicString::operator==(v13 + 8, (a2 + 2));
      result = v18;
      if (v18 && (v19 & 1) != 0)
      {
        result = (*(*v18 + 40))();
      }

      if (v15)
      {
        v5 = v11;
        goto LABEL_17;
      }
    }

    else
    {
      result = v18;
      if (v18 && (v19 & 1) != 0)
      {
        result = (*(*v18 + 40))();
      }
    }

    v8 = *(*(v6 + 16) + 88 * v11) & 0x7FFFFFFF;
    v10 = v11;
  }

  while (v8 != 0x7FFFFFFF);
  v10 = v11;
LABEL_17:
  LODWORD(v7) = v16;
  a3 = v17;
LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v5;
  *(a4 + 16) = v10;
  return result;
}

unint64_t re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::computeHash<re::internal::AssetLoadingRoot>(uint64_t a1)
{
  v7 = 0;
  v4[4] = 0;
  v6 = 0u;
  re::DynamicString::setCapacity(&v5, 0);
  re::DynamicString::DynamicString(v4, (a1 + 8));
  v2 = re::Hash<re::DynamicString>::operator()(&v8, v4);
  if (v4[0])
  {
    if (v4[1])
    {
      (*(*v4[0] + 40))();
    }

    memset(v4, 0, 32);
  }

  if (v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  return v2;
}

void *std::__function::__func<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2,std::allocator<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CB8D60;
  v2 = (a1 + 4);
  re::DynamicArray<re::AssetLoadDescriptor>::deinit((a1 + 7));
  re::AssetHandle::~AssetHandle(v2);
  re::AssetHandle::~AssetHandle((a1 + 1));
  return a1;
}

void std::__function::__func<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2,std::allocator<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CB8D60;
  v2 = (a1 + 4);
  re::DynamicArray<re::AssetLoadDescriptor>::deinit((a1 + 7));
  re::AssetHandle::~AssetHandle(v2);
  re::AssetHandle::~AssetHandle((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2,std::allocator<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2>,void ()(BOOL)>::__clone(uint64_t *a1, void *a2)
{
  *a2 = &unk_1F5CB8D60;
  re::AssetHandle::AssetHandle((a2 + 1), (a1 + 1));
  re::AssetHandle::AssetHandle((a2 + 4), (a1 + 4));
  result = re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray((a2 + 7), a1 + 7);
  a2[12] = a1[12];
  return result;
}

void std::__function::__func<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2,std::allocator<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2>,void ()(BOOL)>::destroy(uint64_t a1)
{
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(a1 + 56);
  re::AssetHandle::~AssetHandle((a1 + 32));

  re::AssetHandle::~AssetHandle((a1 + 8));
}

void std::__function::__func<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2,std::allocator<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2>,void ()(BOOL)>::destroy_deallocate(uint64_t a1)
{
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(a1 + 56);
  re::AssetHandle::~AssetHandle((a1 + 32));
  re::AssetHandle::~AssetHandle((a1 + 8));

  operator delete(a1);
}

void std::__function::__func<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2,std::allocator<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2>,void ()(BOOL)>::operator()(void *a1, char *a2)
{
  v3 = *a2;
  v4 = a1[12];
  v5 = a1[2];
  os_unfair_lock_lock(v5 + 128);
  if ((v3 & 1) != 0 || (v6 = a1[5]) != 0 && (v7 = atomic_load((v6 + 896)), v7 == 2))
  {
    re::AssetManager::reuseExistingOrLoadNewAsset_locked(v4, a1[2], a1 + 7);
  }

  else
  {
    re::AssetManager::loadAssetFromDescriptorsOnBackgroundTask_entryStateLocked(v4, a1[2], a1 + 7);
  }

  os_unfair_lock_unlock(v5 + 128);
}

uint64_t std::__function::__func<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2,std::allocator<re::AssetManager::tryReuseExistingAsset_locked(re::internal::AssetEntry &,re::DynamicArray<re::AssetLoadDescriptor> const&,BOOL)::$_2>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::SharedPtr<re::ResourceRequest>::reset(atomic_uint **a1, unsigned int *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    if (a2)
    {
      v5 = a2 + 2;
      if (!atomic_load(a2 + 2))
      {
        v8 = atomic_load(v5);
        re::internal::refCountCheckFailHandler(1, a2, v8);
      }

      add_explicit = atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
      if (add_explicit - 0x100000 <= 0xFFEFFFFE)
      {
        re::internal::refCountCheckFailHandler(1, a2, (add_explicit + 1));
      }

      v3 = *a1;
    }

    if (v3)
    {
      re::details::release<re::ResourceRequest>(v3);
    }

    *a1 = a2;
  }
}

uint64_t std::__function::__value_func<void ()(re::AssetLoader *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::AssetLoader *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::AssetLoader *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E1E95AC0);
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<re::AssetManager::registerCustomAssetType(re::CustomAssetRegistrationParameters const&)::$_0,std::allocator<re::AssetManager::registerCustomAssetType(re::CustomAssetRegistrationParameters const&)::$_0>,void ()(re::AssetLoader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::destroyPersistent<re::AssetLoader>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::AssetCompiler *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *std::unique_ptr<re::AssetCompiler,std::function<void ()(re::AssetCompiler*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::AssetCompiler *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::AssetCompiler *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(re::AssetCompiler *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
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
                v18 = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
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

uint64_t re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::addInternal<re::internal::AssetLoadingRoot const&,re::DynamicString>(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  re::DynamicString::DynamicString((v7 + 16), (a3 + 2));
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  v7 += 48;
  *(v7 + 24) = a4[3];
  v8 = a4[1];
  *v7 = *a4;
  *a4 = 0;
  v9 = a4[2];
  a4[3] = 0;
  v11 = *(v7 + 8);
  v10 = *(v7 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  a4[1] = v11;
  a4[2] = v10;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 40);
            do
            {
              if ((*(v17 - 5) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::allocEntry(a1, v17[5] % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = 0u;
                *(v18 + 32) = 0u;
                *(v18 + 40) = *v17;
                v19 = *(v17 - 2);
                *(v18 + 16) = *(v17 - 3);
                *(v17 - 3) = 0;
                v20 = *(v17 - 1);
                *v17 = 0;
                v22 = *(v18 + 24);
                v21 = *(v18 + 32);
                *(v18 + 24) = v19;
                *(v18 + 32) = v20;
                *(v17 - 2) = v22;
                *(v17 - 1) = v21;
                *(v18 + 48) = 0u;
                *(v18 + 64) = 0u;
                *(v18 + 72) = v17[4];
                v23 = v17[2];
                *(v18 + 48) = v17[1];
                v17[1] = 0;
                v24 = v17[3];
                v17[4] = 0;
                v26 = *(v18 + 56);
                v25 = *(v18 + 64);
                *(v18 + 56) = v23;
                *(v18 + 64) = v24;
                v17[2] = v26;
                v17[3] = v25;
              }

              v17 += 11;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::deinit(v33);
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

BOOL re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 88 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 88 * v5) = *(v6 + 88 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::internal::AssetLoadingRoot,re::DynamicString,re::internal::AssetLoadingRoot,re::internal::AssetLoadingRoot,true,false>::EntryBase::free((v6 + 88 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 88 * v9) = *(*(a1 + 16) + 88 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::ProfilerManager::getProcessorId<re::ProfilerFrameStatisticsProcessor>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::ProfilerManager::getProcessorId<re::ProfilerFrameStatisticsProcessor>(void)::processorId = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
      v0 = &unk_1EE187000;
    }
  }

  return v0[32];
}

uint64_t re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v40, 0, 36);
          *&v40[36] = 0x7FFFFFFFLL;
          re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::init(v40, v9, v8);
          v11 = *v40;
          *v40 = *a1;
          *a1 = v11;
          v12 = *&v40[16];
          v13 = *(a1 + 16);
          *&v40[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v40[24];
          *&v40[24] = *(a1 + 24);
          v14 = *&v40[32];
          *(a1 + 24) = v15;
          ++*&v40[40];
          if (v14)
          {
            v16 = 0;
            v17 = 208 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::allocEntry(a1, *(v13 + v16 + 200) % *(a1 + 24));
                *(v19 + 24) = 0u;
                *(v19 + 8) = 0u;
                *(v19 + 32) = *(v13 + v16 + 32);
                v20 = *(v13 + v16 + 16);
                *(v19 + 8) = *(v13 + v16 + 8);
                *(v18 + 8) = 0;
                v21 = *(v13 + v16 + 24);
                *(v18 + 32) = 0;
                v23 = *(v19 + 16);
                v22 = *(v19 + 24);
                *(v19 + 16) = v20;
                *(v19 + 24) = v21;
                *(v18 + 16) = v23;
                *(v18 + 24) = v22;
                *(v19 + 72) = 0;
                *(v19 + 64) = 0;
                *(v19 + 48) = 0;
                *(v19 + 56) = 0;
                *(v19 + 40) = 0;
                v24 = *(v13 + v16 + 48);
                *(v19 + 40) = *(v13 + v16 + 40);
                *(v19 + 48) = v24;
                *(v18 + 40) = 0;
                *(v18 + 48) = 0;
                v25 = *(v19 + 56);
                *(v19 + 56) = *(v13 + v16 + 56);
                *(v18 + 56) = v25;
                v26 = *(v19 + 72);
                *(v19 + 72) = *(v13 + v16 + 72);
                *(v18 + 72) = v26;
                ++*(v18 + 64);
                ++*(v19 + 64);
                *(v19 + 112) = 0;
                *(v19 + 88) = 0;
                *(v19 + 96) = 0;
                *(v19 + 80) = 0;
                *(v19 + 104) = 0;
                v27 = *(v13 + v16 + 88);
                *(v19 + 80) = *(v13 + v16 + 80);
                *(v19 + 88) = v27;
                *(v18 + 80) = 0;
                *(v18 + 88) = 0;
                v28 = *(v19 + 96);
                *(v19 + 96) = *(v13 + v16 + 96);
                *(v18 + 96) = v28;
                v29 = *(v19 + 112);
                *(v19 + 112) = *(v13 + v16 + 112);
                *(v18 + 112) = v29;
                ++*(v18 + 104);
                ++*(v19 + 104);
                *(v19 + 120) = 0u;
                *(v19 + 136) = 0u;
                *(v19 + 144) = *(v13 + v16 + 144);
                v30 = *(v13 + v16 + 128);
                *(v19 + 120) = *(v13 + v16 + 120);
                *(v18 + 120) = 0;
                v31 = *(v13 + v16 + 136);
                *(v18 + 144) = 0;
                v33 = *(v19 + 128);
                v32 = *(v19 + 136);
                *(v19 + 128) = v30;
                *(v19 + 136) = v31;
                *(v18 + 128) = v33;
                *(v18 + 136) = v32;
                *(v19 + 152) = 0u;
                v19 += 152;
                *(v19 + 32) = 0;
                *(v19 + 16) = 0u;
                *(v19 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v19, (v13 + v16 + 152));
              }

              v16 += 208;
            }

            while (v17 != v16);
          }

          re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(v40);
        }
      }

      else
      {
        if (v8)
        {
          v36 = 2 * v7;
        }

        else
        {
          v36 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v34 = *(a1 + 16);
    v35 = *(v34 + 208 * v5);
  }

  else
  {
    v34 = *(a1 + 16);
    v35 = *(v34 + 208 * v5);
    *(a1 + 36) = v35 & 0x7FFFFFFF;
  }

  v37 = v34 + 208 * v5;
  *v37 = v35 | 0x80000000;
  v38 = *(a1 + 8);
  *v37 = *(v38 + 4 * a2) | 0x80000000;
  *(v38 + 4 * a2) = v5;
  *(v37 + 200) = a3;
  ++*(a1 + 28);
  return v34 + 208 * v5;
}

void re::HashTable<re::AssetLoadDescriptor,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 208 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
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
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
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

          re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
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

void *re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::addInternal<re::AssetLoadDescriptor const&,unsigned long long const&>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 1), a3);
  re::DynamicArray<BOOL>::DynamicArray((v7 + 5), a3 + 4);
  re::DynamicArray<BOOL>::DynamicArray((v7 + 10), a3 + 9);
  re::DynamicString::DynamicString((v7 + 15), (a3 + 14));
  v7[19] = *a4;
  ++*(a1 + 40);
  return v7 + 19;
}

uint64_t re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v37, 0, 36);
          *&v37[36] = 0x7FFFFFFFLL;
          re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::init(v37, v9, v8);
          v11 = *v37;
          *v37 = *a1;
          *a1 = v11;
          v12 = *&v37[16];
          v13 = *(a1 + 16);
          *&v37[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v37[24];
          *&v37[24] = *(a1 + 24);
          v14 = *&v37[32];
          *(a1 + 24) = v15;
          ++*&v37[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 80;
            do
            {
              if ((*(v17 - 80) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::allocEntry(a1, *(v17 + 80) % *(a1 + 24));
                *(v18 + 24) = 0u;
                *(v18 + 8) = 0u;
                *(v18 + 32) = *(v17 - 48);
                v19 = *(v17 - 64);
                *(v18 + 8) = *(v17 - 72);
                *(v17 - 72) = 0;
                v20 = *(v17 - 56);
                *(v17 - 48) = 0;
                v22 = *(v18 + 16);
                v21 = *(v18 + 24);
                *(v18 + 16) = v19;
                *(v18 + 24) = v20;
                *(v17 - 64) = v22;
                *(v17 - 56) = v21;
                *(v18 + 72) = 0;
                *(v18 + 64) = 0;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                *(v18 + 40) = 0;
                v23 = *(v17 - 32);
                *(v18 + 40) = *(v17 - 40);
                *(v18 + 48) = v23;
                *(v17 - 40) = 0;
                *(v17 - 32) = 0;
                v24 = *(v18 + 56);
                *(v18 + 56) = *(v17 - 24);
                *(v17 - 24) = v24;
                v25 = *(v18 + 72);
                *(v18 + 72) = *(v17 - 8);
                *(v17 - 8) = v25;
                ++*(v17 - 16);
                ++*(v18 + 64);
                *(v18 + 112) = 0;
                *(v18 + 88) = 0;
                *(v18 + 96) = 0;
                *(v18 + 80) = 0;
                *(v18 + 104) = 0;
                v26 = *(v17 + 8);
                *(v18 + 80) = *v17;
                *(v18 + 88) = v26;
                *v17 = 0;
                *(v17 + 8) = 0;
                v27 = *(v18 + 96);
                *(v18 + 96) = *(v17 + 16);
                *(v17 + 16) = v27;
                v28 = *(v18 + 112);
                *(v18 + 112) = *(v17 + 32);
                *(v17 + 32) = v28;
                ++*(v17 + 24);
                ++*(v18 + 104);
                *(v18 + 120) = 0u;
                *(v18 + 136) = 0u;
                *(v18 + 120) = *(v17 + 40);
                *(v17 + 40) = 0;
                v29 = *(v18 + 136);
                *(v18 + 136) = *(v17 + 56);
                *(v17 + 56) = v29;
                *(v18 + 144) = *(v17 + 64);
                *(v17 + 64) = 0;
                v30 = *(v18 + 128);
                *(v18 + 128) = *(v17 + 48);
                *(v17 + 48) = v30;
              }

              v17 += 168;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::deinit(v37);
        }
      }

      else
      {
        if (v8)
        {
          v33 = 2 * v7;
        }

        else
        {
          v33 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v31 = *(a1 + 16);
    v32 = *(v31 + 168 * v5);
  }

  else
  {
    v31 = *(a1 + 16);
    v32 = *(v31 + 168 * v5);
    *(a1 + 36) = v32 & 0x7FFFFFFF;
  }

  v34 = v31 + 168 * v5;
  *v34 = v32 | 0x80000000;
  v35 = *(a1 + 8);
  *v34 = *(v35 + 4 * a2) | 0x80000000;
  *(v35 + 4 * a2) = v5;
  *(v34 + 160) = a3;
  ++*(a1 + 28);
  return v31 + 168 * v5;
}

void re::HashTable<re::AssetLoadDescriptor,unsigned long long,re::Hash<re::AssetLoadDescriptor>,re::EqualTo<re::AssetLoadDescriptor>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 168 * v10, 16);
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

void re::NetworkSendBlockingAssetLoadRequestManager::registerECSSendBlockingAssetLoadRequest(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) != 1)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 128));
  v5 = *a2;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = *(a1 + 160);
  if (!v8)
  {
    LODWORD(v9) = 0;
    goto LABEL_10;
  }

  v9 = v7 % v8;
  v10 = *(*(a1 + 144) + 4 * (v7 % v8));
  if (v10 == 0x7FFFFFFF)
  {
LABEL_10:
    re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::addAsMove(a1 + 136, v9, v7, a2);
    ++*(a1 + 176);
    goto LABEL_11;
  }

  v11 = *(a1 + 152);
  while (*(v11 + 24 * v10 + 16) != v5)
  {
    LODWORD(v10) = *(v11 + 24 * v10 + 8) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  os_unfair_lock_unlock((a1 + 128));
}

void re::NetworkSendBlockingAssetLoadRequestManager::clearECSSendBlockingAssetLoadRequests(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 32);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&this[34]);

  os_unfair_lock_unlock(this + 32);
}

double re::NetworkSendBlockingAssetLoadRequestManager::flushAndWaitForECSSendBlockingAssetLoadRequests(re::NetworkSendBlockingAssetLoadRequestManager *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0;
  os_unfair_lock_lock(this + 32);
  v35 = 0;
  memset(buf, 0, sizeof(buf));
  v29 = 0u;
  v30 = 0;
  v34 = xmmword_1E3058120;
  v31 = xmmword_1E3058120;
  re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::operator=(&v29, this + 17);
  re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::operator=(this + 136, buf);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(buf);
  os_unfair_lock_unlock(this + 32);
  v2 = DWORD2(v31);
  if (DWORD2(v31))
  {
    v3 = 0;
    v4 = (v30 + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (DWORD2(v31) == ++v3)
      {
        LODWORD(v3) = DWORD2(v31);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != DWORD2(v31))
  {
    v6 = v30;
    do
    {
      v7 = v6 + 24 * v3;
      v9 = *(v7 + 16);
      v8 = v7 + 16;
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v28, 2074, v9);
      v10 = *(*v8 + 24);
      os_unfair_lock_lock((v10 + 256));
      v11 = *(v10 + 280);
      os_unfair_lock_unlock((v10 + 256));
      if (v11)
      {
        v13 = *re::assetsLogObjects(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*v8 + 24);
          v15 = v14[11];
          v16 = v14[13];
          v17 = v14[14];
          v18 = v14 + 105;
          if (v16)
          {
            v18 = v17;
          }

          *buf = 134218498;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          *&buf[22] = 2048;
          *&v34 = v11;
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Waiting for ECS send blocking AssetLoadRequest with first assetId %llu (%s) to complete loading %zu remaining assets", buf, 0x20u);
        }

        re::AssetLoadRequest::Data::waitForCompletion(*(*v8 + 24), 0);
        v20 = *re::assetsLogObjects(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*v8 + 24);
          v22 = v21[11];
          v23 = v21[13];
          v24 = v21[14];
          v25 = v21 + 105;
          if (v23)
          {
            v25 = v24;
          }

          *buf = 134218242;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = v25;
          _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Completed waiting for ECS send blocking AssetLoadRequest with first assetId %llu (%s).", buf, 0x16u);
        }
      }

      else
      {
        re::AssetLoadRequest::Data::waitForCompletion(*(*v8 + 24), 0);
      }

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v28);
      v6 = v30;
      if (DWORD2(v31) <= (v3 + 1))
      {
        v26 = v3 + 1;
      }

      else
      {
        v26 = DWORD2(v31);
      }

      while (v26 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(v30 + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_26;
        }
      }

      LODWORD(v3) = v26;
LABEL_26:
      ;
    }

    while (v3 != v2);
  }

  return re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v29);
}

void re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 24 * v7 + 8);
    *(a1 + 36) = v10 & 0x7FFFFFFF;
  }

  *(v9 + 24 * v7 + 8) = v10 | 0x80000000;
  v11 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(v11 + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *a4 = 0;
  *(v11 + 4 * a2) = v7;
  ++*(a1 + 28);
}

void re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v14, v4, a2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = *(a1 + 16);
      *&v14[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 24);
      v8 = *&v14[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = v7 + 16;
        do
        {
          if ((*(v12 - 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::addAsMove(a1, *(v12 - 16) % *(a1 + 24), *(v12 - 16), v12);
          }

          ++v11;
          v12 += 24;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *a1 = v5;
      *a2 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = a2[1];
      a2[1] = v7;
      v8 = *(a1 + 16);
      *(a1 + 16) = a2[2];
      a2[2] = v8;
      LODWORD(v8) = *(a1 + 24);
      *(a1 + 24) = *(a2 + 6);
      *(a2 + 6) = v8;
      LODWORD(v8) = *(a1 + 28);
      *(a1 + 28) = *(a2 + 7);
      *(a2 + 7) = v8;
      LODWORD(v8) = *(a1 + 32);
      *(a1 + 32) = *(a2 + 8);
      *(a2 + 8) = v8;
      LODWORD(v8) = *(a1 + 36);
      *(a1 + 36) = *(a2 + 9);
      *(a2 + 9) = v8;
    }

    else
    {
      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(a1);
      if (v5)
      {
        v9 = *(a2 + 7);
        if (*(a1 + 24) < v9)
        {
          re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::setCapacity(a1, v9);
        }

        v10 = *(a2 + 8);
        if (v10)
        {
          v11 = 0;
          for (i = 0; i < v10; ++i)
          {
            v13 = (a2[2] + v11);
            if ((v13[1] & 0x80000000) != 0)
            {
              v14 = *v13;
              v15 = *(a1 + 24);
              v16 = *v13 % v15;
              v17 = *(a1 + 36);
              if (v17 == 0x7FFFFFFF)
              {
                v17 = *(a1 + 32);
                v18 = v17;
                if (v17 == v15)
                {
                  re::HashSetBase<re::SharedPtr<re::AssetLoadRequest>,re::SharedPtr<re::AssetLoadRequest>,re::internal::ValueAsKey<re::SharedPtr<re::AssetLoadRequest>>,re::Hash<re::SharedPtr<re::AssetLoadRequest>>,re::EqualTo<re::SharedPtr<re::AssetLoadRequest>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
                  v16 = v14 % *(a1 + 24);
                  v18 = *(a1 + 32);
                }

                *(a1 + 32) = v18 + 1;
                v19 = *(a1 + 16);
                v20 = *(v19 + 24 * v17 + 8);
              }

              else
              {
                v19 = *(a1 + 16);
                v20 = *(v19 + 24 * v17 + 8);
                *(a1 + 36) = v20 & 0x7FFFFFFF;
              }

              *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
              v21 = *(a1 + 8);
              *(*(a1 + 16) + 24 * v17 + 8) = *(*(a1 + 16) + 24 * v17 + 8) & 0x80000000 | *(v21 + 4 * v16);
              *(*(a1 + 16) + 24 * v17) = v14;
              v22 = v13[2];
              *(*(a1 + 16) + 24 * v17 + 16) = v22;
              if (v22)
              {
                v23 = (v22 + 8);
                v21 = *(a1 + 8);
              }

              *(v21 + 4 * v16) = v17;
              ++*(a1 + 28);
              v10 = *(a2 + 8);
            }

            v11 += 24;
          }
        }

        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::internal::ResourceRequestQueue::enqueue(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 24));
  re::DynamicArray<void({block_pointer} {__strong})(void)>::add((a1 + 32), &v3);
  os_unfair_lock_unlock((a1 + 24));
  atomic_store(1u, (a1 + 72));
}

void *re::DynamicArray<void({block_pointer} {__strong})(void)>::add(_anonymous_namespace_ *this, const void **a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<void({block_pointer} {__strong})(void)>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4);
  result = _Block_copy(*a2);
  *(v5 + 8 * v4) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::internal::ResourceRequestQueue::flushAsync(uint64_t a1, dispatch_queue_t *a2)
{
  if (a1)
  {
    v3 = (a1 + 8);
  }

  else
  {
    v3 = 0;
  }

  objc_initWeak(&location, v3);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = ___ZN2re8internal20ResourceRequestQueue10flushAsyncERKNS_8dispatch5QueueE_block_invoke;
  v4[3] = &__block_descriptor_40_a8_32c58_ZTSN2re10ArcWeakPtrINS_8internal20ResourceRequestQueueEEE_e5_v8__0l;
  v5 = 0;
  objc_copyWeak(&v5, &location);
  dispatch_async(*a2, v4);
  objc_destroyWeak(&v5);
  v5 = 0;
  objc_destroyWeak(&location);
}

void ___ZN2re8internal20ResourceRequestQueue10flushAsyncERKNS_8dispatch5QueueE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    re::internal::ResourceRequestQueue::flushSync(WeakRetained - 8, 0xFFFFFFFFFFFFFFFFLL);
  }
}

dispatch_time_t re::internal::ResourceRequestQueue::flushSync(dispatch_time_t this, dispatch_time_t a2)
{
  v2 = atomic_load((this + 72));
  if (v2)
  {
    v4 = this;
    if (a2 == -1 || (this = dispatch_time(0, 0), this < a2))
    {
      os_unfair_lock_lock((v4 + 24));
      v5 = *(v4 + 40);
      v6 = *(v4 + 48);
      v11[0] = *(v4 + 32);
      v11[1] = v5;
      v11[2] = v6;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      v7 = *(v4 + 64);
      v13 = v7;
      *(v4 + 64) = 0;
      ++*(v4 + 56);
      v12 = 1;
      atomic_store(0, (v4 + 72));
      os_unfair_lock_unlock((v4 + 24));
      if (v6)
      {
        v8 = 0;
        while (a2 == -1 || dispatch_time(0, 0) < a2)
        {
          v9 = *v7++;
          v9[2]();
          if (v6 == ++v8)
          {
            return re::DynamicArray<re::ObjCObject>::deinit(v11);
          }
        }

        os_unfair_lock_lock((v4 + 24));
        v10 = v6 - v8;
        if (v6 > v8)
        {
          do
          {
            re::DynamicArray<void({block_pointer} {__strong})(void)>::add((v4 + 32), v7++);
            --v10;
          }

          while (v10);
        }

        atomic_store(1u, (v4 + 72));
        os_unfair_lock_unlock((v4 + 24));
      }

      return re::DynamicArray<re::ObjCObject>::deinit(v11);
    }
  }

  return this;
}

void *re::DynamicArray<void({block_pointer} {__strong})(void)>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<void({block_pointer} {__strong})(void)>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<void({block_pointer} {__strong})(void)>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<void({block_pointer} {__strong})(void)>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<void({block_pointer} {__strong})(void)>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
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
        v10 = 8 * v9;
        v11 = v7;
        do
        {
          *v11++ = _Block_copy(*v8);
          v12 = *v8++;

          v10 -= 8;
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

BOOL ends_with(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a1[1];
  if (v3 + a3 > v4)
  {
    return 0;
  }

  v6 = (*a1 + ~a3 + v4);
  v7 = *a2 - 1;
  do
  {
    v5 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v8 = *v6--;
    v9 = __tolower(*(v7 + v3--));
  }

  while (v9 == __tolower(v8));
  return v5;
}

void file_seek(FILE *a1, uint64_t a2, int a3)
{
  fseek(a1, a2, a3);

  JUMPOUT(0x1E6906FC0);
}

uint64_t file_close(FILE *a1)
{
  fflush(a1);

  return fclose(a1);
}

BOOL file_swap(FILE *a1, FILE *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = fileno(a1);
  if (fcntl(v3, 50, v7))
  {
    return 0;
  }

  v4 = fileno(a2);
  return !fcntl(v4, 50, v6) && renamex_np(v7, v6, 2u) == 0;
}

uint64_t _collect_paths(const char *a1, const char *a2, void **a3)
{
  if (stat(a2, &v33))
  {
    return 0;
  }

  v8 = v33.st_mode & 0xF000;
  if (v8 != 0x8000 && v8 != 0x4000)
  {
    return 0;
  }

  memset(&__str, 0, sizeof(__str));
  v9 = strlen(a2);
  std::string::reserve(&__str, v9 + 1);
  MEMORY[0x1E6905F60](&__str, a2);
  if (v8 != 0x8000)
  {
    std::string::append(&__str, 1uLL, 47);
    v14 = strlen(a1);
    std::string::basic_string(&v31, &__str, v14 + 1, 0xFFFFFFFFFFFFFFFFLL, &v28);
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v31.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_37;
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v31.__r_.__value_.__l.__size_ != 1)
      {
        goto LABEL_33;
      }

      v16 = v31.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_33;
      }

      v16 = &v31;
    }

    if (v16->__r_.__value_.__s.__data_[0] == 47)
    {
LABEL_37:
      v17 = opendir(a2);
      if (v17)
      {
        v18 = v17;
        v19 = readdir(v17);
        if (v19)
        {
          v20 = v19;
          while (1)
          {
            v22 = v20->d_name[0];
            d_name = v20->d_name;
            if (v22 != 46)
            {
              memset(&v28, 0, sizeof(v28));
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v23 = __str.__r_.__value_.__l.__size_;
              }

              v24 = strlen(d_name);
              std::string::reserve(&v28, v23 + v24);
              std::string::operator=(&v28, &__str);
              std::string::append(&v28, d_name);
              if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = &v28;
              }

              else
              {
                v25 = v28.__r_.__value_.__r.__words[0];
              }

              v26 = _collect_paths(a1, v25, a3);
              if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v28.__r_.__value_.__l.__data_);
              }

              if (!v26)
              {
                break;
              }
            }

            v20 = readdir(v18);
            if (!v20)
            {
              goto LABEL_51;
            }
          }

          v6 = 0;
        }

        else
        {
LABEL_51:
          v6 = 1;
        }

        closedir(v18);
      }

      else
      {
        v6 = 0;
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      goto LABEL_57;
    }

LABEL_33:
    v27 = 0;
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_bEEC2B8nn200100IJLm0ELm1ELm2EEJS8_S8_bEJEJEJRS8_SB_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(&v28, &__str, &v31, &v27);
    std::vector<std::tuple<std::string,std::string,BOOL>>::push_back[abi:nn200100](a3, &v28);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_37;
  }

  v10 = strlen(a1);
  std::string::basic_string(&v31, &__str, v10 + 1, 0xFFFFFFFFFFFFFFFFLL, &v28);
  v11 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  v12 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v31.__r_.__value_.__l.__size_;
  }

  if (!v11)
  {
    goto LABEL_27;
  }

  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) == 1)
    {
      v13 = &v31;
      goto LABEL_21;
    }

LABEL_22:
    v27 = 1;
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_bEEC2B8nn200100IJLm0ELm1ELm2EEJS8_S8_bEJEJEJRS8_SB_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(&v28, &__str, &v31, &v27);
    std::vector<std::tuple<std::string,std::string,BOOL>>::push_back[abi:nn200100](a3, &v28);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    v12 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    goto LABEL_27;
  }

  if (v31.__r_.__value_.__l.__size_ != 1)
  {
    goto LABEL_22;
  }

  v13 = v31.__r_.__value_.__r.__words[0];
LABEL_21:
  if (v13->__r_.__value_.__s.__data_[0] != 47)
  {
    goto LABEL_22;
  }

LABEL_27:
  if (v12 < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v6 = 1;
LABEL_57:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v6;
}

void std::vector<std::tuple<std::string,std::string,BOOL>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x492492492492492)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 56 * v8;
    *(v12 + 16) = *(a2 + 2);
    *v12 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(v12 + 48) = *(a2 + 48);
    v7 = 56 * v8 + 56;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 56 * v8 - v15;
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
    v3[48] = *(a2 + 48);
    v7 = (v3 + 56);
  }

  a1[1] = v7;
}

BOOL _collect_paths(char *a1, void **a2)
{
  if (stat(a1, &v16))
  {
    return 0;
  }

  v5 = v16.st_mode & 0xF000;
  v6 = v5 == 0x8000;
  if (v5 == 0x8000)
  {
    std::string::basic_string[abi:nn200100]<0>(&v15, a1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v15;
    }

    else
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    v8 = basename(v7);
    MEMORY[0x1E6905F60](&v15, v8);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = v15;
    }

    v10 = v6;
    std::string::basic_string[abi:nn200100]<0>(v11, a1);
    __p = v9;
    memset(&v9, 0, sizeof(v9));
    v14 = v10;
    std::vector<std::tuple<std::string,std::string,BOOL>>::push_back[abi:nn200100](a2, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  return v5 == 0x4000 && (_collect_paths(a1, a1, a2) & 1) != 0;
}

std::string *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_bEEC2B8nn200100IJLm0ELm1ELm2EEJS8_S8_bEJEJEJRS8_SB_bEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(std::string *this, __int128 *a2, __int128 *a3, std::string::value_type *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  this[2].__r_.__value_.__s.__data_[0] = *a4;
  return this;
}

void std::allocator<std::tuple<std::string,std::string,BOOL>>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void *re::allocInfo_ExternalResolverLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_35, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_35))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191B58, "ExternalResolverLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_35);
  }

  return &unk_1EE191B58;
}

void re::initInfo_ExternalResolverLoadDescriptorParameters(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x924A8B63D20795E0;
  v11[1] = "ExternalResolverLoadDescriptorParameters";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE191B38, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191B38);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "assetKey";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE191B30 = v9;
      __cxa_guard_release(&qword_1EE191B38);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE191B30;
  *(this + 9) = re::internal::defaultConstruct<re::ExternalResolverLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ExternalResolverLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::ExternalResolverLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::ExternalResolverLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::internal::defaultConstruct<re::ExternalResolverLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::ExternalResolverLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

uint64_t re::ExternalResolverAssetProvider::ExternalResolverAssetProvider(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __int128 *a5, char a6)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB8FB8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  re::DynamicString::setCapacity((a1 + 24), 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v13 = a1 + 72;
  *(a1 + 88) = 0;
  if ((atomic_load_explicit(&qword_1EE191B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191B50))
  {
    qword_1EE191B48 = re::internal::getOrCreateInfo("ExternalResolverLoadDescriptorParameters", re::allocInfo_ExternalResolverLoadDescriptorParameters, re::initInfo_ExternalResolverLoadDescriptorParameters, &unk_1EE191B40, 0);
    v13 = a1 + 72;
    __cxa_guard_release(&qword_1EE191B50);
  }

  re::ExternalResolverAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE191B48;
  v16[0] = a2;
  v16[1] = strlen(a2);
  re::DynamicString::operator=((a1 + 24), v16);
  *(a1 + 56) = a4;
  *(a1 + 64) = a3;
  v14 = *a5;
  *(v13 + 16) = *(a5 + 2);
  *v13 = v14;
  *(a1 + 96) = a6;
  return a1;
}

void re::ExternalResolverAssetProvider::~ExternalResolverAssetProvider(re::ExternalResolverAssetProvider *this)
{
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::ExternalResolverAssetProvider::load@<X0>(re::ExternalResolverAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v9 = re::DynamicString::operator!=(a2, this + 24);
  if (v9)
  {
    if (*(a2 + 8))
    {
      v10 = *(a2 + 2);
    }

    else
    {
      v10 = a2 + 9;
    }

    if (*(this + 32))
    {
      v14 = *(this + 5);
    }

    else
    {
      v14 = this + 33;
    }

    result = re::DynamicString::format("Scheme %s does not match scheme %s.", &v30, v10, v14);
    v19 = v30;
    v20 = v31;
    v21 = v32;
    *a4 = 0;
    *(a4 + 8) = v19;
    *(a4 + 24) = v20;
    *(a4 + 32) = v21;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    re::DynamicString::setCapacity(&v33, 0);
    v11 = re::AssetLoadDescriptor::getIntrospectableData<re::ExternalResolverLoadDescriptorParameters>(a2, &v33);
    if (v11)
    {
      re::AssetProviderRegistry::getPathFromResolver(*(this + 11), (this + 24), &v33, &v30);
      if (v30)
      {
        if (*(a2 + 120))
        {
          v13 = *(a2 + 16);
        }

        else
        {
          v13 = a2 + 121;
        }

        re::loadCompiledOrSourceFile(&v30 + 8, v13, this + 9, a3, a4);
      }

      else
      {
        re::DynamicString::operator+(&v25, this + 24, &v27);
        v22 = v27;
        v27 = 0uLL;
        v23 = v28;
        v24 = v29;
        v28 = 0;
        v29 = 0;
        *a4 = 0;
        *(a4 + 8) = v22;
        *(a4 + 24) = v23;
        *(a4 + 32) = v24;
        if (v25 && (v26 & 1) != 0)
        {
          (*(*v25 + 40))();
        }
      }

      if (v30 == 1 && *(&v30 + 1) && (v31 & 1) != 0)
      {
        (*(**(&v30 + 1) + 40))();
      }
    }

    else
    {
      v15 = v30;
      v16 = v31;
      v17 = v32;
      *a4 = 0;
      *(a4 + 8) = v15;
      *(a4 + 24) = v16;
      *(a4 + 32) = v17;
    }

    result = v33;
    if (v33 && (v34 & 1) != 0)
    {
      return (*(*v33 + 40))(v33, v35);
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::ExternalResolverLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE191B50, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE191B50);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE191B48 = re::internal::getOrCreateInfo("ExternalResolverLoadDescriptorParameters", re::allocInfo_ExternalResolverLoadDescriptorParameters, re::initInfo_ExternalResolverLoadDescriptorParameters, &unk_1EE191B40, 0);
      __cxa_guard_release(&qword_1EE191B50);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE191B48;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

__n128 re::ExternalResolverAssetProvider::resolveChild@<Q0>(re::ExternalResolverAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetProvider *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = re::DynamicString::operator!=(a2, this + 24);
  if (v10)
  {
    if (*(a2 + 8))
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = a2 + 9;
    }

    if (*(this + 32))
    {
      v24 = *(this + 5);
    }

    else
    {
      v24 = this + 33;
    }

    re::DynamicString::format("Scheme %s does not match scheme %s.", &v30, v11, v24);
    result = v30;
    v27 = v31;
    v28 = v32;
    *a5 = 0;
    *(a5 + 8) = result;
    *(a5 + 24) = v27;
    *(a5 + 32) = v28;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    re::DynamicString::setCapacity(&v43, 0);
    v12 = re::AssetLoadDescriptor::getIntrospectableData<re::ExternalResolverLoadDescriptorParameters>(a2, &v43);
    if (v12)
    {
      if (v44)
      {
        v13 = v45;
      }

      else
      {
        v13 = (&v44 + 1);
      }

      v14 = re::AssetProvider::resolveChildPath(a3, v13, &v41);
      re::AssetProviderRegistry::makeDescriptorForResolver((this + 24), &v41, v29, &v30);
      v15 = v30;
      *(a5 + 48) = v33;
      v16 = v36;
      *(a5 + 72) = v35;
      result = 0uLL;
      v30 = 0u;
      v18 = v31;
      v19 = v32;
      v31 = 0;
      v20 = *(&v32 + 1);
      v32 = 0u;
      ++v34;
      ++v37;
      v21 = v40;
      v22 = v39;
      v40 = 0u;
      v39 = 0;
      *a5 = 1;
      *(a5 + 24) = v18;
      *(a5 + 32) = v19;
      *(a5 + 8) = v15;
      *(a5 + 40) = v20;
      v33 = 0u;
      *(a5 + 64) = 1;
      v35 = 0u;
      v36 = 0u;
      *(a5 + 88) = v16;
      *(a5 + 104) = 1;
      v23 = v38;
      v38 = 0u;
      *(a5 + 112) = v23;
      *(a5 + 136) = v21;
      *(a5 + 128) = v22;
      if (*&v29[0])
      {
        if (BYTE8(v29[0]))
        {
          (*(**&v29[0] + 40))();
        }

        result = 0uLL;
        memset(v29, 0, sizeof(v29));
      }

      if (v41 && (v42 & 1) != 0)
      {
        (*(*v41 + 40))();
      }
    }

    else
    {
      result = v30;
      v25 = v31;
      v26 = v32;
      *a5 = 0;
      *(a5 + 8) = result;
      *(a5 + 24) = v25;
      *(a5 + 32) = v26;
    }

    if (v43 && (v44 & 1) != 0)
    {
      (*(*v43 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::ExternalResolverAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, re::AssetLoadDescriptor *a2@<X1>, const re::internal::AssetTypeRegistry *a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t a5@<X8>)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  re::DynamicString::setCapacity(&v39, 0);
  v9 = re::AssetLoadDescriptor::getIntrospectableData<re::ExternalResolverLoadDescriptorParameters>(a2, &v39);
  v10 = a2 + 9;
  if (v9)
  {
    if (*(a2 + 1))
    {
      v10 = *(a2 + 2);
    }

    if (v40)
    {
      v11 = v41;
    }

    else
    {
      v11 = &v40 + 1;
    }

    v12 = re::DynamicString::format("%s:%s", &v36, v10, v11);
    LODWORD(v29) = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v13 = re::DynamicString::setCapacity(&v29 + 1, 0);
    *(&v33 + 1) = 0;
    v34 = 0uLL;
    re::DynamicString::setCapacity(&v33, 0);
    v35 = 0;
    if (v37)
    {
      v14 = *&v38[7];
    }

    else
    {
      v14 = v38;
    }

    v15 = re::AssetPath::parse(&v29, v14, 0, a3, a4, v26);
    if ((v26[0] & 1) == 0 && v27)
    {
      if (BYTE8(v27))
      {
        (*(*v27 + 40))(v15);
      }

      v28 = 0u;
      v27 = 0u;
    }

    v24 = 0;
    v25 = 0;
    v23 = *(&v29 + 1);
    re::DynamicString::setCapacity(&v23, 0);
    re::AssetPath::fullAssetPath(&v29, &v23);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    *a5 = 1;
    *(a5 + 8) = v16;
    *(a5 + 24) = v17;
    *(a5 + 32) = v18;
    if (v33)
    {
      if (BYTE8(v33))
      {
        (*(*v33 + 40))();
      }

      v34 = 0u;
      v33 = 0u;
    }

    if (*(&v29 + 1) && (v30 & 1) != 0)
    {
      (*(**(&v29 + 1) + 40))();
    }

    if (v36 && (v37 & 1) != 0)
    {
      (*(*v36 + 40))();
    }
  }

  else
  {
    if (*(a2 + 1))
    {
      v10 = *(a2 + 2);
    }

    re::DynamicString::format("Failed to deserialize parameters for %s", &v29, v10);
    v19 = v29;
    v20 = v30;
    v21 = v31;
    *a5 = 0;
    *(a5 + 8) = v19;
    *(a5 + 24) = v20;
    *(a5 + 32) = v21;
  }

  result = v39;
  if (v39)
  {
    if (v40)
    {
      return (*(*v39 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::ExternalResolverAssetProvider::getDescription(re::ExternalResolverAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::DynamicString::setCapacity(&v6, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::ExternalResolverLoadDescriptorParameters>(a2, &v6))
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

uint64_t re::ExternalResolverAssetProvider::schemeName(re::ExternalResolverAssetProvider *this)
{
  if (*(this + 32))
  {
    return *(this + 5);
  }

  else
  {
    return this + 33;
  }
}

uint64_t guess_compression_from_magic_number(unsigned __int8 *a1)
{
  if (*a1 == 30306 && a1[2] == 120)
  {
    return 2;
  }

  if (*a1 != 30306 || a1[2] != 52)
  {
    if (*a1 == 253 && *(a1 + 1) == 1515747895)
    {
      return 4;
    }

    if (*a1 != 25200 || a1[2] != 122)
    {
      return 0;
    }

    v5 = a1[3];
    if (v5 != 52)
    {
      if (v5 != 101)
      {
        if (v5 != 120)
        {
          return 0;
        }

        return 4;
      }

      return 2;
    }
  }

  return 3;
}

uint64_t reality_compression_get_chunk_for_decompressed_offset(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 128) != 1)
  {
    return -1;
  }

  v2 = *(a1 + 108);
  if ((v2 - 1) < 2)
  {
    return 0;
  }

  if (v2 != 4)
  {
    return -1;
  }

  v4 = *(a1 + 56);
  v5 = (*(a1 + 64) - v4) >> 4;
  if (v5 < 2)
  {
    return 0;
  }

  for (i = 1; i < v5; i = (i + 1))
  {
    if ((*(v4 + 16 * i + 8) & 0xFFFFFFFFFFFFFFuLL) > a2)
    {
      break;
    }
  }

  return (i - 1);
}

uint64_t *reality_compression_set_chunk_for_decompressed_offset(compression_stream *stream, unint64_t a2)
{
  {
    v9 = a2;
    a2 = v9;
    if (v10)
    {
      reality_compression_set_chunk_for_decompressed_offset::reset_chunk_offset = 0;
      unk_1ECF1C170 = 0;
      a2 = v9;
    }
  }

  if (LODWORD(stream[3].dst_size) == 1)
  {
    src_size_high = HIDWORD(stream[2].src_size);
    if ((src_size_high - 1) >= 2)
    {
      if (src_size_high == 4)
      {
        src_ptr = stream[1].src_ptr;
        v6 = (stream[1].src_size - src_ptr) >> 4;
        if (v6 < 2)
        {
          v8 = 0;
        }

        else
        {
          for (i = 1; i < v6; i = (i + 1))
          {
            if ((*&src_ptr[16 * i + 8] & 0xFFFFFFFFFFFFFFuLL) > a2)
            {
              break;
            }
          }

          v8 = i - 1;
        }

        if (LOBYTE(stream[3].src_ptr) != 1 || compression_stream_destroy(stream) == COMPRESSION_STATUS_OK)
        {
          LODWORD(stream[1].dst_size) = v8;
          if (update_chunk(stream))
          {
            return &stream[1].src_ptr[16 * LODWORD(stream[1].dst_size)];
          }
        }
      }
    }

    else
    {
      HIDWORD(stream[2].src_size) = 0;
      if (LOBYTE(stream[3].src_ptr) != 1 || compression_stream_destroy(stream) == COMPRESSION_STATUS_OK)
      {
        return &reality_compression_set_chunk_for_decompressed_offset::reset_chunk_offset;
      }
    }
  }

  return 0;
}

uint64_t update_chunk(compression_stream *stream)
{
  src_ptr = stream[1].src_ptr;
  v3 = (stream[1].src_size - src_ptr) >> 4;
  dst_size_low = LODWORD(stream[1].dst_size);
  v5 = (dst_size_low + 1);
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  if (v3 > v5)
  {
    v7.i64[0] = 0xFFFFFFFFFFFFFFLL;
    v7.i64[1] = 0xFFFFFFFFFFFFFFLL;
    v6 = vsubq_s64(vandq_s8(*&src_ptr[16 * v5], v7), vandq_s8(*&src_ptr[16 * dst_size_low], v7));
  }

  *(&stream[2].dst_size + 4) = vextq_s8(v6, v6, 8uLL);
  stream[3].dst_ptr = v6.i64[0];
  if (v3 <= dst_size_low)
  {
    goto LABEL_8;
  }

  v8 = vshlq_u64(*&src_ptr[16 * dst_size_low], xmmword_1E30589A0);
  v9 = v8.i16[0] & 0xFF00 | v8.i32[2];
  switch(v9)
  {
    case 8:
      v10 = COMPRESSION_ZLIB;
      break;
    case 99:
      v10 = COMPRESSION_LZFSE;
      break;
    case 14:
      v10 = COMPRESSION_LZMA;
      break;
    default:
LABEL_8:
      v11 = 0;
      HIDWORD(stream[3].dst_size) = 0;
      v12 = 136;
LABEL_9:
      *(&stream->dst_ptr + v12) = v11;
      return 1;
  }

  HIDWORD(stream[3].dst_size) = v10;
  v11 = 1;
  LOBYTE(stream[3].src_ptr) = 1;
  if (compression_stream_init(stream, stream[3].dst_size, v10) == COMPRESSION_STATUS_OK)
  {
    v12 = 40;
    goto LABEL_9;
  }

  return 0;
}

void reality_compression_process_read_chunk(compression_stream *stream@<X2>, void *a2@<X0>, int a3@<W1>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = a2[2];
  *(a4 + 24) = *a2;
  *(a4 + 32) = v9;
  v57 = &stream[2].dst_size + 4;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  while (1)
  {
    if (LODWORD(stream[3].dst_size) != 1)
    {
      *a4 = 0;
      goto LABEL_95;
    }

    src_size_high = HIDWORD(stream[2].src_size);
    if (src_size_high != 1 && src_size_high != 4)
    {
      v12 = *a2;
      v13 = a2[1];
      if (src_size_high)
      {
        v14 = a2[1];
        v15 = *a2;
      }

      else
      {
        if (v13 <= 3)
        {
          v54 = 0;
          HIDWORD(stream[2].src_size) = 1;
          goto LABEL_107;
        }

        if (v13 <= 0xB)
        {
          goto LABEL_103;
        }

        v23 = *v12;
        if (v23 != 112 || v12[1] != 98 || v12[2] != 122)
        {
          if (v13 <= 0xF)
          {
LABEL_103:
            v54 = 0;
            stream[3].dst_ptr = -1;
            *(&stream[2].src_size + 4) = 1;
            goto LABEL_107;
          }

          if (v23 != 67 || v12[1] != 72 || v12[2] != 78 || v12[3] != 75)
          {
            stream[3].dst_ptr = -1;
            *(&stream[2].src_size + 4) = 1;
            if (compression_stream_init(stream, COMPRESSION_STREAM_DECODE, HIDWORD(stream[3].dst_size)))
            {
              goto LABEL_106;
            }

            LOBYTE(stream[1].dst_ptr) = 1;
            goto LABEL_55;
          }

          v15 = v12 + 16;
          v14 = v13 - 16;
          if (!*(v12 + 1))
          {
            v25 = *(v12 + 2);
            v26 = *(v12 + 3) - 16;
            HIDWORD(stream[1].dst_ptr) = v26;
            LODWORD(stream[2].state) = v26;
            stream[3].dst_ptr = 0;
            std::vector<chunk_offset_t>::resize(&stream[1].src_ptr, v25);
            HIDWORD(stream[2].src_size) = 3;
            if (v13 == 16)
            {
LABEL_109:
              v54 = 0;
              *a2 = v15;
              a2[1] = 0;
              goto LABEL_107;
            }

            goto LABEL_12;
          }

          v54 = 0;
          stream[3].dst_ptr = v13;
          *(&stream[2].src_size + 4) = 1;
          goto LABEL_112;
        }

        v24 = *v12;
        LODWORD(stream[2].dst_size) = *(v12 + 2);
        stream[2].dst_ptr = v24;
        *(&stream[2].dst_ptr + 4) = bswap64(*(&stream[2].dst_ptr + 4));
        stream[3].dst_ptr = 0;
        *(&stream[2].src_size + 4) = 0x1000000002;
        if (compression_stream_init(stream, COMPRESSION_STREAM_DECODE, HIDWORD(stream[3].dst_size)))
        {
          goto LABEL_106;
        }

        v14 = v13 - 12;
        v15 = v12 + 12;
        LOBYTE(stream[1].dst_ptr) = 1;
        src_size_high = HIDWORD(stream[2].src_size);
      }

      if (src_size_high != 2)
      {
        if (src_size_high == 3)
        {
          if (!v14)
          {
            goto LABEL_109;
          }

LABEL_12:
          state_low = LODWORD(stream[2].state);
          src_ptr = stream[1].src_ptr;
          src_size = stream[1].src_size;
          if (src_size == src_ptr)
          {
            src_ptr = 0;
          }

          v19 = &src_ptr[(HIDWORD(stream[1].dst_ptr) - state_low)];
          if (state_low >= v14)
          {
            v20 = v14;
          }

          else
          {
            v20 = LODWORD(stream[2].state);
          }

          if (v19 < src_size)
          {
            if (v20 >= src_size - v19)
            {
              v21 = src_size - v19;
            }

            else
            {
              v21 = v20;
            }

            memcpy(v19, v15, v21);
            LODWORD(state_low) = stream[2].state;
          }

          v15 += v20;
          v14 -= v20;
          v22 = state_low - v20;
          LODWORD(stream[2].state) = v22;
          if (!v22)
          {
            HIDWORD(stream[2].src_size) = 4;
            if ((update_chunk(stream) & 1) == 0)
            {
              goto LABEL_106;
            }
          }
        }

LABEL_54:
        *a2 = v15;
        a2[1] = v14;
        goto LABEL_55;
      }

      v27 = LODWORD(stream[2].state);
      if (!v27)
      {
        goto LABEL_54;
      }

      if ((a3 & 1) == 0)
      {
        goto LABEL_49;
      }

      if (!v14 && v27 == 16)
      {
        LODWORD(stream[2].state) = 0;
        *a2 = v15;
        a2[1] = 0;
LABEL_55:
        src_size_high = HIDWORD(stream[2].src_size);
        goto LABEL_56;
      }

      if (v14 >= v27)
      {
LABEL_49:
        if (v27 >= v14)
        {
          v28 = v14;
        }

        else
        {
          v28 = LODWORD(stream[2].state);
        }

        memcpy(&v57[-v27 + 16], v15, v28);
        v15 += v28;
        v14 -= v28;
        v29 = LODWORD(stream[2].state) - v28;
        LODWORD(stream[2].state) = v29;
        if (!v29)
        {
          v30 = *(&stream[2].dst_size + 4);
          *(&stream[2].dst_size + 4) = bswap64(v30);
          v31 = *(&stream[2].src_ptr + 4);
          v32 = bswap64(v31);
          *(&stream[2].src_ptr + 4) = v32;
          stream[3].dst_ptr = v32;
          LOBYTE(stream[3].src_ptr) = v31 != v30;
        }

        goto LABEL_54;
      }

      v54 = 0;
LABEL_112:
      *a2 = v15;
      a2[1] = v14;
      goto LABEL_107;
    }

LABEL_56:
    if (src_size_high == 3)
    {
      goto LABEL_97;
    }

    v33 = *a2;
    v34 = a2[1];
    dst_ptr = stream[3].dst_ptr;
    if (v34 >= dst_ptr)
    {
      v34 = stream[3].dst_ptr;
    }

    stream->src_ptr = v33;
    stream->src_size = v34;
    v36 = a2[2];
    v37 = a2[3];
    stream->dst_ptr = v36;
    stream->dst_size = v37;
    if (LOBYTE(stream[3].src_ptr) == 1)
    {
      v38 = compression_stream_process(stream, 0);
      if (v38 == COMPRESSION_STATUS_ERROR)
      {
        goto LABEL_106;
      }

      v39 = stream->src_ptr;
      v40 = *a2;
      v41 = a2[1];
      v42 = &v39[-*a2];
      stream[3].dst_ptr -= v42;
      v43 = a2[2];
      *a2 = v39;
      a2[1] = &v41[-v42];
      v45 = stream->dst_ptr;
      dst_size = stream->dst_size;
      a2[2] = stream->dst_ptr;
      a2[3] = dst_size;
      if (v38 == COMPRESSION_STATUS_END)
      {
        if (a3 && v41 == v42)
        {
          goto LABEL_102;
        }

        v46 = HIDWORD(stream[2].src_size);
        if (v46 == 1)
        {
          goto LABEL_106;
        }

        *a4 = 2;
        if (LOBYTE(stream[1].dst_ptr) == 1)
        {
          if (compression_stream_destroy(stream))
          {
            goto LABEL_106;
          }

          v46 = HIDWORD(stream[2].src_size);
        }

        LOBYTE(stream[1].dst_ptr) = 0;
        if (v46 == 4)
        {
          ++LODWORD(stream[1].dst_size);
          if ((update_chunk(stream) & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        else
        {
          LODWORD(stream[2].state) = 16;
          if (compression_stream_init(stream, stream[3].dst_size, HIDWORD(stream[3].dst_size)))
          {
            goto LABEL_106;
          }

          LOBYTE(stream[1].dst_ptr) = 1;
        }
      }

      else if (v45 == v43 && v39 == v40 && v41 != v42 && dst_size)
      {
        goto LABEL_106;
      }

      goto LABEL_95;
    }

    if (!v34)
    {
      break;
    }

    if (v34 >= v37)
    {
      v34 = v37;
    }

    if (v34 >= dst_ptr)
    {
      v47 = dst_ptr;
    }

    else
    {
      v47 = v34;
    }

    memcpy(v36, v33, v47);
    v48 = stream->dst_size;
    v49 = &stream->dst_ptr[v47];
    v50 = a2[1];
    v51 = v50 - v47;
    *a2 = &stream->src_ptr[v47];
    a2[1] = v50 - v47;
    a2[2] = v49;
    a2[3] = v48 - v47;
    v52 = stream[3].dst_ptr;
    stream[3].dst_ptr = &v52[-v47];
    if (a3 && v50 == v47)
    {
      if (HIDWORD(stream[2].src_size) == 4)
      {
        v55 = (LODWORD(stream[1].dst_size) + 1);
        LODWORD(stream[1].dst_size) = v55;
        if (v55 == (stream[1].src_size - stream[1].src_ptr) >> 4)
        {
LABEL_102:
          v54 = 1;
          goto LABEL_107;
        }

        update_chunk(stream);
LABEL_106:
        v54 = 0;
        goto LABEL_107;
      }

      if (v52 == v47)
      {
        goto LABEL_102;
      }
    }

    else if (v52 == v47)
    {
      if (HIDWORD(stream[2].src_size) == 4)
      {
        v53 = (LODWORD(stream[1].dst_size) + 1);
        LODWORD(stream[1].dst_size) = v53;
        if (v53 == (stream[1].src_size - stream[1].src_ptr) >> 4)
        {
          goto LABEL_106;
        }

        update_chunk(stream);
        v51 = a2[1];
      }

      else
      {
        LODWORD(stream[2].state) = 16;
      }
    }

    if (!v51)
    {
      goto LABEL_97;
    }

LABEL_95:
    if (!a2[1] || !a2[3])
    {
LABEL_97:
      v54 = 2;
      goto LABEL_107;
    }
  }

  if (a3)
  {
    v54 = 1;
  }

  else
  {
    v54 = 2;
  }

LABEL_107:
  *a4 = v54;
LABEL_108:
  v56 = a2[2] - v9;
  *(a4 + 8) = *a2 - v8;
  *(a4 + 16) = v56;
}

uint64_t reality_compression_process_write_chunk@<X0>(int flags@<W1>, compression_stream *stream@<X2>, uint64_t result@<X0>, uint64_t a4@<X8>)
{
  v6 = result;
  v8 = *result;
  v9 = *(result + 16);
  *(a4 + 24) = *result;
  *(a4 + 32) = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  dst_ptr = v9;
  src_ptr = v8;
  while (1)
  {
    if (LODWORD(stream[3].dst_size) == 1)
    {
      v12 = *(v6 + 8);
      goto LABEL_6;
    }

    v13 = *(v6 + 8);
    stream->src_ptr = src_ptr;
    stream->src_size = v13;
    v14 = *(v6 + 24);
    stream->dst_ptr = dst_ptr;
    stream->dst_size = v14;
    result = compression_stream_process(stream, flags);
    if (result == -1)
    {
      v16 = 0;
      dst_ptr = *(v6 + 16);
      src_ptr = *v6;
      goto LABEL_11;
    }

    src_ptr = stream->src_ptr;
    v12 = *(v6 + 8) + *v6 - src_ptr;
    *v6 = src_ptr;
    *(v6 + 8) = v12;
    dst_ptr = stream->dst_ptr;
    dst_size = stream->dst_size;
    *(v6 + 16) = stream->dst_ptr;
    *(v6 + 24) = dst_size;
    if (result == 1)
    {
      break;
    }

LABEL_6:
    if (!v12 || !*(v6 + 24))
    {
      v16 = 2;
      goto LABEL_11;
    }
  }

  v16 = 1;
LABEL_11:
  *a4 = v16;
  *(a4 + 8) = src_ptr - v8;
  *(a4 + 16) = dst_ptr - v9;
  return result;
}

void reality_compression_stream_end(compression_stream *stream)
{
  if (LOBYTE(stream[1].dst_ptr) == 1)
  {
    compression_stream_destroy(stream);
  }

  src_ptr = stream[1].src_ptr;
  if (src_ptr)
  {
    stream[1].src_size = src_ptr;
    operator delete(src_ptr);
  }

  JUMPOUT(0x1E6906520);
}

void *reality_archive_file_pack(char *a1, const char *a2, int a3)
{
  v5 = zip_file_create(a2);
  if (!v5)
  {
    return v5;
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  if (!_collect_paths(a1, &__p))
  {
    goto LABEL_47;
  }

  v6 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v35 - __p) >> 3));
  if (v35 == __p)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,false>(__p, v35, v7, 1);
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = __p;
  v10 = v35;
  if (__p == v35)
  {
LABEL_45:
    v5 = zip_close(v5);
    goto LABEL_48;
  }

  while (1)
  {
    v11 = (v9 + 24);
    v12 = v9[47];
    if (v9[48] == 1)
    {
      break;
    }

    if ((v12 & 0x80) != 0)
    {
      v11 = *v11;
    }

    if (!zip_append_entry(v5, v11, 0, 0, 0))
    {
      goto LABEL_47;
    }

LABEL_41:
    v9 += 56;
    if (v9 == v10)
    {
      goto LABEL_45;
    }
  }

  if ((v12 & 0x80) != 0)
  {
    v15 = *(v9 + 4);
    if (v15 == 11)
    {
      v17 = *(*v11 + 3);
      v18 = **v11 == 0x6A2E726564616568;
      v19 = 779248996;
LABEL_27:
      v21 = v19 | 0x6E6F736A00000000;
      v20 = v18 && v17 == v21;
      goto LABEL_30;
    }

    v14 = v8;
    if (v15 != 13)
    {
      goto LABEL_33;
    }

    v13 = *v11;
LABEL_22:
    v16 = *v13;
    v17 = *(v13 + 5);
    v18 = v16 == 0x70614D7465737361;
    v19 = 779116877;
    goto LABEL_27;
  }

  if (v12 != 11)
  {
    v13 = (v9 + 24);
    v14 = v8;
    if (v12 != 13)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  v20 = *v11 == 0x6A2E726564616568 && *(v9 + 27) == 0x6E6F736A2E726564;
LABEL_30:
  v14 = v8;
  if (v20)
  {
    v14 = 0;
  }

LABEL_33:
  v22 = v9;
  if (v9[23] < 0)
  {
    v22 = *v9;
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_35;
    }

LABEL_44:
    v11 = *v11;
    goto LABEL_35;
  }

  if ((v12 & 0x80) != 0)
  {
    goto LABEL_44;
  }

LABEL_35:
  v23 = malloc_type_malloc(0x10000uLL, 0x30E4C224uLL);
  entry = zip_create_entry(v5, v11, 0x63006300080000uLL >> (16 * v14), 0);
  if (entry)
  {
    v25 = zip_entry_save_data_begin(entry);
    v26 = fopen(v22, "rb");
    if (v26)
    {
      v27 = v26;
      v28 = fread(v23, 1uLL, 0x10000uLL, v26);
      if (v28)
      {
        v29 = v28;
        do
        {
          zip_entry_save_data_write(v23, v29, v25);
          v29 = fread(v23, 1uLL, 0x10000uLL, v27);
        }

        while (v29);
      }

      zip_entry_save_data_end(v25);
      fclose(v27);
      free(v23);
      goto LABEL_41;
    }
  }

  free(v23);
LABEL_47:
  v5 = 0;
LABEL_48:
  v30 = __p;
  if (__p)
  {
    v31 = v35;
    v32 = __p;
    if (v35 != __p)
    {
      do
      {
        v31 = (v31 - 56);
        std::allocator<std::tuple<std::string,std::string,BOOL>>::destroy[abi:nn200100](&__p, v31);
      }

      while (v31 != v30);
      v32 = __p;
    }

    v35 = v30;
    operator delete(v32);
  }

  return v5;
}

void std::__introsort<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = a2 - 56;
    v110 = a2 - 168;
    v111 = (a2 - 7);
    v9 = a1;
    v112 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = a2 - v9;
          v11 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a1 + 56, v8);
                return;
              case 4:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a1 + 56, a1 + 112);
                if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v8, a1 + 112))
                {
                  *v118 = *(a1 + 112);
                  v56 = *v118;
                  v119 = *(a1 + 128);
                  v57 = v119;
                  v58 = *(v8 + 16);
                  *(a1 + 112) = *v8;
                  *(a1 + 128) = v58;
                  *(v8 + 16) = v57;
                  *v8 = v56;
                  *v118 = *(a1 + 136);
                  v59 = *v118;
                  v119 = *(a1 + 152);
                  v60 = v119;
                  v61 = *(a2 - 2);
                  *(a1 + 136) = *(a2 - 2);
                  *(a1 + 152) = v61;
                  *(a2 - 2) = v60;
                  *(a2 - 2) = v59;
                  LOBYTE(v60) = *(a1 + 160);
                  *(a1 + 160) = *(a2 - 8);
                  *(a2 - 8) = v60;
                  if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a1 + 112, a1 + 56))
                  {
                    v62 = *(a1 + 72);
                    v63 = *(a1 + 56);
                    *(a1 + 56) = *(a1 + 112);
                    *(a1 + 72) = *(a1 + 128);
                    *(a1 + 112) = v63;
                    *(a1 + 128) = v62;
                    v64 = *(a1 + 96);
                    v65 = *(a1 + 80);
                    *(a1 + 80) = *(a1 + 136);
                    *(a1 + 96) = *(a1 + 152);
                    *(a1 + 136) = v65;
                    *(a1 + 152) = v64;
                    LOBYTE(v64) = *(a1 + 104);
                    v66 = *(a1 + 160);
                    *(a1 + 104) = v66;
                    *(a1 + 160) = v64;
                    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a1 + 56, a1))
                    {
                      v67 = *a1;
                      v119 = *(a1 + 16);
                      *v118 = v67;
                      *a1 = *(a1 + 56);
                      *(a1 + 16) = *(a1 + 72);
                      *(a1 + 56) = *v118;
                      *(a1 + 72) = v119;
                      v68 = *(a1 + 40);
                      v69 = *(a1 + 24);
                      *(a1 + 24) = *(a1 + 80);
                      *(a1 + 40) = *(a1 + 96);
                      *(a1 + 80) = v69;
                      *(a1 + 96) = v68;
                      LOBYTE(v68) = *(a1 + 48);
                      *(a1 + 48) = v66;
                      *(a1 + 104) = v68;
                    }
                  }
                }

                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a1 + 56, a1 + 112, a1 + 168, v8);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v8, a1))
              {
                v50 = *a1;
                v119 = *(a1 + 16);
                *v118 = v50;
                v51 = *v8;
                *(a1 + 16) = *(v8 + 16);
                *a1 = v51;
                v52 = *v118;
                *(v8 + 16) = v119;
                *v8 = v52;
                *v118 = *(a1 + 24);
                v53 = *v118;
                v119 = *(a1 + 40);
                v54 = v119;
                v55 = *(a2 - 2);
                *(a1 + 24) = *(a2 - 2);
                *(a1 + 40) = v55;
                *(a2 - 2) = v54;
                *(a2 - 2) = v53;
                LOBYTE(v54) = *(a1 + 48);
                *(a1 + 48) = *(a2 - 8);
                *(a2 - 8) = v54;
              }

              return;
            }
          }

          if (v10 <= 1343)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v70 = a1 + 56;
                if ((a1 + 56) != a2)
                {
                  v71 = 0;
                  v72 = a1;
                  do
                  {
                    v73 = v70;
                    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v70, v72))
                    {
                      v74 = *v73;
                      v119 = *(v73 + 16);
                      *v118 = v74;
                      *(v73 + 8) = 0;
                      *(v73 + 16) = 0;
                      *v73 = 0;
                      __p = *(v72 + 80);
                      v121 = *(v72 + 96);
                      *(v72 + 88) = 0;
                      *(v72 + 96) = 0;
                      *(v72 + 80) = 0;
                      v122 = *(v72 + 104);
                      v75 = v71;
                      while (1)
                      {
                        std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(a1 + v75 + 56, (a1 + v75));
                        if (!v75)
                        {
                          break;
                        }

                        v75 -= 56;
                        if ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, v75 + a1) & 1) == 0)
                        {
                          v76 = a1 + v75 + 56;
                          goto LABEL_88;
                        }
                      }

                      v76 = a1;
LABEL_88:
                      std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v76, v118);
                      a2 = v112;
                      if (SHIBYTE(v121) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v119) < 0)
                      {
                        operator delete(v118[0]);
                      }
                    }

                    v70 = v73 + 56;
                    v71 += 56;
                    v72 = v73;
                  }

                  while ((v73 + 56) != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v107 = a1 + 56;
              if ((a1 + 56) != a2)
              {
                do
                {
                  v108 = v107;
                  if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v107, a1))
                  {
                    v109 = *v108;
                    v119 = *(v108 + 16);
                    *v118 = v109;
                    *(v108 + 8) = 0;
                    *(v108 + 16) = 0;
                    *v108 = 0;
                    __p = *(a1 + 80);
                    v121 = *(a1 + 96);
                    *(a1 + 88) = 0;
                    *(a1 + 96) = 0;
                    *(a1 + 80) = 0;
                    v122 = *(a1 + 104);
                    do
                    {
                      std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(a1 + 56, a1);
                      a1 -= 56;
                    }

                    while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, a1) & 1) != 0);
                    std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(a1 + 56, v118);
                    if (SHIBYTE(v121) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v119) < 0)
                    {
                      operator delete(v118[0]);
                    }
                  }

                  v107 = v108 + 56;
                  a1 = v108;
                }

                while ((v108 + 56) != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v77 = v12 >> 1;
              v78 = v12 >> 1;
              do
              {
                v79 = v78;
                if (v77 >= v78)
                {
                  v80 = (2 * v78) | 1;
                  v81 = (a1 + 56 * v80);
                  if (2 * v78 + 2 < v11 && reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a1 + 56 * v80, v81 + 56))
                  {
                    v81 = (v81 + 56);
                    v80 = 2 * v79 + 2;
                  }

                  v82 = a1 + 56 * v79;
                  a2 = v112;
                  if ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v81, v82) & 1) == 0)
                  {
                    v83 = *v82;
                    v119 = *(v82 + 16);
                    *v118 = v83;
                    *(v82 + 8) = 0;
                    *(v82 + 16) = 0;
                    *v82 = 0;
                    v84 = *(v82 + 24);
                    v121 = *(v82 + 40);
                    __p = v84;
                    *(v82 + 32) = 0;
                    *(v82 + 40) = 0;
                    *(v82 + 24) = 0;
                    v122 = *(v82 + 48);
                    do
                    {
                      v85 = v81;
                      std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v82, v81);
                      if (v77 < v80)
                      {
                        break;
                      }

                      v86 = (2 * v80) | 1;
                      v81 = (a1 + 56 * v86);
                      v87 = 2 * v80 + 2;
                      if (v87 < v11 && reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a1 + 56 * v86, v81 + 56))
                      {
                        v81 = (v81 + 56);
                        v86 = v87;
                      }

                      v82 = v85;
                      v80 = v86;
                    }

                    while (!reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v81, v118));
                    std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v85, v118);
                    if (SHIBYTE(v121) < 0)
                    {
                      operator delete(__p);
                    }

                    a2 = v112;
                    if (SHIBYTE(v119) < 0)
                    {
                      operator delete(v118[0]);
                    }
                  }
                }

                v78 = v79 - 1;
              }

              while (v79);
              v88 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3);
              do
              {
                v89 = 0;
                v90 = *a1;
                v114 = *(a1 + 16);
                *v113 = v90;
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v91 = *(a1 + 24);
                v116 = *(a1 + 40);
                v115 = v91;
                *(a1 + 32) = 0;
                *(a1 + 40) = 0;
                *(a1 + 24) = 0;
                v117 = *(a1 + 48);
                v92 = a1;
                do
                {
                  v93 = v92 + 56 * v89;
                  v94 = v93 + 56;
                  v95 = (2 * v89) | 1;
                  v96 = 2 * v89 + 2;
                  if (v96 < v88)
                  {
                    v97 = v93 + 112;
                    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v93 + 56, v93 + 112))
                    {
                      v94 = v97;
                      v95 = v96;
                    }
                  }

                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v92, v94);
                  v92 = v94;
                  v89 = v95;
                }

                while (v95 <= ((v88 - 2) >> 1));
                v98 = (a2 - 56);
                if (v94 == (a2 - 56))
                {
                  v99 = (a2 - 56);
                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v94, v113);
                }

                else
                {
                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v94, v98);
                  v99 = (a2 - 56);
                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v98, v113);
                  v100 = v94 - a1 + 56;
                  if (v100 >= 57)
                  {
                    v101 = (0x6DB6DB6DB6DB6DB7 * (v100 >> 3) - 2) >> 1;
                    v102 = (a1 + 56 * v101);
                    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v102, v94))
                    {
                      v103 = *v94;
                      v119 = *(v94 + 16);
                      *v118 = v103;
                      *(v94 + 8) = 0;
                      *(v94 + 16) = 0;
                      *v94 = 0;
                      v104 = *(v94 + 24);
                      v121 = *(v94 + 40);
                      __p = v104;
                      *(v94 + 32) = 0;
                      *(v94 + 40) = 0;
                      *(v94 + 24) = 0;
                      v122 = *(v94 + 48);
                      do
                      {
                        v105 = v102;
                        std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v94, v102);
                        if (!v101)
                        {
                          break;
                        }

                        v101 = (v101 - 1) >> 1;
                        v102 = (a1 + 56 * v101);
                        v94 = v105;
                      }

                      while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v102, v118) & 1) != 0);
                      std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v105, v118);
                      if (SHIBYTE(v121) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v119) < 0)
                      {
                        operator delete(v118[0]);
                      }
                    }
                  }
                }

                if (SHIBYTE(v116) < 0)
                {
                  operator delete(v115);
                }

                if (SHIBYTE(v114) < 0)
                {
                  operator delete(v113[0]);
                }

                v106 = v88-- <= 2;
                a2 = v99;
              }

              while (!v106);
            }

            return;
          }

          v13 = v11 >> 1;
          v14 = a1 + 56 * (v11 >> 1);
          if (v10 < 0x1C01)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(v14, a1, v8);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, v14, v8);
            v15 = 56 * v13;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1 + 56, v15 + a1 - 56, v111);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1 + 112, a1 + 56 + v15, v110);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(v15 + a1 - 56, v14, a1 + 56 + v15);
            v16 = *a1;
            v119 = *(a1 + 16);
            *v118 = v16;
            v17 = *(v14 + 16);
            *a1 = *v14;
            *(a1 + 16) = v17;
            v18 = *v118;
            *(v14 + 16) = v119;
            *v14 = v18;
            *v118 = *(a1 + 24);
            v19 = *v118;
            v119 = *(a1 + 40);
            v20 = v119;
            v21 = *(v14 + 40);
            *(a1 + 24) = *(v14 + 24);
            *(a1 + 40) = v21;
            *(v14 + 40) = v20;
            *(v14 + 24) = v19;
            LOBYTE(v20) = *(a1 + 48);
            *(a1 + 48) = *(v14 + 48);
            *(v14 + 48) = v20;
          }

          --a3;
          if (a4 & 1) != 0 || (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a1 - 56, a1))
          {
            break;
          }

          v38 = *a1;
          v119 = *(a1 + 16);
          *v118 = v38;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v39 = *(a1 + 24);
          v121 = *(a1 + 40);
          __p = v39;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 24) = 0;
          v122 = *(a1 + 48);
          if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, v8))
          {
            v9 = a1;
            a2 = v112;
            do
            {
              v9 += 56;
            }

            while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, v9) & 1) == 0);
          }

          else
          {
            v40 = a1 + 56;
            a2 = v112;
            do
            {
              v9 = v40;
              if (v40 >= v112)
              {
                break;
              }

              v41 = reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, v40);
              v40 = v9 + 56;
            }

            while (!v41);
          }

          v42 = a2;
          if (v9 < a2)
          {
            v42 = a2;
            do
            {
              v42 -= 56;
            }

            while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, v42) & 1) != 0);
          }

          while (v9 < v42)
          {
            v43 = *v9;
            v114 = *(v9 + 16);
            *v113 = v43;
            v44 = *v42;
            *(v9 + 16) = *(v42 + 16);
            *v9 = v44;
            v45 = *v113;
            *(v42 + 16) = v114;
            *v42 = v45;
            v46 = *(v9 + 40);
            v47 = *(v9 + 24);
            v48 = *(v42 + 40);
            *(v9 + 24) = *(v42 + 24);
            *(v9 + 40) = v48;
            *(v42 + 24) = v47;
            *(v42 + 40) = v46;
            LOBYTE(v46) = *(v9 + 48);
            *(v9 + 48) = *(v42 + 48);
            *(v42 + 48) = v46;
            do
            {
              v9 += 56;
            }

            while (!reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, v9));
            do
            {
              v42 -= 56;
            }

            while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v118, v42) & 1) != 0);
          }

          if (v9 - 56 != a1)
          {
            std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(a1, (v9 - 56));
          }

          std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v9 - 56, v118);
          if (SHIBYTE(v121) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v119) < 0)
          {
            operator delete(v118[0]);
          }

          a4 = 0;
        }

        v22 = 0;
        v23 = *a1;
        v119 = *(a1 + 16);
        *v118 = v23;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v24 = *(a1 + 24);
        v121 = *(a1 + 40);
        __p = v24;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 24) = 0;
        v122 = *(a1 + 48);
        do
        {
          v22 += 56;
        }

        while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v22 + a1, v118) & 1) != 0);
        v25 = a1 + v22;
        v26 = v112;
        v27 = v22 == 56;
        a2 = v112;
        if (v27)
        {
          v26 = v112;
          do
          {
            if (v25 >= v26)
            {
              break;
            }

            v26 -= 56;
          }

          while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v26, v118) & 1) == 0);
        }

        else
        {
          do
          {
            v26 -= 56;
          }

          while (!reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v26, v118));
        }

        if (v25 >= v26)
        {
          v36 = (v25 - 56);
        }

        else
        {
          v28 = v25;
          v29 = v26;
          do
          {
            v30 = *v28;
            v114 = *(v28 + 16);
            *v113 = v30;
            v31 = *v29;
            *(v28 + 16) = *(v29 + 16);
            *v28 = v31;
            v32 = *v113;
            *(v29 + 16) = v114;
            *v29 = v32;
            v33 = *(v28 + 40);
            v34 = *(v28 + 24);
            v35 = *(v29 + 40);
            *(v28 + 24) = *(v29 + 24);
            *(v28 + 40) = v35;
            *(v29 + 24) = v34;
            *(v29 + 40) = v33;
            LOBYTE(v33) = *(v28 + 48);
            *(v28 + 48) = *(v29 + 48);
            *(v29 + 48) = v33;
            do
            {
              v28 += 56;
            }

            while ((reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v28, v118) & 1) != 0);
            do
            {
              v29 -= 56;
            }

            while (!reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v29, v118));
          }

          while (v28 < v29);
          v36 = (v28 - 56);
        }

        if (v36 != a1)
        {
          std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(a1, v36);
        }

        std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v36, v118);
        if (SHIBYTE(v121) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v119) < 0)
        {
          operator delete(v118[0]);
        }

        if (v25 >= v26)
        {
          break;
        }

LABEL_41:
        std::__introsort<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,false>(a1, v36, a3, a4 & 1);
        a4 = 0;
        v9 = v36 + 56;
      }

      v37 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *>(a1, v36);
      v9 = v36 + 56;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *>(v36 + 56, v112))
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_41;
      }
    }

    a2 = v36;
    if (!v37)
    {
      continue;
    }

    break;
  }
}

uint64_t reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v2 = a1 + 24;
  v3 = v4;
  v5 = *(v2 + 8);
  if (*(v2 + 23) >= 0)
  {
    v6 = *(v2 + 23);
  }

  else
  {
    v2 = v3;
    v6 = v5;
  }

  v9 = *(a2 + 24);
  v7 = a2 + 24;
  v8 = v9;
  v10 = *(v7 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 8);
  }

  else
  {
    v8 = v7;
  }

  if (v10 != 11)
  {
    if (v6 == 11)
    {
      if (*v2 == 0x6A2E726564616568 && *(v2 + 3) == 0x6E6F736A2E726564)
      {
        return 1;
      }

      if (v10 != 13)
      {
        return 0;
      }
    }

    else if (v10 != 13)
    {
LABEL_32:
      if (v6 == 13)
      {
        return memcmp(v2, "assetMap.json", v6) == 0;
      }

      return 0;
    }

    if (*v8 ^ 0x70614D7465737361 | *(v8 + 5) ^ 0x6E6F736A2E70614DLL)
    {
      v17 = v6 == 13;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      return memcmp(v2, "assetMap.json", v6) == 0;
    }

    return 0;
  }

  v11 = *v8;
  v12 = *(v8 + 3);
  if (v11 == 0x6A2E726564616568 && v12 == 0x6E6F736A2E726564)
  {
    return 0;
  }

  if (v6 != 11)
  {
    goto LABEL_32;
  }

  return *v2 == 0x6A2E726564616568 && *(v2 + 3) == 0x6E6F736A2E726564;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a2, a1);
  result = reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a3, a2);
  if (v6)
  {
    if (result)
    {
      v8 = (a1 + 48);
      v9 = *(a1 + 16);
      v10 = *a1;
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *a3 = v10;
      *(a3 + 16) = v9;
      v12 = *(a1 + 40);
      v13 = *(a1 + 24);
      v14 = *(a3 + 40);
      *(a1 + 24) = *(a3 + 24);
      *(a1 + 40) = v14;
    }

    else
    {
      v28 = *(a1 + 16);
      v29 = *a1;
      v30 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v30;
      *a2 = v29;
      *(a2 + 16) = v28;
      v31 = *(a1 + 40);
      v32 = *(a1 + 24);
      v33 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v33;
      *(a2 + 24) = v32;
      *(a2 + 40) = v31;
      v8 = (a2 + 48);
      LOBYTE(v33) = *(a1 + 48);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 48) = v33;
      result = reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a3, a2);
      if (!result)
      {
        return result;
      }

      v34 = *(a2 + 16);
      v35 = *a2;
      v36 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v36;
      *a3 = v35;
      *(a3 + 16) = v34;
      v12 = *(a2 + 40);
      v13 = *(a2 + 24);
      v37 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v37;
    }

    *(a3 + 24) = v13;
    *(a3 + 40) = v12;
    v21 = (a3 + 48);
    goto LABEL_10;
  }

  if (result)
  {
    v15 = *(a2 + 16);
    v16 = *a2;
    v17 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v17;
    *a3 = v16;
    *(a3 + 16) = v15;
    v18 = *(a2 + 40);
    v19 = *(a2 + 24);
    v20 = *(a3 + 40);
    *(a2 + 24) = *(a3 + 24);
    *(a2 + 40) = v20;
    *(a3 + 24) = v19;
    *(a3 + 40) = v18;
    v21 = (a2 + 48);
    LOBYTE(v18) = *(a2 + 48);
    *(a2 + 48) = *(a3 + 48);
    *(a3 + 48) = v18;
    result = reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a2, a1);
    if (result)
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      v24 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v24;
      *a2 = v23;
      *(a2 + 16) = v22;
      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      v27 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v27;
      *(a2 + 24) = v26;
      *(a2 + 40) = v25;
      v8 = (a1 + 48);
LABEL_10:
      v38 = *v8;
      *v8 = *v21;
      *v21 = v38;
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a2, a3);
  if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a4, a3))
  {
    v10 = *(a3 + 16);
    v11 = *a3;
    v12 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v12;
    *a4 = v11;
    *(a4 + 16) = v10;
    v13 = *(a3 + 40);
    v14 = *(a3 + 24);
    v15 = *(a4 + 40);
    *(a3 + 24) = *(a4 + 24);
    *(a3 + 40) = v15;
    *(a4 + 24) = v14;
    *(a4 + 40) = v13;
    LOBYTE(v13) = *(a3 + 48);
    *(a3 + 48) = *(a4 + 48);
    *(a4 + 48) = v13;
    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a3, a2))
    {
      v16 = *(a2 + 16);
      v17 = *a2;
      v18 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v18;
      *a3 = v17;
      *(a3 + 16) = v16;
      v19 = *(a2 + 40);
      v20 = *(a2 + 24);
      v21 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v21;
      *(a3 + 24) = v20;
      *(a3 + 40) = v19;
      LOBYTE(v19) = *(a2 + 48);
      *(a2 + 48) = *(a3 + 48);
      *(a3 + 48) = v19;
      if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a2, a1))
      {
        v22 = *(a1 + 16);
        v23 = *a1;
        v24 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v24;
        *a2 = v23;
        *(a2 + 16) = v22;
        v25 = *(a1 + 40);
        v26 = *(a1 + 24);
        v27 = *(a2 + 40);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = v27;
        *(a2 + 24) = v26;
        *(a2 + 40) = v25;
        LOBYTE(v25) = *(a1 + 48);
        *(a1 + 48) = *(a2 + 48);
        *(a2 + 48) = v25;
      }
    }
  }

  if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a5, a4))
  {
    v29 = *(a4 + 16);
    v30 = *a4;
    v31 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v31;
    *a5 = v30;
    *(a5 + 16) = v29;
    v32 = *(a4 + 40);
    v33 = *(a4 + 24);
    v34 = *(a5 + 40);
    *(a4 + 24) = *(a5 + 24);
    *(a4 + 40) = v34;
    *(a5 + 24) = v33;
    *(a5 + 40) = v32;
    LOBYTE(v32) = *(a4 + 48);
    *(a4 + 48) = *(a5 + 48);
    *(a5 + 48) = v32;
    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a4, a3))
    {
      v35 = *(a3 + 16);
      v36 = *a3;
      v37 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v37;
      *a4 = v36;
      *(a4 + 16) = v35;
      v38 = *(a3 + 40);
      v39 = *(a3 + 24);
      v40 = *(a4 + 40);
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 40) = v40;
      *(a4 + 24) = v39;
      *(a4 + 40) = v38;
      LOBYTE(v38) = *(a3 + 48);
      *(a3 + 48) = *(a4 + 48);
      *(a4 + 48) = v38;
      if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a3, a2))
      {
        v41 = *(a2 + 16);
        v42 = *a2;
        v43 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v43;
        *a3 = v42;
        *(a3 + 16) = v41;
        v44 = *(a2 + 40);
        v45 = *(a2 + 24);
        v46 = *(a3 + 40);
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 40) = v46;
        *(a3 + 24) = v45;
        *(a3 + 40) = v44;
        LOBYTE(v44) = *(a2 + 48);
        *(a2 + 48) = *(a3 + 48);
        *(a3 + 48) = v44;
        if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a2, a1))
        {
          v47 = *(a1 + 16);
          v48 = *a1;
          v49 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v49;
          *a2 = v48;
          *(a2 + 16) = v47;
          v50 = *(a1 + 40);
          result = *(a1 + 24);
          v51 = *(a2 + 40);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = v51;
          *(a2 + 24) = result;
          *(a2 + 40) = v50;
          LOBYTE(v50) = *(a1 + 48);
          *(a1 + 48) = *(a2 + 48);
          *(a2 + 48) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a1 + 56, a2 - 56);
        break;
      case 4:
        v20 = (a2 - 56);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a1 + 56, a1 + 112);
        if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a2 - 56, a1 + 112))
        {
          v21 = *(a1 + 128);
          v22 = *(a1 + 112);
          v23 = *(a2 - 40);
          *(a1 + 112) = *v20;
          *(a1 + 128) = v23;
          *v20 = v22;
          *(a2 - 40) = v21;
          v24 = *(a1 + 152);
          v25 = *(a1 + 136);
          v26 = *(a2 - 16);
          *(a1 + 136) = *(a2 - 32);
          *(a1 + 152) = v26;
          *(a2 - 32) = v25;
          *(a2 - 16) = v24;
          LOBYTE(v24) = *(a1 + 160);
          *(a1 + 160) = *(a2 - 8);
          *(a2 - 8) = v24;
          if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a1 + 112, a1 + 56))
          {
            v27 = *(a1 + 72);
            v28 = *(a1 + 56);
            *(a1 + 56) = *(a1 + 112);
            *(a1 + 72) = *(a1 + 128);
            *(a1 + 112) = v28;
            *(a1 + 128) = v27;
            v29 = *(a1 + 96);
            v30 = *(a1 + 80);
            *(a1 + 80) = *(a1 + 136);
            *(a1 + 96) = *(a1 + 152);
            *(a1 + 136) = v30;
            *(a1 + 152) = v29;
            LOBYTE(v29) = *(a1 + 104);
            v31 = *(a1 + 160);
            *(a1 + 104) = v31;
            *(a1 + 160) = v29;
            if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a1 + 56, a1))
            {
              v32 = *(a1 + 16);
              v33 = *a1;
              *a1 = *(a1 + 56);
              *(a1 + 16) = *(a1 + 72);
              *(a1 + 56) = v33;
              *(a1 + 72) = v32;
              v34 = *(a1 + 40);
              v35 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 80);
              *(a1 + 40) = *(a1 + 96);
              *(a1 + 80) = v35;
              *(a1 + 96) = v34;
              LOBYTE(v34) = *(a1 + 48);
              *(a1 + 48) = v31;
              result = 1;
              *(a1 + 104) = v34;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 56);
    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(a2 - 56, a1))
    {
      v6 = *(a1 + 16);
      v7 = *a1;
      v8 = *(a2 - 40);
      *a1 = *v5;
      *(a1 + 16) = v8;
      *v5 = v7;
      *(a2 - 40) = v6;
      v9 = *(a1 + 40);
      v10 = *(a1 + 24);
      v11 = *(a2 - 16);
      *(a1 + 24) = *(a2 - 32);
      *(a1 + 40) = v11;
      *(a2 - 32) = v10;
      *(a2 - 16) = v9;
      LOBYTE(v9) = *(a1 + 48);
      *(a1 + 48) = *(a2 - 8);
      *(a2 - 8) = v9;
    }

    return 1;
  }

LABEL_11:
  v12 = a1 + 112;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,reality_archive_file_pack(char const*,char const*,BOOL)::$_0 &,std::tuple<std::string,std::string,BOOL> *,0>(a1, a1 + 56, a1 + 112);
  v13 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    if (reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v13, v12))
    {
      *v37 = *v13;
      v38 = *(v13 + 16);
      *v13 = 0;
      *(v13 + 8) = 0;
      v16 = *(v13 + 24);
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      __p = v16;
      v40 = *(v13 + 40);
      v41 = *(v13 + 48);
      v17 = v14;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      while (1)
      {
        std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(a1 + v17 + 168, (a1 + v17 + 112));
        if (v17 == -112)
        {
          break;
        }

        v18 = reality_archive_file_pack(char const*,char const*,BOOL)::$_0::operator()(v37, a1 + v17 + 56);
        v17 -= 56;
        if ((v18 & 1) == 0)
        {
          v19 = a1 + v17 + 168;
          goto LABEL_19;
        }
      }

      v19 = a1;
LABEL_19:
      std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(v19, v37);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
      }

      if (++v15 == 8)
      {
        return v13 + 56 == a2;
      }
    }

    v12 = v13;
    v14 += 56;
    v13 += 56;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,std::string,BOOL>,std::tuple<std::string,std::string,BOOL>,std::string,std::string,BOOL,0ul,1ul,2ul>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = result;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  return result;
}

uint64_t re::NamedFileRegistry::registerFileNameAlias(os_unfair_lock_s *a1, uint64_t a2, const char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  re::DynamicString::DynamicString(v21, a2);
  re::NamedFileRegistry::tryGetFilePathFor(a1, v21, v22);
  if (*&v21[0])
  {
    if (BYTE8(v21[0]))
    {
      (*(**&v21[0] + 40))();
    }

    memset(v21, 0, sizeof(v21));
  }

  if ((v22[0] & 1) == 0)
  {
    os_unfair_lock_lock(a1);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&a1[2], a2, a3);
    os_unfair_lock_unlock(a1);
LABEL_17:
    v17 = 1;
    goto LABEL_29;
  }

  if (v24)
  {
    v6 = v26;
  }

  else
  {
    v6 = v25;
  }

  v7 = (a3 + 9);
  if (*(a3 + 1))
  {
    v8 = *(a3 + 2);
  }

  else
  {
    v8 = a3 + 9;
  }

  v9 = strcmp(v6, v8);
  v10 = v9;
  v11 = *re::assetsLogObjects(v9);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      if (*(a2 + 8))
      {
        v18 = *(a2 + 16);
      }

      else
      {
        v18 = a2 + 9;
      }

      if (a3[8])
      {
        v7 = *(a3 + 2);
      }

      *buf = 136315394;
      v28 = v18;
      v29 = 2080;
      v30 = v7;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "FileNameAlias '%s' already registered for file '%s'", buf, 0x16u);
    }

    goto LABEL_17;
  }

  if (v12)
  {
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = *(a2 + 16);
    }

    else
    {
      v16 = a2 + 9;
    }

    if (a3[8])
    {
      v7 = *(a3 + 2);
    }

    if (v15)
    {
      v19 = *(a2 + 16);
    }

    else
    {
      v19 = a2 + 9;
    }

    *buf = 136315650;
    v28 = v16;
    v29 = 2080;
    v30 = v7;
    v31 = 2080;
    v32 = v19;
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Failed to register '%s' alias for file '%s'! FileAlias '%s' already registered for different file.", buf, 0x20u);
  }

  v17 = 0;
LABEL_29:
  if (v22[0] == 1 && v23 && (v24 & 1) != 0)
  {
    (*(*v23 + 40))(v23, v26, v13, v14);
  }

  return v17;
}

void re::NamedFileRegistry::tryGetFilePathFor(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  os_unfair_lock_lock(a1);
  v6 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&a1[2], a2);
  if (v6)
  {
    *a3 = 1;
    re::DynamicString::DynamicString((a3 + 8), v6);
  }

  else
  {
    *a3 = 0;
  }

  os_unfair_lock_unlock(a1);
}

void re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_2, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 80;
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

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, const re::DynamicString *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v9) + 40;
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, const re::DynamicString *a4)
{
  v7 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  re::DynamicString::DynamicString((v7 + 40), a4);
  ++*(a1 + 40);
  return v7 + 40;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = re::DynamicString::operator==(v10 + 80 * v8 + 8, a2);
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
      result = re::DynamicString::operator==(v10 + 80 * v11 + 8, a2);
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
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

BOOL re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(a1, v6);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 80 * v7 + 40;
  }
}

re::RealityFileWriter *re::RealityFileWriter::RealityFileWriter(re::RealityFileWriter *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9058;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 60) = 0x7FFFFFFFLL;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 156) = 0x7FFFFFFFLL;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 0;
  *(this + 204) = 0x7FFFFFFFLL;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  re::DynamicString::setCapacity(this + 27, 0);
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 35) = 0x7FFFFFFF00000000;
  *(this + 72) = 0;
  v3 = re::RealityArchiveWriter::RealityArchiveWriter((this + 296));
  *(this + 102) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 112) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 126) = 0;
  *(this + 508) = 0x7FFFFFFFLL;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 0;
  *(this + 556) = 0x7FFFFFFFLL;
  *(this + 568) = 0;
  *(this + 38) = 0u;
  *(this + 37) = 0u;
  *(this + 36) = 0u;
  re::make::shared::object<re::RealityFileWritingParameters>(v3, &v8);
  v4 = *(this + 47);
  v5 = v8;
  *(this + 47) = v8;
  v8 = v4;
  if (v4)
  {

    v5 = *(this + 47);
  }

  if (*(v5 + 24) < 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  *(this + 90) = v6;
  return this;
}

uint64_t re::RealityFileWriter::RealityFileWriter(uint64_t a1, uint64_t *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB9058;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  re::DynamicString::setCapacity((a1 + 216), 0);
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0x7FFFFFFF00000000;
  *(a1 + 288) = 0;
  re::RealityArchiveWriter::RealityArchiveWriter((a1 + 296));
  *(a1 + 408) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 508) = 0x7FFFFFFFLL;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0x7FFFFFFFLL;
  *(a1 + 568) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 576) = 0u;
  v5 = *a2;
  if (v5)
  {
    v6 = (v5 + 8);
    v7 = *(a1 + 376);
    if (v7)
    {
    }

    *(a1 + 376) = v5;
  }

  if (*(v5 + 24) < 3)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(a1 + 360) = v8;
  return a1;
}

void re::RealityFileWriter::~RealityFileWriter(re::RealityFileWriter *this)
{
  *this = &unk_1F5CB9058;
  re::FixedArray<re::DynamicString>::deinit(this + 75);
  re::FixedArray<re::DynamicString>::deinit(this + 72);
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 65);
  v2.n128_f64[0] = re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 59);
  v3 = *(this + 58);
  if (v3)
  {

    *(this + 58) = 0;
  }

  v4 = *(this + 53);
  if (v4)
  {
    v5 = *(this + 57);
    if (v5)
    {
      v6 = *(this + 55);
      if (v6)
      {
        v7 = 40 * v6;
        do
        {
          re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(v5);
          v5 += 40;
          v7 -= 40;
        }

        while (v7);
        v4 = *(this + 53);
        v5 = *(this + 57);
      }

      (*(*v4 + 40))(v4, v5, v2);
    }

    *(this + 57) = 0;
    *(this + 54) = 0;
    *(this + 55) = 0;
    *(this + 53) = 0;
    ++*(this + 112);
  }

  v8 = *(this + 48);
  if (v8)
  {
    v9 = *(this + 52);
    if (v9)
    {
      v10 = *(this + 50);
      if (v10)
      {
        v11 = 40 * v10;
        do
        {
          re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetPath const&,re::AssetService *)>::destroyCallable(v9);
          v9 += 40;
          v11 -= 40;
        }

        while (v11);
        v8 = *(this + 48);
        v9 = *(this + 52);
      }

      (*(*v8 + 40))(v8, v9, v2);
    }

    *(this + 52) = 0;
    *(this + 49) = 0;
    *(this + 50) = 0;
    *(this + 48) = 0;
    ++*(this + 102);
  }

  v12 = *(this + 47);
  if (v12)
  {

    *(this + 47) = 0;
  }

  re::RealityArchiveWriter::~RealityArchiveWriter((this + 296));
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 31);
  re::DynamicString::deinit((this + 216));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 21);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 15);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 9);
  re::HashTable<re::DynamicString,re::SharedPtr<re::internal::AssetEntry>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityFileWriter::~RealityFileWriter(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<BOOL ()(re::AssetPathMapping &,re::AssetService *)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RealityFileWriter::setOrClearMetadataString(_anonymous_namespace_ *a1, StringID *a2, const char *a3)
{
  if (a3)
  {
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 520, a2, &v8);
    result = v8;
    if (v8)
    {
      if (v9)
      {
        return (*(*v8 + 40))();
      }
    }
  }

  else
  {
    v7 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 520, a2, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), &v8);
    return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 520, &v8);
  }

  return result;
}

re::DynamicString *re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, re::DynamicString *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicString>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 56 * v7 + 24), a3);
}

re::DynamicString *re::RealityFileWriter::getMetadataString@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 520, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v8);
  if (v9 == 0x7FFFFFFF)
  {
    *a3 = 0;
  }

  else
  {
    v7 = *(a1 + 536) + 56 * v9;
    *a3 = 1;
    return re::DynamicString::DynamicString((a3 + 8), (v7 + 24));
  }

  return result;
}

uint64_t re::RealityFileWriter::open@<X0>(re::RealityFileWriter *this@<X0>, const re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 40))
  {
    v4 = v17;
    v17 = 0;
    *a3 = 0;
    *(a3 + 8) = v4;

    result = v14;
    if (v14 && (v15 & 1) != 0)
    {
      v6 = v16;
      return (*(*result + 40))(result, v6);
    }
  }

  else
  {
    if (*(a2 + 1))
    {
      v9 = *(a2 + 2);
    }

    else
    {
      v9 = (a2 + 9);
    }

    re::filePathWithURL(v9, &v17);
    if (v18)
    {
      v10 = v20;
    }

    else
    {
      v10 = v19;
    }

    re::RealityArchiveWriter::open((this + 296), v10, &v14);
    if (v14)
    {
      re::DynamicString::operator=((this + 216), a2);
      v11 = 1;
    }

    else
    {
      v12 = v13;
      v13 = 0;
      *(a3 + 8) = v12;

      v11 = 0;
    }

    *a3 = v11;
    if (v14 & 1) == 0 && v15 && (v16)
    {
      (*(*v15 + 40))();
    }

    result = v17;
    if (v17 && (v18 & 1) != 0)
    {
      v6 = v20;
      return (*(*result + 40))(result, v6);
    }
  }

  return result;
}

void anonymous namespace::makeError(__CFString *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = *(a2 + 16);
    }

    else
    {
      v6 = a2 + 9;
    }

    re::WrappedError::make(@"RERealityFileWriterErrorDomain", this, v6, a3);
  }

  else
  {
    re::WrappedError::make(@"RERealityFileWriterErrorDomain", this, 0, a3);
  }
}

{
  v4 = *(a2 + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = *(a2 + 16);
    }

    else
    {
      v6 = a2 + 9;
    }

    re::WrappedError::make(@"RERealityFileErrorDomain", this, v6, a3);
  }

  else
  {
    re::WrappedError::make(@"RERealityFileErrorDomain", this, 0, a3);
  }
}

BOOL re::RealityFileWriter::isAssetWritten(re::RealityFileWriter *this, const re::AssetHandle *a2)
{
  v3 = re::AssetHandle::legacy_assetPath(a2);
  v4 = *(v3 + 1);
  v10 = 0;
  v11 = 0;
  v8 = v4;
  v9 = 0;
  re::DynamicString::setCapacity(&v8, 0);
  re::AssetPath::fullAssetPath(v3, &v8);
  re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo((this + 24), &v8, &v7);
  if (v7)
  {
    v5 = *(v7 + 24) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return v5;
}

uint64_t *re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo@<X0>(re::RealityFileWriter::AssetInfoTable *this@<X0>, const re::DynamicString *a2@<X1>, uint64_t *a3@<X8>)
{
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this, a2);
  if (result)
  {
    v5 = *result;
    *a3 = *result;
    if (v5)
    {

      return (v5 + 8);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::RealityFileWriter::writeAsset(uint64_t a1, re::AssetHandle *a2, re::RealityFileWriter::AssetWriteResult **a3)
{
  if (*a3)
  {
    re::RealityFileWriter::AssetWriteResult::clear(*a3);
  }

  if (v111[0])
  {
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    v109 = 0x7FFFFFFFLL;
    v6 = *(*(a2 + 1) + 24);
    v7 = (*(*v6 + 336))(v6);
    v8 = (*(*v7 + 80))(v7, *(*(a1 + 376) + 24));
    v9 = (*(*v6 + 328))(v6, a2, v8);
    if (v9)
    {
      v10 = *a3;
      if (v10)
      {
        re::ObjCObject::operator=(v10 + 12, &v105);
      }

      else
      {
      }

      if (v103 && (v104 & 1) != 0)
      {
        (*(*v103 + 40))();
      }

      if (v10)
      {
      }

      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v106);
      return 0;
    }

    re::RealityFileWriter::getOrMakeAssetInfo(v101, a1, a2);
    if ((v101[0] & 1) == 0)
    {
      v20 = *a3;
      if (*a3)
      {
        v21 = v20 + 8;
        v22 = v102;
        v100 = v22;
        re::ObjCObject::operator=(v20 + 12, &v100);
      }

      else
      {
        v100 = v102;
      }

      v23 = 0;
      goto LABEL_116;
    }

    v14 = v102;
    if (v102)
    {
      v15 = v102 + 8;
    }

    if (v14[6] == 1)
    {
      goto LABEL_13;
    }

    if ((**v7)(v7, a2))
    {
      re::AssetHandle::AssetHandle(v98, a2);
      if ((*(*v7 + 8))(v7, v98, *(*(a1 + 376) + 24)))
      {
        (*(*v7 + 16))(&v103, v7, v98, *(*(a1 + 376) + 24));
        if ((v103 & 1) == 0)
        {
          v38 = *a3;
          if (*a3)
          {
            v43 = v38 + 8;
            v40 = v104;
            v97 = v40;
            v41 = (v38 + 96);
            v42 = &v97;
            goto LABEL_71;
          }

          v47 = v104;
          v97 = v47;
LABEL_88:

          goto LABEL_113;
        }

        re::AssetHandle::operator=(v98, &v104);
        re::Result<re::AssetHandle,re::WrappedError>::~Result(&v103);
      }

      re::RealityFileWriter::remapSceneAsset(&v103, *(a1 + 464), v98, a2 + 56);
      if (v103)
      {
        re::AssetHandle::operator=(v98, &v104);
        v93 = v14;
        v24 = v14 + 2;
        v25 = *(a2 + 89);
        v92[0] = *(a2 + 90);
        if (v92[0] == 1)
        {
          v92[1] = *(a2 + 91);
        }

        re::RealityFileWriter::findDependenciesAndSaveAsset(v94, a1, v7, v98, &v93, &v106, v25, v92);

        v93 = 0;
        if ((v94[0] & 1) == 0)
        {
          v44 = *a3;
          if (*a3)
          {
            v45 = v44 + 8;
            v46 = v95;
            v91 = v46;
            re::ObjCObject::operator=(v44 + 12, &v91);
          }

          else
          {
            v91 = v95;
          }

          goto LABEL_113;
        }

        if ((*(*v7 + 40))(v7, v98, *(*(a1 + 376) + 24)))
        {
          v76 = v14;
          v26 = v14 + 2;
          re::RealityFileWriter::assignSceneSettingsToAssetInfo(&v89, a1, &v76, a2, 1);

          v76 = 0;
          if (v89)
          {
LABEL_41:
            re::Result<re::AssetHandle,re::WrappedError>::~Result(&v103);
            re::AssetHandle::~AssetHandle(v98);
            goto LABEL_13;
          }

          v55 = *a3;
          if (*a3)
          {
            v56 = v55 + 8;
            v57 = v90;
            v75 = v57;
            re::ObjCObject::operator=(v55 + 12, &v75);
          }

          else
          {
            v57 = v90;
            v75 = v57;
          }

          goto LABEL_113;
        }

        (*(*v7 + 48))(&v89, v7, v98, *(*(a1 + 376) + 24));
        re::RealityFileWriter::getOrMakeAssetInfo(v87, a1, &v89);
        if (v87[0])
        {
          v48 = v88;
          if (v88)
          {
            v49 = v88 + 8;
            v50 = v48 + 8;
          }

          v83 = v48;
          v51 = *(a2 + 89);
          v82[0] = *(a2 + 90);
          if (v82[0] == 1)
          {
            v82[1] = *(a2 + 91);
          }

          re::RealityFileWriter::findDependenciesAndSaveAsset(v84, a1, v7, &v89, &v83, &v106, v51, v82);
          if (v48)
          {

            v83 = 0;
            v52 = v84[0];
            if (v84[0])
            {
              v78 = v48;
              v53 = v48 + 8;
              re::RealityFileWriter::assignSceneSettingsToAssetInfo(v79, a1, &v78, a2, 1);

              v78 = 0;
              goto LABEL_97;
            }
          }

          else
          {
            v52 = v84[0];
            if (v84[0])
            {
              v78 = 0;
              re::RealityFileWriter::assignSceneSettingsToAssetInfo(v79, a1, &v78, a2, 1);
LABEL_97:
              v62 = v79[0];
              if (v79[0])
              {
                re::RealityFileWriter::AssetInfo::addSceneVariant(v48, (v14 + 8), v54);
              }

              else
              {
                v66 = *a3;
                if (*a3)
                {
                  v67 = v66 + 8;
                  v68 = v80;
                  v77 = v68;
                  re::ObjCObject::operator=(v66 + 12, &v77);
                }

                else
                {
                  v68 = v80;
                  v77 = v68;
                }
              }

              if (v48)
              {
              }

              re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v87);
              re::AssetHandle::~AssetHandle(&v89);
              if (v62)
              {
                goto LABEL_41;
              }

              goto LABEL_113;
            }
          }

          v63 = *a3;
          if (*a3)
          {
            v64 = v63 + 8;
            v65 = v85;
            v81 = v65;
            re::ObjCObject::operator=(v63 + 12, &v81);
          }

          else
          {
            v65 = v85;
            v81 = v65;
          }

          if ((v52 & 1) == 0)
          {
          }

          if (!v48)
          {
            goto LABEL_112;
          }

          v61 = v48 + 8;
        }

        else
        {
          v58 = *a3;
          if (!*a3)
          {
            v86 = v88;

LABEL_112:
            re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v87);
            re::AssetHandle::~AssetHandle(&v89);
            goto LABEL_113;
          }

          v59 = v58 + 8;
          v60 = v88;
          v86 = v60;
          re::ObjCObject::operator=(v58 + 12, &v86);

          v61 = v58 + 8;
        }

        goto LABEL_112;
      }

      v38 = *a3;
      if (*a3)
      {
        v39 = v38 + 8;
        v40 = v104;
        v96 = v40;
        v41 = (v38 + 96);
        v42 = &v96;
LABEL_71:
        re::ObjCObject::operator=(v41, v42);

LABEL_113:
        re::Result<re::AssetHandle,re::WrappedError>::~Result(&v103);
        re::AssetHandle::~AssetHandle(v98);
        goto LABEL_114;
      }

      v47 = v104;
      v96 = v47;
      goto LABEL_88;
    }

    v74 = v14;
    v27 = v14 + 2;
    v28 = *(a2 + 89);
    v73[0] = *(a2 + 90);
    if (v73[0] == 1)
    {
      v73[1] = *(a2 + 91);
    }

    re::RealityFileWriter::findDependenciesAndSaveAsset(&v103, a1, v7, a2, &v74, &v106, v28, v73);

    v74 = 0;
    if (v103)
    {
      v71 = v14;
      v29 = v14 + 2;
      re::RealityFileWriter::assignLabelToAssetInfo(a1, &v71, (a2 + 56), v98);

      v71 = 0;
      if (v98[0] == 1)
      {
LABEL_13:
        if (*a3)
        {
          re::DynamicString::operator=((*a3 + 24), (v14 + 8));
          v16 = v108;
          if (v108)
          {
            v17 = 0;
            v18 = (v107 + 8);
            while (1)
            {
              v19 = *v18;
              v18 += 10;
              if (v19 < 0)
              {
                break;
              }

              if (v108 == ++v17)
              {
                LODWORD(v17) = v108;
                break;
              }
            }
          }

          else
          {
            LODWORD(v17) = 0;
          }

          if (v17 != v108)
          {
            v35 = v107;
            do
            {
              re::AssetHandle::AssetHandle(&v103, (v35 + 40 * v17 + 16));
              re::DynamicArray<re::AssetHandle>::add((*a3 + 56), &v103);
              re::AssetHandle::~AssetHandle(&v103);
              v35 = v107;
              if (v108 <= v17 + 1)
              {
                v36 = v17 + 1;
              }

              else
              {
                v36 = v108;
              }

              while (v36 - 1 != v17)
              {
                LODWORD(v17) = v17 + 1;
                if ((*(v107 + 40 * v17 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_61;
                }
              }

              LODWORD(v17) = v36;
LABEL_61:
              ;
            }

            while (v17 != v16);
          }

          v23 = 1;
          if (!v14)
          {
            goto LABEL_116;
          }
        }

        else
        {
          v23 = 1;
        }

        goto LABEL_115;
      }

      v30 = *a3;
      if (*a3)
      {
        v31 = v30 + 8;
        v32 = v99;
        v70 = v32;
        v33 = (v30 + 96);
        v34 = &v70;
LABEL_66:
        re::ObjCObject::operator=(v33, v34);

LABEL_86:
LABEL_114:
        v23 = 0;
LABEL_115:

LABEL_116:
        re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v101);
        re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v106);
        return v23;
      }

      v32 = v99;
      v70 = v32;
    }

    else
    {
      v30 = *a3;
      if (*a3)
      {
        v37 = v30 + 8;
        v32 = v104;
        v72 = v32;
        v33 = (v30 + 96);
        v34 = &v72;
        goto LABEL_66;
      }

      v32 = v104;
      v72 = v32;
    }

    goto LABEL_86;
  }

  v11 = *a3;
  if (*a3)
  {
    v12 = v11 + 8;
    v13 = v112;
    v110 = v13;
    re::ObjCObject::operator=(v11 + 12, &v110);
  }

  else
  {
    v110 = v112;
  }

  return 0;
}

void re::RealityFileWriter::AssetWriteResult::clear(re::RealityFileWriter::AssetWriteResult *this)
{
  if (*(this + 32))
  {
    *(this + 4) = 1;
    v2 = *(this + 5);
  }

  else
  {
    *(this + 32) = 0;
    v2 = this + 33;
  }

  *v2 = 0;
  re::DynamicArray<re::AssetHandle>::clear((this + 56));
  v3 = *(this + 12);
  *(this + 12) = 0;
}

_BYTE *anonymous namespace::checkAssetIsValid(_BYTE *this, const re::AssetHandle *a2)
{
  v2 = this;
  v3 = *(a2 + 1);
  if (v3 && *(v3 + 24))
  {
    v4 = atomic_load((v3 + 896));
    if (v4 == 2)
    {
      *this = 1;
      return this;
    }

    v9 = re::AssetHandle::legacy_assetPath(a2);
    v10 = *(v9 + 1);
    v15 = 0;
    v16 = 0;
    v13 = v10;
    v14 = 0;
    re::DynamicString::setCapacity(&v13, 0);
    re::AssetPath::fullAssetPath(v9, &v13);
    if (v14)
    {
      v11 = v15;
    }

    else
    {
      v11 = &v14 + 1;
    }

    re::DynamicString::format("The asset (%s) is not loaded.", v17, v11);
    v8 = 4;
  }

  else
  {
    v5 = re::AssetHandle::legacy_assetPath(a2);
    v6 = *(v5 + 1);
    v15 = 0;
    v16 = 0;
    v13 = v6;
    v14 = 0;
    re::DynamicString::setCapacity(&v13, 0);
    re::AssetPath::fullAssetPath(v5, &v13);
    if (v14)
    {
      v7 = v15;
    }

    else
    {
      v7 = &v14 + 1;
    }

    re::DynamicString::format("The asset (%s) is not bound to an AssetService.", v17, v7);
    v8 = 3;
  }

  v12 = v18;
  v18 = 0;
  *v2 = 0;
  *(v2 + 1) = v12;

  if (*&v17[0])
  {
    if (BYTE8(v17[0]))
    {
      (*(**&v17[0] + 40))();
    }

    memset(v17, 0, sizeof(v17));
  }

  this = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))();
    }
  }

  return this;
}

uint64_t re::RealityFileWriter::getOrMakeAssetInfo(re::RealityFileWriter *this, const re::AssetHandle *a2, re::AssetHandle *a3)
{
  v6 = re::AssetHandle::legacy_assetPath(a3);
  v7 = *(v6 + 1);
  v14 = 0;
  v15 = 0;
  v12 = v7;
  v13 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::AssetPath::fullAssetPath(v6, &v12);
  re::RealityFileWriter::getOrMakeAssetInfo(this, a2, &v12, *(*(*(a3 + 1) + 280) + 8), **(*(a3 + 1) + 280));
  if (*this == 1)
  {
    v9 = *(this + 1);
    re::AssetHandle::composedMetadata(a3, v11);
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v9 + 296), v11);
    v8.n128_f64[0] = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v11);
  }

  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))(v8);
    }
  }

  return result;
}

unsigned __int8 *re::Result<re::AssetHandle,re::WrappedError>::~Result(unsigned __int8 *a1)
{
  v3 = *a1;
  v2 = (a1 + 8);
  if (v3 == 1)
  {
    re::AssetHandle::~AssetHandle(v2);
  }

  else
  {
  }

  return a1;
}

void re::RealityFileWriter::remapSceneAsset(re::RealityFileWriter *this, const re::AssetHandle *a2, const re::DynamicString *a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(*a2 + 32);

    v5(a2, a3, a4);
  }

  else
  {
    re::AssetHandle::AssetHandle(&v6, a3);
    *this = 1;
    *(this + 8) = v6;
    v6 = 0uLL;
    *(this + 3) = v7;
    v7 = 0;
    re::AssetHandle::~AssetHandle(&v6);
  }
}

void re::RealityFileWriter::findDependenciesAndSaveAsset(uint64_t a1, void *a2, uint64_t a3, const re::AssetHandle *a4, uint64_t *a5, uint64_t a6, unsigned int a7, _BYTE *a8)
{
  v11 = a5;
  v66 = *a5;
  v16 = v66;
  if (v66)
  {
    v17 = (v66 + 8);
    re::RealityFileWriter::checkAssetIsWritable(v67, a4, &v66);

    v66 = 0;
  }

  else
  {
    re::RealityFileWriter::checkAssetIsWritable(v67, a4, &v66);
  }

  if (v67[0] == 1)
  {
    v48 = a8;
    v49 = a7;
    v50 = a1;
    v18 = *(a4 + 1);
    if (v18)
    {
      v19 = *(v18 + 24);
    }

    else
    {
      v19 = 0;
    }

    v21 = (*(*a3 + 80))(a3, *(a2[47] + 24));
    re::AssetManager::findDependencies(v19, a4, v63);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v62 = 0x7FFFFFFFLL;
    if (v64)
    {
      v22 = v11;
      v23 = v65;
      v24 = 24 * v64;
      do
      {
        if (*(v23 + 1) && (re::AssetManager::isDeviceAsset(v19, v23, v21) & 1) == 0)
        {
          re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(&v59, v23);
        }

        v23 = (v23 + 24);
        v24 -= 24;
      }

      while (v24);
      v25 = v61;
      v11 = v22;
      if (v61)
      {
        v26 = 0;
        v27 = v60;
        v28 = 8;
        while ((*(v60 + v28) & 0x80000000) == 0)
        {
          ++v26;
          v28 += 40;
          if (v61 == v26)
          {
            LODWORD(v26) = v61;
            break;
          }
        }

        if (v61 != v26)
        {
          do
          {
            re::AssetHandle::AssetHandle(v53, (v27 + 40 * v26 + 16));
            re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(a6, v53);
            re::AssetHandle::~AssetHandle(v53);
            v27 = v60;
            if (v61 <= v26 + 1)
            {
              v29 = v26 + 1;
            }

            else
            {
              v29 = v61;
            }

            while (v29 - 1 != v26)
            {
              LODWORD(v26) = v26 + 1;
              if ((*(v60 + 40 * v26 + 8) & 0x80000000) != 0)
              {
                goto LABEL_28;
              }
            }

            LODWORD(v26) = v29;
LABEL_28:
            ;
          }

          while (v26 != v25);
        }
      }
    }

    v30 = *v11;
    v56 = v30;
    if (v30)
    {
      v31 = (v30 + 8);
      re::RealityFileWriter::addDependentAssets(v57, a2, &v56, &v59);
    }

    else
    {
      re::RealityFileWriter::addDependentAssets(v57, a2, &v56, &v59);
    }

    if (v57[0])
    {
      v47 = v11;
      v54 = 0;
      memset(v53, 0, sizeof(v53));
      v55 = 0x7FFFFFFFLL;
      v33 = HIDWORD(v60);
      if (HIDWORD(v60))
      {
        v34 = v61;
        if (v61)
        {
          v35 = 0;
          v36 = (v60 + 8);
          while (1)
          {
            v37 = *v36;
            v36 += 10;
            if (v37 < 0)
            {
              break;
            }

            if (v61 == ++v35)
            {
              LODWORD(v35) = v61;
              break;
            }
          }
        }

        else
        {
          LODWORD(v35) = 0;
        }

        if (v35 != v61)
        {
          v39 = v60;
          do
          {
            v40 = v39 + 40 * v35;
            v41 = re::AssetHandle::legacy_assetPath((v40 + 16));
            v42 = *(v41 + 1);
            v72 = 0;
            v73 = 0;
            v71 = 0;
            v70 = v42;
            re::DynamicString::setCapacity(&v70, 0);
            re::AssetPath::fullAssetPath(v41, &v70);
            re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo((a2 + 3), &v70, &v69);
            v43 = v69;
            re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(v53, (v40 + 16), (v69 + 32));
            if (v43)
            {
            }

            if (v70 && (v71 & 1) != 0)
            {
              (*(*v70 + 40))();
            }

            v39 = v60;
            if (v61 <= v35 + 1)
            {
              v44 = v35 + 1;
            }

            else
            {
              v44 = v61;
            }

            while (v44 - 1 != v35)
            {
              LODWORD(v35) = v35 + 1;
              if ((*(v60 + 40 * v35 + 8) & 0x80000000) != 0)
              {
                goto LABEL_55;
              }
            }

            LODWORD(v35) = v44;
LABEL_55:
            ;
          }

          while (v35 != v34);
        }
      }

      v45 = *v47;
      v52 = v45;
      if (v45)
      {
        v46 = (v45 + 8);
      }

      v51[0] = *v48;
      if (v51[0] == 1)
      {
        v51[1] = v48[1];
      }

      re::RealityFileWriter::saveAssetToArchive(v50, a2, a4, &v52, v53, v49, v51, v19[242]);
      if (v45)
      {
      }

      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v53);
      if (v57[0])
      {
LABEL_64:
        re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v59);
        re::DynamicArray<re::AssetHandle>::deinit(v63);
        if (v67[0])
        {
          return;
        }

        goto LABEL_65;
      }
    }

    else
    {
      *v50 = v57[0];
      v38 = v58;
      v58 = 0;
      *(v50 + 8) = v38;
    }

    goto LABEL_64;
  }

  *a1 = v67[0];
  v20 = v68;
  v68 = 0;
  *(a1 + 8) = v20;
LABEL_65:
}

void re::RealityFileWriter::assignSceneSettingsToAssetInfo(_anonymous_namespace_ *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = *a3;
  if (a4)
  {
    re::DynamicString::operator=((v9 + 224), (a4 + 24));
    v11 = *a3;
    if (a5)
    {
      v12 = 1;
    }

    else
    {
      v12 = *(a4 + 88);
    }

    *(v11 + 344) = v12 & 1;
    re::FixedArray<re::DynamicString>::operator=((v11 + 352), a4 + 96);
    if (*(a4 + 104) && ((v15 = *(a4 + 64), (v15 & 1) != 0) ? (v16 = v15 >> 1) : (v16 = v15 >> 1), !v16))
    {
      v13 = *a3;
      v27 = v13;
      v20 = (v13 + 8);
      v18 = &v27;
      v19 = (*a3 + 32);
    }

    else
    {
      v13 = *a3;
      v26 = v13;
      if (!v13)
      {
        re::RealityFileWriter::assignLabelToAssetInfo(a2, &v26, (a4 + 56), a1);
        return;
      }

      v17 = (v13 + 8);
      v18 = &v26;
      v19 = (a4 + 56);
    }

    re::RealityFileWriter::assignLabelToAssetInfo(a2, v18, v19, a1);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    re::DynamicString::setCapacity(&v22, 0);
    re::DynamicString::operator=((v9 + 224), &v22);
    if (v22 && (v23 & 1) != 0)
    {
      (*(*v22 + 40))();
    }

    v13 = *a3;
    *(v13 + 344) = a5;
    v21 = v13;
    v14 = (v13 + 8);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    re::DynamicString::setCapacity(&v22, 0);
    re::RealityFileWriter::assignLabelToAssetInfo(a2, &v21, &v22, a1);
    if (v22 && (v23 & 1) != 0)
    {
      (*(*v22 + 40))();
    }
  }
}

uint64_t re::RealityFileWriter::AssetInfo::addSceneVariant(re::RealityFileWriter::AssetInfo *this, const re::DynamicString *a2, const re::DynamicString *a3)
{
  v6 = 4;
  re::DynamicString::DynamicString(&v7, a2);
  v4 = re::DynamicArray<re::SceneCompatibilityVariant>::add((this + 256), &v6);
  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))(v4);
    }
  }

  return result;
}

uint64_t re::RealityFileWriter::assignLabelToAssetInfo@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result;
  v8 = *(a3 + 1);
  if (v8)
  {
    v9 = v8 >> 1;
  }

  else
  {
    v9 = v8 >> 1;
  }

  if (!v9)
  {
    v13 = *(*a2 + 160);
    if (v13)
    {
      v14 = v13 >> 1;
    }

    else
    {
      v14 = v13 >> 1;
    }

    if (!v14)
    {
      goto LABEL_18;
    }

    re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(result + 472, *a2 + 152);
    goto LABEL_17;
  }

  v10 = re::Hash<re::DynamicString>::operator()(&v17, a3);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6 + 472, a3, v10, &v17);
  if (v19 == 0x7FFFFFFF)
  {
    v11 = *(*a2 + 160);
    if (v11)
    {
      v12 = v11 >> 1;
    }

    else
    {
      v12 = v11 >> 1;
    }

    if (v12)
    {
      re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v6 + 472, *a2 + 152);
    }

    re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v6 + 472, a3, a2);
LABEL_17:
    result = re::DynamicString::operator=((*a2 + 152), a3);
LABEL_18:
    *a4 = 1;
    return result;
  }

  if (*(*(v6 + 488) + 56 * v19 + 40) == *a2)
  {
    goto LABEL_18;
  }

  if (*(a3 + 1))
  {
    v15 = *(a3 + 2);
  }

  else
  {
    v15 = a3 + 9;
  }

  re::DynamicString::format("An asset naming conflict occurred because multiple assets have been assigned the caller name '%s'.", &v17, v15);
  v16 = v20;
  v20 = 0;
  *a4 = 0;
  *(a4 + 8) = v16;

  result = v17;
  if (v17 && (v18 & 1) != 0)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

uint64_t re::RealityFileWriter::writeDataEntry(const re::DynamicString *a1, const char *a2, void *a3, re::RealityFileWriter::AssetWriteResult **a4)
{
  if (*a4)
  {
    re::RealityFileWriter::AssetWriteResult::clear(*a4);
  }

  if (a3[1])
  {
    v8 = a3[2];
  }

  else
  {
    v8 = (a3 + 9);
  }

  v9 = re::path::ext(v8, a2);
  if (v9 && *v9)
  {
    re::RealityFileWriter::getOrMakeAssetInfo(&v38, a1, a3, v9, 0);
    if ((v38 & 1) == 0)
    {
      v18 = *a4;
      if (*a4)
      {
        v19 = v18 + 8;
        v20 = v39;
        v37 = v20;
        re::ObjCObject::operator=(v18 + 12, &v37);
      }

      else
      {
        v37 = v39;
      }

      v24 = 0;
      goto LABEL_51;
    }

    v10 = v39;
    if (v39)
    {
      v11 = v39 + 8;
    }

    if (*(v10 + 6) != 1)
    {
      if (v10[40])
      {
        v12 = *(v10 + 6);
      }

      else
      {
        v12 = (v10 + 41);
      }

      re::RealityFileWriter::saveEntryToArchive(a2, v12, a1 + 296, 0, 0, 0, v35);
      if ((v35[0] & 1) == 0)
      {
        v25 = *a4;
        if (*a4)
        {
          v26 = v25 + 8;
          v27 = v36;
          v34 = v27;
          re::ObjCObject::operator=(v25 + 12, &v34);
        }

        else
        {
          v27 = v36;
          v34 = v27;
        }

        v24 = 0;
LABEL_50:

LABEL_51:
        re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(&v38);
        return v24;
      }

      v29 = 0;
      v30 = 0;
      LODWORD(v31) = 1;
      v32 = 0;
      v33 = 0;
      re::DynamicOverflowArray<re::DynamicString,2ul>::add(&v29, (v10 + 32));
      *(v10 + 6) = 1;
      re::DynamicOverflowArray<re::DynamicString,2ul>::operator=((v10 + 64), &v29);
      re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(&v29);
    }

    if (*a4)
    {
      re::DynamicString::operator=((*a4 + 24), (v10 + 32));
    }

    v24 = 1;
    goto LABEL_50;
  }

  v13 = *a4;
  if (v13)
  {
    v14 = v13 + 8;
    if (a3[1])
    {
      v15 = a3[2];
    }

    else
    {
      v15 = a3 + 9;
    }

    re::DynamicString::format("Could not parse an extension from the path %s.", &v29, v15);
    v16 = v30 >> 1;
    if ((v30 & 1) == 0)
    {
      v16 = v30 >> 1;
    }

    if (v16)
    {
      if (v30)
      {
        v17 = v31;
      }

      else
      {
        v17 = &v30 + 1;
      }

      re::WrappedError::make(@"RERealityFileWriterErrorDomain", 7, v17, &v38);
    }

    else
    {
      re::WrappedError::make(@"RERealityFileWriterErrorDomain", 7, 0, &v38);
    }

    v21 = (v13 + 96);
    if ((v13 + 96) != &v38)
    {
      v22 = v38;
      v38 = 0;
      v23 = *v21;
      *v21 = v22;
    }

    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }
  }

  else
  {
    re::DynamicString::format("Could not parse an extension from the path %s.", &v29, v8);
    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }
  }

  return 0;
}

void re::RealityFileWriter::getOrMakeAssetInfo(re::RealityFileWriter *this, const re::DynamicString *a2, re::DynamicString *a3, const char *a4, const char *a5)
{
  AssetInfo = re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo((a2 + 24), a3, &v54);
  v11 = v54;
  if (v54)
  {
    goto LABEL_2;
  }

  if (a5)
  {
    *v55 = a5;
    re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v59, a2 + 168, v55);
    if (HIDWORD(v59) == 0x7FFFFFFF)
    {
      v59 = 0uLL;
      v60 = 0;
      re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v59, a2 + 168, v55);
      if (HIDWORD(v59) == 0x7FFFFFFF)
      {
        v14 = re::HashTable<char const*,int,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(a2 + 168, DWORD2(v59), v59);
        *(v14 + 8) = a5;
        *(v14 + 16) = 0;
        ++*(a2 + 52);
      }

      v15 = 0;
    }

    else
    {
      v21 = *(a2 + 23) + 32 * HIDWORD(v59);
      v15 = (*(v21 + 16) + 1);
      *(v21 + 16) = v15;
    }

    re::DynamicString::format("%s_%i.%s", &v52, a5, v15, a4);
    v22 = v48;
    if (v48 && (v49 & 1) != 0)
    {
      v23 = *(&v49 + 1);
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v16 = re::DynamicString::DynamicString(&v59, a3);
  re::DynamicString::rfind(v16, 47, v55);
  if (v55[0])
  {
    v17 = *&v55[8] + 1;
  }

  else
  {
    v17 = 0;
  }

  re::DynamicString::rfind(&v59, 58, &v52);
  if (v17 <= v53[0] + 1)
  {
    v18 = v53[0] + 1;
  }

  else
  {
    v18 = v17;
  }

  if (v52)
  {
    v17 = v18;
  }

  v19 = *(&v59 + 1);
  re::DynamicString::rfind(&v59, 46, v57);
  if (v57[0] == 1)
  {
    v20 = v58;
  }

  else
  {
    v20 = v19 >> 1;
    if ((v19 & 1) == 0)
    {
      v20 = v19 >> 1;
    }

    if (!v17)
    {
      goto LABEL_32;
    }
  }

  re::DynamicString::substr(&v59, v17, v20 - v17, &v48);
  re::DynamicString::operator=(&v59, &v48);
  if (v48 && (v49 & 1) != 0)
  {
    (*(*v48 + 40))();
  }

LABEL_32:
  v55[0] = 95;
  re::DynamicString::find(&v59, v55, 1, 0, &v48);
  if (v48 != 1)
  {
    goto LABEL_51;
  }

  v24 = (BYTE8(v59) & 1) != 0 ? *(&v59 + 1) >> 1 : BYTE8(v59) >> 1;
  v25 = v49 + 1;
  if (v49 + 1 >= v24)
  {
    goto LABEL_51;
  }

  v26 = 0;
  v27 = 1;
  v28 = MEMORY[0x1E69E9830];
  do
  {
    v29 = *re::DynamicString::operator[](&v59, v25);
    if ((v27 & 1) == 0)
    {
      if ((v29 & 0x80) != 0 || (*(v28 + 4 * v29 + 60) & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if ((v29 & 0x80) != 0)
    {
      goto LABEL_49;
    }

    if ((*(v28 + 4 * v29 + 60) & 0x10000) == 0)
    {
      if (v29 != 95)
      {
        goto LABEL_49;
      }

LABEL_45:
      v27 = 0;
      goto LABEL_47;
    }

    ++v26;
    v27 = 1;
LABEL_47:
    ++v25;
  }

  while (v24 != v25);
  v25 = v24;
LABEL_49:
  if (v25 != v24 || (v26 - 9) < 0xFFFFFFFB)
  {
LABEL_51:
    re::DynamicString::DynamicString(v55, a3);
    v30 = v56;
    if ((v55[8] & 1) == 0)
    {
      v30 = &v55[9];
    }

    v31 = v55[8] >> 1;
    v32 = 5381;
    if (v55[8])
    {
      v31 = *&v55[8] >> 1;
    }

    for (; v31; --v31)
    {
      v33 = *v30++;
      v32 = v33 - (v32 & 0xFFFFFF) + ((v32 & 0xFFFFFF) << 7);
    }

    if (BYTE8(v59))
    {
      v34 = *(&v59 + 1) >> 1;
    }

    else
    {
      v34 = BYTE8(v59) >> 1;
    }

    if (v34 > 0xF4)
    {
      re::DynamicString::substr(&v59, v34 - 244, 0xF4uLL, &v48);
      re::DynamicString::operator=(&v59, &v48);
      if (v48)
      {
        if (v49)
        {
          (*(*v48 + 40))();
        }
      }
    }

    re::DynamicString::appendf(&v59, "_%x", v32);
    if (*v55)
    {
      if (v55[8])
      {
        (*(**v55 + 40))();
      }

      *v55 = 0u;
      v56 = 0u;
    }
  }

  re::DynamicString::operator+(&v59, ".", &v48);
  re::DynamicString::operator+(&v48, a4, &v52);
  if (v48 && (v49 & 1) != 0)
  {
    (*(*v48 + 40))();
  }

  if (re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(a2 + 72, &v52))
  {
    v35 = 1;
    do
    {
      v36 = v60;
      if ((BYTE8(v59) & 1) == 0)
      {
        v36 = &v59 + 9;
      }

      re::DynamicString::format("%s_%d.%s", &v48, v36, v35, a4);
      re::DynamicString::operator=(&v52, &v48);
      if (v48 && (v49 & 1) != 0)
      {
        (*(*v48 + 40))();
      }

      v35 = (v35 + 1);
    }

    while (re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(a2 + 72, &v52));
  }

  v22 = v59;
  if (v59 && (BYTE8(v59) & 1) != 0)
  {
    v23 = v60;
LABEL_82:
    (*(*v22 + 40))(v22, v23);
  }

LABEL_83:
  v37 = re::Hash<re::DynamicString>::operator()(&v48, a3);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a2 + 24, a3, v37, &v48);
  if (DWORD1(v49) == 0x7FFFFFFF)
  {
    v38 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(a2 + 72, &v52);
    if (v38)
    {
      if (v53[0])
      {
        v39 = v53[1];
      }

      else
      {
        v39 = v53 + 1;
      }

      re::DynamicString::format("The serialization string '%s' is already in use.", &v59, v39);
      goto LABEL_93;
    }

    v43 = re::globalAllocators(v38);
    v11 = (*(*v43[2] + 32))(v43[2], 376, 8);
    ArcSharedObject::ArcSharedObject(v11, 0);
    *v11 = &unk_1F5CB9118;
    *(v11 + 24) = 0;
    v44 = re::DynamicString::DynamicString((v11 + 32), &v52);
    *(v11 + 64) = 0;
    *(v11 + 72) = 0;
    v42 = 1;
    *(v11 + 80) = 1;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    *(v11 + 168) = 0u;
    *(v11 + 152) = 0u;
    v45 = re::DynamicString::setCapacity((v11 + 152), 0);
    *(v11 + 184) = 0;
    *(v11 + 192) = 0;
    *(v11 + 208) = 0;
    *(v11 + 200) = 0;
    *(v11 + 216) = 0u;
    *(v11 + 232) = 0u;
    *(v11 + 248) = 0;
    re::DynamicString::setCapacity((v11 + 224), 0);
    *(v11 + 256) = 0;
    *(v11 + 264) = 0;
    *(v11 + 280) = 0;
    *(v11 + 272) = 0;
    *(v11 + 288) = 0u;
    *(v11 + 304) = 0u;
    *(v11 + 316) = 0u;
    *(v11 + 332) = 0x7FFFFFFFLL;
    *(v11 + 344) = 0;
    *(v11 + 360) = 0;
    *(v11 + 368) = 0;
    *(v11 + 352) = 0;
    *&v59 = v11;
    re::HashTable<re::DynamicString,re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a2 + 24, a3, &v59);
    re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a2 + 72, &v52);
    v46 = (v11 + 8);
    LOBYTE(v48) = 1;
    *&v49 = v11;

    v47 = (v11 + 8);
    v54 = v11;
  }

  else
  {
    if (*(a3 + 1))
    {
      v40 = *(a3 + 2);
    }

    else
    {
      v40 = a3 + 9;
    }

    re::DynamicString::format("The AssetPath '%s' is already in use.", &v59, v40);
LABEL_93:
    LOBYTE(v48) = 0;
    v49 = v59;
    v50 = v60;
    v51 = v61;
    v41 = v59;
    *&v59 = 0;
    *this = 0;
    *(this + 1) = v41;

    v42 = 0;
    v11 = 0;
  }

  if (v48 == 1)
  {
    if (v49)
    {
    }
  }

  else if (v49 && (BYTE8(v49) & 1) != 0)
  {
    (*(*v49 + 40))();
  }

  if (v52 && (v53[0] & 1) != 0)
  {
    (*(*v52 + 40))();
  }

  if (!v42)
  {
    goto LABEL_4;
  }

  if (v11)
  {
LABEL_2:
    v12 = (v11 + 8);
    v13 = v54;
    goto LABEL_3;
  }

  v13 = 0;
LABEL_3:
  *this = 1;
  *(this + 1) = v11;
  v11 = v13;
LABEL_4:
  if (v11)
  {
  }
}

uint64_t re::RealityFileWriter::saveEntryToArchive@<X0>(const __CFData *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  re::DynamicString::format("%s%s", &v20, "assets/", a2);
  if (v21)
  {
    v13 = *&v22[7];
  }

  else
  {
    v13 = v22;
  }

  re::RealityArchiveWriter::writeEntry(a3, v13, a1, a4, a5, a6, v17);
  if (v17[0] == 1)
  {
    *a7 = v17[0];
  }

  else
  {
    v14 = v16;
    v16 = 0;
    *a7 = 0;
    *(a7 + 8) = v14;

    if (v17[0] & 1) == 0 && v18 && (v19)
    {
      (*(*v18 + 40))();
    }
  }

  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::DynamicOverflowArray<re::DynamicString,2ul>::add(uint64_t a1, const re::DynamicString *a2)
{
  re::DynamicOverflowArray<re::DynamicString,2ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  result = re::DynamicString::DynamicString((v4 + 32 * *(a1 + 8)), a2);
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::RealityFileWriter::writeAllDependencies(uint64_t a1, uint64_t a2, re::RealityFileWriter::AssetWriteResult **a3)
{
  v70[3] = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    re::RealityFileWriter::AssetWriteResult::clear(*a3);
  }

  while (2)
  {
    while (2)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 40);
        do
        {
          v9 = *v8;
          v8 += 14;
          if (v9 < 0)
          {
            goto LABEL_15;
          }

          ++v7;
        }

        while (v6 != v7);
        LODWORD(v7) = *(a1 + 56);
      }

      else
      {
        LODWORD(v7) = 0;
      }

      while (1)
      {
LABEL_15:
        if (v7 == v6)
        {
          return 1;
        }

        v11 = *(a1 + 40);
        v12 = *(v11 + 56 * v7 + 40);
        if (v12)
        {
          v13 = (v12 + 8);
        }

        if (!*(v12 + 24))
        {
          break;
        }

        v10 = *(a1 + 56);
        if (v10 <= v7 + 1)
        {
          v10 = v7 + 1;
        }

        while (v10 - 1 != v7)
        {
          LODWORD(v7) = v7 + 1;
          if ((*(*(a1 + 40) + 56 * v7) & 0x80000000) != 0)
          {
            goto LABEL_15;
          }
        }

        LODWORD(v7) = v10;
      }

      v57 = 1;
      re::DynamicString::DynamicString(&v58, (v11 + 56 * v7 + 8));

      if ((v57 & 1) == 0)
      {
        return 1;
      }

      re::DynamicString::DynamicString(&v54, &v58);
      if (v55)
      {
        v14 = *&v56[7];
      }

      else
      {
        v14 = v56;
      }

      (*(*a2 + 8))(v53, a2, v14);
      v51 = 0;
      memset(v50, 0, sizeof(v50));
      v52 = 0x7FFFFFFFLL;
      v15 = re::AssetHandle::legacy_assetPath(v53);
      re::RealityFileWriter::customizeAssetPathMapping(&v48, a1, v50, v15, a2);
      if (v48)
      {
        re::AssetHandle::AssetHandle(v45, v53);
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::HashTable(v41, v50);
        if (v44 && (!v46 ? (v16 = 0) : (v16 = *(v46 + 792)), v41[0] && (v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) >> 27)), v22 = *(v41[1] + 4 * ((v16 ^ (v21 >> 31) ^ v21) % v43)), v22 != 0x7FFFFFFF)))
        {
          while (*(v42 + 72 * v22 + 16) != v46)
          {
            LODWORD(v22) = *(v42 + 72 * v22) & 0x7FFFFFFF;
            if (v22 == 0x7FFFFFFF)
            {
              goto LABEL_36;
            }
          }

          re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v41);
          re::AssetHandle::~AssetHandle(v45);
          v28 = *re::assetsLogObjects(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = **(v53[1] + 280);
            v30 = *(re::AssetHandle::assetInfo(v53) + 10);
            if (v30 == -1)
            {
              v30 = 0;
            }

            *buf = 136315394;
            v61 = v29;
            v62 = 2048;
            v63 = v30;
            _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Not writing remapped %s with assetID: %llu", buf, 0x16u);
          }

          v20 = 3;
        }

        else
        {
LABEL_36:
          re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v41);
          re::AssetHandle::~AssetHandle(v45);
          re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo((a1 + 24), &v54, &v40);
          re::AssetHandle::AssetHandle(buf, v53);
          v23 = v40;
          re::DynamicString::DynamicString(&v64, (v40 + 224));
          re::DynamicString::DynamicString(&v66, (v23 + 152));
          v68[0] = v23[344];
          *&v68[1] = 0;
          memset(v70, 0, 24);
          re::AssetHandle::AssetHandle(v33, buf);
          re::DynamicString::DynamicString(v34, &v64);
          re::DynamicString::DynamicString(v35, &v66);
          v36 = *v68;
          v37 = v68[2];
          if (v68[2] == 1)
          {
            v38 = v69;
          }

          re::FixedArray<re::DynamicString>::FixedArray(v39, v70);
          v24 = *a3;
          v32 = v24;
          if (v24)
          {
            v25 = v24 + 8;
            v26 = re::RealityFileWriter::writeAsset(a1, v33, &v32);

            v32 = 0;
          }

          else
          {
            v26 = re::RealityFileWriter::writeAsset(a1, v33, &v32);
          }

          re::FixedArray<re::DynamicString>::deinit(v39);
          if (v35[0])
          {
            if (v35[1])
            {
              (*(*v35[0] + 40))();
            }

            memset(v35, 0, sizeof(v35));
          }

          if (v34[0])
          {
            if (v34[1])
            {
              (*(*v34[0] + 40))();
            }

            memset(v34, 0, sizeof(v34));
          }

          re::AssetHandle::~AssetHandle(v33);
          re::FixedArray<re::DynamicString>::deinit(v70);
          if (v66)
          {
            if (BYTE8(v66))
            {
              (*(*v66 + 40))(v66, v67);
            }

            v67 = 0u;
            v66 = 0u;
          }

          if (v64)
          {
            if (BYTE8(v64))
            {
              (*(*v64 + 40))(v64, v65);
            }

            v65 = 0u;
            v64 = 0u;
          }

          v20 = v26 ^ 1;
          re::AssetHandle::~AssetHandle(buf);
        }
      }

      else
      {
        v17 = *a3;
        if (*a3)
        {
          v18 = v17 + 8;
          v19 = v49;
          v47 = v19;
          re::ObjCObject::operator=(v17 + 12, &v47);
        }

        else
        {
          v19 = v49;
          v47 = v19;
        }

        v20 = 1;
      }

      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v50);
      re::AssetHandle::~AssetHandle(v53);
      if (v54 && (v55 & 1) != 0)
      {
        (*(*v54 + 40))();
      }

      if (v57 & 1) != 0 && v58 && (v59)
      {
        (*(*v58 + 40))();
      }

      if (v20 > 1)
      {
        if (v20 == 3)
        {
          continue;
        }

        return 1;
      }

      break;
    }

    if (!v20)
    {
      continue;
    }

    return 0;
  }
}

uint64_t (***re::RealityFileWriter::customizeAssetPathMapping(uint64_t (***this)(void), re::AssetPathMapping *a2, const re::AssetPath *a3, AssetService *a4, uint64_t a5))(void)
{
  v9 = this;
  v29 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 55);
  if (v10)
  {
    v11 = *(a2 + 57);
    v12 = 40 * v10;
    do
    {
      v27 = *(v11 + 24);
      v28 = 0;
      re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::operator=<24ul>(v26, v11);
      v23 = a5;
      v13 = (*(*v28 + 16))(v28, a3, &v23);
      if (!v13)
      {
        v21 = v25;
        v25 = 0;
        *v9 = 0;
        *(v9 + 8) = v21;

        if (v23 && (v24 & 1) != 0)
        {
          (*(*v23 + 40))();
        }

        return re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(v26);
      }

      this = re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetService *)>::destroyCallable(v26);
      v11 += 40;
      v12 -= 40;
    }

    while (v12);
    if (*(a2 + 55))
    {
      goto LABEL_18;
    }
  }

  v14 = *(a2 + 50);
  if (v14)
  {
    v15 = *(a2 + 52);
    v16 = 40 * v14;
    while (1)
    {
      v27 = *(v15 + 24);
      v28 = 0;
      if (v15 != v26)
      {
        re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetPath const&,re::AssetService *)>::destroyCallable(v26);
        v17 = *(v15 + 32);
        if (v17)
        {
          v18 = (*(*v17 + 40))(v17);
          if (v18 >= 0x19)
          {
            if (v27)
            {
              v19 = (*(*v27 + 32))(v27, v18, 0);
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = v26;
          }

          v28 = v19;
          (*(**(v15 + 32) + 24))(*(v15 + 32));
        }
      }

      v23 = a5;
      v20 = (*(*v28 + 16))(v28, a3, a4, &v23);
      if (!v20)
      {
        break;
      }

      this = re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetPath const&,re::AssetService *)>::destroyCallable(v26);
      v15 += 40;
      v16 -= 40;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

    v22 = v25;
    v25 = 0;
    *v9 = 0;
    *(v9 + 8) = v22;

    if (v23)
    {
      if (v24)
      {
        (*(*v23 + 40))();
      }
    }

    return re::FunctionBase<24ul,BOOL ()(re::AssetPathMapping &,re::AssetPath const&,re::AssetService *)>::destroyCallable(v26);
  }

  else
  {
LABEL_18:
    *v9 = 1;
  }

  return this;
}

uint64_t re::RealityFileWriter::writeAssetArrayAndDependencies(uint64_t a1, uint64_t a2, int a3, re::RealityFileWriter::AssetWriteResult **a4)
{
  v210 = *MEMORY[0x1E69E9840];
  if (*a4)
  {
    re::RealityFileWriter::AssetWriteResult::clear(*a4);
  }

  if (!*(a2 + 8))
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    if ((v205 & 1) == 0)
    {
      v16 = *a4;
      if (*a4)
      {
        v17 = v16 + 8;
        v18 = *(&v205 + 1);
        v201 = v18;
        re::ObjCObject::operator=(v16 + 12, &v201);
      }

      else
      {
        v18 = *(&v205 + 1);
        v201 = v18;
      }

      return 0;
    }

    ++v9;
    v11 = *(a2 + 8);
    v8 += 120;
  }

  while (v9 < v11);
  if (!v11)
  {
    *v203 = 0;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v205 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    *&v204[12] = 1024;
    *&v204[14] = 476;
    *&v204[18] = 2048;
    *&v204[20] = 0;
    *&v204[28] = 2048;
    *&v204[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v150 = a3;
  v151 = a4;
  v12 = *(a2 + 16);
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = 0;
  }

  v19 = v11 - 1;
  if (v19)
  {
    v20 = (v12 + 128);
    while (1)
    {
      v21 = *v20;
      if (*v20)
      {
        v21 = *(v21 + 24);
      }

      if (v14 != v21)
      {
        break;
      }

      v20 += 15;
      if (!--v19)
      {
        goto LABEL_23;
      }
    }

    v15 = *a4;
    if (*a4)
    {
      re::ObjCObject::operator=((v15 + 96), &v200);
    }

    else
    {
    }

    if (v205 && (BYTE8(v205) & 1) != 0)
    {
      (*(*v205 + 40))(v205, v206);
    }

    if (!v15)
    {
      return v15;
    }

    return 0;
  }

LABEL_23:
  v22 = *(v14 + 1936);
  memset(v204, 0, 36);
  *&v204[36] = 0x7FFFFFFFLL;
  v23 = (*(*v22 + 80))(v22, *(*(a1 + 376) + 24));
  v152 = v23;
  v24 = *(a2 + 8);
  v199 = 0;
  v197 = 0;
  v198 = 0;
  if (*(a2 + 8))
  {
    v25 = 0;
    v26 = 160;
    do
    {
      re::AssetHandle::AssetHandle(buf, (*(a2 + 16) + 120 * v25));
      isDeviceAsset = re::AssetManager::isDeviceAsset(v14, buf, v152);
      if (isDeviceAsset)
      {
        v65 = *v151;
        if (*v151)
        {
          re::ObjCObject::operator=(v65 + 12, &v196);
        }

        else
        {
        }

        if (v205 && (BYTE8(v205) & 1) != 0)
        {
          (*(*v205 + 40))(v205, v206);
        }

        if (v65)
        {
        }

LABEL_116:
        re::AssetHandle::~AssetHandle(buf);
        v15 = 0;
        goto LABEL_228;
      }

      if ((**v22)(v22, buf))
      {
        if ((*(*v22 + 8))(v22, buf, *(*(a1 + 376) + 24)))
        {
          (*(*v22 + 16))(&v205, v22, buf, *(*(a1 + 376) + 24));
          v28 = v205;
          if (v205)
          {
            re::AssetHandle::operator=(buf, &v205 + 1);
          }

          else
          {
            v29 = *v151;
            if (*v151)
            {
              v30 = v29 + 8;
              v195 = *(&v205 + 1);
              re::ObjCObject::operator=(v29 + 12, &v195);
            }

            else
            {
              v195 = *(&v205 + 1);
            }
          }

          if (v205 == 1)
          {
            re::AssetHandle::~AssetHandle((&v205 + 8));
          }

          else
          {
          }

          if (!v28)
          {
            goto LABEL_116;
          }
        }

        v31 = *(a2 + 8);
        if (v31 <= v25)
        {
          v190[0] = 0;
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v205 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v203 = 136315906;
          *&v203[4] = "operator[]";
          *&v203[12] = 1024;
          *&v203[14] = 476;
          *&v203[18] = 2048;
          *&v203[20] = v25;
          *&v203[28] = 2048;
          *&v203[30] = v31;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_267;
        }

        re::RealityFileWriter::remapSceneAsset(v187, *(a1 + 464), buf, *(a2 + 16) + 120 * v25 + 56);
        v32 = v187[0];
        if (v187[0])
        {
          re::AssetHandle::operator=(buf, &v187[8]);
        }

        else
        {
          v33 = *v151;
          if (*v151)
          {
            v34 = v33 + 8;
            v194 = *&v187[8];
            re::ObjCObject::operator=(v33 + 12, &v194);
          }

          else
          {
            v194 = *&v187[8];
          }
        }

        if (v187[0] == 1)
        {
          re::AssetHandle::~AssetHandle(&v187[8]);
        }

        else
        {
        }

        if (!v32)
        {
          goto LABEL_116;
        }
      }

      v35 = *(a2 + 8);
      if (v35 <= v25)
      {
        *v187 = 0;
        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v205 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v203 = 136315906;
        *&v203[4] = "operator[]";
        *&v203[12] = 1024;
        *&v203[14] = 476;
        *&v203[18] = 2048;
        *&v203[20] = v25;
        *&v203[28] = 2048;
        *&v203[30] = v35;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_256:
        *v187 = 0;
        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v205 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v203 = 136315906;
        *&v203[4] = "operator[]";
        *&v203[12] = 1024;
        *&v203[14] = 468;
        *&v203[18] = 2048;
        *&v203[20] = v25;
        *&v203[28] = 2048;
        *&v203[30] = v35;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_257:
        v160 = v174;

        goto LABEL_264;
      }

      if (*&buf[8])
      {
        v36 = *(*&buf[8] + 792);
      }

      else
      {
        v36 = 0;
      }

      v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*&buf[8] ^ (*&buf[8] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*&buf[8] ^ (*&buf[8] >> 30))) >> 27));
      v38 = v36 ^ (v37 >> 31) ^ v37;
      if (*v204)
      {
        v39 = v38 % *&v204[24];
        v40 = *(*&v204[8] + 4 * v39);
        if (v40 != 0x7FFFFFFF)
        {
          while (*(*&v204[16] + 160 * v40 + 16) != *&buf[8])
          {
            LODWORD(v40) = *(*&v204[16] + 160 * v40) & 0x7FFFFFFF;
            if (v40 == 0x7FFFFFFF)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_60;
        }
      }

      else
      {
        LODWORD(v39) = 0;
      }

LABEL_57:
      v41 = *(a2 + 16) + 120 * v25;
      v42 = re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(v204, v39, v38);
      re::AssetHandle::AssetHandle((v42 + 8), buf);
      re::AssetHandle::AssetHandle((v42 + 32), v41);
      re::DynamicString::DynamicString((v42 + 56), (v41 + 24));
      re::DynamicString::DynamicString((v42 + 88), (v41 + 56));
      *(v42 + 120) = *(v41 + 88);
      v43 = *(v41 + 90);
      *(v42 + 122) = v43;
      if (v43 == 1)
      {
        *(v42 + 123) = *(v41 + 91);
      }

      re::FixedArray<re::DynamicString>::FixedArray((v42 + 128), v41 + 96);
      ++*&v204[40];
LABEL_60:
      v35 = v198;
      if (v198 <= v25)
      {
        goto LABEL_256;
      }

      re::AssetHandle::operator=(v199 + 24 * v25, buf);
      re::AssetHandle::~AssetHandle(buf);
      ++v25;
    }

    while (v25 < *(a2 + 8));
  }

  LODWORD(v207) = 0;
  v205 = 0u;
  v206 = 0u;
  *(&v207 + 4) = 0x7FFFFFFFLL;
  if (v150)
  {
    *v187 = v199;
    *&v187[8] = v198;
    re::AssetDeduplication::deduplicate(v187, v14, v203);
    re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::operator=(&v205, v203);
    re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v203);
  }

  memset(v203, 0, 36);
  *&v203[36] = 0x7FFFFFFFLL;
  v193 = 0;
  v190[1] = 0;
  v191 = 0;
  v190[0] = 0;
  v192 = 0;
  if (!v198)
  {
    goto LABEL_174;
  }

  v44 = v199;
  v45 = 24 * v198;
  do
  {
    v46 = *(a1 + 376);
    v189 = v46;
    if (v46)
    {
      v47 = (v46 + 8);

      v189 = 0;
    }

    else
    {
    }

    if ((v187[0] & 1) == 0)
    {
      v66 = *v151;
      if (*v151)
      {
        v67 = v66 + 8;
        v68 = *&v187[8];
        v188 = v68;
        re::ObjCObject::operator=(v66 + 12, &v188);
      }

      else
      {
        v68 = *&v187[8];
        v188 = v68;
      }

      goto LABEL_119;
    }

    v44 = (v44 + 24);
    v45 -= 24;
  }

  while (v45);
  if (!v191)
  {
    goto LABEL_174;
  }

  v48 = v193;
  v49 = 24 * v191;
  do
  {
    v50 = *(v48 + 1);
    if (v50)
    {
      v51 = *(v50 + 792);
    }

    else
    {
      v51 = 0;
    }

    v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v205, v48, v51 ^ (v52 >> 31) ^ v52, v187);
    if (*&v187[12] == 0x7FFFFFFF)
    {
      re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(&v205, v48, v48);
    }

    v48 = (v48 + 24);
    v49 -= 24;
  }

  while (v49);
  if (!v191)
  {
    goto LABEL_174;
  }

  v53 = v193;
  v54 = (v193 + 24 * v191);
  do
  {
    memset(v187, 0, 36);
    *&v187[36] = 0x7FFFFFFFLL;
    v55 = re::AssetHandle::legacy_assetPath(v53);
    re::RealityFileWriter::customizeAssetPathMapping(&v173, a1, v187, v55, v14);
    if ((v173 & 1) == 0)
    {
      v69 = *v151;
      if (*v151)
      {
        v70 = v69 + 8;
        v71 = v174;
        v186 = v71;
        re::ObjCObject::operator=(v69 + 12, &v186);
      }

      else
      {
        v71 = v174;
        v186 = v71;
      }

      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v187);
      goto LABEL_119;
    }

    re::AssetHandle::AssetHandle(v184, v53);
    re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::HashTable(v180, v187);
    if (v183 && (!v185 ? (v56 = 0) : (v56 = *(v185 + 792)), v180[0] && (v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v185 ^ (v185 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v185 ^ (v185 >> 30))) >> 27)), v58 = *(v180[1] + 4 * ((v56 ^ (v57 >> 31) ^ v57) % v182)), v58 != 0x7FFFFFFF)))
    {
      while (*(v181 + 72 * v58 + 16) != v185)
      {
        LODWORD(v58) = *(v181 + 72 * v58) & 0x7FFFFFFF;
        if (v58 == 0x7FFFFFFF)
        {
          goto LABEL_90;
        }
      }

      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v180);
      re::AssetHandle::~AssetHandle(v184);
      v60 = *re::assetsLogObjects(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v149 = **(*(v53 + 1) + 280);
        v61 = *(re::AssetHandle::assetInfo(v53) + 10);
        if (v61 == -1)
        {
          v61 = 0;
        }

        *buf = 136315394;
        *&buf[4] = v149;
        *&buf[12] = 2048;
        *&buf[14] = v61;
        _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "Not writing remapped %s with assetID: %llu", buf, 0x16u);
      }

      memset(buf, 0, 24);
      v62 = *(v53 + 1);
      v63 = *(v53 + 2);
      *(v53 + 1) = 0;
      *&buf[8] = v62;
      v64 = *v53;
      *v53 = 0;
      *v53 = *buf;
      *(v53 + 2) = *&buf[16];
      *buf = v64;
      *&buf[16] = v63;
      re::AssetHandle::~AssetHandle(buf);
    }

    else
    {
LABEL_90:
      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v180);
      re::AssetHandle::~AssetHandle(v184);
    }

    re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v187);
    v53 = (v53 + 24);
  }

  while (v53 != v54);
  if (!v191)
  {
LABEL_174:
    memset(v187, 0, 36);
    *&v187[36] = 0x7FFFFFFFLL;
    goto LABEL_175;
  }

  v72 = v193;
  v73 = 24 * v191;
  do
  {
    if (*(v72 + 1))
    {
      v74 = re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(&v205, v72);
      v75 = *(v72 + 1);
      if (v75 == *(v74 + 8))
      {
        v78 = re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(v204, v75);
        if (v78)
        {
          v79 = v78;
        }

        else
        {
          v79 = v72;
        }

        re::AssetHandle::AssetHandle(v187, v79);
        re::RealityFileWriter::getOrMakeAssetInfo(buf, a1, v187);
        re::AssetHandle::~AssetHandle(v187);
        if ((buf[0] & 1) == 0)
        {
          v146 = *v151;
          if (*v151)
          {
            v147 = v146 + 8;
            v148 = *&buf[8];
            v179 = v148;
            re::ObjCObject::operator=(v146 + 12, &v179);
          }

          else
          {
            v179 = *&buf[8];
          }

          re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(buf);
LABEL_119:
          v15 = 0;
          goto LABEL_227;
        }

        v80 = *&buf[8];
        if (*&buf[8])
        {
          v81 = (*&buf[8] + 8);
        }

        re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(buf);
      }

      else
      {
        v76 = re::AssetHandle::legacy_assetPath(v72);
        v77 = *(v76 + 1);
        memset(&v187[8], 0, 24);
        *v187 = v77;
        re::DynamicString::setCapacity(v187, 0);
        re::AssetPath::fullAssetPath(v76, v187);
        re::RealityFileWriter::AssetInfoTable::tryGetAssetInfo((a1 + 24), v187, &v173);
        v26 = v173;
        if (v173)
        {
          if (*(v173 + 6) == 1)
          {
            if (v187[8])
            {
              v142 = *&v187[16];
            }

            else
            {
              v142 = &v187[9];
            }

            re::DynamicString::format("The asset '%s' has been selected to be pruned from the reality file because it is a duplicate of another asset, but it has already been written to the reality file. This could happen if ::writeAssetArrayAndDependencies is invoked with the deduplicate argument after previous calls to write assets.", buf, v142);
            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))();
            }

            v143 = *v151;
            if (*v151)
            {
              v144 = v143 + 8;
              v145 = v168;
              v178 = v145;
              re::ObjCObject::operator=(v143 + 12, &v178);
            }

            else
            {
LABEL_267:
              v178 = v168;
            }

            if (*v187 && (v187[8] & 1) != 0)
            {
              (*(**v187 + 40))(*v187, *&v187[16]);
            }

            goto LABEL_119;
          }
        }

        if (*v187 && (v187[8] & 1) != 0)
        {
          (*(**v187 + 40))();
        }
      }
    }

    v72 = (v72 + 24);
    v73 -= 24;
  }

  while (v73);
  v82 = v193;
  memset(v187, 0, 36);
  *&v187[36] = 0x7FFFFFFFLL;
  if (v191)
  {
    v83 = (v193 + 24 * v191);
    do
    {
      if (*(v82 + 1))
      {
        v84 = re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(&v205, v82);
        v85 = re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(v204, *(v84 + 8));
        if (v85)
        {
          v86 = v85;
        }

        else
        {
          v86 = v84;
        }

        re::AssetHandle::AssetHandle(buf, v86);
        re::RealityFileWriter::getAssetInfo(&v177, a1, buf);
        re::AssetHandle::~AssetHandle(buf);
        v87 = v177;
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(v187, v82, (v177 + 8));
        if (*(v82 + 1) == *(v84 + 8))
        {
          re::AssetManager::findDependencies(v14, v82, &v173);
          memset(buf, 0, 36);
          *&buf[36] = 0x7FFFFFFFLL;
          v172 = 0;
          v169 = 0;
          v170 = 0;
          v168 = 0;
          v171 = 0;
          if (v175)
          {
            v93 = *v176;
            v94 = 24 * v175;
            do
            {
              if (*(v93 + 1))
              {
                re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(buf, v93);
                re::DynamicArray<re::AssetHandle>::add(&v168, v93);
              }

              v93 = (v93 + 24);
              v94 -= 24;
            }

            while (v94);
            if (v170)
            {
              v95 = v172;
              v96 = 24 * v170;
              do
              {
                if ((re::AssetManager::isDeviceAsset(v14, v95, v152) & 1) == 0)
                {
                  v97 = re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(v204, *(v95 + 8));
                  v98 = (v97 ? v97 : v95);
                  re::AssetHandle::AssetHandle(v165, v98);
                  re::RealityFileWriter::getAssetInfo(&v167, a1, v165);
                  re::AssetHandle::~AssetHandle(v165);
                  v99 = v167;
                  if (v167)
                  {
                    v164 = v167;
                    v100 = (v167 + 8);
                    re::DynamicArray<re::SharedPtr<re::AssetLoadRequest>>::add((v87 + 46), &v164);

                    v164 = 0;
                  }
                }

                v95 += 24;
                v96 -= 24;
              }

              while (v96);
            }
          }

          re::DynamicArray<re::AssetHandle>::deinit(&v168);
          re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(buf);
          re::DynamicArray<re::AssetHandle>::deinit(&v173);
        }

        else
        {
          v88 = re::Hash<re::DynamicString>::operator()(buf, (v87 + 8));
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 248, (v87 + 8), v88, buf);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            *&buf[32] = 0;
            memset(buf, 0, 28);
            re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 248, (v87 + 8), buf);
            re::DynamicArray<re::DynamicString>::deinit(buf);
          }

          v89 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a1 + 248, (v87 + 8));
          v90 = re::AssetHandle::assetInfo(v82);
          if (*(v90 + 13))
          {
            v91 = *(v90 + 14);
          }

          else
          {
            v91 = v90 + 105;
          }

          v92 = re::DynamicArray<re::DynamicString>::add(v89, buf);
          if (*buf && (buf[8] & 1) != 0)
          {
            (*(**buf + 40))(v92);
          }
        }

        if (v87)
        {
        }
      }

      v82 = (v82 + 24);
    }

    while (v82 != v83);
  }

LABEL_175:
  if (v150)
  {
    re::AssetDeduplication::remap(&v205, v187, buf);
    v101 = *v187;
    if (!*v187 || *v187 == *buf)
    {
      *v187 = *buf;
      *buf = v101;
      v102 = *&v187[8];
      *&v187[8] = *&buf[8];
      *&buf[8] = v102;
      v103 = *&v187[24];
      *&v187[24] = *&buf[24];
      *&buf[24] = v103;
      goto LABEL_183;
    }

    re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(v187);
    if (*buf)
    {
      if (*&v187[24] < *&buf[28])
      {
        re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::setCapacity(v187, *&buf[28]);
      }

      re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::move(v187, buf);
LABEL_183:
      ++*&v187[40];
    }

    re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(buf);
  }

  if (!v191)
  {
LABEL_225:
    v15 = 1;
    goto LABEL_226;
  }

  v104 = v193;
  v105 = 24 * v191;
  while (2)
  {
    if (!*(v104 + 1))
    {
      goto LABEL_224;
    }

    v106 = re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(&v205, v104);
    v107 = *(v106 + 8);
    if (*(v104 + 1) != v107)
    {
      goto LABEL_224;
    }

    v108 = v106;
    v109 = re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(v204, v107);
    if (v109)
    {
      v110 = v109;
    }

    else
    {
      v110 = v108;
    }

    re::AssetHandle::AssetHandle(buf, v110);
    re::RealityFileWriter::getAssetInfo(&v177, a1, buf);
    re::AssetHandle::~AssetHandle(buf);
    v111 = re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::tryGet(v204, v108[1]);
    v35 = v177;
    if (v177[6] != 1)
    {
      v163 = v177;
      v112 = v177 + 2;
      if (v111)
      {
        v113 = v111[89];
        v162[0] = v111[90];
        if (v162[0] == 1)
        {
          v162[1] = v111[91];
        }
      }

      else
      {
        v113 = 0;
        v162[0] = 0;
      }

      re::RealityFileWriter::saveAssetToArchive(buf, a1, v108, &v163, v187, v113, v162, v22);

      v163 = 0;
      if ((buf[0] & 1) == 0)
      {
        v129 = *v151;
        if (*v151)
        {
          v134 = v129 + 8;
          v131 = *&buf[8];
          v161 = v131;
          v132 = (v129 + 96);
          v133 = &v161;
LABEL_234:
          re::ObjCObject::operator=(v132, v133);

LABEL_244:
          goto LABEL_265;
        }

        v131 = *&buf[8];
        v161 = v131;
LABEL_243:

        goto LABEL_244;
      }
    }

    v114 = (**v22)(v22, v108);
    v115 = v114;
    if (!v114 || ((*(*v22 + 40))(v22, v108, *(*(a1 + 376) + 24)) & 1) != 0)
    {
      v154 = v35;
      v116 = (v35 + 8);
      re::RealityFileWriter::assignSceneSettingsToAssetInfo(buf, a1, &v154, v111, v115);

      v154 = 0;
      if ((buf[0] & 1) == 0)
      {
        v129 = *v151;
        if (*v151)
        {
          v130 = v129 + 8;
          v131 = *&buf[8];
          v153 = v131;
          v132 = (v129 + 96);
          v133 = &v153;
          goto LABEL_234;
        }

        v131 = *&buf[8];
        v153 = v131;
        goto LABEL_243;
      }

LABEL_223:

LABEL_224:
      v104 = (v104 + 24);
      v105 -= 24;
      if (!v105)
      {
        goto LABEL_225;
      }

      continue;
    }

    break;
  }

  (*(*v22 + 48))(buf, v22, v108, *(*(a1 + 376) + 24));
  re::RealityFileWriter::getOrMakeAssetInfo(&v173, a1, buf);
  if ((v173 & 1) == 0)
  {
    v135 = *v151;
    if (!*v151)
    {
      goto LABEL_257;
    }

    v136 = v135 + 8;
    v137 = v174;
    v160 = v137;
    re::ObjCObject::operator=(v135 + 12, &v160);

    v138 = v135 + 8;
    goto LABEL_263;
  }

  v117 = v174;
  if (v174)
  {
    v118 = v174 + 8;
    v119 = v117 + 8;
  }

  v159 = v117;
  if (v111)
  {
    v120 = v111[89];
    v158[0] = v111[90];
    if (v158[0] == 1)
    {
      v158[1] = v111[91];
    }
  }

  else
  {
    v120 = 0;
    v158[0] = 0;
  }

  re::RealityFileWriter::saveAssetToArchive(&v168, a1, buf, &v159, v187, v120, v158, v22);
  if (v117)
  {

    v159 = 0;
    v121 = v168;
    if ((v168 & 1) == 0)
    {
      goto LABEL_240;
    }

    v156 = v117;
    v122 = v117 + 8;
    re::RealityFileWriter::assignSceneSettingsToAssetInfo(v165, a1, &v156, v111, 1);

    v156 = 0;
    goto LABEL_214;
  }

  v121 = v168;
  if (v168)
  {
    v156 = 0;
    re::RealityFileWriter::assignSceneSettingsToAssetInfo(v165, a1, &v156, v111, 1);
LABEL_214:
    v124 = v165[0];
    if (v165[0])
    {
      re::RealityFileWriter::AssetInfo::addSceneVariant(v117, (v35 + 32), v123);
    }

    else
    {
      v125 = *v151;
      if (*v151)
      {
        v126 = v125 + 8;
        v127 = v166;
        v155 = v127;
        re::ObjCObject::operator=(v125 + 12, &v155);
      }

      else
      {
        v127 = v166;
        v155 = v127;
      }
    }

    if (v117)
    {
    }

    re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(&v173);
    re::AssetHandle::~AssetHandle(buf);
    if ((v124 & 1) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_223;
  }

LABEL_240:
  v139 = *v151;
  if (*v151)
  {
    v140 = v139 + 8;
    v141 = v169;
    v157 = v141;
    re::ObjCObject::operator=(v139 + 12, &v157);
  }

  else
  {
    v141 = v169;
    v157 = v141;
  }

  if ((v121 & 1) == 0)
  {
  }

  if (v117)
  {
    v138 = v117 + 8;
LABEL_263:
  }

LABEL_264:
  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(&v173);
  re::AssetHandle::~AssetHandle(buf);
LABEL_265:

  v15 = 0;
LABEL_226:
  re::HashTable<re::AssetHandle,re::DynamicString,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v187);
LABEL_227:
  re::DynamicArray<re::AssetHandle>::deinit(v190);
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v203);
  re::HashTable<re::AssetHandle,re::AssetHandle,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v205);
LABEL_228:
  re::FixedArray<re::AssetHandle>::deinit(&v197);
  re::HashTable<re::AssetHandle,re::RealityFileWriter::AssetHandleWithMetadata,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v204);
  return v15;
}