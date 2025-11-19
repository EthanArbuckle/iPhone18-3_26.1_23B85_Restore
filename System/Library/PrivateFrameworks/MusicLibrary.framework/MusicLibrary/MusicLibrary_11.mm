void std::__shared_ptr_pointer<ML3ContainerItemReactionImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemReactionImportItem>,std::allocator<ML3ContainerItemReactionImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::default_delete<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    if (*(result + 39) < 0)
    {
      operator delete(*(result + 16));
    }

    JUMPOUT(0x2318CD250);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo *,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>::__shared_ptr_default_delete<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo,ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>,std::allocator<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIZN16ML3ImportSession40_prepareContainerItemReactionImportItemsENS0_I13ML3ImportItemEEE26_ContainerItemReactionInfoE27__shared_ptr_default_deleteIS4_S4_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo *,std::shared_ptr<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>::__shared_ptr_default_delete<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo,ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>,std::allocator<ML3ImportSession::_prepareContainerItemReactionImportItems(std::shared_ptr<ML3ImportItem>)::_ContainerItemReactionInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ContainerAuthorDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerAuthorDatabaseImportDataSource>,std::allocator<ML3ContainerAuthorDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_42ML3ContainerAuthorDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerAuthorDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerAuthorDatabaseImportDataSource>,std::allocator<ML3ContainerAuthorDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerAuthorDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerAuthorDatabaseImportDataSource>,std::allocator<ML3ContainerAuthorDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemPersonDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemPersonDatabaseImportDataSource>,std::allocator<ML3ContainerItemPersonDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_46ML3ContainerItemPersonDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemPersonDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemPersonDatabaseImportDataSource>,std::allocator<ML3ContainerItemPersonDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerItemPersonDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemPersonDatabaseImportDataSource>,std::allocator<ML3ContainerItemPersonDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void ___ZN16ML3ImportSession38_prepareContainerItemPersonImportItemsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 int64ForColumnIndex:0];
  v8 = [v5 int64ForColumnIndex:1];
  v9 = *(*(a1 + 32) + 8);
  v10[0] = v8;
  v10[1] = v10;
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((v9 + 48), v8)[3] = v7;
}

__n128 __Block_byref_object_copy__720(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN16ML3ImportSession38_prepareContainerItemPersonImportItemsENSt3__110shared_ptrI13ML3ImportItemEE_block_invoke_726(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [v3 int64ForColumnIndex:0];
  v6 = [v3 int64ForColumnIndex:1];
  v7 = [v3 cStringForColumnIndex:2];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v39, v8);
  v9 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v9 = v39[1];
  }

  if (v9 && (v10 = *(*(*(a1 + 32) + 8) + 48), v5 < 0xCCCCCCCCCCCCCCCDLL * ((*(*(*(a1 + 32) + 8) + 56) - v10) >> 3)))
  {
    std::unordered_set<std::string>::unordered_set(&__p, v10 + 40 * v5);
    v11 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>(&__p, v39);
    if (v11)
    {
      v12 = v35;
      v13 = v11[1];
      v14 = vcnt_s8(v35);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        if (v13 >= *&v35)
        {
          v13 %= *&v35;
        }
      }

      else
      {
        v13 &= *&v35 - 1;
      }

      v19 = *(__p + v13);
      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19 != v11);
      if (v20 == &v36)
      {
        goto LABEL_28;
      }

      v21 = v20[1];
      if (v14.u32[0] > 1uLL)
      {
        if (v21 >= *&v35)
        {
          v21 %= *&v35;
        }
      }

      else
      {
        v21 &= *&v35 - 1;
      }

      if (v21 != v13)
      {
LABEL_28:
        if (!*v11)
        {
          goto LABEL_29;
        }

        v22 = *(*v11 + 1);
        if (v14.u32[0] > 1uLL)
        {
          if (v22 >= *&v35)
          {
            v22 %= *&v35;
          }
        }

        else
        {
          v22 &= *&v35 - 1;
        }

        if (v22 != v13)
        {
LABEL_29:
          *(__p + v13) = 0;
        }
      }

      v23 = *v11;
      if (*v11)
      {
        v24 = v23[1];
        if (v14.u32[0] > 1uLL)
        {
          if (v24 >= *&v12)
          {
            v24 %= *&v12;
          }
        }

        else
        {
          v24 &= *&v12 - 1;
        }

        if (v24 != v13)
        {
          *(__p + v24) = v20;
          v23 = *v11;
        }
      }

      *v20 = v23;
      *v11 = 0;
      --v37;
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v11);
      v25 = *(*(*(a1 + 32) + 8) + 48) + 40 * v5;
      if (v25 != &__p)
      {
        *(v25 + 32) = v38;
        v26 = v36;
        v27 = *(v25 + 8);
        if (v27)
        {
          for (i = 0; i != v27; ++i)
          {
            *(*v25 + 8 * i) = 0;
          }

          v29 = *(v25 + 16);
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          if (v29)
          {
            v30 = v26 == 0;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            v31 = v29;
          }

          else
          {
            do
            {
              std::string::operator=((v29 + 2), (v26 + 16));
              v31 = *v29;
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(v25, v29);
              v26 = *v26;
              if (v31)
              {
                v32 = v26 == 0;
              }

              else
              {
                v32 = 1;
              }

              v29 = v31;
            }

            while (!v32);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v31);
        }

        if (v26)
        {
          operator new();
        }
      }
    }

    else
    {
      v17 = *(v4 + 2680);
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
      [v17 addObject:v18];
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v36);
    v33 = __p;
    __p = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    v15 = *(v4 + 2680);
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
    [v15 addObject:v16];
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }
}

void sub_22D520270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemPersonImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemPersonImportItem>,std::allocator<ML3ContainerItemPersonImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_32ML3ContainerItemPersonImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemPersonImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemPersonImportItem>,std::allocator<ML3ContainerItemPersonImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerItemPersonImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ContainerItemPersonImportItem>,std::allocator<ML3ContainerItemPersonImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemDatabaseImportDataSource>,std::allocator<ML3ContainerItemDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_40ML3ContainerItemDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerItemDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemDatabaseImportDataSource>,std::allocator<ML3ContainerItemDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerItemDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerItemDatabaseImportDataSource>,std::allocator<ML3ContainerItemDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ContainerSeedDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerSeedDatabaseImportDataSource>,std::allocator<ML3ContainerSeedDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_40ML3ContainerSeedDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerSeedDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerSeedDatabaseImportDataSource>,std::allocator<ML3ContainerSeedDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerSeedDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerSeedDatabaseImportDataSource>,std::allocator<ML3ContainerSeedDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ContainerDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerDatabaseImportDataSource>,std::allocator<ML3ContainerDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_36ML3ContainerDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ContainerDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerDatabaseImportDataSource>,std::allocator<ML3ContainerDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ContainerDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ContainerDatabaseImportDataSource>,std::allocator<ML3ContainerDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ImportSession::_enableTriggers(id *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "enabling triggers", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = +[ML3MusicLibrary allTriggersSQL];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (([this[2] executeUpdate:*(*(&v10 + 1) + 8 * v6)] & 1) == 0)
        {
          v8 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "failed to re-create triggers", buf, 2u);
          }

          v7 = 0;
          goto LABEL_15;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_15:

  return v7;
}

void sub_22D520CF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 40))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<ML3DatabaseImportDataSource>>::__assign_with_size[abi:ne200100]<std::shared_ptr<ML3DatabaseImportDataSource> const*,std::shared_ptr<ML3DatabaseImportDataSource> const*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 4)
  {
    if (v9)
    {
      std::vector<std::shared_ptr<ML3ImportItem>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<std::shared_ptr<ML3DatabaseImportDataSource>>::__vallocate[abi:ne200100](a1, v11);
  }

  v12 = a1[1] - v9;
  if (a4 <= v12 >> 4)
  {
    v13 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *>(a2, a3, v9);
    for (i = a1[1]; i != v13; i -= 2)
    {
      v15 = *(i - 1);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *,std::shared_ptr<ML3ImportItem> *>(a2, (a2 + v12), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>,std::shared_ptr<ML3ImportItem>*,std::shared_ptr<ML3ImportItem>*,std::shared_ptr<ML3ImportItem>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t std::__shared_ptr_pointer<ML3LyricsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3LyricsDatabaseImportDataSource>,std::allocator<ML3LyricsDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_33ML3LyricsDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3LyricsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3LyricsDatabaseImportDataSource>,std::allocator<ML3LyricsDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3LyricsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3LyricsDatabaseImportDataSource>,std::allocator<ML3LyricsDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ChapterDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ChapterDatabaseImportDataSource>,std::allocator<ML3ChapterDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_34ML3ChapterDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ChapterDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ChapterDatabaseImportDataSource>,std::allocator<ML3ChapterDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ChapterDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ChapterDatabaseImportDataSource>,std::allocator<ML3ChapterDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ItemVideoDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemVideoDatabaseImportDataSource>,std::allocator<ML3ItemVideoDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_36ML3ItemVideoDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ItemVideoDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemVideoDatabaseImportDataSource>,std::allocator<ML3ItemVideoDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ItemVideoDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemVideoDatabaseImportDataSource>,std::allocator<ML3ItemVideoDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ItemStatsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemStatsDatabaseImportDataSource>,std::allocator<ML3ItemStatsDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_36ML3ItemStatsDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ItemStatsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemStatsDatabaseImportDataSource>,std::allocator<ML3ItemStatsDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ItemStatsDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemStatsDatabaseImportDataSource>,std::allocator<ML3ItemStatsDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ItemSearchDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemSearchDatabaseImportDataSource>,std::allocator<ML3ItemSearchDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_37ML3ItemSearchDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ItemSearchDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemSearchDatabaseImportDataSource>,std::allocator<ML3ItemSearchDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ItemSearchDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemSearchDatabaseImportDataSource>,std::allocator<ML3ItemSearchDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ItemPlaybackDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemPlaybackDatabaseImportDataSource>,std::allocator<ML3ItemPlaybackDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_39ML3ItemPlaybackDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ItemPlaybackDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemPlaybackDatabaseImportDataSource>,std::allocator<ML3ItemPlaybackDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ItemPlaybackDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemPlaybackDatabaseImportDataSource>,std::allocator<ML3ItemPlaybackDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ItemExtraDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemExtraDatabaseImportDataSource>,std::allocator<ML3ItemExtraDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_36ML3ItemExtraDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ItemExtraDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemExtraDatabaseImportDataSource>,std::allocator<ML3ItemExtraDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ItemExtraDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemExtraDatabaseImportDataSource>,std::allocator<ML3ItemExtraDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ItemDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemDatabaseImportDataSource>,std::allocator<ML3ItemDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_31ML3ItemDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ItemDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemDatabaseImportDataSource>,std::allocator<ML3ItemDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ItemDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemDatabaseImportDataSource>,std::allocator<ML3ItemDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t std::__shared_ptr_pointer<ML3ItemStoreDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemStoreDatabaseImportDataSource>,std::allocator<ML3ItemStoreDatabaseImportDataSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI27ML3DatabaseImportDataSourceE27__shared_ptr_default_deleteIS1_36ML3ItemStoreDatabaseImportDataSourceEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ItemStoreDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemStoreDatabaseImportDataSource>,std::allocator<ML3ItemStoreDatabaseImportDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ItemStoreDatabaseImportDataSource *,std::shared_ptr<ML3DatabaseImportDataSource>::__shared_ptr_default_delete<ML3DatabaseImportDataSource,ML3ItemStoreDatabaseImportDataSource>,std::allocator<ML3ItemStoreDatabaseImportDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::vector<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 8);
        v4 -= 40;
        if (v6 == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ___ZN16ML3ImportSession26_updateEntityRevisionTableERNSt3__16vectorINS0_10shared_ptrI13ML3ImportItemEENS0_9allocatorIS4_EEEEx_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.medialibrary.entity-revision-changed::%zu", *(a1 + 32)];
    notify_post([v2 UTF8String]);
  }
}

uint64_t std::__optional_copy_base<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = 0;
    *(a1 + 24) = -1;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v4 = *(a2 + 24);
    if (v4 != -1)
    {
      v6 = a1;
      (off_284089778[v4])(&v6, a2);
      *(a1 + 24) = v4;
    }

    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_22D521708(_Unwind_Exception *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  if (*(v1 + 32) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>>,std::optional<std::variant<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      v3 -= 40;
      if (v5 == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<long long,float,BOOL,std::string,std::shared_ptr<ML3CPPData>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3);
      }
    }
  }

  return a1;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJxfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_10shared_ptrI10ML3CPPDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJxfbSD_SG_EEEEEEDcSQ_DpT0_(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJxfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_10shared_ptrI10ML3CPPDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJxfbSD_SG_EEEEEEDcSQ_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJxfbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_10shared_ptrI10ML3CPPDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJxfbSD_SG_EEEEEEDcSQ_DpT0_(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

id ML3ImportSession::_getGroupingKeyForAlbumArtistImportItem(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 152))(&v7, a2, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = __p;
  }

  v3 = *(a1 + 8);
  v4 = ML3CPPBridgeString(&v9, 0);
  v5 = [v3 groupingKeyForString:v4];

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v7 = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_22D521918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::addAlbum(uint64_t a1, void *a2, void *a3, uint64_t AlbumArtistPIDForAlbumImportItem)
{
  v76[1] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 2280) >= 0x3E8uLL && *(a1 + 1544) == *(a1 + 1536) && ![*(a1 + 1592) count] && objc_msgSend(*(a1 + 1584), "count") == 0;
  if (*(a1 + 32) == 2 && !*a3)
  {
    if (*(a1 + 2072))
    {
      v9 = 1;
    }

    else
    {
      v9 = [*(a1 + 2088) count] != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = __p;
    (*(**a2 + 88))(__p);
    if (v66.__r_.__value_.__s.__data_[7] < 0)
    {
      v11 = __p[0];
    }

    if (*a3)
    {
      (*(**a3 + 88))(v68);
      if (v70[9] >= 0)
      {
        v12 = v68;
      }

      else
      {
        v12 = *v68;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136447234;
      *(buf.__r_.__value_.__r.__words + 4) = v11;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      *v73 = AlbumArtistPIDForAlbumImportItem;
      *&v73[8] = 1024;
      *&v73[10] = v8;
      *&v73[14] = 1024;
      *&v73[16] = v9;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "adding album=%{public}s trackImportItem=%{public}s, albumArtistPersistentID=%lld, addedAlbumsOverThreshold=%{BOOL}u, switchingToAlbumPayload=%{BOOL}u", &buf, 0x2Cu);
      if ((v70[9] & 0x80000000) != 0)
      {
        operator delete(*v68);
      }
    }

    else
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136447234;
      *(buf.__r_.__value_.__r.__words + 4) = v11;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "<nil>";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      *v73 = AlbumArtistPIDForAlbumImportItem;
      *&v73[8] = 1024;
      *&v73[10] = v8;
      *&v73[14] = 1024;
      *&v73[16] = v9;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "adding album=%{public}s trackImportItem=%{public}s, albumArtistPersistentID=%lld, addedAlbumsOverThreshold=%{BOOL}u, switchingToAlbumPayload=%{BOOL}u", &buf, 0x2Cu);
    }

    if (v66.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*a3)
  {
    v13 = a3[1];
    v59[0] = *a3;
    v59[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = ML3ImportSession::_prepareTrackForImport(a1, v59, 0, 0);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v14)
    {
      v15 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        (*(**a2 + 88))(&buf);
        v16 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v17 = buf.__r_.__value_.__r.__words[0];
        (*(**a3 + 88))(__p);
        p_buf = &buf;
        if (v16 < 0)
        {
          p_buf = v17;
        }

        if (v66.__r_.__value_.__s.__data_[7] >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        *v68 = 136446466;
        *&v68[4] = p_buf;
        v69 = 2082;
        *v70 = v19;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Error adding album=%{public}s. Could not prepare track data for import=%{public}s", v68, 0x16u);
        if (v66.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      v20 = 0;
LABEL_112:

      return v20;
    }
  }

  if ([*(a1 + 2296) count] == 0 && !v9 && !v8 || ML3ImportSession::flush(a1, 1))
  {
    if (*a3)
    {
      v21 = *(*a3 + 8);
    }

    else
    {
      v21 = 0;
    }

    v46 = (*(**a2 + 32))(*a2, 285212691);
    v47 = v21;
    v22 = *a3;
    if (*a3)
    {
      v23 = *(v22 + 16);
      v24 = *(v22 + 17);
      v25 = a3[1];
      v58[0] = *a3;
      v58[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      matched = ML3ImportSession::_matchAlbumToImportedEntity(a1, v58, AlbumArtistPIDForAlbumImportItem);
      v27 = matched;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        if ((v27 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (!matched)
      {
LABEL_71:
        v30 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v28 = a2[1];
    v56 = *a2;
    v57 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = a3[1];
    v54 = *a3;
    v55 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = ML3ImportSession::_getAlbumGroupingIdentifierForImportItem(a1, &v56, &v54, AlbumArtistPIDForAlbumImportItem);
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    v30 = 1;
    if (AlbumArtistPIDForAlbumImportItem || v15)
    {
LABEL_73:
      if (*a3 && v23 && !v24)
      {
        v45 = 0;
        AlbumPersistentID = 0;
LABEL_77:
        v34 = 0;
LABEL_92:
        v37 = os_log_create("com.apple.amp.medialibrary", "Import_Oversize");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134219520;
          *(buf.__r_.__value_.__r.__words + 4) = AlbumPersistentID;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v46;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
          *v73 = v30;
          *&v73[4] = 1024;
          *&v73[6] = v34;
          *&v73[10] = 2048;
          *&v73[12] = v15;
          *&v73[20] = 2048;
          *&v73[22] = AlbumArtistPIDForAlbumImportItem;
          *&v73[30] = 2048;
          *&v73[32] = v47;
          _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "importing album with PID=%lld, syncID=%lld, matchAlbumToImportedEntity=%{BOOL}u, isAlbumUpdate=%{BOOL}u, albumGroupingIdentifier=%p, albumArtistPersistentID=%lld, trackPersistentID=%lld", &buf, 0x40u);
        }

        v38 = *a2;
        if (*a2 && !*a3)
        {
          v44 = a2[1];
          if (v44)
          {
            atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
          }

          ML3ImportItem::getSanitizedStringValue(__p, v38, 285212673);
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&buf, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = v66;
          }

          ML3ImportItem::getSanitizedStringValue(v68, v38, 285212699);
          if (SHIBYTE(v71) < 0)
          {
            std::string::__init_copy_ctor_external(v73, *&v70[2], *&v70[10]);
          }

          else
          {
            *v73 = *&v70[2];
            *&v73[16] = v71;
          }

          (*(*v38 + 144))(&v62, v38, 285212673, 1);
          if (SHIBYTE(v64) < 0)
          {
            std::string::__init_copy_ctor_external(&v73[24], v63, *(&v63 + 1));
          }

          else
          {
            *&v73[24] = v63;
            v74 = v64;
          }

          (*(*v38 + 144))(&v60, v38, 285212699, 1);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v75, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
          }

          else
          {
            v75 = v61;
          }

          memset(v67, 0, sizeof(v67));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v67, &buf, v76, 4uLL);
        }

        v39 = a2[1];
        v50[0] = *a2;
        v50[1] = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v15)
        {
          AlbumArtistPIDForAlbumImportItem = [v15 albumArtistPersistentID];
        }

        v40 = *a3;
        v41 = a3[1];
        v49[0] = v40;
        v49[1] = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ML3ImportSession::_addAlbum(a1, v50, v15, AlbumArtistPIDForAlbumImportItem, v49);
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        v42 = a2[1];
        v48[0] = *a2;
        v48[1] = v42;
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ML3ImportSession::_addAlbumDataToSourceMaps(a1, v48);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        v20 = 1;
        if (*(a1 + 1520) == 1)
        {
          std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>((a1 + 856), v45);
        }

        goto LABEL_112;
      }

      if (v30)
      {
        v35 = a2[1];
        v51[0] = *a2;
        v51[1] = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AlbumPersistentID = ML3ImportSession::_getAlbumPersistentID(a1, v51, v15);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }
      }

      else
      {
        AlbumPersistentID = 0;
      }

      v45 = AlbumPersistentID;
      if (*(a1 + 32) == 2)
      {
        if (!AlbumPersistentID)
        {
          v34 = 0;
          ++*(a1 + 220);
          goto LABEL_92;
        }

        ++*(a1 + 224);
      }

      else if (!AlbumPersistentID)
      {
        goto LABEL_77;
      }

      v36 = *a2;
      v34 = 1;
      *(v36 + 16) = 1;
      *(v36 + 8) = AlbumPersistentID;
      goto LABEL_92;
    }

    v31 = a2[1];
    v53[0] = *a2;
    v53[1] = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = a3[1];
    v52[0] = *a3;
    v52[1] = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AlbumArtistPIDForAlbumImportItem = ML3ImportSession::_getAlbumArtistPIDForAlbumImportItem(a1, v53, v52);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

LABEL_72:
    v15 = 0;
    goto LABEL_73;
  }

  return 0;
}

void sub_22D522428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  *(v60 - 256) = &unk_28408AC60;
  if (*(v60 - 217) < 0)
  {
    operator delete(*(v60 - 240));
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if ((v60 - 208) != v59)
  {
    do
    {
      v62 = *(v59 - 1);
      v59 -= 3;
      if (v62 < 0)
      {
        operator delete(*v59);
      }
    }

    while (v59 != (v60 - 208));
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::_matchAlbumToImportedEntity(uint64_t a1, void *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = &v37;
  v39 = 0x4812000000;
  v40 = __Block_byref_object_copy__415;
  v41 = __Block_byref_object_dispose__416;
  v42 = "";
  (*(**a2 + 24))(buf);
  if ((v48[25] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&v48[2], *&v48[10]);
    *buf = &unk_28408AC60;
    if ((v48[25] & 0x80000000) != 0)
    {
      operator delete(*&v48[2]);
    }
  }

  else
  {
    __p = *&v48[2];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = (*(**a2 + 32))(*a2, 117440516);
  v6 = (*(**a2 + 32))(*a2, 16777217);
  v7 = MLMediaTypeByStandardizingMediaType(v6);
  v8 = (*(**a2 + 56))(*a2, 167772164);
  v9 = (*(**a2 + 56))(*a2, 117440516);
  v10 = *a2;
  if (*(*a2 + 16) == 1 && (*(v10 + 17) & 1) == 0)
  {
    v11 = v9;
    if ((v8 & v9 & 1) == 0)
    {
      v12 = *(a1 + 16);
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v10 + 8)];
      v45 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v15 = [v12 executeQuery:@"SELECT album_pid FROM item WHERE ROWID = ?" withParameters:v14];

      v16 = [v15 objectForFirstRowAndColumn];
      v17 = v16;
      if (v16)
      {
        v18 = *(a1 + 16);
        v44 = v16;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        v20 = [v18 executeQuery:@"SELECT album withParameters:{season_number FROM album WHERE album_pid = ?", v19}];

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = ___ZN16ML3ImportSession27_matchAlbumToImportedEntityENSt3__110shared_ptrI13ML3ImportItemEEx_block_invoke;
        v30[3] = &unk_2787652F8;
        v31 = v8;
        v32 = v11;
        v30[4] = &v37;
        v30[5] = &v33;
        v15 = v20;
        [v20 enumerateRowsWithBlock:v30];
      }
    }
  }

  if (v34[3])
  {
    v21 = 1;
  }

  else
  {
    v22 = v7 & 0x10042;
    v23 = *(v38 + 71);
    if (v23 < 0)
    {
      v23 = v38[7];
    }

    if (a3)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    v21 = 1;
    if (!v23 && (v25 & 1) == 0)
    {
      v26 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v38 + 6;
        if (*(v38 + 71) < 0)
        {
          v27 = *v27;
        }

        v28 = v34[3];
        *buf = 136446978;
        *&buf[4] = v27;
        v47 = 2048;
        *v48 = v28;
        *&v48[8] = 2048;
        *&v48[10] = a3;
        *&v48[18] = 1024;
        *&v48[20] = v22 != 0;
        _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "will not try to deduplicate album with name=%{public}s, seasonNumber=%lld, albumArtistPID=%lld, isBook=%{BOOL}u", buf, 0x26u);
      }

      v21 = 0;
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_22D522B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ML3AlbumGroupingIdentifier *ML3ImportSession::_getAlbumGroupingIdentifierForImportItem(uint64_t a1, void *a2, uint64_t *a3, uint64_t AlbumArtistPIDForAlbumImportItem)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  if (*a3)
  {
    v9 = v8[1] == 0;
    v10 = (*(*v8 + 32))();
  }

  else
  {
    v10 = (*(**a2 + 32))(*a2, 285212681);
    v9 = 1;
  }

  if (*a3)
  {
    (*(**a3 + 24))(buf);
  }

  else
  {
    (*(**a2 + 24))(buf);
  }

  if ((v39[25] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v36, *&v39[2], *&v39[10]);
    *buf = &unk_28408AC60;
    if ((v39[25] & 0x80000000) != 0)
    {
      operator delete(*&v39[2]);
    }
  }

  else
  {
    v36 = *&v39[2];
  }

  v11 = *a3;
  if (!*a3)
  {
    v11 = *a2;
  }

  (*(*v11 + 24))(buf);
  if ((v39[25] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v35, *&v39[2], *&v39[10]);
    *buf = &unk_28408AC60;
    if ((v39[25] & 0x80000000) != 0)
    {
      operator delete(*&v39[2]);
    }
  }

  else
  {
    v35 = *&v39[2];
  }

  if (*a3)
  {
    v12 = (*(**a3 + 32))(*a3, 117440516) != 0;
  }

  else
  {
    v12 = (*(**a2 + 32))(*a2, 285212683);
  }

  if (*a3)
  {
    (*(**a3 + 152))(buf);
  }

  else
  {
    (*(**a2 + 24))(buf);
  }

  if ((v39[25] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v34, *&v39[2], *&v39[10]);
    *buf = &unk_28408AC60;
    if ((v39[25] & 0x80000000) != 0)
    {
      operator delete(*&v39[2]);
      if (AlbumArtistPIDForAlbumImportItem)
      {
        goto LABEL_37;
      }
    }

    else if (AlbumArtistPIDForAlbumImportItem)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v34 = *&v39[2];
    if (AlbumArtistPIDForAlbumImportItem)
    {
      goto LABEL_37;
    }
  }

  v13 = *a2;
  v14 = a2[1];
  v32 = v13;
  v33 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a3[1];
  v30 = *a3;
  v31 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AlbumArtistPIDForAlbumImportItem = ML3ImportSession::_getAlbumArtistPIDForAlbumImportItem(a1, &v32, &v30);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_37:
  if (v9)
  {
    v16 = 0;
    if (v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v17 = (*(**a3 + 32))(*a3, 16777217);
    v18 = MLMediaTypeByStandardizingMediaType(v17);
    if ((v18 & 0x10002) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = (v18 >> 6) & 1;
    }

    if (v12)
    {
      goto LABEL_53;
    }
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  if (AlbumArtistPIDForAlbumImportItem)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (!size && !v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_54;
  }

LABEL_53:
  v23 = ML3CPPBridgeString(&v36, 1);
  v24 = ML3CPPBridgeString(&v35, 1);
  v22 = [*(a1 + 8) groupingKeyForString:v23];
  v25 = [ML3AlbumGroupingIdentifier alloc];
  v21 = [(ML3AlbumGroupingIdentifier *)v25 initWithAlbumArtistPersistentID:AlbumArtistPIDForAlbumImportItem groupingKey:v22 feedURL:v24 seasonNumber:v12 compilation:v10 != 0, v30, v31, v32, v33];
LABEL_54:
  v26 = os_log_create("com.apple.amp.medialibrary", "Import_Oversize");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = &v34;
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v34.__r_.__value_.__r.__words[0];
    }

    *buf = 138544130;
    *&buf[4] = v21;
    v38 = 2114;
    *v39 = v23;
    *&v39[8] = 2082;
    *&v39[10] = v27;
    *&v39[18] = 1024;
    *&v39[20] = v16;
    _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "Creating albumGroupingIdentifier=%{public}@ with albumName=%{public}@, albumArtistName=%{public}s, isBook=%{BOOL}u", buf, 0x26u);
  }

  v28 = v21;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  return v28;
}

