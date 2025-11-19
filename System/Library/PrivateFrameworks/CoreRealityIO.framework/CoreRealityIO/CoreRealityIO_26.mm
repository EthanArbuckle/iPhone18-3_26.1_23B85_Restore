void sub_247637790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if ((a27 & 7) != 0)
  {
    atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  __p = &a29;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void realityio::mtlx::anonymous namespace::_ComputeNameMapping(RIO_MTLX *a1, uint64_t a2)
{
  *(a1 + 2) = 0;
  *(a1 + 1) = 0;
  *a1 = a1 + 8;
  v3 = RIO_MTLX::EMPTY_STRING(a1);
  RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(a2, v3, &v37);
  v5 = v37;
  v35 = v38;
  if (v37 == v38)
  {
    goto LABEL_73;
  }

  do
  {
    v6 = *v5;
    v7 = RIO_MTLX::Element::INHERIT_ATTRIBUTE(v4);
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v6 + 20, v7);
    if (!v4)
    {
      goto LABEL_69;
    }

    v8 = *v5;
    v9 = v5[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((atomic_load_explicit(&_MergedGlobals_34, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_34))
    {
      std::string::basic_string[abi:ne200100]<0>(&unk_27EE53278, "inherit");
      __cxa_guard_release(&_MergedGlobals_34);
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (v8 + 48);
    v11 = v8;
    v12 = v9;
    while (1)
    {
      v13 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v11 + 20, &unk_27EE53278);
      if (v13)
      {
        v14 = (v13 + 5);
      }

      else
      {
        v14 = RIO_MTLX::EMPTY_STRING(0);
      }

      v15 = *(v14 + 23);
      if (v15 < 0)
      {
        v15 = v14[1];
      }

      if (!v15)
      {
        break;
      }

      v16 = std::__shared_weak_count::lock(*(v11 + 31));
      v17 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*(v11 + 30) + 96), v14);
      if (!v17)
      {
        goto LABEL_32;
      }

      v11 = v17[5];
      v18 = v17[6];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        if (!v11)
        {
          v16 = v18;
LABEL_32:
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          break;
        }

        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v12)
        {
LABEL_19:
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      else
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        if (!v11)
        {
          break;
        }

        v18 = 0;
        if (v12)
        {
          goto LABEL_19;
        }
      }

      v19 = v11[71];
      if ((v19 & 0x8000000000000000) != 0)
      {
        v19 = *(v11 + 7);
      }

      size = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v10->__r_.__value_.__l.__size_;
      }

      v12 = 0;
      if (v19 < size)
      {
        v10 = (v11 + 48);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        v12 = v18;
      }
    }

    v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string const&>(a1, v8 + 6);
    if ((v22 & 1) == 0)
    {
      v23 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
      if ((v23 & 0x8000000000000000) != 0)
      {
        v23 = v10->__r_.__value_.__l.__size_;
      }

      v24 = *(v21 + 79);
      if ((v24 & 0x8000000000000000) != 0)
      {
        v24 = *(v21 + 64);
      }

      if (v23 < v24)
      {
        std::string::operator=((v21 + 56), v10);
      }
    }

    while (2)
    {
      v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v8 + 20, &unk_27EE53278);
      if (v4)
      {
        v25 = (v4 + 40);
      }

      else
      {
        v4 = RIO_MTLX::EMPTY_STRING(0);
        v25 = v4;
      }

      v26 = *(v25 + 23);
      if (v26 < 0)
      {
        v26 = *(v25 + 1);
      }

      if (v26)
      {
        v27 = std::__shared_weak_count::lock(*(v8 + 31));
        v28 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*(v8 + 30) + 96), v25);
        if (!v28)
        {
          goto LABEL_64;
        }

        v8 = v28[5];
        v29 = v28[6];
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          if (!v8)
          {
            v27 = v29;
LABEL_64:
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            break;
          }

          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v30 = v29;
          if (v9)
          {
LABEL_50:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }
        }

        else
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          if (!v8)
          {
            break;
          }

          v30 = 0;
          if (v9)
          {
            goto LABEL_50;
          }
        }

        v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string const&>(a1, v8 + 6);
        if ((v32 & 1) == 0)
        {
          v33 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
          if ((v33 & 0x8000000000000000) != 0)
          {
            v33 = v10->__r_.__value_.__l.__size_;
          }

          v34 = *(v31 + 79);
          if ((v34 & 0x8000000000000000) != 0)
          {
            v34 = *(v31 + 64);
          }

          if (v33 < v34)
          {
            std::string::operator=((v31 + 56), v10);
          }
        }

        v9 = 0;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          v9 = v30;
        }

        continue;
      }

      break;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

LABEL_69:
    v5 += 2;
  }

  while (v5 != v35);
LABEL_73:
  v39 = &v37;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v39);
}

void sub_247637BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  __cxa_guard_abort(&_MergedGlobals_34);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  a16 = &a13;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a12, *(a12 + 8));
  _Unwind_Resume(a1);
}

void realityio::mtlx::_Tf_RegistryFunctionBar0(realityio::mtlx *this, pxrInternal__aapl__pxrReserved__::TfType *a2, void *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::Tf_CastToParent<realityio::mtlx::UsdMtlxDiscoveryPlugin,pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin>;
  v4.__vftable = MEMORY[0x277D86670];
  operator new();
}

void sub_247637D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::UsdMtlxDiscoveryPlugin::~UsdMtlxDiscoveryPlugin(realityio::mtlx::UsdMtlxDiscoveryPlugin *this)
{
  realityio::mtlx::UsdMtlxDiscoveryPlugin::~UsdMtlxDiscoveryPlugin(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285956518;
  v2 = (this + 24);
  v3 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::NdrDiscoveryPlugin::~NdrDiscoveryPlugin(this);
}

uint64_t std::allocator<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::NdrVersion,std::string,pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken&,pxrInternal__aapl__pxrReserved__::TfToken&,std::string const&,std::string const&>(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __int128 *a8, __int128 *a9)
{
  *__n = 0u;
  v32 = 0u;
  v33 = 1065353216;
  *a1 = a2;
  if ((a2 & 7) != 0 && (atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *a3;
  *(a1 + 16) = *(a3 + 2);
  *(a1 + 8) = v14;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v15 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v15;
  }

  v16 = *a5;
  *(a1 + 48) = *a5;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *a6;
  *(a1 + 56) = *a6;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *a7;
  *(a1 + 64) = *a7;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 64) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a8, *(a8 + 1));
  }

  else
  {
    v19 = *a8;
    *(a1 + 88) = *(a8 + 2);
    *(a1 + 72) = v19;
  }

  if (*(a9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a9, *(a9 + 1));
  }

  else
  {
    v20 = *a9;
    *(a1 + 112) = *(a9 + 2);
    *(a1 + 96) = v20;
  }

  *(a1 + 120) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 176) = v33;
  std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>>>::__rehash<true>(a1 + 144, __n[1]);
  for (i = v32; i; i = *i)
  {
    v22 = i[2];
    v23 = bswap64(0x9E3779B97F4A7C55 * (v22 & 0xFFFFFFFFFFFFFFF8));
    v24 = *(a1 + 152);
    if (!*&v24)
    {
      goto LABEL_39;
    }

    v25 = vcnt_s8(v24);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v23;
      if (v23 >= *&v24)
      {
        v26 = v23 % *&v24;
      }
    }

    else
    {
      v26 = v23 & (*&v24 - 1);
    }

    v27 = *(*(a1 + 144) + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_39:
      operator new();
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v23)
      {
        break;
      }

      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= *&v24)
        {
          v29 %= *&v24;
        }
      }

      else
      {
        v29 &= *&v24 - 1;
      }

      if (v29 != v26)
      {
        goto LABEL_39;
      }

LABEL_38:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_39;
      }
    }

    if ((v28[2] ^ v22) >= 8)
    {
      goto LABEL_38;
    }
  }

  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  return std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>>>::~__hash_table(__n);
}

void sub_247638204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 95) < 0)
  {
    operator delete(*(v3 + 72));
  }

  v5 = *(v3 + 64);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(v3 + 56);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(v3 + 48);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if ((*v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult::~NdrNodeDiscoveryResult(pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult *this)
{
  v2 = *(this + 26);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::string>>>::~__hash_table(this + 144);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v3 = *(this + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 7);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult::~NdrNodeDiscoveryResult((i - 216));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::mtlx::anonymous namespace::anonymous namespace::_tokens_PrivateStaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::mtlx::anonymous namespace::anonymous namespace::_tokens_PrivateStaticTokenType>>::_TryToCreateData()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

void sub_247638680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A91B0](v9, v10);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string const&>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_2476387D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 55) < 0)
  {
    operator delete(*(v9 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::NdrDiscoveryPluginFactory<realityio::mtlx::UsdMtlxDiscoveryPlugin>::~NdrDiscoveryPluginFactory(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::vector<pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::NdrNodeDiscoveryResult::~NdrNodeDiscoveryResult((v4 - 216));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t RIOBuilderDirtyPropertyDescriptorGetTypeID()
{
  if (RIOBuilderDirtyPropertyDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyPropertyDescriptorGetTypeID::onceToken, &__block_literal_global_21);
  }

  return RIOBuilderDirtyPropertyDescriptorGetTypeID::typeID;
}

void __RIOBuilderDirtyPropertyDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderDirtyPropertyDescriptorGetTypeID::typeID)
  {
    RIOBuilderDirtyPropertyDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

void RIOBuilderDirtyPropertyDescriptorCreateWithMetadataDescriptors(const __CFArray *a1)
{
  memset(v7, 0, sizeof(v7));
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v5 = ValueAtIndex[3];
      *&v6 = ValueAtIndex[2];
      *(&v6 + 1) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::push_back[abi:ne200100](v7, &v6);
      if (*(&v6 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
      }
    }
  }

  operator new();
}

void sub_247638BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a10 = &a12;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

__CFArray *anonymous namespace::dirtyMetadataDescriptorsFromPropertyDescriptor(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const>*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>(&v12, *(v3 + 8), *(v3 + 16), (*(v3 + 16) - *(v3 + 8)) >> 4);
      v5 = v12;
      for (i = v13; v5 != i; v5 += 16)
      {
        v7 = *(v5 + 8);
        v10 = *v5;
        v11 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = RIOBuilderDirtyMetadataDescriptorCreate<std::shared_ptr<realityio::DirtyMetadataDescriptor const> &>(&v10);
        CFArrayAppendValue(Mutable, v9);
        realityio::WrappedCFRef<RIOBuilderDirtyMetadataDescriptor *>::~WrappedCFRef(&v9);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      v10 = &v12;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v10);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return Mutable;
}

void sub_247638D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors(uint64_t a1, CFArrayRef theArray)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v10 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v3 & 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    v10 = 0;
  }

  memset(v9, 0, sizeof(v9));
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v7 = ValueAtIndex[3];
      *&v8 = ValueAtIndex[2];
      *(&v8 + 1) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::push_back[abi:ne200100](v9, &v8);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }
  }

  operator new();
}

void sub_247638EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a9 = &a11;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderAnyValueDirtyPropertyDescriptorCopyName(uint64_t a1)
{
  if (!a1)
  {
    if (RIOPxrTfTokenEmpty::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    }

    return RIOPxrTfTokenEmpty::tokenRef;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    if (RIOPxrTfTokenEmpty::onceToken == -1)
    {
LABEL_16:
      v6 = RIOPxrTfTokenEmpty::tokenRef;
      if (v3)
      {
        goto LABEL_17;
      }

      return v6;
    }

LABEL_19:
    dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    goto LABEL_16;
  }

  v4 = **v2;
  if (!v5)
  {
    if (RIOPxrTfTokenEmpty::onceToken == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v5 + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v6;
}

void sub_24763908C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIOBuilderAnyValueNamespacedDirtyPropertyDescriptorCreateWithNamespacePrefixAndMetadataDescriptors(__CFString *a1, CFArrayRef theArray)
{
  *(&v10.__r_.__value_.__s + 23) = 0;
  v10.__r_.__value_.__s.__data_[0] = 0;
  if (a1)
  {
    realityio::CFStringCopyUTF8String(a1, &v8);
    if (v8 == 1)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v10 = v7;
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      else
      {
        v10 = __p;
      }
    }
  }

  v8 = 0;
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v6 = ValueAtIndex[3];
      v7.__r_.__value_.__r.__words[0] = ValueAtIndex[2];
      v7.__r_.__value_.__l.__size_ = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::push_back[abi:ne200100](&v8, &v7);
      if (v7.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7.__r_.__value_.__l.__size_);
      }
    }
  }

  operator new();
}

__CFString *RIOBuilderAnyValueNamespacedDirtyPropertyDescriptorCopyNamespacePrefix(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 + 40;
    if (v5[63] < 0)
    {
      v6 = *v6;
    }

    v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    v7 = &stru_28595E8A0;
    if (v3)
    {
      goto LABEL_13;
    }
  }

  return v7;
}

