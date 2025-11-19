void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<realityio::Builder>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<realityio::BuilderDependencyDAG::SocketQuery>(void *a1, uint64_t a2)
{
  v4 = realityio::BuilderDependencyDAG::SocketQuery::Hash::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v4 == v9)
      {
        if (*(i + 4) == *a2 && *(i + 20) == *(a2 + 4) && (i[4] ^ *(a2 + 16)) < 8)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(void *a1, unint64_t *a2)
{
  v4 = realityio::WeakBuilderPtrHash::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (realityio::WeakBuilderPtrEqual::operator()(a1, v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

{
  v4 = realityio::WeakBuilderPtrHash::operator()(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (realityio::WeakBuilderPtrEqual::operator()(a1, v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t realityio::WeakBuilderPtrHash::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    v5 = *a2;
    if (v4)
    {
      v6 = *a2;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
  return 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
}

BOOL realityio::WeakBuilderPtrEqual::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v7 = *a2;
    if (v6)
    {
      v8 = *a2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  v9 = a3[1];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v8 == *a3;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (!v6)
      {
        return v11;
      }

      goto LABEL_11;
    }
  }

  v11 = v8 == 0;
  if (v6)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__equal_range_multi<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (a3 & 0xFFFFFFFFFFFFFFF8));
  v4 = vcnt_s8(a2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= a2)
    {
      v5 = v3 % a2;
    }
  }

  else
  {
    v5 = v3 & (a2 - 1);
  }

  v7 = *(a1 + 8 * v5);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (!*v7)
  {
    return result;
  }

  while (1)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= a2)
      {
        v8 %= a2;
      }
    }

    else
    {
      v8 &= a2 - 1;
    }

    if (v8 != v5)
    {
      return 0;
    }

LABEL_18:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if ((result[2] ^ a3) >= 8)
  {
    goto LABEL_18;
  }

  v9 = result;
  do
  {
    v9 = *v9;
  }

  while (v9 && (v9[2] ^ a3) < 8);
  return result;
}

void std::vector<std::shared_ptr<realityio::Builder>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL std::__equal_to::operator()[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>(uint64_t a1, int8x8_t *a2)
{
  if ((*a2 ^ *a1) > 7 || *(a1 + 8) != a2[1].i32[0] || *(a1 + 40) != *&a2[5])
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return (*&a2[7] ^ *(a1 + 56)) < 8uLL;
  }

  v3 = a2[3];
  if (!*&v3)
  {
    return 0;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = *&v3 - 1;
LABEL_7:
  v6 = bswap64(0x9E3779B97F4A7C55 * (*(v2 + 5) + ((*(v2 + 5) + *(v2 + 4) + (*(v2 + 5) + *(v2 + 4)) * (*(v2 + 5) + *(v2 + 4))) >> 1)));
  if (v4.u32[0] > 1uLL)
  {
    v7 = v6;
    if (v6 >= *&v3)
    {
      v7 = v6 % *&v3;
    }
  }

  else
  {
    v7 = v6 & v5;
  }

  v8 = *(*&a2[2] + 8 * v7);
  if (v8)
  {
    v9 = *v8;
    if (!*v8)
    {
      return 0;
    }

    do
    {
      v10 = v9[1];
      if (v6 == v10)
      {
        if (v9[2] == v2[2])
        {
          v2 = *v2;
          if (!v2)
          {
            return (*&a2[7] ^ *(a1 + 56)) < 8uLL;
          }

          goto LABEL_7;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v10 >= *&v3)
          {
            v10 %= *&v3;
          }
        }

        else
        {
          v10 &= v5;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      v8 = 0;
      v9 = *v9;
    }

    while (v9);
  }

  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 16 * (v4 >> 1));
    v8 = (a2 - 16);
    v9 = *(a2 - 16);
    if (*(*v7 + 176) > *(v9 + 176))
    {
      v10 = *(a2 - 8);
      *v8 = 0;
      *(a2 - 8) = 0;
      v11 = *v7;
      do
      {
        v12 = v7;
        v13 = v7[1];
        *v12 = 0;
        v12[1] = 0;
        v14 = v8[1];
        *v8 = v11;
        v8[1] = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 16 * v6);
        v11 = *v7;
        v8 = v12;
      }

      while (*(*v7 + 176) > *(v9 + 176));
      v15 = v12[1];
      *v12 = v9;
      v12[1] = v10;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = a2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a2[3];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 2));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    realityio::WrappedRERef<REEngine *>::~WrappedRERef(a2 + 26);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table((a2 + 21));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table((a2 + 16));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table((a2 + 11));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table((a2 + 6));
    v3 = a2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = a2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__equal_range_multi<realityio::BuilderDependencyDAG::SocketQuery>(void *a1, uint64_t a2)
{
  v4 = realityio::BuilderDependencyDAG::SocketQuery::Hash::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (!*v9)
  {
    return result;
  }

  v11 = *a2;
  v12 = *(a2 + 4);
  v13 = *(a2 + 16);
  while (1)
  {
    v14 = result[1];
    if (v14 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v14 >= *&v5)
      {
        v14 %= *&v5;
      }
    }

    else
    {
      v14 &= *&v5 - 1;
    }

    if (v14 != v8)
    {
      return 0;
    }

LABEL_19:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (*(result + 4) != v11 || *(result + 20) != v12 || (result[4] ^ v13) >= 8)
  {
    goto LABEL_19;
  }

  v15 = result;
  do
  {
    v15 = *v15;
  }

  while (v15 && *(v15 + 4) == v11 && *(v15 + 20) == v12 && (v15[4] ^ v13) < 8);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    v3 = a2[7];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = a2[4];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 20);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2475D4138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2475D4624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = a4 - a1;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = v7 >> 3;
      v11 = (v7 >> 3) | 1;
      v12 = (a1 + 16 * v11);
      v13 = v10 + 2;
      if (v13 < a3)
      {
        v14 = *(*v12 + 176) > *(v12[2] + 176);
        v12 += 2 * v14;
        if (v14)
        {
          v11 = v13;
        }
      }

      v15 = *a4;
      if (*(*v12 + 176) <= *(*a4 + 176))
      {
        v16 = a4[1];
        *a4 = 0;
        a4[1] = 0;
        v17 = *v12;
        do
        {
          v18 = v5;
          v5 = v12;
          v19 = v12[1];
          *v5 = 0;
          v5[1] = 0;
          v20 = v18[1];
          *v18 = v17;
          v18[1] = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v8 < v11)
          {
            break;
          }

          v12 = (a1 + 16 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v11 = (2 * v11) | 1;
          }

          else
          {
            v14 = *(*v12 + 176) > *(v12[2] + 176);
            v12 += 2 * v14;
            v11 = v14 ? 2 * v11 + 2 : (2 * v11) | 1;
          }

          v17 = *v12;
        }

        while (*(*v12 + 176) <= *(v15 + 176));
        v21 = v5[1];
        *v5 = v15;
        v5[1] = v16;
        if (v21)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(a1, a3, a4);
    v10 = v9;
    if ((a2 - 16) == v9)
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_2475D4B58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = &a1[2 * v4 + 2];
    v7 = 2 * v4;
    v4 = (2 * v4) | 1;
    if (v7 + 2 < a3)
    {
      v8 = *(*v6 + 176) > *(v6[2] + 176);
      v6 += 2 * v8;
      if (v8)
      {
        v4 = v7 + 2;
      }
    }

    v9 = *v6;
    *v6 = 0;
    v6[1] = 0;
    v10 = a1[1];
    *a1 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    a1 = v6;
  }

  while (v4 <= v5);
  return v6;
}

void std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 7;
        std::allocator<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,0>(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
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
    v7 = v4 & (*&v5 - 1);
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

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::__erase_unique<std::weak_ptr<realityio::Builder>>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      realityio::WrappedRERef<REEngine *>::~WrappedRERef(v2 + 26);
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table((v2 + 21));
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table((v2 + 16));
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table((v2 + 11));
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table((v2 + 6));
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v5 = v2[3];
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[6];
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v6 = v2[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v2 + 20);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      v5 = v2[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t RIOPxrUsdRelationshipSetTargets(uint64_t a1, CFArrayRef theArray)
{
  if (a1)
  {
    v2 = (a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v8 = ValueAtIndex;
      v9 = v15;
      if (v15 >= v16)
      {
        v10 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v14, ValueAtIndex + 4);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v15, ValueAtIndex + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v9 + 1, v8 + 5);
        v10 = v9 + 2;
      }

      v15 = v10;
    }
  }

  v11 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdRelationship>(v2);
  std::recursive_mutex::lock(v11);
  v12 = pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
  std::recursive_mutex::unlock(v11);
  v17 = &v14;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v12;
}

void sub_2475D5434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  std::recursive_mutex::unlock(v12);
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdRelationship>(realityio::UsdLayerMutexTracker *a1)
{
  v2 = realityio::UsdLayerMutexTracker::instance(a1);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v12, a1);
    v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v12);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v3);
    v5 = EditTarget[1];
    v10 = *EditTarget;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    v6 = v13;
    if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v7 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v10);
  v8 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  return v7;
}

void sub_2475D556C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdRelationshipClearTargets(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdRelationship>((a1 + 24));
  std::recursive_mutex::lock(v2);
  v3 = pxrInternal__aapl__pxrReserved__::UsdRelationship::ClearTargets((a1 + 24));
  std::recursive_mutex::unlock(v2);
  return v3;
}

CFMutableArrayRef RIOPxrUsdRelationshipCopyTargets(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets())
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    Mutable = 0;
  }

  v4 = v3;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v4);
  return Mutable;
}

void sub_2475D56F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

CFStringRef realityio::DirtyMetadataDescriptor::description@<X0>(realityio::DirtyMetadataDescriptor *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  v3 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v3)
  {
    v4 = (v3 + 16);
    if (*(v3 + 39) < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v4 = "";
  }

  result = CFStringCreateWithFormat(0, 0, @"<DirtyMetadataDescriptor: %p { metadataName: %s } >", this, v4);
  *a2 = result;
  return result;
}