void sub_22D523238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ImportSession::_getAlbumArtistPIDForAlbumImportItem(void *a1, void *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    (*(**a3 + 152))(&v42);
  }

  else
  {
    (*(**a2 + 24))(&v42);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v42.super.isa = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v44 = __p;
  }

  v6 = *a3;
  if (*a3)
  {
    v7 = v6[1];
  }

  else
  {
    v7 = 0;
    v6 = *a2;
  }

  (*(*v6 + 24))(&v42);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v42.super.isa = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v41 = __p;
  }

  memset(&v40, 0, sizeof(v40));
  v8 = *a2;
  if (!*a3)
  {
    if (!v8)
    {
      goto LABEL_25;
    }

    (*(*v8 + 24))(&v42, *a2, 285212701);
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    v46 = __p;
    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_25;
  }

  (*(**a3 + 24))(&v42);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  std::string::__init_copy_ctor_external(&v46, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_23:
  v40 = v46;
  v42.super.isa = &unk_28408AC60;
  if (v9 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_25:
  size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  v11 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v12 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>(a1 + 162, &v40);
    if (v12)
    {
      v14 = v12[5];
      v13 = v12[6];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *v14;
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (v15)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v15 = *v14;
        if (*v14)
        {
          goto LABEL_74;
        }
      }
    }
  }

  v16 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v44.__r_.__value_.__l.__size_;
  }

  if (v16)
  {
    v17 = a1[1];
    v18 = ML3CPPBridgeString(&v44, 1);
    v19 = [v17 groupingKeyForString:{v18, v40.__r_.__value_.__r.__words[0]}];

    if (![v19 length])
    {
      v15 = 0;
      goto LABEL_48;
    }

    ML3CPPStringFromData(&v42, v19);
    v20 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>(a1 + 142, &v42);
    v21 = v20;
    if (__p.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v42.super.isa);
      if (!v21)
      {
        goto LABEL_47;
      }
    }

    else if (!v20)
    {
      goto LABEL_47;
    }

    v23 = v21[5];
    v22 = v21[6];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (!v15)
      {
        goto LABEL_47;
      }

LABEL_48:

      goto LABEL_49;
    }

    v15 = *v23;
    if (*v23)
    {
      goto LABEL_48;
    }

LABEL_47:
    v24 = a1[2];
    v45 = v19;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v26 = [v24 executeQuery:@"SELECT album_artist_pid FROM album_artist WHERE grouping_key=? LIMIT 1" withParameters:v25];

    v15 = [v26 int64ValueForFirstRowAndColumn];
    goto LABEL_48;
  }

  v15 = 0;
LABEL_49:
  if (!v15 && v7)
  {
    v27 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(a1 + 44, v7);
    if (!v27)
    {
      goto LABEL_58;
    }

    v29 = v27[5];
    v28 = v27[6];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v29)
    {
      v15 = *v29;
      if (!v28)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    v15 = 0;
    if (v28)
    {
LABEL_56:
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

LABEL_57:
  if (v15)
  {
    goto LABEL_74;
  }

LABEL_58:
  v30 = *a2;
  v31 = os_log_create("com.apple.amp.medialibrary", "Import");
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  if (v30)
  {
    if (v32)
    {
      (*(**a2 + 88))(&v42);
      if (__p.__r_.__value_.__s.__data_[7] >= 0)
      {
        isa = &v42;
      }

      else
      {
        isa = v42.super.isa;
      }

      LODWORD(v46.__r_.__value_.__l.__data_) = 136446210;
      *(v46.__r_.__value_.__r.__words + 4) = isa;
      v34 = "Album import item=%{public}s does not have valid album artist";
      v35 = v31;
      v36 = 12;
LABEL_71:
      _os_log_impl(&dword_22D2FA000, v35, OS_LOG_TYPE_ERROR, v34, &v46, v36);
      if (__p.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v42.super.isa);
      }
    }
  }

  else if (v32)
  {
    (*(**a3 + 88))(&v42);
    if (__p.__r_.__value_.__s.__data_[7] >= 0)
    {
      v37 = &v42;
    }

    else
    {
      v37 = v42.super.isa;
    }

    v38 = &v41;
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v41.__r_.__value_.__r.__words[0];
    }

    LODWORD(v46.__r_.__value_.__l.__data_) = 136446466;
    *(v46.__r_.__value_.__r.__words + 4) = v37;
    WORD2(v46.__r_.__value_.__r.__words[1]) = 2082;
    *(&v46.__r_.__value_.__r.__words[1] + 6) = v38;
    v34 = "Track import item=%{public}s with albumName=%{public}s does not have valid album artist";
    v35 = v31;
    v36 = 22;
    goto LABEL_71;
  }

  v15 = 0;
LABEL_74:
  if (v11 < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_22D5239A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::_getAlbumPersistentID(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 264) <= 0x3E7u)
  {
    v6 = *(a1 + 1520);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 32);
  v8 = ML3AlbumRulesIdentityImportPropertyForSource(v7);
  v9 = v7 - 1;
  if (v8)
  {
    v10 = v9 > 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (v5 && v9 >= 2)
    {
      v11 = [v5 keyValue];
      ML3CPPStringFromData(buf, v11);
      v12 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 1256), buf);
      if ((v41[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v12)
      {
        v13 = v12[5];
        v14 = v12[6];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *v13;
        v16 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v15;
          _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "matched to cached album pid %lld based on grouping key", buf, 0xCu);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          if (v15)
          {
            goto LABEL_65;
          }

          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }
  }

  else if (*(a1 + 32) == 2)
  {
    (*(**a2 + 24))(buf);
    if ((v41[25] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v37, *&v41[2], *&v41[10]);
      *buf = &unk_28408AC60;
      if ((v41[25] & 0x80000000) != 0)
      {
        operator delete(*&v41[2]);
      }
    }

    else
    {
      v37 = *&v41[2];
    }

    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_46;
    }

    if ((v6 & 1) != 0 && (*(a1 + 1527) & 1) == 0)
    {
      ML3ImportSession::_populateExistingAlbumIdentifiersForSource(a1, *(a1 + 32));
    }

    v21 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 2136), &v37);
    if (v21)
    {
      v15 = v21[5];
      v22 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = &v37;
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v37.__r_.__value_.__r.__words[0];
        }

        *buf = 134218242;
        *&buf[4] = v15;
        v40 = 2082;
        *v41 = v23;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_DEFAULT, "matched to cached album pid %lld on cloudID=%{public}s", buf, 0x16u);
      }
    }

    else
    {
LABEL_46:
      v15 = 0;
    }

    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    operator delete(v37.__r_.__value_.__l.__data_);
    if (v15)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v17 = (*(**a2 + 32))();
    if (v17)
    {
      if ((v6 & 1) != 0 && (*(a1 + 1527) & 1) == 0)
      {
        ML3ImportSession::_populateExistingAlbumIdentifiersForSource(a1, *(a1 + 32));
      }

      v18 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 2096), v17);
      if (v18)
      {
        v15 = v18[3];
        v19 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v15;
          v40 = 2048;
          *v41 = v17;
          _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "matched to cached album pid %lld on sourceID=%lld", buf, 0x16u);
        }

LABEL_48:
        if (v15)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_49:
  v24 = (*(**a2 + 112))();
  v25 = v24;
  if (v24)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v27)
    {
      v28 = *v34;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = [(ML3Entity *)ML3Album unrestrictedAllItemsQueryWithlibrary:*(a1 + 8) predicate:*(*(&v33 + 1) + 8 * i) orderingTerms:0, v33];
          v15 = [v30 anyEntityPersistentID];
          if (v15)
          {
            v31 = os_log_create("com.apple.amp.medialibrary", "Import");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = v15;
              v40 = 2114;
              *v41 = v30;
              _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "matched to album pid %lld using query %{public}@", buf, 0x16u);
            }

            goto LABEL_62;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_62:
  }

  else
  {
    v15 = 0;
  }

LABEL_65:
  return v15;
}