void sub_247639398(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderDirtyPropertyDescriptorCopyType(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else if (!v2)
  {
    return v2;
  }

  v3 = *v2;
  v4 = **v2;
  {
    v2 = 2;
    if (!v1)
    {
      return v2;
    }

    goto LABEL_14;
  }

  v5 = *v3;
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (v1)
  {
LABEL_14:
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

void _RIOBuilderDirtyPropertyDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<realityio::PrimitiveDirtyPropertyDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285956638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnyValueDirtyPropertyDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285956688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnyValueNamedspacedDirtyPropertyDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859566D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::RigComponentAction::operator()@<X0>(void *a1@<X2>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a2 + 1) = 0;
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v12, a2);
    v4 = a1[1];
    v5 = ~*(a1 + 2);
    *(a2 + 1) = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a1, a2);
    }

    else
    {
      *a2 = *a1;
    }

    if (v13)
    {
      (*(v13 + 32))(&v12);
    }
  }

  v11[0] = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(a2))
  {
    RERigComponentGetComponentType();
    v7 = REComponentCreateByClass();
    v12 = v7;
    if (v7)
    {
      RERetain();
    }

    v8 = v11[0];
    if (v11[0] != v7)
    {
      v11[0] = v7;
      v12 = v8;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v12);
    v11[2] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

  v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a2);
  realityio::WrappedRERef<REAsset *>::operator=(v11, v6);
  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476398FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::MeshComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v98 = *MEMORY[0x277D85DE8];
  a5[1] = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v5 = *a3;
  if (a3[1] == *a3)
  {
    v9 = 0;
    goto LABEL_147;
  }

  v7 = a3;
  v8 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v9 = 0;
  v10 = "N9realityio17MaterialAssetPairE";
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v96, (*a4 + 16 * v8));
    v11 = (v5 + 8 * v8);
    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v11);
    MEMORY[0x24C1A5DE0](buf, "__meshAsset");
    v13 = *NameToken;
    v14 = *buf;
    if ((*buf ^ v13) <= 7)
    {
      v15 = v97;
      if (v97)
      {
        v16 = strcmp((*(*(v97 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL));
        if ((v15 & 4) != 0)
        {
          if (v16)
          {
            v14 = *buf;
          }
        }
      }
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v17 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v11);
    MEMORY[0x24C1A5DE0](buf, "__meshAsset");
    v18 = *v17;
    v19 = *buf;
    if ((*buf ^ v18) > 7)
    {
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_38;
    }

    v20 = v97;
    if (!v97)
    {
LABEL_14:
      IsImpl = 0;
      goto LABEL_19;
    }

    if (!strcmp((*(*(v97 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio26MeshAssetWithMaterialArrayE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      IsImpl = 1;
    }

    else
    {
      if ((v20 & 4) == 0)
      {
        goto LABEL_14;
      }

      v19 = *buf;
    }

LABEL_19:
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (IsImpl)
    {
      if ((v97 & 4) != 0)
      {
        v22 = (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(&v96);
      }

      else
      {
        v22 = v96;
      }

      v23 = v22[1];
      *buf = *v22;
      *&buf[8] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = v10;
      *&buf[16] = 0uLL;
      v95 = 0;
      std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(&buf[16], v22[2], v22[3], (v22[3] - v22[2]) >> 3);
      v25 = *&buf[8];
      v81 = *buf;
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v27 = *&buf[24];
      v26 = *&buf[16];
      v28 = *&buf[24] - *&buf[16];
      v29 = v85;
      if ((v87 - v85) < *&buf[24] - *&buf[16])
      {
        v30 = v28 >> 3;
        std::vector<realityio::WrappedRERef<REAsset *>>::__vdeallocate(&v85);
        if (!(v30 >> 61))
        {
          v31 = (v87 - v85) >> 2;
          if (v31 <= v30)
          {
            v31 = v30;
          }

          if ((v87 - v85) >= 0x7FFFFFFFFFFFFFF8)
          {
            v32 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v31;
          }

          std::vector<realityio::WrappedRERef<REAsset *>>::__vallocate[abi:ne200100](&v85, v32);
        }

        std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
      }

      v38 = v86;
      v39 = v86 - v85;
      if (v86 - v85 >= v28)
      {
        if (*&buf[16] != *&buf[24])
        {
          do
          {
            realityio::WrappedRERef<REAsset *>::operator=(v29++, v26++);
          }

          while (v26 != v27);
          v38 = v86;
        }

        while (v38 != v29)
        {
          realityio::WrappedRERef<REAsset *>::~WrappedRERef(--v38);
        }
      }

      else
      {
        if (v86 != v85)
        {
          v76 = v25;
          v40 = v86 - v85;
          v41 = *&buf[16];
          do
          {
            realityio::WrappedRERef<REAsset *>::operator=(v29++, v41++);
            v40 -= 8;
          }

          while (v40);
          v38 = v86;
          v25 = v76;
        }

        v29 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<realityio::WrappedRERef<REAsset *>>,realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(&v85, (v26 + v39), v27, v38);
      }

      v86 = v29;
      v92 = &buf[16];
      std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v92);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v9 = v25;
      v10 = v24;
      v7 = a3;
      goto LABEL_118;
    }

LABEL_38:
    v33 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v11);
    MEMORY[0x24C1A5DE0](buf, "__materialAssets");
    v34 = *v33;
    v35 = *buf;
    if ((*buf ^ v34) <= 7)
    {
      v36 = v97;
      if (v97)
      {
        if (!strcmp((*(*(v97 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_7VtValueEEE" & 0x7FFFFFFFFFFFFFFFLL)))
        {
          v37 = 1;
        }

        else
        {
          if ((v36 & 4) == 0)
          {
            goto LABEL_42;
          }

          v35 = *buf;
        }

LABEL_53:
        if ((v35 & 7) != 0)
        {
          atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v37)
        {
          if ((v97 & 4) != 0)
          {
            v42 = (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(&v96);
          }

          else
          {
            v42 = v96;
          }

          v43 = *(v42 + 16);
          *buf = *v42;
          *&buf[16] = v43;
          v44 = *(v42 + 32);
          v95 = v44;
          if (v44)
          {
            v45 = (v44 - 16);
            if (*&buf[24])
            {
              v45 = *&buf[24];
            }

            atomic_fetch_add_explicit(v45, 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DetachIfNotUnique(buf);
          v46 = v95;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DetachIfNotUnique(buf);
          v47 = (v95 + 16 * *buf);
          while (2)
          {
            if (v46 == v47)
            {
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DecRef(buf);
              goto LABEL_118;
            }

            pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v92, v46);
            v48 = v93;
            if (v93)
            {
              if (!strcmp((*(*(v93 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (v10 & 0x7FFFFFFFFFFFFFFFLL)))
              {
                goto LABEL_69;
              }

              {
                v48 = v93;
LABEL_69:
                if ((v48 & 4) != 0)
                {
                  v49 = (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(&v92);
                }

                else
                {
                  v49 = v92;
                }

                v50 = v89;
                if (v89 >= v90)
                {
                  v51 = std::vector<realityio::MaterialAssetPair>::__emplace_back_slow_path<realityio::MaterialAssetPair const&>(&v88, v49);
                }

                else
                {
                  std::allocator_traits<std::allocator<realityio::MaterialAssetPair>>::construct[abi:ne200100]<realityio::MaterialAssetPair,realityio::MaterialAssetPair const&,0>(&v88, v89, v49);
                  v51 = v50 + 2;
                }

                v89 = v51;
              }
            }

            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v92);
            v46 = (v46 + 16);
            continue;
          }
        }

        goto LABEL_77;
      }

LABEL_42:
      v37 = 0;
      goto LABEL_53;
    }

    if ((buf[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

LABEL_77:
    v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v11);
    MEMORY[0x24C1A5DE0](buf, "__entity");
    if ((*buf ^ *v52) > 7)
    {
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v53 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(&v96);
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v53)
      {
        v54 = v97;
        if ((v97 & 4) != 0)
        {
          goto LABEL_82;
        }

LABEL_90:
        v55 = v96;
        goto LABEL_91;
      }
    }

    v56 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v11);
    MEMORY[0x24C1A5DE0](buf, "__entityPreMesh");
    if ((*buf ^ *v56) > 7)
    {
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v57 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(&v96);
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v57)
      {
        v54 = v97;
        if ((v97 & 4) == 0)
        {
          goto LABEL_90;
        }

LABEL_82:
        v55 = (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(&v96);
LABEL_91:
        v80 = *v55;
        goto LABEL_118;
      }
    }

    v58 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v11);
    MEMORY[0x24C1A5DE0](buf, "__materialPBAComponent");
    if ((*buf ^ *v58) > 7)
    {
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v59 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(&v96);
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v59)
      {
        if ((v97 & 4) != 0)
        {
          v60 = (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(&v96);
        }

        else
        {
          v60 = v96;
        }

        v78 = *v60;
        goto LABEL_118;
      }
    }

    v61 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v11);
    v62 = MEMORY[0x24C1A5DE0](buf, "__materialPBAComponent");
    v63 = *v61;
    v64 = *buf;
    if ((buf[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v64 ^ v63) >= 8)
    {
      v65 = *(realityio::logObjects(v62) + 24);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a1);
        v67 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v11);
        *buf = 136315394;
        *&buf[4] = Text;
        *&buf[12] = 2080;
        *&buf[14] = v67;
        _os_log_impl(&dword_247485000, v65, OS_LOG_TYPE_DEFAULT, "%s MakeMeshComponentAction::Unused input %s\n", buf, 0x16u);
      }
    }

LABEL_118:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v96);
    ++v8;
    v5 = *v7;
  }

  while (v8 < (v7[1] - *v7) >> 3);
  if (v81)
  {
    v92 = 0;
    if (a5 != a2)
    {
      if (a2[1])
      {
        pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(buf, a5);
        v68 = a2[1];
        v69 = ~*(a2 + 2);
        a5[1] = v68;
        if ((v69 & 3) != 0)
        {
          (*((v68 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a5);
        }

        else
        {
          *a5 = *a2;
        }

        if (*&buf[8])
        {
          (*(*&buf[8] + 32))(buf);
        }
      }

      else
      {
        v70 = a5[1];
        if (v70 && (a5[1] & 3) != 3)
        {
          (*((v70 & 0xFFFFFFFFFFFFFFF8) + 32))(a5);
        }

        a5[1] = 0;
      }
    }

    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(a2))
    {
      v71 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a2);
      realityio::WrappedRERef<REAsset *>::operator=(&v92, v71);
      if (v92)
      {
        if (REComponentGetEntity() != v80)
        {
          REEntityAddExistingComponent();
        }

        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v82 = 0uLL;
        v83 = 0;
        std::vector<realityio::MaterialAssetPair>::__init_with_size[abi:ne200100]<realityio::MaterialAssetPair*,realityio::MaterialAssetPair*>(&v82, v88, v89, (v89 - v88) >> 4);
        v84[0] = v78;
        v84[1] = 0uLL;
        std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(v84 + 8, v85, v86, v86 - v85);
        *&buf[24] = 0;
        operator new();
      }
    }

    REMeshComponentGetComponentType();
    v96 = REComponentCreateByClass();
    if (v96)
    {
      RERetain();
    }

    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(buf, a5);
    a5[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

LABEL_147:
  *buf = &v85;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v88;
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v91);
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24763A484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, pxrInternal__aapl__pxrReserved__::VtValue *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, char a35)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v36 - 120));
  *(v36 - 120) = &a32;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100]((v36 - 120));
  a32 = &a35;
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v36 - 184));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(a11);
  _Unwind_Resume(a1);
}

uint64_t realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::$_0::~$_0(uint64_t a1)
{
  v4 = (a1 + 64);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 32);
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::vector<realityio::MaterialAssetPair>::__init_with_size[abi:ne200100]<realityio::MaterialAssetPair*,realityio::MaterialAssetPair*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__function::__func<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_285956798;
  v4 = (a1 + 72);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 40);
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

{
  *a1 = &unk_285956798;
  v4 = (a1 + 72);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 40);
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return MEMORY[0x24C1A91B0](a1, 0xA1C40E599B628);
}

void sub_24763A9E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = v2[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285956798;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::vector<realityio::MaterialAssetPair>::__init_with_size[abi:ne200100]<realityio::MaterialAssetPair*,realityio::MaterialAssetPair*>(a2 + 40, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 4);
  v5 = *(a1 + 64);
  *(a2 + 72) = 0;
  *(a2 + 64) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(a2 + 72, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 3);
}

void sub_24763AAD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = *(v2 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 40);
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__function::__func<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 40);
  std::vector<realityio::MaterialAssetPair>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  v3 = *(a1[3] + 8);
  REMeshComponentSetMesh();
  v4 = a1[2];
  if (REMeshComponentGetMaterialCount())
  {
    v5 = a1[2];
    REMeshComponentRemoveAllMaterials();
  }

  v6 = a1[9];
  if (a1[10] == v6)
  {
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v11 = *(a1[3] + 8);
    ModelCount = REMeshAssetGetModelCount();
    if (ModelCount)
    {
      for (i = 0; i != ModelCount; ++i)
      {
        ModelPartCount = REMeshAssetGetModelPartCount();
        if (ModelPartCount)
        {
          for (j = 0; j != ModelPartCount; ++j)
          {
            if (REMeshAssetGetModelPartMaterial() && (a1[6] - a1[5]) >> 4)
            {
              ModelPartBufferCount = REMeshAssetGetModelPartBufferCount();
              if (!ModelPartBufferCount)
              {
                goto LABEL_20;
              }

              v17 = 0;
              v18 = 1;
              do
              {
                ModelPartBufferName = REMeshAssetGetModelPartBufferName();
                if (ModelPartBufferName && !strcmp("osdSubdivisionScheme", ModelPartBufferName))
                {
                  break;
                }

                v18 = ++v17 < ModelPartBufferCount;
              }

              while (ModelPartBufferCount != v17);
              if (v18)
              {
                v35 = *(a1[5] + 8);
                std::__tree<std::__value_type<unsigned int,REAsset *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,REAsset *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,REAsset *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,REAsset *>>(&v37, 0);
              }

              else
              {
LABEL_20:
                v36 = *a1[5];
                std::__tree<std::__value_type<unsigned int,REAsset *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,REAsset *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,REAsset *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,REAsset *>>(&v37, 0);
              }
            }
          }
        }
      }
    }

    v20 = a1[5];
    if (a1[6] != v20)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = v38[0];
        if (!v38[0])
        {
          goto LABEL_33;
        }

        v24 = v38;
        do
        {
          v25 = *(v23 + 8);
          v26 = v25 >= v22;
          v27 = v25 < v22;
          if (v26)
          {
            v24 = v23;
          }

          v23 = v23[v27];
        }

        while (v23);
        if (v24 != v38 && v22 >= *(v24 + 8))
        {
          v28 = (v24 + 5);
        }

        else
        {
LABEL_33:
          v28 = (v20 + 16 * v21);
        }

        v29 = a1[2];
        v30 = *v28;
        REMeshComponentAddMaterial();
        v20 = a1[5];
        v21 = ++v22;
      }

      while (v22 < ((a1[6] - v20) >> 4));
    }

    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v38[0]);
  }

  else
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = a1[2];
      v10 = *(v6 + 8 * v7);
      REMeshComponentAddMaterial();
      v7 = v8;
      v6 = a1[9];
      ++v8;
    }

    while (v7 < (a1[10] - v6) >> 3);
  }

  v31 = a1[2];
  RENetworkMarkComponentDirty();
  result = a1[8];
  if (result)
  {
    Entity = REComponentGetEntity();
    result = a1[1];
    if (Entity != result)
    {
      v34 = a1[8];
      return REEntityAddExistingComponent();
    }
  }

  return result;
}

uint64_t std::__function::__func<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0,std::allocator<realityio::MeshComponentAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<unsigned int,REAsset *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,REAsset *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,REAsset *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,REAsset *>>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t realityio::visitPrimHierarchy(uint64_t result, uint64_t a2, void *a3)
{
  if (*(a2 + 24))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::UsdPrimRange(v19, result, a3);
    v4 = v19[0];
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, &v20);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12 + 1, v21);
    v5 = v21[7];
    *&v15 = v4;
    *(&v15 + 1) = v19;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, &v12);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16 + 1, &v12 + 1);
    v17 = v5;
    v18 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    while (1)
    {
      *&v12 = v19[1];
      *(&v12 + 1) = v19;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      LODWORD(v14) = 0;
      WORD2(v14) = 0;
      if (v15 == v12)
      {
        v6 = 1;
        if (v16 == v13 && !v17 && !v18)
        {
          v6 = HIBYTE(v18);
        }
      }

      else
      {
        v6 = 1;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
      if (!v6)
      {
        break;
      }

      v8 = v15;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v10, &v16 + 1);
      v10[1] = v17;
      v11 = v18;
      pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v15);
      v22 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v12, &v22, &v9);
      if (v22)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      v7 = *(a2 + 24);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v7 + 48))(v7, &v12);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
      if (*(&v12 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v12 + 1));
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  }

  return result;
}