uint64_t getLocalTransformation(uint64_t result, _BYTE *a2, void *a3, uint64_t a4)
{
  v183 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v6 = result;
    v7 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
    v8 = v180;
    v6[4] = v179;
    v6[5] = v8;
    v9 = v182;
    v6[6] = v181;
    v6[7] = v9;
    v10 = *&v176[16];
    *v6 = *v176;
    v6[1] = v10;
    v11 = v178;
    v6[2] = v177;
    v6[3] = v11;
    if (a2)
    {
      *a2 = 0;
      if (*a3)
      {
        v12 = a3[4] + 8 * *a3;
        __asm { FMOV            V0.2D, #1.0 }

        v135 = _Q0;
        v136 = a2;
        while (1)
        {
          v19 = (v12 - 8);
          v18 = *(v12 - 8);
          v146[0] = v18;
          if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v146[0] &= 0xFFFFFFFFFFFFFFF8;
          }

          if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = (*v19 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
          }

          v21 = atomic_load(&qword_27EE530B0);
          if (!v21)
          {
          }

          if ((*(v21 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v22 = (*(v21 + 3) & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v22 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
          }

          if (*(v22 + 23) >= 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = *v22;
          }

          v24 = *(EmptyString + 23);
          if (v24 >= 0)
          {
            v25 = *(EmptyString + 23);
          }

          else
          {
            v25 = *(EmptyString + 8);
          }

          v26 = strlen(v23);
          if (v25 < v26 || ((v27 = v26, v28 = *EmptyString, v24 >= 0) ? (v29 = EmptyString) : (v29 = *EmptyString), v30 = strncmp(v29, v23, v27), v30))
          {
            v31 = 0;
          }

          else
          {
            if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v35 = ((*v19 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v35 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v30);
            }

            v60 = atomic_load(&qword_27EE530B0);
            if (!v60)
            {
            }

            if ((*(v60 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v61 = (*(v60 + 1) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v61 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v60);
            }

            v62 = *(v61 + 23);
            if ((v62 & 0x8000000000000000) != 0)
            {
              v62 = *(v61 + 8);
            }

            std::string::basic_string(v176, v35, v62, 0xFFFFFFFFFFFFFFFFLL, &v138);
            MEMORY[0x24C1A5E00](__p, v176);
            if ((v146[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v146[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v146[0] = __p[0];
            __p[0] = 0;
            if ((v176[23] & 0x80000000) != 0)
            {
              operator delete(*v176);
            }

            v31 = 1;
          }

          v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a4, v146);
          v32 = v7;
          if (a4 + 8 == v7)
          {
            goto LABEL_249;
          }

          if (v19 == a3[4])
          {
            goto LABEL_83;
          }

          v33 = atomic_load(&qword_27EE530B0);
          if (!v33)
          {
          }

          if ((*(v33 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v34 = ((*(v33 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v33 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
            v34 = v33;
          }

          if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v36 = ((*v19 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v36 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
          }

          v37 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v34, v36, v176);
          if ((*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v38 = (*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v38 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v37);
          }

          v39 = v176[23];
          if (v176[23] >= 0)
          {
            v40 = v176[23];
          }

          else
          {
            v40 = *&v176[8];
          }

          v41 = *(v38 + 23);
          v42 = v41;
          if ((v41 & 0x80u) != 0)
          {
            v41 = *(v38 + 8);
          }

          if (v40 != v41)
          {
            break;
          }

          v43 = *v176;
          if (v176[23] >= 0)
          {
            v43 = v176;
          }

          v44 = v42 >= 0 ? v38 : *v38;
          v7 = memcmp(v43, v44, v40);
          if (v7)
          {
            break;
          }

          v55 = 1;
          if ((v39 & 0x80) == 0)
          {
LABEL_79:
            if (v55)
            {
              goto LABEL_80;
            }

            goto LABEL_83;
          }

LABEL_82:
          operator delete(*v176);
          if (v55)
          {
LABEL_80:
            v56 = 0;
            v12 -= 8;
            goto LABEL_250;
          }

LABEL_83:
          v7 = atomic_load(MEMORY[0x277D86588]);
          if (!v7)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomXformOpTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomXformOpTypes_StaticTokenType>>::_TryToCreateData();
          }

          if ((*(v7 + 152) ^ *v19) > 7)
          {
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v57 = *v19;
            if ((*v19 & 7) != 0 && (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v57 &= 0xFFFFFFFFFFFFFFF8;
            }

            v175 = 0;
            if (*(v32 + 48))
            {
              pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v176, &v174);
              v58 = *(v32 + 48);
              v59 = ~*(v32 + 48);
              v175 = v58;
              if ((v59 & 3) != 0)
              {
                (*((v58 & 0xFFFFFFFFFFFFFFF8) + 24))(v32 + 40, &v174);
              }

              else
              {
                v174 = *(v32 + 40);
              }

              if (*&v176[8])
              {
                (*(*&v176[8] + 32))(v176);
              }
            }

            if ((v57 & 7) != 0)
            {
              if (atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
              {
                v63 = v57;
              }

              else
              {
                v63 = v57 & 0xFFFFFFFFFFFFFFF8;
              }
            }

            else
            {
              v63 = v57;
            }

            if ((atomic_load_explicit(&qword_27EE530C0, memory_order_acquire) & 1) == 0)
            {
              v133 = __cxa_guard_acquire(&qword_27EE530C0);
              if (v133)
              {
                _MergedGlobals_22 = pxrInternal__aapl__pxrReserved__::UsdObject::GetNamespaceDelimiter(v133);
                __cxa_guard_release(&qword_27EE530C0);
                a2 = v136;
              }
            }

            v64 = v63 & 0xFFFFFFFFFFFFFFF8;
            if ((v63 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v65 = (v64 + 16);
              if (*(v64 + 39) < 0)
              {
                v65 = *v65;
              }
            }

            else
            {
              v65 = "";
            }

            v66 = _MergedGlobals_22;
            v67 = strchr(v65, _MergedGlobals_22);
            if (!v67)
            {
              *v176 = "V2/XFormUtils.mm";
              *&v176[8] = "getTransformOpType";
              *&v176[16] = 94;
              *&v176[24] = "XformOpType (anonymous namespace)::getTransformOpType(TfToken)";
              LOBYTE(v177) = 0;
              if (v64 && *(v64 + 39) < 0)
              {
                v74 = *(v64 + 16);
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
              goto LABEL_147;
            }

            v68 = v67 + 1;
            v69 = strchr(v67 + 1, v66);
            if (!v69)
            {
              v69 = &v68[strlen(v68)];
            }

            v70 = v69 - v68;
            if (v69 - v68 > 6)
            {
              if (v70 == 7)
              {
                if (!strncmp("rotateX", v68, 7uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 3;
                }

                else if (!strncmp("rotateY", v68, 7uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 4;
                }

                else
                {
                  if (strncmp("rotateZ", v68, 7uLL))
                  {
                    goto LABEL_145;
                  }

                  v71 = 0;
                  v72 = 0;
                  v73 = 5;
                }
              }

              else
              {
                if (v70 != 9)
                {
                  goto LABEL_145;
                }

                if (!strncmp("transform", v68, 9uLL))
                {
                  v72 = 0;
                  v71 = 1;
                  v73 = 13;
                }

                else if (!strncmp("translate", v68, 9uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 1;
                }

                else if (!strncmp("rotateXYZ", v68, 9uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 6;
                }

                else if (!strncmp("rotateXZY", v68, 9uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 7;
                }

                else if (!strncmp("rotateYXZ", v68, 9uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 8;
                }

                else if (!strncmp("rotateYZX", v68, 9uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 9;
                }

                else if (!strncmp("rotateZXY", v68, 9uLL))
                {
                  v71 = 0;
                  v72 = 0;
                  v73 = 10;
                }

                else
                {
                  if (strncmp("rotateZYX", v68, 9uLL))
                  {
                    goto LABEL_145;
                  }

                  v71 = 0;
                  v72 = 0;
                  v73 = 11;
                }
              }
            }

            else
            {
              if (v70 != 5)
              {
                if (v70 == 6 && !strncmp("orient", v68, 6uLL))
                {
                  v71 = 0;
                  v72 = 1;
                  v73 = 12;
                  goto LABEL_158;
                }

LABEL_145:
                *v176 = "V2/XFormUtils.mm";
                *&v176[8] = "getTransformOpType";
                *&v176[16] = 105;
                *&v176[24] = "XformOpType (anonymous namespace)::getTransformOpType(TfToken)";
                LOBYTE(v177) = 0;
                std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v68, v69, v69 - v68);
                a2 = v136;
                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
                if (SBYTE7(v167) < 0)
                {
                  operator delete(__p[0]);
                }

LABEL_147:
                v71 = 0;
                v72 = 0;
                v73 = 0;
LABEL_159:
                if ((v63 & 7) != 0)
                {
                  atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_release);
                }

                if (v71)
                {
                  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
                  v75 = v175;
                  if (!v175)
                  {
                    goto LABEL_316;
                  }

                  v76 = *((v175 & 0xFFFFFFFFFFFFFFF8) + 16);
                  if (v76 == 76)
                  {
                    goto LABEL_164;
                  }

                  if ((v175 & 4) != 0)
                  {
                    v75 = v175;
                    if (!IsImpl)
                    {
                      if (v175)
                      {
                        v76 = *((v175 & 0xFFFFFFFFFFFFFFF8) + 16);
                        goto LABEL_185;
                      }

LABEL_316:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v138, 1.0);
LABEL_244:
                      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v174);
                      if ((v57 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if (!atomic_load(&qword_27EE530B8))
                      {
                      }

                      v7 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
                      if ((v7 & 1) == 0)
                      {
                        v7 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=();
                      }

LABEL_249:
                      v56 = 0;
                      goto LABEL_250;
                    }

LABEL_164:
                    if ((v75 & 4) != 0)
                    {
                      v77 = (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                    }

                    else
                    {
                      v77 = v174;
                    }

                    v78 = *v77;
                    v79 = v77[1];
                    v80 = v77[3];
                    v177 = v77[2];
                    v178 = v80;
                    *v176 = v78;
                    *&v176[16] = v79;
                    v81 = v77[4];
                    v82 = v77[5];
                    v83 = v77[7];
                    v181 = v77[6];
                    v182 = v83;
                    v179 = v81;
                    v180 = v82;
                    if (!v31)
                    {
LABEL_190:
                      v142 = v179;
                      v143 = v180;
                      v144 = v181;
                      v145 = v182;
                      v138 = *v176;
                      v139 = *&v176[16];
                      v140 = v177;
                      v141 = v178;
                      goto LABEL_244;
                    }

LABEL_189:
                    *&v160 = 0;
                    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(__p, v176, &v160, 0.0);
                    v179 = v170;
                    v180 = v171;
                    v181 = v172;
                    v182 = v173;
                    *v176 = *__p;
                    *&v176[16] = v167;
                    v177 = v168;
                    v178 = v169;
                    goto LABEL_190;
                  }

LABEL_185:
                  if (v76 == 73)
                  {
                    if ((v75 & 4) == 0)
                    {
                      goto LABEL_187;
                    }

LABEL_228:
                    v93 = (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                  }

                  else
                  {
                    {
                      goto LABEL_316;
                    }

                    v75 = v175;
                    if ((v175 & 4) != 0)
                    {
                      goto LABEL_228;
                    }

LABEL_187:
                    v93 = v174;
                  }

                  MEMORY[0x24C1A4B20](__p, v93);
                  v179 = v170;
                  v180 = v171;
                  v181 = v172;
                  v182 = v173;
                  *v176 = *__p;
                  *&v176[16] = v167;
                  v177 = v168;
                  v178 = v169;
                  if (!v31)
                  {
                    goto LABEL_190;
                  }

                  goto LABEL_189;
                }

                v84 = v175;
                if (!v175)
                {
                  goto LABEL_207;
                }

                v85 = v175 & 0xFFFFFFFFFFFFFFF8;
                v86 = *((v175 & 0xFFFFFFFFFFFFFFF8) + 16);
                if (v86 == 9)
                {
                  goto LABEL_170;
                }

                if ((v175 & 4) != 0)
                {
                  v89 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v174, MEMORY[0x277D827A8]);
                  v84 = v175;
                  if (!v89)
                  {
                    if (v175)
                    {
                      v85 = v175 & 0xFFFFFFFFFFFFFFF8;
                      v86 = *((v175 & 0xFFFFFFFFFFFFFFF8) + 16);
                      goto LABEL_177;
                    }

LABEL_207:
                    memset(v165, 0, 24);
LABEL_208:
                    if (!v72)
                    {
                      goto LABEL_316;
                    }

                    memset(v176, 0, sizeof(v176));
                    v98 = v175;
                    if (!v175)
                    {
                      goto LABEL_239;
                    }

                    v99 = v175 & 0xFFFFFFFFFFFFFFF8;
                    if (*((v175 & 0xFFFFFFFFFFFFFFF8) + 16) == 89)
                    {
                      goto LABEL_211;
                    }

                    if ((v175 & 4) != 0)
                    {
                      v98 = v175;
                      if (!v112)
                      {
                        if (v175)
                        {
                          v99 = v175 & 0xFFFFFFFFFFFFFFF8;
                          goto LABEL_234;
                        }

LABEL_239:
                        pxrInternal__aapl__pxrReserved__::GfRotation::SetQuat();
                        if (v31)
                        {
                          v114 = *__p;
                          v115 = *&v167;
                          v116 = COERCE_DOUBLE(*&vmulq_f64(v114, v114).f64[1]) + v114.f64[0] * v114.f64[0] + v115 * v115;
                          if (fabs(v116 + -1.0) >= 1.0e-10)
                          {
                            v117 = 1.0 / fmax(sqrt(v116), 1.0e-10);
                            v114 = vmulq_n_f64(*__p, v117);
                            v115 = *&v167 * v117;
                          }

                          *__p = v114;
                          *&v167 = v115;
                          *(&v167 + 1) = -*(&v167 + 1);
                        }

                        v160 = 0uLL;
                        *&v161 = 0;
                        pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d();
                        goto LABEL_244;
                      }

LABEL_211:
                      if ((v98 & 4) != 0)
                      {
                        v100 = (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                      }

                      else
                      {
                        v100 = v174;
                      }

                      v101 = *v100;
                      v102 = v100[1];
LABEL_238:
                      *v176 = v101;
                      *&v176[16] = v102;
                      goto LABEL_239;
                    }

LABEL_234:
                    if (*(v99 + 16) == 88)
                    {
LABEL_235:
                      if ((v98 & 4) != 0)
                      {
                        v113 = (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                      }

                      else
                      {
                        v113 = v174;
                      }

                      v101 = vcvtq_f64_f32(*v113);
                      v102 = vcvtq_f64_f32(v113[1]);
                      goto LABEL_238;
                    }

                    if ((v98 & 4) != 0)
                    {
                      v98 = v175;
                      if (v122)
                      {
                        goto LABEL_235;
                      }

                      if (!v175)
                      {
                        goto LABEL_239;
                      }
                    }

                    if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuath>(&v174))
                    {
                      if ((v175 & 4) != 0)
                      {
                        v123 = (*((v175 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                      }

                      else
                      {
                        v123 = &v174;
                      }

                      v124 = *(MEMORY[0x277D86658] + 4 * v123[3]);
                      v125 = *(MEMORY[0x277D86658] + 4 * v123[1]);
                      v126 = *(MEMORY[0x277D86658] + 4 * v123[2]);
                      *v176 = *(MEMORY[0x277D86658] + 4 * *v123);
                      *&v176[8] = v125;
                      *&v176[16] = v126;
                      *&v176[24] = v124;
                    }

                    goto LABEL_239;
                  }

LABEL_170:
                  if ((v84 & 4) != 0)
                  {
                    v87 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                  }

                  else
                  {
                    v87 = &v174;
                  }

                  v88 = *v87;
LABEL_200:
                  if (v31)
                  {
                    v96 = -v88;
                  }

                  else
                  {
                    v96 = v88;
                  }

                  switch(v73)
                  {
                    case 3:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
                      __p[0] = 0x3FF0000000000000;
                      __p[1] = 0;
                      *&v167 = 0;
                      *(&v167 + 1) = v96;
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate();
                      goto LABEL_217;
                    case 4:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
                      *__p = xmmword_247762A50;
                      *&v167 = 0;
                      *(&v167 + 1) = v96;
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate();
                      goto LABEL_217;
                    case 5:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
                      __p[1] = 0;
                      __p[0] = 0;
                      *&v167 = 0x3FF0000000000000;
                      *(&v167 + 1) = v96;
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate();
LABEL_217:
                      v103 = *v97;
                      v104 = v97[1];
                      v105 = v97[3];
                      v140 = v97[2];
                      v141 = v105;
                      v138 = v103;
                      v139 = v104;
                      v106 = v97[4];
                      v107 = v97[5];
                      v108 = v97[7];
                      v144 = v97[6];
                      v145 = v108;
                      v142 = v106;
                      v143 = v107;
                      goto LABEL_244;
                  }

                  v84 = v175;
LABEL_219:
                  memset(v165, 0, 24);
                  if (!v84)
                  {
                    goto LABEL_208;
                  }

                  v85 = v84 & 0xFFFFFFFFFFFFFFF8;
LABEL_221:
                  v109 = *(v85 + 16);
                  if (v109 == 68)
                  {
LABEL_222:
                    if ((v84 & 4) != 0)
                    {
                      v110 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                    }

                    else
                    {
                      v110 = v174;
                    }

                    v111 = v110[1].f32[0];
                    v165[0] = vcvtq_f64_f32(*v110);
                    v165[1].f64[0] = v111;
                    goto LABEL_281;
                  }

                  if ((v84 & 4) != 0)
                  {
                    v84 = v175;
                    if (v119)
                    {
                      goto LABEL_222;
                    }

                    if (!v175)
                    {
                      goto LABEL_208;
                    }

                    v109 = *((v175 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  if (v109 == 71)
                  {
LABEL_261:
                    if ((v84 & 4) != 0)
                    {
                      v120 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                    }

                    else
                    {
                      v120 = v174;
                    }

                    v121 = *v120;
                    v165[1].f64[0] = *(v120 + 16);
                    v165[0] = v121;
LABEL_281:
                    if (v73 == 2)
                    {
                      if (v31)
                      {
                        v165[0] = vdivq_f64(v135, v165[0]);
                        v165[1].f64[0] = 1.0 / v165[1].f64[0];
                      }

                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale();
                      goto LABEL_217;
                    }

                    if (v73 == 1)
                    {
                      if (v31)
                      {
                        v165[0] = vnegq_f64(v165[0]);
                        v165[1].f64[0] = -v165[1].f64[0];
                      }

                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate();
                      goto LABEL_217;
                    }

                    v131 = v165[0].f64[0];
                    if (v31)
                    {
                      v131 = -v165[0].f64[0];
                      v165[0].f64[0] = -v165[0].f64[0];
                      *(v165 + 8) = vnegq_f64(*(v165 + 8));
                    }

                    *&v170 = 0;
                    v168 = 0u;
                    v169 = 0u;
                    *__p = 0u;
                    v167 = 0u;
                    *v176 = 0x3FF0000000000000uLL;
                    *&v176[16] = 0;
                    *&v176[24] = v131;
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d();
                    v164 = 0;
                    v162 = 0u;
                    v163 = 0u;
                    v160 = 0u;
                    v161 = 0u;
                    *v176 = xmmword_247762A50;
                    *&v176[16] = 0;
                    *&v176[24] = v165[0].f64[1];
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d();
                    v159 = 0;
                    v157 = 0u;
                    v158 = 0u;
                    v155 = 0u;
                    v156 = 0u;
                    *v176 = 0uLL;
                    *&v176[16] = 0x3FF0000000000000;
                    *&v176[24] = v165[1].f64[0];
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d();
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetDiagonal(v153, 1.0);
                    if (v73 > 8)
                    {
                      switch(v73)
                      {
                        case 9:
                          if (v31)
                          {
                            v150 = v168;
                            v151 = v169;
                            v152 = v170;
                            *v148 = *__p;
                            v149 = v167;
                          }

                          else
                          {
                            v150 = v162;
                            v151 = v163;
                            v152 = v164;
                            *v148 = v160;
                            v149 = v161;
                          }

                          goto LABEL_328;
                        case 10:
                          if (v31)
                          {
                            v150 = v162;
                            v151 = v163;
                            v152 = v164;
                            *v148 = v160;
                            v149 = v161;
                          }

                          else
                          {
                            v150 = v157;
                            v151 = v158;
                            v152 = v159;
                            *v148 = v155;
                            v149 = v156;
                          }

                          goto LABEL_328;
                        case 11:
                          if (v31)
                          {
                            v150 = v168;
                            v151 = v169;
                            v152 = v170;
                            *v148 = *__p;
                            v149 = v167;
                          }

                          else
                          {
                            v150 = v157;
                            v151 = v158;
                            v152 = v159;
                            *v148 = v155;
                            v149 = v156;
                          }

                          goto LABEL_328;
                      }
                    }

                    else
                    {
                      switch(v73)
                      {
                        case 6:
                          if (v31)
                          {
                            v150 = v157;
                            v151 = v158;
                            v152 = v159;
                            *v148 = v155;
                            v149 = v156;
                          }

                          else
                          {
                            v150 = v168;
                            v151 = v169;
                            v152 = v170;
                            *v148 = *__p;
                            v149 = v167;
                          }

                          goto LABEL_328;
                        case 7:
                          if (v31)
                          {
                            v150 = v162;
                            v151 = v163;
                            v152 = v164;
                            *v148 = v160;
                            v149 = v161;
                          }

                          else
                          {
                            v150 = v168;
                            v151 = v169;
                            v152 = v170;
                            *v148 = *__p;
                            v149 = v167;
                          }

                          goto LABEL_328;
                        case 8:
                          if (v31)
                          {
                            v150 = v157;
                            v151 = v158;
                            v152 = v159;
                            *v148 = v155;
                            v149 = v156;
                          }

                          else
                          {
                            v150 = v162;
                            v151 = v163;
                            v152 = v164;
                            *v148 = v160;
                            v149 = v161;
                          }

LABEL_328:
                          pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=();
                          v177 = v150;
                          v178 = v151;
                          *&v179 = v152;
                          *v176 = *v148;
                          *&v176[16] = v149;
                          pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=();
                          v153[2] = v177;
                          v153[3] = v178;
                          v154 = v179;
                          v153[0] = *v176;
                          v153[1] = *&v176[16];
                          pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v176, 1.0);
                          v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v176, v153);
                          goto LABEL_217;
                      }
                    }

                    *v176 = "V2/XFormUtils.mm";
                    *&v176[8] = "GetOpTransform";
                    *&v176[16] = 221;
                    *&v176[24] = "GfMatrix4d (anonymous namespace)::GetOpTransform(TfToken, VtValue, BOOL)";
                    LOBYTE(v177) = 0;
                    pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
                    pxrInternal__aapl__pxrReserved__::TfStringify<pxrInternal__aapl__pxrReserved__::VtValue>();
                    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
                    if (v147 < 0)
                    {
                      operator delete(v146[1]);
                    }

                    if (SBYTE7(v149) < 0)
                    {
                      operator delete(v148[0]);
                    }

                    goto LABEL_316;
                  }

                  if ((v84 & 4) != 0)
                  {
                    v84 = v175;
                    if (v127)
                    {
                      goto LABEL_261;
                    }

                    if (!v175)
                    {
                      goto LABEL_208;
                    }

                    v109 = *((v175 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  if (v109 == 65)
                  {
                    if ((v84 & 4) == 0)
                    {
                      goto LABEL_279;
                    }

LABEL_307:
                    v128 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                  }

                  else
                  {
                    {
                      goto LABEL_208;
                    }

                    v84 = v175;
                    if ((v175 & 4) != 0)
                    {
                      goto LABEL_307;
                    }

LABEL_279:
                    v128 = &v174;
                  }

                  v129 = *(MEMORY[0x277D86658] + 4 * v128[1]);
                  v130 = *(MEMORY[0x277D86658] + 4 * v128[2]);
                  v165[0].f64[0] = *(MEMORY[0x277D86658] + 4 * *v128);
                  v165[0].f64[1] = v129;
                  v165[1].f64[0] = v130;
                  goto LABEL_281;
                }

LABEL_177:
                if (v86 == 10)
                {
LABEL_178:
                  if ((v84 & 4) != 0)
                  {
                    v90 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                  }

                  else
                  {
                    v90 = &v174;
                  }

                  v91 = *v90;
                }

                else
                {
                  if ((v84 & 4) != 0)
                  {
                    v94 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v174, MEMORY[0x277D827B0]);
                    v84 = v175;
                    if (v94)
                    {
                      goto LABEL_178;
                    }

                    if (!v175)
                    {
                      goto LABEL_207;
                    }

                    v85 = v175 & 0xFFFFFFFFFFFFFFF8;
                    v86 = *((v175 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  if (v86 != 11)
                  {
                    if ((v84 & 4) == 0)
                    {
                      memset(v165, 0, 24);
                      goto LABEL_221;
                    }

                    v84 = v175;
                    if (!v132)
                    {
                      goto LABEL_219;
                    }
                  }

                  if ((v84 & 4) != 0)
                  {
                    v95 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v174);
                  }

                  else
                  {
                    v95 = &v174;
                  }

                  v91 = *(MEMORY[0x277D86658] + 4 * *v95);
                }

                v88 = v91;
                goto LABEL_200;
              }

              if (strncmp("scale", v68, 5uLL))
              {
                goto LABEL_145;
              }

              v71 = 0;
              v72 = 0;
              v73 = 2;
            }

LABEL_158:
            a2 = v136;
            goto LABEL_159;
          }

          v56 = 1;
          *a2 = 1;
LABEL_250:
          if ((v146[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v146[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v12 -= 8;
          if (v12 == a3[4])
          {
            v56 = 1;
          }

          if (v56)
          {
            goto LABEL_345;
          }
        }

        v45 = atomic_load(&qword_27EE530B0);
        if (!v45)
        {
        }

        if ((*(v45 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v46 = ((*(v45 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v45 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v45);
          v46 = v45;
        }

        if ((*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v47 = ((*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v47 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v45);
        }

        v48 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v46, v47, __p);
        if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = (*v19 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v48);
        }

        v49 = SBYTE7(v167);
        if ((SBYTE7(v167) & 0x80u) == 0)
        {
          v50 = BYTE7(v167);
        }

        else
        {
          v50 = __p[1];
        }

        v51 = *(v7 + 23);
        v52 = v51;
        if ((v51 & 0x80u) != 0)
        {
          v51 = *(v7 + 8);
        }

        if (v50 == v51)
        {
          v53 = __p[0];
          if ((SBYTE7(v167) & 0x80u) == 0)
          {
            v53 = __p;
          }

          if (v52 >= 0)
          {
            v54 = v7;
          }

          else
          {
            v54 = *v7;
          }

          v7 = memcmp(v53, v54, v50);
          v55 = v7 == 0;
          if ((v49 & 0x80000000) == 0)
          {
LABEL_78:
            if ((v176[23] & 0x80) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_82;
          }
        }

        else
        {
          v55 = 0;
          if ((SBYTE7(v167) & 0x80000000) == 0)
          {
            goto LABEL_78;
          }
        }

        operator delete(__p[0]);
        goto LABEL_78;
      }

LABEL_345:
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v134 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475D6D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __cxa_guard_abort(&qword_27EE530C0);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2D0]);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a35 & 7) != 0)
  {
    atomic_fetch_add_explicit((a35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfStringify<pxrInternal__aapl__pxrReserved__::VtValue>()
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  v0 = *(v5 - 24);
  v1 = std::locale::classic();
  std::ios_base::getloc((&v5 + v0));
  std::ios_base::imbue((&v5 + v0), v1);
  std::locale::~locale(&v11);
  v2 = *(&v7[3].__locale_ + v0);
  if (v2)
  {
    (*(v2->__locale_ + 2))(v2, v1);
    std::locale::locale(&v10, v2 + 1);
    std::locale::operator=(v2 + 1, v1);
    std::locale::~locale(&v10);
  }

  std::locale::~locale(&v4);
  pxrInternal__aapl__pxrReserved__::operator<<();
  std::stringbuf::str();
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x24C1A9110](&v9);
}

void sub_2475D70B8(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::locale::~locale(&a2);
  std::ostringstream::~ostringstream(&a3, MEMORY[0x277D82828]);
  MEMORY[0x24C1A9110](va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::GetNamespaceDelimiter(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v1 = atomic_load(MEMORY[0x277D86548]);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType>>::_TryToCreateData();
  }

  v2 = *(v1 + 80) & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v3 = (v2 + 16);
    if (*(v2 + 39) < 0)
    {
      v3 = *v3;
    }
  }

  else
  {
    v3 = "";
  }

  return *v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 88)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 87)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::TfStaticData<anonymous namespace::anonymous namespace::_tokens_PrivateStaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<anonymous namespace::anonymous namespace::_tokens_PrivateStaticTokenType>>::_TryToCreateData()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

void sub_2475D747C(_Unwind_Exception *a1)
{
  v5 = 24;
  while (1)
  {
    v6 = *(v3 + v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 -= 8;
    if (v5 == -8)
    {
      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v1, v2);
      _Unwind_Resume(a1);
    }
  }
}

realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType *realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType::CylinderMeshBuilderTokens_StaticTokenType(atomic_uint **this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Cylinder", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "axis", 0);
  MEMORY[0x24C1A5DF0](this + 2, "height", 0);
  MEMORY[0x24C1A5DF0](this + 3, "radius", 0);
  MEMORY[0x24C1A5DF0](this + 4, "material:binding", 0);
  v3 = this + 5;
  v4 = *this;
  v18 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v5;
    }
  }

  v6 = this[1];
  v19 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v7;
    }
  }

  v8 = this[2];
  v20 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v9;
    }
  }

  v10 = this[3];
  v21 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v11;
    }
  }

  v12 = this[4];
  v22 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v13;
    }
  }

  *v3 = 0;
  this[6] = 0;
  this[7] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v18, &v23, 5uLL);
  for (i = 4; i != -1; --i)
  {
    v15 = (&v18)[i];
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2475D782C(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_2475D7C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  MEMORY[0x24C1A91B0](v30, 0x10A1C40F82F910ELL);
  *(v31 - 176) = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
  MEMORY[0x24C1A91B0](v29, v28);
  _Unwind_Resume(a1);
}

realityio::UsdPropertyDelta *realityio::UsdPropertyDelta::UsdPropertyDelta(realityio::UsdPropertyDelta *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = *a2;
  *this = &unk_285952578;
  *(this + 1) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  *(this + 2) = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(this + 24, v5);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v5);
  return this;
}

void sub_2475D8034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a9);
  v11 = *(v9 + 8);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *realityio::UsdPropertyDelta::updateWithPropertyDelta(void *this, const realityio::UsdPropertyDelta *a2)
{
  if ((*(a2 + 1) ^ this[1]) <= 7)
  {
    v2 = *(a2 + 5);
    if (v2)
    {
      v3 = this;
      do
      {
        this = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v3 + 3, v2 + 2);
        v2 = *v2;
      }

      while (v2);
    }
  }

  return this;
}

const void **realityio::UsdPropertyDelta::description@<X0>(realityio::UsdPropertyDelta *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  v4 = *(this + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (v4 + 16);
    if (*(v4 + 39) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = "";
  }

  realityio::UsdMetadataDelta::description((this + 16), &v7);
  *a2 = CFStringCreateWithFormat(0, 0, @"<UsdPropertyDelta: %p { property name: %s, metadata: %@ }>", this, v5, v7);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v7);
}

void sub_2475D8150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v4);
  _Unwind_Resume(a1);
}

void realityio::internal::TexturePrimToMaterialPrimMap::makeTexturePrimToMaterialMap(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v79 = 0;
  v80 = 0;
  v78 = &v79;
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v74, v3);
  *&v43[0].__r_.__value_.__l.__data_ = 0uLL;
  v43[0].__r_.__value_.__s.__data_[16] = 1;
  v4 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(v43, 0);
  v66 = *v4;
  v67 = *(v4 + 16);
  *&v43[0].__r_.__value_.__l.__data_ = v66;
  v43[0].__r_.__value_.__s.__data_[16] = v67;
  v5 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(v43, 8);
  v6 = *v5;
  v64 = *(v5 + 16);
  v63 = v6;
  v7 = pxrInternal__aapl__pxrReserved__::UsdPrimRange::UsdPrimRange(v71, &v74, &v63);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(v7, &v66);
  v42 = *(MEMORY[0x277D86758] + 48);
  v40 = *(MEMORY[0x277D86708] + 48);
  while (1)
  {
    v43[0].__r_.__value_.__r.__words[0] = v72;
    v43[0].__r_.__value_.__l.__size_ = v71;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    LODWORD(v43[1].__r_.__value_.__l.__data_) = 0;
    WORD2(v43[1].__r_.__value_.__r.__words[0]) = 0;
    if (v66 == *&v43[0].__r_.__value_.__l.__data_)
    {
      v8 = 1;
      if (v67 == v43[0].__r_.__value_.__r.__words[2] && !v68 && !v69)
      {
        v8 = v70;
      }
    }

    else
    {
      v8 = 1;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43[0].__r_.__value_.__r.__words[2]);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v43[0].__r_.__value_.__r.__words[0] = v66;
    if (v66)
    {
      atomic_fetch_add_explicit((v66 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v63, v43, &v67);
    v9 = v43[0].__r_.__value_.__r.__words[0];
    if (v43[0].__r_.__value_.__r.__words[0])
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v43[0].__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::_GetStaticTfType(v9);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() && (realityio::hasMaterialXSurface(&v63, v10) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v61 = MEMORY[0x277D86758] + 16;
      if (v62 && (*(v62 + 57) & 8) == 0 && (v42(&v61) & 1) != 0)
      {
        pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::GetSurfaceAttr(&v57, &v61);
        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v57))
        {
          v11 = atomic_load(MEMORY[0x277D86568]);
          if (!v11)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
          }

          v12 = *(v11 + 216);
          v82 = v12;
          if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v82 &= 0xFFFFFFFFFFFFFFF8;
          }

          memset(v43, 0, 24);
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v43, &v82, &v83, 1uLL);
          pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
          v49 = v43;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v49);
          if ((v82 & 7) != 0)
          {
            atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v56 && (*(v56 + 57) & 8) == 0 && ((*(v55 + 32))(&v55) & 1) != 0)
          {
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v55);
            v14 = v53;
            v13 = v54;
            v41 = v54;
            while (v14 != v13)
            {
              if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v14) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && MEMORY[0x24C1A7400](v14))
              {
                realityio::findOriginalSourceAttribute(v14, &v49);
                if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v49))
                {
                  v15 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v82, &v50, &v51);
                  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v15))
                  {
                    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                    v47 = MEMORY[0x277D86708] + 16;
                    if (v48 && (*(v48 + 57) & 8) == 0 && (v40(&v47) & 1) != 0)
                    {
                      *&v45 = 0;
                      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(v43, &v47);
                      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v43))
                      {
                        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
                      }

                      if ((v43[1].__r_.__value_.__s.__data_[0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v43[1].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43[0].__r_.__value_.__r.__words[2]);
                      if (v43[0].__r_.__value_.__l.__size_)
                      {
                        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v43[0].__r_.__value_.__l.__size_);
                      }

                      MEMORY[0x24C1A5DE0](v43, "UsdUVTexture");
                      v16 = v45;
                      v17 = v43[0].__r_.__value_.__r.__words[0];
                      if ((v43[0].__r_.__value_.__s.__data_[0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v43[0].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((v45 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((v17 ^ v16) <= 7)
                      {
                        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v82, v43);
                        v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&v78, v43);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v43);
                        if (&v79 != v18)
                        {
                          goto LABEL_50;
                        }

                        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v82, &p_size);
                        *(&v45 + 1) = 0;
                        v46 = 0;
                        *&v45 = &v45 + 8;
                        std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,0>(v43, &p_size, &v45);
                        v19 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>(&v78, v43);
                        v37 = v20;
                        v18 = v19;
                        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(&v43[0].__r_.__value_.__l.__size_, v43[0].__r_.__value_.__r.__words[2]);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v43);
                        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(&v45, *(&v45 + 1));
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&p_size);
                        if (v37)
                        {
LABEL_50:
                          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v63, v43);
                          v38 = v18;
                          v21 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>((v18 + 5), v43);
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v43);
                          if (v38 + 6 != v21)
                          {
                            goto LABEL_52;
                          }

                          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v63, v44);
                          v45 = 0uLL;
                          v46 = 0;
                          LODWORD(v43[0].__r_.__value_.__l.__data_) = v44[0];
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
                          HIDWORD(v43[0].__r_.__value_.__r.__words[0]) = v44[1];
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
                          *&v43[0].__r_.__value_.__r.__words[1] = v45;
                          v43[1].__r_.__value_.__r.__words[0] = v46;
                          v46 = 0;
                          v45 = 0uLL;
                          v22 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>((v38 + 5), v43);
                          v39 = v23;
                          v21 = v22;
                          p_size = &v43[0].__r_.__value_.__l.__size_;
                          std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&p_size);
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v43);
                          p_size = &v45;
                          std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&p_size);
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v44);
                          if (v39)
                          {
LABEL_52:
                            memset(v43, 0, sizeof(v43));
                            BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v45, &v49);
                            if ((v45 & 0xFFFFFFFFFFFFFFF8) != 0)
                            {
                              EmptyString = ((v45 & 0xFFFFFFFFFFFFFFF8) + 16);
                            }

                            else
                            {
                              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
                            }

                            std::string::operator=(&v43[1], EmptyString);
                            if ((v45 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v26 = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v45, v14);
                            if ((v45 & 0xFFFFFFFFFFFFFFF8) != 0)
                            {
                              v27 = ((v45 & 0xFFFFFFFFFFFFFFF8) + 16);
                            }

                            else
                            {
                              v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
                            }

                            std::string::operator=(v43, v27);
                            if ((v45 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v28 = v21[6];
                            if (v28 >= v21[7])
                            {
                              v31 = std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::__emplace_back_slow_path<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>(v21 + 5, v43);
                              v32 = SHIBYTE(v43[1].__r_.__value_.__r.__words[2]);
                              v21[6] = v31;
                              if (v32 < 0)
                              {
                                operator delete(v43[1].__r_.__value_.__l.__data_);
                              }
                            }

                            else
                            {
                              v29 = *&v43[0].__r_.__value_.__l.__data_;
                              *(v28 + 16) = *(&v43[0].__r_.__value_.__l + 2);
                              *v28 = v29;
                              memset(v43, 0, 24);
                              v30 = v43[1].__r_.__value_.__r.__words[2];
                              *(v28 + 24) = *&v43[1].__r_.__value_.__l.__data_;
                              *(v28 + 40) = v30;
                              memset(&v43[1], 0, sizeof(std::string));
                              v21[6] = v28 + 48;
                            }

                            if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v43[0].__r_.__value_.__l.__data_);
                            }
                          }
                        }
                      }
                    }

                    MEMORY[0x24C1A5280](&v47);
                  }

                  if ((v85 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v84);
                  if (v83)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v83);
                  }

                  if ((v52 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                else if ((v52 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v51);
                if (v50)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v50);
                }
              }

              v14 = (v14 + 32);
              v13 = v41;
            }

            v43[0].__r_.__value_.__r.__words[0] = &v53;
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](v43);
          }

          MEMORY[0x24C1A5280](&v55);
        }

        if ((v60 & 7) != 0)
        {
          atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59);
        if (v58)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v58);
        }
      }

      MEMORY[0x24C1A5510](&v61);
    }

    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v64);
    if (*(&v63 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v63 + 1));
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v66);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v67);
  v33 = v79;
  *a2 = v78;
  a2[1] = v33;
  v34 = a2 + 1;
  v35 = v80;
  a2[2] = v80;
  if (v35)
  {
    v33[2] = v34;
    v78 = &v79;
    v79 = 0;
    v80 = 0;
  }

  else
  {
    *a2 = v34;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v73);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v76);
  if (v75)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v75);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(&v78, v79);
  v36 = *MEMORY[0x277D85DE8];
}