void sub_22D524034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_addAlbum(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v324 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  v295 = 0;
  v296 = &v295;
  v297 = 0x4012000000;
  v298 = __Block_byref_object_copy__597;
  v299 = __Block_byref_object_dispose__598;
  v300 = "";
  v302 = 0;
  v301 = 0;
  if (v7)
  {
    v294 = [v7 groupingKey];
    v199 = v294;
  }

  else
  {
    v199 = 0;
    v294 = 0;
  }

  v288 = 0;
  v289 = &v288;
  v290 = 0x3032000000;
  v291 = __Block_byref_object_copy__413;
  v292 = __Block_byref_object_dispose__414;
  v9 = v8;
  v293 = v9;
  v281 = 0;
  v282 = &v281;
  v283 = 0x4812000000;
  v284 = __Block_byref_object_copy__415;
  v285 = __Block_byref_object_dispose__416;
  v286 = "";
  (*(**a2 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v287, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v287 = *&buf[16];
  }

  v274 = 0;
  v275 = &v274;
  v276 = 0x4812000000;
  v277 = __Block_byref_object_copy__415;
  v278 = __Block_byref_object_dispose__416;
  v279 = "";
  (*(**a2 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v280, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v280 = *&buf[16];
  }

  v272[0] = 0;
  v272[1] = v272;
  v272[2] = 0x4812000000;
  v272[3] = __Block_byref_object_copy__415;
  v272[4] = __Block_byref_object_dispose__416;
  v272[5] = "";
  (*(**a2 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v273, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v273 = *&buf[16];
  }

  (*(**a2 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v271, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v271 = *&buf[16];
  }

  v264 = 0;
  v265 = &v264;
  v266 = 0x4812000000;
  v267 = __Block_byref_object_copy__415;
  v268 = __Block_byref_object_dispose__416;
  v269 = "";
  (*(**a2 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    __p = *&buf[16];
  }

  v260 = 0;
  v261 = &v260;
  v262 = 0x2020000000;
  v263 = (*(**a2 + 32))(*a2, 285212679);
  v256 = 0;
  v257 = &v256;
  v258 = 0x2020000000;
  v259 = (*(**a2 + 32))(*a2, 285212690);
  v252 = 0;
  v253 = &v252;
  v254 = 0x2020000000;
  v255 = (*(**a2 + 32))(*a2, 285212680);
  v251[0] = 0;
  v251[1] = v251;
  v251[2] = 0x2020000000;
  v251[3] = (*(**a2 + 32))(*a2, 285212683);
  v247 = 0;
  v248 = &v247;
  v249 = 0x2020000000;
  v250 = (*(**a2 + 32))(*a2, 285212684);
  v243 = 0;
  v244 = &v243;
  v245 = 0x2020000000;
  v246 = (*(**a2 + 32))(*a2, 285212696);
  v239 = 0;
  v240 = &v239;
  v241 = 0x2020000000;
  v242 = (*(**a2 + 32))(*a2, 285212695);
  v235 = 0;
  v236 = &v235;
  v237 = 0x2020000000;
  v238 = (*(**a2 + 32))(*a2, 285212681) != 0;
  v234 = (*(**a2 + 32))(*a2, 285212688) != 0;
  v230 = 0;
  v231 = &v230;
  v232 = 0x2020000000;
  v233 = (*(**a2 + 32))(*a2, 285212693) != 0;
  v226 = 0;
  v227 = &v226;
  v228 = 0x2020000000;
  if ((*(**a2 + 56))(*a2, 33554462))
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(**a2 + 56))(*a2, 16777248);
  }

  v229 = v10;
  v225 = a4;
  v204 = (*(**a2 + 32))(*a2, 167772175);
  v221 = 0;
  v222 = &v221;
  v223 = 0x2020000000;
  v224 = (*(**a2 + 32))(*a2, 285212691);
  v11 = *a5;
  v201 = v9;
  if (*a5)
  {
    v203 = v11[1];
    v12 = (*(*v11 + 32))(v11, 16777217);
    v200 = (MLMediaTypeByStandardizingMediaType(v12) >> 10) & 1;
  }

  else
  {
    v203 = 0;
    v200 = 0;
  }

  v13 = v204;
  if (v204 && v222[3])
  {
    *(a1 + 1530) = 1;
    v14 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(&v323);
      v15 = (v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v323 : v323.__r_.__value_.__r.__words[0];
      v16 = v222[3];
      *buf = 136446722;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v204;
      *&buf[22] = 2048;
      *&buf[24] = v16;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Album Import Item=%{public}s has syncID=%lld and legacySyncID=%lld", buf, 0x20u);
      if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v323.__r_.__value_.__l.__data_);
      }
    }

    v13 = v204;
  }

  if (*a5)
  {
    v17 = *(a1 + 16);
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v203];
    v322 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v322 count:1];
    v20 = [v17 executeQuery:@"SELECT album_pid FROM item WHERE ROWID = ?" withParameters:v19];

    v21 = [v20 int64ValueForFirstRowAndColumn];
    if (*(*a5 + 16) == 1)
    {
      v22 = v21;
      v23 = a5[1];
      v220[0] = *a5;
      v220[1] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(a1, v220, 0x1000009u);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v22)
      {
        v25 = 0;
      }

      else
      {
        v25 = shouldPreserveTrackProperty;
      }

      if (v25 == 1)
      {
        v26 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "Not updating/creating album as pid=0 AND persistentID is preserved by a higher source", buf, 2u);
        }

        ML3ImportSession::_getDefaultEmptyAlbum(&v218);
        v27 = v219;
        ML3ImportSession::_setAlbumInfoForTrackPersistentID(a1, v203, v218, v219);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        goto LABEL_382;
      }

      if ((*(*a5 + 17) & 1) == 0)
      {
        v28 = *a2;
        *(v28 + 8) = v22;
        *(v28 + 16) = 0;
        v29 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(*a5 + 8);
          *buf = 134218240;
          *&buf[4] = v22;
          *&buf[12] = 2048;
          *&buf[14] = v30;
          _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "Setting albumPID=%lld for trackPID=%lld", buf, 0x16u);
        }

        if (v22)
        {
          v31 = *(a1 + 16);
          v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
          v321 = v32;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v321 count:1];
          v34 = [v31 executeQuery:@"SELECT album withParameters:{sort_album, feed_url, user_rating, liked_state, liked_state_changed_date, all_compilations, season_number, representative_item_pid, grouping_key, album_year, contains_classical_work, user_rating_is_derived, sync_id, store_id, cloud_library_id, classical_experience_available, album_artist_pid FROM album WHERE album_pid=?", v33}];
          v35 = v34;
          v210[0] = MEMORY[0x277D85DD0];
          v210[1] = 3321888768;
          v210[2] = ___ZN16ML3ImportSession9_addAlbumENSt3__110shared_ptrI13ML3ImportItemEEP26ML3AlbumGroupingIdentifierxS3__block_invoke;
          v210[3] = &unk_284088758;
          v37 = *a2;
          v36 = a2[1];
          v210[21] = a1;
          v210[22] = v37;
          v211 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v210[4] = &v281;
          v210[5] = &v274;
          v210[6] = v272;
          v210[7] = &v260;
          v210[8] = &v252;
          v210[9] = &v239;
          v210[10] = &v235;
          v210[11] = v251;
          v210[12] = &v247;
          v210[13] = &v226;
          v210[14] = &v256;
          v210[15] = &v243;
          v210[16] = &v221;
          v210[17] = &v264;
          v210[18] = &v230;
          v210[19] = &v288;
          v217 = 16777225;
          v39 = *a5;
          v38 = a5[1];
          v212 = a4;
          v213 = v39;
          v214 = v38;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v210[20] = &v295;
          v215 = v22;
          v216 = v203;
          [v34 enumerateRowsWithBlock:v210];

          if (v214)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v214);
          }

          if (v211)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v211);
          }
        }

        else
        {
          v40 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v203;
            _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_ERROR, "No existing album PID for update item %lli", buf, 0xCu);
          }
        }
      }
    }

    v13 = v204;
  }

  v209 = 0;
  if (!v296[6])
  {
    if (!*(*a2 + 8))
    {
      v41 = *(v265 + 71);
      if (v41 < 0)
      {
        v41 = v265[7];
      }

      if (!v41)
      {
        v42 = [v289[5] groupingKey];
        if ([v42 length] || objc_msgSend(v289[5], "albumArtistPersistentID"))
        {

          v13 = v204;
        }

        else
        {
          v198 = [v289[5] seasonNumber] == 0;

          v13 = v204;
          if (v198)
          {
            goto LABEL_85;
          }
        }
      }
    }

    v43 = v289[5];
    if (*(v265 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v208, v265[6], v265[7]);
    }

    else
    {
      v208 = *(v265 + 2);
    }

    ML3ImportSession::_getAlbumImportItemForGroupingIdentifierAndPIDs(buf, a1, v43, &v208, *(*a2 + 8), v13, &v209);
    v44 = v296[7];
    *(v296 + 3) = *buf;
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v208.__r_.__value_.__l.__data_);
    }
  }

LABEL_85:
  v45 = v296;
  v46 = v296[6];
  if (!v46)
  {
    if (!*(*a2 + 8))
    {
      goto LABEL_96;
    }

    v50 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(buf);
      v51 = *(*a2 + 8);
      v52 = *buf;
      if (buf[23] >= 0)
      {
        v52 = buf;
      }

      LODWORD(v323.__r_.__value_.__l.__data_) = 136446466;
      *(v323.__r_.__value_.__r.__words + 4) = v52;
      WORD2(v323.__r_.__value_.__r.__words[1]) = 2048;
      *(&v323.__r_.__value_.__r.__words[1] + 6) = v51;
      _os_log_impl(&dword_22D2FA000, v50, OS_LOG_TYPE_ERROR, "Import item %{public}s has valid PID=%lld, but cannot be located in the database", &v323, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v45 = v296;
    v46 = v296[6];
    v13 = v204;
    if (!v46)
    {
LABEL_96:
      v53 = v13;
      if (!v13)
      {
        v54 = a2[1];
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v53 = [*(a1 + 128) nextPersistentID];
        v55 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v53;
          _os_log_impl(&dword_22D2FA000, v55, OS_LOG_TYPE_DEFAULT, "created new album pid %lld", buf, 0xCu);
        }

        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }
      }

      v294 = [v289[5] groupingKey];

      v56 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a1, &v275[2], &v282[2]);
      v58 = v57;
      v59 = os_log_create("com.apple.amp.medialibrary", "Import_Oversize");
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = &v282[2];
        if (SHIBYTE(v282[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v60 = v60->__words[0];
        }

        v61 = &v275[2];
        if (SHIBYTE(v275[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v61 = v61->__words[0];
        }

        v62 = v244[3];
        v63 = v222[3];
        v64 = v265 + 6;
        if (*(v265 + 71) < 0)
        {
          v64 = *v64;
        }

        v65 = v253[3];
        v66 = v289[5];
        *buf = 134220802;
        *&buf[4] = v53;
        *&buf[12] = 2082;
        *&buf[14] = v60;
        *&buf[22] = 2082;
        *&buf[24] = v61;
        *&buf[32] = 2048;
        *&buf[34] = v62;
        v305 = 2048;
        v306 = v204;
        v307 = 2048;
        v308 = v63;
        v309 = 2082;
        v310 = v64;
        v311 = 2048;
        v312 = v65;
        v313 = 1024;
        v314 = v200;
        v315 = 2048;
        v316 = v58;
        v317 = 2048;
        v318 = v56;
        v319 = 2114;
        v320 = v66;
        _os_log_impl(&dword_22D2FA000, v59, OS_LOG_TYPE_DEFAULT, "creating new album entry: pid=%lld, name='%{public}s', sortName='%{public}s', storeID=%lld, syncID=%lld, legacySyncID=%lld, cloudLibraryID=%{public}s, likedState=%lld, isMusicVideo=%{BOOL}u, order.section=%ld, order.sortOrder=%lld using albumGroupingIdentifier=%{public}@", buf, 0x76u);
      }

      operator new();
    }
  }

  v48 = v47;
  if (v47)
  {
    v49 = v45[7];
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v49 = 0;
  }

  v67 = v47[1];
  if (!v209)
  {
    v209 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 2256), v47[1]) != 0;
  }

  v68 = *a2;
  *(v68 + 8) = v67;
  *(v68 + 16) = 0;
  (*(*v48 + 24))(buf, v48, 285212673);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v323, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v323 = *&buf[16];
  }

  v69 = SHIBYTE(v282[2].__r_.__value_.__r.__words[2]);
  if (v69 < 0)
  {
    if (!v282[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_143;
    }
  }

  else if (!*(&v282[2].__r_.__value_.__s + 23))
  {
    goto LABEL_143;
  }

  v70 = v282 + 2;
  if (v69 >= 0)
  {
    size = SHIBYTE(v282[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v282[2].__r_.__value_.__l.__size_;
  }

  v72 = HIBYTE(v323.__r_.__value_.__r.__words[2]);
  if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v72 = v323.__r_.__value_.__l.__size_;
  }

  if (size != v72 || (v69 >= 0 ? (v73 = v282 + 2) : (v73 = v70->__r_.__value_.__r.__words[0]), (v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v74 = &v323) : (v74 = v323.__r_.__value_.__r.__words[0]), memcmp(v73, v74, size)))
  {
    std::string::operator=((v48[8] + 8), v70);
    v75 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = &v282[2];
      if (SHIBYTE(v282[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v76 = v76->__words[0];
      }

      v77 = &v323;
      if ((v323.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v77 = v323.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v76;
      *&buf[12] = 2082;
      *&buf[14] = v77;
      _os_log_impl(&dword_22D2FA000, v75, OS_LOG_TYPE_DEFAULT, "Setting albumName=%{public}s (oldValue=%{public}s)", buf, 0x16u);
    }
  }

LABEL_143:
  (*(*v48 + 24))(buf, v48, 285212674);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v303, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v303 = *&buf[16];
  }

  v78 = &unk_27D9FD000;
  if (*a2 && !*a5)
  {
    v85 = *(a1 + 32);
    PropertyIndex = ML3TrackRulesGetPropertyIndex(17, 285212674);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    v82 = *(__albumRules + 56 * PropertyIndex + 4 * v85) == -1;
    shouldPreserveAlbumProperty = ML3ImportSession::_shouldPreserveAlbumProperty(a1, v67, 0x12000002u);
  }

  else
  {
    v79 = *(a1 + 32);
    v80 = ML3TrackRulesGetPropertyIndex(10, 167772170);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    v81 = *(__specialRules + 56 * v80 + 4 * v79);
    v82 = v81 == -1;
    v83 = a5[1];
    v207[0] = *a5;
    v207[1] = v83;
    if (v83)
    {
      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    shouldPreserveAlbumProperty = ML3ImportSession::_shouldPreserveTrackProperty(a1, v207, 0xA000009u);
    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      if (v81 == -1)
      {
        goto LABEL_189;
      }

      goto LABEL_160;
    }
  }

  if (v82)
  {
    goto LABEL_189;
  }

LABEL_160:
  v87 = v275;
  p_data = &v275[2].__r_.__value_.__l.__data_;
  v89 = SHIBYTE(v275[2].__r_.__value_.__r.__words[2]);
  if (v89 < 0)
  {
    if (!v275[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_179;
    }
  }

  else if (!*(&v275[2].__r_.__value_.__s + 23))
  {
    goto LABEL_179;
  }

  if (v89 >= 0)
  {
    v90 = SHIBYTE(v275[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v90 = v275[2].__r_.__value_.__l.__size_;
  }

  v91 = HIBYTE(v303.__r_.__value_.__r.__words[2]);
  if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v91 = v303.__r_.__value_.__l.__size_;
  }

  if (v90 != v91 || (v89 >= 0 ? (v92 = v275 + 2) : (v92 = *p_data), (v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v93 = &v303) : (v93 = v303.__r_.__value_.__r.__words[0]), memcmp(v92, v93, v90)))
  {
    if ((shouldPreserveAlbumProperty & 1) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_189;
  }

LABEL_179:
  if ((v89 & 0x80000000) != 0)
  {
    if (!v87[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_183;
    }
  }

  else if (!v89)
  {
LABEL_183:
    v94 = HIBYTE(v303.__r_.__value_.__r.__words[2]);
    if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v94 = v303.__r_.__value_.__l.__size_;
    }

    if (v94)
    {
      v95 = shouldPreserveAlbumProperty;
    }

    else
    {
      v95 = 1;
    }

    if (v95)
    {
      goto LABEL_189;
    }

LABEL_238:
    v125 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a1, p_data, &v282[2]);
    v127 = v126;
    std::string::operator=((v48[8] + 32), v275 + 2);
    v128 = v48[8];
    *(v128 + 72) = v125;
    *(v128 + 80) = v127;
    v129 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      v130 = &v275[2];
      if (SHIBYTE(v275[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v130 = v130->__words[0];
      }

      v131 = &v303;
      if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v131 = v303.__r_.__value_.__r.__words[0];
      }

      *buf = 136446978;
      *&buf[4] = v130;
      *&buf[12] = 2048;
      *&buf[14] = v125;
      *&buf[22] = 1024;
      *&buf[24] = v127;
      *&buf[28] = 2082;
      *&buf[30] = v131;
      _os_log_impl(&dword_22D2FA000, v129, OS_LOG_TYPE_DEFAULT, "Setting albumSortName=%{public}s, order=%lld, section=%d (oldValue=%{public}s)", buf, 0x26u);
    }

    v132 = v48[1];
    v133 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 2176), v132);
    if (v133)
    {
      v134 = v133[3];
      v135 = v133[4];
      if (v135 == v127 && v134 == v125)
      {
        v96 = 1;
        goto LABEL_190;
      }

      v206.__r_.__value_.__r.__words[0] = v132;
      *buf = &v206;
      v139 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>((a1 + 2216), v132);
      v139[3] = v125;
      v139[4] = v127;
      v206.__r_.__value_.__r.__words[0] = v48[1];
      *buf = &v206;
      v140 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>((a1 + 2176), v206.__r_.__value_.__r.__words[0]);
      v140[3] = v125;
      v140[4] = v127;
      v141 = os_log_create("com.apple.amp.medialibrary", "Import");
      v78 = &unk_27D9FD000;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        v142 = v48[1];
        v143 = &v275[2];
        if (SHIBYTE(v275[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v143 = v143->__words[0];
        }

        *buf = 134219266;
        *&buf[4] = v142;
        *&buf[12] = 2082;
        *&buf[14] = v143;
        *&buf[22] = 2048;
        *&buf[24] = v127;
        *&buf[32] = 2048;
        *&buf[34] = v125;
        v305 = 2048;
        v306 = v135;
        v307 = 2048;
        v308 = v134;
        _os_log_impl(&dword_22D2FA000, v141, OS_LOG_TYPE_DEFAULT, "Will update sort order for tracks with albumPID=%lld with sortName=%{public}s, order.section=%ld, order.sortOrder=%lld (oldValue section=%ld, sortOrder=%lld)", buf, 0x3Eu);
      }
    }

    v96 = 1;
    goto LABEL_190;
  }

LABEL_189:
  v96 = 0;
LABEL_190:
  v97 = (*(*v48 + 32))(v48, 285212691);
  v98 = v222[3];
  v99 = v204;
  if (v98)
  {
    v100 = v97;
    if (v98 != v97)
    {
      *(v48[8] + 96) = v98;
      v101 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v222[3];
        *buf = 134218240;
        *&buf[4] = v102;
        *&buf[12] = 2048;
        *&buf[14] = v100;
        _os_log_impl(&dword_22D2FA000, v101, OS_LOG_TYPE_DEFAULT, "Setting albumSyncId=%lld (oldValue=%lld) using property MLImportPropertyKeyAlbumSyncID", buf, 0x16u);
      }

      v96 = 1;
      v99 = v204;
    }
  }

  v103 = (*(*v48 + 32))(v48, 285212691);
  if (v99)
  {
    v104 = v103;
    if (v99 != v103)
    {
      *(v48[8] + 96) = v99;
      v105 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v99;
        *&buf[12] = 2048;
        *&buf[14] = v104;
        _os_log_impl(&dword_22D2FA000, v105, OS_LOG_TYPE_DEFAULT, "Setting albumSyncId=%lld (oldValue=%lld) using property MLImportPropertyKeyAlbumSyncId", buf, 0x16u);
      }

      v96 = 1;
    }
  }

  v106 = (*(*v48 + 32))(v48, 285212696);
  v107 = v244[3];
  if (v107)
  {
    v108 = v106;
    if (v107 != v106)
    {
      *(v48[8] + 104) = v107;
      v109 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = v244[3];
        *buf = 134218240;
        *&buf[4] = v110;
        *&buf[12] = 2048;
        *&buf[14] = v108;
        _os_log_impl(&dword_22D2FA000, v109, OS_LOG_TYPE_DEFAULT, "Setting albumStoreID=%lld (oldValue=%lld)", buf, 0x16u);
      }

      v96 = 1;
    }
  }

  (*(*v48 + 24))(buf, v48, 285212697);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v206, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v206 = *&buf[16];
  }

  if (MSVDeviceIsWatch() && *(a1 + 32) == 1)
  {
    v111 = (v265 + 6);
    v112 = *(v265 + 71);
    if (v112 >= 0)
    {
      v113 = *(v265 + 71);
    }

    else
    {
      v113 = v265[7];
    }

    v114 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
    if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v114 = v206.__r_.__value_.__l.__size_;
    }

    if (v113 != v114 || (v112 >= 0 ? (v115 = v265 + 6) : (v115 = v111->__r_.__value_.__r.__words[0]), (v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v116 = &v206) : (v116 = v206.__r_.__value_.__r.__words[0]), memcmp(v115, v116, v113)))
    {
      std::string::operator=((v48[8] + 112), v111);
      v117 = *(v265 + 71);
      if (v117 < 0)
      {
        v117 = v265[7];
      }

      if (!v117)
      {
        v118 = (a1 + 1336);
        v119 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 1336), &v206);
        if (v119)
        {
          v120 = *(a1 + 1344);
          v121 = v119[1];
          v122 = vcnt_s8(v120);
          v122.i16[0] = vaddlv_u8(v122);
          if (v122.u32[0] > 1uLL)
          {
            if (v121 >= *&v120)
            {
              v121 %= *&v120;
            }
          }

          else
          {
            v121 &= *&v120 - 1;
          }

          v144 = *(*v118 + 8 * v121);
          do
          {
            v145 = v144;
            v144 = *v144;
          }

          while (v144 != v119);
          if (v145 == (a1 + 1352))
          {
            goto LABEL_275;
          }

          v146 = v145[1];
          if (v122.u32[0] > 1uLL)
          {
            if (v146 >= *&v120)
            {
              v146 %= *&v120;
            }
          }

          else
          {
            v146 &= *&v120 - 1;
          }

          if (v146 != v121)
          {
LABEL_275:
            if (!*v119)
            {
              goto LABEL_276;
            }

            v147 = *(*v119 + 8);
            if (v122.u32[0] > 1uLL)
            {
              if (v147 >= *&v120)
              {
                v147 %= *&v120;
              }
            }

            else
            {
              v147 &= *&v120 - 1;
            }

            if (v147 != v121)
            {
LABEL_276:
              *(*v118 + 8 * v121) = 0;
            }
          }

          v148 = *v119;
          if (*v119)
          {
            v149 = *(v148 + 8);
            if (v122.u32[0] > 1uLL)
            {
              if (v149 >= *&v120)
              {
                v149 %= *&v120;
              }
            }

            else
            {
              v149 &= *&v120 - 1;
            }

            if (v149 != v121)
            {
              *(*v118 + 8 * v149) = v145;
              v148 = *v119;
            }
          }

          *v145 = v148;
          *v119 = 0;
          --*(a1 + 1360);
          *buf = v119;
          *&buf[8] = a1 + 1336;
          buf[16] = 1;
          *&buf[17] = 0;
          *&buf[20] = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
        }
      }

      v136 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_291;
      }

      v137 = v265 + 6;
      if (*(v265 + 71) < 0)
      {
        v137 = *v137;
      }

      v138 = &v206;
      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v138 = v206.__r_.__value_.__r.__words[0];
      }

      goto LABEL_290;
    }
  }

  else
  {
    if ((*(v265 + 71) & 0x8000000000000000) != 0)
    {
      if (!v265[7])
      {
        goto LABEL_237;
      }
    }

    else if (!*(v265 + 71))
    {
      goto LABEL_237;
    }

    v123 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
    if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v123 = v206.__r_.__value_.__l.__size_;
    }

    if (!v123)
    {
      std::string::operator=((v48[8] + 112), v265 + 2);
      v136 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
LABEL_291:

        v124 = 1;
        v96 = 1;
        goto LABEL_292;
      }

      v137 = v265 + 6;
      if (*(v265 + 71) < 0)
      {
        v137 = *v137;
      }

      v138 = &v206;
      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v138 = v206.__r_.__value_.__r.__words[0];
      }