void sub_24763B1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::~iterator(&a9);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::~iterator(&a17);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::~UsdPrimRange(&a21);
  _Unwind_Resume(a1);
}

uint64_t realityio::findOriginalSourceAttribute@<X0>(realityio *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *this;
  v5 = *(this + 1);
  *(a2 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 16), this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 20), this + 5);
  v6 = *(this + 3);
  *(a2 + 24) = v6;
  v7 = (a2 + 24);
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v7 &= 0xFFFFFFFFFFFFFFF8;
  }

  LODWORD(v24) = 1;
  v25 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v28 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v32 = 0;
  v29 = MEMORY[0x277D867A8] + 16;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  v23 = 0;
  v22 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  do
  {
    if (!pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v24);
    v8 = std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__count_unique<pxrInternal__aapl__pxrReserved__::SdfPath>(&v20, &v24);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
    if (v8)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v24);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>(&v20, &v24);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
    if (v22 == 2)
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetOutput(&v15, &v29, &v23);
      LODWORD(v24) = v15;
      v25 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v26, &v17);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v27, &v18);
      v28 = v19;
      if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v28 &= 0xFFFFFFFFFFFFFFF8;
      }

      *a2 = v24;
      v12 = *(a2 + 8);
      if (v12)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
      }

      *(a2 + 8) = v25;
      v25 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 16, &v26);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 20, &v27);
      if (&v24 == a2)
      {
        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v7 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v7 = v28;
        v28 = 0;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
      if (v25)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
      }

      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (v22 == 1)
      {
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v24, &v29, &v23);
        *a2 = v24;
        v9 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 48), 1uLL, memory_order_relaxed);
        }

        v10 = *(a2 + 8);
        if (v10)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
        }

        *(a2 + 8) = v9;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 16, &v26);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 20, &v27);
        pxrInternal__aapl__pxrReserved__::TfToken::operator=((a2 + 24), &v28);
        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
        v11 = v25;
        if (!v25)
        {
          continue;
        }

LABEL_50:
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
        continue;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v15, &v30, &v31);
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v24, &v15, &v23);
      *a2 = v24;
      v13 = *(a2 + 8);
      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
      }

      *(a2 + 8) = v25;
      v25 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 16, &v26);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 20, &v27);
      if (&v24 == a2)
      {
        if ((v28 & 7) != 0)
        {
          atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v7 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v7 = v28;
        v28 = 0;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
      if (v25)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
      }

      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    v11 = v16;
    if (v16)
    {
      goto LABEL_50;
    }
  }

  while ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) != 0);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v20, v21[0]);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return MEMORY[0x24C1A5890](&v29);
}

void sub_24763B714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(v11);
  _Unwind_Resume(a1);
}

const void **realityio::assignGamutFromToken(const void **result, _BYTE *a2, void *a3)
{
  *a2 = 0;
  if (*a3)
  {
    v3 = result;
    v4 = *a3 & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      EmptyString = v4 + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    }

    if (*(EmptyString + 23) >= 0)
    {
      v6 = EmptyString;
    }

    else
    {
      v6 = *EmptyString;
    }

    v14 = CFStringCreateWithCString(0, v6, 0x8000100u);
    v7 = MEMORY[0x24C1A4490]();
    if (v7)
    {
      v8 = CGColorSpaceCreateWithName(v7);
      v13 = v8;
      if (v8)
      {
        v9 = vcvt_hight_f64_f32(*v3);
        *components = vcvtq_f64_f32(*v3->f32);
        v12 = v9;
        v10 = CGColorCreate(v8, components);
        RECGColorToColorGamut();
        realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(&v10);
      }

      realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef(&v13);
    }

    return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v14);
  }

  return result;
}

void sub_24763B87C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(va);
  realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef((v2 - 32));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v2 - 24));
  _Unwind_Resume(a1);
}

const void **realityio::assignGamutFromAttribute(const void **a1, _BYTE *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  *a2 = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&v7, this);
    result = realityio::assignGamutFromToken(a1, a2, &v7);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

double realityio::getColorAttributeAndGamut@<D0>(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>)
{
  v14 = a3;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  v5 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1, &TypeName);
    if (TypeName == 1)
    {
      v7.n128_u64[0] = v11.n128_u64[0];
      v7.n128_u64[1] = __PAIR64__(1.0, v11.n128_u32[2]);
LABEL_11:
      v14 = v7;
      goto LABEL_14;
    }

LABEL_12:
    if (v13 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  if (!atomic_load(v5))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1, &TypeName);
    if (TypeName == 1)
    {
      v7 = v11;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_14:
  LOBYTE(TypeName) = 0;
  realityio::assignGamutFromAttribute(&v14, &TypeName, a1);
  result = v14.n128_f64[0];
  *a2 = v14;
  a2[1].n128_u8[0] = TypeName;
  return result;
}

uint64_t realityio::getAttributeColor4FAndGamut@<X0>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X0>, __n128 *a3@<X8>, __n128 a4@<Q0>)
{
  v16 = *MEMORY[0x277D85DE8];
  *a3 = a4;
  a3[1].n128_u8[0] = 0;
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v10, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v10))
    {
      realityio::getColorAttributeAndGamut(&v10, &v14, a4);
      *a3 = v14;
      a3[1].n128_u8[0] = v15;
    }

    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    result = v11;
    if (v11)
    {
      result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24763BB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::hasInputsLoop(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v7 = 0;
  v4 = MEMORY[0x277D867A8] + 16;
  if (v5 && (*(v5 + 57) & 8) == 0 && (*(MEMORY[0x277D867A8] + 48))(&v4))
  {
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    memset(v13, 0, sizeof(v13));
    std::deque<pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>::push_back(v13, &v4);
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v8, &v5, &v6);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v8, &v12);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
    }

    std::deque<pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>::~deque[abi:ne200100](v13);
  }

  else
  {
    hasCyclesHelper = 0;
  }

  MEMORY[0x24C1A5890](&v4);
  return hasCyclesHelper;
}

void sub_24763BD0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va1);
  std::deque<pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>::~deque[abi:ne200100](va3);
  MEMORY[0x24C1A5890](va);
  _Unwind_Resume(a1);
}

void *std::deque<pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 16 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x80;
    v9 = v7 - 128;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v13);
    }

    a1[4] = v9;
    v18 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<realityio::mtlx::NeoShadeConnectable *>::emplace_back<realityio::mtlx::NeoShadeConnectable *&>(a1, &v18);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 != v4)
  {
    v14 = a1[5] + a1[4];
    v15 = *&v4[(v14 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v14 & 0x7F);
  }

  result = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  *result = MEMORY[0x277D86728] + 16;
  v17 = *(a2 + 24);
  result[3] = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[3] &= 0xFFFFFFFFFFFFFFF8;
  }

  *result = MEMORY[0x277D867A8] + 16;
  ++a1[5];
  return result;
}

void sub_24763C230(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::anonymous namespace::CycleState>::operator[](uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 36;
}

{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 36;
}

uint64_t realityio::anonymous namespace::_hasCyclesHelper(uint64_t a1, void *a2)
{
  v4 = a2[5] + a2[4] - 1;
  v5 = *(a2[1] + ((v4 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v4 & 0x7F);
  v6 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v43 = MEMORY[0x277D86728] + 16;
  v7 = *(v5 + 24);
  v46 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = MEMORY[0x277D867A8] + 16;
  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInputs(v6);
  if (v41 == v42)
  {
    LOBYTE(v24) = 0;
LABEL_36:
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v36, &v44, &v45);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v36, &v32);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
    if (v37)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
    }

    v14 = a2[5] + a2[4] - 1;
    (**(*(a2[1] + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F)))();
    v16 = a2[1];
    v15 = a2[2];
    v17 = v15 - v16;
    v18 = v15 == v16;
    v20 = a2[4];
    v19 = a2[5];
    a2[5] = v19 - 1;
    v21 = 16 * v17 - 1;
    if (v18)
    {
      v21 = 0;
    }

    if ((v21 - (v19 + v20) - 255) <= 0xFFFFFFFFFFFFFEFFLL)
    {
      operator delete(*(v15 - 8));
      a2[2] -= 8;
    }

    v22 = v24;
  }

  else
  {
    v24 = 0;
    v8 = v41 + 16;
    while (1)
    {
      v9 = v8 - 16;
      LODWORD(v36) = *(v8 - 16);
      v10 = *(v8 - 8);
      v37 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38, v8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39, (v8 + 4));
      v11 = *(v8 + 8);
      v40 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v40 &= 0xFFFFFFFFFFFFFFF8;
      }

      v28 = 1;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v31 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v35 = 0;
      v32 = MEMORY[0x277D867A8] + 16;
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
      if (v29)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
      }

      v27 = 0;
      v26 = 0;
      if (!pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
      {
        goto LABEL_25;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v28, &v33, &v34);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v28, &v25);
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
      if (v29)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
      }

      {
        std::deque<pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>::push_back(a2, &v32);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
      if (v12 == 1)
      {
        v13 = 0;
      }

      else
      {
LABEL_25:
        v13 = 1;
      }

      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5890](&v32);
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
      if (v37)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      v8 += 32;
      if (v9 + 32 == v42)
      {
        goto LABEL_36;
      }
    }

    v22 = 1;
  }

  v36 = &v41;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v36);
  MEMORY[0x24C1A5890](&v43);
  return v22 & 1;
}

void sub_24763C7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a17);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a21);
  a21 = &a25;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&a21);
  MEMORY[0x24C1A5890](v25 - 120);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::anonymous namespace::CycleState>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::anonymous namespace::CycleState>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::anonymous namespace::CycleState>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::anonymous namespace::CycleState>,void,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::deque<pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>::~deque[abi:ne200100](uint64_t a1)
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
    v6 = &v3[v5 >> 7];
    v7 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (*v6 + 32 * (v5 & 0x7F) != v7)
    {
      v8 = (*v6 + 32 * (v5 & 0x7F));
      do
      {
        v9 = *v8;
        v8 += 4;
        (*v9)();
        if (v8 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
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
    v13 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 128;
  }

  *(a1 + 32) = v13;
LABEL_18:
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

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::anonymous namespace::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::anonymous namespace::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::anonymous namespace::CycleState>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__count_unique<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, (v2 + 28)) & 1) == 0)
      {
        if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v2 + 28), a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t RIOBuilderOutputDescriptorGetTypeID()
{
  if (RIOBuilderOutputDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderOutputDescriptorGetTypeID::onceToken, &__block_literal_global_22);
  }

  return RIOBuilderOutputDescriptorGetTypeID::typeID;
}

void __RIOBuilderOutputDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderOutputDescriptorGetTypeID::typeID)
  {
    RIOBuilderOutputDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOBuilderOutputDescriptorCreateWithNameAndOutputIdentifierAndOptionality(__CFString *a1, uint64_t a2)
{
  realityio::CFStringCopyUTF8String(a1, v6);
  if (v6[0] == 1)
  {
    v3 = SHIBYTE(v7.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v7;
    }

    if (a2)
    {
      operator new();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v3 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_24763CE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

CFStringRef RIOBuilderOutputDescriptorCopyOutputName(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v1[23] < 0)
  {
    v1 = *v1;
  }

  v3 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v3;
}

void sub_24763CEF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderOutputDescriptorCopyOutputIdentifier(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>((v1 + 24));
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v3;
}

void sub_24763CF5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL RIOBuilderOutputDescriptorCopyOptionality(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v2 + 32);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  return v3 != 1;
}

void _RIOBuilderOutputDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t RIOPxrUsdStageGetTypeID()
{
  if (RIOPxrUsdStageGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdStageGetTypeID::onceToken, &__block_literal_global_23);
  }

  return RIOPxrUsdStageGetTypeID::typeID;
}

void __RIOPxrUsdStageGetTypeID_block_invoke()
{
  if (!RIOPxrUsdStageGetTypeID::typeID)
  {
    RIOPxrUsdStageGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

void RIOPxrUsdStageCreate(uint64_t *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v6, v1);
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v6);
  Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v2);
  v4 = *(Identifier + 23);
  v5 = *Identifier;
  operator new();
}

void sub_24763D1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::RIOPxrUsdStageData::~RIOPxrUsdStageData(va);
  _Unwind_Resume(a1);
}

void RIOPxrUsdStageCreateWithFilePathWithErrorReporting(uint64_t a1)
{
  realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v2, 2072, a1);
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(&__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(&__p);
  operator new();
}

void sub_24763D430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a10);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard((v17 - 48));
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCreateWithFileURLWithErrorReporting(void *a1)
{
  v1 = a1;
  v2 = [v1 isFileURL];
  if (v2)
  {
    RIOPxrUsdStageCreateWithFilePathWithErrorReporting([v1 fileSystemRepresentation]);
  }

  v3 = *(realityio::logObjects(v2) + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_247485000, v3, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports loading content from file URLs", v5, 2u);
  }

  return 0;
}

void RIOPxrUsdStageCreateInMemory()
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v1);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v1);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  RIOPxrUsdStageCreate(&v0);
}

void sub_24763D610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

void RIOPxrUsdStageCreateWithInMemoryDataBufferWithErrorReporting(const char *a1, CFDataRef theData)
{
  v20 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(theData);
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(&v17);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(&v17);
  BytePtr = CFDataGetBytePtr(theData);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "memory://", 9);
  v7 = strlen(a1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, a1, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "?address=", 9);
  v10 = MEMORY[0x24C1A8EC0](v9, BytePtr);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "&size=", 6);
  MEMORY[0x24C1A8F30](v11, Length);
  v12 = std::stringbuf::str();
  v13 = *(realityio::logObjects(v12) + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    p_p = &__p;
    if (v16 < 0)
    {
      p_p = __p;
    }

    buf = 136315138;
    *buf_4 = p_p;
    _os_log_impl(&dword_247485000, v13, OS_LOG_TYPE_INFO, "assetPath: %s", &buf, 0xCu);
  }

  operator new();
}

void sub_24763DA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a10);
  (*(*v17 + 8))(v17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x24C1A9110](a1 + 112);
  return a1;
}

uint64_t RIOPxrUsdStageCreateWithInMemoryBuffer(const char *a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(&v23);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(&v23);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "memory://", 9);
  v7 = strlen(a1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, a1, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "?address=", 9);
  v10 = MEMORY[0x24C1A8EC0](v9, a2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "&size=", 6);
  MEMORY[0x24C1A8F30](v11, a3);
  v12 = std::stringbuf::str();
  v13 = *(realityio::logObjects(v12) + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    p_p = &__p;
    if (v22 < 0)
    {
      p_p = __p;
    }

    *buf = 136315138;
    *&buf[4] = p_p;
    _os_log_impl(&dword_247485000, v13, OS_LOG_TYPE_INFO, "assetPath: %s", buf, 0xCu);
  }

  *buf = 0;
  pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  *buf = *v20;
  *v20 = 0;
  v15 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v20);
  if (*buf)
  {
    v19 = *buf;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v19);
    RIOPxrUsdStageCreate(&v19);
  }

  v16 = *(realityio::logObjects(v15) + 32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_error_impl(&dword_247485000, v16, OS_LOG_TYPE_ERROR, "Unable to create stage from in-memory buffer.", v20, 2u);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(buf);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v23 = *MEMORY[0x277D82828];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x277D82828] + 24);
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  MEMORY[0x24C1A9110](&v27);
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24763DF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr((v19 - 80));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void RIOPxrUsdStageCreateWithString(char *a1)
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v7);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v5, v2);
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v5);
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  pxrInternal__aapl__pxrReserved__::SdfLayer::ImportFromString();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v6;
  if (v6)
  {
    if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = v7;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v4);
  RIOPxrUsdStageCreate(&v4);
}