void sub_2475D8B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,0>(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  *(a1 + 8) = *a3;
  v7 = a3 + 1;
  v8 = a3[1];
  *(a1 + 16) = v8;
  v9 = a1 + 16;
  v10 = a3[2];
  *(a1 + 24) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *a3 = v7;
    *v7 = 0;
    a3[2] = 0;
  }

  else
  {
    *(a1 + 8) = v9;
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>::~pair(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy((a2 + 5), a2[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 32));
    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::__emplace_back_slow_path<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v6);
  }

  v7 = 48 * v2;
  v8 = 0;
  v22 = 0;
  v9 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  v26 = v13;
  v27 = v13;
  v24[0] = a1;
  v24[1] = &v26;
  v24[2] = &v27;
  if (v12 == v11)
  {
    v25 = 1;
  }

  else
  {
    v14 = v11;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      *(v15 + 40) = *(v14 + 40);
      *(v15 + 24) = v17;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 24) = 0;
      v14 += 48;
      v15 += 48;
    }

    while (v14 != v12);
    v27 = v15;
    v25 = 1;
    do
    {
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a1, v11);
      v11 += 48;
    }

    while (v11 != v12);
    v8 = v22;
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>,realityio::internal::TexturePrimToMaterialPrimMap::MaterialData*>>::~__exception_guard_exceptions[abi:ne200100](v24);
  v18 = *a1;
  *a1 = v13;
  a1[1] = v7 + 48;
  v19 = a1[2];
  a1[2] = v8;
  v21[2] = v18;
  v22 = v19;
  v21[0] = v18;
  v21[1] = v18;
  std::__split_buffer<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::~__split_buffer(v21);
  return v7 + 48;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>,realityio::internal::TexturePrimToMaterialPrimMap::MaterialData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t realityio::PrimitiveDirtyPrimDescriptor::PrimitiveDirtyPrimDescriptor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = &unk_2859525B8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const>*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>(a1 + 8, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*>(a1 + 32, *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 56) = (*(*a1 + 48))(a1);
  return a1;
}