LABEL_290:
      *buf = 136446466;
      *&buf[4] = v137;
      *&buf[12] = 2082;
      *&buf[14] = v138;
      _os_log_impl(&dword_22D2FA000, v136, OS_LOG_TYPE_DEFAULT, "Setting albumCloudLibraryID=%{public}s (oldValue=%{public}s)", buf, 0x16u);
      goto LABEL_291;
    }
  }

LABEL_237:
  v124 = 0;
LABEL_292:
  v150 = (*(*v48 + 32))(v48, 285212679);
  if ((*(**a2 + 56))(*a2, 285212679))
  {
    v151 = v261[3];
    if (v151 != v150)
    {
      *(v48[8] + 56) = v151;
      v152 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = v261[3];
        *buf = 134218240;
        *&buf[4] = v153;
        *&buf[12] = 2048;
        *&buf[14] = v150;
        _os_log_impl(&dword_22D2FA000, v152, OS_LOG_TYPE_DEFAULT, "Setting albumUserRating=%lld (oldValue=%lld)", buf, 0x16u);
      }

      v96 = 1;
    }
  }

  v154 = (*(*v48 + 32))(v48, 285212690);
  if ((*(**a2 + 56))(*a2, 285212690))
  {
    v155 = v257[3];
    if (v155 != v154)
    {
      *(v48[8] + 60) = v155 != 0;
      v156 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
      {
        v157 = v257[3];
        *buf = 134218240;
        *&buf[4] = v157;
        *&buf[12] = 2048;
        *&buf[14] = v154;
        _os_log_impl(&dword_22D2FA000, v156, OS_LOG_TYPE_DEFAULT, "Setting albumUserRatingIsDerived=%lld (oldValue=%lld)", buf, 0x16u);
      }

      v96 = 1;
    }
  }

  v158 = (*(*v48 + 32))(v48, 285212680);
  v159 = v253[3];
  if (v159)
  {
    v160 = v158;
    if (v159 != v158)
    {
      *(v48[8] + 64) = v159;
      v161 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        v162 = v253[3];
        *buf = 134218240;
        *&buf[4] = v162;
        *&buf[12] = 2048;
        *&buf[14] = v160;
        _os_log_impl(&dword_22D2FA000, v161, OS_LOG_TYPE_DEFAULT, "Setting albumLikedState=%lld (oldValue=%lld)", buf, 0x16u);
      }

      v96 = 1;
    }
  }

  v163 = (*(*v48 + 32))(v48, 285212695);
  v164 = v240[3];
  if (v164)
  {
    v165 = v163;
    if (v164 != v163)
    {
      *(v48[8] + 144) = v164;
      v166 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
      {
        v167 = v240[3];
        *buf = 134218240;
        *&buf[4] = v167;
        *&buf[12] = 2048;
        *&buf[14] = v165;
        _os_log_impl(&dword_22D2FA000, v166, OS_LOG_TYPE_DEFAULT, "Setting albumLikedStateChangedDate=%lld (oldValue=%lld)", buf, 0x16u);
      }

      v96 = 1;
    }
  }

  v168 = (*(*v48 + 32))(v48, 285212684);
  v169 = *(a1 + 32);
  v170 = ML3TrackRulesGetPropertyIndex(17, 285212684);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(v78[80] + 56 * v170 + 4 * v169) != -1 && (*(**a2 + 56))(*a2, 285212684) && v248[3] != v168 && (ML3ImportSession::_shouldPreserveAlbumProperty(a1, v48[1], 0x1100000Cu) & 1) == 0)
  {
    *buf = v48[1];
    std::vector<unsigned long long>::push_back[abi:ne200100](a1 + 472, buf);
    *(v48[8] + 68) = v248[3];
    v171 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
    {
      v172 = v248[3];
      *buf = 134217984;
      *&buf[4] = v172;
      _os_log_impl(&dword_22D2FA000, v171, OS_LOG_TYPE_DEFAULT, "Setting albumYear=%lld", buf, 0xCu);
    }

    v96 = 1;
  }

  v173 = (*(*v48 + 32))(v48, 285212688);
  if ((v227[3] & 1) != 0 || *(*a2 + 16) != 1 || *(*a2 + 17) == 1)
  {
    v174 = v234;
    if (v234 != (v173 != 0))
    {
      v175 = *(a1 + 32);
      v176 = ML3TrackRulesGetPropertyIndex(17, 285212688);
      if (_ML3InitializeTrackRulesIfNeeded___once != -1)
      {
        dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
      }

      if (*(v78[80] + 56 * v176 + 4 * v175) != -1 && (ML3ImportSession::_shouldPreserveAlbumProperty(a1, v48[1], 0x11000010u) & 1) == 0)
      {
        *buf = v48[1];
        std::vector<unsigned long long>::push_back[abi:ne200100](a1 + 496, buf);
        v177 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v174;
          _os_log_impl(&dword_22D2FA000, v177, OS_LOG_TYPE_DEFAULT, "Setting albumContainsClassicalWork=%d", buf, 8u);
        }

        v96 = 1;
      }
    }
  }

  v178 = (*(*v48 + 32))(v48, 285212693) != 0;
  v179 = *(v231 + 24);
  if (v179 != v178)
  {
    *(v48[8] + 137) = v179;
    v180 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
    {
      v181 = *(v231 + 24);
      *buf = 67109376;
      *&buf[4] = v181;
      *&buf[8] = 1024;
      *&buf[10] = v178;
      _os_log_impl(&dword_22D2FA000, v180, OS_LOG_TYPE_DEFAULT, "Setting albumContainsClassicalExperienceAvailable=%{BOOL}u (oldValue=%{BOOL}u)", buf, 0xEu);
    }

    v96 = 1;
  }

  v182 = (*(*v48 + 32))(v48, 285212681);
  v183 = *(a1 + 32);
  v184 = ML3TrackRulesGetPropertyIndex(17, 285212681);
  if (_ML3InitializeTrackRulesIfNeeded___once != -1)
  {
    dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
  }

  if (*(v78[80] + 56 * v184 + 4 * v183) == -1 || !(*(**a2 + 56))(*a2, 285212681))
  {
    goto LABEL_345;
  }

  v185 = v182 != 0;
  v186 = a1;
  if (*(v236 + 24) != v185)
  {
    v186 = a1;
    if ((ML3ImportSession::_shouldPreserveAlbumProperty(a1, v48[1], 0x11000009u) & 1) == 0)
    {
      *(v48[8] + 136) = *(v236 + 24);
      *buf = v48[1];
      std::vector<unsigned long long>::push_back[abi:ne200100](a1 + 520, buf);
      v187 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
      {
        v188 = *(v236 + 24);
        *buf = 67109376;
        *&buf[4] = v188;
        *&buf[8] = 1024;
        *&buf[10] = v185;
        _os_log_impl(&dword_22D2FA000, v187, OS_LOG_TYPE_DEFAULT, "Setting albumAllCompilations=%{BOOL}u (oldValue=%{BOOL}u", buf, 0xEu);
      }

      v96 = 1;
LABEL_345:
      v186 = a1;
    }
  }

  if (!v124)
  {
    goto LABEL_364;
  }

  v189 = v265;
  v190 = *(v265 + 71);
  if (v190 < 0)
  {
    if (!v265[7])
    {
      goto LABEL_364;
    }

LABEL_351:
    v192 = v48[8];
    v191 = v48[9];
    if (v191)
    {
      atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
      LOBYTE(v190) = *(v189 + 71);
    }

    if ((v190 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(buf, v189[6], v189[7]);
    }

    else
    {
      *buf = *(v189 + 3);
      *&buf[16] = v189[8];
    }

    *&buf[24] = v192;
    *&buf[32] = v191;
    if (v191)
    {
      atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<ML3AlbumData>>>((v186 + 1336), buf);
    if (*&buf[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v191)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v191);
    }

    goto LABEL_364;
  }

  if (*(v265 + 71))
  {
    goto LABEL_351;
  }

LABEL_364:
  if (v96 && !v209)
  {
    v193 = v48[1];
    v195 = v296[6];
    v194 = v296[7];
    *buf = v193;
    *&buf[8] = v195;
    *&buf[16] = v194;
    if (v194)
    {
      atomic_fetch_add_explicit((v194 + 8), 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::__emplace_unique_key_args<long long,std::pair<long long const,std::shared_ptr<ML3ImportItem>>>((v186 + 2256), v193);
    if (*&buf[16])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[16]);
    }
  }

  v196 = v48[8];
  v197 = v48[9];
  if (v197)
  {
    atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ML3ImportSession::_setAlbumInfoForTrackPersistentID(v186, v203, v196, v197);
  if (v197)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v197);
  }

  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v303.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v323.__r_.__value_.__l.__data_);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

LABEL_382:
  _Block_object_dispose(&v221, 8);
  _Block_object_dispose(&v226, 8);
  _Block_object_dispose(&v230, 8);
  _Block_object_dispose(&v235, 8);
  _Block_object_dispose(&v239, 8);
  _Block_object_dispose(&v243, 8);
  _Block_object_dispose(&v247, 8);
  _Block_object_dispose(v251, 8);
  _Block_object_dispose(&v252, 8);
  _Block_object_dispose(&v256, 8);
  _Block_object_dispose(&v260, 8);
  _Block_object_dispose(&v264, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v271.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(v272, 8);
  if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v273.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v274, 8);
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v281, 8);
  if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v287.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v288, 8);

  _Block_object_dispose(&v295, 8);
  if (v302)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v302);
  }
}

void sub_22D526F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose(&STACK[0x388], 8);
  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  _Block_object_dispose(&STACK[0x3F0], 8);
  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  _Block_object_dispose(&STACK[0x438], 8);
  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  _Block_object_dispose(&STACK[0x480], 8);
  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  _Block_object_dispose(&STACK[0x4C8], 8);

  _Block_object_dispose(&STACK[0x500], 8);
  if (STACK[0x538])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x538]);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__erase_unique<long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
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

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
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
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
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
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
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
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

__n128 __Block_byref_object_copy__597(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__598(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __Block_byref_object_copy__413(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__415(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__416(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t ML3ImportSession::_shouldPreserveTrackProperty(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = v19;
  v4 = HIBYTE(a3);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(HIBYTE(a3), a3);
  v6 = *(a1 + 32);
  if (v6 < 1)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v7 = PropertyIndex;
    LOBYTE(v8) = 0;
    v9 = v6 + 1;
    v10 = (v6 << 32) - 0x100000000;
    v11 = v19 + v6 - 1;
    while (1)
    {
      if (*(ML3TrackRulesGetRule(v4, v7) + (v10 >> 30)) == 1)
      {
        if ((v8 & 1) == 0)
        {
          v12 = *(*a2 + 8);
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT sync_id, store_saga_id, purchase_history_id, is_ota_purchased FROM item_store WHERE item_pid = %lld", v12];
          v14 = [*(a1 + 64) executeQuery:v13];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = ___ZN16ML3ImportSession28_shouldPreserveTrackPropertyENSt3__110shared_ptrI13ML3ImportItemEEj_block_invoke;
          v17[3] = &unk_2787653F0;
          v17[4] = v18;
          v17[5] = v12;
          [v14 enumerateRowsWithBlock:v17];
        }

        v8 = 1;
        if (*v11)
        {
          break;
        }
      }

      --v9;
      v10 -= 0x100000000;
      --v11;
      if (v9 <= 1)
      {
        goto LABEL_8;
      }
    }
  }

  _Block_object_dispose(v18, 8);
  return v8;
}

void sub_22D5279A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ML3ImportSession::_getDefaultEmptyAlbum(ML3ImportSession *this)
{
  {
    __cxa_atexit(std::shared_ptr<ML3AlbumData>::~shared_ptr[abi:ne200100], &ML3ImportSession::_getDefaultEmptyAlbum(void)::__emptyAlbumData, &dword_22D2FA000);
  }

  if (ML3ImportSession::_getDefaultEmptyAlbum(void)::onceToken != -1)
  {
    dispatch_once(&ML3ImportSession::_getDefaultEmptyAlbum(void)::onceToken, &__block_literal_global_762);
  }

  v2 = qword_27D9FDBC0;
  *this = ML3ImportSession::_getDefaultEmptyAlbum(void)::__emptyAlbumData;
  *(this + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void ML3ImportSession::_setAlbumInfoForTrackPersistentID(uint64_t a1, unint64_t a2, uint64_t a3, std::__shared_weak_count *a4)
{
  v15[0] = a2;
  if (a2)
  {
    v8 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 352), a2);
    if (v8)
    {
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v8[8];
      v8[7] = a3;
      v8[8] = a4;
      if (v9)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      memset(v11, 0, sizeof(v11));
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v12 = a3;
      *(&v12 + 1) = a4;
      v15[1] = v15;
      v10 = std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 352), a2);
      ML3CollectionInfoSet::operator=(v10 + 3, v11);
      if (a4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a4);
      }
    }
  }
}

void ___ZN16ML3ImportSession9_addAlbumENSt3__110shared_ptrI13ML3ImportItemEEP26ML3AlbumGroupingIdentifierxS3__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v44 = a3;
  v6 = *(a1 + 168);
  v7 = [v5 stringForColumnIndex:0];
  v56 = v7;
  v8 = [v5 stringForColumnIndex:1];
  v57 = v8;
  v9 = [v5 stringForColumnIndex:2];
  v53 = [v5 intForColumnIndex:3];
  v52 = [v5 intForColumnIndex:4];
  v51 = [v5 int64ForColumnIndex:5];
  v50 = [v5 intForColumnIndex:6];
  v49 = [v5 intForColumnIndex:7];
  v10 = [v5 int64ForColumnIndex:8];
  v58 = [v5 dataForColumnIndex:9];
  v48 = [v5 int64ForColumnIndex:10];
  v43 = v10;
  v11 = [v5 intForColumnIndex:11] != 0;
  v47 = [v5 intForColumnIndex:12];
  v46 = [v5 int64ForColumnIndex:13];
  v45 = [v5 int64ForColumnIndex:14];
  v59 = [v5 stringForColumnIndex:15];
  v12 = [v5 intForColumnIndex:16] != 0;
  v55 = [v5 int64ForColumnIndex:17];
  v13 = (*(**(a1 + 176) + 56))(*(a1 + 176), 285212673);
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    MEMORY[0x2318CCFB0](*(*(a1 + 32) + 8) + 48, [v7 UTF8String]);
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212674) & 1) == 0 && [v8 length])
  {
    MEMORY[0x2318CCFB0](*(*(a1 + 40) + 8) + 48, [v8 UTF8String]);
  }

  v15 = (*(**(a1 + 176) + 56))(*(a1 + 176), 285212682);
  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    MEMORY[0x2318CCFB0](*(*(a1 + 48) + 8) + 48, [v9 UTF8String]);
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212679) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = v53;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212680) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = v52;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212695) & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = v51;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212681) & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = v50 != 0;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212683) & 1) == 0)
  {
    *(*(*(a1 + 88) + 8) + 24) = v49;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212684) & 1) == 0)
  {
    *(*(*(a1 + 96) + 8) + 24) = v48;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212688) & 1) == 0)
  {
    *(*(*(a1 + 104) + 8) + 24) = v11;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212690) & 1) == 0)
  {
    *(*(*(a1 + 112) + 8) + 24) = v47;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212696) & 1) == 0)
  {
    *(*(*(a1 + 120) + 8) + 24) = v45;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212691) & 1) == 0)
  {
    *(*(*(a1 + 128) + 8) + 24) = v46;
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212697) & 1) == 0)
  {
    MEMORY[0x2318CCFB0](*(*(a1 + 136) + 8) + 48, [v59 UTF8String]);
  }

  if (((*(**(a1 + 176) + 56))(*(a1 + 176), 285212693) & 1) == 0)
  {
    *(*(*(a1 + 144) + 8) + 24) = v12;
  }

  v17 = [ML3AlbumGroupingIdentifier alloc];
  v18 = ML3CPPBridgeString((*(*(a1 + 48) + 8) + 48), 0);
  v54 = [(ML3AlbumGroupingIdentifier *)v17 initWithAlbumArtistPersistentID:v55 groupingKey:v58 feedURL:v18 seasonNumber:*(*(*(a1 + 88) + 8) + 24) compilation:*(*(*(a1 + 80) + 8) + 24)];

  v19 = [ML3AlbumGroupingIdentifier alloc];
  v20 = *(a1 + 192);
  v21 = *(v6 + 8);
  v22 = ML3CPPBridgeString((*(*(a1 + 32) + 8) + 48), 0);
  v23 = [v21 groupingKeyForString:v22];
  v24 = ML3CPPBridgeString((*(*(a1 + 48) + 8) + 48), 0);
  v25 = [(ML3AlbumGroupingIdentifier *)v19 initWithAlbumArtistPersistentID:v20 groupingKey:v23 feedURL:v24 seasonNumber:*(*(*(a1 + 88) + 8) + 24) compilation:*(*(*(a1 + 80) + 8) + 24)];
  v26 = *(*(a1 + 152) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v28 = *(a1 + 232);
  v29 = *(v6 + 32);
  LODWORD(v19) = HIBYTE(v28);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(HIBYTE(v28), v28);
  if (*(ML3TrackRulesGetRule(v19, PropertyIndex) + 4 * v29) == -1 || ([*(*(*(a1 + 152) + 8) + 40) isEqual:v54] & 1) != 0)
  {
    goto LABEL_44;
  }

  v31 = *(a1 + 208);
  v67[0] = *(a1 + 200);
  v67[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v6, v67, *(a1 + 232));
  v33 = shouldPreserveTrackProperty;
  if (!v31)
  {
    if (!shouldPreserveTrackProperty)
    {
      goto LABEL_56;
    }

LABEL_44:
    if (v56)
    {
      std::string::basic_string[abi:ne200100]<0>(&v65, [v56 UTF8String]);
      if (v57)
      {
LABEL_46:
        v34 = v57;
        std::string::basic_string[abi:ne200100]<0>(v63, [v57 UTF8String]);
        goto LABEL_49;
      }
    }

    else
    {
      v65 = 0uLL;
      v66 = 0;
      if (v57)
      {
        goto LABEL_46;
      }
    }

    v63[0] = 0;
    v63[1] = 0;
    v64 = 0;
LABEL_49:
    if (v59)
    {
      v35 = v59;
      std::string::basic_string[abi:ne200100]<0>(v61, [v59 UTF8String]);
      if (v9)
      {
LABEL_51:
        v36 = v9;
        std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
        goto LABEL_54;
      }
    }

    else
    {
      v61[0] = 0;
      v61[1] = 0;
      v62 = 0;
      if (v9)
      {
        goto LABEL_51;
      }
    }

    memset(__p, 0, sizeof(__p));
LABEL_54:
    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v6, v63, &v65);
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  if (v33)
  {
    goto LABEL_44;
  }

LABEL_56:
  if (v43 == *(a1 + 224))
  {
    v37 = *(v6 + 16);
    v38 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 216)];
    v68 = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    [v37 executeUpdate:@"UPDATE album SET representative_item_pid=0 WHERE album_pid=?" withParameters:v39 error:0];
  }

  *(*(a1 + 176) + 8) = 0;
  v40 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(a1 + 216);
    v41 = *(a1 + 224);
    LODWORD(v69.__r_.__value_.__l.__data_) = 134218240;
    *(v69.__r_.__value_.__r.__words + 4) = v41;
    WORD2(v69.__r_.__value_.__r.__words[1]) = 2048;
    *(&v69.__r_.__value_.__r.__words[1] + 6) = v42;
    _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_DEFAULT, "Removing trackPersistentID=%lld as the representative item for albumPersistentID=%lld as the groupingKey has changed/can no longer be applied", &v69, 0x16u);
  }
}