void sub_24763E0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a9);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a12);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageIsSupportedFile(char *a1)
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__p);
  std::string::basic_string[abi:ne200100]<0>(__p, a1);
  IsSupportedFile = pxrInternal__aapl__pxrReserved__::UsdStage::IsSupportedFile();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return IsSupportedFile;
}

void sub_24763E1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdStageCopyPseudoRootPrim(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v4, v1);
  v8 = 1;
  v2 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v4, &v8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  return v2;
}

void sub_24763E274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageHasPrimAtPrimPath(uint64_t a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v6, v3, (a2 + 16));
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return IsValid;
}

uint64_t RIOPxrUsdStageCreateOverridePrim(uint64_t *a1, uint64_t a2)
{
  v4 = realityio::UsdLayerMutexTracker::instance(a1);
  v6 = a1[2];
  v5 = a1 + 2;
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
    v9 = EditTarget[1];
    v15 = *EditTarget;
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v15);
  v11 = v16;
  if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v11 + 8))(v11);
  }

  std::recursive_mutex::lock(v10);
  v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
  pxrInternal__aapl__pxrReserved__::UsdStage::OverridePrim(&v15, v12, (a2 + 16));
  v19 = 1;
  v13 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v15, &v19);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  std::recursive_mutex::unlock(v10);
  return v13;
}

void sub_24763E464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  std::recursive_mutex::unlock(v2);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCreatePrimIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v24, v6, (a2 + 16));
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v24);
  if (!IsValid)
  {
    goto LABEL_8;
  }

  v9 = *(a3 + 16);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v25;
  if (!v25 || (*(v25 + 57) & 8) != 0)
  {
    IsValid = pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v25, v8);
    v9 = *(a3 + 16);
  }

  if ((**(v10 + 3) ^ v9) > 7)
  {
LABEL_8:
    v12 = realityio::UsdLayerMutexTracker::instance(IsValid);
    if (*(a1 + 16))
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v13);
      v15 = EditTarget[1];
      v20 = *EditTarget;
      v21 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v16 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v12, &v20);
    v17 = v21;
    if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v17 + 8))(v17);
    }

    std::recursive_mutex::lock(v16);
    v18 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v20, v18, (a2 + 16), (a3 + 16));
    v28 = 1;
    v11 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v20, &v28);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
    if (v21)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v21);
    }

    std::recursive_mutex::unlock(v16);
  }

  else
  {
LABEL_7:
    LODWORD(v20) = 1;
    v11 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v24, &v20);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  if (v25)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
  }

  return v11;
}

void sub_24763E6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  std::recursive_mutex::unlock(v2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va1);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCreateClassPrimIfNeeded(uint64_t *a1, uint64_t a2)
{
  v4 = realityio::UsdLayerMutexTracker::instance(a1);
  v6 = a1[2];
  v5 = a1 + 2;
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
    v9 = EditTarget[1];
    v15 = *EditTarget;
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v15);
  v11 = v16;
  if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v11 + 8))(v11);
  }

  std::recursive_mutex::lock(v10);
  v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateClassPrim(&v15, v12, (a2 + 16));
  v19 = 1;
  v13 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v15, &v19);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

  std::recursive_mutex::unlock(v10);
  return v13;
}

void sub_24763E880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  std::recursive_mutex::unlock(v2);
  _Unwind_Resume(a1);
}

void RIOPxrUsdStageSetDefaultPrim(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetDefaultPrim(v12, (a2 + 24));
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_24763E9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrUsdStageCopyDefaultPrim(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetDefaultPrim(&v4, v1);
  v8 = 1;
  v2 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v4, &v8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  return v2;
}

void sub_24763EAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageClearDefaultPrim(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));

  return MEMORY[0x282206BC8](v1);
}

__CFArray *RIOPxrUsdStageCopyUsedLayers(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetUsedLayers(v1);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  for (i = v5[0]; i != v5[1]; i += 2)
  {
    v6 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(i);
    CFArrayAppendValue(Mutable, v6);
    realityio::WrappedCFRef<RIOPxrSdfLayer *>::~WrappedCFRef(&v6);
  }

  v6 = v5;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return Mutable;
}

void sub_24763EBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCopyRootLayer(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v5, v1);
  v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(&v5);
  v3 = v6;
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return v2;
}

void sub_24763EC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrUsdStageCopySessionLayer(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&v5, v1);
  v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(&v5);
  v3 = v6;
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return v2;
}

void sub_24763ED44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrUsdStageRemovePrim(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = realityio::UsdLayerMutexTracker::instance(a1);
    v7 = a1[2];
    v6 = a1 + 2;
    if (v7)
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v6);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v8);
      v10 = EditTarget[1];
      v15 = *EditTarget;
      v16 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v11 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v5, &v15);
    v12 = v16;
    if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v12 + 8))(v12);
    }

    std::recursive_mutex::lock(v11);
    if (*v6)
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v6);
      v2 = MEMORY[0x24C1A6210](v13, a2 + 16);
    }

    else
    {
      v2 = 0;
    }

    std::recursive_mutex::unlock(v11);
  }

  return v2;
}

void sub_24763EE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

void RIOPxrUsdStageSetEditTarget(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetEditTarget(v12, (a2 + 16));
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_24763EFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrUsdStageCopyEditTarget(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v1);
  v3 = *MEMORY[0x277CBECE8];
  if (RIOPxrUsdEditTargetGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdEditTargetGetTypeID::onceToken, &__block_literal_global_26);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = *(EditTarget + 8);
    *(Instance + 16) = *EditTarget;
    *(Instance + 24) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::_Data((Instance + 32), EditTarget + 16);
    *(v5 + 72) = *(EditTarget + 56);
  }

  return v5;
}

void sub_24763F0FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrUsdStageCopyUSDA(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v6, v1);
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v6);
  pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString();
  v2 = v7;
  if (v7 && atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  if (v9 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_24763F210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrUsdStageCopyFlattenedUSDA(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v1 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdStage::Flatten(v1);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v5);
  pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString();
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v5);
  if (v7 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_24763F310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOPxrUsdStageReload(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v3);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v5);
      v7 = EditTarget[1];
      v11 = *EditTarget;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v11);
    v9 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    if (*v3)
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::UsdStage::Reload(v10);
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_24763F41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

void RIOPxrUsdStageLoadThenUnload(uint64_t *a1, const __CFSet *a2, const __CFSet *a3)
{
  if (a1)
  {
    v6 = realityio::UsdLayerMutexTracker::instance(a1);
    v8 = a1[2];
    v7 = a1 + 2;
    if (v8)
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v9);
      v11 = EditTarget[1];
      v16 = *EditTarget;
      v17[0] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v16 = 0;
      v17[0] = 0;
    }

    v12 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v6, &v16);
    v13 = v17[0];
    if (v17[0] && atomic_fetch_add_explicit(v17[0] + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }

    std::recursive_mutex::lock(v12);
    if (*v7)
    {
      v17[0] = 0;
      v17[1] = 0;
      v15[1] = 0;
      v16 = v17;
      v14 = v15;
      v15[0] = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7);
      pxrInternal__aapl__pxrReserved__::UsdStage::LoadAndUnload();
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v14, v15[0]);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v16, v17[0]);
    }

    std::recursive_mutex::unlock(v12);
  }
}

void sub_24763F5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::convertSetToSDFPathSet(const __CFSet *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a2, *(a2 + 8));
  *a2 = v4;
  *(a2 + 16) = 0;
  *v4 = 0;
  if (RIOPxrSdfPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfPathGetTypeID::onceToken, &__block_literal_global_30);
  }

  v5 = RIOPxrSdfPathGetTypeID::typeID;
  values = 0;
  v10 = 0;
  v11 = 0;
  Count = CFSetGetCount(a1);
  std::vector<void const*>::resize(&values, Count);
  CFSetGetValues(a1, values);
  v7 = values;
  v8 = v10;
  if (values != v10)
  {
    do
    {
      if (CFGetTypeID(*v7) == v5)
      {
        std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a2, *v7 + 2);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = values;
  }

  if (v7)
  {
    v10 = v7;
    operator delete(v7);
  }
}

void sub_24763F728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RIOPxrUsdStageSave(uint64_t *result)
{
  if (result)
  {
    v1 = result[2];
    result += 2;
    if (v1)
    {
      v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(result);

      return MEMORY[0x282206BF8](v2);
    }
  }

  return result;
}

uint64_t RIOPxrUsdStageExportWithFileURL(uint64_t a1, void *a2, uint64_t a3, const __CFDictionary *a4)
{
  v6 = a2;
  v7 = [v6 isFileURL];
  if ((v7 & 1) == 0)
  {
    v11 = *(realityio::logObjects(v7) + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(context) = 0;
      _os_log_error_impl(&dword_247485000, v11, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports writing content to file URLs", &context, 2u);
    }

    goto LABEL_11;
  }

  if (!a1 || (v9 = *(a1 + 16), v8 = (a1 + 16), !v9))
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v16[0] = 0;
  v16[1] = 0;
  context = v16;
  if (a4)
  {
    CFDictionaryApplyFunction(a4, realityio::updateStringMapFromCFDictionary, &context);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v8);
  std::string::basic_string[abi:ne200100]<0>(&__p, [v6 fileSystemRepresentation]);
  v10 = pxrInternal__aapl__pxrReserved__::UsdStage::Export();
  if (v14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&context, v16[0]);
LABEL_12:

  return v10;
}

void sub_24763F8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a16, a17);

  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCopyFlattened(realityio::UsdLayerMutexTracker *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = *(v1 + 16);
    v3 = (v1 + 16);
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v3);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v5);
      v7 = *(EditTarget + 8);
      v12 = *EditTarget;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v12);
    v9 = v13;
    if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    if (*v3)
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v3);
      pxrInternal__aapl__pxrReserved__::UsdStage::Flatten(v10);
      v1 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> &>(&v12);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v12);
    }

    else
    {
      v1 = 0;
    }

    std::recursive_mutex::unlock(v8);
  }

  return v1;
}

void sub_24763FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a9);
  std::recursive_mutex::unlock(v9);
  _Unwind_Resume(a1);
}

double RIOPxrUsdStageGetMetersPerUnit(uint64_t a1)
{
  v1 = 0.01;
  if (a1)
  {
    if (*(a1 + 16))
    {
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v5, (a1 + 16));
      pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
      v1 = v2;
      v3 = v6;
      if (v6)
      {
        if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v3 + 8))(v3);
        }
      }
    }
  }

  return v1;
}

void sub_24763FB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

void RIOPxrUsdStageSetMetersPerUnit(uint64_t *a1)
{
  if (a1)
  {
    v2 = realityio::UsdLayerMutexTracker::instance(a1);
    v4 = a1[2];
    v3 = a1 + 2;
    if (v4)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v3);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v5);
      v7 = EditTarget[1];
      v11 = *EditTarget;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v11);
    v9 = v12;
    if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    std::recursive_mutex::lock(v8);
    if (*v3)
    {
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v11, v3);
      pxrInternal__aapl__pxrReserved__::UsdGeomSetStageMetersPerUnit();
      v10 = v12;
      if (v12)
      {
        if (atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v10 + 8))(v10);
        }
      }
    }

    std::recursive_mutex::unlock(v8);
  }
}

void sub_24763FC90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

BOOL RIOPxrUsdStageEqual(uint64_t a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 16));
  UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakBase::GetUniqueIdentifier((v3 + 16));
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 16));
  return UniqueIdentifier == pxrInternal__aapl__pxrReserved__::TfWeakBase::GetUniqueIdentifier((v5 + 16));
}

id RIOPxrUsdStageGetUsdError(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return realityio::USDDiagnostics::GetError(v1);
  }

  else
  {
    return 0;
  }
}

id RIOPxrUsdStageGetUsdErrors(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return realityio::USDDiagnostics::GetErrors(v1);
  }

  else
  {
    return 0;
  }
}

void RIOPxrUsdStageClearUsdErrors(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      realityio::USDDiagnostics::ClearErrors(v1);
    }
  }
}

void RIOPxrUsdStageGatherDiagnostics(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      if (a2)
      {
        realityio::USDDiagnostics::GetWarnings(v6, &v10);
      }

      else
      {
        realityio::USDDiagnostics::GetStatusMessages(v6, &v10);
      }

      v7 = v10;
      for (i = v11; v7 != i; v7 += 3)
      {
        v9 = v7;
        if (*(v7 + 23) < 0)
        {
          v9 = *v7;
        }

        (v5)[2](v5, v9);
      }

      v12 = &v10;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
    }
  }
}

void RIOPxrUsdStageClearDiagnostics(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if (a2)
      {
        std::mutex::lock((v4 + 120));
        std::vector<std::string>::clear[abi:ne200100]((v4 + 16));
        std::mutex::unlock((v4 + 120));
      }

      if (a3)
      {
        v6 = *(a1 + 32);
        std::mutex::lock((v6 + 184));
        std::vector<std::string>::clear[abi:ne200100]((v6 + 40));

        std::mutex::unlock((v6 + 184));
      }
    }
  }
}

void RIOPxrUsdStageSetDiagnosticChangeNotification(uint64_t a1, void *a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v7[0] = &unk_285956918;
      v7[1] = MEMORY[0x24C1A9770](v3);
      v7[3] = v7;
      std::function<void ()(void)>::operator=((v5 + 88), v7);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24763FFD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCopyUpAxis(uint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomGetFallbackUpAxis(&v10, a1);
  if (a1)
  {
    v3 = a1[2];
    v2 = a1 + 2;
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v7, v2);
      pxrInternal__aapl__pxrReserved__::UsdGeomGetStageUpAxis();
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 = v8;
      v5 = v9;
      v9 = 0;
      v10 = v5;
      if (v8 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(&v10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_2476400CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
{
  if (a10 && atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a10 + 8))(a10);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdStageSetUpAxis(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = realityio::UsdLayerMutexTracker::instance(a1);
  v4 = a1[2];
  v3 = a1 + 2;
  if (v4)
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v3);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v5);
    v7 = EditTarget[1];
    v13 = *EditTarget;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v9 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v13);
  v10 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v10 + 8))(v10);
  }

  std::recursive_mutex::lock(v9);
  if (*v3)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v13, v3);
    v8 = pxrInternal__aapl__pxrReserved__::UsdGeomSetStageUpAxis();
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  std::recursive_mutex::unlock(v9);
  return v8;
}