void sub_2475D9380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::PrimitiveDirtyPrimDescriptor::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!*(a7 + 24) || !*(a8 + 24) || !*(a9 + 24))
  {
    goto LABEL_26;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v38, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v38);
  v16 = a3 ? IsValid : 1;
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v34, a3, a2);
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v34);
    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v17 = v18 ^ 1;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
    if (v35)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35);
    }
  }

  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
  if (v39)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v39);
  }

  if ((v17 & 1) == 0)
  {
    v19 = a1;
    v20 = *(a1 + 16);
    v33 = v19;
    v21 = *(v19 + 8);
    if (v20 != v21)
    {
      while (1)
      {
        v23 = *v21;
        v22 = v21[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v44, a7);
        if (!v45)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v24 = (*(*v45 + 48))(v45, a2, v23);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v44);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v24)
        {
          break;
        }

        v21 += 2;
        if (v21 == v20)
        {
          goto LABEL_26;
        }
      }
    }

    v28 = *(v33 + 32);
    v29 = *(v33 + 40);
    if (v28 == v29)
    {
      v25 = 1;
    }

    else
    {
      do
      {
        v31 = *v28;
        v30 = v28[1];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v43, a8);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v42, a9);
        v25 = (*(*v31 + 24))(v31, a2, a3, this, v43, v42);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v42);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v43);
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        v28 += 2;
        if (v28 == v29)
        {
          v32 = 1;
        }

        else
        {
          v32 = v25;
        }
      }

      while ((v32 & 1) == 0);
    }
  }

  else
  {
LABEL_26:
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_2475D9664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::PrimitiveDirtyPrimDescriptor::_isEmpty(realityio::PrimitiveDirtyPrimDescriptor *this)
{
  v2 = *(this + 1);
  for (i = *(this + 2); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v4 = v2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v5 + 8);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if ((*(v5 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 4);
  v8 = *(this + 5);
  if (v7 == v8)
  {
    return 1;
  }

  do
  {
    v9 = *v7;
    v10 = v7[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 32))(v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v7 += 2;
    if (v7 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  while ((v12 & 1) != 0);
  return v11;
}

void sub_2475D97F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const void **realityio::PrimitiveDirtyPrimDescriptor::description@<X0>(uint64_t **this@<X0>, CFStringRef *a2@<X8>)
{
  v11 = 0;
  v12 = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  v4 = realityio::joinAsCFStringRef<realityio::PrimitiveDirtyPropertyDescriptor>(this + 4);
  v5 = this[4];
  v6 = this[5];
  v7 = v12;
  v8 = this[1];
  v9 = this[2];
  v11 = v4;
  *a2 = 0;
  *a2 = CFStringCreateWithFormat(0, 0, @"<PrimitiveDirtyPrimDescriptor: %p { dirtyPrimMetadataContainAnyOf: (%lu) [ %@ ], dirtyPropertiesContainAnyOf: (%lu) [ %@ ] } >", this, (v9 - v8) >> 4, v7, (v6 - v5) >> 4, v4);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v11);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v12);
}

void sub_2475D98C4(_Unwind_Exception *a1)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v2 - 32));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v2 - 24));
  _Unwind_Resume(a1);
}