void ML3ImportSession::_getAlbumImportItemForGroupingIdentifierAndPIDs(void *a1, uint64_t a2, void *a3, uint64_t *a4, unint64_t a5, unint64_t a6, _BYTE *a7)
{
  v80[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  *a7 = 0;
  v58 = v13;
  if (v13)
  {
    goto LABEL_5;
  }

  v14 = *(a4 + 23);
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 | a5 | a6)
  {
LABEL_5:
    *buf = 0;
    v68 = buf;
    v69 = 0x4012000000;
    v70 = __Block_byref_object_copy__597;
    v71 = __Block_byref_object_dispose__598;
    v72 = "";
    v73 = 0;
    v74 = 0;
    if (a5)
    {
      v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 2256), a5);
      if (v15)
      {
        *a7 = 1;
        v17 = v15[3];
        v16 = v15[4];
        if (!v16)
        {
          v73 = v15[3];
          v74 = 0;
          goto LABEL_36;
        }

        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = v74;
        v73 = v17;
        v74 = v16;
        if (!v18)
        {
LABEL_36:
          v37 = *(v68 + 7);
          *a1 = *(v68 + 6);
          a1[1] = v37;
          if (v37)
          {
            atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
          }

LABEL_77:
          _Block_object_dispose(buf, 8);
          v31 = v58;
          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          goto LABEL_79;
        }

LABEL_35:
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        goto LABEL_36;
      }

      v24 = a4 + 23;
      v23 = *(a4 + 23);
      if (v23 < 0)
      {
        v23 = a4[1];
      }

      if (!v23)
      {
        v25 = [CFSTR(""SELECT album sort_album];
        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
        v79 = v26;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
LABEL_68:

        goto LABEL_69;
      }

      v25 = [CFSTR(""SELECT album sort_album];
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
      v80[0] = v26;
      v27 = a4;
      if (*v24 < 0)
      {
        v27 = *a4;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
      v80[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
LABEL_67:

      goto LABEL_68;
    }

    if ((*(a4 + 23) & 0x8000000000000000) != 0)
    {
      if (a4[1])
      {
LABEL_12:
        v19 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a2 + 1336), a4);
        if (!v19)
        {
          goto LABEL_45;
        }

        v21 = v19[5];
        v20 = v19[6];
        if (v20)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if (*(a4 + 23))
    {
      goto LABEL_12;
    }

    if (a6)
    {
      v32 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 1016), a6);
      if (!v32)
      {
        goto LABEL_45;
      }

      v21 = v32[3];
      v20 = v32[4];
      if (v20)
      {
LABEL_14:
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = *v21;
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        if (!v22)
        {
          goto LABEL_45;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      v38 = [v13 keyValue];
      ML3CPPStringFromData(__p, v38);
      v39 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a2 + 1256), __p);
      if (v66 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v39)
      {
        goto LABEL_45;
      }

      v21 = v39[5];
      v20 = v39[6];
      if (v20)
      {
        goto LABEL_14;
      }
    }

LABEL_30:
    if (!*v21)
    {
      goto LABEL_45;
    }

LABEL_31:
    v33 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 2256), 0);
    if (v33)
    {
      *a7 = 1;
      v34 = v68;
      v36 = v33[3];
      v35 = v33[4];
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v34 + 7);
      *(v34 + 6) = v36;
      *(v34 + 7) = v35;
      if (!v18)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_45:
    v24 = a4 + 23;
    v40 = *(a4 + 23);
    if (v40 < 0)
    {
      v40 = a4[1];
    }

    if (v40)
    {
      v29 = [MEMORY[0x277CBEB18] array];
      v41 = [CFSTR(""SELECT album sort_album];
      v42 = a4;
      if (*v24 < 0)
      {
        v42 = *a4;
      }

      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v42];
      [v29 addObject:v43];

      if (a6)
      {
        v44 = [v41 stringByAppendingString:@" OR (cloud_library_id='' AND (ROWID=? OR sync_id=?))"];

        v45 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v78[0] = v45;
        v46 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v78[1] = v46;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
        [v29 addObjectsFromArray:v47];
      }

      else
      {
        v44 = v41;
      }

      if (!v58)
      {
        v25 = v44;
LABEL_69:
        v54 = [*(a2 + 16) executeQuery:v25 withParameters:v29];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3321888768;
        v59[2] = ___ZN16ML3ImportSession47_getAlbumImportItemForGroupingIdentifierAndPIDsEP26ML3AlbumGroupingIdentifierNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEExxRb_block_invoke;
        v59[3] = &unk_284088670;
        v61 = buf;
        v62 = a2;
        v60 = v58;
        v63 = a6;
        if (*v24 < 0)
        {
          std::string::__init_copy_ctor_external(&v64, *a4, a4[1]);
        }

        else
        {
          v64 = *a4;
        }

        [v54 enumerateRowsWithBlock:v59];
        v55 = *(v68 + 7);
        *a1 = *(v68 + 6);
        a1[1] = v55;
        if (v55)
        {
          atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        goto LABEL_77;
      }

      v26 = [v58 groupingKey];
      v48 = [v58 albumArtistPersistentID];
      if (![v26 length])
      {
        v25 = [v44 stringByAppendingString:@" OR (cloud_library_id='' AND grouping_key IS NULL AND album_artist_pid=?)"];

        v28 = [MEMORY[0x277CCABB0] numberWithLongLong:v48];
        [v29 addObject:v28];
        goto LABEL_67;
      }

      v25 = [v44 stringByAppendingString:@" OR (cloud_library_id='' AND grouping_key IN (?) AND album_artist_pid=?)"];

      v77[0] = v26;
      v28 = [MEMORY[0x277CCABB0] numberWithLongLong:v48];
      v77[1] = v28;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
      [v29 addObjectsFromArray:v49];
    }

    else
    {
      v29 = [MEMORY[0x277CBEB18] array];
      if (v58)
      {
        v26 = [v58 groupingKey];
        v57 = [v58 albumArtistPersistentID];
      }

      else
      {
        v26 = 0;
        v57 = 0;
      }

      v50 = @"SELECT album, sort_album, feed_url, rowid, grouping_key, album_artist_pid, season_number, all_compilations, user_rating, liked_state, album_year, (CASE WHEN season_number > 0 THEN season_number ELSE IFNULL(sort_album, album) END), contains_classical_work, user_rating_is_derived, sync_id, classical_experience_available, store_id, liked_state_changed_date, cloud_library_id, representative_item_pid FROM album WHERE ";
      if (a6)
      {
        v51 = [CFSTR(""SELECT album sort_album];
        v56 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v76[0] = v56;
        v52 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v76[1] = v52;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
        [v29 addObjectsFromArray:v53];

        v50 = v51;
      }

      if (![v26 length])
      {
        v25 = [(__CFString *)v50 stringByAppendingString:@" grouping_key IS NULL AND album_artist_pid=?"];

        v28 = [MEMORY[0x277CCABB0] numberWithLongLong:v57];
        [v29 addObject:v28];
        goto LABEL_67;
      }

      v25 = [(__CFString *)v50 stringByAppendingString:@" grouping_key IN (?) AND album_artist_pid=?"];

      v75[0] = v26;
      v28 = [MEMORY[0x277CCABB0] numberWithLongLong:v57];
      v75[1] = v28;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
      [v29 addObjectsFromArray:v49];
    }

    goto LABEL_67;
  }

  v30 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_DEFAULT, "Invalid parameters to find album", buf, 2u);
  }

  *a1 = 0;
  a1[1] = 0;
  v31 = 0;
LABEL_79:
}

void sub_22D52920C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  _Block_object_dispose(&a30, 8);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::_shouldPreserveAlbumProperty(id *this, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = v20;
  v5 = HIBYTE(a3);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(HIBYTE(a3), a3);
  v7 = *(this + 8);
  if (v7 < 1)
  {
LABEL_8:
    v9 = 0;
  }

  else
  {
    v8 = PropertyIndex;
    LOBYTE(v9) = 0;
    v16 = v18;
    v10 = v7 + 1;
    v11 = (v7 << 32) - 0x100000000;
    v12 = v20 + v7 - 1;
    while (1)
    {
      if (*(ML3TrackRulesGetRule(v5, v8) + (v11 >> 30)) == 1)
      {
        if ((v9 & 1) == 0)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT cloud_library_id, sync_id, store_id FROM album WHERE album_pid = %lld", a2, v16];
          v14 = [this[8] executeQuery:v13];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v18[0] = ___ZN16ML3ImportSession28_shouldPreserveAlbumPropertyExj_block_invoke;
          v18[1] = &unk_2787653F0;
          v18[2] = v19;
          v18[3] = a2;
          [v14 enumerateRowsWithBlock:v17];
        }

        v9 = 1;
        if (*v12)
        {
          break;
        }
      }

      --v10;
      v11 -= 0x100000000;
      --v12;
      if (v10 <= 1)
      {
        goto LABEL_8;
      }
    }
  }

  _Block_object_dispose(v19, 8);
  return v9;
}

void sub_22D529598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = ML3CPPBridgeString(a2, 1);
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 ML3NameOrderValue];
  }

  else
  {
    v11 = *(a3 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (!v11)
    {
      return 0;
    }

    v12 = ML3CPPBridgeString(a3, 1);
    v13 = [v12 MLSortString];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = ML3CPPBridgeString(a3, 1);
    }

    v6 = v15;

    v7 = [*(a1 + 24) objectForKeyedSubscript:v6];
    v8 = [v7 ML3NameOrderValue];
  }

  v16 = v8;
  v17 = v9;

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return v16;
}

void *std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(void *a1, unint64_t a2)
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

BOOL std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3AlbumData>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<ML3AlbumData>>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_22D529DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::__emplace_unique_key_args<long long,std::pair<long long const,std::shared_ptr<ML3ImportItem>>>(void *result, unint64_t a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

void sub_22D52A2E4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ML3AlbumImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840898F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3AlbumData::ML3AlbumData(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, int a5, char a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, __int128 *a14, char a15, char a16, uint64_t a17)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v23 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v23;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v24 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v24;
  }

  *(a1 + 56) = a5;
  *(a1 + 60) = a6;
  *(a1 + 64) = a7;
  *(a1 + 68) = a8;
  *(a1 + 72) = a9;
  *(a1 + 80) = a10;
  *(a1 + 88) = a11;
  *(a1 + 96) = a12;
  *(a1 + 104) = a13;
  if (*(a14 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *a14, *(a14 + 1));
  }

  else
  {
    v25 = *a14;
    *(a1 + 128) = *(a14 + 2);
    *(a1 + 112) = v25;
  }

  *(a1 + 136) = a15;
  *(a1 + 137) = a16;
  *(a1 + 144) = a17;
  return a1;
}

void sub_22D52A4B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ML3AlbumData>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<ML3AlbumData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840898A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void ___ZN16ML3ImportSession28_shouldPreserveAlbumPropertyExj_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 stringForColumnIndex:0];
  v4 = [v8 int64ForColumnIndex:1];
  v5 = [v8 int64ForColumnIndex:2];
  **(*(*(a1 + 32) + 8) + 24) = *(a1 + 40);
  v6 = [v3 length];
  if (v6)
  {
    v6 = [v3 hash];
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 16) = v6;
  *(*(*(*(a1 + 32) + 8) + 24) + 24) = v4;
  if (MSVDeviceIsWatch())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 8) = v7;
  *(*(*(*(a1 + 32) + 8) + 24) + 40) = v5;
  *(*(*(*(a1 + 32) + 8) + 24) + 32) = v5;
  *(*(*(*(a1 + 32) + 8) + 24) + 48) = v5;
}

void ___ZN16ML3ImportSession47_getAlbumImportItemForGroupingIdentifierAndPIDsEP26ML3AlbumGroupingIdentifierNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEExxRb_block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = *(a1 + 48);
  memset(v29, 0, sizeof(v29));
  ML3DatabaseRowGetHomogeneousColumns<std::string>(v3, v29, 3uLL);
  if (SHIBYTE(v29[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v29[0].__r_.__value_.__l.__data_, v29[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v29[0];
  }

  if (SHIBYTE(v29[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v29[1].__r_.__value_.__l.__data_, v29[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v29[1];
  }

  if (SHIBYTE(v29[2].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v29[2].__r_.__value_.__l.__data_, v29[2].__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v29[2];
  }

  v25 = [v3 int64ForColumnIndex:3];
  [v3 objectAtIndexedSubscript:4];
  objc_claimAutoreleasedReturnValue();
  [v3 int64ForColumnIndex:5];
  [v3 intForColumnIndex:6];
  v24 = [v3 intForColumnIndex:7];
  v23 = [v3 intForColumnIndex:8];
  v22 = [v3 intForColumnIndex:9];
  v21 = [v3 intForColumnIndex:10];
  v4 = [v3 objectAtIndexedSubscript:11];
  if (v4)
  {
    v5 = *(v14 + 3);
    v6 = [v3 objectAtIndexedSubscript:11];
    v7 = [v5 objectForKeyedSubscript:v6];
    *&v20 = [v7 ML3NameOrderValue];
    *(&v20 + 1) = v8;

    v9 = v20 == 0;
  }

  else
  {
    v20 = xmmword_22D5C6B00;
    v9 = 1;
  }

  v10 = [v3 objectAtIndexedSubscript:11];
  v11 = v10 != 0;

  if (v11 && v9)
  {
    v12 = [v3 objectAtIndexedSubscript:11];
    *&v20 = ML3ImportSession::_getNameOrderForString(v14, v12);
    *(&v20 + 1) = v13;
  }

  v19 = [v3 intForColumnIndex:12];
  v18 = [v3 intForColumnIndex:13];
  v17 = [v3 int64ForColumnIndex:14];
  v16 = [v3 intForColumnIndex:15] != 0;
  v15[4] = [v3 int64ForColumnIndex:16];
  v15[3] = [v3 int64ForColumnIndex:17];
  std::string::basic_string[abi:ne200100]<0>(v15, [v3 cStringForColumnIndex:18]);
  [v3 int64ForColumnIndex:19];
  std::allocate_shared[abi:ne200100]<ML3AlbumData,std::allocator<ML3AlbumData>,long long &,std::string &,std::string &,int &,int &,int &,int &,ML3NameOrder &,int &,long long &,long long &,std::string &,int &,BOOL &,long long &,0>();
}

void sub_22D52ADA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (*(v58 - 217) < 0)
  {
    operator delete(*(v58 - 240));
  }

  if (*(v58 - 185) < 0)
  {
    operator delete(*(v58 - 208));
  }

  v60 = 0;
  v61 = v58 - 176;
  while (1)
  {
    if (*(v61 + v60 + 71) < 0)
    {
      operator delete(*(v61 + v60 + 48));
    }

    v60 -= 24;
    if (v60 == -72)
    {

      _Unwind_Resume(a1);
    }
  }
}

void __destroy_helper_block_ea8_64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }
}

void __copy_helper_block_ea8_64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v2 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v2;
  }
}

const unsigned __int8 *ML3DatabaseRowGetHomogeneousColumns<std::string>(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 parentResult];
  v6 = [v5 _statement];
  v7 = [v6 sqliteStatement];

  v8 = 0;
  v9 = 1;
  do
  {
    result = sqlite3_column_text(v7, v9 - 1);
    if (result)
    {
      result = MEMORY[0x2318CCFB0](a2 + 24 * v8, result);
    }

    v8 = v9++;
  }

  while (v8 < a3);
  return result;
}

uint64_t ML3ImportSession::_getNameOrderForString(ML3ImportSession *this, NSString *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v4 = *(this + 2);
  v15[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = [v4 executeQuery:@"SELECT name_order withParameters:{name_section FROM sort_map WHERE name = ?", v5}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN16ML3ImportSession22_getNameOrderForStringEP8NSString_block_invoke;
  v9[3] = &unk_278765228;
  v9[4] = &v11;
  v9[5] = v10;
  [v6 enumerateRowsWithBlock:v9];

  v7 = v12[3];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);

  return v7;
}

void sub_22D52B1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v10 = v9;

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_22D52B3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  std::__shared_weak_count::~__shared_weak_count(v31);
  operator delete(v34);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3AlbumData>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3AlbumData>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3AlbumData>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3AlbumData>>>>::__emplace_unique_key_args<long long,std::pair<long long const,std::shared_ptr<ML3AlbumData>>>(void *result, unint64_t a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

void ___ZN16ML3ImportSession22_getNameOrderForStringEP8NSString_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 longLongValue];

  v7 = [v8 objectAtIndexedSubscript:1];
  *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];

  *a4 = 1;
}

void __destroy_helper_block_ea8_176c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE200c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_176c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE200c41_ZTSNSt3__110shared_ptrI13ML3ImportItemEE(void *result, void *a2)
{
  v2 = a2[23];
  result[22] = a2[22];
  result[23] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[26];
  result[25] = a2[25];
  result[26] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void *ML3CollectionInfoSet::operator=(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v5;
  a1[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = a2[2];
  v7 = a2[3];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[3];
  a1[2] = v8;
  a1[3] = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v11 = a2[4];
  v10 = a2[5];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a1[5];
  a1[4] = v11;
  a1[5] = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v14 = a2[6];
  v13 = a2[7];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a1[7];
  a1[6] = v14;
  a1[7] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = a2[8];
  v16 = a2[9];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a1[9];
  a1[8] = v17;
  a1[9] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return a1;
}

void ML3CollectionInfoSet::~ML3CollectionInfoSet(ML3CollectionInfoSet *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,ML3CollectionInfoSet>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[12];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[10];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = __p[8];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = __p[6];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = __p[4];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::shared_ptr<ML3AlbumData>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void ___ZN16ML3ImportSession28_shouldPreserveTrackPropertyENSt3__110shared_ptrI13ML3ImportItemEEj_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  **(*(*(a1 + 32) + 8) + 24) = *(a1 + 40);
  IsWatch = MSVDeviceIsWatch();
  v4 = v6;
  if (IsWatch)
  {
    v5 = [v6 int64ForColumnIndex:0];
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 8) = v5;
  *(*(*(*(a1 + 32) + 8) + 24) + 24) = [v4 int64ForColumnIndex:0];
  *(*(*(*(a1 + 32) + 8) + 24) + 16) = [v6 int64ForColumnIndex:1];
  *(*(*(*(a1 + 32) + 8) + 24) + 32) = [v6 int64ForColumnIndex:2];
  *(*(*(*(a1 + 32) + 8) + 24) + 40) = [v6 int64ForColumnIndex:3];
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t ML3ImportSession::_processSortableNames(uint64_t a1, uint64_t *a2)
{
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3)];
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 8))
      {
        goto LABEL_8;
      }

