void pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(uint64_t a1, atomic_uint *a2)
{
  if (a2)
  {
    v3 = a2[2];
    if (v3 < 0)
    {
      if (v3 == -2 || (v5 = a2[2], atomic_compare_exchange_strong_explicit(a2 + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed), v5 != v3))
      {
        if ((pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked() & 1) == 0)
        {
          return;
        }
      }

      else if (v3 != -1)
      {
        return;
      }
    }

    else if (atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFF, memory_order_release) != 1)
    {
      return;
    }

    v4 = *(*a2 + 8);

    v4(a2);
  }
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  end = this->__end_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v5 = __sz >= v4;
  v6 = __sz - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::string>::__append(this, v6);
  }

  else if (!v5)
  {
    v7 = &this->__begin_[__sz];
    while (end != v7)
    {
      v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v8 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = v7;
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique() [T = float]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 4 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 4;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247496280(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy((v11 - v14), this->__begin_, v14);
    begin = this->__begin_;
    this->__begin_ = v15;
    this->__end_ = v13;
    v17 = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = 0;
    v18.__end_ = begin;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = begin;
    v18.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT::BlendShapeAnimationAssetDataT(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  v5 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v5;
  *(a1 + 40) = *(a2 + 40);
  v6 = (a2 + 48);
  v7 = *(a2 + 48);
  *(a1 + 48) = v7;
  v8 = a1 + 48;
  v9 = *(a2 + 56);
  *(a1 + 56) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 40) = v6;
    *v6 = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a1 + 40) = v8;
  }

  return a1;
}

void realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(realityio::internal::AriadneSignpostScopeGuard *this)
{
  if (realityio::internal::enableSignposts(0, 0))
  {
    v2 = (4 * *this + 4) & 0xFFFC;
    v3 = *(this + 1);
    kdebug_trace();
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(a1, result);
    return 1;
  }

  return result;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::WrappedRERef<REAsset *>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::WrappedRERef<REAsset *>>,0>(uint64_t a1)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_24749718C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputsDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285943458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::vector<std::shared_ptr<realityio::InputDescriptor const>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v5 = (v2 + 24);
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v5);
      v4 = *(v2 + 2);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_emplace<realityio::MeshPrimsBoundToSkeletalAnimationPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285942F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::InputDescriptor::InputDescriptor(uint64_t a1, __int128 *a2, uint64_t *a3, int a4)
{
  *a1 = &unk_285943030;
  v7 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v7->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  v9 = *a3;
  *(a1 + 32) = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 40) = a4;
  return a1;
}

void realityio::MeshPrimsBoundToSkeletalAnimationPrimInputDescriptor::~MeshPrimsBoundToSkeletalAnimationPrimInputDescriptor(realityio::MeshPrimsBoundToSkeletalAnimationPrimInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void realityio::MeshPrimsBoundToSkeletalAnimationPrimInputDescriptor::resolvedPrimPaths(void *a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v5)
  {
    v7 = (a2 + 8);
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 4, a1);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v7 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v7 != v4 && (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a1, v7 + 4) & 1) == 0)
    {
      v10 = v7[5];
      if (v10 != v7 + 6)
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v10 + 7);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, v10 + 8);
          std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, &v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
          v11 = v10[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v10[2];
              v13 = *v12 == v10;
              v10 = v12;
            }

            while (!v13);
          }

          v10 = v12;
        }

        while (v12 != v7 + 6);
      }
    }
  }
}

void realityio::InputDescriptor::~InputDescriptor(realityio::InputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285943030;
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

double realityio::InputDescriptor::resolvedPrimPaths@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

uint64_t std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(void *a1, unsigned int *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__construct_node_hash<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2474979C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_247497E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::OutputsDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859434B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_emplace<realityio::OutputsDescriptor>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::~__hash_table(a1 + 64);

  return std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(a1 + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v5 = v2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

std::string *std::__shared_ptr_emplace<realityio::OutputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality,std::allocator<realityio::OutputDescriptor>,0>(std::string *a1, uint64_t a2, std::string::size_type *a3, int *a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_285943508;
  std::allocator<realityio::OutputDescriptor>::construct[abi:ne200100]<realityio::OutputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality>(&v6, a1 + 1, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::OutputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285943508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::OutputDescriptor>::construct[abi:ne200100]<realityio::OutputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality>(int a1, std::string *this, uint64_t a3, std::string::size_type *a4, int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  realityio::OutputDescriptor::OutputDescriptor(this, &__p, a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2474982D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *realityio::OutputDescriptor::OutputDescriptor(std::string *this, __int128 *a2, std::string::size_type *a3, int a4)
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

  v8 = *a3;
  this[1].__r_.__value_.__r.__words[0] = *a3;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    this[1].__r_.__value_.__r.__words[0] &= 0xFFFFFFFFFFFFFFF8;
  }

  LODWORD(this[1].__r_.__value_.__r.__words[1]) = a4;
  return this;
}

void realityio::OutputDescriptor::~OutputDescriptor(realityio::OutputDescriptor *this)
{
  v1 = *(this + 3);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v2 = *(result + 8);
    if (v2 < 0)
    {
      if (v2 == -1)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }

      v3 = *(result + 8);
      atomic_compare_exchange_strong_explicit((result + 8), &v3, v2 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v2)
      {
        return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked();
      }
    }

    else
    {
      atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v7 = *(*v4 + 8);
        if (v7)
        {
          v7();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v5 += 24;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

__n128 std::__function::__func<realityio::SkeletalAnimationAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SkeletalAnimationAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859430E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::SkeletalAnimationAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SkeletalAnimationAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  if (**(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 64);
    do
    {
      v6 = *(a1 + 16);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_DetachIfNotUnique(v6);
      v7 = *(*(v6 + 4) + v2);
      v8 = *(a1 + 16);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_DetachIfNotUnique(v8);
      if (*(*(v8 + 4) + v2 + 8) >= v7)
      {
        v9 = *(a1 + 32);
        v10 = *(*(*(**(a1 + 24) + 40) + 16) + 16);
        v11 = *(a1 + 40);
        v12 = **(a1 + 48);
        ServiceLocator = REEngineGetServiceLocator();
        MEMORY[0x24C1A4230](ServiceLocator);
        if (LOBYTE(__p[0]) == 1)
        {
          realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::createTimelineDefinitionRef(&__p[1], 0, 0);
          TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
          RERelease();
          if (__p[0])
          {
            realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT(&__p[1]);
          }
        }

        else
        {
          TimelineAsset = 0;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 56), &v31);
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v31);
        v16 = String;
        if (*(String + 23) >= 0)
        {
          v17 = *(String + 23);
        }

        else
        {
          v17 = *(String + 8);
        }

        std::string::basic_string[abi:ne200100](&v32, v17 + 10);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v32;
        }

        else
        {
          v18 = v32.__r_.__value_.__r.__words[0];
        }

        if (v17)
        {
          if (v16[23] >= 0)
          {
            v19 = v16;
          }

          else
          {
            v19 = *v16;
          }

          memmove(v18, v19, v17);
        }

        strcpy(v18 + v17, "_timeline_");
        v20 = *(a1 + 8);
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(v20);
        v21 = *(v20 + 4) + v3;
        v22 = *(v21 + 23);
        if (v22 >= 0)
        {
          v23 = (*(v20 + 4) + v3);
        }

        else
        {
          v23 = *v21;
        }

        if (v22 >= 0)
        {
          v24 = *(v21 + 23);
        }

        else
        {
          v24 = *(v21 + 8);
        }

        v25 = std::string::append(&v32, v23, v24);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v34 = v25->__r_.__value_.__r.__words[2];
        *__p = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        if (v34 >= 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        realityio::Builder::addAsset(v5, TimelineAsset, v27);
        v31 = TimelineAsset;
        if (TimelineAsset)
        {
          RERetain();
        }

        v28 = *(a1 + 8);
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(v28);
        v32.__r_.__value_.__r.__words[0] = *(v28 + 4) + v3;
        v29 = std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v5 + 58), v32.__r_.__value_.__l.__data_);
        v30 = *(v29 + 56);
        if (v30 != v31)
        {
          *(v29 + 56) = v31;
          v31 = v30;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v31);
        RERelease();
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v4;
      v3 += 24;
      v2 += 16;
    }

    while (**(a1 + 8) > v4);
  }
}

void sub_247498948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p == 1)
  {
    realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT::~SkeletalAnimationAssetDataT((v21 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SkeletalAnimationAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *realityio::Builder::addAsset(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = a2;
    RERetain();
    realityio::Builder::addAsset(v4, &v5, a3);
    return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v5);
  }

  return result;
}

void sub_247498A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfTimeCode]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique() [T = std::string]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 0;
        v9 = -24 * v5;
        v10 = New;
        do
        {
          if (*(v4 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v10, *v4, *(v4 + 1));
          }

          else
          {
            v11 = *v4;
            v10->__r_.__value_.__r.__words[2] = *(v4 + 2);
            *&v10->__r_.__value_.__l.__data_ = v11;
          }

          v4 = (v4 + 24);
          ++v10;
          v8 -= 24;
        }

        while (v9 != v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void sub_247498D08(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void *pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::WrappedRERef<REAsset *>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285943178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_247499468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_247499528(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859431F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void **std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void *std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::find<realityio::BuilderAndIOName>(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }
    }

    while (v4[2] == *a2 && (v4[4] ^ a2[2]) < 8uLL);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::find<realityio::BuilderAndIOName>(void *a1, void *a2)
{
  v4 = realityio::BuilderAndIOName::Hash::operator()(a1, a2);
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
        if (i[2] == *a2 && (i[4] ^ a2[2]) < 8uLL)
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

unint64_t realityio::BuilderAndIOName::Hash::operator()(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  return (bswap64(0x9E3779B97F4A7C55 * (a2[2] & 0xFFFFFFFFFFFFFFF8)) + 0x77FA823ACE0B5A40 * (v3 ^ (v3 >> 47)) + ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) >> 2) - 0x61C8864680B583E9) ^ (0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47)));
}

uint64_t realityio::DetailedError::DetailedError(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v5;
  }

  return a1;
}

void realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v16, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v16;
    v12 = v18;
    *(a3 + 24) = v17;
    *(a3 + 32) = v12;
    *(a3 + 39) = *(&v18 + 7);
    LOBYTE(v12) = HIBYTE(v18);
    v18 = 0uLL;
    v17 = 0;
    *a3 = 0;
    *(a3 + 47) = v12;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = 1;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_247499A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t realityio::Result<std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 8);
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247499C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::SkeletalAnimationAssetBuilder::BlendShapeAnimationAssetDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285943278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::Outputs::getRawValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT const*>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_247499EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void realityio::Outputs::getRawValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_24749A038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1A90A0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_24749A0FC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C1A8E90](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C1A8EA0](v13);
  return a1;
}

void sub_24749A36C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C1A8EA0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24749A34CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_24749A5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::TextMeshAssetBuilder::kOutputName(realityio::TextMeshAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::TextMeshAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_24749A63C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::TextMeshAssetBuilder::TextMeshAssetBuilder(realityio::TextMeshAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "TextMeshAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kTextMeshAssetBuilderIdentifier);
  realityio::generateTextPrimDirtyStageSubscription(&v4);
  v8[0] = &unk_2859435E0;
  v8[3] = v8;
  v7[0] = &unk_285943660;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_24749A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v24 + 35);
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

void realityio::TextMeshAssetBuilder::run(realityio::TextMeshAssetBuilder *this, realityio::Inputs *a2)
{
  v6[9] = *MEMORY[0x277D85DE8];
  v6[4] = a2;
  v3 = (a2 + 32);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v6, v4, v3);
  v5 = *(a2 + 6);
  operator new();
}

void sub_24749AB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va1);
  std::__shared_weak_count::~__shared_weak_count(v5);
  operator delete(v7);
  std::mutex::unlock(v4 + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t *realityio::WrappedRERef<REAsset *>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      RERelease();
      v4 = *a2;
    }

    *a1 = v4;
    if (v4)
    {
      RERetain();
    }
  }

  return a1;
}

{
  v3 = *a2;
  if (*a2 != *a1)
  {
    if (*a1)
    {
      v5 = *a1;
      RERelease();
      v3 = *a2;
    }

    *a1 = v3;
    if (v3)
    {
      RERetain();
    }
  }

  return a1;
}

uint64_t realityio::TextMeshAssetBuilder::clear(realityio::TextMeshAssetBuilder *this, realityio::Inputs *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = realityio::TextMeshAssetBuilder::kOutputName(this);
  realityio::Outputs::getValue<realityio::WrappedRERef<REAsset *>>(v5, v6, v19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v19[0].__r_.__value_.__s.__data_[0])
  {
    v7 = *(a2 + 5);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v14, v8, (a2 + 32));
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v14, &v18);
    realityio::ImportSession::clearMeshAsset(v7, &v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
    v9 = v15;
    if (v15)
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
    }

    v11 = *(this + 2);
    v10 = *(this + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = realityio::TextMeshAssetBuilder::kOutputName(v9);
    std::mutex::lock((v11 + 64));
    if (v11 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v11 + 40, v12))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v11 + 40), v12);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v11, v12);
    std::mutex::unlock((v11 + 64));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  return realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(v19);
}

void sub_24749AD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::mutex::unlock(v8 + 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

void sub_24749ADFC()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x24749ADF4);
}

uint64_t realityio::Outputs::getValue<realityio::WrappedRERef<REAsset *>>@<X0>(std::mutex *a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  realityio::Outputs::getRawValue<realityio::WrappedRERef<REAsset *>>(a1, a2, v9);
  if (v9[0])
  {
    *&v7 = v10;
    if (v10)
    {
      RERetain();
      v4 = v7;
      RERetain();
    }

    else
    {
      v4 = 0;
    }

    a3->__r_.__value_.__s.__data_[0] = 1;
    a3->__r_.__value_.__l.__size_ = v4;
    v6 = 0;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v7);
  }

  else
  {
    v7 = v10;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v11;
    }

    a3->__r_.__value_.__s.__data_[0] = 0;
    *&a3->__r_.__value_.__r.__words[1] = v7;
    a3[1] = v8;
  }

  return realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(v9);
}

void sub_24749AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

void realityio::TextMeshAssetBuilder::~TextMeshAssetBuilder(void **this)
{
  realityio::TextMeshAssetBuilder::~TextMeshAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285943568;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 42));
  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 31));
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 27));
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[24];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[23];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

uint64_t std::__function::__func<realityio::TextMeshAssetBuilder::TextMeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TextMeshAssetBuilder::TextMeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24749B388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::TextMeshAssetBuilder::TextMeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TextMeshAssetBuilder::TextMeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::TextMeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextMeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859436E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::TextMeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextMeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  realityio::textInformationFromPrim(*(a1 + 8), &v13);
  realityio::Inputs::assetManager(**(a1 + 16));
  v9 = 0u;
  REStatic3DTextDefaultOptions();
  *&v3 = v17;
  *&v4 = v19;
  *&v9 = __PAIR64__(v4, v3);
  v10 = 0;
  v11 = vcvt_f32_f64(v18);
  v12 = v24;
  BYTE1(v12) = v23;
  BYTE2(v12) = v25;
  v5 = REAssetManagerMeshMemoryAssetCreate3DTextWithOptions();
  v8 = v5;
  v6 = *(v2 + 280);
  if (v6 != v5)
  {
    *(v2 + 280) = v5;
    v8 = v6;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v8);
  v7 = *(v2 + 280);
  REAssetDisableNetworkSyncing();
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_24749B62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  realityio::TextPrimInformation::~TextPrimInformation(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TextMeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TextMeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::TextPrimInformation::~TextPrimInformation(realityio::TextPrimInformation *this)
{
  v2 = *(this + 12);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 11);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 10);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::WrappedRERef<REAsset *>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285943760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::Outputs::getRawValue<realityio::WrappedRERef<REAsset *>>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v16, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v16;
    v12 = v18;
    *(a3 + 24) = v17;
    *(a3 + 32) = v12;
    *(a3 + 39) = *(&v18 + 7);
    LOBYTE(v12) = HIBYTE(v18);
    v18 = 0uLL;
    v17 = 0;
    *a3 = 0;
    *(a3 + 47) = v12;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v7 + 8);
      RERetain();
    }

    *a3 = 1;
    *(a3 + 8) = v8;
    *&v16 = 0;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v16);
  }

  std::mutex::unlock(a1 + 1);
}

void sub_24749B8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

uint64_t realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    realityio::WrappedRERef<REAsset *>::~WrappedRERef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::tokens::GeomSubsetBuilderTokens_StaticTokenType::~GeomSubsetBuilderTokens_StaticTokenType(realityio::tokens::GeomSubsetBuilderTokens_StaticTokenType *this)
{
  v5 = (this + 32);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 2);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 1);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void realityio::generateGeomSubsetDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE529E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE529E8))
  {
    operator new();
  }

  v3 = unk_27EE529E0;
  *a1 = qword_27EE529D8;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_24749BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  MEMORY[0x24C1A91B0](v27, 0x10A1C40F82F910ELL);
  *(v29 - 176) = &a26;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v29 - 176));
  MEMORY[0x24C1A91B0](v26, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v28, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE529E8);
  _Unwind_Resume(a1);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__throw_length_error[abi:ne200100]();
}

void sub_24749C358(_Unwind_Exception *a1)
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