CFStringRef realityio::joinAsCFStringRef<realityio::PrimitiveDirtyPropertyDescriptor>(uint64_t **a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 16))(&value);
      CFArrayAppendValue(Mutable, value);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  v8 = realityio::joinAsCFStringRef(Mutable, ", ", v2);
  CFRelease(Mutable);
  return v8;
}

void sub_2475D99DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *realityio::TypeNameDirtyPrimDescriptor::TypeNameDirtyPrimDescriptor(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = realityio::PrimitiveDirtyPrimDescriptor::PrimitiveDirtyPrimDescriptor(a1, a3, a4);
  *v6 = &unk_285952600;
  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](v6 + 8, a2);
  a1[56] = (*(*a1 + 48))(a1);
  return a1;
}

void sub_2475D9A98(_Unwind_Exception *a1)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(v2, *(v1 + 9));
  realityio::PrimitiveDirtyPrimDescriptor::~PrimitiveDirtyPrimDescriptor(v1);
  _Unwind_Resume(a1);
}

void realityio::TypeNameDirtyPrimDescriptor::~TypeNameDirtyPrimDescriptor(realityio::TypeNameDirtyPrimDescriptor *this)
{
  *this = &unk_285952600;
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(this + 64, *(this + 9));
  *this = &unk_2859525B8;
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  realityio::TypeNameDirtyPrimDescriptor::~TypeNameDirtyPrimDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

_BYTE *realityio::TypeNameDirtyPrimDescriptor::TypeNameDirtyPrimDescriptor(_BYTE *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v12[0] = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12[0] = v8;
    }
  }

  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](v11, v12, 1);
  realityio::TypeNameDirtyPrimDescriptor::TypeNameDirtyPrimDescriptor(a1, v11, a3, a4);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(v11, v11[1]);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a1[56] = (*(*a1 + 48))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void realityio::PrimitiveDirtyPrimDescriptor::~PrimitiveDirtyPrimDescriptor(realityio::PrimitiveDirtyPrimDescriptor *this)
{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x24C1A91B0](this, 0x10A1C402FEF67C7);
}

void *realityio::TypeNameDirtyPrimDescriptor::getExplicitPrimTypes@<X0>(void *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = this[8];
  v3 = this + 9;
  if (v2 != this + 9)
  {
    this = 0;
    do
    {
      if (this >= a2[2])
      {
        this = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(a2, v2 + 4);
      }

      else
      {
        v5 = v2[4];
        *this = v5;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *this &= 0xFFFFFFFFFFFFFFF8;
        }

        ++this;
      }

      a2[1] = this;
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return this;
}

void sub_2475D9E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::TypeNameDirtyPrimDescriptor::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v34, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v34);
  if (a3)
  {
    v17 = IsValid;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v30, a3, a2);
    v19 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v30);
    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v18 = v19 ^ 1;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
    if (v31)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31);
    }
  }

  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
  if (v35)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35);
  }

  if (v18)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_27;
  }

  v21 = *(a1 + 64);
  v22 = (a1 + 72);
  if (v21 != (a1 + 72))
  {
    while ((v21[4] ^ *a6) >= 8)
    {
      v23 = v21[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v21[2];
          v25 = *v24 == v21;
          v21 = v24;
        }

        while (!v25);
      }

      v21 = v24;
      if (v24 == v22)
      {
        goto LABEL_15;
      }
    }
  }

  if (v21 == v22)
  {
LABEL_15:
    v20 = 0;
  }

  else
  {
LABEL_27:
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v40, a7);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v39, a8);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v38, a9);
    v20 = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, a2, a3, this, v26, v27, v40, v39, v38);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v38);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v39);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v40);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2475DA054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v10 - 120);
  _Unwind_Resume(a1);
}