LABEL_7:
      v7 = ML3CPPBridgeString(v5, 1);
      [v4 addObject:v7];

      goto LABEL_8;
    }

    if (*(v5 + 23))
    {
      goto LABEL_7;
    }

LABEL_8:
    v5 += 24;
  }

  if (([*(a1 + 56) attemptInsertStringsIntoSortMap:v4] & 1) != 0
    || (ML3ImportSession::flush(a1, 1),
        v8 = [*(a1 + 56) commitFailedInsertedStrings:v4],
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(a1 + 1096),
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(a1 + 1136),
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(a1 + 1256),
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(a1 + 1176),
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(a1 + 1216),
        std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(a1 + 896),
        std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(a1 + 936),
        std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(a1 + 976),
        std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(a1 + 1016),
        std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::clear(a1 + 1056),
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(a1 + 1296),
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::clear(a1 + 1336),
        v8))
  {
    v9 = [*(a1 + 56) nameOrders];
    v10 = *(a1 + 24);
    *(a1 + 24) = v9;

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZN16ML3ImportSession27_matchAlbumToImportedEntityENSt3__110shared_ptrI13ML3ImportItemEEx_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = [v7 stringForColumnIndex:0];
    MEMORY[0x2318CCFB0](*(*(a1 + 32) + 8) + 48, [v6 UTF8String]);
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 int64ForColumnIndex:1];
  }
}

uint64_t ML3ImportSession::updateAlbum(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 1584) count])
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a1 + 1544) != *(a1 + 1536);
  }

  v11 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = __p;
    (*(**a2 + 88))(__p);
    if (v49 < 0)
    {
      v12 = __p[0];
    }

    if (*a3)
    {
      (*(**a3 + 88))(v57);
      if (v60 >= 0)
      {
        v13 = v57;
      }

      else
      {
        v13 = *v57;
      }

      *buf = 136446978;
      *&buf[4] = v12;
      v51 = 2082;
      v52 = v13;
      v53 = 1024;
      v54 = a5;
      v55 = 1024;
      LODWORD(v56) = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "updating album=%{public}s with track=%{public}s ignoreNonExistingAlbum=%{BOOL}u, havePendingTrackModifications=%{BOOL}u", buf, 0x22u);
      if (v60 < 0)
      {
        operator delete(*v57);
      }
    }

    else
    {
      *buf = 136446978;
      *&buf[4] = v12;
      v51 = 2082;
      v52 = "";
      v53 = 1024;
      v54 = a5;
      v55 = 1024;
      LODWORD(v56) = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "updating album=%{public}s with track=%{public}s ignoreNonExistingAlbum=%{BOOL}u, havePendingTrackModifications=%{BOOL}u", buf, 0x22u);
    }

    if (v49 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v10 && !ML3ImportSession::flush(a1, 1))
  {
    return 0;
  }

  if (!*a3)
  {
    goto LABEL_31;
  }

  v14 = a3[1];
  v47[0] = *a3;
  v47[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = ML3ImportSession::_prepareTrackForImport(a1, v47, a5, 1);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v15)
  {
    if (*a3)
    {
      v16 = a3[1];
      v46[0] = *a3;
      v46[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      matched = ML3ImportSession::_matchAlbumToImportedEntity(a1, v46, a4);
      v18 = matched;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        if (v18)
        {
          goto LABEL_31;
        }
      }

      else if (matched)
      {
        goto LABEL_31;
      }

      v24 = 0;
      v21 = 0;
      AlbumPersistentID = 0;
LABEL_44:
      v25 = *a3;
      if (*a3 && a5 && !*(v25 + 8))
      {
        v36 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "Ignoring album update as the track does not exist", buf, 2u);
        }
      }

      else
      {
        v26 = os_log_create("com.apple.amp.medialibrary", "Import");
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v25 || !a5 || AlbumPersistentID)
        {
          if (v27)
          {
            v28 = *a3;
            if (*a3)
            {
              v28 = *(v28 + 8);
            }

            *buf = 134218752;
            *&buf[4] = v28;
            v51 = 2048;
            v52 = AlbumPersistentID;
            v53 = 1024;
            v54 = v24;
            v55 = 2048;
            v56 = v21;
            _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "updating album with trackPID=%lld, albumPID=%lld, matchAlbumToImportedEntity=%{BOOL}u, albumGroupingIdentifier=%p", buf, 0x26u);
          }

          v29 = a2[1];
          v40[0] = *a2;
          v40[1] = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v21)
          {
            a4 = [v21 albumArtistPersistentID];
          }

          v30 = a3[1];
          v39[0] = *a3;
          v39[1] = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ML3ImportSession::_addAlbum(a1, v40, v21, a4, v39);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          v31 = a2[1];
          v38[0] = *a2;
          v38[1] = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ML3ImportSession::_addAlbumDataToSourceMaps(a1, v38);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        else
        {
          if (v27)
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "Ignoring album update as the album does not exist", buf, 2u);
          }
        }
      }

      a5 = 1;
      goto LABEL_85;
    }

LABEL_31:
    v19 = a2[1];
    v44 = *a2;
    v45 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a3[1];
    v42 = *a3;
    v43 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = ML3ImportSession::_getAlbumGroupingIdentifierForImportItem(a1, &v44, &v42, a4);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    v22 = a2[1];
    v41[0] = *a2;
    v41[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AlbumPersistentID = ML3ImportSession::_getAlbumPersistentID(a1, v41, v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v24 = 1;
    goto LABEL_44;
  }

  if (v15 != 1)
  {
    v21 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(buf);
      v32 = SHIBYTE(v53);
      v33 = *buf;
      (*(**a3 + 88))(__p);
      v34 = buf;
      if (v32 < 0)
      {
        v34 = v33;
      }

      if (v49 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      *v57 = 136446466;
      *&v57[4] = v34;
      v58 = 2082;
      v59 = v35;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "Error updating album=%{public}s. Could not prepare track data for import=%{public}s", v57, 0x16u);
      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_85:

    return a5;
  }

  return 0;
}

void sub_22D52CE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ImportSession::addAlbumArtist(uint64_t a1, uint64_t *a2, void *a3)
{
  v47[2] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 2072) >= 0x3E8uLL && *(a1 + 1544) == *(a1 + 1536) && ![*(a1 + 1592) count] && objc_msgSend(*(a1 + 1584), "count") == 0;
  if (*a3)
  {
    if ([*(a1 + 1584) count])
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a1 + 1568) != *(a1 + 1560);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v37;
    (*(**a2 + 88))(v37);
    if (v38 < 0)
    {
      v9 = v37[0];
    }

    if (*a3)
    {
      (*(**a3 + 88))(__p);
      if (v42 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      *buf = 136446978;
      *&buf[4] = v9;
      v44 = 2082;
      v45 = v10;
      v46 = 1024;
      LODWORD(v47[0]) = v6;
      WORD2(v47[0]) = 1024;
      *(v47 + 6) = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "adding albumArtist=%{public}s trackImportItem=%{public}s, addedArtistsOverThreshold=%{BOOL}u, updateOrDeleteTracks=%{BOOL}u", buf, 0x22u);
      if (v42 < 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      *buf = 136446978;
      *&buf[4] = v9;
      v44 = 2082;
      v45 = "<nil>";
      v46 = 1024;
      LODWORD(v47[0]) = v6;
      WORD2(v47[0]) = 1024;
      *(v47 + 6) = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "adding albumArtist=%{public}s trackImportItem=%{public}s, addedArtistsOverThreshold=%{BOOL}u, updateOrDeleteTracks=%{BOOL}u", buf, 0x22u);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  if ([*(a1 + 2088) count] == 0 && !v6 && !v7)
  {
    goto LABEL_31;
  }

  v11 = ML3ImportSession::flush(a1, 1);
  v12 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "flushing entities as we have pending album artist deletes OR accumulated enough adds OR track modifications finished with status=%{BOOL}u", buf, 8u);
  }

  if (v11)
  {
LABEL_31:
    if (*a3)
    {
      v13 = a3[1];
      v36[0] = *a3;
      v36[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = ML3ImportSession::_prepareTrackForImport(a1, v36, 0, 0);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v14)
      {
        v15 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          (*(**a2 + 88))(buf);
          v16 = SHIBYTE(v46);
          v17 = *buf;
          (*(**a3 + 88))(v37);
          v18 = buf;
          if (v16 < 0)
          {
            v18 = v17;
          }

          if (v38 >= 0)
          {
            v19 = v37;
          }

          else
          {
            v19 = v37[0];
          }

          *__p = 136446466;
          *&__p[4] = v18;
          v40 = 2082;
          v41 = v19;
          _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Error adding album artist=%{public}s. Could not prepare track data for import=%{public}s", __p, 0x16u);
          if (v38 < 0)
          {
            operator delete(v37[0]);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(*buf);
          }
        }

        return 0;
      }
    }

    v20 = *a2;
    v21 = a2[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = ML3ImportSession::_getGroupingKeyForAlbumArtistImportItem(a1, v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (*a3)
    {
      v23 = *(*a3 + 8);
    }

    else
    {
      v23 = 0;
    }

    v24 = (*(**a2 + 32))(*a2, 301989898);
    v25 = *a3;
    if (*a3 && *(v25 + 16) == 1 && (*(v25 + 17) & 1) == 0)
    {
      AlbumArtistPersistentID = 0;
      goto LABEL_66;
    }

    v27 = a2[1];
    v35[0] = *a2;
    v35[1] = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AlbumArtistPersistentID = ML3ImportSession::_getAlbumArtistPersistentID(a1, v35, v22);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (*(a1 + 32) == 2)
    {
      if (!AlbumArtistPersistentID)
      {
        ++*(a1 + 232);
LABEL_66:
        v29 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = AlbumArtistPersistentID;
          v44 = 2048;
          v45 = v24;
          v46 = 2048;
          v47[0] = v23;
          _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "importing albumArtistPID=%lld, albumArtistSync=%lld, trackPID=%lld", buf, 0x20u);
        }

        if (*a3)
        {
          v30 = a3[1];
          v34[0] = *a3;
          v34[1] = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(v30 + 1, 1uLL, memory_order_relaxed);
          }

          ML3ImportSession::_prepareTrackSortData(a1, v34);
        }

        v31 = a2[1];
        v33[0] = *a2;
        v33[1] = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
        }

        ML3ImportSession::_prepareAlbumArtistSortData(a1, v33);
      }

      ++*(a1 + 236);
    }

    else if (!AlbumArtistPersistentID)
    {
      goto LABEL_66;
    }

    v28 = *a2;
    *(v28 + 16) = 1;
    *(v28 + 8) = AlbumArtistPersistentID;
    goto LABEL_66;
  }

  return 0;
}

void sub_22D52D5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_prepareTrackSortData(uint64_t a1, void **a2)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (!v3[1])
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL ML3ImportSession::_prepareTrackSortData(ML3ImportItemRef)"];
    [v4 handleFailureInFunction:v5 file:@"ML3ImportSession.mm" lineNumber:3848 description:@"invalid track pid"];

    v3 = *a2;
  }

  ML3ImportItem::getSanitizedStringValue(&v32, v3, 33554433);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = __s;
  }

  ML3ImportItem::getSanitizedStringValue(&v30, *a2, 167772161);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v31;
  }

  ML3ImportItem::getSanitizedStringValue(&v28, *a2, 167772162);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v29;
  }

  ML3ImportItem::getSanitizedStringValue(&v26, *a2, 167772164);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v27;
  }

  ML3ImportItem::getSanitizedStringValue(&v24, *a2, 167772165);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v25;
  }

  ML3ImportItem::getSanitizedStringValue(&v22, *a2, 167772166);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v23;
  }

  (*(**a2 + 152))(&v20);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v21;
  }

  (*(**a2 + 160))(&v18);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v19;
  }

  (*(**a2 + 144))(&v16);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = v17;
  }

  (*(**a2 + 144))(&v14);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v44 = v15;
  }

  (*(**a2 + 144))(&v12);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v13;
  }

  (*(**a2 + 144))(&v10);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v46 = v11;
  }

  (*(**a2 + 144))(&v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v47 = v9;
  }

  (*(**a2 + 144))(&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = __p;
  }

  memset(__src, 0, sizeof(__src));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__src, &v35, v49, 0xEuLL);
}

void ML3ImportSession::_prepareAlbumArtistSortData(uint64_t a1, void **a2)
{
  v31 = *MEMORY[0x277D85DE8];
  (*(**a2 + 152))(&v23);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    *&v23 = &unk_28408AC60;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = v24;
  }

  v3 = ML3CPPBridgeString(&v22, 1);
  v4 = [v3 MLSortString];

  if (v4)
  {
    v5 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v21, [v4 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "");
  }

  ML3ImportItem::getSanitizedStringValue(&v17, *a2, 301989889);
  if (SHIBYTE(v19) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v18, *(&v18 + 1));
  }

  else
  {
    v23 = v18;
    v24.__r_.__value_.__r.__words[0] = v19;
  }

  ML3ImportItem::getSanitizedStringValue(&v14, *a2, 301989890);
  if (SHIBYTE(v16) < 0)
  {
    std::string::__init_copy_ctor_external(&v24.__r_.__value_.__r.__words[1], v15, *(&v15 + 1));
  }

  else
  {
    *&v24.__r_.__value_.__r.__words[1] = v15;
    v25 = v16;
  }

  (*(**a2 + 152))(&v12);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v13;
  }

  (*(**a2 + 152))(&v10);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v11;
  }

  (*(**a2 + 160))(&v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v9;
  }

  (*(**a2 + 160))(&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = __p;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v21;
  }

  memset(v20, 0, sizeof(v20));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v20, &v23, &v31, 7uLL);
}