void sub_24764028C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  std::recursive_mutex::unlock(v10);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdStageCopyColorConfiguration(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(__p);
  if (a1)
  {
    v3 = *(a1 + 16);
    v2 = (a1 + 16);
    if (v3)
    {
      v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v2);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetColorConfiguration(v8, v4);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v8;
      v13 = v9;
      HIBYTE(v9) = 0;
      LOBYTE(v8[0]) = 0;
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14);
        v14 = v10;
        v15 = v11;
        HIBYTE(v11) = 0;
        LOBYTE(v10) = 0;
        if (SHIBYTE(v9) < 0)
        {
          operator delete(v8[0]);
        }
      }

      else
      {
        v14 = v10;
        v15 = v11;
      }
    }
  }

  if (v13 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = RIOPxrSdfAssetPathCreateFromCString(v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_247640438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(va);
  _Unwind_Resume(a1);
}

void RIOPxrUsdStageSetColorConfiguration(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetColorConfiguration(v12, (a2 + 16));
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_24764053C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrUsdStageCopyColorManagementSystem(uint64_t a1)
{
  v5 = 0;
  if (a1)
  {
    v2 = *(a1 + 16);
    v1 = (a1 + 16);
    if (v2)
    {
      v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetColorManagementSystem(&v5, v3);
    }
  }

  result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(&v5);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void RIOPxrUsdStageSetColorManagementSystem(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetColorManagementSystem(v12, (a2 + 16));
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_2476406FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

double RIOPxrUsdStageGetStartTimeCode(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);

  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v3);
  return result;
}

void RIOPxrUsdStageSetStartTimeCode(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetStartTimeCode(v12, a2);
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_247640880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

double RIOPxrUsdStageGetEndTimeCode(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);

  pxrInternal__aapl__pxrReserved__::UsdStage::GetEndTimeCode(v3);
  return result;
}

void RIOPxrUsdStageSetEndTimeCode(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetEndTimeCode(v12, a2);
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_247640A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrUsdStageHasAuthoredTimeCodeRange(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);

  return pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v3);
}

double RIOPxrUsdStageGetTimeCodesPerSecond(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);

  pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v3);
  return result;
}

void RIOPxrUsdStageSetTimeCodesPerSecond(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetTimeCodesPerSecond(v12, a2);
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_247640BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

double RIOPxrUsdStageGetFramesPerSecond(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);

  pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v3);
  return result;
}

void RIOPxrUsdStageSetFramesPerSecond(uint64_t *a1, double a2)
{
  if (a1)
  {
    v4 = realityio::UsdLayerMutexTracker::instance(a1);
    v6 = a1[2];
    v5 = a1 + 2;
    if (v6)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
      v9 = EditTarget[1];
      v13 = *EditTarget;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v13);
    v11 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    std::recursive_mutex::lock(v10);
    if (*v5)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
      pxrInternal__aapl__pxrReserved__::UsdStage::SetFramesPerSecond(v12, a2);
    }

    std::recursive_mutex::unlock(v10);
  }
}

void sub_247640D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrUsdStageGetIncludeUnusedMaterials(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = (a1 + 16);
  if (!v2)
  {
    v7 = 0;
    return v7 & 1;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&v13, v3);
  v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v13);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v15, v4);
  v5 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = MEMORY[0x24C1A5DE0](&v13, "RealityKit:includeUnusedMaterials");
  if ((v13 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  v9 = ValueAtPath;
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (ValueAtPath)
  {
    v10 = *(ValueAtPath + 1);
    if (v10)
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))
      {
LABEL_17:
        if ((v10 & 4) != 0)
        {
          v9 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(v9);
        }

        v7 = *v9;
        goto LABEL_21;
      }

      if ((v10 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(ValueAtPath, MEMORY[0x277D82798]))
      {
        v10 = *(v9 + 8);
        goto LABEL_17;
      }
    }
  }

  v7 = 0;
LABEL_21:
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v11, *(v11 + 8));
    MEMORY[0x24C1A91B0](v11, 0x1020C4062D53EE8);
  }

  return v7 & 1;
}

void sub_247640F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(va);
  _Unwind_Resume(a1);
}

void RIOPxrUsdStageSetIncludeUnusedMaterials(uint64_t *a1, char a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = realityio::UsdLayerMutexTracker::instance(a1);
  v6 = a1[2];
  v5 = a1 + 2;
  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v7);
    v9 = *(EditTarget + 8);
    __p = *EditTarget;
    v21 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    __p = 0;
    v21 = 0;
  }

  v10 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &__p);
  v11 = v21;
  if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v11 + 8))(v11);
  }

  std::recursive_mutex::lock(v10);
  v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&__p, v12);
  v13 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v23, v13);
  v14 = v21;
  if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v14 + 8))(v14);
  }

  v25 = &unk_285946C7B;
  v24[0] = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "RealityKit:includeUnusedMaterials");
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v5);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&__p, v15);
  v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(v16, &v23);
  v17 = v21;
  if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v17 + 8))(v17);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v24);
  v18 = v23;
  v23 = 0;
  if (v18)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v18, *(v18 + 8));
    MEMORY[0x24C1A91B0](v18, 0x1020C4062D53EE8);
  }

  std::recursive_mutex::unlock(v10);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2476411DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a18);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a16);
  std::recursive_mutex::unlock(v20);
  _Unwind_Resume(a1);
}

atomic_uint **_RIOPxrUsdStageCFFinalize(const void *a1)
{
  v2 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(a1 + 3);

  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(a1 + 2);
}

void std::__function::__func<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0,std::allocator<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0,std::allocator<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285956918;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0,std::allocator<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0,std::allocator<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t std::__function::__func<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0,std::allocator<RIOPxrUsdStageSetDiagnosticChangeNotification::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::InstancedEntityBuilder::InstancedEntityBuilder(realityio::InstancedEntityBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[9] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "InstancedEntityBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kInstancedEntityBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE532A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE532A0))
  {
    operator new();
  }

  if (*algn_27EE53298)
  {
    atomic_fetch_add_explicit((*algn_27EE53298 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285956A10;
  v7[3] = v7;
  v6[0] = &unk_285956A90;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247641A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, char *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  v43 = *(v41 - 88);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  *(v41 - 184) = &a33;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v41 - 184));
  v44 = *(v41 - 104);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  *(v41 - 184) = &a25;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v41 - 184));
  a25 = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a33 = &a36;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a33);
  MEMORY[0x24C1A91B0](v40, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE532A0);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t gatherEntities(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a2) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a2;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a2, v9);
    }

    *(8 * v6) = a1;
    v5 = 8 * v6 + 8;
    v10 = *(a2 + 8) - *a2;
    v11 = (8 * v6 - v10);
    memcpy(v11, *a2, v10);
    v12 = *a2;
    *a2 = v11;
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = a1;
    v5 = (v4 + 1);
  }

  *(a2 + 8) = v5;
  result = REEntityGetChildCount();
  if (result)
  {
    v14 = result;
    for (i = 0; i != v14; ++i)
    {
      Child = REEntityGetChild();
      result = gatherEntities(Child, a2);
    }
  }

  return result;
}

uint64_t realityio::InstancedEntityBuilder::run(realityio::InstancedEntityBuilder *this, realityio::Inputs *a2)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v3 = (a2 + 32);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v56, v4, v3);
  v7 = v57;
  if (!v57 || (v8 = *(v57 + 7), (v8 & 0x800) != 0))
  {
    PrimAtPath = pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v57, v6);
    v8 = *(v7 + 7);
  }

  if ((v8 & 0x100) != 0)
  {
    v9 = realityio::EntityBuilder::kInputName(PrimAtPath);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v9, v54);
    if (v54[0])
    {
      v53 = v55;
      if (v55)
      {
        RERetain();
        v10 = REComponentClassFromName();
        v71 = v10;
        std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v71);
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype(&v49, &v56);
        v11 = *realityio::ImportSessionImpl::getPrototypeEntityRoot(*(*(a2 + 5) + 16));
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v49, &v71);
        EntityAtPath = getEntityAtPath(v11, v10, &v71);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v71);
        if (EntityAtPath)
        {
          memset(v48, 0, sizeof(v48));
          LODWORD(v71) = v56;
          v72 = v57;
          if (v57)
          {
            atomic_fetch_add_explicit(v57 + 6, 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v73, &v58);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v73 + 1, &v59);
          v74 = v60;
          if ((v60 & 7) != 0 && (atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v74 &= 0xFFFFFFFFFFFFFFF8;
          }

          v68 = 0;
          v69 = 0;
          v70 = 0;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim const*,pxrInternal__aapl__pxrReserved__::UsdPrim const*>(&v68, &v71, v75, 1uLL);
          if (!atomic_load(MEMORY[0x277D86568]))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterials();
          v65 = &v68;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&v65);
          if ((v74 & 7) != 0)
          {
            atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v73);
          if (v72)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v72);
          }

          v14 = v53;
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          gatherEntities(EntityAtPath, &v68);
          gatherEntities(v14, &v65);
          v15 = v68;
          v16 = v65;
          if (v69 != v68 && v69 - v68 == v66 - v65)
          {
            v17 = 0;
            v45 = (this + 280);
            do
            {
              v18 = *&v15[8 * v17];
              ComponentCount = REEntityGetComponentCount();
              if (ComponentCount)
              {
                for (i = 0; i != ComponentCount; ++i)
                {
                  v21 = *&v68[8 * v17];
                  REEntityGetComponentAtIndex();
                  Class = REComponentGetClass();
                  v23 = v65[v17];
                  if (Class == REMeshComponentGetComponentType())
                  {
                    v24 = REComponentCopy();
                    REEntityGetComponentByClass();
                    MaterialCount = REMeshComponentGetMaterialCount();
                    __p = 0;
                    v63 = 0;
                    v64 = 0;
                    if (MaterialCount)
                    {
                      if (!(MaterialCount >> 61))
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(&__p, MaterialCount);
                      }

                      std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
                    }

                    REComponentGetClass();
                    REEntityRemoveComponentByClass();
                    REEntityAddExistingComponent();
                    REMeshComponentRemoveAllMaterials();
                    if (v24)
                    {
                      v61 = v24;
                      v26 = this;
                      v28 = *(this + 36);
                      v27 = *(this + 37);
                      if (v28 >= v27)
                      {
                        v30 = *v45;
                        v31 = (v28 - *v45) >> 3;
                        v32 = v31 + 1;
                        if ((v31 + 1) >> 61)
                        {
                          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                        }

                        v33 = v27 - v30;
                        if (v33 >> 2 > v32)
                        {
                          v32 = v33 >> 2;
                        }

                        if (v33 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v34 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v34 = v32;
                        }

                        v75[0] = this + 280;
                        if (v34)
                        {
                          if (!(v34 >> 61))
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:ne200100]();
                        }

                        v35 = v31;
                        v36 = 8 * v31;
                        *(8 * v31) = v24;
                        v71 = 0;
                        v72 = (8 * v31);
                        v61 = 0;
                        v37 = 0;
                        v73 = 8 * v31 + 8;
                        v74 = 0;
                        if (v30 == v28)
                        {
                          v29 = 8 * v31 + 8;
                        }

                        else
                        {
                          v38 = 0;
                          v39 = -8;
                          v40 = v30;
                          do
                          {
                            v41 = *v40;
                            *(v39 + 8) = *v40;
                            if (v41)
                            {
                              RERetain();
                            }

                            v40 = (v40 + 8);
                            v38 -= 8;
                            v39 += 8;
                          }

                          while (v40 != v28);
                          do
                          {
                            realityio::WrappedRERef<REComponent *>::~WrappedRERef(v30);
                            v30 = (v30 + 8);
                          }

                          while (v30 != v28);
                          v30 = *v45;
                          v29 = v73;
                          v37 = v74;
                        }

                        *(this + 35) = v36 - 8 * v35;
                        *(this + 36) = v29;
                        v42 = *(this + 37);
                        *(this + 37) = v37;
                        v73 = v30;
                        v74 = v42;
                        v71 = v30;
                        v72 = v30;
                        std::__split_buffer<realityio::WrappedRERef<REComponent *>>::~__split_buffer(&v71);
                        v26 = this;
                      }

                      else
                      {
                        *v28 = v24;
                        v29 = (v28 + 1);
                        v61 = 0;
                      }

                      *(v26 + 36) = v29;
                      realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v61);
                    }

                    if (__p)
                    {
                      v63 = __p;
                      operator delete(__p);
                    }
                  }
                }
              }

              ++v17;
              v15 = v68;
            }

            while (v17 < (v69 - v68) >> 3);
            v16 = v65;
          }

          if (v16)
          {
            v66 = v16;
            operator delete(v16);
            v15 = v68;
          }

          if (v15)
          {
            v69 = v15;
            operator delete(v15);
          }

          v71 = &v47;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v71);
          v71 = v48;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v71);
        }

        if ((v52 & 7) != 0)
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
    }

    else
    {
      v53 = 0;
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v53);
    realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v54);
  }

  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
  result = v57;
  if (v57)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247642378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, void *__p, uint64_t a36)
{
  *(v36 - 160) = &a11;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100]((v36 - 160));
  *(v36 - 160) = &a14;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100]((v36 - 160));
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a17);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a21);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a22);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a30);
  _Unwind_Resume(a1);
}