void sub_24749C480(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::AnyValueDirtyPropertyDescriptor *,std::shared_ptr<realityio::AnyValueDirtyPropertyDescriptor>::__shared_ptr_default_delete<realityio::AnyValueDirtyPropertyDescriptor,realityio::AnyValueDirtyPropertyDescriptor>,std::allocator<realityio::AnyValueDirtyPropertyDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::AnyValueDirtyPropertyDescriptor *,std::shared_ptr<realityio::AnyValueDirtyPropertyDescriptor>::__shared_ptr_default_delete<realityio::AnyValueDirtyPropertyDescriptor,realityio::AnyValueDirtyPropertyDescriptor>,std::allocator<realityio::AnyValueDirtyPropertyDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::AnyValueDirtyPropertyDescriptor *,std::shared_ptr<realityio::AnyValueDirtyPropertyDescriptor>::__shared_ptr_default_delete<realityio::AnyValueDirtyPropertyDescriptor,realityio::AnyValueDirtyPropertyDescriptor>,std::allocator<realityio::AnyValueDirtyPropertyDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const> const*,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24749C5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(a1, a2);
  }

  std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const> const*,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const> const*,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sub_24749C768(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::TypeNameDirtyPrimDescriptor *,std::shared_ptr<realityio::TypeNameDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::TypeNameDirtyPrimDescriptor,realityio::TypeNameDirtyPrimDescriptor>,std::allocator<realityio::TypeNameDirtyPrimDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::TypeNameDirtyPrimDescriptor *,std::shared_ptr<realityio::TypeNameDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::TypeNameDirtyPrimDescriptor,realityio::TypeNameDirtyPrimDescriptor>,std::allocator<realityio::TypeNameDirtyPrimDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::TypeNameDirtyPrimDescriptor *,std::shared_ptr<realityio::TypeNameDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::TypeNameDirtyPrimDescriptor,realityio::TypeNameDirtyPrimDescriptor>,std::allocator<realityio::TypeNameDirtyPrimDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const> const*,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24749C8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>>,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const> const*,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const> const*,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>>,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>>,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sub_24749C9FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::DirtyStageDescriptor *,std::shared_ptr<realityio::DirtyStageDescriptor>::__shared_ptr_default_delete<realityio::DirtyStageDescriptor,realityio::DirtyStageDescriptor>,std::allocator<realityio::DirtyStageDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::DirtyStageDescriptor *,std::shared_ptr<realityio::DirtyStageDescriptor>::__shared_ptr_default_delete<realityio::DirtyStageDescriptor,realityio::DirtyStageDescriptor>,std::allocator<realityio::DirtyStageDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::DirtyStageDescriptor *,std::shared_ptr<realityio::DirtyStageDescriptor>::__shared_ptr_default_delete<realityio::DirtyStageDescriptor,realityio::DirtyStageDescriptor>,std::allocator<realityio::DirtyStageDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyStageDescriptor const> const*,std::shared_ptr<realityio::DirtyStageDescriptor const> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24749CB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_24749CBD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::DirtyStageSubscription *,std::shared_ptr<realityio::DirtyStageSubscription>::__shared_ptr_default_delete<realityio::DirtyStageSubscription,realityio::DirtyStageSubscription>,std::allocator<realityio::DirtyStageSubscription>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::DirtyStageSubscription *,std::shared_ptr<realityio::DirtyStageSubscription>::__shared_ptr_default_delete<realityio::DirtyStageSubscription,realityio::DirtyStageSubscription>,std::allocator<realityio::DirtyStageSubscription>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::DirtyStageSubscription *,std::shared_ptr<realityio::DirtyStageSubscription>::__shared_ptr_default_delete<realityio::DirtyStageSubscription,realityio::DirtyStageSubscription>,std::allocator<realityio::DirtyStageSubscription>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void realityio::StageUpAxisBuilder::StageUpAxisBuilder(realityio::StageUpAxisBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v6[26] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "StageUpAxisBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kStageUpAxisBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE52A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A00))
  {
    operator new();
  }

  v4[0] = _MergedGlobals_0;
  v4[1] = *algn_27EE529F8;
  if (*algn_27EE529F8)
  {
    atomic_fetch_add_explicit((*algn_27EE529F8 + 8), 1uLL, memory_order_relaxed);
  }

  realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(this, a2, v6, __p, v4);
}

void sub_24749CFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  v39 = *(v37 - 72);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  *(v37 - 104) = &a25;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v37 - 104));
  a25 = &a32;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a25);
  v40 = *(v37 - 88);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if ((a28 & 7) != 0)
  {
    atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A91B0](v36, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE52A00);
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

uint64_t realityio::StageUpAxisBuilder::run(realityio::StageUpAxisBuilder *this, realityio::Inputs *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *buf = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(buf);
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v14, buf);
  pxrInternal__aapl__pxrReserved__::UsdGeomGetStageUpAxis();
  v3 = v15;
  if (v15 && atomic_fetch_add_explicit(v15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(buf);
  v5 = realityio::EntityBuilder::kInputName(v4);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v5, &v14);
  if (v14)
  {
    v6 = v15;
    v13 = v15;
    if (v15)
    {
      RERetain();
      v7 = atomic_load(MEMORY[0x277D86550]);
      if (v7)
      {
        v8 = -0.7854;
        if ((*(v7 + 1360) ^ v16) >= 8)
        {
          v8 = 0.0;
        }

        __sincosf_stret(v8);
        v9 = *(a2 + 6);
        operator new();
      }

      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = *(realityio::logObjects(v6) + 24);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_DEFAULT, "Stopping operation to set up axis transform because entity no longer exists", buf, 2u);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v14);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24749D3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a11);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a12);
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void realityio::StageUpAxisBuilder::~StageUpAxisBuilder(realityio::StageUpAxisBuilder *this)
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

void sub_24749D650(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((*v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x24C1A91B0](v1, 0x1060C40E5A1EACFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::DirtyMetadataDescriptor *,std::shared_ptr<realityio::DirtyMetadataDescriptor>::__shared_ptr_default_delete<realityio::DirtyMetadataDescriptor,realityio::DirtyMetadataDescriptor>,std::allocator<realityio::DirtyMetadataDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *std::__shared_ptr_pointer<realityio::DirtyMetadataDescriptor *,std::shared_ptr<realityio::DirtyMetadataDescriptor>::__shared_ptr_default_delete<realityio::DirtyMetadataDescriptor,realityio::DirtyMetadataDescriptor>,std::allocator<realityio::DirtyMetadataDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::DirtyMetadataDescriptor *,std::shared_ptr<realityio::DirtyMetadataDescriptor>::__shared_ptr_default_delete<realityio::DirtyMetadataDescriptor,realityio::DirtyMetadataDescriptor>,std::allocator<realityio::DirtyMetadataDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const> const*,std::shared_ptr<realityio::DirtyMetadataDescriptor const> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24749D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(a1, a2);
  }

  std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>,std::shared_ptr<realityio::DirtyMetadataDescriptor const> const*,std::shared_ptr<realityio::DirtyMetadataDescriptor const> const*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::Tf_Remnant::Register((v3 + 16), &v7);
    v4 = a1[1];
    a1[1] = v7;
    v7 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = v7;
      if (v7 && atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  return a1;
}

void sub_24749D9B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::Tf_Remnant::Register@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = atomic_load(a1);
  if (!result)
  {
    operator new();
  }

  *a2 = result;
  atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  return result;
}

void realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    v43 = std::__shared_weak_count::lock(v6);
    if (v43)
    {
      v42 = *(a1 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v44, a2);
  v7 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a1 + 8), &v42);
  if (v7 == v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v39, ") at prim path (");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 32));
    v12 = *(String + 23);
    if (v12 >= 0)
    {
      v13 = String;
    }

    else
    {
      v13 = *String;
    }

    if (v12 >= 0)
    {
      v14 = *(String + 23);
    }

    else
    {
      v14 = *(String + 8);
    }

    v15 = std::string::append(&v40, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v41, ")");
LABEL_22:
    v28 = *&v17->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__r.__words[2];
    *__p = v28;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v37, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *&v37.__r_.__value_.__l.__data_;
    v29 = v38.__r_.__value_.__r.__words[0];
    *(a3 + 24) = *(&v37.__r_.__value_.__l + 2);
    *(a3 + 32) = v29;
    *(a3 + 39) = *(v38.__r_.__value_.__r.__words + 7);
    LOBYTE(v29) = v38.__r_.__value_.__s.__data_[15];
    *&v38.__r_.__value_.__l.__data_ = 0uLL;
    v37.__r_.__value_.__r.__words[2] = 0;
    *a3 = 0;
    *(a3 + 47) = v29;
    if (v36.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    goto LABEL_44;
  }

  v18 = 1;
  v19 = v7;
  do
  {
    v19 = *v19;
    --v18;
  }

  while (v19 != v8);
  if (v18)
  {
    std::operator+<char>();
    v20 = std::string::append(&v39, ") at prim path (");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 32));
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = *v22;
    }

    if (v23 >= 0)
    {
      v25 = *(v22 + 23);
    }

    else
    {
      v25 = *(v22 + 8);
    }

    v26 = std::string::append(&v40, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v41, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v30 = v7[5];
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v7[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v7[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  realityio::Outputs::getValue<realityio::WrappedRERef<REEntity *>>(v32, EmptyString, &v37);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v37.__r_.__value_.__s.__data_[0])
  {
    size = v37.__r_.__value_.__l.__size_;
    v37.__r_.__value_.__l.__size_ = 0;
    *a3 = 1;
    *(a3 + 8) = size;
    __p[0] = 0;
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(__p);
  }

  else
  {
    *__p = *&v37.__r_.__value_.__r.__words[1];
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    }

    else
    {
      v36 = v38;
    }

    *a3 = 0;
    *(a3 + 8) = *__p;
    *(a3 + 24) = v36;
  }

  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v37);