void sub_22D52EB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if ((v68 - 224) != v67)
  {
    do
    {
      v70 = *(v67 - 1);
      v67 -= 3;
      if (v70 < 0)
      {
        operator delete(*v67);
      }
    }

    while (v67 != (v68 - 224));
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (*(v68 - 233) < 0)
  {
    operator delete(*(v68 - 256));
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_addAlbumArtist(uint64_t a1, void *a2, void *a3, void *a4)
{
  v276 = *MEMORY[0x277D85DE8];
  v180 = a3;
  v6 = *a4;
  if (*a4)
  {
    v7 = v6[1];
    v8 = (*(*v6 + 32))(v6, 16777217);
    if ((MLMediaTypeByStandardizingMediaType(v8) & 0x400) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v181 = v9;
    v183 = v7;
  }

  else
  {
    v181 = 0;
    v183 = 0;
  }

  v10 = *a2;
  v251 = 0;
  v252 = &v251;
  v253 = 0x4012000000;
  v254 = __Block_byref_object_copy__597;
  v255 = __Block_byref_object_dispose__598;
  v256 = "";
  v258 = 0;
  v257 = 0;
  v244 = 0;
  v245 = &v244;
  v246 = 0x4812000000;
  v247 = __Block_byref_object_copy__415;
  v248 = __Block_byref_object_dispose__416;
  v249 = "";
  (*(*v10 + 24))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v250, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v250 = *&buf[16];
  }

  v237 = 0;
  v238 = &v237;
  v239 = 0x4812000000;
  v240 = __Block_byref_object_copy__415;
  v241 = __Block_byref_object_dispose__416;
  v242 = "";
  (*(**a2 + 152))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v243, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v243 = *&buf[16];
  }

  v230 = 0;
  v231 = &v230;
  v232 = 0x4812000000;
  v233 = __Block_byref_object_copy__415;
  v234 = __Block_byref_object_dispose__416;
  v235 = "";
  (*(**a2 + 160))(buf);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    __p = *&buf[16];
  }

  v11 = (*(**a2 + 32))(*a2, 167772177);
  v226 = 0;
  v227 = &v226;
  v228 = 0x2020000000;
  v229 = (*(**a2 + 32))(*a2, 301989898);
  v222 = 0;
  v223 = &v222;
  v224 = 0x2020000000;
  v225 = (*(**a2 + 32))(*a2, 301989904);
  v218 = 0;
  v219 = &v218;
  v220 = 0x2020000000;
  v221 = (*(**a2 + 32))(*a2, 301989893);
  v214 = 0;
  v215 = &v214;
  v216 = 0x2020000000;
  v217 = (*(**a2 + 32))(*a2, 301989901) != 0;
  v210 = 0;
  v211 = &v210;
  v212 = 0x2020000000;
  v213 = (*(**a2 + 32))(*a2, 301989903);
  if (v11 && v227[3])
  {
    *(a1 + 1530) = 1;
    v12 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(v270);
      v13 = v270[23] >= 0 ? v270 : *v270;
      v14 = v227[3];
      *buf = 136446722;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      *&buf[24] = v14;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Artist Import Item=%{public}s has syncID=%lld and legacySyncID=%lld", buf, 0x20u);
      if ((v270[23] & 0x80000000) != 0)
      {
        operator delete(*v270);
      }
    }
  }

  v204 = 0;
  v205 = &v204;
  v206 = 0x3032000000;
  v207 = __Block_byref_object_copy__413;
  v208 = __Block_byref_object_dispose__414;
  v179 = v180;
  v209 = v179;
  if (*a4)
  {
    v15 = *(a1 + 16);
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v183];
    v269 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v269 count:1];
    v18 = [v15 executeQuery:@"SELECT album_artist_pid FROM item WHERE ROWID = ?" withParameters:v17];

    v19 = [v18 int64ValueForFirstRowAndColumn];
    if (*(*a4 + 16) == 1)
    {
      v20 = v19;
      v21 = a4[1];
      v203[0] = *a4;
      v203[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(a1, v203, 0x100000Cu);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = shouldPreserveTrackProperty;
      }

      if (v23 == 1)
      {
        v24 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "Not updating/creating album artist as pid=0 AND persistentID is preserved by a higher source", buf, 2u);
        }

        ML3ImportSession::_getDefaultEmptyArtist(&v201);
        v25 = v202;
        ML3ImportSession::_setAlbumArtistInfoForTrackPersistentID(a1, v183, v201, v202);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        goto LABEL_351;
      }

      if ((*(*a4 + 17) & 1) == 0)
      {
        v26 = *a2;
        *(v26 + 8) = v20;
        *(v26 + 16) = 1;
        v27 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(*a4 + 8);
          *buf = 134218240;
          *&buf[4] = v20;
          *&buf[12] = 2048;
          *&buf[14] = v28;
          _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_DEFAULT, "Setting albumArtistPID=%lld for trackPID=%lld", buf, 0x16u);
        }

        if (v20)
        {
          v29 = *(a1 + 16);
          v30 = [MEMORY[0x277CCABB0] numberWithLongLong:v20];
          v268 = v30;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v268 count:1];
          v32 = [v29 executeQuery:@"SELECT album_artist withParameters:{sort_album_artist, representative_item_pid, store_id, grouping_key, sync_id, classical_experience_available, cloud_universal_library_id, liked_state, liked_state_changed_date FROM album_artist WHERE album_artist_pid=?", v31}];
          v33 = v32;
          v194[0] = MEMORY[0x277D85DD0];
          v194[1] = 3321888768;
          v194[2] = ___ZN16ML3ImportSession15_addAlbumArtistENSt3__110shared_ptrI13ML3ImportItemEEP6NSDataS3__block_invoke;
          v194[3] = &unk_284088720;
          v35 = *a2;
          v34 = a2[1];
          v194[14] = a1;
          v194[15] = v35;
          v195 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v194[4] = &v237;
          v194[5] = &v230;
          v194[6] = &v244;
          v194[7] = &v222;
          v194[8] = &v210;
          v194[9] = &v214;
          v194[10] = &v218;
          v194[11] = &v226;
          v200 = 16777228;
          v37 = *a4;
          v36 = a4[1];
          v194[12] = &v204;
          v196 = v37;
          v197 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v194[13] = &v251;
          v198 = v20;
          v199 = v183;
          [v32 enumerateRowsWithBlock:v194];

          if (v197)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v197);
          }

          if (v195)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v195);
          }
        }

        else
        {
          v38 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v183;
            _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_ERROR, "No existing albumArtist PID for trackPersistentID=%lld", buf, 0xCu);
          }
        }
      }
    }
  }

  if (!v252[6] && !([v205[5] length] | v11) && !*(*a2 + 8))
  {
    v39 = *(v245 + 71);
    if (v39 < 0)
    {
      v39 = v245[7];
    }

    if (!v39)
    {
      v82 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = buf;
        (*(**a2 + 88))(buf);
        if (buf[23] < 0)
        {
          v83 = *buf;
        }

        if (*a4)
        {
          (*(**a4 + 88))(v270);
          if (v270[23] >= 0)
          {
            v84 = v270;
          }

          else
          {
            v84 = *v270;
          }

          *v274 = 136446466;
          *&v274[4] = v83;
          *&v274[12] = 2082;
          *&v274[14] = v84;
          _os_log_impl(&dword_22D2FA000, v82, OS_LOG_TYPE_ERROR, "Album artist=%{public}s has an empty grouping key and no valid identifiers. Creating a default album artist import item for track=%{public}s", v274, 0x16u);
          if ((v270[23] & 0x80000000) != 0)
          {
            operator delete(*v270);
          }
        }

        else
        {
          *v274 = 136446466;
          *&v274[4] = v83;
          *&v274[12] = 2082;
          *&v274[14] = "<empty>";
          _os_log_impl(&dword_22D2FA000, v82, OS_LOG_TYPE_ERROR, "Album artist=%{public}s has an empty grouping key and no valid identifiers. Creating a default album artist import item for track=%{public}s", v274, 0x16u);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      ML3ImportSession::_getDefaultEmptyArtist(&v192);
      v81 = v193;
      ML3ImportSession::_setAlbumArtistInfoForTrackPersistentID(a1, v183, v192, v193);
      goto LABEL_364;
    }
  }

  v191 = 0;
  v40 = v205[5];
  if (*(v245 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v245[6], v245[7]);
  }

  else
  {
    v190 = *(v245 + 2);
  }

  ML3ImportSession::_getAlbumArtistImportItemForGroupingIdentifierAndPIDs(buf, a1, v40, &v190, *(*a2 + 8), v11, &v191);
  v41 = v252[7];
  *(v252 + 3) = *buf;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v42 = v252;
  v43 = v252[6];
  if (!v43)
  {
    if (!*(*a2 + 8))
    {
      goto LABEL_368;
    }

    v50 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      (*(**a2 + 88))(buf);
      v51 = *(*a2 + 8);
      v52 = *buf;
      if (buf[23] >= 0)
      {
        v52 = buf;
      }

      *v270 = 136446466;
      *&v270[4] = v52;
      *&v270[12] = 2048;
      *&v270[14] = v51;
      _os_log_impl(&dword_22D2FA000, v50, OS_LOG_TYPE_ERROR, "Import item %{public}s has valid PID=%lld, but cannot be located in the database", v270, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v42 = v252;
    v43 = v252[6];
    if (!v43)
    {
LABEL_368:
      if ([v205[5] length])
      {
        v53 = v11;
        if (!v11)
        {
          v54 = a2[1];
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v53 = [*(a1 + 120) nextPersistentID];
          v55 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v53;
            _os_log_impl(&dword_22D2FA000, v55, OS_LOG_TYPE_DEFAULT, "created new album artist pid %lld", buf, 0xCu);
          }

          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }
        }

        v56 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a1, &v231[2], &v238[2]);
        v58 = v57;
        v59 = os_log_create("com.apple.amp.medialibrary", "Import_Oversize");
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v11;
          if (!v11)
          {
            v60 = v227[3];
          }

          v61 = &v238[2];
          if (SHIBYTE(v238[2].__r_.__value_.__r.__words[2]) < 0)
          {
            v61 = v61->__words[0];
          }

          v62 = &v231[2];
          if (SHIBYTE(v231[2].__r_.__value_.__r.__words[2]) < 0)
          {
            v62 = v62->__words[0];
          }

          v63 = v219[3];
          v64 = v245 + 6;
          if (*(v245 + 71) < 0)
          {
            v64 = *v64;
          }

          *buf = 134220034;
          *&buf[4] = v53;
          *&buf[12] = 2048;
          *&buf[14] = v181;
          *&buf[22] = 2048;
          *&buf[24] = v60;
          *&buf[32] = 2082;
          *&buf[34] = v61;
          *&buf[42] = 2082;
          *&buf[44] = v62;
          *&buf[52] = 2048;
          *&buf[54] = v63;
          v262 = 2082;
          v263 = v64;
          v264 = 2048;
          v265 = v58;
          v266 = 2048;
          v267 = v56;
          _os_log_impl(&dword_22D2FA000, v59, OS_LOG_TYPE_DEFAULT, "creating new album artist entry: pid=%lld, representative_item_pid=%lld, syncID=%lld, name='%{public}s', sortName='%{public}s', storeID=%lld, cloudLibraryID=%{public}s, order.section=%ld, order.sortOrder=%lld", buf, 0x5Cu);
        }

        operator new();
      }

      v79 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        (*(**a2 + 88))(buf);
        v80 = buf[23] >= 0 ? buf : *buf;
        *v270 = 136446210;
        *&v270[4] = v80;
        _os_log_impl(&dword_22D2FA000, v79, OS_LOG_TYPE_ERROR, "Album artist=%{public}s has an empty grouping key and no syncID. Creating a default album artist import item", v270, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      ML3ImportSession::_getDefaultEmptyArtist(&v185);
      v81 = v186;
      ML3ImportSession::_setAlbumArtistInfoForTrackPersistentID(a1, v183, v185, v186);
LABEL_364:
      if (!v81)
      {
        goto LABEL_351;
      }

      v175 = v81;
LABEL_350:
      std::__shared_weak_count::__release_shared[abi:ne200100](v175);
      goto LABEL_351;
    }
  }

  v45 = v44;
  if (v44 && (v46 = v42[7]) != 0)
  {
    v178 = v42[7];
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v178 = 0;
  }

  v47 = v44[1];
  v189 = v47;
  v48 = 1;
  if (!v191)
  {
    v48 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 2048), v47) != 0;
    v191 = v48;
  }

  v177 = v48;
  v49 = *a2;
  *(v49 + 8) = v47;
  *(v49 + 16) = 1;
  (*(*v45 + 24))(buf, v45, 301989899);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v260, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v260 = *&buf[16];
  }

  if (MSVDeviceIsWatch() && *(a1 + 32) == 1)
  {
    v65 = *(v245 + 71);
    if (v65 >= 0)
    {
      v66 = *(v245 + 71);
    }

    else
    {
      v66 = v245[7];
    }

    size = HIBYTE(v260.__r_.__value_.__r.__words[2]);
    if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v260.__r_.__value_.__l.__size_;
    }

    if (v66 != size || (v65 >= 0 ? (v68 = v245 + 6) : (v68 = v245[6]), (v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v69 = &v260) : (v69 = v260.__r_.__value_.__r.__words[0]), memcmp(v68, v69, v66)))
    {
      if (!v66)
      {
        v70 = (a1 + 1296);
        v71 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a1 + 1296), &v260);
        if (v71)
        {
          v72 = *(a1 + 1304);
          v73 = v71[1];
          v74 = vcnt_s8(v72);
          v74.i16[0] = vaddlv_u8(v74);
          if (v74.u32[0] > 1uLL)
          {
            if (v73 >= *&v72)
            {
              v73 %= *&v72;
            }
          }

          else
          {
            v73 &= *&v72 - 1;
          }

          v85 = *(*v70 + 8 * v73);
          do
          {
            v86 = v85;
            v85 = *v85;
          }

          while (v85 != v71);
          if (v86 == (a1 + 1312))
          {
            goto LABEL_173;
          }

          v87 = v86[1];
          if (v74.u32[0] > 1uLL)
          {
            if (v87 >= *&v72)
            {
              v87 %= *&v72;
            }
          }

          else
          {
            v87 &= *&v72 - 1;
          }

          if (v87 != v73)
          {
LABEL_173:
            if (!*v71)
            {
              goto LABEL_174;
            }

            v88 = *(*v71 + 8);
            if (v74.u32[0] > 1uLL)
            {
              if (v88 >= *&v72)
              {
                v88 %= *&v72;
              }
            }

            else
            {
              v88 &= *&v72 - 1;
            }

            if (v88 != v73)
            {
LABEL_174:
              *(*v70 + 8 * v73) = 0;
            }
          }

          v89 = *v71;
          if (*v71)
          {
            v90 = *(v89 + 8);
            if (v74.u32[0] > 1uLL)
            {
              if (v90 >= *&v72)
              {
                v90 %= *&v72;
              }
            }

            else
            {
              v90 &= *&v72 - 1;
            }

            if (v90 != v73)
            {
              *(*v70 + 8 * v90) = v86;
              v89 = *v71;
            }
          }

          *v86 = v89;
          *v71 = 0;
          --*(a1 + 1320);
          *buf = v71;
          *&buf[8] = a1 + 1296;
          buf[16] = 1;
          *&buf[17] = 0;
          *&buf[20] = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
        }
      }

      v76 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_189;
      }

      v77 = v245 + 6;
      if (*(v245 + 71) < 0)
      {
        v77 = *v77;
      }

      v78 = &v260;
      if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v78 = v260.__r_.__value_.__r.__words[0];
      }

      goto LABEL_188;
    }
  }

  else
  {
    if ((*(v245 + 71) & 0x8000000000000000) != 0)
    {
      if (!v245[7])
      {
        goto LABEL_135;
      }
    }

    else if (!*(v245 + 71))
    {
      goto LABEL_135;
    }

    v75 = HIBYTE(v260.__r_.__value_.__r.__words[2]);
    if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v75 = v260.__r_.__value_.__l.__size_;
    }

    if (!v75)
    {
      v76 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
LABEL_189:

        std::string::operator=((v45[8] + 152), v245 + 2);
        v182 = 1;
        goto LABEL_190;
      }

      v77 = v245 + 6;
      if (*(v245 + 71) < 0)
      {
        v77 = *v77;
      }

      v78 = &v260;
      if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v78 = v260.__r_.__value_.__r.__words[0];
      }

LABEL_188:
      *buf = 136446466;
      *&buf[4] = v77;
      *&buf[12] = 2082;
      *&buf[14] = v78;
      _os_log_impl(&dword_22D2FA000, v76, OS_LOG_TYPE_DEFAULT, "Setting albumArtistCloudLibraryID=%{public}s (oldValue = %{public}s)", buf, 0x16u);
      goto LABEL_189;
    }
  }

LABEL_135:
  v182 = 0;
LABEL_190:
  v91 = (*(*v45 + 32))(v45, 301989893);
  v92 = v219[3];
  v93 = v182;
  if (v92)
  {
    v94 = v91;
    v93 = v182;
    if (v92 != v91)
    {
      v95 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v96 = v219[3];
        *buf = 134218240;
        *&buf[4] = v96;
        *&buf[12] = 2048;
        *&buf[14] = v94;
        _os_log_impl(&dword_22D2FA000, v95, OS_LOG_TYPE_DEFAULT, "Setting albumArtistStoreID=%lld (oldValue = %lld)", buf, 0x16u);
      }

      *(v45[8] + 104) = v219[3];
      v93 = 1;
    }
  }

  v97 = (*(*v45 + 32))(v45, 301989898);
  v98 = v227[3];
  if (v98)
  {
    v99 = v97;
    if (v98 != v97)
    {
      v100 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = v227[3];
        *buf = 134218240;
        *&buf[4] = v101;
        *&buf[12] = 2048;
        *&buf[14] = v99;
        _os_log_impl(&dword_22D2FA000, v100, OS_LOG_TYPE_DEFAULT, "Setting albumArtistSyncID=%lld (oldValue = %lld) using property MLImportPropertyKeyAlbumArtistSyncID", buf, 0x16u);
      }

      *(v45[8] + 144) = v227[3];
      v93 = 1;
    }
  }

  v102 = (*(*v45 + 32))(v45, 167772177);
  if (v11)
  {
    v103 = v102;
    if (v11 != v102)
    {
      v104 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v103;
        _os_log_impl(&dword_22D2FA000, v104, OS_LOG_TYPE_DEFAULT, "Setting albumArtistSyncID=%lld (oldValue = %lld) using property MLImportPropertyKeyAlbumArtistSyncId", buf, 0x16u);
      }

      *(v45[8] + 144) = v11;
      v93 = 1;
    }
  }

  (*(*v45 + 24))(buf, v45, 301989889);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v259, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v259 = *&buf[16];
  }

  v105 = SHIBYTE(v238[2].__r_.__value_.__r.__words[2]);
  if (v105 < 0)
  {
    if (!v238[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_233;
    }
  }

  else if (!*(&v238[2].__r_.__value_.__s + 23))
  {
    goto LABEL_233;
  }

  if (v105 >= 0)
  {
    v106 = SHIBYTE(v238[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v106 = v238[2].__r_.__value_.__l.__size_;
  }

  v107 = HIBYTE(v259.__r_.__value_.__r.__words[2]);
  if ((v259.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v107 = v259.__r_.__value_.__l.__size_;
  }

  if (v106 != v107 || (v105 >= 0 ? (data = v238 + 2) : (data = v238[2].__r_.__value_.__l.__data_), (v259.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v109 = &v259) : (v109 = v259.__r_.__value_.__r.__words[0]), memcmp(data, v109, v106)))
  {
    v110 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      v111 = &v238[2];
      if (SHIBYTE(v238[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v111 = v111->__words[0];
      }

      v112 = &v259;
      if ((v259.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v112 = v259.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v111;
      *&buf[12] = 2082;
      *&buf[14] = v112;
      _os_log_impl(&dword_22D2FA000, v110, OS_LOG_TYPE_DEFAULT, "Setting albumArtistName=%{public}s (oldValue = %{public}s)", buf, 0x16u);
    }

    std::string::operator=((v45[8] + 8), v238 + 2);
    v93 = 1;
  }

LABEL_233:
  (*(*v45 + 24))(buf, v45, 301989890);
  if ((buf[39] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v188, *&buf[16], *&buf[24]);
    *buf = &unk_28408AC60;
    if ((buf[39] & 0x80000000) != 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    v188 = *&buf[16];
  }

  if (*a2 && !*a4)
  {
    v118 = *(a1 + 32);
    PropertyIndex = ML3TrackRulesGetPropertyIndex(18, 301989890);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    v120 = *(__albumArtistRules + 56 * PropertyIndex + 4 * v118);
    v121 = v189;
    memset(buf, 0, 56);
    *v274 = 0;
    *&v274[8] = v274;
    *&v274[16] = 0x2020000000;
    v275 = buf;
    v122 = ML3TrackRulesGetPropertyIndex(18, 301989890);
    v176 = v120;
    v123 = *(a1 + 32);
    if (v123 >= 1)
    {
      v124 = v122;
      v117 = 0;
      v125 = _ML3InitializeTrackRulesIfNeeded___once;
      v126 = v123 + 1;
      v127 = (v123 << 32) - 0x100000000;
      v128 = &buf[8 * v123 - 8];
      do
      {
        if (v125 != -1)
        {
          dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
        }

        if (*(__albumArtistRules + 56 * v124 + (v127 >> 30)) == 1)
        {
          if (v117)
          {
            v125 = -1;
          }

          else
          {
            v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT cloud_universal_library_id, sync_id, store_id FROM album_artist WHERE album_artist_pid = %lld", v121];
            v130 = [*(a1 + 64) executeQuery:v129];
            *v270 = MEMORY[0x277D85DD0];
            *&v270[8] = 3221225472;
            *&v270[16] = ___ZN16ML3ImportSession34_shouldPreserveAlbumArtistPropertyExj_block_invoke;
            v271 = &unk_2787653F0;
            v272 = v274;
            v273 = v121;
            [v130 enumerateRowsWithBlock:v270];

            v125 = _ML3InitializeTrackRulesIfNeeded___once;
          }

          v117 = 1;
          if (*v128)
          {
            goto LABEL_261;
          }
        }

        else
        {
          v125 = -1;
        }

        --v126;
        v127 -= 0x100000000;
        --v128;
      }

      while (v126 > 1);
    }

    v117 = 0;
LABEL_261:
    _Block_object_dispose(v274, 8);
    if (v176 == -1)
    {
      goto LABEL_302;
    }
  }

  else
  {
    v113 = *(a1 + 32);
    v114 = ML3TrackRulesGetPropertyIndex(10, 167772169);
    if (_ML3InitializeTrackRulesIfNeeded___once != -1)
    {
      dispatch_once(&_ML3InitializeTrackRulesIfNeeded___once, &__block_literal_global_108);
    }

    v115 = *(__specialRules + 56 * v114 + 4 * v113);
    v116 = a4[1];
    v187[0] = *a4;
    v187[1] = v116;
    if (v116)
    {
      atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v117 = ML3ImportSession::_shouldPreserveTrackProperty(a1, v187, 0xA000009u);
    if (v116)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v116);
    }

    if (v115 == -1)
    {
      goto LABEL_302;
    }
  }

  v131 = v231;
  p_data = &v231[2].__r_.__value_.__l.__data_;
  v133 = SHIBYTE(v231[2].__r_.__value_.__r.__words[2]);
  if (v133 < 0)
  {
    if (!v231[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_281;
    }

LABEL_266:
    if (v133 >= 0)
    {
      v134 = SHIBYTE(v231[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v134 = v231[2].__r_.__value_.__l.__size_;
    }

    v135 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
    if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v135 = v188.__r_.__value_.__l.__size_;
    }

    if (v134 != v135 || (v133 >= 0 ? (v136 = v231 + 2) : (v136 = *p_data), (v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v137 = &v188) : (v137 = v188.__r_.__value_.__r.__words[0]), memcmp(v136, v137, v134)))
    {
      if (v117)
      {
        goto LABEL_302;
      }

      goto LABEL_291;
    }

    goto LABEL_281;
  }

  if (*(&v231[2].__r_.__value_.__s + 23))
  {
    goto LABEL_266;
  }

LABEL_281:
  if ((v133 & 0x80000000) != 0)
  {
    if (v131[2].__r_.__value_.__l.__size_)
    {
      goto LABEL_302;
    }
  }

  else if (v133)
  {
    goto LABEL_302;
  }

  v138 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
  if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v138 = v188.__r_.__value_.__l.__size_;
  }

  if (v138)
  {
    v139 = v117;
  }

  else
  {
    v139 = 1;
  }

  if ((v139 & 1) == 0)
  {
LABEL_291:
    v140 = ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(a1, p_data, &v238[2]);
    v142 = v141;
    std::string::operator=((v45[8] + 32), v231 + 2);
    v143 = v45[8];
    *(v143 + 112) = v140;
    *(v143 + 120) = v142;
    v144 = v189;
    v145 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 1968), v189);
    if (v145)
    {
      v146 = v145[3];
      v147 = v145[4];
      if (v147 != v142 || v146 != v140)
      {
        *buf = &v189;
        v148 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 2008), v144);
        v148[3] = v140;
        v148[4] = v142;
        *buf = &v189;
        v149 = std::__hash_table<std::__hash_value_type<long long,ML3NameOrder>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3NameOrder>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3NameOrder>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3NameOrder>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 1968), v189);
        v149[3] = v140;
        v149[4] = v142;
        v150 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          v151 = &v231[2];
          if (SHIBYTE(v231[2].__r_.__value_.__r.__words[2]) < 0)
          {
            v151 = v151->__words[0];
          }

          v152 = &v188;
          if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v152 = v188.__r_.__value_.__r.__words[0];
          }

          *buf = 134219522;
          *&buf[4] = v189;
          *&buf[12] = 2082;
          *&buf[14] = v151;
          *&buf[22] = 2082;
          *&buf[24] = v152;
          *&buf[32] = 2048;
          *&buf[34] = v142;
          *&buf[42] = 2048;
          *&buf[44] = v140;
          *&buf[52] = 2048;
          *&buf[54] = v147;
          v262 = 2048;
          v263 = v146;
          _os_log_impl(&dword_22D2FA000, v150, OS_LOG_TYPE_DEFAULT, "Will update sort order for tracks with album_artist_pid=%lld with sortName=%{public}s, (oldValue=%{public}s, order.section=%ld, order.sortOrder=%lld (oldValue section=%ld, sortOrder=%lld)", buf, 0x48u);
        }
      }
    }

    v93 = 1;
  }