uint64_t realityio::TypeNameDirtyPrimDescriptor::_isEmpty(realityio::TypeNameDirtyPrimDescriptor *this)
{
  v1 = *(this + 8);
  if (v1 == (this + 72))
  {
LABEL_11:
    v8 = *(this + 56);
  }

  else
  {
    v2 = 1;
    while (1)
    {
      v3 = *(v1 + 4);
      v4 = v3 != 0;
      if (!v3)
      {
        break;
      }

      v5 = *(v1 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v1 + 2);
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v2 &= v4;
      v1 = v6;
      if (v6 == (this + 72))
      {
        if (v2)
        {
          goto LABEL_11;
        }

        break;
      }
    }

    v8 = 0;
  }

  return v8 & 1;
}

const void **realityio::TypeNameDirtyPrimDescriptor::description@<X0>(realityio::TypeNameDirtyPrimDescriptor *this@<X0>, CFStringRef *a2@<X8>)
{
  v16 = 0;
  v15 = 2;
  strcpy(v14, ", ");
  v16 = realityio::joinAsCFStringRef((this + 64), v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v14[0] = 0;
  v14[0] = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  v13 = 0;
  v4 = realityio::joinAsCFStringRef<realityio::PrimitiveDirtyPropertyDescriptor>(this + 4);
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = v14[0];
  v8 = *(this + 1);
  v9 = *(this + 2);
  v10 = v16;
  v11 = *(this + 10);
  *a2 = 0;
  *a2 = CFStringCreateWithFormat(0, 0, @"<TypeNameDirtyPrimDescriptor: %p { typeNameIsAnyOf: [ %lu ](%@), dirtyPrimMetadataContainAnyOf: (%lu) [ %@ ], dirtyPropertiesContainAnyOf: (%lu) [ %@ ] } >", this, v11, v10, (v9 - v8) >> 4, v7, (v6 - v5) >> 4, v4, v4);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v13);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v14);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v16);
}

void sub_2475DA250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v8);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v9 - 48));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v9 - 24));
  _Unwind_Resume(a1);
}

void sub_2475DA28C()
{
  if (*(v0 - 25) < 0)
  {
    operator delete(*(v0 - 48));
  }

  JUMPOUT(0x2475DA27CLL);
}

void realityio::PrimitiveDirtyPrimDescriptor::getExplicitPrimTypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::TfToken,std::__tree_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::TfToken,std::__tree_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

realityio::tokens::PhysicsBuilderTokens_StaticTokenType *realityio::tokens::PhysicsBuilderTokens_StaticTokenType::PhysicsBuilderTokens_StaticTokenType(realityio::tokens::PhysicsBuilderTokens_StaticTokenType *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "preliminary_isSceneGroundPlane", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v9 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v9, &v10, 1uLL);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *MEMORY[0x277D85DE8];
  return this;
}

void realityio::generatePhysicsMaterialsDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE530D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE530D8))
  {
    operator new();
  }

  v3 = unk_27EE530D0;
  *a1 = _MergedGlobals_23;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475DAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  v45 = *(v44 - 120);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  *(v44 - 248) = &a37;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 248));
  v46 = *(v44 - 136);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  *(v44 - 248) = &a29;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 248));
  v47 = 88;
  while (1)
  {
    v48 = *(v44 - 240 + v47);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    v47 -= 16;
    if (v47 == -8)
    {
      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a18);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a24);
      }

      if (a26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a26);
      }

      if (a28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a28);
      }

      *(v44 - 240) = &a32;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 240));
      *(v44 - 240) = &a40;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 240));
      MEMORY[0x24C1A91B0](a11, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE530D8);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generatePhysicsRigidBodyDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE530F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE530F0))
  {
    operator new();
  }

  v3 = *algn_27EE530E8;
  *a1 = qword_27EE530E0;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475DB320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v33 = *(v31 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 184) = &a23;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v34 = *(v31 - 136);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  *(v31 - 184) = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v35 = 24;
  while (1)
  {
    v36 = *(v31 - 176 + v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v35 -= 16;
    if (v35 == -8)
    {
      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      *(v31 - 176) = &a18;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      *(v31 - 176) = &a26;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      MEMORY[0x24C1A91B0](v30, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE530F0);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generatePhysicsColliderDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53108))
  {
    operator new();
  }

  v3 = unk_27EE53100;
  *a1 = qword_27EE530F8;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475DB96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v33 = *(v31 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 184) = &a23;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v34 = *(v31 - 136);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  *(v31 - 184) = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v35 = 24;
  while (1)
  {
    v36 = *(v31 - 176 + v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v35 -= 16;
    if (v35 == -8)
    {
      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      *(v31 - 176) = &a18;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      *(v31 - 176) = &a26;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      MEMORY[0x24C1A91B0](v30, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53108);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generatePhysicsSceneGroundPlaneDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53120))
  {
    operator new();
  }

  v3 = *algn_27EE53118;
  *a1 = qword_27EE53110;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2475DBFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v33 = *(v31 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 184) = &a23;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v34 = *(v31 - 136);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  *(v31 - 184) = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v35 = 24;
  while (1)
  {
    v36 = *(v31 - 176 + v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v35 -= 16;
    if (v35 == -8)
    {
      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      *(v31 - 176) = &a18;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      *(v31 - 176) = &a26;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      MEMORY[0x24C1A91B0](v30, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53120);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::isSceneGroundPlane(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(this);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (result)
  {
    v10 = 0;
    v4 = atomic_load(&realityio::tokens::PhysicsBuilderTokens);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::PhysicsBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::PhysicsBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(this, v4, v9);
    if (*pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v9))
    {
      goto LABEL_6;
    }

    v5 = atomic_load(&realityio::tokens::PhysicsBuilderTokens);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::PhysicsBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::PhysicsBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(v8, this, v5);
    v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v8);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v8);
    if (v6)
    {
LABEL_6:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
      result = 1;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475DC36C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::getUsdPhysicsAttributeDoubleValue(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, double *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    goto LABEL_28;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v12, this, a2);
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v12) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v17, this, a3);
    LODWORD(v12) = v17;
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
    }

    v13 = v18;
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v14, &v19);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v15, &v20);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v16 = v21;
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
    if (v18)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v18);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v12))
  {
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    v8 = v18;
    if (v18)
    {
      v9 = v18 & 0xFFFFFFFFFFFFFFF8;
      if (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
      {
        goto LABEL_12;
      }

      if ((v18 & 4) != 0)
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v17, MEMORY[0x277D827A8]))
        {
LABEL_12:
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
        }

        v8 = v18;
        if (!v18)
        {
          goto LABEL_23;
        }

        v9 = v18 & 0xFFFFFFFFFFFFFFF8;
      }

      if (*(v9 + 16) == 10 || (v8 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v17, MEMORY[0x277D827B0]))
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
      }
    }

LABEL_23:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v17);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v14);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
  }

LABEL_28:
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2475DC5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va1);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType::~AaplUsdPhysicsTokensType(pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType *this)
{
  v16 = (this + 120);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v16);
  v2 = *(this + 14);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 13);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 12);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 11);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 10);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 9);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 7);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 6);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 5);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 4);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 3);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 2);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 1);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t RIOBuilderPropertyDeltaGetTypeID()
{
  if (RIOBuilderPropertyDeltaGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderPropertyDeltaGetTypeID::onceToken, &__block_literal_global_13);
  }

  return RIOBuilderPropertyDeltaGetTypeID::typeID;
}