uint64_t getEntityAtPath(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if (!REEntityGetComponentByClass() || (v6 = *RECustomComponentGetObject(), Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3), strcmp(v6, Text)))
  {
    ChildCount = REEntityGetChildCount();
    if (ChildCount)
    {
      v9 = ChildCount;
      v10 = 0;
      while (1)
      {
        Child = REEntityGetChild();
        EntityAtPath = getEntityAtPath(Child, a2, a3);
        if (EntityAtPath)
        {
          break;
        }

        if (v9 == ++v10)
        {
          return 0;
        }
      }

      return EntityAtPath;
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void *realityio::InstancedEntityBuilder::clear(realityio::InstancedEntityBuilder *this, realityio::Inputs *a2)
{
  result = *(this + 36);
  v4 = *(this + 35);
  while (result != v4)
  {
    result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(result - 1);
  }

  *(this + 36) = v4;
  return result;
}

void realityio::InstancedEntityBuilder::~InstancedEntityBuilder(realityio::InstancedEntityBuilder *this)
{
  *this = &unk_285956998;
  v5 = (this + 280);
  std::vector<realityio::WrappedRERef<REComponent *>>::__destroy_vector::operator()[abi:ne200100](&v5);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285956998;
  v5 = (this + 280);
  std::vector<realityio::WrappedRERef<REComponent *>>::__destroy_vector::operator()[abi:ne200100](&v5);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__split_buffer<realityio::WrappedRERef<REComponent *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    realityio::WrappedRERef<REComponent *>::~WrappedRERef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<realityio::WrappedRERef<REComponent *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = realityio::WrappedRERef<REComponent *>::~WrappedRERef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_247642A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::InstancedEntityBuilder::InstancedEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::InstancedEntityBuilder::InstancedEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::InstancedEntityBuilder::InstancedEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::InstancedEntityBuilder::InstancedEntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::tokens::EntityBuilderTokens_StaticTokenType::~EntityBuilderTokens_StaticTokenType(realityio::tokens::EntityBuilderTokens_StaticTokenType *this)
{
  v9 = (this + 64);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v9);
  v2 = *(this + 7);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 6);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 5);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 3);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 2);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 1);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::EntityBuilderTokens_StaticTokenType *realityio::tokens::EntityBuilderTokens_StaticTokenType::EntityBuilderTokens_StaticTokenType(atomic_uint **this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "active", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "specifier", 0);
  MEMORY[0x24C1A5DF0](this + 2, "typeName", 0);
  MEMORY[0x24C1A5DF0](this + 3, "RealityKitEntityAPI", 0);
  MEMORY[0x24C1A5DF0](this + 4, "RealityKit:requireEntityAPI", 0);
  MEMORY[0x24C1A5DF0](this + 5, "RealityKit:__entityTaggingEditMode", 0);
  MEMORY[0x24C1A5DF0](this + 6, "RealityKit:entity", 0);
  MEMORY[0x24C1A5DF0](this + 7, "RealityKit:entityName", 0);
  v3 = this + 8;
  v4 = *this;
  v24 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v5;
    }
  }

  v6 = this[1];
  v25 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v7;
    }
  }

  v8 = this[2];
  v26 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v9;
    }
  }

  v10 = this[3];
  v27 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v11;
    }
  }

  v12 = this[4];
  v28 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v13;
    }
  }

  v14 = this[5];
  v29 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v15;
    }
  }

  v16 = this[6];
  v30 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v30 = v17;
    }
  }

  v18 = this[7];
  v31 = v18;
  if ((v18 & 7) != 0)
  {
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31 = v19;
    }
  }

  *v3 = 0;
  this[9] = 0;
  this[10] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v24, &v32, 8uLL);
  for (i = 7; i != -1; --i)
  {
    v21 = (&v24)[i];
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_247642FD4(_Unwind_Exception *a1)
{
  v3 = 56;
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
      v5 = v1[7];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[6];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateEntityDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE532B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE532B8))
  {
    operator new();
  }

  v3 = unk_27EE532B0;
  *a1 = _MergedGlobals_36;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_247643558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  MEMORY[0x24C1A91B0](v30, 0x1060C40E5A1EACFLL);
  v34 = v32 - 160;
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  while (1)
  {
    v35 = *(v34 - 8);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    v34 -= 16;
    if (v34 == v32 - 192)
    {
      MEMORY[0x24C1A91B0](v29, 0x10A1C402FEF67C7);
      *(v32 - 192) = &a28;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v32 - 192));
      MEMORY[0x24C1A91B0](v28, 0x10A1C401BF1BAA1);
      MEMORY[0x24C1A91B0](v31, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE532B8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::getPrimEntityProvidingSetting(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v10 = 0;
  MEMORY[0x24C1A5DE0](v9, "customData");
  if (!atomic_load(&realityio::tokens::EntityBuilderTokens))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  Metadata = pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<BOOL>(this, v9);
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = (Metadata & v10);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAppliedSchemas(v9, this);
  for (i = v9[0]; i != v9[1]; ++i)
  {
    v7 = atomic_load(&realityio::tokens::EntityBuilderTokens);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v7 + 24) ^ *i) < 8)
    {
      v5 = 1;
      break;
    }
  }

  v11 = v9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v11);
  return v5;
}

void sub_2476438FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t realityio::primLayerIsEntityTaggingEditMode(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, this);
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&v15, v2);
  v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v15);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v17, v3);
  v4 = v16;
  if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = atomic_load(&realityio::tokens::EntityBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v6 + 5) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  v8 = ValueAtPath;
  if (ValueAtPath && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(ValueAtPath))
  {
    v9 = *(v8 + 8);
    if ((v9 & 4) != 0)
    {
      v8 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v8);
    }

    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v11, *(v11 + 8));
    MEMORY[0x24C1A91B0](v11, 0x1020C4062D53EE8);
  }

  return v10 & 1;
}

void sub_247643AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, atomic_uint *a13)
{
  if (a13 && atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*a13 + 8))(a13);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::calculateOptInFromTargetPrim(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v13 = *this;
  v3 = *(this + 1);
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, this + 5);
  v5 = *(this + 3);
  v17 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  do
  {
    PrimEntityProvidingSetting = realityio::getPrimEntityProvidingSetting(&v13, v4);
    if (PrimEntityProvidingSetting)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v13, &v8);
    v13 = v8;
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
    }

    v14 = v9;
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v15, &v10);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16, &v11);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v17 = v12;
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
    }
  }

  while ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v13) & 1) == 0);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
  }

  return PrimEntityProvidingSetting;
}

void sub_247643CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

unint64_t realityio::calculateIsEntityProvidingAtExportTime(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v7);
  IsAbsoluteRootPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  if (IsAbsoluteRootPath)
  {
    return 1;
  }

  v6 = realityio::calculateOptInFromTargetPrim(this, v4);
  return realityio::isEntityProviding(this, v6);
}

void sub_247643D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

unint64_t realityio::isEntityProviding(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v2 = a2;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v13);
  IsAbsoluteRootPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (IsAbsoluteRootPath)
  {
    return 1;
  }

  if (!v2 || (realityio::primLayerIsEntityTaggingEditMode(this, v5) & 1) != 0)
  {
    if ((realityio::isSceneLibrary(this, v5) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(this, &v13);
      isSceneLibrary = realityio::isSceneLibrary(&v13, v6);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
      }

      if ((isSceneLibrary & 1) == 0)
      {
        return realityio::isEntityConvertible(this, v8);
      }
    }

    return 1;
  }

  result = realityio::getPrimEntityProvidingSetting(this, v5);
  if (result)
  {
    PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(this);
    if (*PrimPath == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(PrimPath))
    {
      return 0;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::UsdPrim::IsActive(this, v11);
        if (result)
        {
          return pxrInternal__aapl__pxrReserved__::UsdPrim::IsDefined(this, v12);
        }
      }
    }
  }

  return result;
}

unint64_t realityio::calculateIsEntityProviding(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v8);
  IsAbsoluteRootPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (IsAbsoluteRootPath)
  {
    return 1;
  }

  if (realityio::primLayerIsEntityTaggingEditMode(this, v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = realityio::calculateOptInFromTargetPrim(this, v6);
  }

  return realityio::isEntityProviding(this, v7);
}

void sub_247643F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsActive(pxrInternal__aapl__pxrReserved__::UsdPrim *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *(v2 + 56), (v3 & 0x800) != 0))
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
    v3 = *(v2 + 56);
  }

  return v3 & 1;
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsDefined(pxrInternal__aapl__pxrReserved__::UsdPrim *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *(v2 + 56), (v3 & 0x800) != 0))
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
    v3 = *(v2 + 56);
  }

  return (v3 >> 6) & 1;
}

uint64_t realityio::isEntityConvertible(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(this);
  if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath(PrimPath) & 1) == 0 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) && pxrInternal__aapl__pxrReserved__::UsdPrim::IsActive(this, v4) && ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsDefined(this, v4) & 1) != 0 || realityio::isInSceneHierarchy(this, v4)))
  {
    if (realityio::isSceneGraphNode(this, v4))
    {
      IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
      if (IsValid)
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomXformable::_GetStaticTfType(IsValid);
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
        if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
        {
          return 1;
        }
      }
    }
  }

  return pxrInternal__aapl__pxrReserved__::UsdPrim::IsPrototype(this, v4);
}

uint64_t realityio::isInSceneHierarchy(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    return 0;
  }

  if (realityio::isScene(this, v3))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(this, &v7);
  v4 = realityio::isInSceneHierarchy(&v7, v5);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return v4;
}

uint64_t realityio::isSceneGraphNode(pxrInternal__aapl__pxrReserved__ **this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (result)
  {
    v5 = this[1];
    if (!v5 || (*(v5 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v4);
    }

    v6 = *(v5 + 3);
    v7 = MEMORY[0x24C1A5DE0](&v9, &str_20_0);
    v8 = v9;
    if ((v9 ^ *v6) >= 8)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(v7);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      v8 = v9;
    }

    else
    {
      result = 1;
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsPrototype(pxrInternal__aapl__pxrReserved__::UsdPrim *this, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *(v2 + 56), (v3 & 0x800) != 0))
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
    v3 = *(v2 + 56);
  }

  if ((v3 & 0x1000) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((v2 + 16));
}

uint64_t RIOPxrSdrShaderNodeGetTypeID()
{
  if (qword_27EE532C8 != -1)
  {
    dispatch_once(&qword_27EE532C8, &__block_literal_global_24);
  }

  return _MergedGlobals_37;
}

void __RIOPxrSdrShaderNodeGetTypeID_block_invoke()
{
  if (!_MergedGlobals_37)
  {
    _MergedGlobals_37 = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdrShaderPropertyGetTypeID()
{
  if (qword_27EE532D8 != -1)
  {
    dispatch_once(&qword_27EE532D8, &__block_literal_global_2_1);
  }

  return qword_27EE532D0;
}

void __RIOPxrSdrShaderPropertyGetTypeID_block_invoke()
{
  if (!qword_27EE532D0)
  {
    qword_27EE532D0 = _CFRuntimeRegisterClass();
  }
}

__CFArray *RIOPxrSdrRegistryCopyNodeNames(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1)
{
  pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(a1);
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::NdrRegistry::GetNodesByFamily();
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v2 = v7;
  v3 = v8;
  if (v7 != v8)
  {
    do
    {
      v4 = (*v2 + 40);
      if (*(*v2 + 63) < 0)
      {
        v4 = *v4;
      }

      v6 = CFStringCreateWithCString(0, v4, 0x8000100u);
      CFArrayAppendValue(Mutable, v6);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v6);
      v2 += 8;
    }

    while (v2 != v3);
    v2 = v7;
  }

  if (v2)
  {
    v8 = v2;
    operator delete(v2);
  }

  return Mutable;
}

void sub_247644478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdrRegistryGetShaderNodeByName(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1)
{
  pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(a1);
  v2 = strlen(a1);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v9 = v2;
  if (v2)
  {
    memcpy(&__dst, a1, v2);
  }

  *(&__dst + v3) = 0;
  memset(v7, 0, sizeof(v7));
  ShaderNodeByName = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByName();
  v10 = v7;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (v9 < 0)
  {
    operator delete(__dst);
    if (ShaderNodeByName)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!ShaderNodeByName)
  {
    return 0;
  }

LABEL_9:
  v5 = *MEMORY[0x277CBECE8];
  if (qword_27EE532C8 != -1)
  {
    dispatch_once(&qword_27EE532C8, &__block_literal_global_24);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = ShaderNodeByName;
  }

  return result;
}

void sub_24764462C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdrShaderNodeCopyInputNames(uint64_t a1)
{
  InputNames = pxrInternal__aapl__pxrReserved__::NdrNode::GetInputNames(*(a1 + 16));
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(&v6, *InputNames, InputNames[1], (InputNames[1] - *InputNames) >> 3);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = v6;
  v4 = v7;
  while (v3 != v4)
  {
    v9 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v3);
    CFArrayAppendValue(Mutable, v9);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v9);
    ++v3;
  }

  v9 = &v6;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v9);
  return Mutable;
}

void sub_247644708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdrShaderNodeCopyOutputNames(uint64_t a1)
{
  OutputNames = pxrInternal__aapl__pxrReserved__::NdrNode::GetOutputNames(*(a1 + 16));
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(&v6, *OutputNames, OutputNames[1], (OutputNames[1] - *OutputNames) >> 3);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = v6;
  v4 = v7;
  while (v3 != v4)
  {
    v9 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v3);
    CFArrayAppendValue(Mutable, v9);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v9);
    ++v3;
  }

  v9 = &v6;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v9);
  return Mutable;
}

void sub_2476447EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

CFStringRef RIOPxrSdrShaderNodeCopyName(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v1 + 40), *(v1 + 48));
  }

  else
  {
    __p = *(v1 + 40);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v3 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_2476448AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrSdrShaderNodeCopyInfoString(uint64_t a1)
{
  (*(**(a1 + 16) + 24))(__p);
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_247644970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdrShaderPropertyCreate<pxrInternal__aapl__pxrReserved__::SdrShaderProperty const*>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (qword_27EE532D8 != -1)
  {
    dispatch_once(&qword_27EE532D8, &__block_literal_global_2_1);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = *a1;
  }

  return result;
}

uint64_t RIOPxrSdrShaderPropertyIsArray(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(v1 + 48))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 56);
  }

  return v2 & 1;
}