LABEL_302:
  v153 = (*(*v45 + 32))(v45, 301989901) != 0;
  if (*(v215 + 24) != v153)
  {
    v154 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
    {
      v155 = *(v215 + 24);
      *buf = 67109376;
      *&buf[4] = v155;
      *&buf[8] = 1024;
      *&buf[10] = v153;
      _os_log_impl(&dword_22D2FA000, v154, OS_LOG_TYPE_DEFAULT, "Setting albumArtistClassicalExperienceAvailable=%{BOOL}u (oldValue=%{BOOL}u)", buf, 0xEu);
    }

    *(v45[8] + 176) = *(v215 + 24);
    v93 = 1;
  }

  v156 = (*(*v45 + 32))(v45, 301989903);
  v157 = *(v211 + 6);
  if (v157)
  {
    v158 = v156;
    if (v157 != v156)
    {
      v159 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
      {
        v160 = *(v211 + 6);
        *buf = 67109376;
        *&buf[4] = v160;
        *&buf[8] = 1024;
        *&buf[10] = v158;
        _os_log_impl(&dword_22D2FA000, v159, OS_LOG_TYPE_DEFAULT, "Setting albumArtistLikedState=%d (oldValue=%d)", buf, 0xEu);
      }

      *(v45[8] + 180) = *(v211 + 6);
      v93 = 1;
    }
  }

  v161 = (*(*v45 + 32))(v45, 301989904);
  v162 = v223[3];
  if (v162)
  {
    v163 = v161;
    if (v162 != v161)
    {
      v164 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        v165 = v223[3];
        *buf = 134218240;
        *&buf[4] = v165;
        *&buf[12] = 2048;
        *&buf[14] = v163;
        _os_log_impl(&dword_22D2FA000, v164, OS_LOG_TYPE_DEFAULT, "Setting albumArtistLikedStateChangedDate=%lld (oldValue=%lld)", buf, 0x16u);
      }

      *(v45[8] + 184) = v223[3];
      v93 = 1;
    }
  }

  if (v182)
  {
    v166 = v245;
    v167 = *(v245 + 71);
    if (v167 < 0)
    {
      if (!v245[7])
      {
        goto LABEL_334;
      }
    }

    else if (!*(v245 + 71))
    {
      goto LABEL_334;
    }

    v169 = v45[8];
    v168 = v45[9];
    if (v168)
    {
      atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
      LOBYTE(v167) = *(v166 + 71);
    }

    if ((v167 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(buf, v166[6], v166[7]);
    }

    else
    {
      *buf = *(v166 + 3);
      *&buf[16] = v166[8];
    }

    *&buf[24] = v169;
    *&buf[32] = v168;
    if (v168)
    {
      atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<ML3ArtistData>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<ML3ArtistData>>>((a1 + 1296), buf);
    if (*&buf[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v168)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v168);
    }
  }

LABEL_334:
  if (!v177 && (v93 & 1) != 0)
  {
    v170 = v189;
    v172 = v252[6];
    v171 = v252[7];
    *buf = v189;
    *&buf[8] = v172;
    *&buf[16] = v171;
    if (v171)
    {
      atomic_fetch_add_explicit((v171 + 8), 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::__emplace_unique_key_args<long long,std::pair<long long const,std::shared_ptr<ML3ImportItem>>>((a1 + 2048), v170);
    if (*&buf[16])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[16]);
    }
  }

  v173 = v45[8];
  v174 = v45[9];
  if (v174)
  {
    atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ML3ImportSession::_setAlbumArtistInfoForTrackPersistentID(a1, v183, v173, v174);
  if (v174)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v174);
  }

  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  v175 = v178;
  if (v178)
  {
    goto LABEL_350;
  }

LABEL_351:
  _Block_object_dispose(&v204, 8);

  _Block_object_dispose(&v210, 8);
  _Block_object_dispose(&v214, 8);
  _Block_object_dispose(&v218, 8);
  _Block_object_dispose(&v222, 8);
  _Block_object_dispose(&v226, 8);
  _Block_object_dispose(&v230, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v237, 8);
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v243.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v244, 8);
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v251, 8);
  if (v258)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v258);
  }
}

void sub_22D531374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  _Block_object_dispose(&STACK[0x2F0], 8);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  _Block_object_dispose(&STACK[0x338], 8);
  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  _Block_object_dispose(&STACK[0x380], 8);
  if (STACK[0x3B8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3B8]);
  }

  _Unwind_Resume(a1);
}

void ML3ImportSession::_getDefaultEmptyArtist(ML3ImportSession *this)
{
  {
    __cxa_atexit(std::shared_ptr<ML3ArtistData>::~shared_ptr[abi:ne200100], &ML3ImportSession::_getDefaultEmptyArtist(void)::__emptyArtistData, &dword_22D2FA000);
  }

  if (ML3ImportSession::_getDefaultEmptyArtist(void)::onceToken != -1)
  {
    dispatch_once(&ML3ImportSession::_getDefaultEmptyArtist(void)::onceToken, &__block_literal_global_755);
  }

  v2 = qword_27D9FDBA0;
  *this = ML3ImportSession::_getDefaultEmptyArtist(void)::__emptyArtistData;
  *(this + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void ML3ImportSession::_setAlbumArtistInfoForTrackPersistentID(uint64_t a1, unint64_t a2, uint64_t a3, std::__shared_weak_count *a4)
{
  v16[0] = a2;
  if (a2)
  {
    v8 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a1 + 352), a2);
    if (v8)
    {
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v8[6];
      v8[5] = a3;
      v8[6] = a4;
      if (v9)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v12 = a3;
      *(&v12 + 1) = a4;
      v16[1] = v16;
      v10 = std::__hash_table<std::__hash_value_type<long long,ML3CollectionInfoSet>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,ML3CollectionInfoSet>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,ML3CollectionInfoSet>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 352), a2);
      ML3CollectionInfoSet::operator=(v10 + 3, &v11);
      if (a4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a4);
      }
    }
  }
}

void ___ZN16ML3ImportSession15_addAlbumArtistENSt3__110shared_ptrI13ML3ImportItemEEP6NSDataS3__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 112);
  v8 = [v5 stringForColumnIndex:0];
  v46 = [v5 stringForColumnIndex:1];
  v9 = [v5 int64ForColumnIndex:2];
  v53[3] = v9;
  v44 = [v5 int64ForColumnIndex:3];
  v45 = [v5 dataForColumnIndex:4];
  v53[2] = v45;
  v43 = [v5 int64ForColumnIndex:5];
  v10 = [v5 intForColumnIndex:6] != 0;
  v11 = [v5 stringForColumnIndex:7];
  v42 = [v5 intForColumnIndex:8];
  v41 = [v5 int64ForColumnIndex:9];
  v12 = (*(**(a1 + 120) + 56))(*(a1 + 120), 301989889);
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v55, [v8 UTF8String]);
    v14 = *(*(a1 + 32) + 8);
    if (*(v14 + 71) < 0)
    {
      operator delete(*(v14 + 48));
    }

    *(v14 + 48) = v55;
  }

  if (((*(**(a1 + 120) + 56))(*(a1 + 120), 301989890) & 1) == 0 && [v46 length])
  {
    v15 = v46;
    std::string::basic_string[abi:ne200100]<0>(&v55, [v46 UTF8String]);
    v16 = *(*(a1 + 40) + 8);
    if (*(v16 + 71) < 0)
    {
      operator delete(*(v16 + 48));
    }

    *(v16 + 48) = v55;
  }

  v17 = (*(**(a1 + 120) + 56))(*(a1 + 120), 301989899);
  if (v11)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = v11;
    std::string::basic_string[abi:ne200100]<0>(&v55, [v11 UTF8String]);
    v20 = *(*(a1 + 48) + 8);
    if (*(v20 + 71) < 0)
    {
      operator delete(*(v20 + 48));
    }

    *(v20 + 48) = v55;
  }

  if (((*(**(a1 + 120) + 56))(*(a1 + 120), 301989904) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = v41;
  }

  if (((*(**(a1 + 120) + 56))(*(a1 + 120), 301989903) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = v42;
  }

  if (((*(**(a1 + 120) + 56))(*(a1 + 120), 301989901) & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = v10;
  }

  if (((*(**(a1 + 120) + 56))(*(a1 + 120), 301989893) & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = v44;
  }

  if (((*(**(a1 + 120) + 56))(*(a1 + 120), 301989898) & 1) == 0)
  {
    *(*(*(a1 + 88) + 8) + 24) = v43;
  }

  v21 = *(v7 + 8);
  v22 = ML3CPPBridgeString((*(*(a1 + 32) + 8) + 48), 0);
  v23 = [v21 groupingKeyForString:v22];
  v24 = *(*(a1 + 96) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v26 = *(a1 + 168);
  v27 = *(v7 + 32);
  LODWORD(v22) = HIBYTE(v26);
  PropertyIndex = ML3TrackRulesGetPropertyIndex(HIBYTE(v26), v26);
  if (*(ML3TrackRulesGetRule(v22, PropertyIndex) + 4 * v27) == -1 || ([*(*(*(a1 + 96) + 8) + 40) isEqualToData:v45] & 1) != 0)
  {
    goto LABEL_36;
  }

  v29 = *(a1 + 144);
  v53[0] = *(a1 + 136);
  v53[1] = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shouldPreserveTrackProperty = ML3ImportSession::_shouldPreserveTrackProperty(v7, v53, *(a1 + 168));
  v31 = shouldPreserveTrackProperty;
  if (!v29)
  {
    if (!shouldPreserveTrackProperty)
    {
      goto LABEL_47;
    }

LABEL_36:
    if (v8)
    {
      v32 = v8;
      std::string::basic_string[abi:ne200100]<0>(v51, [v8 UTF8String]);
    }

    else
    {
      v51[0] = 0;
      v51[1] = 0;
      v52 = 0;
    }

    if (v46)
    {
      v33 = v46;
      std::string::basic_string[abi:ne200100]<0>(v49, [v46 UTF8String]);
      if (v11)
      {
LABEL_41:
        v34 = v11;
        std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);
        goto LABEL_44;
      }
    }

    else
    {
      v49[0] = 0;
      v49[1] = 0;
      v50 = 0;
      if (v11)
      {
        goto LABEL_41;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v48 = 0;
LABEL_44:
    ML3ImportSession::_effectiveNameOrderForSortNameAndFallback(v7, v49, v51);
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  if (v31)
  {
    goto LABEL_36;
  }

LABEL_47:
  if (v9 == *(a1 + 160))
  {
    v35 = *(v7 + 16);
    v36 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 152)];
    v54 = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [v35 executeUpdate:@"UPDATE album_artist SET representative_item_pid=0 WHERE album_artist_pid=?" withParameters:v37 error:0];

    *(*(a1 + 120) + 8) = 0;
    v38 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 152);
      v39 = *(a1 + 160);
      LODWORD(v55.__r_.__value_.__l.__data_) = 134218240;
      *(v55.__r_.__value_.__r.__words + 4) = v39;
      WORD2(v55.__r_.__value_.__r.__words[1]) = 2048;
      *(&v55.__r_.__value_.__r.__words[1] + 6) = v40;
      _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_DEFAULT, "Removing trackPersistentID=%lld as the representative item for albumArtistPersistentID=%lld as the groupingKey has changed/can no longer be applied", &v55, 0x16u);
    }
  }
}

void ML3ImportSession::_getAlbumArtistImportItemForGroupingIdentifierAndPIDs(void *a1, uint64_t a2, void *a3, uint64_t *a4, unint64_t a5, unint64_t a6, _BYTE *a7)
{
  v71[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  *a7 = 0;
  v46 = v13;
  if ([v13 length])
  {
    goto LABEL_5;
  }

  v14 = *(a4 + 23);
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 | a5 | a6)
  {
LABEL_5:
    *buf = 0;
    v57 = buf;
    v58 = 0x4012000000;
    v59 = __Block_byref_object_copy__597;
    v60 = __Block_byref_object_dispose__598;
    v61 = "";
    v62 = 0;
    v63 = 0;
    if (a5)
    {
      v15 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 2048), a5);
      if (v15)
      {
        *a7 = 1;
        v17 = v15[3];
        v16 = v15[4];
        if (!v16)
        {
          v62 = v15[3];
          v63 = 0;
          goto LABEL_36;
        }

        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = v63;
        v62 = v17;
        v63 = v16;
        if (!v18)
        {
LABEL_36:
          v35 = *(v57 + 7);
          *a1 = *(v57 + 6);
          a1[1] = v35;
          if (v35)
          {
            atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
          }

LABEL_72:
          _Block_object_dispose(buf, 8);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          goto LABEL_74;
        }

LABEL_35:
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        goto LABEL_36;
      }

      v24 = a4 + 23;
      v23 = *(a4 + 23);
      if (v23 < 0)
      {
        v23 = a4[1];
      }

      if (v23)
      {
        v25 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, representative_item_pid, sort_order, sort_order_section, grouping_key FROM album_artist WHERE ", "stringByAppendingString:", @"(ROWID=? OR cloud_universal_library_id=?)"}artist];
        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
        v71[0] = v26;
        v27 = a4;
        if (*v24 < 0)
        {
          v27 = *a4;
        }

        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
        v71[1] = v28;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
        goto LABEL_62;
      }

      v25 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, representative_item_pid, sort_order, sort_order_section, grouping_key FROM album_artist WHERE ", "stringByAppendingString:", @"ROWID=?"}artist];
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
      v70 = v26;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
LABEL_63:

      goto LABEL_64;
    }

    if ((*(a4 + 23) & 0x8000000000000000) != 0)
    {
      if (a4[1])
      {
LABEL_12:
        v19 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a2 + 1296), a4);
        if (!v19)
        {
          goto LABEL_45;
        }

        v21 = v19[5];
        v20 = v19[6];
        if (v20)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if (*(a4 + 23))
    {
      goto LABEL_12;
    }

    if (a6)
    {
      v30 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 1056), a6);
      if (!v30)
      {
        goto LABEL_45;
      }

      v21 = v30[3];
      v20 = v30[4];
      if (v20)
      {
LABEL_14:
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = *v21;
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        if (!v22)
        {
          goto LABEL_45;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (![v46 length])
      {
        goto LABEL_45;
      }

      ML3CPPStringFromData(__p, v46);
      v36 = std::__hash_table<std::__hash_value_type<std::string,long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long long>>>::find<std::string>((a2 + 1136), __p);
      if (v55 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v36)
      {
        goto LABEL_45;
      }

      v21 = v36[5];
      v20 = v36[6];
      if (v20)
      {
        goto LABEL_14;
      }
    }

LABEL_30:
    if (!*v21)
    {
      goto LABEL_45;
    }

LABEL_31:
    v31 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>((a2 + 2048), 0);
    if (v31)
    {
      *a7 = 1;
      v32 = v57;
      v34 = v31[3];
      v33 = v31[4];
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v32 + 7);
      *(v32 + 6) = v34;
      *(v32 + 7) = v33;
      if (!v18)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_45:
    v24 = a4 + 23;
    v37 = *(a4 + 23);
    if (v37 < 0)
    {
      v37 = a4[1];
    }

    if (v37)
    {
      v45 = [MEMORY[0x277CBEB18] array];
      v25 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, representative_item_pid, sort_order, sort_order_section, grouping_key FROM album_artist WHERE ", "stringByAppendingString:", @"cloud_universal_library_id=?"}artist];
      v38 = a4;
      if (*v24 < 0)
      {
        v38 = *a4;
      }

      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v38];
      [v45 addObject:v39];

      if (!a6)
      {
        if (![v46 length])
        {
LABEL_64:
          v42 = [*(a2 + 16) executeQuery:v25 withParameters:{v45, v44}];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3321888768;
          v47[2] = ___ZN16ML3ImportSession53_getAlbumArtistImportItemForGroupingIdentifierAndPIDsEP6NSDataNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEExxRb_block_invoke;
          v47[3] = &unk_284088638;
          v49 = buf;
          v50 = a2;
          v48 = v46;
          v51 = a5;
          if (*v24 < 0)
          {
            std::string::__init_copy_ctor_external(&v52, *a4, a4[1]);
          }

          else
          {
            v52 = *a4;
          }

          v53 = a6;
          [v42 enumerateRowsWithBlock:v47];
          v43 = *(v57 + 7);
          *a1 = *(v57 + 6);
          a1[1] = v43;
          if (v43)
          {
            atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          goto LABEL_72;
        }

        v41 = [(__CFString *)v25 stringByAppendingString:@" OR (cloud_universal_library_id='' AND grouping_key=?)"];

        v67 = v46;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
        [v45 addObjectsFromArray:v26];
        v25 = v41;
        goto LABEL_63;
      }

      if ([v46 length])
      {
        v44 = [(__CFString *)v25 stringByAppendingString:@" OR (cloud_universal_library_id='' AND (ROWID=? OR sync_id=?) OR grouping_key=?)"];

        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v69[0] = v26;
        v28 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v69[1] = v28;
        v69[2] = v46;
        [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
      }

      else
      {
        v44 = [(__CFString *)v25 stringByAppendingString:@" OR (cloud_universal_library_id='' AND (ROWID=? OR sync_id=?))"];

        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v68[0] = v26;
        v28 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v68[1] = v28;
        [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      }
      v40 = ;
      [v45 addObjectsFromArray:v40];
      v25 = v44;
    }

    else
    {
      v45 = [MEMORY[0x277CBEB18] array];
      if (!a6)
      {
        if (![v46 length])
        {
          v25 = @"SELECT album_artist, sort_album_artist, rowid, store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, representative_item_pid, sort_order, sort_order_section, grouping_key FROM album_artist WHERE ";
          goto LABEL_64;
        }

        v25 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, representative_item_pid, sort_order, sort_order_section, grouping_key FROM album_artist WHERE ", "stringByAppendingString:", @"grouping_key=?"}artist];
        v64 = v46;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
        [v45 addObjectsFromArray:v26];
        goto LABEL_63;
      }

      if ([v46 length])
      {
        v25 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, representative_item_pid, sort_order, sort_order_section, grouping_key FROM album_artist WHERE ", "stringByAppendingString:", @"(ROWID=? OR sync_id=?) OR grouping_key=?"}artist];
        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v66[0] = v26;
        v28 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v66[1] = v28;
        v66[2] = v46;
        [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
      }

      else
      {
        v25 = [@"SELECT album_artist sort:rowid album:{store_id, IFNULL(sort_album_artist, ML3SortString(album_artist)), sync_id, cloud_universal_library_id, classical_experience_available, liked_state, liked_state_changed_date, representative_item_pid, sort_order, sort_order_section, grouping_key FROM album_artist WHERE ", "stringByAppendingString:", @"(ROWID=? OR sync_id=?)"}artist];
        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v65[0] = v26;
        v28 = [MEMORY[0x277CCABB0] numberWithLongLong:a6];
        v65[1] = v28;
        [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
      }
      v40 = ;
      [v45 addObjectsFromArray:v40];
    }

LABEL_62:
    goto LABEL_63;
  }

  v29 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "Invalid parameters to find album artist", buf, 2u);
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_74:
}