LABEL_44:
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }
}

void sub_24749DE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a14);
  v33 = *(v31 - 40);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(v31 - 48);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::Outputs::getValue<realityio::WrappedRERef<REEntity *>>@<X0>(std::mutex *a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  realityio::Outputs::getRawValue<realityio::WrappedRERef<REEntity *>>(a1, a2, v9);
  if (v9[0])
  {
    *&v7 = v10;
    if (v10)
    {
      RERetain();
      v4 = v7;
      RERetain();
    }

    else
    {
      v4 = 0;
    }

    a3->__r_.__value_.__s.__data_[0] = 1;
    a3->__r_.__value_.__l.__size_ = v4;
    v6 = 0;
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v6);
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v7);
  }

  else
  {
    v7 = v10;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v11;
    }

    a3->__r_.__value_.__s.__data_[0] = 0;
    *&a3->__r_.__value_.__r.__words[1] = v7;
    a3[1] = v8;
  }

  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v9);
}

void sub_24749DFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

void realityio::Outputs::getRawValue<realityio::WrappedRERef<REEntity *>>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v16, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v16;
    v12 = v18;
    *(a3 + 24) = v17;
    *(a3 + 32) = v12;
    *(a3 + 39) = *(&v18 + 7);
    LOBYTE(v12) = HIBYTE(v18);
    v18 = 0uLL;
    v17 = 0;
    *a3 = 0;
    *(a3 + 47) = v12;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v7 + 8);
      RERetain();
    }

    *a3 = 1;
    *(a3 + 8) = v8;
    *&v16 = 0;
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v16);
  }

  std::mutex::unlock(a1 + 1);
}

void sub_24749E100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