CFStringRef RIOPxrSdrShaderPropertyCopyInfoString(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(__p);
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_247644C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::MeshModelDescriptorBuilder::kModelDescriptorOutputName(realityio::MeshModelDescriptorBuilder *this)
{
  {
    operator new();
  }

  return realityio::MeshModelDescriptorBuilder::kModelDescriptorOutputName(void)::kOutputName;
}

void sub_247644D94(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::MeshModelDescriptorBuilder::MeshModelDescriptorBuilder(realityio::MeshModelDescriptorBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "MeshModelDescriptorBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kMeshModelDescriptorBuilderIdentifier);
  realityio::generateMeshDirtyStageSubscription(&v4);
  v8[0] = &unk_285956C88;
  v8[3] = v8;
  v7[0] = &unk_285956D08;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247644F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::MeshModelDescriptorBuilder::run(realityio::MeshModelDescriptorBuilder *this, realityio::Inputs *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v83, v5, v4);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v83);
  if (IsValid)
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(IsValid);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if (IsA)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v81 = MEMORY[0x277D866C8] + 16;
      if (!realityio::isGuide(&v83, v8))
      {
        if (*(*(*(a2 + 5) + 16) + 272) != 1 || !v82 || (*(v82 + 57) & 8) != 0 || !(*(v81 + 32))(&v81))
        {
          goto LABEL_16;
        }

        *&v55 = 0x7FF8000000000000;
        pxrInternal__aapl__pxrReserved__::UsdGeomImageable::ComputeVisibility(&buf, &v81, &v55);
        MEMORY[0x24C1A5DE0](v67, "invisible");
        v9 = buf;
        v10 = v67[0];
        if ((v67[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v67[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v13 = v10 ^ v9;
        if ((buf & 7) != 0)
        {
          atomic_fetch_add_explicit((buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13 >= 8)
        {
LABEL_16:
          realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v80, 2034, this);
          v79 = 0;
          v14 = REMeshCompileOptionsCreate();
          HasCustomDataKey = v79;
          if (v79)
          {
            HasCustomDataKey = RERelease();
          }

          v79 = v14;
          if (v14)
          {
            v16 = *(*a2 + 304);
            REMeshCompileOptionsSetPreserveSubdivisonSurfaceData();
            v17 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
            pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&buf, v17);
            v18 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&buf);
            pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v55, v18);
            v19 = *(&buf + 1);
            if (*(&buf + 1) && atomic_fetch_add_explicit((*(&buf + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*v19 + 8))(v19);
            }

            std::string::basic_string[abi:ne200100]<0>(&buf, "realityio:decimateAllMeshes");
            ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
            if (SHIBYTE(v89) < 0)
            {
              operator delete(buf);
            }

            if (ValueAtPath)
            {
              v21 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(ValueAtPath);
              if (v21)
              {
                v22 = *realityio::logObjects(v21);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&dword_247485000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring deprecated realityio:decimateAllMeshes option", &buf, 2u);
                }
              }
            }

            v23 = v55;
            *&v55 = 0;
            if (v23)
            {
              std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v23, *(v23 + 8));
              MEMORY[0x24C1A91B0](v23, 0x1020C4062D53EE8);
            }

            MEMORY[0x24C1A5DE0](&v55, "RE:mesh:v1:generateVertexFaceAdjacencyAttributes");
            if (pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(&v83, &v55))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&buf, &v83, &v55);
              v24 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
              REMeshCompileOptionsSetGenerateVertexFaceAdjacencyAttributes();
            }

            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            MEMORY[0x24C1A5DE0](&v55, "RE:mesh:v1:reorderVertexCaching");
            if (pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(&v83, &v55))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&buf, &v83, &v55);
              v25 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
              REMeshCompileOptionsSetReorderVertexCaching();
            }

            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            MEMORY[0x24C1A5DE0](&v55, "RE:mesh:v1:repairTangents");
            if (pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(&v83, &v55))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&buf, &v83, &v55);
              v26 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
              REMeshCompileOptionsSetRepairTangents();
            }

            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            MEMORY[0x24C1A5DE0](&v55, "RE:mesh:v1:mergeVerticesIfPolygonSoup");
            if (pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(&v83, &v55))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&buf, &v83, &v55);
              v27 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
              REMeshCompileOptionsSetMergeVerticesIfPolygonSoup();
            }

            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            MEMORY[0x24C1A5DE0](&v55, "RE:mesh:v1:preserveSharpFeatures");
            if (pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(&v83, &v55))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&buf, &v83, &v55);
              v28 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
              REMeshCompileOptionsSetPreserveSharpFeatures();
            }

            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            MEMORY[0x24C1A5DE0](&v55, "RE:mesh:v1:preserveSubdivisionSurfaceData");
            if (pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(&v83, &v55))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&buf, &v83, &v55);
              v29 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
              REMeshCompileOptionsSetPreserveSubdivisonSurfaceData();
            }

            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            MEMORY[0x24C1A5DE0](&v55, "RE:mesh:v1:decimateMesh");
            HasCustomDataKey = pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(&v83, &v55);
            if (HasCustomDataKey)
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&buf, &v83, &v55);
              v30 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&buf);
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&buf);
              HasCustomDataKey = REMeshCompileOptionsSetGenerateDecimatedMesh();
            }

            if ((v55 & 7) != 0)
            {
              atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          v76 = 0;
          v77 = 0;
          v78 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(HasCustomDataKey);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() & 1) == 0)
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v83, &v55);
            std::allocate_shared[abi:ne200100]<realityio::MeshModelDescriptorBuilder::MeshModelDataT,std::allocator<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::WrappedRERef<REMeshCompileOptions *>,pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>,0>();
          }

          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          *&v72[8] = MEMORY[0x277D866A8] + 16;
          if (!atomic_load(MEMORY[0x277D86550]))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
          }

          *&v55 = 0;
          pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetGeomSubsets();
          if ((v55 & 7) != 0)
          {
            atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::reserve(&v76, 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 3));
          v33 = *(&buf + 1);
          for (i = buf; i != v33; i = (i + 24))
          {
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(i, &v55);
            v34 = v77;
            if (v77 >= v78)
            {
              v35 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>(&v76, &v55);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v77, &v55);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v34 + 1, &v55 + 1);
              v35 = v34 + 2;
            }

            v77 = v35;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
          }

          *&v55 = &buf;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v55);
          LODWORD(buf) = 1;
          *(&buf + 1) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
          v90 = 0;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v70 = MEMORY[0x277D86720] + 16;
          if ((v90 & 7) != 0)
          {
            atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v88);
          if (*(&buf + 1))
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v67[3] = 0;
          v67[0] = MEMORY[0x277D86780] + 16;
          pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&buf, v67);
          v36 = *(&buf + 1);
          if (*(&buf + 1))
          {
            atomic_fetch_add_explicit((*(&buf + 1) + 48), 1uLL, memory_order_relaxed);
          }

          if (v71)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v71);
          }

          v71 = v36;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v72, &v88);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v72[4], &v89);
          MEMORY[0x24C1A53A0](&buf);
          if (v71 && (*(v71 + 57) & 8) == 0 && (*(v70 + 32))(&v70))
          {
            v37 = MEMORY[0x277D86558];
            v38 = atomic_load(MEMORY[0x277D86558]);
            if (!v38)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
            }

            if (pxrInternal__aapl__pxrReserved__::UsdPrim::HasRelationship(&v83, (v38 + 136)))
            {
              v39 = atomic_load(v37);
              if (!v39)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
              }

              pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&buf, &v83, (v39 + 136));
              v64 = 0;
              v65 = 0;
              v66 = 0;
              pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
              v40 = v64;
              v41 = v65;
              if (v64 != v65)
              {
                while (1)
                {
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v62, v40);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v63, v40 + 1);
                  v42 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
                  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v55, v42, &v62);
                  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v55))
                  {
                    v43 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
                    PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v58, v43, &v62);
                    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::_GetStaticTfType(PrimAtPath);
                    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                    v45 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                    if ((v61 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
                    if (__p)
                    {
                      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__p);
                    }
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if ((BYTE8(v56) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v56 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
                  if (*(&v55 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v55 + 1));
                  }

                  if (v45)
                  {
                    break;
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v62);
                  v40 += 2;
                  if (v40 == v41)
                  {
                    goto LABEL_121;
                  }
                }

                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v68, &v62);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v69, &v63);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v62);
              }

LABEL_121:
              *&v55 = &v64;
              std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v55);
              pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(&buf);
            }

            else
            {
              v48 = atomic_load(v37);
              if (!v48)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdSkelTokensType>>::_TryToCreateData();
              }

              pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&buf, &v83, (v48 + 136));
              v64 = 0;
              v65 = 0;
              v66 = 0;
              pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
              v49 = v64;
              v50 = v65;
              if (v64 != v65)
              {
                while (1)
                {
                  v51 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
                  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v55, v51, v49);
                  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v55))
                  {
                    v52 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
                    v53 = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v58, v52, v49);
                    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::_GetStaticTfType(v53);
                    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                    v54 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                    if ((v61 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
                    if (__p)
                    {
                      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__p);
                    }
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if ((BYTE8(v56) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v56 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
                  if (*(&v55 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v55 + 1));
                  }

                  if (v54)
                  {
                    break;
                  }

                  v49 = (v49 + 8);
                  if (v49 == v50)
                  {
                    goto LABEL_119;
                  }
                }

                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v68, v49);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v69, v49 + 1);
              }

LABEL_119:
              *&v55 = &v64;
              std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v55);
              pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&buf);
            }
          }

          MEMORY[0x24C1A58A0](&buf, v67);
          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetBlendShapesAttr(&v58, v67);
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
        }
      }

      MEMORY[0x24C1A4EF0](&v81);
    }

    else
    {
      v11 = *realityio::logObjects(IsA);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v83, &v55);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v55);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = Text;
        _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_INFO, "Skipping MeshModelDescriptorBuilder on %s", &buf, 0xCu);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
      }
    }
  }

  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v85);
  result = v84;
  if (v84)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v84);
  }

  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476460E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, char a44)
{
  MEMORY[0x24C1A4DB0](&a32);
  a11 = &a35;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a38;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a11);
  realityio::WrappedRERef<REMeshCompileOptions *>::~WrappedRERef(&a41);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a42);
  MEMORY[0x24C1A4EF0](&a44);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v44 - 240));
  _Unwind_Resume(a1);
}

uint64_t realityio::MeshModelDescriptorBuilder::clear(realityio::MeshModelDescriptorBuilder *this, realityio::Inputs *a2)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = realityio::MeshModelDescriptorBuilder::kModelDescriptorOutputName(this);
  realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>(v4, v5, v18);
  v6 = v18[0];
  if (v18[0])
  {
    v7 = v19;
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      v13[0] = 1;
      v14 = v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }

    else
    {
      v13[0] = 1;
      v14 = v19;
    }
  }

  else
  {
    v16 = v19;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v20;
    }

    v13[0] = 0;
    v14 = v16;
    v15 = v17;
  }

  v8 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v18);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v6)
  {
    v10 = *(this + 2);
    v9 = *(this + 3);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = realityio::MeshModelDescriptorBuilder::kModelDescriptorOutputName(v8);
    std::mutex::lock((v10 + 64));
    if (v10 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v10 + 40, v11))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v10 + 40), v11);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v10, v11);
    std::mutex::unlock((v10 + 64));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v13);
}

void sub_2476467F4(_Unwind_Exception *a1)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v2 - 80);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void realityio::MeshModelDescriptorBuilder::~MeshModelDescriptorBuilder(realityio::MeshModelDescriptorBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::~UsdSkelBlendShapeQuery(pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery *this)
{
  v5 = (this + 80);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 56);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::_BlendShape>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::_BlendShape>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = MEMORY[0x24C1A5630](v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<realityio::MeshModelDescriptorBuilder::MeshModelDescriptorBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MeshModelDescriptorBuilder::MeshModelDescriptorBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247646E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshModelDescriptorBuilder::MeshModelDescriptorBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::MeshModelDescriptorBuilder::MeshModelDescriptorBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::EntityBuilder::kInputName(realityio::EntityBuilder *this)
{
  {
    operator new();
  }

  return realityio::EntityBuilder::kInputName(void)::kInputName;
}

void sub_24764707C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::EntityBuilder::kRootEntityInputName(realityio::EntityBuilder *this)
{
  {
    operator new();
  }

  return realityio::EntityBuilder::kRootEntityInputName(void)::kRootEntityInputName;
}

void sub_247647134(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::EntityBuilder::kPrimPathInputName(realityio::EntityBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE532E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE532E8))
  {
    operator new();
  }

  return _MergedGlobals_38;
}

void sub_2476471EC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE532E8);
  _Unwind_Resume(a1);
}

uint64_t realityio::EntityBuilder::kOutputName(realityio::EntityBuilder *this)
{
  {
    operator new();
  }

  return realityio::EntityBuilder::kOutputName(void)::kOutputName;
}

void sub_2476472A4(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::EntityBuilder::kPrimPathOutputName(realityio::EntityBuilder *this)
{
  {
    operator new();
  }

  return realityio::EntityBuilder::kPrimPathOutputName(void)::kPrimPathOutputName;
}

void sub_24764735C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::EntityBuilder::EntityBuilder(realityio::EntityBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "EntityBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kEntityBuilderIdentifier);
  realityio::generateEntityDirtyStageSubscription(&v4);
  v8[0] = &unk_285956DE8;
  v8[3] = v8;
  v7[0] = &unk_285956EF8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2476474F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void realityio::EntityBuilder::EntityBuilder()
{
  v1[12] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v1, "EntityBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kEntityBuilderIdentifier);
  operator new();
}

void sub_24764773C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v30 + 280));
  realityio::DynamicBuilder::~DynamicBuilder(v30);
  _Unwind_Resume(a1);
}

uint64_t realityio::EntityBuilder::run(realityio::EntityBuilder *this, realityio::Inputs *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v79 = a2;
  if (*(this + 289) == 1)
  {
    v4 = *(this + 2);
    v3 = *(this + 3);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::EntityBuilder::kOutputName(this);
    realityio::Outputs::storeValue<realityio::WrappedRERef<REEntity *> &>(v4);
  }

  v5 = (a2 + 32);
  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v75, v6, v5);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v75);
  if ((IsValid & 1) == 0)
  {
    v10 = *(realityio::logObjects(IsValid) + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v75, &buf);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&buf);
      LODWORD(v84) = 136315138;
      *(&v84 + 4) = Text;
      _os_log_error_impl(&dword_247485000, v10, OS_LOG_TYPE_ERROR, "Skipping prim at path (%s) because the prim is invalid.\n", &v84, 0xCu);
      pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&buf);
    }

    goto LABEL_35;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::IsInPrototype(&v75);
  v8 = (this + 280);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((this + 280));
  if ((*(String + 23) & 0x80000000) == 0)
  {
    if (!*(String + 23))
    {
      goto LABEL_36;
    }

    goto LABEL_13;
  }

  if (*(String + 8))
  {
LABEL_13:
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v75, &v84);
    v11 = *v8;
    v12 = v84;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v84);
    v13 = *v79;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v75, &v84);
    v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v13 + 64, &v84);
    v15 = v13 + 72 == v14 || *(*(v13 + 40) + 104 * *(v14 + 40) + 24) != v84;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v16 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v84);
    v17 = v11 != v12 || v15;
    if (v17)
    {
      v18 = *v79;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v75, &v84);
      v19 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v18 + 64, &v84);
      v20 = v18 + 72 == v19 || *(*(v18 + 40) + 104 * *(v19 + 40) + 24) != v84;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v24 = v11 != v12 && v20;
      v25 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v84);
      if (!v24)
      {
        goto LABEL_36;
      }

      v10 = *(realityio::logObjects(v25) + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        realityio::Inputs::prim(v79, &v84);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v84, __p);
        v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(__p);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_INFO, "Skipping prim at path (%s) because the ancestor entity has already being returned.\n", &buf, 0xCu);
        pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(__p);
        pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&v84);
      }
    }

    else
    {
      v10 = *(realityio::logObjects(v16) + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v21 = v79;
        v22 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v79 + 8));
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v84, v22, (v21 + 32));
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v84, __p);
        v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(__p);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_INFO, "Skipping prim at path (%s) because the entity has already been created.\n", &buf, 0xCu);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
        if ((v86 & 7) != 0)
        {
          atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v85);
        if (*(&v84 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v84 + 1));
        }
      }
    }

LABEL_35:

    goto LABEL_83;
  }