void __RIOBuilderPropertyDeltaGetTypeID_block_invoke()
{
  if (!RIOBuilderPropertyDeltaGetTypeID::typeID)
  {
    RIOBuilderPropertyDeltaGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

__CFArray *RIOBuilderPropertyDeltaCopyDirtyMetadata(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  for (i = *(a1 + 40); i; i = *i)
  {
    v5 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(i + 2);
    CFArrayAppendValue(Mutable, v5);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v5);
  }

  return Mutable;
}

void sub_2475DCA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t _RIOBuilderPropertyDeltaCFFinalize(void *a1)
{
  result = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table((a1 + 3));
  v3 = a1[2];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

BOOL realityio::replication::read(realityio *a1, uint64_t a2, std::string *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  __n = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &__n, 1uLL);
  if (result)
  {
    if (__n <= 0x7A120)
    {
      std::string::resize(a3, __n, 0);
      if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = a3->__r_.__value_.__r.__words[0];
      }

      v11 = std::istream::read();
      if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
      {
        result = 1;
        goto LABEL_12;
      }

      v12 = *(realityio::logObjects(v11) + 40);
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v7 = "Failed to read";
        v8 = v12;
        v9 = 2;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *(realityio::logObjects(result) + 40);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 134217984;
        v16 = 500000;
        v7 = "String count exceeded maximum of %zu";
        v8 = v6;
        v9 = 12;
LABEL_10:
        _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
        result = 0;
      }
    }
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL realityio::replication::read(realityio *a1, uint64_t a2, uint64_t *a3)
{
  memset(&__p, 0, sizeof(__p));
  v4 = realityio::replication::read(a1, a2, &__p);
  if (v4)
  {
    MEMORY[0x24C1A5E00](&v7, &__p);
    v5 = *a3;
    *a3 = v7;
    v7 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_2475DCD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::read(realityio *a1, uint64_t a2, uint64_t a3)
{
  memset(&v11, 0, sizeof(v11));
  v4 = realityio::replication::read(a1, a2, &v11);
  if (v4)
  {
    MEMORY[0x24C1A4E40](__p, &v11);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *__p;
    *(a3 + 16) = v8;
    HIBYTE(v8) = 0;
    LOBYTE(__p[0]) = 0;
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
      v5 = SHIBYTE(v8);
      *(a3 + 24) = v9;
      *(a3 + 40) = v10;
      HIBYTE(v10) = 0;
      LOBYTE(v9) = 0;
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a3 + 24) = v9;
      *(a3 + 40) = v10;
    }
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v4;
}

{
  memset(&__p, 0, sizeof(__p));
  v4 = realityio::replication::read(a1, a2, &__p);
  if (v4)
  {
    MEMORY[0x24C1A5D70](&v6, &__p);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 4, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

{
  memset(&v8, 0, sizeof(v8));
  if (realityio::replication::read(a1, a2, &v8))
  {
    MEMORY[0x24C1A4E40](&v9, &v8);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v9;
    }

    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v12;
    *(&v12.__r_.__value_.__s + 23) = 0;
    v12.__r_.__value_.__s.__data_[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    if (realityio::replication::read(a1, v6, &v12))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 24, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 28, v12.__r_.__value_.__r.__words + 1);
      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v9, 0.0, 1.0);
      v5 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v9, 1uLL);
      if (v5)
      {
        *(a3 + 32) = *&v9.__r_.__value_.__l.__data_;
      }
    }

    else
    {
      v5 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  }

  else
  {
    v5 = 0;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_2475DCE2C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::details::readMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(realityio *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v14, 1uLL);
  if (result)
  {
    if (v14)
    {
      v6 = 0;
      while (1)
      {
        memset(&__p, 0, sizeof(__p));
        if (!realityio::replication::read(a1, v5, &__p))
        {
          break;
        }

        v16 = 0;
        if ((realityio::replication::read(a1, a2, &v15) & 1) == 0)
        {
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v15);
          break;
        }

        v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]();
        v8 = v7;
        if (v7 != &v15)
        {
          if (v16)
          {
            pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v17, v7);
            v9 = v16;
            v10 = ~v16;
            v8[1] = v16;
            if ((v10 & 3) != 0)
            {
              (*((v9 & 0xFFFFFFFFFFFFFFF8) + 24))(&v15, v8);
            }

            else
            {
              *v8 = v15;
            }

            if (v18)
            {
              (*(v18 + 32))(v17);
            }
          }

          else
          {
            v11 = v7[1];
            if (v11 && (v7[1] & 3) != 3)
            {
              (*((v11 & 0xFFFFFFFFFFFFFFF8) + 32))(v7);
            }

            v8[1] = 0;
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v15);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v14 <= ++v6)
        {
          goto LABEL_20;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      result = 0;
    }

    else
    {
LABEL_20:
      result = 1;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475DD0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2475DD280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::replication::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v34 = 0;
  IsImpl = realityio::replication::read(a1, a2, &v33);
  if (IsImpl)
  {
    v5 = v34;
    if (v34)
    {
      v6 = v34 & 0xFFFFFFFFFFFFFFF8;
      if (*((v34 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
      {
        goto LABEL_4;
      }

      if ((v34 & 4) != 0)
      {
        v5 = v34;
        if (IsImpl)
        {
LABEL_4:
          if ((v5 & 4) != 0)
          {
            (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v33);
          }

          pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue();
          if (&__p == a3)
          {
            goto LABEL_63;
          }

          if (v24)
          {
            pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v26, a3);
            v7 = v24;
            v8 = ~v24;
            *(a3 + 8) = v24;
            if ((v8 & 3) != 0)
            {
              (*((v7 & 0xFFFFFFFFFFFFFFF8) + 40))(&__p, a3);
            }

            else
            {
              *a3 = __p;
            }

            v24 = 0;
            if (!v27)
            {
              goto LABEL_63;
            }

            goto LABEL_67;
          }

          v12 = *(a3 + 8);
          if (!v12 || (*(a3 + 8) & 3) == 3)
          {
LABEL_62:
            *(a3 + 8) = 0;
LABEL_63:
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
            v16 = 1;
            goto LABEL_64;
          }

LABEL_61:
          (*((v12 & 0xFFFFFFFFFFFFFFF8) + 32))(a3);
          goto LABEL_62;
        }

        if (!v34)
        {
          goto LABEL_47;
        }

        v6 = v34 & 0xFFFFFFFFFFFFFFF8;
      }

      if (!strcmp((*(*v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12VtDictionaryE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
LABEL_17:
        if ((v5 & 4) != 0)
        {
          v9 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v33);
        }

        else
        {
          v9 = v33;
        }

        pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(&__p, v9);
        if (&__p == a3)
        {
          goto LABEL_63;
        }

        if (!v24)
        {
          v12 = *(a3 + 8);
          if (!v12 || (*(a3 + 8) & 3) == 3)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v26, a3);
        v10 = v24;
        v11 = ~v24;
        *(a3 + 8) = v24;
        if ((v11 & 3) != 0)
        {
          (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&__p, a3);
        }

        else
        {
          *a3 = __p;
        }

        v24 = 0;
        if (!v27)
        {
          goto LABEL_63;
        }

        goto LABEL_67;
      }

      if ((v5 & 4) == 0)
      {
        goto LABEL_37;
      }

      v5 = v34;
      if (IsImpl)
      {
        goto LABEL_17;
      }

      if (v34)
      {
        v6 = v34 & 0xFFFFFFFFFFFFFFF8;
LABEL_37:
        IsImpl = strcmp((*(*v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_20SdfUnregisteredValueEEE" & 0x7FFFFFFFFFFFFFFFLL));
        if (!IsImpl)
        {
LABEL_41:
          if ((v5 & 4) != 0)
          {
            (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v33);
          }

          pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue();
          if (&__p == a3)
          {
            goto LABEL_63;
          }

          if (!v24)
          {
            v12 = *(a3 + 8);
            if (!v12 || (*(a3 + 8) & 3) == 3)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v26, a3);
          v13 = v24;
          v14 = ~v24;
          *(a3 + 8) = v24;
          if ((v14 & 3) != 0)
          {
            (*((v13 & 0xFFFFFFFFFFFFFFF8) + 40))(&__p, a3);
          }

          else
          {
            *a3 = __p;
          }

          v24 = 0;
          if (!v27)
          {
            goto LABEL_63;
          }

LABEL_67:
          (*(v27 + 32))(&v26);
          goto LABEL_63;
        }

        if ((v5 & 4) != 0)
        {
          if (IsImpl)
          {
            v5 = v34;
            goto LABEL_41;
          }
        }
      }
    }

LABEL_47:
    v15 = *(realityio::logObjects(IsImpl) + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v26, &v33);
      v17 = v28;
      v18 = v26;
      pxrInternal__aapl__pxrReserved__::TfStringify<pxrInternal__aapl__pxrReserved__::VtValue>();
      v19 = &v26;
      if (v17 < 0)
      {
        v19 = v18;
      }

      if (v25 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315394;
      v30 = v19;
      v31 = 2080;
      v32 = p_p;
      _os_log_error_impl(&dword_247485000, v15, OS_LOG_TYPE_ERROR, "Deserialized SdfUnregisteredValue contains invalid type '%s' = '%s'; expected string, VtDictionary or SdfUnregisteredValueListOp", buf, 0x16u);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v26);
      }
    }
  }

  v16 = 0;
LABEL_64:
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v33);
  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_2475DD710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::read(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<unsigned char,0>(a1);
  result = 0;
  if (v2)
  {
    v4 = realityio::replication::details::readBuffer<unsigned short,0>(a1);
    v5 = *(realityio::logObjects(v4) + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Deserialized VtValue has invalid value type '%u'", buf, 8u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(v8, v10);
          bzero(New, v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<BOOL,0>(a1))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(v8, v10);
          bzero(New, v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned char,0>(a1))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<int>>(realityio *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v2)
  {
    if (v8 <= 0x7A120)
    {
      v9 = 0;
      *&buf = &v9;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::resize<pxrInternal__aapl__pxrReserved__::VtArray<int>::assign(unsigned long,int const&)::_Filler>(v6, v8, &buf);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<int,0>(a1, v7, v8))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
      }
    }

    else
    {
      v3 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(v8, v10);
          bzero(New, 4 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<int,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(v8, v10);
          bzero(New, 8 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(v8, v10);
          bzero(New, 8 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(v8, v10);
          bzero(New, 2 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::pxr_half::half,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<float>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v9, 1uLL);
  if (v2)
  {
    if (v9 <= 0x7A120)
    {
      v10 = 0;
      *&buf = &v10;
      pxrInternal__aapl__pxrReserved__::VtArray<float>::resize<pxrInternal__aapl__pxrReserved__::VtArray<float>::resize(unsigned long,float const&)::{lambda(float *,float *)#1}>(v7, v9, &buf, v3);
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v7);
      if (realityio::replication::details::readBuffer<int,0>(a1, v8, v9))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v7);
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<double>>(realityio *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v4 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v4)
  {
    if (v10 <= 0x7A120)
    {
      v11 = 0;
      *&buf = &v11;
      pxrInternal__aapl__pxrReserved__::VtArray<double>::resize<pxrInternal__aapl__pxrReserved__::VtArray<double>::resize(unsigned long,double const&)::{lambda(double *,double *)#1}>(v8, v10, &buf);
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<double,0>(a1, a2, v9, v10))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v4) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(realityio *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v17, 1uLL);
  if (v2)
  {
    v3 = v17;
    if (v17 <= 0x7A120)
    {
      *(&buf + 3) = 0;
      LODWORD(buf) = 0;
      if (*&v15[0] != v17)
      {
        if (v17)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(v15, v17);
          bzero(New, 24 * v3 - (24 * v3 - 24) % 0x18u);
          if (New != v16)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(v15);
            v16 = New;
          }

          *&v15[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::clear(v15);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(v15);
      v7 = v17;
      if (!v17)
      {
        goto LABEL_19;
      }

      v8 = v16;
      if (realityio::replication::read(a1, v6, v16))
      {
        v10 = 0;
        v11 = v8 + 1;
        do
        {
          if (v7 - 1 == v10)
          {
            goto LABEL_19;
          }

          v12 = realityio::replication::read(a1, v9, v11++);
          ++v10;
        }

        while (v12);
        if (v10 >= v7)
        {
LABEL_19:
          *(&buf + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
        }
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(v15);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(realityio *a1)
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v17, 1uLL);
  if (v2)
  {
    v3 = v17;
    if (v17 <= 0x7A120)
    {
      if (v17 != *&v15[0])
      {
        if (v17)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(v15, v17);
          bzero(New, 8 * v3);
          if (New != v16)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v15);
            v16 = New;
          }

          *&v15[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::clear(v15);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v15);
      v7 = v17;
      if (!v17)
      {
        goto LABEL_19;
      }

      v8 = v16;
      if (realityio::replication::read(a1, v6, v16))
      {
        v10 = 0;
        v11 = v8 + 1;
        do
        {
          if (v7 - 1 == v10)
          {
            goto LABEL_19;
          }

          v12 = realityio::replication::read(a1, v9, v11++);
          ++v10;
        }

        while (v12);
        if (v10 >= v7)
        {
LABEL_19:
          *&v19[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
        }
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v19 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v15);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(realityio *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v4 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v17, 1uLL);
  if (v4)
  {
    v5 = v17;
    if (v17 <= 0x7A120)
    {
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(buf);
      if (*&v15[0] != v5)
      {
        if (v5)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(v15, v5);
          std::__uninitialized_fill[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath>(New, &New[2 * v5], buf);
          if (New != v16)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(v15);
            v16 = New;
          }

          *&v15[0] = v5;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::clear(v15);
        }
      }

      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(v15);
      v8 = v17;
      if (!v17)
      {
        goto LABEL_23;
      }

      v9 = v16;
      if (realityio::replication::read(a1, a2, v16))
      {
        v10 = 0;
        v11 = v9 + 48;
        do
        {
          if (v8 - 1 == v10)
          {
            goto LABEL_23;
          }

          v12 = realityio::replication::read(a1, a2, v11);
          v11 += 48;
          ++v10;
        }

        while (v12);
        if (v10 >= v8)
        {
LABEL_23:
          *&buf[8] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
        }
      }
    }

    else
    {
      v6 = *(realityio::logObjects(v4) + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(v15);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(v8, v10);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, v9, v10))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(realityio *a1)
{
  *&v11[5] = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v2)
  {
    if (v8 <= 0x7A120)
    {
      v9 = buf;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfQuatf const&)::_Filler>(v6, v8, &v9);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v7, v8))
      {
        *&v11[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v3 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v11 = 500000;
        _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(v8, v10);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      memset(buf, 0, sizeof(buf));
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(v8, v10);
          bzero(New, 16 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v9, v10))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(v8, v10);
          bzero(New, 8 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(v8, v10);
          bzero(New, 4 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<int,0>(a1, v9, v10))
      {
        *&v12[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(v8, v10);
          bzero(New, 8 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v2)
  {
    if (v8 <= 0x7A120)
    {
      buf = 0uLL;
      v11 = 0;
      p_buf = &buf;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfVec3d*,pxrInternal__aapl__pxrReserved__::GfVec3d*)#1}>(v6, v8, &p_buf);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3d,0>(a1, v7, v8))
      {
        *(&buf + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v3 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(realityio *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v2)
  {
    if (v8 <= 0x7A120)
    {
      DWORD2(buf) = 0;
      p_buf = &buf;
      *&buf = 0;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3f const&)::_Filler>(v6, v8, &p_buf);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v7, v8))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v3 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v2)
  {
    if (v8 <= 0x7A120)
    {
      v10 = 0;
      v9 = 0;
      *&buf = &v9;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3h const&)::_Filler>(v6, v8, &buf);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3h,0>(a1, v7, v8))
      {
        *(&buf + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v3 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      DWORD2(buf) = 0;
      *&buf = 0;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(v8, v10);
          bzero(New, 12 * v3 - (12 * v3 - 12) % 0xCu);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v9, v10))
      {
        *(&buf + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(realityio *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      *buf = 0u;
      v12 = 0u;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(v8, v10);
          bzero(New, 32 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, v9, v10))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      memset(buf, 0, sizeof(buf));
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(v8, v10);
          bzero(New, 16 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v9, v10))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(realityio *a1)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(v8, v10);
          bzero(New, 8 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(realityio *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      memset(buf, 0, sizeof(buf));
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(v8, v10);
          bzero(New, 16 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v9, v10))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(realityio *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      *buf = 0u;
      v12 = 0u;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(v8, v10);
          bzero(New, 32 * v3);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, v9, v10))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(realityio *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v2)
  {
    v3 = v10;
    if (v10 <= 0x7A120)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      *buf = 0u;
      v12 = 0u;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(v8, v10);
          bzero(New, 72 * v3 - (72 * v3 - 72) % 0x48u);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v3;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix3d,0>(a1, v9, v10))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(realityio *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v2)
  {
    if (v8 <= 0x7A120)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      *buf = 0u;
      v11 = 0u;
      v9 = buf;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfMatrix4d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*)#1}>(v6, v8, &v9);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>(a1, v7, v8))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }
    }

    else
    {
      v3 = *(realityio::logObjects(v2) + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL realityio::replication::readContents<BOOL>(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = realityio::replication::details::readBuffer<BOOL,0>(a1);
  if (v4)
  {
    v8 = &unk_285946C7B;
    v7[0] = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a3, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL realityio::replication::readContents<unsigned char>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned char,0>(a1);
  if (v3)
  {
    v7 = &unk_28594AF13;
    v6[0] = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<int>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v8 = &unk_28594ADA3;
    v7 = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<unsigned int>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v8 = &unk_28594AFCB;
    v7 = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<long long>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v7[0] = v6;
    v7[1] = &unk_28594AE5B;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<unsigned long long>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v7[0] = v6;
    v7[1] = &unk_28594B083;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::pxr_half::half>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::pxr_half::half,0>(a1, &v6, 1);
  if (v3)
  {
    v8 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::pxr_half::half>(void)::ti + 3;
    v7 = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<float>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v8 = &unk_2859471F3;
    v7 = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<double>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v4 = realityio::replication::details::readBuffer<double,0>(a1, a2, &v7, 1uLL);
  if (v4)
  {
    v8[1] = &unk_285946DC3;
    v8[0] = v7;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a3, v8);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL realityio::replication::readContents<std::string>(realityio *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v2 = realityio::replication::read(a1, a2, &__p);
  if (v2)
  {
    v6 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::string>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_PlaceCopy();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2475E2FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::TfToken>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v4 = realityio::replication::read(a1, a2, &v9);
  if (!v4)
  {
    v5 = v9;
    if ((v9 & 7) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    goto LABEL_9;
  }

  v5 = v9;
  v10[0] = v9;
  v10[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
  v6 = v9 & 7;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10[0] = v5 & 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::Swap(a3, v10);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v10);
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(realityio *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v7);
  v4 = realityio::replication::read(a1, a2, v7);
  if (v4)
  {
    v11 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_PlaceCopy();
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2475E31B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuatd>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>(void)::ti;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuatf>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>(void)::ti;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuath>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v7[0] = v6;
    v7[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuath>(void)::ti + 1;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2d>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2f>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v7[0] = v6;
    v7[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2f>(void)::ti + 3;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2h>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v8 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2h>(void)::ti + 3;
    v7 = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2i>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v7[0] = v6;
    v7[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2i>(void)::ti + 3;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3d>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3d,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3f>(realityio *a1)
{
  *&v4[7] = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v4, 1uLL);
  if (v1)
  {
    *&v4[5] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3h>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3h,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v10 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>(void)::ti + 3;
    v8 = v6;
    v9 = v7;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v8);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3i>(realityio *a1)
{
  *&v4[7] = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v4, 1uLL);
  if (v1)
  {
    *&v4[5] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4d>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4f>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4h>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v6, 1uLL);
  if (v3)
  {
    v7[0] = v6;
    v7[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4h>(void)::ti + 3;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4i>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix3d,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(realityio *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>(a1, &v4, 1uLL);
  if (v1)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(void)::ti + 2;
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtDictionary>(realityio *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, a2);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>::_PlaceCopy();
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2475E42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E4A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E4DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E50FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

void sub_2475E5458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

void sub_2475E57AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

void sub_2475E5B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(realityio *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v2 = realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2, v5);
  if (v2)
  {
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_PlaceCopy();
  }

  v6[0] = v5;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2475E5C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(realityio *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v2 = realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2, v5);
  if (v2)
  {
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::_PlaceCopy();
  }

  v6[0] = v5;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2475E5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    v10 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(void)::ti + 3;
    *buf = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  result = v5 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfPermission>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    v10 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPermission>(void)::ti + 3;
    *buf = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  result = v5 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfVariability>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    v10 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfVariability>(void)::ti + 3;
    *buf = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  result = v5 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t realityio::replication::readContents<std::map<std::string,std::string>>(realityio *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v11[0] = 0;
  if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v11, 1uLL))
  {
    if (!v11[0])
    {
LABEL_11:
      __p.__r_.__value_.__l.__size_ = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::map<std::string,std::string>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>::_PlaceCopy();
    }

    v3 = 0;
    while (1)
    {
      memset(&__p, 0, sizeof(__p));
      if (!realityio::replication::read(a1, v2, &__p))
      {
        break;
      }

      memset(&__str, 0, sizeof(__str));
      if (!realityio::replication::read(a1, v4, &__str))
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        break;
      }

      v11[2] = &__p;
      v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v8, &__p.__r_.__value_.__l.__data_);
      std::string::operator=((v5 + 56), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v11[0] <= ++v3)
      {
        goto LABEL_11;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v8, v9[0]);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfPayload>(realityio *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v7, 0.0, 1.0);
  MEMORY[0x24C1A4C40](__p, &v12, &v8, v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  v4 = realityio::replication::read(a1, a2, __p);
  if (v4)
  {
    v13 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPayload>::_PlaceCopy();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2475E637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::SdfPayload::~SdfPayload(va);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<std::vector<double>>(realityio *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v4 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v9, 1uLL);
  if (!v4)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (v9 > 0x7A120)
  {
    v5 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v11 = 500000;
      _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v9);
  }

  v6 = realityio::replication::details::readBuffer<double,0>(a1, a2, 0, 0);
  if (v6)
  {
    *&v11[4] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<double>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<double>>::_PlaceCopy();
  }

LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2475E6558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(realityio *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v7, 1uLL);
  if (!v2)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (v7 > 0x7A120)
  {
    v3 = *(realityio::logObjects(v2) + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v9 = 500000;
      _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(v7);
  }

  v4 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, 0, 0);
  if (v4)
  {
    *&v9[4] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::_PlaceCopy();
  }

LABEL_6:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2475E670C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::readContents<std::vector<std::string>>(realityio *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(&v5, 0, sizeof(v5));
  v2 = realityio::replication::details::readVector<std::vector<std::string>>(a1, a2, &v5);
  if (v2)
  {
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<std::string>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<std::string>>::_PlaceCopy();
  }

  v6[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v6);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2475E67E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    v10 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(void)::ti + 3;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  result = v5 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v8);
  v4 = realityio::replication::read(a1, a2, v8);
  if (v4)
  {
    v7 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::_PlaceCopy();
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v8);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2475E69C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_2475E6CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E7060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    *buf = 0;
    v10 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(void)::ti + 1;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  result = v5 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtValue>(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v4 = realityio::replication::read(a1, a2, v8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v7, v8);
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a3, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v8);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2475E729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::details::readBuffer<unsigned long long,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 61)
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60)
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<unsigned char,0>(void *a1)
{
  v2 = std::istream::read();
  v3 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v3)
  {
    v4 = *(realityio::logObjects(v2) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Failed to read", v6, 2u);
    }
  }

  return v3 == 0;
}

BOOL realityio::replication::details::readBuffer<unsigned short,0>(void *a1)
{
  v2 = std::istream::read();
  v3 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v3)
  {
    v4 = *(realityio::logObjects(v2) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Failed to read", v6, 2u);
    }
  }

  return v3 == 0;
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Swap(pxrInternal__aapl__pxrReserved__::VtValue *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 1))
  {
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v16, &v14);
    v4 = *(this + 1);
    v5 = ~*(this + 2);
    v15 = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(this, &v14);
    }

    else
    {
      v14 = *this;
    }

    *(this + 1) = 0;
    if (v17)
    {
      (*(v17 + 32))(v16);
    }

    v6 = (a2 + 8);
    if (!*(a2 + 1))
    {
      v9 = *(this + 1);
      if (v9 && (*(this + 1) & 3) != 3)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 32))(this);
      }

      *(this + 1) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v6 = (a2 + 8);
    if (!*(a2 + 1))
    {
      goto LABEL_30;
    }

    v15 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v16, this);
  v7 = *v6;
  v8 = ~*v6;
  *(this + 1) = *v6;
  if ((v8 & 3) != 0)
  {
    (*((v7 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, this);
  }

  else
  {
    *this = *a2;
  }

  *v6 = 0;
  if (v17)
  {
    (*(v17 + 32))(v16);
  }

LABEL_19:
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v16, a2);
    v10 = v15;
    v11 = ~v15;
    *v6 = v15;
    if ((v11 & 3) != 0)
    {
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&v14, a2);
    }

    else
    {
      *a2 = v14;
    }

    v15 = 0;
    if (v17)
    {
      (*(v17 + 32))(v16);
    }
  }

  else
  {
    if (*v6 && (*v6 & 3) != 3)
    {
      (*((*v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    *v6 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v14);
LABEL_30:
  v12 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2475E77B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL realityio::replication::details::readBuffer<BOOL,0>(void *a1)
{
  v2 = std::istream::read();
  v3 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v3)
  {
    v4 = *(realityio::logObjects(v2) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Failed to read", v6, 2u);
    }
  }

  return v3 == 0;
}

BOOL realityio::replication::details::readBuffer<int,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::pxr_half::half,0>(realityio *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v5 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v7 = "Read size overflowed";
    v8 = buf;
    goto LABEL_7;
  }

  v4 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v5 = *(realityio::logObjects(v4) + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v7 = "Failed to read";
    v8 = &v9;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    return 0;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<double,0>(realityio *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 61)
  {
    v4 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v6 = "Read size overflowed";
    v7 = &v11;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    return 0;
  }

  v9 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v4 = *(realityio::logObjects(v9) + 40);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v6 = "Failed to read";
    v7 = &v10;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 59)
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3d,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (!is_mul_ok(a3, 0x18uLL))
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (!is_mul_ok(a3, 0xCuLL))
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3h,0>(realityio *a1, uint64_t a2, unint64_t a3)
{
  if (!is_mul_ok(a3, 6uLL))
  {
    v3 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v5 = "Read size overflowed";
    v6 = &v10;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return 0;
  }

  v8 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v3 = *(realityio::logObjects(v8) + 40);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v5 = "Failed to read";
    v6 = &v9;
    goto LABEL_7;
  }

  return 1;
}