uint64_t realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void *realityio::WrappedRERef<REEntity *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdGeomTokensType::~UsdGeomTokensType(pxrInternal__aapl__pxrReserved__::UsdGeomTokensType *this)
{
  v203 = (this + 1616);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v203);
  v2 = *(this + 201);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 200);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 199);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 198);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 197);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 196);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 195);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 194);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 193);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 192);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 191);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 190);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 189);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 188);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 187);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 186);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 185);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 184);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 183);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 182);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 181);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 180);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 179);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 178);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 177);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 176);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 175);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 174);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 173);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 172);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 171);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 170);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 169);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 168);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 167);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 166);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 165);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 164);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 163);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 162);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(this + 161);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(this + 160);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(this + 159);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(this + 158);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(this + 157);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(this + 156);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(this + 155);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(this + 154);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(this + 153);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(this + 152);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(this + 151);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(this + 150);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(this + 149);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(this + 148);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(this + 147);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(this + 146);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(this + 145);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(this + 144);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(this + 143);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(this + 142);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(this + 141);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(this + 140);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(this + 139);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(this + 138);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(this + 137);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(this + 136);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(this + 135);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(this + 134);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(this + 133);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(this + 132);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(this + 131);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(this + 130);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(this + 129);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(this + 128);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(this + 127);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(this + 126);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(this + 125);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(this + 124);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(this + 123);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(this + 122);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(this + 121);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = *(this + 120);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = *(this + 119);
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = *(this + 118);
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = *(this + 117);
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = *(this + 116);
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v88 = *(this + 115);
  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v89 = *(this + 114);
  if ((v89 & 7) != 0)
  {
    atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = *(this + 113);
  if ((v90 & 7) != 0)
  {
    atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v91 = *(this + 112);
  if ((v91 & 7) != 0)
  {
    atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v92 = *(this + 111);
  if ((v92 & 7) != 0)
  {
    atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v93 = *(this + 110);
  if ((v93 & 7) != 0)
  {
    atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v94 = *(this + 109);
  if ((v94 & 7) != 0)
  {
    atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v95 = *(this + 108);
  if ((v95 & 7) != 0)
  {
    atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v96 = *(this + 107);
  if ((v96 & 7) != 0)
  {
    atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v97 = *(this + 106);
  if ((v97 & 7) != 0)
  {
    atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v98 = *(this + 105);
  if ((v98 & 7) != 0)
  {
    atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v99 = *(this + 104);
  if ((v99 & 7) != 0)
  {
    atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100 = *(this + 103);
  if ((v100 & 7) != 0)
  {
    atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v101 = *(this + 102);
  if ((v101 & 7) != 0)
  {
    atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v102 = *(this + 101);
  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v103 = *(this + 100);
  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v104 = *(this + 99);
  if ((v104 & 7) != 0)
  {
    atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = *(this + 98);
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v106 = *(this + 97);
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v107 = *(this + 96);
  if ((v107 & 7) != 0)
  {
    atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v108 = *(this + 95);
  if ((v108 & 7) != 0)
  {
    atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v109 = *(this + 94);
  if ((v109 & 7) != 0)
  {
    atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v110 = *(this + 93);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v111 = *(this + 92);
  if ((v111 & 7) != 0)
  {
    atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v112 = *(this + 91);
  if ((v112 & 7) != 0)
  {
    atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v113 = *(this + 90);
  if ((v113 & 7) != 0)
  {
    atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v114 = *(this + 89);
  if ((v114 & 7) != 0)
  {
    atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v115 = *(this + 88);
  if ((v115 & 7) != 0)
  {
    atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v116 = *(this + 87);
  if ((v116 & 7) != 0)
  {
    atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v117 = *(this + 86);
  if ((v117 & 7) != 0)
  {
    atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v118 = *(this + 85);
  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v119 = *(this + 84);
  if ((v119 & 7) != 0)
  {
    atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v120 = *(this + 83);
  if ((v120 & 7) != 0)
  {
    atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v121 = *(this + 82);
  if ((v121 & 7) != 0)
  {
    atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v122 = *(this + 81);
  if ((v122 & 7) != 0)
  {
    atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v123 = *(this + 80);
  if ((v123 & 7) != 0)
  {
    atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v124 = *(this + 79);
  if ((v124 & 7) != 0)
  {
    atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v125 = *(this + 78);
  if ((v125 & 7) != 0)
  {
    atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v126 = *(this + 77);
  if ((v126 & 7) != 0)
  {
    atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v127 = *(this + 76);
  if ((v127 & 7) != 0)
  {
    atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v128 = *(this + 75);
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v129 = *(this + 74);
  if ((v129 & 7) != 0)
  {
    atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v130 = *(this + 73);
  if ((v130 & 7) != 0)
  {
    atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v131 = *(this + 72);
  if ((v131 & 7) != 0)
  {
    atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v132 = *(this + 71);
  if ((v132 & 7) != 0)
  {
    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v133 = *(this + 70);
  if ((v133 & 7) != 0)
  {
    atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v134 = *(this + 69);
  if ((v134 & 7) != 0)
  {
    atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v135 = *(this + 68);
  if ((v135 & 7) != 0)
  {
    atomic_fetch_add_explicit((v135 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v136 = *(this + 67);
  if ((v136 & 7) != 0)
  {
    atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v137 = *(this + 66);
  if ((v137 & 7) != 0)
  {
    atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v138 = *(this + 65);
  if ((v138 & 7) != 0)
  {
    atomic_fetch_add_explicit((v138 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v139 = *(this + 64);
  if ((v139 & 7) != 0)
  {
    atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v140 = *(this + 63);
  if ((v140 & 7) != 0)
  {
    atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v141 = *(this + 62);
  if ((v141 & 7) != 0)
  {
    atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v142 = *(this + 61);
  if ((v142 & 7) != 0)
  {
    atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v143 = *(this + 60);
  if ((v143 & 7) != 0)
  {
    atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v144 = *(this + 59);
  if ((v144 & 7) != 0)
  {
    atomic_fetch_add_explicit((v144 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v145 = *(this + 58);
  if ((v145 & 7) != 0)
  {
    atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v146 = *(this + 57);
  if ((v146 & 7) != 0)
  {
    atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v147 = *(this + 56);
  if ((v147 & 7) != 0)
  {
    atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v148 = *(this + 55);
  if ((v148 & 7) != 0)
  {
    atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v149 = *(this + 54);
  if ((v149 & 7) != 0)
  {
    atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v150 = *(this + 53);
  if ((v150 & 7) != 0)
  {
    atomic_fetch_add_explicit((v150 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v151 = *(this + 52);
  if ((v151 & 7) != 0)
  {
    atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v152 = *(this + 51);
  if ((v152 & 7) != 0)
  {
    atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v153 = *(this + 50);
  if ((v153 & 7) != 0)
  {
    atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v154 = *(this + 49);
  if ((v154 & 7) != 0)
  {
    atomic_fetch_add_explicit((v154 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v155 = *(this + 48);
  if ((v155 & 7) != 0)
  {
    atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v156 = *(this + 47);
  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v157 = *(this + 46);
  if ((v157 & 7) != 0)
  {
    atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v158 = *(this + 45);
  if ((v158 & 7) != 0)
  {
    atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v159 = *(this + 44);
  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v160 = *(this + 43);
  if ((v160 & 7) != 0)
  {
    atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v161 = *(this + 42);
  if ((v161 & 7) != 0)
  {
    atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v162 = *(this + 41);
  if ((v162 & 7) != 0)
  {
    atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v163 = *(this + 40);
  if ((v163 & 7) != 0)
  {
    atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v164 = *(this + 39);
  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v165 = *(this + 38);
  if ((v165 & 7) != 0)
  {
    atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v166 = *(this + 37);
  if ((v166 & 7) != 0)
  {
    atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v167 = *(this + 36);
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v168 = *(this + 35);
  if ((v168 & 7) != 0)
  {
    atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v169 = *(this + 34);
  if ((v169 & 7) != 0)
  {
    atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v170 = *(this + 33);
  if ((v170 & 7) != 0)
  {
    atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v171 = *(this + 32);
  if ((v171 & 7) != 0)
  {
    atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v172 = *(this + 31);
  if ((v172 & 7) != 0)
  {
    atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v173 = *(this + 30);
  if ((v173 & 7) != 0)
  {
    atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v174 = *(this + 29);
  if ((v174 & 7) != 0)
  {
    atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v175 = *(this + 28);
  if ((v175 & 7) != 0)
  {
    atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v176 = *(this + 27);
  if ((v176 & 7) != 0)
  {
    atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v177 = *(this + 26);
  if ((v177 & 7) != 0)
  {
    atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v178 = *(this + 25);
  if ((v178 & 7) != 0)
  {
    atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v179 = *(this + 24);
  if ((v179 & 7) != 0)
  {
    atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v180 = *(this + 23);
  if ((v180 & 7) != 0)
  {
    atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v181 = *(this + 22);
  if ((v181 & 7) != 0)
  {
    atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v182 = *(this + 21);
  if ((v182 & 7) != 0)
  {
    atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v183 = *(this + 20);
  if ((v183 & 7) != 0)
  {
    atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v184 = *(this + 19);
  if ((v184 & 7) != 0)
  {
    atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v185 = *(this + 18);
  if ((v185 & 7) != 0)
  {
    atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v186 = *(this + 17);
  if ((v186 & 7) != 0)
  {
    atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v187 = *(this + 16);
  if ((v187 & 7) != 0)
  {
    atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v188 = *(this + 15);
  if ((v188 & 7) != 0)
  {
    atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v189 = *(this + 14);
  if ((v189 & 7) != 0)
  {
    atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v190 = *(this + 13);
  if ((v190 & 7) != 0)
  {
    atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v191 = *(this + 12);
  if ((v191 & 7) != 0)
  {
    atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v192 = *(this + 11);
  if ((v192 & 7) != 0)
  {
    atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v193 = *(this + 10);
  if ((v193 & 7) != 0)
  {
    atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v194 = *(this + 9);
  if ((v194 & 7) != 0)
  {
    atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v195 = *(this + 8);
  if ((v195 & 7) != 0)
  {
    atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v196 = *(this + 7);
  if ((v196 & 7) != 0)
  {
    atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v197 = *(this + 6);
  if ((v197 & 7) != 0)
  {
    atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v198 = *(this + 5);
  if ((v198 & 7) != 0)
  {
    atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v199 = *(this + 4);
  if ((v199 & 7) != 0)
  {
    atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v200 = *(this + 3);
  if ((v200 & 7) != 0)
  {
    atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v201 = *(this + 2);
  if ((v201 & 7) != 0)
  {
    atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v202 = *(this + 1);
  if ((v202 & 7) != 0)
  {
    atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

__n128 std::__function::__func<realityio::StageUpAxisBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::StageUpAxisBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285943AB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::StageUpAxisBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::StageUpAxisBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 8);
  RETransformComponentGetComponentType();
  v3 = *(a1 + 16);
  v12[0] = &unk_285943B20;
  v12[1] = v3;
  v12[3] = v12;
  v4 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v12, v4);
  RENetworkMarkComponentDirty();
  v5 = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v12);
  v6 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = **(a1 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = (v7 + 16);
      if (*(v7 + 39) < 0)
      {
        v8 = *v8;
      }
    }

    else
    {
      v8 = "";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_INFO, "Updating root entity orientation based on upAxis: %s", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<realityio::StageUpAxisBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::StageUpAxisBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(REComponent *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio18StageUpAxisBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285943B20;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio18StageUpAxisBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  return RETransformComponentSetLocalOrientation();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio18StageUpAxisBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio18StageUpAxisBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t realityio::SpatialAudioComponentBuilder::kOutputName(realityio::SpatialAudioComponentBuilder *this)
{
  {
    operator new();
  }

  return realityio::SpatialAudioComponentBuilder::kOutputName(void)::kOutputName;
}

void sub_24749FA38(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::SpatialAudioComponentBuilder::SpatialAudioComponentBuilder(realityio::SpatialAudioComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  __src[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__src, "SpatialAudioComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kSpatialAudioComponentBuilderIdentifier);
  realityio::generateSpatialAudioDirtyStageSubscription(&v4);
  v7[0] = &unk_285943CD0;
  v7[3] = v7;
  v6[0] = &unk_285943DE0;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_24749FBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a18);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a22);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::SpatialAudioComponentBuilder::run(realityio::SpatialAudioComponentBuilder *this, std::__shared_weak_count **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = realityio::EntityBuilder::kInputName(this);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v3, v36);
  if (v36[0])
  {
    v35 = v37;
    if (v37)
    {
      RERetain();
      v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&(*a2)->__shared_owners_);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v31, v4, (a2 + 4));
      v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&(*a2)->__shared_owners_);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v5);
      if (v6 != 0.0)
      {
        pxrInternal__aapl__pxrReserved__::UsdStage::GetEndTimeCode(v5);
        pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
        v7 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
        if (!v7)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        realityio::getAttributeValue<double>(&v31, (v7 + 128), &buf);
        if ((buf & 1) == 0 && v45 < 0)
        {
          operator delete(v44);
        }

        v8 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
        if (!v8)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        realityio::getAttributeValue<double>(&v31, (v8 + 8), &buf);
        if ((buf & 1) == 0 && v45 < 0)
        {
          operator delete(v44);
        }

        v10 = realityio::SpatialAudioFileAssetBuilder::kOutputName(v9);
        MEMORY[0x24C1A5E00](v38, v10);
        buf = 0uLL;
        v11 = a2[3];
        if (v11)
        {
          *(&buf + 1) = std::__shared_weak_count::lock(v11);
          if (*(&buf + 1))
          {
            *&buf = a2[2];
          }
        }

        v43 = *v38;
        if ((v38[0] & 7) != 0)
        {
          v12 = *v38 & 0xFFFFFFFFFFFFFFF8;
          if ((atomic_fetch_add_explicit((*v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v43 = v12;
          }
        }

        v13 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a2[1], &buf);
        v15 = v14;
        if ((v43 & 7) != 0)
        {
          atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v16 = *(&buf + 1);
        if (*(&buf + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
        }

        if ((v38[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13 == v15)
        {
          v17 = *(realityio::logObjects(v16) + 24);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_247485000, v17, OS_LOG_TYPE_ERROR, "Stopping operation to set spatial audio component because audio file asset does not exist", &buf, 2u);
          }
        }

        else
        {
          v25 = realityio::SpatialAudioFileAssetBuilder::kOutputName(v16);
          realityio::Inputs::_getValue<REAsset *>(a2, v25, &buf);
          if (buf)
          {
            v30 = *(&buf + 1);
            if (*(&buf + 1))
            {
              realityio::Inputs::prim(a2, v38);
              v27 = atomic_load(&realityio::tokens::SpatialAudioBuilderTokens);
              if (v27)
              {
                pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v29, v38, (v27 + 104));
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

                pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
              }

              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SpatialAudioBuilderTokens_StaticTokenType>>::_TryToCreateData();
            }
          }

          else
          {
            v30 = 0;
          }

          v28 = *(realityio::logObjects(v26) + 24);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *v38 = 0;
            _os_log_error_impl(&dword_247485000, v28, OS_LOG_TYPE_ERROR, "Stopping operation to set spatial audio component because audio file asset does not exist", v38, 2u);
          }

          if ((buf & 1) == 0 && v45 < 0)
          {
            operator delete(v44);
          }
        }
      }

      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
      if (v32)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
      }

      goto LABEL_35;
    }
  }

  else
  {
    v35 = 0;
  }

  v18 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&(*a2)->__shared_owners_);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&buf, v18, (a2 + 4));
  PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&buf);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
  v20 = *(&buf + 1);
  if (*(&buf + 1))
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
  }

  v21 = *(realityio::logObjects(v20) + 24);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = Text;
    _os_log_error_impl(&dword_247485000, v21, OS_LOG_TYPE_ERROR, "Unable to create audio entity at path (%s) because the parent entity does not exist.\n", &buf, 0xCu);
  }

LABEL_35:
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v35);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v36);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474A0644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int16 a43, char a44, char a45)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a38);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a42);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a43);
  _Unwind_Resume(a1);
}

void std::vector<float>::resize(void *a1, unint64_t a2)
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
    std::vector<float>::__append(a1, a2 - v2);
  }
}

void realityio::getAttributeValue<double>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v34.__type_name = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(&v34))
      {
        v7 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<double>(&v34);
        *a3 = 1;
        *(a3 + 8) = v7;
        goto LABEL_44;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v34);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827A8], v12))
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<double>(&v34);
        v33.__r_.__value_.__l.__size_ = 0;
        if (!v13[1])
        {
          goto LABEL_39;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v35, &v33);
        v14 = v13[1];
        v15 = ~*(v13 + 2);
        v33.__r_.__value_.__l.__size_ = v14;
        if ((v15 & 3) != 0)
        {
          (*((v14 & 0xFFFFFFFFFFFFFFF8) + 24))(v13, &v33);
        }

        else
        {
          v33.__r_.__value_.__r.__words[0] = *v13;
        }

        if (*(&v35 + 1))
        {
          (*(*(&v35 + 1) + 32))(&v35);
        }

        if (v33.__r_.__value_.__l.__size_)
        {
          v25 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<double>(&v33);
          *a3 = 1;
          *(a3 + 8) = v25;
        }

        else
        {
LABEL_39:
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v35, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v35;
          v27 = v37;
          *(a3 + 24) = v36;
          *(a3 + 32) = v27;
          *(a3 + 39) = *(&v37 + 7);
          LOBYTE(v27) = HIBYTE(v37);
          v37 = 0uLL;
          v36 = 0;
          *a3 = 0;
          *(a3 + 47) = v27;
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v33);
        goto LABEL_44;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v35, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v35;
      v24 = v37;
      *(a3 + 24) = v36;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v37 + 7);
      LOBYTE(v24) = HIBYTE(v37);
      v37 = 0uLL;
      v36 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
LABEL_44:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v34);
        goto LABEL_45;
      }

      v23 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v16 = std::string::append(&v30, ") at the given time: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v29, *a2);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v29;
      }

      else
      {
        v18 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v29.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v33, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v32 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v35, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v35;
      v22 = v37;
      *(a3 + 24) = v36;
      *(a3 + 32) = v22;
      *(a3 + 39) = *(&v37 + 7);
      LOBYTE(v22) = HIBYTE(v37);
      v37 = 0uLL;
      v36 = 0;
      *a3 = 0;
      *(a3 + 47) = v22;
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v23 = v30.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    goto LABEL_44;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v35, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v35;
  v10 = v37;
  *(a3 + 24) = v36;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v37 + 7);
  LOBYTE(v10) = HIBYTE(v37);
  v37 = 0uLL;
  v36 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_45:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_2474A0CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v32 = *(v30 - 72);
  if (v32)
  {
    (*(v32 + 32))(v30 - 80);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v30 - 96));
  _Unwind_Resume(a1);
}

void createSampledAttributeAnimationTimelineAsset(void *a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = a2;
  *a1 = 0;
  if (a3[1] == *a3)
  {
    AudioAnimation = RETimelineDefinitionCreateAudioAnimation();
    if (v9)
    {
      RERelease();
    }

    v9 = AudioAnimation;
  }

  else
  {
    SampledFloatAnimation = RETimelineDefinitionCreateSampledFloatAnimation();
    if (v9)
    {
      RERelease();
    }

    v9 = SampledFloatAnimation;
    v6 = a3[1] - *a3;
    RETimelineDefinitionSetFloatValues();
    RETimelineDefinitionSetFrameInterval();
  }

  RETimelineDefinitionSetFillMode();
  RETimelineDefinitionSetStartTime();
  RETimelineDefinitionSetEndTime();
  RETimelineDefinitionSetTargetPath();
  v8 = *(a2 + 48);
  operator new();
}

void sub_2474A0F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(va);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v2);
  _Unwind_Resume(a1);
}

uint64_t realityio::SpatialAudioComponentBuilder::deleteAnimationData(uint64_t this)
{
  v1 = *(this + 280);
  if (v1)
  {
    v2 = this;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1 + 2);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1 + 1);
    v3 = realityio::WrappedRERef<REEntity *>::~WrappedRERef(v1);
    this = MEMORY[0x24C1A91B0](v3, 0x1020C403044AE7CLL);
    *(v2 + 280) = 0;
  }

  return this;
}

uint64_t realityio::SpatialAudioComponentBuilder::clear(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  v5 = a2;
  v6[0] = &unk_285944060;
  v6[1] = &v5;
  v6[2] = a1;
  v6[3] = v6;
  (*(*v2 + 16))(v2, v6);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474A117C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::SpatialAudioComponentBuilder::~SpatialAudioComponentBuilder(realityio::SpatialAudioComponentBuilder *this)
{
  realityio::SpatialAudioComponentBuilder::~SpatialAudioComponentBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285943BD8;
  realityio::SpatialAudioComponentBuilder::deleteAnimationData(this);
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v3 = *(this + 26);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 23);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

__n128 std::__function::__func<createSampledAttributeAnimationTimelineAsset(realityio::Inputs *,std::vector<float> &,double,double,double,char const*,char const*)::$_0,std::allocator<createSampledAttributeAnimationTimelineAsset(realityio::Inputs *,std::vector<float> &,double,double,double,char const*,char const*)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285943C50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<createSampledAttributeAnimationTimelineAsset(realityio::Inputs *,std::vector<float> &,double,double,double,char const*,char const*)::$_0,std::allocator<createSampledAttributeAnimationTimelineAsset(realityio::Inputs *,std::vector<float> &,double,double,double,char const*,char const*)::$_0>,void ()(void)>::operator()(void **a1)
{
  v2 = *(*(*(*a1[1] + 40) + 16) + 16);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v4 = a1[2];
  v5 = *a1[3];
  TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
  result = *v4;
  if (*v4)
  {
    result = RERelease();
  }

  *v4 = TimelineAsset;
  return result;
}

uint64_t std::__function::__func<createSampledAttributeAnimationTimelineAsset(realityio::Inputs *,std::vector<float> &,double,double,double,char const*,char const*)::$_0,std::allocator<createSampledAttributeAnimationTimelineAsset(realityio::Inputs *,std::vector<float> &,double,double,double,char const*,char const*)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT::SpatialAudioComponentDataT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  *a1 = a2;
  if (a2)
  {
    RERetain();
  }

  *(a1 + 8) = a3;
  if (a3)
  {
    RERetain();
  }

  *(a1 + 16) = a4;
  if (a4)
  {
    RERetain();
  }

  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  return a1;
}

void sub_2474A1430(_Unwind_Exception *a1)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v2);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

void sub_2474A1738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<realityio::CurrentPrimInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality,std::allocator<realityio::CurrentPrimInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285943D40;
  std::allocator<realityio::CurrentPrimInputDescriptor>::construct[abi:ne200100]<realityio::CurrentPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(&v6, a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::CurrentPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285943D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::CurrentPrimInputDescriptor>::construct[abi:ne200100]<realityio::CurrentPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  realityio::CurrentPrimInputDescriptor::CurrentPrimInputDescriptor(a2, &__p, a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2474A1A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::CurrentPrimInputDescriptor::CurrentPrimInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285943D90;
  return a1;
}

void sub_2474A1AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::CurrentPrimInputDescriptor::~CurrentPrimInputDescriptor(realityio::CurrentPrimInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::CurrentPrimInputDescriptor::resolvedPrimPaths@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a2, a1);
}

void sub_2474A1D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<REComponentClass *>::__assign_with_size[abi:ne200100]<REComponentClass * const*,REComponentClass * const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<REComponentClass *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<REComponentClass *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void realityio::getAttributeValue<double>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<double>(&__p, a3);
      if ((*a3 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v15 = *(a3 + 24);
          v14 = a3 + 24;
          v13 = v15;
          if (*(v14 + 23) >= 0)
          {
            v13 = v14;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v16);
      *(a3 + 8) = *buf;
      v11 = v22;
      *(a3 + 24) = *&buf[16];
      *(a3 + 32) = v11;
      *(a3 + 39) = *(&v22 + 7);
      LOBYTE(v11) = HIBYTE(v22);
      v22 = 0uLL;
      *&buf[16] = 0;
      *a3 = 0;
      *(a3 + 47) = v11;
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a3 + 8) = *buf;
    v10 = v22;
    *(a3 + 24) = *&buf[16];
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v22 + 7);
    LOBYTE(v10) = HIBYTE(v22);
    v22 = 0uLL;
    *&buf[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if ((v19[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2474A2248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((*v5 & 1) == 0 && *(v5 + 47) < 0)
  {
    operator delete(*(v5 + 24));
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<double>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<double>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2474A2428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::Inputs::_getValue<REAsset *>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

  realityio::Outputs::getRawValue<REAsset *>(v35, EmptyString, v50);
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

void sub_2474A2884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
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

void realityio::Outputs::getRawValue<REAsset *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474A2A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdMediaTokensType::~UsdMediaTokensType(pxrInternal__aapl__pxrReserved__::UsdMediaTokensType *this)
{
  v22 = (this + 168);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v22);
  v2 = *(this + 20);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 19);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 18);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 17);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 16);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 15);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 14);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 13);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 12);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 10);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 9);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 8);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 7);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 6);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 5);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 4);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 3);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 2);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 1);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827A8]);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<double>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<double>(std::type_info *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(&v8, MEMORY[0x277D827A8], a1, v2);
    if (&v8 != a1)
    {
      if (v9)
      {
        pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v10, a1);
        v3 = v9;
        v4 = ~v9;
        a1->__type_name = v9;
        if ((v4 & 3) != 0)
        {
          (*((v3 & 0xFFFFFFFFFFFFFFF8) + 40))(&v8, a1);
        }

        else
        {
          a1->__vftable = v8;
        }

        v9 = 0;
        if (v11)
        {
          (*(v11 + 32))(v10);
        }
      }

      else
      {
        type_name = a1->__type_name;
        if (type_name && (a1->__type_name & 3) != 3)
        {
          (*((type_name & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
        }

        a1->__type_name = 0;
      }
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2474A3078(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<double>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (~v3 & 3) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 8) = v5;
    if (v5)
    {
      (*(v5 + 40))(a2, a1);
    }
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = (*(this + 1) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(this);
  }

  *(this + 1) = 0;
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285943E60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

__n128 std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285943EE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  REAudioAnimationComponentGetComponentType();
  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  operator new();
}

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285943F50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  v4 = **(a1 + 16);
  REAudioAnimationComponentSetAudioAsset();
  v5 = **(a1 + 24);
  REAudioAnimationComponentSetMediaOffset();
  v6.n128_u32[0] = **(a1 + 32);

  return MEMORY[0x282153B38](v3, v6);
}

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *realityio::Builder::addComponent(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    Class = REComponentGetClass();
    return std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>((v2 + 5), &Class);
  }

  return result;
}

void *std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

__n128 std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#2},std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#2}>,void ()(REComponent *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285943FD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#2},std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#2}>,void ()(REComponent *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  v4 = **(a1 + 16);

  return MEMORY[0x282153C58](v3, v4);
}

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#2},std::allocator<realityio::SpatialAudioComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(REComponent *)#2}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::SpatialAudioComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285944060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::SpatialAudioComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v6 = realityio::SpatialAudioComponentBuilder::kOutputName(a1);
  v53 = 0;
  v54 = 0;
  v7 = *(v5 + 24);
  if (v7)
  {
    v54 = std::__shared_weak_count::lock(v7);
    if (v54)
    {
      v53 = *(v5 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v55, v6);
  v8 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v5 + 8), &v53);
  if (v8 == v9)
  {
    std::operator+<char>();
    v10 = std::string::append(&v50, ") at prim path (");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v5 + 32));
    v13 = *(String + 23);
    if (v13 >= 0)
    {
      v14 = String;
    }

    else
    {
      v14 = *String;
    }

    if (v13 >= 0)
    {
      v15 = *(String + 23);
    }

    else
    {
      v15 = *(String + 8);
    }

    v16 = std::string::append(&v51, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v52, ")");
LABEL_22:
    v29 = *&v18->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[0] = v18->__r_.__value_.__r.__words[2];
    *__p = v29;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v58, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    v30 = *&v58[16];
    v2 = v59.__r_.__value_.__s.__data_[15];
    *&v58[16] = 0;
    *&v59.__r_.__value_.__l.__data_ = 0uLL;
    if (v57.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v31 = 0;
    goto LABEL_31;
  }

  v19 = 1;
  v20 = v8;
  do
  {
    v20 = *v20;
    --v19;
  }

  while (v20 != v9);
  if (v19)
  {
    std::operator+<char>();
    v21 = std::string::append(&v50, ") at prim path (");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v5 + 32));
    v24 = *(v23 + 23);
    if (v24 >= 0)
    {
      v25 = v23;
    }

    else
    {
      v25 = *v23;
    }

    if (v24 >= 0)
    {
      v26 = *(v23 + 23);
    }

    else
    {
      v26 = *(v23 + 8);
    }

    v27 = std::string::append(&v51, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v52, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v43 = v8[5];
  v30 = *(v43 + 16);
  v44 = *(v43 + 24);
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v8[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v8[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  realityio::Outputs::getRawValue<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*>(v30, EmptyString, v58);
  v31 = v58[0];
  if (v58[0])
  {
    *&v46 = *&v58[8];
    v49 = v46;
  }

  else
  {
    *__p = *&v58[8];
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v57, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
      v47 = v58[0] | ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0);
    }

    else
    {
      v57 = v59;
      v47 = 1;
    }

    v49 = *__p;
    size = v57.__r_.__value_.__l.__size_;
    v30 = v57.__r_.__value_.__r.__words[0];
    v2 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    if ((v47 & 1) == 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if ((v31 & 1) == 0)
  {
    *v58 = v49;
    if (v2 < 0)
    {
      std::string::__init_copy_ctor_external(&v58[16], v30, size);
      v48 = *&v58[16];
      v2 = v59.__r_.__value_.__s.__data_[15];
      operator delete(v30);
      v30 = v48;
    }
  }

LABEL_31:
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = v54;
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v31)
  {
    v34 = v4[2];
    v33 = v4[3];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = realityio::SpatialAudioComponentBuilder::kOutputName(v32);
    std::mutex::lock((v34 + 64));
    if (v34 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v34 + 40, v35))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v34 + 40), v35);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v34, v35);
    std::mutex::unlock((v34 + 64));
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }
  }

  v36 = realityio::SpatialAudioComponentBuilder::deleteAnimationData(v4);
  v37 = **(a1 + 8);
  v38 = realityio::EntityBuilder::kInputName(v36);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v37, v38, v58);
  if (v58[0])
  {
    __p[0] = *&v58[8];
    if (*&v58[8])
    {
      RERetain();
      if (__p[0])
      {
        v40 = v4[36];
        v39 = v4[37];
        while (v40 != v39)
        {
          v41 = *v40;
          REEntityRemoveComponentByClass();
          ++v40;
        }
      }
    }
  }

  else
  {
    __p[0] = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(__p);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v58);
  if (v2 >= 0)
  {
    v42 = 1;
  }

  else
  {
    v42 = v31;
  }

  if ((v42 & 1) == 0)
  {
    operator delete(v30);
  }
}

void sub_2474A3DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, char a34)
{
  operator delete(v34);
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

uint64_t std::__function::__func<realityio::SpatialAudioComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::SpatialAudioComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Outputs::getRawValue<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474A4058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::asA<RIO_MTLX::Element>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v4, (a1 + 8));
  if (v4)
  {
    v3 = v5;
    *a2 = v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::InterfaceElement>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::PortElement>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::TypedElement>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::ValueElement>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Collection>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Document>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::GeomInfo>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::GeomProp>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::GeomPropDef>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Implementation>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Input>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Look>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::MaterialAssign>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Node>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Output>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::TargetDef>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Token>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::TypeDef>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::Unit>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::UnitDef>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void RIO_MTLX::Element::asA<RIO_MTLX::UnitTypeDef>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
  {
    v5 = v7;
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

_BYTE *RIO_MTLX::Element::NAME_ATTRIBUTE(RIO_MTLX::Element *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Element::NAME_ATTRIBUTE(void)::v, "name");
  }

  return RIO_MTLX::Element::NAME_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(RIO_MTLX::Element *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(void)::v, "fileprefix");
  }

  return RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(RIO_MTLX::Element *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(void)::v, "geomprefix");
  }

  return RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(RIO_MTLX::Element *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(void)::v, "colorspace");
  }

  return RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::Element::INHERIT_ATTRIBUTE(RIO_MTLX::Element *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Element::INHERIT_ATTRIBUTE(void)::v, "inherit");
  }

  return RIO_MTLX::Element::INHERIT_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(RIO_MTLX::Element *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(void)::v, "namespace");
  }

  return RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::Element::DOC_ATTRIBUTE(RIO_MTLX::Element *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Element::DOC_ATTRIBUTE(void)::v, "doc");
  }

  return RIO_MTLX::Element::DOC_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(RIO_MTLX::TypedElement *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(void)::v, "type");
  }

  return RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(RIO_MTLX::ValueElement *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(void)::v, "value");
  }

  return RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::ValueElement::INTERFACE_NAME_ATTRIBUTE(RIO_MTLX::ValueElement *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::ValueElement::INTERFACE_NAME_ATTRIBUTE(void)::v, "interfacename");
  }

  return RIO_MTLX::ValueElement::INTERFACE_NAME_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::ValueElement::UNIT_ATTRIBUTE(RIO_MTLX::ValueElement *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52AB0, "unit");
    __cxa_guard_release(&_MergedGlobals_1);
  }

  return byte_27EE52AB0;
}

_BYTE *RIO_MTLX::ValueElement::UNITTYPE_ATTRIBUTE(RIO_MTLX::ValueElement *this)
{
  if ((atomic_load_explicit(&qword_27EE52A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A10))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52AC8, "unittype");
    __cxa_guard_release(&qword_27EE52A10);
  }

  return byte_27EE52AC8;
}

_BYTE *RIO_MTLX::ValueElement::UNIFORM_ATTRIBUTE(RIO_MTLX::ValueElement *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::ValueElement::UNIFORM_ATTRIBUTE(void)::v, "uniform");
  }

  return RIO_MTLX::ValueElement::UNIFORM_ATTRIBUTE(void)::v;
}

void RIO_MTLX::Element::_creatorMap(RIO_MTLX::Element *this)
{
  if ((atomic_load_explicit(&qword_27EE52A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A18))
  {
    xmmword_27EE52C90 = 0u;
    *&qword_27EE52CA0 = 0u;
    dword_27EE52CB0 = 1065353216;

    __cxa_guard_release(&qword_27EE52A18);
  }
}

void RIO_MTLX::Element::setName(std::string *a1, std::string *a2)
{
  v4 = a1[9].__r_.__value_.__r.__words[2];
  if (!v4)
  {
    v7 = 0;
    v5 = 0;
LABEL_7:
    size = 0;
    goto LABEL_8;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  size = a1[9].__r_.__value_.__l.__size_;
  if (size)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((size + 96), &a2->__r_.__value_.__l.__data_);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  RIO_MTLX::Element::getDocument(a1, &v12);
  v8 = *(&v12 + 1);
  *(*(v12 + 272) + 80) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v7)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__erase_unique<std::string>((size + 96), &a1[2].__r_.__value_.__l.__data_);
    std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v12, &a1->__r_.__value_.__l.__size_);
    v13 = a2;
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((size + 96), &a2->__r_.__value_.__l.__data_);
    v10 = v12;
    v12 = 0uLL;
    v11 = v9[6];
    *(v9 + 5) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }
    }
  }

  std::string::operator=(a1 + 2, a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_2474A598C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getDocument(RIO_MTLX::Element *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 31);
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v5 = v4;
    if (v4)
    {
      v4 = *(this + 30);
    }
  }

  else
  {
    v5 = 0;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Document>(v4, a2);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

{
  v4 = *(this + 31);
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v5 = v4;
    if (v4)
    {
      v4 = *(this + 30);
    }
  }

  else
  {
    v5 = 0;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Document>(v4, a2);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_2474A5A3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getNamePath(RIO_MTLX::Element *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a2)
  {
    RIO_MTLX::Element::getDocument(this, &__str);
    v17 = *&__str.__r_.__value_.__l.__data_;
    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    v18 = *(a2 + 8);
    *a2 = v17;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v21, this + 1);
  v7 = v21;
  while (v7)
  {
    if (v7 == *a2)
    {
      break;
    }

    if (*(a3 + 23) >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      v9 = RIO_MTLX::NAME_PATH_SEPARATOR(v6);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v7 + 48), v9, &v19);
      v10 = *(a3 + 23);
      if (v10 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v10 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      v13 = std::string::append(&v19, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
    }

    else if (*(v7 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v7 + 48), *(v7 + 56));
    }

    else
    {
      __str = *(v7 + 48);
    }

    std::string::operator=(a3, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v8)
      {
LABEL_22:
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (v8)
    {
      goto LABEL_22;
    }

    v15 = v21;
    v6 = *(v21 + 232);
    if (v6 && (v6 = std::__shared_weak_count::lock(v6)) != 0)
    {
      v7 = *(v15 + 224);
    }

    else
    {
      v7 = 0;
    }

    v16 = v22;
    v21 = v7;
    v22 = v6;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      v7 = v21;
    }
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_2474A5C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_2474A5CE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getSelfNonConst(RIO_MTLX::Element *this@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v4, this + 1);
  v3 = v5;
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void **RIO_MTLX::Element::registerChildElement(uint64_t a1, __int128 *a2)
{
  RIO_MTLX::Element::getDocument(a1, v10);
  v4 = v10[1];
  *(v10[0][34] + 80) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v10[0] = (*a2 + 48);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 96), v10[0]);
  v7 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = v5[6];
  v5[5] = v7;
  v5[6] = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100]((a1 + 136), a2);
}

void **std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void RIO_MTLX::Element::unregisterChildElement(RIO_MTLX::Element *a1, uint64_t a2)
{
  RIO_MTLX::Element::getDocument(a1, v11);
  v4 = v11[1];
  *(*(v11[0] + 272) + 80) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__erase_unique<std::string>(a1 + 12, (*a2 + 48));
  v6 = *(a1 + 17);
  v5 = *(a1 + 18);
  if (v6 != v5)
  {
    while (*v6 != *a2)
    {
      v6 += 16;
      if (v6 == v5)
      {
        v6 = *(a1 + 18);
        break;
      }
    }
  }

  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *>(v11, (v6 + 16), v5, v6);
  v8 = v7;
  v9 = *(a1 + 18);
  if (v9 != v7)
  {
    do
    {
      v10 = *(v9 - 8);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v9 -= 16;
    }

    while (v9 != v8);
  }

  *(a1 + 18) = v8;
}

uint64_t RIO_MTLX::Element::getChildIndex(void *a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 12, a2);
  if (v3)
  {
    shared_weak_owners = v3[1].__shared_weak_owners_;
    v3 = v3[2].__vftable;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    shared_weak_owners = 0;
  }

  v6 = a1[17];
  v5 = a1[18];
  v7 = v6;
  if (v6 != v5)
  {
    while (*v7 != shared_weak_owners)
    {
      v7 += 16;
      if (v7 == v5)
      {
        v7 = a1[18];
        break;
      }
    }
  }

  v8 = (v7 - v6) >> 4;
  if (v5 == v7)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v9;
}

void RIO_MTLX::Element::setChildIndex(void *a1, const void **a2, int a3)
{
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 12, a2);
  if (v5)
  {
    v7 = v5[5];
    v6 = v5[6];
    v42 = v7;
    v43 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v42 = 0;
    v43 = 0;
  }

  v9 = a1[17];
  v8 = a1[18];
  if (v9 != v8)
  {
    while (*v9 != v7)
    {
      v9 += 16;
      if (v9 == v8)
      {
        v9 = a1[18];
        break;
      }
    }
  }

  if (v8 != v9)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *>(v48, (v9 + 16), v8, v9);
    v11 = v10;
    for (i = a1[18]; i != v11; i -= 2)
    {
      v13 = *(i - 1);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    a1[18] = v11;
    v14 = a1[17];
    v15 = (v14 + 16 * a3);
    v16 = a1[19];
    if (v16 <= v11)
    {
      v31 = ((v11 - v14) >> 4) + 1;
      if (v31 >> 60)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v32 = v16 - v14;
      v33 = v32 >> 3;
      if (v32 >> 3 <= v31)
      {
        v33 = v31;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF0)
      {
        v34 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v33;
      }

      v47 = a1 + 17;
      if (v34)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>((a1 + 17), v34);
      }

      v35 = (16 * a3);
      v44 = 0;
      v45 = v35;
      v46 = v35;
      if (!a3)
      {
        v48[4] = a1 + 17;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>((a1 + 17), 1uLL);
      }

      *v35 = v7;
      *(16 * a3 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v35 = v46;
      }

      *&v46 = v35 + 2;
      v36 = v45;
      memcpy(v35 + 2, v15, a1[18] - v15);
      v37 = a1[17];
      *&v46 = v46 + a1[18] - v15;
      a1[18] = v15;
      v38 = v15 - v37;
      v39 = v36 - (v15 - v37);
      memcpy(v39, v37, v38);
      v40 = a1[17];
      a1[17] = v39;
      v41 = a1[19];
      *(a1 + 9) = v46;
      *&v46 = v40;
      *(&v46 + 1) = v41;
      v44 = v40;
      v45 = v40;
      std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(&v44);
    }

    else if (v15 == v11)
    {
      *v11 = v7;
      v11[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      a1[18] = v11 + 2;
    }

    else
    {
      v17 = v11 - 2;
      v18 = v11;
      if (v11 >= 0x10)
      {
        *v11 = *v17;
        v18 = v11 + 2;
        *v17 = 0;
        *(v11 - 1) = 0;
      }

      a1[18] = v18;
      if (v15 + 2 != v11)
      {
        v19 = 16 * a3;
        v20 = (v11 - 1);
        v21 = v11 - 4;
        v22 = v14 + v19 - v11 + 16;
        do
        {
          v23 = *v21;
          *v21 = 0;
          v21[1] = 0;
          v24 = *v20;
          *(v20 - 1) = v23;
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          v20 -= 2;
          v21 -= 2;
          v22 += 16;
        }

        while (v22);
        v18 = a1[18];
      }

      v25 = v15 > &v42 || v18 <= &v42;
      v26 = 16;
      if (v15 > &v42 || v18 <= &v42)
      {
        v26 = 0;
      }

      v27 = *(&v42 + v26);
      v28 = 8;
      if (!v25)
      {
        v28 = 24;
      }

      v29 = *(&v42 + v28);
      if (v29)
      {
        atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
      }

      v30 = v15[1];
      *v15 = v27;
      v15[1] = v29;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }

    v6 = v43;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}