LABEL_36:
  PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v75);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v74, PrimPath);
  v28 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v74 + 1, PrimPath + 1);
  v29 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v28);
  if (v74 == *v29)
  {
    v31 = *(this + 2);
    v30 = *(this + 3);
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::EntityBuilder::kOutputName(v29);
    *&buf = (*(**(*(v79 + 5) + 16) + 16))(*(*(v79 + 5) + 16));
    if (buf)
    {
      RERetain();
    }

    std::mutex::lock(v31 + 1);
    operator new();
  }

  v32 = *(realityio::logObjects(v29) + 24);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v74);
    LODWORD(v84) = 136315138;
    *(&v84 + 4) = v33;
    _os_log_impl(&dword_247485000, v32, OS_LOG_TYPE_INFO, "Updating entity with path: %s\n", &v84, 0xCu);
  }

  v34 = v79;
  v36 = realityio::EntityBuilder::kInputName(v35);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v34, v36, &v84);
  if (v84)
  {
    v37 = *(&v84 + 1);
    v73 = *(&v84 + 1);
    if (*(&v84 + 1))
    {
      v38 = RERetain();
      goto LABEL_56;
    }
  }

  else
  {
    v73 = 0;
  }

  v39 = v79;
  v40 = realityio::EntityBuilder::kRootEntityInputName(v37);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v39, v40, &buf);
  if (buf)
  {
    __p[0] = *(&buf + 1);
    if (*(&buf + 1))
    {
      RERetain();
      v41 = __p[0];
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
    __p[0] = 0;
  }

  v43 = v73;
  if (v73 != v41)
  {
    v73 = v41;
    __p[0] = v43;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(__p);
  v38 = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&buf);
  if (v73)
  {
LABEL_56:
    v44 = v79;
    v45 = realityio::EntityBuilder::kPrimPathInputName(v38);
    realityio::Inputs::_getValue<pxrInternal__aapl__pxrReserved__::SdfPath *>(v44, v45, &buf);
    if (buf)
    {
      v46 = *(&buf + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v71, *(&buf + 1));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v72, (v46 + 4));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/");
      MEMORY[0x24C1A5D70](&v71, __p);
      if (v81 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v70 = 0;
    IsPrototype = pxrInternal__aapl__pxrReserved__::UsdPrim::IsPrototype(&v75, v47);
    v48 = pxrInternal__aapl__pxrReserved__::UsdPrim::IsInPrototype(&v75);
    v49 = *v79;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v75, __p);
    v50 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v49 + 64, __p);
    v51 = v49 + 72 != v50 && *(*(v49 + 40) + 104 * *(v50 + 40) + 24) == __p[0];
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
    if ((v51 | IsPrototype))
    {
      v68 = (IsPrototype & 1 | v48 & 1) == 0;
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v75);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (*Name & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      if (*(EmptyString + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, *EmptyString, *(EmptyString + 8));
      }

      else
      {
        v58 = *EmptyString;
        v67.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
        *&v67.__r_.__value_.__l.__data_ = v58;
      }

      v59 = atomic_load(MEMORY[0x277D86540]);
      if (v59)
      {
        if (atomic_load(&realityio::tokens::EntityBuilderTokens))
        {
          v61 = pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<pxrInternal__aapl__pxrReserved__::TfToken>(&v75, (v59 + 72));
          if (v61)
          {
            v62 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v61);
            std::string::operator=(&v67, v62);
          }

          v63 = *(v79 + 6);
          v82 = 0;
          operator new();
        }

        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EntityBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EntityBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
    }

    if (*v8 == v74)
    {
      realityio::EntityBuilder::_clearEntity(this, v79);
    }

    realityio::WrappedRERef<REAsset *>::operator=((&IsPrototype + 1), &v73);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 280, &v71);
    v55 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 284, &v72);
    *(this + 288) = 0;
    v57 = *(this + 2);
    v56 = *(this + 3);
    if (v56)
    {
      atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::EntityBuilder::kOutputName(v55);
    realityio::Outputs::storeValue<realityio::WrappedRERef<REEntity *> &>(v57);
  }

  v52 = *(realityio::logObjects(v38) + 24);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    v66 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v74);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v66;
    _os_log_error_impl(&dword_247485000, v52, OS_LOG_TYPE_ERROR, "Unable to create entity at path (%s) because an ancestor entity does not exist.\n", &buf, 0xCu);
  }

  realityio::EntityBuilder::_clearEntity(this, v79);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v73);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v84);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v74);
LABEL_83:
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v77);
  result = v76;
  if (v76)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v76);
  }

  v65 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476483C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, uint64_t a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a44);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a25);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v52 - 144);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a26);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a30);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsInPrototype(pxrInternal__aapl__pxrReserved__ **this)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(this);

    JUMPOUT(0x24C1A5E20);
  }

  v3 = this[1];
  if (!v3 || (v4 = *(v3 + 7), (v4 & 0x800) != 0))
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v3, v2);
    v4 = *(v3 + 7);
  }

  return (v4 >> 12) & 1;
}

void *realityio::EntityBuilder::_clearEntity(realityio::EntityBuilder *this, realityio::Inputs *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = realityio::EntityBuilder::kOutputName(this);
  v8 = realityio::Outputs::getValue<realityio::WrappedRERef<REEntity *>>(v6, v7, &v28);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v28.__r_.__value_.__s.__data_[0] != 1)
  {
    goto LABEL_13;
  }

  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = realityio::EntityBuilder::kOutputName(v8);
  std::mutex::lock((v10 + 64));
  if (v10 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v10 + 40, v11))
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v10 + 40), v11);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v10, v11);
  std::mutex::unlock((v10 + 64));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(a2 + 4) != *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v12))
  {
    size = v28.__r_.__value_.__l.__size_;
    if (v28.__r_.__value_.__l.__size_)
    {
      RERetain();
    }
  }

  else
  {
LABEL_13:
    size = 0;
  }

  v13 = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v28);
  if (size && *(this + 288) == 1)
  {
    v14 = *(a2 + 6);
    v28.__r_.__value_.__r.__words[0] = &unk_2859571F8;
    v28.__r_.__value_.__l.__size_ = &size;
    __p.__r_.__value_.__r.__words[0] = &v28;
    (*(*v14 + 16))(v14, &v28);
    v13 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v28);
  }

  v15 = *(this + 2);
  v16 = *(this + 3);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = realityio::EntityBuilder::kPrimPathOutputName(v13);
  realityio::Outputs::getRawValue<pxrInternal__aapl__pxrReserved__::SdfPath *>(v15, v17, &v28);
  v19 = v28.__r_.__value_.__s.__data_[0];
  if ((v28.__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    v26 = *&v28.__r_.__value_.__r.__words[1];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v15 = v27.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      if ((v28.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v27 = __p;
      v15 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v19)
  {
    v21 = *(this + 2);
    v20 = *(this + 3);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = realityio::EntityBuilder::kPrimPathOutputName(v18);
    std::mutex::lock((v21 + 64));
    if (v21 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v21 + 40, v22))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v21 + 40), v22);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v21, v22);
    std::mutex::unlock((v21 + 64));
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  v28.__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 280, &v28);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 284, v28.__r_.__value_.__r.__words + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
  *(this + 288) = 0;
  if ((v19 & 1) == 0 && v2 < 0)
  {
    operator delete(v15);
  }

  result = realityio::WrappedRERef<REEntity *>::~WrappedRERef(&size);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247648C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a16 & 1) == 0 && a24 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a10);
  _Unwind_Resume(a1);
}

void sub_247648CC0()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x247648CB8);
}

uint64_t realityio::EntityBuilder::clear(realityio::EntityBuilder *this, realityio::Inputs *a2)
{
  result = realityio::EntityBuilder::_clearEntity(this, a2);
  if (*(this + 289) == 1)
  {
    result = *(this + 37);
    if (result)
    {
      result = RERelease();
    }

    *(this + 37) = 0;
  }

  return result;
}

void realityio::EntityBuilder::~EntityBuilder(realityio::EntityBuilder *this)
{
  realityio::EntityBuilder::~EntityBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285956D88;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 37);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 280);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

void sub_2476490E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2476492E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::ParentEntitySpawningPrimOfCurrentEntitySpawningPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285956E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void anonymous namespace::ParentEntitySpawningPrimOfCurrentEntitySpawningPrimInputDescriptor::~ParentEntitySpawningPrimOfCurrentEntitySpawningPrimInputDescriptor(_anonymous_namespace_::ParentEntitySpawningPrimOfCurrentEntitySpawningPrimInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void *anonymous namespace::ParentEntitySpawningPrimOfCurrentEntitySpawningPrimInputDescriptor::resolvedPrimPaths@<X0>(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>((a2 + 6), a1);
  if (a2 + 7 != result)
  {
    v7 = a2[3];
    if (v7)
    {
      v8 = v7 + 104 * result[5];
      v10 = *(v8 + 24);
      v9 = (v8 + 24);
      if (v10 == *a1)
      {
        result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>((a2 + 6), v9);
        if (a2 + 7 != result)
        {
          v11 = result[5];
          if (v11 < (a2[1] - *a2) >> 3)
          {
            v12 = *(*a2 + 8 * v11);
            if (v12 != -1)
            {
              v13 = a2[3];
              v14 = 0x4EC4EC4EC4EC4EC5 * ((a2[4] - v13) >> 3);
              v15 = v13 + 104 * v12;
              if (v14 <= v12)
              {
                v16 = 0;
              }

              else
              {
                v16 = v15;
              }

              return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, (v16 + 24));
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_247649738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::WrappedRERef<REEntity *> const&)::$_0,std::allocator<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::WrappedRERef<REEntity *> const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247649B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::WrappedRERef<REEntity *> const&)::$_1,std::allocator<realityio::EntityBuilder::EntityBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::WrappedRERef<REEntity *> const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REEntity *>>>::__shared_ptr_emplace[abi:ne200100]<realityio::WrappedRERef<REEntity *>&,std::allocator<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REEntity *>>>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285957078;
  std::allocator<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REEntity *>>>::construct[abi:ne200100]<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REEntity *>>,realityio::WrappedRERef<REEntity *>&>(&v4, a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REEntity *>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285957078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *std::allocator<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REEntity *>>>::construct[abi:ne200100]<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REEntity *>>,realityio::WrappedRERef<REEntity *>&>(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v6 = v4;
  if (v4)
  {
    RERetain();
    *a2 = &unk_2859570C8;
    a2[1] = v4;
    RERetain();
  }

  else
  {
    *a2 = &unk_2859570C8;
    a2[1] = 0;
  }

  return realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v6);
}

void sub_247649E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<pxrInternal__aapl__pxrReserved__::SdfPath *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859570F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::Inputs::_getValue<pxrInternal__aapl__pxrReserved__::SdfPath *>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = 0;
  v46 = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v46 = std::__shared_weak_count::lock(v8);
    if (v46)
    {
      v45 = *(a1 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v47, a2);
  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a1 + 8), &v45);
  if (v9 == v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v42, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 32));
    v14 = *(String + 23);
    if (v14 >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    if (v14 >= 0)
    {
      v16 = *(String + 23);
    }

    else
    {
      v16 = *(String + 8);
    }

    v17 = std::string::append(&v43, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v44, ")");
    goto LABEL_22;
  }

  v20 = 1;
  v21 = v9;
  do
  {
    v21 = *v21;
    --v20;
  }

  while (v21 != v10);
  if (v20)
  {
    std::operator+<char>();
    v22 = std::string::append(&v42, ") at prim path (");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 32));
    v25 = *(v24 + 23);
    if (v25 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = *(v24 + 8);
    }

    v28 = std::string::append(&v43, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v44, ") because more than one connected builder produced the same output type");
LABEL_22:
    v30 = *&v19->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[0] = v19->__r_.__value_.__r.__words[2];
    *__p = v30;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v50, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *v50;
    v31 = *&v50[24];
    *(a3 + 24) = *&v50[16];
    *(a3 + 32) = v31;
    *(a3 + 39) = *&v50[31];
    LOBYTE(v31) = v50[39];
    memset(&v50[16], 0, 24);
    *a3 = 0;
    *(a3 + 47) = v31;
    if (v49.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      v32 = v42.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v32);
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v33 = v9[5];
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  realityio::Outputs::getRawValue<pxrInternal__aapl__pxrReserved__::SdfPath *>(v35, EmptyString, v50);
  v38 = v50[0];
  if (v50[0])
  {
    *&v37 = *&v50[8];
  }

  else
  {
    *__p = *&v50[8];
    if ((v50[47] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v49, *&v50[24], *&v50[32]);
      v39 = v50[0] | (v50[47] >= 0);
    }

    else
    {
      v49 = *&v50[24];
      v39 = 1;
    }

    v37 = *__p;
    size = v49.__r_.__value_.__l.__size_;
    v35 = v49.__r_.__value_.__r.__words[0];
    LODWORD(v44.__r_.__value_.__l.__data_) = v49.__r_.__value_.__r.__words[2];
    *(v44.__r_.__value_.__r.__words + 3) = *(&v49.__r_.__value_.__r.__words[2] + 3);
    v4 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    if ((v39 & 1) == 0)
    {
      v40 = *__p;
      operator delete(*&v50[24]);
      v37 = v40;
    }
  }

  if (v34)
  {
    v41 = v37;
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    v37 = v41;
  }

  if (v38)
  {
    *a3 = 1;
    *(a3 + 8) = v37;
  }

  else
  {
    *v50 = v37;
    if (v4 < 0)
    {
      std::string::__init_copy_ctor_external(&v50[16], v35, size);
      *a3 = 0;
      *(a3 + 8) = *v50;
      *(a3 + 24) = *&v50[16];
      *(a3 + 40) = *&v50[32];
      v32 = v35;
      goto LABEL_30;
    }

    *&v50[16] = v35;
    *&v50[24] = size;
    *&v50[32] = v44.__r_.__value_.__l.__data_;
    *&v50[35] = *(v44.__r_.__value_.__r.__words + 3);
    v50[39] = v4;
    *a3 = 0;
    *(a3 + 8) = *v50;
    *(a3 + 24) = *&v50[16];
    *(a3 + 40) = *&v50[32];
  }

LABEL_49:
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void sub_24764A2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
{
  operator delete(v33);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::EntityBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::EntityBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285957178;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<realityio::EntityBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::EntityBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  v4 = REEntityCreate();
  RENetworkComponentGetComponentType();
  *buf = &unk_28594FEA8;
  v22 = buf;
  v5 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(buf, v5);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](buf);
  if (*v3)
  {
    RERelease();
  }

  *v3 = v4;
  v6 = **(a1 + 8);
  if (**(a1 + 16) == 1)
  {
    PrototypeEntityRoot = realityio::ImportSessionImpl::getPrototypeEntityRoot(*(*(**(a1 + 24) + 40) + 16));
  }

  else
  {
    PrototypeEntityRoot = *(a1 + 32);
  }

  v8 = *PrototypeEntityRoot;
  REEntitySetParent();
  *(v2 + 288) = 1;
  v9 = **(a1 + 8);
  v10 = *(a1 + 48);
  if (*(v10 + 23) < 0)
  {
    v11 = *v10;
  }

  REEntitySetName();
  if (REComponentClassFromName())
  {
    v12 = **(a1 + 8);
    v13 = REEntityGetOrAddComponentByClass();
    realityio::Builder::addComponent(v2, v13);
    Object = RECustomComponentGetObject();
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 56), buf);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(buf);
    if (*Object)
    {
      RECIntrospectionFree();
      *Object = 0;
    }

    if (Text)
    {
      strlen(Text);
      v16 = RECIntrospectionAlloc();
      *Object = v16;
      strcpy(v16, Text);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 56), buf);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v2 + 280, buf);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v2 + 284, &buf[4]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v17 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  realityio::EntityBuilder::kOutputName(v17);
  v20 = *(a1 + 8);
  realityio::Outputs::storeValue<realityio::WrappedRERef<REEntity *> &>(v19);
}