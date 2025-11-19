void RIO_MTLX::NodeDef::~NodeDef(RIO_MTLX::NodeDef *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Implementation::~Implementation(RIO_MTLX::Implementation *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t RIO_MTLX::Element::getTypedAttribute<BOOL>(uint64_t a1, const void **a2)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), a2);
    if (v4)
    {
      v5 = (v4 + 5);
    }

    else
    {
      v5 = RIO_MTLX::EMPTY_STRING(0);
    }

    v8 = 0;
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24754EA84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24754EB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t realityio::OutputsDescriptor::addOutputDescriptor(uint64_t a1, std::string::size_type *a2)
{
  v4 = *a2;
  MEMORY[0x24C1A5E00](&__p, *a2);
  v5 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>((a1 + 40), &__p);
  if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!v5)
  {
    std::pair<std::string,std::shared_ptr<realityio::OutputDescriptor const>>::pair[abi:ne200100]<std::string const&,std::shared_ptr<realityio::OutputDescriptor const>&,0>(&__p, v4, a2);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__emplace_unique_impl<std::pair<std::string,std::shared_ptr<realityio::OutputDescriptor const>>>();
  }

  return 0;
}

void sub_24754ECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::shared_ptr<realityio::OutputDescriptor const>>::pair[abi:ne200100]<std::string const&,std::shared_ptr<realityio::OutputDescriptor const>&,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::pair<std::string,std::shared_ptr<realityio::OutputDescriptor const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24754EE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24754EEE0(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2 + 2;
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[2] & 0xFFFFFFFFFFFFFFF8));
  *(v4 - 1) = v5;
  v6 = std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v5, v4);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2 % v4;
      if (v4 > a2)
      {
        v6 = a2;
      }
    }

    else
    {
      v6 = (v4 - 1) & a2;
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      result = *v7;
      if (*v7)
      {
        do
        {
          v9 = result[1];
          if (v9 == a2)
          {
            if ((result[2] ^ *a3) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v9 >= v4)
              {
                v9 %= v4;
              }
            }

            else
            {
              v9 &= v4 - 1;
            }

            if (v9 != v6)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  v10 = (*(a1 + 24) + 1);
  v11 = *(a1 + 32);
  if (v4 && (v11 * v4) >= v10)
  {
    return 0;
  }

  v12 = 1;
  if (v4 >= 3)
  {
    v12 = (v4 & (v4 - 1)) != 0;
  }

  v13 = v12 | (2 * v4);
  v14 = vcvtps_u32_f32(v10 / v11);
  if (v13 <= v14)
  {
    prime = v14;
  }

  else
  {
    prime = v13;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v4 = *(a1 + 8);
  }

  if (prime > v4)
  {
    goto LABEL_49;
  }

  if (prime >= v4)
  {
    return 0;
  }

  v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
  if (v4 < 3 || (v17 = vcnt_s8(v4), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
  {
    v16 = std::__next_prime(v16);
  }

  else
  {
    v18 = 1 << -__clz(v16 - 1);
    if (v16 >= 2)
    {
      v16 = v18;
    }
  }

  if (prime <= v16)
  {
    prime = v16;
  }

  if (prime >= v4)
  {
    return 0;
  }

  if (prime)
  {
LABEL_49:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v19 = *a1;
  *a1 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  result = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
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

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
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

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[2];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken>(void *a1, void *a2)
{
  v2 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
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
    operator new();
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

  if ((v7[2] ^ *a2) >= 8)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24754F5F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if ((result[2] ^ *a2) < 8)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t RIOBuilderDirtyStageDescriptorGetTypeID()
{
  if (RIOBuilderDirtyStageDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyStageDescriptorGetTypeID::onceToken, &__block_literal_global_8);
  }

  return RIOBuilderDirtyStageDescriptorGetTypeID::typeID;
}

void __RIOBuilderDirtyStageDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderDirtyStageDescriptorGetTypeID::typeID)
  {
    RIOBuilderDirtyStageDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

void RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors(const __CFArray *a1, const __CFArray *a2)
{
  __p = 0;
  v26 = 0;
  v27 = 0;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_24:
    memset(v24, 0, sizeof(v24));
    v19 = CFArrayGetCount(a2);
    if (v19 >= 1)
    {
      for (i = 0; i != v19; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v22 = ValueAtIndex[3];
        *&v23 = ValueAtIndex[2];
        *(&v23 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::push_back[abi:ne200100](v24, &v23);
        if (*(&v23 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
        }
      }
    }

    operator new();
  }

  v5 = 0;
  while (1)
  {
    v6 = CFArrayGetValueAtIndex(a1, v5);
    v7 = *(v6 + 1);
    v8 = *(v6 + 3);
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      v9 = v26;
      v10 = v27;
      if (v26 >= v27)
      {
        goto LABEL_9;
      }

      *v26 = v7;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = v26;
      v10 = v27;
      if (v26 >= v27)
      {
LABEL_9:
        v12 = (v9 - __p) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v10 - __p;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(&__p, v15);
        }

        v16 = 16 * v12;
        *(16 * v12) = v7;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = (v16 + 16);
        v17 = (v16 - (v26 - __p));
        memcpy(v17, __p, v26 - __p);
        v18 = __p;
        __p = v17;
        v26 = v11;
        v27 = 0;
        if (v18)
        {
          operator delete(v18);
        }

        goto LABEL_21;
      }

      *v26 = v7;
    }

    v11 = v9 + 16;
LABEL_21:
    v26 = v11;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (Count == ++v5)
    {
      goto LABEL_24;
    }
  }
}

void sub_24754F9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, std::__shared_weak_count *a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  a11 = &a13;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a13 = &a16;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t RIOBuilderDirtyStageDescriptorCreate<std::shared_ptr<realityio::DirtyStageDescriptor const> &>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOBuilderDirtyStageDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyStageDescriptorGetTypeID::onceToken, &__block_literal_global_8);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = a1[1];
    *(result + 16) = *a1;
    *(result + 24) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

__CFArray *RIOBuilderDirtyStageDescriptorCopyMetadataDescriptors(uint64_t a1)
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

void sub_24754FBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *RIOBuilderDirtyStageDescriptorCopyPrimDescriptors(uint64_t a1)
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
      v12 = 0;
      v13 = 0;
      v14 = 0;
      std::vector<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*>(&v12, *(v3 + 32), *(v3 + 40), (*(v3 + 40) - *(v3 + 32)) >> 4);
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

        v9 = RIOBuilderDirtyPrimDescriptorCreate<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const> &>(&v10);
        CFArrayAppendValue(Mutable, v9);
        realityio::WrappedCFRef<RIOBuilderDirtyPrimDescriptor *>::~WrappedCFRef(&v9);
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

void sub_24754FD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void _RIOBuilderDirtyStageDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<realityio::DirtyStageDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::vector<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24754FF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

const void **realityio::WrappedCFRef<RIOBuilderDirtyPrimDescriptor *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t RIO_MTLX::FileSearchPath::find@<X0>(RIO_MTLX::FileSearchPath *this@<X0>, const RIO_MTLX::FilePath *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *this;
  v6 = *(this + 1);
  v7 = *this;
  v8 = *a2;
  v9 = *(a2 + 1);
  if (*this == v6 || v8 == v9)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
    v12 = (a2 + 24);
LABEL_14:
    *(a3 + 24) = *v12;
    return result;
  }

  v12 = (a2 + 24);
  if (*(a2 + 6))
  {
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
    goto LABEL_14;
  }

  while (1)
  {
    RIO_MTLX::FilePath::operator/(v7, a2, a3);
    result = RIO_MTLX::FilePath::exists(a3);
    if (result)
    {
      return result;
    }

    v13 = a3;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
    v7 += 32;
    if (v7 == v6)
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      goto LABEL_13;
    }
  }
}

void sub_247550064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RIO_MTLX::TreeIterator::operator!=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a2 + 16);
  if (v2 - v3 != *(a2 + 24) - v4)
  {
    return 1;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 2) != v4[2])
    {
      return 1;
    }

    v3 += 24;
    v4 += 3;
  }

  return *(a1 + 40) != *(a2 + 40);
}

uint64_t std::vector<RIO_MTLX::FilePath>::__init_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RIO_MTLX::FilePath>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247550158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

realityio::BuilderRegistry *realityio::BuilderRegistry::BuilderRegistry(realityio::BuilderRegistry *this)
{
  v44[4] = *MEMORY[0x277D85DE8];
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 14) = 1065353216;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v44[0] = &unk_28594D8D0;
  v44[3] = v44;
  realityio::BuilderRegistry::registerBuilder(this, v44);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v44);
  v43[0] = &unk_28594D950;
  v43[3] = v43;
  realityio::BuilderRegistry::registerBuilder(this, v43);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v43);
  v42[0] = &unk_28594DA20;
  v42[3] = v42;
  realityio::BuilderRegistry::registerBuilder(this, v42);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v42);
  v41[0] = &unk_28594DAF0;
  v41[3] = v41;
  realityio::BuilderRegistry::registerBuilder(this, v41);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v41);
  v40[0] = &unk_28594DBC0;
  v40[3] = v40;
  realityio::BuilderRegistry::registerBuilder(this, v40);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v40);
  v39[0] = &unk_28594DC90;
  v39[3] = v39;
  realityio::BuilderRegistry::registerBuilder(this, v39);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v39);
  v38[0] = &unk_28594DD10;
  v38[3] = v38;
  realityio::BuilderRegistry::registerBuilder(this, v38);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v38);
  v37[0] = &unk_28594DD90;
  v37[3] = v37;
  realityio::BuilderRegistry::registerBuilder(this, v37);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v37);
  v36[0] = &unk_28594DE60;
  v36[3] = v36;
  realityio::BuilderRegistry::registerBuilder(this, v36);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v36);
  v35[0] = &unk_28594DF30;
  v35[3] = v35;
  realityio::BuilderRegistry::registerBuilder(this, v35);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v35);
  v34[0] = &unk_28594E000;
  v34[3] = v34;
  realityio::BuilderRegistry::registerBuilder(this, v34);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v34);
  v33[0] = &unk_28594E0D0;
  v33[3] = v33;
  realityio::BuilderRegistry::registerBuilder(this, v33);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v33);
  v32[0] = &unk_28594E150;
  v32[3] = v32;
  realityio::BuilderRegistry::registerBuilder(this, v32);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v32);
  v31[0] = &unk_28594E1D0;
  v31[3] = v31;
  realityio::BuilderRegistry::registerBuilder(this, v31);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v31);
  v30[0] = &unk_28594E250;
  v30[3] = v30;
  realityio::BuilderRegistry::registerBuilder(this, v30);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v30);
  v29[0] = &unk_28594E2D0;
  v29[3] = v29;
  realityio::BuilderRegistry::registerBuilder(this, v29);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v29);
  v28[0] = &unk_28594E3A0;
  v28[3] = v28;
  realityio::BuilderRegistry::registerBuilder(this, v28);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v28);
  v27[0] = &unk_28594E470;
  v27[3] = v27;
  realityio::BuilderRegistry::registerBuilder(this, v27);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v27);
  v26[0] = &unk_28594E540;
  v26[3] = v26;
  realityio::BuilderRegistry::registerBuilder(this, v26);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v26);
  v25[0] = &unk_28594E610;
  v25[3] = v25;
  realityio::BuilderRegistry::registerBuilder(this, v25);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v25);
  v24[0] = &unk_28594E6E0;
  v24[3] = v24;
  realityio::BuilderRegistry::registerBuilder(this, v24);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24);
  v23[0] = &unk_28594E7B0;
  v23[3] = v23;
  realityio::BuilderRegistry::registerBuilder(this, v23);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v23);
  v22[0] = &unk_28594E880;
  v22[3] = v22;
  realityio::BuilderRegistry::registerBuilder(this, v22);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v22);
  v21[0] = &unk_28594E950;
  v21[3] = v21;
  realityio::BuilderRegistry::registerBuilder(this, v21);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v21);
  v20[0] = &unk_28594E9D0;
  v20[3] = v20;
  realityio::BuilderRegistry::registerBuilder(this, v20);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v20);
  v19[0] = &unk_28594EA50;
  v19[3] = v19;
  realityio::BuilderRegistry::registerBuilder(this, v19);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v19);
  v18[0] = &unk_28594EAD0;
  v18[3] = v18;
  realityio::BuilderRegistry::registerBuilder(this, v18);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v18);
  v17[0] = &unk_28594EBA0;
  v17[3] = v17;
  realityio::BuilderRegistry::registerBuilder(this, v17);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v17);
  v16[0] = &unk_28594EC70;
  v16[3] = v16;
  realityio::BuilderRegistry::registerBuilder(this, v16);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v16);
  v15[0] = &unk_28594ED40;
  v15[3] = v15;
  realityio::BuilderRegistry::registerBuilder(this, v15);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v15);
  v14[0] = &unk_28594EE10;
  v14[3] = v14;
  realityio::BuilderRegistry::registerBuilder(this, v14);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v14);
  v13[0] = &unk_28594EE90;
  v13[3] = v13;
  realityio::BuilderRegistry::registerBuilder(this, v13);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v13);
  v12[0] = &unk_28594EF10;
  v12[3] = v12;
  realityio::BuilderRegistry::registerBuilder(this, v12);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v12);
  v11[0] = &unk_28594EF90;
  v11[3] = v11;
  realityio::BuilderRegistry::registerBuilder(this, v11);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v11);
  v10[0] = &unk_28594F010;
  v10[3] = v10;
  realityio::BuilderRegistry::registerBuilder(this, v10);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v10);
  v9[0] = &unk_28594F0E0;
  v9[3] = v9;
  realityio::BuilderRegistry::registerBuilder(this, v9);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v9);
  v8[0] = &unk_28594F1B0;
  v8[3] = v8;
  realityio::BuilderRegistry::registerBuilder(this, v8);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v8);
  v7[0] = &unk_28594F280;
  v7[3] = v7;
  realityio::BuilderRegistry::registerBuilder(this, v7);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v7);
  v6[0] = &unk_28594F300;
  v6[3] = v6;
  realityio::BuilderRegistry::registerBuilder(this, v6);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v6);
  v5[0] = &unk_28594F380;
  v5[3] = v5;
  realityio::BuilderRegistry::registerBuilder(this, v5);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v5);
  v4[0] = &unk_28594F400;
  v4[3] = v4;
  realityio::BuilderRegistry::registerBuilder(this, v4);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v4);
  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_247550B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a10);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v12, *(v10 + 120));
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v11, *(v10 + 72));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::~__hash_table(v10 + 24);
  a9 = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t realityio::BuilderRegistry::registerBuilder(uint64_t *a1, uint64_t a2)
{
  v17[18] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 24))
  {
    goto LABEL_17;
  }

  v17[0] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v4 = *(a2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v17);
  (*(*v15 + 24))(&v14);
  (*(*v15 + 32))(&v12);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8 ^ v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (v9 < 8)
      {
        break;
      }

      goto LABEL_8;
    }

    if ((*v8 ^ v14) < 8)
    {
      break;
    }

LABEL_8:
    v5 += 16;
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

LABEL_17:
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_247551754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void **a20)
{
  v22 = 136;
  while (1)
  {
    v23 = *(v20 + v22);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v22 -= 8;
    if (v22 == -8)
    {
      __cxa_guard_abort(&_MergedGlobals_13);
      a20 = &a10;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a20);
      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      if (a16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a16);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a19);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::BuilderRegistry::unregisterBuilder(uint64_t *a1, void *__s1)
{
  v3 = a1;
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4 + v5;
      v8 = *(v4 + v5);
      v9 = *(v7 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *v8 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        EmptyString = v10 + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
      }

      v12 = *(__s1 + 23);
      v13 = __s1;
      if ((v12 & 0x8000000000000000) != 0)
      {
        v13 = *__s1;
        v12 = __s1[1];
      }

      v14 = *(EmptyString + 23);
      if (v14 >= 0)
      {
        v15 = *(EmptyString + 23);
      }

      else
      {
        v15 = *(EmptyString + 8);
      }

      if (v14 >= 0)
      {
        v16 = EmptyString;
      }

      else
      {
        v16 = *EmptyString;
      }

      if (v15 >= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 = v15;
      }

      a1 = memcmp(v13, v16, v17);
      if (v15 == v12 && a1 == 0)
      {
        v24 = v3[1];
        v25 = (*v3 + v5);
        v26 = v25 + 1;
        if (v25 + 1 != v24)
        {
          do
          {
            v27 = *v26;
            *v26 = 0;
            *(v26 + 1) = 0;
            v28 = *(v26 - 1);
            *(v26 - 1) = v27;
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            ++v26;
          }

          while (v26 != v24);
          v24 = v3[1];
          v25 = v26 - 1;
        }

        while (v24 != v25)
        {
          v29 = *(v24 - 1);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          --v24;
        }

        v3[1] = v25;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        return 1;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v6;
      v4 = *v3;
      v5 += 16;
    }

    while (v6 < (v3[1] - *v3) >> 4);
  }

  MEMORY[0x24C1A5E00](&v42, __s1);
  v19 = v42;
  v20 = v3[4];
  if (!*&v20)
  {
    goto LABEL_83;
  }

  v21 = bswap64(0x9E3779B97F4A7C55 * (v42 & 0xFFFFFFFFFFFFFFF8));
  v22 = vcnt_s8(v20);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = v21;
    if (v21 >= *&v20)
    {
      v23 = v21 % *&v20;
    }
  }

  else
  {
    v23 = v21 & (*&v20 - 1);
  }

  v30 = v3[3];
  v31 = *(v30 + 8 * v23);
  if (!v31)
  {
    goto LABEL_83;
  }

  v32 = *v31;
  if (!*v31)
  {
    goto LABEL_83;
  }

  v33 = *&v20 - 1;
  while (1)
  {
    v34 = v32[1];
    if (v34 == v21)
    {
      break;
    }

    if (v22.u32[0] > 1uLL)
    {
      if (v34 >= *&v20)
      {
        v34 %= *&v20;
      }
    }

    else
    {
      v34 &= v33;
    }

    if (v34 != v23)
    {
      goto LABEL_83;
    }

LABEL_53:
    v32 = *v32;
    if (!v32)
    {
      goto LABEL_83;
    }
  }

  if ((v32[2] ^ v42) >= 8)
  {
    goto LABEL_53;
  }

  v35 = *v32;
  if (v22.u32[0] > 1uLL)
  {
    if (v21 >= *&v20)
    {
      v21 %= *&v20;
    }
  }

  else
  {
    v21 &= v33;
  }

  v36 = *(v30 + 8 * v21);
  do
  {
    v37 = v36;
    v36 = *v36;
  }

  while (v36 != v32);
  if (v37 == v3 + 5)
  {
    goto LABEL_72;
  }

  v38 = v37[1];
  if (v22.u32[0] > 1uLL)
  {
    if (v38 >= *&v20)
    {
      v38 %= *&v20;
    }
  }

  else
  {
    v38 &= v33;
  }

  if (v38 == v21)
  {
LABEL_74:
    if (v35)
    {
      v39 = v35[1];
      goto LABEL_76;
    }
  }

  else
  {
LABEL_72:
    if (!v35)
    {
      goto LABEL_73;
    }

    v39 = v35[1];
    if (v22.u32[0] > 1uLL)
    {
      v40 = v35[1];
      if (v39 >= *&v20)
      {
        v40 = v39 % *&v20;
      }
    }

    else
    {
      v40 = v39 & v33;
    }

    if (v40 != v21)
    {
LABEL_73:
      *(v30 + 8 * v21) = 0;
      v35 = *v32;
      goto LABEL_74;
    }

LABEL_76:
    if (v22.u32[0] > 1uLL)
    {
      if (v39 >= *&v20)
      {
        v39 %= *&v20;
      }
    }

    else
    {
      v39 &= v33;
    }

    if (v39 != v21)
    {
      *(v3[3] + 8 * v39) = v37;
      v35 = *v32;
    }
  }

  *v37 = v35;
  *v32 = 0;
  --v3[6];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,void *>>>::operator()[abi:ne200100](1, v32);
  v19 = v42;
LABEL_83:
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_247551C54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::builderIdentifierToken<realityio::AnimationSceneAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::EntityBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MaterialAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::InstancedEntityBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MeshAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MeshComponentBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MeshModelDescriptorBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::SkeletalAnimationAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::SkeletonPoseDefinitionBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::SkeletalAnimationAggregationBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageMetersPerUnitBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageSceneLibraryAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageTimeCodeBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageUpAxisBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TextureBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TransformAnimationAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TransformAnimationAggregationBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TransformComponentBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void std::__shared_ptr_emplace<realityio::AnimationSceneAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::EntityBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D3D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MaterialAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InstancedEntityBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshModelDescriptorBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletonPoseDefinitionBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageMetersPerUnitBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageSceneLibraryAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D6A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageTimeCodeBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D6F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageUpAxisBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TextureBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformAnimationAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformAnimationAggregationBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::set<pxrInternal__aapl__pxrReserved__::TfToken>::set[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_27EE52EA8 = 0;
  qword_27EE52EA0 = 0;
  qword_27EE52E98 = &qword_27EE52EA0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 8 * a2);
    v5 = &qword_27EE52EA0;
    while (v5 != &qword_27EE52EA0)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v8 = &qword_27EE52EA0;
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE52E98, v6 + 4, v2);
      if (result)
      {
        if (!qword_27EE52EA0)
        {
LABEL_13:
          v10 = &qword_27EE52EA0;
LABEL_16:
          std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_node<pxrInternal__aapl__pxrReserved__::TfToken const&>();
        }

        goto LABEL_8;
      }

      result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(&qword_27EE52E98, &v10, v2);
      v7 = result;
LABEL_15:
      if (!*v7)
      {
        goto LABEL_16;
      }

      if (++v2 == v4)
      {
        return result;
      }

      v5 = qword_27EE52E98;
      v3 = qword_27EE52EA0;
    }

    v6 = &qword_27EE52EA0;
    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_8:
    v10 = v6;
    v7 = v6 + 1;
    goto LABEL_15;
  }

  return result;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = a2[4];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_247553D7C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_0,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_0>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247553EDC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_1,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_1>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::ArbitraryComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475540D8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_2,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_2>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::ArbitraryComponentStructBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DA90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475542D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_3,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_3>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::CameraComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DB60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475544D0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_4,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_4>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::EndOfUpdateBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475546CC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_5,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_5>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755482C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_6,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_6>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755498C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_7,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_7>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::DirectionalLightComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DE00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247554B88(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_8,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_8>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::GeomSubsetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247554D84(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_9,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_9>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::IBLComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DFA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247554F80(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_10,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_10>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::IBLCubeMapAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_24755517C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_11,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_11>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475552DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_12,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_12>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755543C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_13,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_13>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755559C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_14,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_14>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475556FC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_15,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_15>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsColliderAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475558F8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_16,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_16>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsColliderComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247555AF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_17,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_17>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsMaterialAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E4E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247555CF0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_18,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_18>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsRigidBodyComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247555EEC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_19,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_19>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsSceneGroundPlaneComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475560E8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_20,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_20>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::RectAreaLightComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475562E4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_21,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_21>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SceneAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475564E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_22,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_22>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::ShadowComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475566DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_23,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_23>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755683C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_24,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_24>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755699C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_25,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_25>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247556AFC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_26,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_26>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SpatialAudioFileAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594EB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247556CF8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_27,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_27>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SpatialAudioComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594EC10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247556EF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_28,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_28>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::AcousticMeshComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594ECE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475570F0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_29,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_29>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SpotOrPointOrAmbientLightComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594EDB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475572EC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_30,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_30>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755744C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_31,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_31>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475575AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_32,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_32>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755770C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_33,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_33>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755786C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_34,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_34>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::TextComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594F080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247557A68(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_35,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_35>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::TextEntityBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594F150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247557C64(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_36,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_36>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::TextMeshAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594F220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247557E60(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_37,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_37>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247557FC0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_38,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_38>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247558120(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_39,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_39>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247558280(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_40,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_40>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<realityio::BuilderRegistrationInfo *,std::shared_ptr<realityio::BuilderRegistrationInfo>::__shared_ptr_default_delete<realityio::BuilderRegistrationInfo,realityio::BuilderRegistrationInfo>,std::allocator<realityio::BuilderRegistrationInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::BuilderRegistrationInfo *,std::shared_ptr<realityio::BuilderRegistrationInfo>::__shared_ptr_default_delete<realityio::BuilderRegistrationInfo,realityio::BuilderRegistrationInfo>,std::allocator<realityio::BuilderRegistrationInfo>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::default_delete<realityio::BuilderRegistrationInfo>::operator()[abi:ne200100](void *result)
{
  if (result)
  {
    v1 = result;
    std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((result + 3));
    v2 = v1[2];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    if ((*v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[2];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  operator delete(__p);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[6];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__count_unique<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if ((std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a2, v2 + 4) & 1) == 0)
      {
        if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void *RIO_MTLX::readFromXmlFile(std::string **a1, const RIO_MTLX::FilePath *a2, RIO_MTLX::FileSearchPath *a3, uint64_t a4)
{
  v33[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, RIO_MTLX::PATH_LIST_SEPARATOR);
  RIO_MTLX::getEnvironmentPath(__p, &v23);
  v8 = v23;
  v9 = v24;
  while (v8 != v9)
  {
    std::vector<RIO_MTLX::FilePath>::push_back[abi:ne200100](a3, v8);
    v8 = (v8 + 32);
  }

  __str.__r_.__value_.__r.__words[0] = &v23;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  RIO_MTLX::FileSearchPath::find(a3, a2, &v23);
  if (&v23 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a2, v23, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3));
  }

  *(a2 + 6) = v26;
  __p[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v26 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0x7FD8uLL;
  v28 = 10241;
  v33[0] = &v25;
  v33[1] = 32728;
  v33[2] = 0;
  v33[3] = 0;
  v23 = &v28;
  v24 = 0;
  v32 = 0;
  v31 = &v28;
  v25 = v33;
  RIO_MTLX::FilePath::asString(a2, 1, &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v11 = 116;
  if (a4)
  {
    if (*a4)
    {
      v11 = 118;
    }

    else
    {
      v11 = 116;
    }
  }

  pugi::xml_document::load_file(&v23, p_str, v11, 0, __p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (!a4 || (v13 = *(a4 + 40), v13 == *(a4 + 48)))
  {
    v14 = *a1;
    RIO_MTLX::FilePath::asString(a2, 1, &__str);
    std::string::operator=(v14 + 3, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::operator=(*a1 + 3, v13);
  }

  v15 = *a1;
  v16 = a1[1];
  v19[0] = v15;
  v19[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  result = pugi::xml_document::_destroy(&v23);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247558884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  pugi::xml_document::_destroy(&a24);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::XmlReadOptions::XmlReadOptions(uint64_t this)
{
  *this = 256;
  *(this + 8) = &unk_28594F4F8;
  *(this + 16) = RIO_MTLX::readFromXmlFile;
  *(this + 32) = this + 8;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

void RIO_MTLX::anonymous namespace::validateParseResult(RIO_MTLX::_anonymous_namespace_ *this, char **a2, const RIO_MTLX::FilePath *a3)
{
  if (*this)
  {
    v5 = pugi::xml_parse_result::description(this);
    std::string::basic_string[abi:ne200100]<0>(&v27, v5);
    std::to_string(&v26, *(this + 1));
    std::string::basic_string[abi:ne200100]<0>(&v25, "XML parse error");
    if (*a2 != a2[1])
    {
      RIO_MTLX::FilePath::asString(a2, 1, &v22);
      v6 = std::string::insert(&v22, 0, " in ");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v24 = v6->__r_.__value_.__r.__words[2];
      *__p = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v24 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v24 >= 0)
      {
        v9 = HIBYTE(v24);
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(&v25, v8, v9);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    std::operator+<char>();
    v10 = std::string::append(&v20, " at character ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v21, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v22, ")");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v24 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v24 >= 0)
    {
      v19 = HIBYTE(v24);
    }

    else
    {
      v19 = __p[1];
    }

    std::string::append(&v25, v18, v19);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }
}

void sub_247558B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (*(v35 - 17) < 0)
  {
    operator delete(*(v35 - 40));
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::anonymous namespace::documentFromXml(RIO_MTLX::Document *a1, pugi::xml_node *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = RIO_MTLX::Document::CATEGORY(a1);
  if (v7[23] >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *v7;
  }

  v21.__r_.__value_.__r.__words[0] = pugi::xml_node::child(a2, v8);
  if (!pugi::xml_node::operator void (*)(pugi::xml_node***)(&v21))
  {
    goto LABEL_38;
  }

  v10 = *a1;
  v9 = *(a1 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v24, 0, 24);
  if (a4)
  {
    std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::__value_func[abi:ne200100](v26, (a4 + 8));
  }

  else
  {
    v26[0] = &unk_28594F4F8;
    v26[1] = RIO_MTLX::readFromXmlFile;
    v27 = v26;
  }

  v11 = v21.__r_.__value_.__r.__words[0];
  if (v21.__r_.__value_.__r.__words[0])
  {
    v11 = *(v21.__r_.__value_.__r.__words[0] + 32);
  }

  v23 = v11;
  while (pugi::xml_node::operator void (*)(pugi::xml_node***)(&v23))
  {
    v12 = v23;
    if (v23)
    {
      v13 = v23[1];
      if (!v13)
      {
        v13 = &str_16;
      }

      if (v13 != "xi:include")
      {
        v14 = v23[6];
        goto LABEL_21;
      }

LABEL_22:
      if (v27)
      {
        v15 = pugi::xml_node::attribute(&v23, "href");
        if (v15)
        {
          if (*(v15 + 16))
          {
            v16 = *(v15 + 16);
          }

          else
          {
            v16 = &str_16;
          }
        }

        else
        {
          v16 = &str_16;
        }

        v17 = std::string::basic_string[abi:ne200100]<0>(&__p, v16);
        RIO_MTLX::Document::createDocument<RIO_MTLX::Document>(v17);
      }

      v25 = v23;
      if (v23)
      {
        v12 = v23[6];
      }

      v23 = v12;
      pugi::xml_node::remove_child(&v21, &v25);
    }

    else
    {
      if (&str_16 == "xi:include")
      {
        goto LABEL_22;
      }

      v14 = 0;
LABEL_21:
      v23 = v14;
    }
  }

  std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](v26);
  v25 = v24;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v18 = *(a1 + 1);
  v20[0] = *a1;
  v20[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

LABEL_38:
  if (!a4 || a4[1] == 1)
  {
    RIO_MTLX::Document::upgradeVersion(*a1);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2475593E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t *a46, uint64_t a47)
{
  a46 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a46);
  a19 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  RIO_MTLX::XmlReadOptions::~XmlReadOptions((v47 - 200));
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](v47 - 136);
  *(v47 - 200) = &a43;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100]((v47 - 200));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void *RIO_MTLX::readFromXmlStream(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v32[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, RIO_MTLX::PATH_LIST_SEPARATOR);
  RIO_MTLX::getEnvironmentPath(__p, &v22);
  v8 = v22;
  v9 = v23;
  while (v8 != v9)
  {
    std::vector<RIO_MTLX::FilePath>::push_back[abi:ne200100](a3, v8);
    v8 += 32;
  }

  v20[0] = &v22;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v25 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0x7FD8uLL;
  v27 = 10241;
  v32[0] = &v24;
  v32[1] = 32728;
  v32[2] = 0;
  v32[3] = 0;
  v22 = &v27;
  v23 = 0;
  v31 = 0;
  v30 = &v27;
  v10 = 116;
  v24 = v32;
  if (a4)
  {
    if (*a4)
    {
      v10 = 118;
    }

    else
    {
      v10 = 116;
    }
  }

  pugi::xml_document::load(&v22, a2, v10, 0, v20);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v18 = 0;
  v21 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
  v12 = *a1;
  v13 = a1[1];
  v16[0] = v12;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  result = pugi::xml_document::_destroy(&v22);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247559714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::readFromXmlString(uint64_t *a1, const std::string *a2, uint64_t *a3, _BYTE *a4)
{
  std::istringstream::basic_istringstream[abi:ne200100](v12, a2, 8);
  v7 = *a1;
  v8 = a1[1];
  v11[0] = v7;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v10, 0, sizeof(v10));
  std::vector<RIO_MTLX::FilePath>::__init_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(v10, *a3, a3[1], (a3[1] - *a3) >> 5);
  RIO_MTLX::readFromXmlStream(v11, v12, v10, a4);
  v17 = v10;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v12[0] = *MEMORY[0x277D82820];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::istream::~istream();
  return MEMORY[0x24C1A9110](&v16);
}

void sub_24755993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v31 - 40) = v30;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100]((v31 - 40));
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  std::istringstream::~istringstream(&a14, MEMORY[0x277D82820]);
  MEMORY[0x24C1A9110](&a29);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_247559AE0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C1A9110](v1);
  _Unwind_Resume(a1);
}

void *RIO_MTLX::writeToXmlStream(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v23[11] = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v21 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0x7FD8uLL;
  v17 = 10241;
  v23[0] = &v14;
  v23[1] = 32728;
  v23[2] = 0;
  v23[3] = 0;
  v13[0] = &v17;
  v13[1] = 0;
  v22 = 0;
  v20 = &v17;
  v14 = v23;
  appended = pugi::xml_node::append_child(v13, 2u);
  v12[0] = appended;
  pugi::xml_node::set_name(v12, "materialx");
  v7 = *a1;
  v8 = *(a1 + 8);
  v11.__vftable = v7;
  v11.__shared_owners_ = v8;
  v11.__shared_weak_owners_ = appended;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v12[0] = &unk_285955E40;
  v12[1] = a2;
  v12[2] = 0;
  pugi::xml_document::save(v13, v12);
  result = pugi::xml_document::_destroy(v13);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247559C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIO_MTLX::anonymous namespace::elementToXml(std::__shared_weak_count *a1, pugi::xml_node *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v58 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a3;
    a1 = *(a3 + 4);
    if (a1)
    {
      if (a1 == (a3 + 8))
      {
        v57 = v56;
        a1 = (a1->__get_deleter)(a1, v56);
      }

      else
      {
        a1 = (a1->__on_zero_shared)(a1);
        v57 = a1;
      }
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
    v6 = 1;
  }

  v7 = *v5;
  v8 = *v5 + 48;
  if (*(*v5 + 71) < 0)
  {
    if (!*(v7 + 7))
    {
      goto LABEL_17;
    }

    v8 = *v8;
  }

  else if (!*(*v5 + 71))
  {
    goto LABEL_17;
  }

  v9 = RIO_MTLX::Element::NAME_ATTRIBUTE(a1);
  if (v9[23] >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *v9;
  }

  appended = pugi::xml_node::append_attribute(a2, v10);
  a1 = pugi::xml_attribute::set_value(&appended, v8);
  v7 = *v5;
LABEL_17:
  v12 = *(v7 + 25);
  v11 = *(v7 + 26);
  if (v12 != v11)
  {
    do
    {
      v13 = v12;
      if (v12[23] < 0)
      {
        v13 = *v12;
      }

      appended = pugi::xml_node::append_attribute(a2, v13);
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(*v5 + 20, v12);
      if (v14)
      {
        v15 = (v14 + 5);
      }

      else
      {
        v15 = RIO_MTLX::EMPTY_STRING(0);
      }

      if (v15[23] < 0)
      {
        v15 = *v15;
      }

      a1 = pugi::xml_attribute::set_value(&appended, v15);
      v12 += 24;
    }

    while (v12 != v11);
    v7 = *v5;
  }

  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v16 = *(v7 + 17);
  v17 = *(v7 + 18);
  if (v16 == v17)
  {
    v42 = 0;
    goto LABEL_102;
  }

  do
  {
    v18 = *v16;
    v19 = v16[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v57)
      {
        goto LABEL_37;
      }

      v52 = v18;
      v53 = v19;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      a1 = v57;
      if (!v57)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    else
    {
      a1 = v57;
      if (!v57)
      {
        goto LABEL_37;
      }

      v52 = *v16;
      v53 = 0;
    }

    v20 = (a1->__vftable[1].~__shared_weak_count_0)(a1, &v52);
    a1 = v53;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (v20)
    {
LABEL_37:
      if (v6)
      {
        if (*(v18 + 95) < 0)
        {
          v21 = *(v18 + 80);
          if (v21)
          {
            std::string::__init_copy_ctor_external(&v51, *(v18 + 72), v21);
            goto LABEL_43;
          }
        }

        else if (*(v18 + 95))
        {
          v51 = *(v18 + 72);
LABEL_43:
          RIO_MTLX::Element::getDocument(*v5, &appended);
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v51.__r_.__value_.__l.__size_;
          }

          v23 = appended[95];
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(appended + 10);
          }

          if (size == v23)
          {
            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v51;
            }

            else
            {
              v25 = v51.__r_.__value_.__r.__words[0];
            }

            if (v24 >= 0)
            {
              v26 = appended + 72;
            }

            else
            {
              v26 = *(appended + 9);
            }

            v27 = memcmp(v25, v26, size) != 0;
          }

          else
          {
            v27 = 1;
          }

          a1 = v48;
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          if (v27)
          {
            a1 = std::__tree<std::string>::__count_unique<std::string>(&v54, &v51.__r_.__value_.__l.__data_);
            if (!a1)
            {
              if (!pugi::xml_node::attribute(a2, "xmlns:xi"))
              {
                appended = pugi::xml_node::append_attribute(a2, "xmlns:xi");
                pugi::xml_attribute::set_value(&appended, "http://www.w3.org/2001/XInclude");
              }

              v28 = pugi::xml_node::append_child(a2, 2u);
              appended = v28;
              pugi::xml_node::set_name(&appended, "xi:include");
              v50 = v28;
              v49 = pugi::xml_node::append_attribute(&v50, "href");
              RIO_MTLX::FilePath::FilePath(&appended, &v51);
              RIO_MTLX::FilePath::asString(&appended, 1, &__p);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              pugi::xml_attribute::set_value(&v49, p_p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v54, &v51.__r_.__value_.__l.__data_);
              __p.__r_.__value_.__r.__words[0] = &appended;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            goto LABEL_97;
          }

          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }
        }
      }

      v30 = RIO_MTLX::CommentElement::CATEGORY(a1);
      v31 = (v18 + 24);
      v32 = *(v18 + 47);
      if (v32 >= 0)
      {
        v33 = *(v18 + 47);
      }

      else
      {
        v33 = *(v18 + 32);
      }

      v34 = v30[23];
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v30 + 1);
      }

      if (v33 != v34)
      {
        goto LABEL_85;
      }

      v36 = *v31;
      if (v32 >= 0)
      {
        v36 = (v18 + 24);
      }

      v37 = v35 >= 0 ? v30 : *v30;
      if (!memcmp(v36, v37, v33))
      {
        appended = pugi::xml_node::append_child(a2, 5u);
        v39 = RIO_MTLX::Element::DOC_ATTRIBUTE(appended);
        v40 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v18 + 160), v39);
        if (v40)
        {
          v41 = (v40 + 5);
        }

        else
        {
          v41 = RIO_MTLX::EMPTY_STRING(0);
        }

        if (v41[23] < 0)
        {
          v41 = *v41;
        }

        a1 = pugi::xml_node::set_value(&appended, v41);
      }

      else
      {
LABEL_85:
        if (v32 < 0)
        {
          v31 = *v31;
        }

        v38 = pugi::xml_node::append_child(a2, 2u);
        appended = v38;
        pugi::xml_node::set_name(&appended, v31);
        v51.__r_.__value_.__r.__words[0] = v38;
        v45[0] = v18;
        v45[1] = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }
    }

LABEL_97:
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v16 += 2;
  }

  while (v16 != v17);
  v42 = v55[0];
LABEL_102:
  std::__tree<std::string>::destroy(&v54, v42);
  result = std::__function::__value_func<BOOL ()(std::shared_ptr<RIO_MTLX::Element const>)>::~__value_func[abi:ne200100](v56);
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24755A350(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::anonymous namespace::elementFromXml(std::string *a1, RIO_MTLX::Element **a2, _BYTE *a3)
{
  v5 = a1->__r_.__value_.__r.__words[0];
  if (!a1->__r_.__value_.__r.__words[0])
  {
    goto LABEL_27;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = a1;
  do
  {
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = &str_16;
    }

    v9 = RIO_MTLX::Element::NAME_ATTRIBUTE(a1);
    v10 = strlen(v8);
    v11 = *(v9 + 23);
    if (v11 < 0)
    {
      if (v10 == v9[1])
      {
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v9 = *v9;
LABEL_13:
        a1 = memcmp(v9, v8, v10);
        if (!a1)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_13;
    }

    v12 = *a2;
    if (v6[1])
    {
      v13 = v6[1];
    }

    else
    {
      v13 = &str_16;
    }

    std::string::basic_string[abi:ne200100]<0>(&v46, v13);
    if (v6[2])
    {
      v14 = v6[2];
    }

    else
    {
      v14 = &str_16;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v14);
    a1 = RIO_MTLX::Element::setAttribute(v12, &v46, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

LABEL_24:
    v6 = v6[4];
  }

  while (v6);
  v5 = v7->__words[0];
  if (v7->__words[0])
  {
LABEL_26:
    v15 = *(v5 + 32);
    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
LABEL_28:
  v43 = v15;
  v44 = v5;
  while (v15)
  {
    if (v15[1])
    {
      v31 = v15[1];
    }

    else
    {
      v31 = &str_16;
    }

    v32 = std::string::basic_string[abi:ne200100]<0>(&v46, v31);
    memset(&__p, 0, sizeof(__p));
    for (i = v15[7]; i; i = i[4])
    {
      if (i[1])
      {
        v34 = i[1];
      }

      else
      {
        v34 = &str_16;
      }

      v35 = RIO_MTLX::Element::NAME_ATTRIBUTE(v32);
      v32 = strlen(v34);
      v36 = v35[23];
      if (v36 < 0)
      {
        if (v32 != *(v35 + 1))
        {
          continue;
        }

        if (v32 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v35 = *v35;
      }

      else if (v32 != v36)
      {
        continue;
      }

      v32 = memcmp(v35, v34, v32);
      if (!v32)
      {
        if (i[2])
        {
          v37 = i[2];
        }

        else
        {
          v37 = &str_16;
        }

        MEMORY[0x24C1A8D40](&__p, v37);
        break;
      }
    }

LABEL_31:
    v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(*a2 + 12, &__p.__r_.__value_.__l.__data_);
    if (v16)
    {
      v17 = v16[5];
      v18 = v16[6];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = *a2;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = __p;
    }

    RIO_MTLX::Element::addChildOfCategory(v19, &v46, &v41, &v42);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v20 = *(&v42 + 1);
    v40 = v42;
    if (*(&v42 + 1))
    {
      atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (a3 && *a3 == 1)
    {
      v22 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v22 = *(&v46 + 1);
      }

      if (!v22)
      {
        v23 = *a2;
        v24 = *(&v42 + 1);
        v39 = v42;
        if (*(&v42 + 1))
        {
          atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v25 = RIO_MTLX::CommentElement::CATEGORY(v21);
        RIO_MTLX::Element::changeChildCategory(v23, &v39, v25, &v38);
        v26 = *(&v42 + 1);
        v42 = *&v38.__r_.__value_.__l.__data_;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v27 = v42;
        if (v15)
        {
          if (v15[2])
          {
            v28 = v15[2];
          }

          else
          {
            v28 = &str_16;
          }
        }

        else
        {
          v28 = &str_16;
        }

        v29 = std::string::basic_string[abi:ne200100]<0>(&v38, v28);
        v30 = RIO_MTLX::Element::DOC_ATTRIBUTE(v29);
        RIO_MTLX::Element::setAttribute(v27, v30, &v38);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(&v42 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
    }

LABEL_66:
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

    v15 = v43[6];
    v43 = v15;
  }

  if (v44 != v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, &str_16);
    memset(&__p, 0, sizeof(__p));
    goto LABEL_31;
  }
}

void sub_24755A74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::XmlReadOptions::~XmlReadOptions(RIO_MTLX::XmlReadOptions *this)
{
  v2 = (this + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::vector<RIO_MTLX::FilePath>::__assign_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 5)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 4;
          v18 = v10;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v12 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v12 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<RIO_MTLX::FilePath>::__vallocate[abi:ne200100](a1, v13);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v14 = a1[1] - v9;
  if (a4 <= v14 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<RIO_MTLX::FilePath *,RIO_MTLX::FilePath *,RIO_MTLX::FilePath *>(&v18, a2, a3, v9);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      do
      {
        v17 -= 4;
        v18 = v17;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<RIO_MTLX::FilePath *,RIO_MTLX::FilePath *,RIO_MTLX::FilePath *>(&v18, a2, a2 + v14, v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*,RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(a1, a2 + v14, a3, a1[1]);
  }
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<RIO_MTLX::Element const>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void RIO_MTLX::Element::addChild<RIO_MTLX::Node>(RIO_MTLX::Node *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v4 = RIO_MTLX::Node::CATEGORY(a1);
    v5 = v4;
    if (v4[23] >= 0)
    {
      v6 = v4[23];
    }

    else
    {
      v6 = *(v4 + 1);
    }

    v7 = __p;
    std::string::basic_string[abi:ne200100](__p, v6 + 1);
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (v5[23] >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *v5;
      }

      memmove(v7, v8, v6);
    }

    *(v7 + v6) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v11);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    v12 = v11;
    *(&v11.__r_.__value_.__s + 23) = 0;
    v11.__r_.__value_.__s.__data_[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v11, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::Node,std::allocator<RIO_MTLX::Node>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24755AEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::Node>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::Node>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945308;
  std::allocator<RIO_MTLX::Node>::construct[abi:ne200100]<RIO_MTLX::Node,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<RIO_MTLX::Node>::construct[abi:ne200100]<RIO_MTLX::Node,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::Node *a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  RIO_MTLX::Node::Node(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_24755B05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*),std::allocator<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*)>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594F4F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*),std::allocator<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*)>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v8 = *(a1 + 8);
  v9 = a2[1];
  v13 = *a2;
  v14 = v9;
  *a2 = 0;
  a2[1] = 0;
  memset(v11, 0, sizeof(v11));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v11, *a3, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));
  v12 = *(a3 + 24);
  memset(v10, 0, sizeof(v10));
  std::vector<RIO_MTLX::FilePath>::__init_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(v10, *a4, a4[1], (a4[1] - *a4) >> 5);
  v8(&v13, v11, v10, *a5);
  v15 = v10;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_24755B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  *(v18 - 56) = v17;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100]((v18 - 56));
  *(v18 - 56) = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 56));
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*),std::allocator<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*)>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1A90A0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_24755B32C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdUtilsCreateTopLevelEntityFromStage(uint64_t *a1)
{
  v152 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(&v141);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(&v141);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v103, v2);
  v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v103);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetRealPath(v3);
  v141 = 0uLL;
  *&v142 = 0;
  v138.n128_u64[1] = 0;
  *&v139 = 0;
  v138.n128_u64[0] = &v138.n128_u64[1];
  pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v138, v138.n128_u64[1]);
  if (SBYTE7(v142) < 0)
  {
    operator delete(v141);
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v141, &v105);
  pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  v4 = *(&v141 + 1);
  if (*(&v141 + 1) && atomic_fetch_add_explicit((*(&v141 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v131 = 0;
  v132 = 0;
  v133 = 0;
  v130[0] = 0;
  v130[1] = 0;
  v129 = v130;
  std::string::basic_string[abi:ne200100]<0>(__p, "relocated");
  MEMORY[0x24C1A5E00](&v126, __p);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v134);
  EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v5);
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(EditTarget);
  pxrInternal__aapl__pxrReserved__::SdfLayer::InsertSubLayerPath();
  v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v134);
  PseudoRoot = pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v138, v7);
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(PseudoRoot);
  v11 = *UsdPrimDefaultPredicate;
  v10 = UsdPrimDefaultPredicate[1];
  v12 = UsdPrimDefaultPredicate[2];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v11 & 0x2000) != 0 || (v10 & 0x2000) == 0))
  {
    v11 |= 0x2000uLL;
    v10 &= ~0x2000uLL;
  }

  *&v135 = v11;
  *(&v135 + 1) = v10;
  *&v136 = v12;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v138, &v135, &v141);
  if ((BYTE8(v139) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v139 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v98 = a1;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v139);
  if (v138.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v138.n128_i64[1]);
  }

  v138.n128_u64[0] = v141;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v138.n128_u32[2], &v141 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v138.n128_u32[3], &v141 + 3);
  v139 = v142;
  v140 = v143;
  *&v135 = v144;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v135 + 2, &v145);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v135 + 3, &v146);
  v136 = v147;
  v137 = v148;
  while (*&v138 != v135 || !pxrInternal__aapl__pxrReserved__::operator==(&v139, &v136))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v138, &v149);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v149, &v122);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](&v106, &v122);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v122);
    if ((BYTE8(v150) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v150 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v150);
    if (*(&v149 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v149 + 1));
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v138);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v135 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v138.n128_i64[1]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v145);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141 + 8);
  v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v134);
  pxrInternal__aapl__pxrReserved__::UsdStage::TraverseAll(&v138, v13);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(&v138, &v122);
  v119.__r_.__value_.__r.__words[0] = v138.n128_u64[1];
  v119.__r_.__value_.__l.__size_ = &v138;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v120 = 0;
  v121 = 0;
  while (1)
  {
    v14 = v122.__r_.__value_.__l.__size_ == v119.__r_.__value_.__l.__size_ && v122.__r_.__value_.__r.__words[0] == v119.__r_.__value_.__r.__words[0];
    if (v14 && v122.__r_.__value_.__r.__words[2] == v119.__r_.__value_.__r.__words[2] && v123 == v120 && v124 == v121 && v125 == HIBYTE(v121))
    {
      break;
    }

    *&v141 = v122.__r_.__value_.__r.__words[0];
    if (v122.__r_.__value_.__r.__words[0])
    {
      atomic_fetch_add_explicit((v122.__r_.__value_.__r.__words[0] + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v115, &v141, &v122.__r_.__value_.__r.__words[2]);
    if (v141)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v141);
    }

    IsInstanceable = pxrInternal__aapl__pxrReserved__::UsdPrim::IsInstanceable(&v115);
    if (IsInstanceable)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(IsInstanceable);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (IsA)
      {
        v17 = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(IsA);
        v19 = *v17;
        v18 = v17[1];
        v20 = v17[2];
        if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v19 & 0x2000) != 0 || (v18 & 0x2000) == 0))
        {
          v19 |= 0x2000uLL;
          v18 &= ~0x2000uLL;
        }

        *&v135 = v19;
        *(&v135 + 1) = v18;
        *&v136 = v20;
        pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v115, &v135, &v141);
        *&v135 = v141;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v135 + 2, &v141 + 2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v135 + 3, &v141 + 3);
        v136 = v142;
        v137 = v143;
        *&v149 = v144;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v149 + 2, &v145);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v149 + 3, &v146);
        v150 = v147;
        v151 = v148;
        if (v135 == v149)
        {
          v21 = pxrInternal__aapl__pxrReserved__::operator==(&v136, &v150);
        }

        else
        {
          v21 = 0;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v149 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v135 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v145);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141 + 8);
        if (v21)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::SetInstanceable(&v115);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(&v135, &v115);
    v99 = *(&v135 + 1);
    for (i = v135; i != v99; i += 32)
    {
      v149 = 0uLL;
      *&v150 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
      v23 = *(&v149 + 1);
      v24 = v149;
      if (v149 != *(&v149 + 1))
      {
        v100 = i;
        v101 = *(&v149 + 1);
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v115, &v113);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(&v141, &v113);
          v25 = v141;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v114, v141);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v114 + 1, (v25 + 4));
          v110 = &v141;
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v110);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(&v141, v24);
          v26 = v141;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v113, v141);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v113 + 1, (v26 + 4));
          v110 = &v141;
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v110);
          if (v114 != v113)
          {
            v27 = v132;
            if (v132 >= v133)
            {
              v31 = (v132 - v131) >> 5;
              if ((v31 + 1) >> 59)
              {
                std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
              }

              v32 = (v133 - v131) >> 4;
              if (v32 <= v31 + 1)
              {
                v32 = v31 + 1;
              }

              if (v133 - v131 >= 0x7FFFFFFFFFFFFFE0)
              {
                v33 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                if (!(v33 >> 59))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v34 = 32 * v31;
              *v34 = *i;
              v35 = *(i + 8);
              *(v34 + 8) = v35;
              if (v35)
              {
                atomic_fetch_add_explicit((v35 + 48), 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v34 + 16), (i + 16));
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v34 + 20), (i + 20));
              v36 = *(i + 24);
              *(32 * v31 + 0x18) = v36;
              if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *(32 * v31 + 0x18) &= 0xFFFFFFFFFFFFFFF8;
              }

              v37 = v131;
              v38 = v132;
              v39 = v34 + v131 - v132;
              if (v132 != v131)
              {
                v40 = 0;
                do
                {
                  v41 = v39 + v40;
                  v42 = &v37[v40];
                  *v41 = *&v37[v40];
                  *(v41 + 8) = *&v37[v40 + 8];
                  *&v37[v40 + 8] = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v39 + v40 + 16), &v37[v40 + 16]);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v39 + v40 + 20), &v37[v40 + 20]);
                  *(v41 + 24) = *&v37[v40 + 24];
                  *(v42 + 3) = 0;
                  v40 += 32;
                }

                while (v42 + 32 != v38);
                do
                {
                  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,0>(v37);
                  v37 += 32;
                }

                while (v37 != v38);
                v37 = v131;
              }

              v30 = (v34 + 32);
              v131 = v39;
              v132 = (v34 + 32);
              v133 = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              *v132 = *i;
              v28 = *(i + 8);
              *(v27 + 1) = v28;
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 48), 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v27 + 4, (i + 16));
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v27 + 5, (i + 20));
              v29 = *(i + 24);
              *(v27 + 3) = v29;
              if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *(v27 + 3) &= 0xFFFFFFFFFFFFFFF8;
              }

              v30 = v27 + 32;
            }

            v23 = v101;
            v132 = v30;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v110, &v113);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v110 + 1, &v113 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v111, &v114);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v112, &v114 + 1);
            i = v100;
            std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&v141, v100, v24);
            v43 = std::map<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,std::allocator<std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::operator[](&v129, &v141);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v43, &v110);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v43 + 4, &v110 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v43 + 8, &v111);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v43 + 12, &v112);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v143);
            if ((BYTE8(v142) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v142 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v142);
            if (*(&v141 + 1))
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v141 + 1));
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v111);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v110);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v114);
          v24 = (v24 + 8);
        }

        while (v24 != v23);
      }

      *&v141 = &v149;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v141);
    }

    *&v141 = &v135;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v141);
    if ((v118 & 7) != 0)
    {
      atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v117);
    if (v116)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v116);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v122);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v119.__r_.__value_.__r.__words[2]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v122.__r_.__value_.__r.__words[2]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v139);
  v44 = v131;
  for (j = v132; v44 != j; v44 += 32)
  {
    v138.n128_u32[0] = *v44;
    v45 = *(v44 + 1);
    v138.n128_u64[1] = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v139, v44 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v139 + 1, v44 + 5);
    v46 = *(v44 + 3);
    *(&v139 + 1) = v46;
    if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(&v139 + 1) &= 0xFFFFFFFFFFFFFFF8;
    }

    v135 = 0uLL;
    *&v136 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    v149 = 0uLL;
    *&v150 = 0;
    v48 = *(&v135 + 1);
    v47 = v135;
    if (v135 != *(&v135 + 1))
    {
      do
      {
        std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&v141, &v138, v47);
        v49 = std::map<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,std::allocator<std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::operator[](&v129, &v141);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v115, v49);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v115 + 1, v49 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v116, v49 + 2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v116 + 1, v49 + 3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v143);
        if ((BYTE8(v142) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v142 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v142);
        if (*(&v141 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v141 + 1));
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(&v141, v47);
        v50 = v141;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v110, v141);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v110 + 1, (v50 + 4));
        v122.__r_.__value_.__r.__words[0] = &v141;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v122);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v114, &v116);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v114 + 1, &v116 + 1);
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v114);
        v52 = String;
        if (*(String + 23) >= 0)
        {
          v53 = *(String + 23);
        }

        else
        {
          v53 = *(String + 8);
        }

        std::string::basic_string[abi:ne200100](&v119, v53 + 1);
        if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v119;
        }

        else
        {
          v54 = v119.__r_.__value_.__r.__words[0];
        }

        if (v53)
        {
          if (v52[23] >= 0)
          {
            v55 = v52;
          }

          else
          {
            v55 = *v52;
          }

          memmove(v54, v55, v53);
        }

        *(&v54->__r_.__value_.__l.__data_ + v53) = 47;
        if ((v128 & 0x80u) == 0)
        {
          v56 = __p;
        }

        else
        {
          v56 = __p[0];
        }

        if ((v128 & 0x80u) == 0)
        {
          v57 = v128;
        }

        else
        {
          v57 = __p[1];
        }

        v58 = std::string::append(&v119, v56, v57);
        v59 = *&v58->__r_.__value_.__l.__data_;
        v122.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v122.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v60 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v47);
        v61 = *(v60 + 23);
        if (v61 >= 0)
        {
          v62 = v60;
        }

        else
        {
          v62 = *v60;
        }

        if (v61 >= 0)
        {
          v63 = *(v60 + 23);
        }

        else
        {
          v63 = *(v60 + 8);
        }

        v64 = std::string::append(&v122, v62, v63);
        v65 = *&v64->__r_.__value_.__l.__data_;
        *&v142 = *(&v64->__r_.__value_.__l + 2);
        v141 = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        MEMORY[0x24C1A5D70](&v122, &v141);
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](&v149, &v122);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v122);
        if (SBYTE7(v142) < 0)
        {
          operator delete(v141);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v114);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v110);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v116);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v115);
        v47 = (v47 + 8);
      }

      while (v47 != v48);
      if (v149 != *(&v149 + 1))
      {
        pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
      }
    }

    *&v141 = &v149;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v141);
    *&v141 = &v135;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v141);
    if ((BYTE8(v139) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v139 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v139);
    if (v138.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v138.n128_i64[1]);
    }
  }

  v66 = v129;
  if (v129 != v130)
  {
    do
    {
      LODWORD(v141) = *(v66 + 8);
      v67 = v66[5];
      *(&v141 + 1) = v67;
      if (v67)
      {
        atomic_fetch_add_explicit(v67 + 6, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v142, v66 + 12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v142 + 1, v66 + 13);
      v68 = v66[7];
      *(&v142 + 1) = v68;
      if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(&v142 + 1) &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v143, v66 + 16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v143 + 1, v66 + 17);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v144, v66 + 18);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v144 + 1, v66 + 19);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v145, v66 + 20);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v146, v66 + 21);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v122, &v144);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v122.__r_.__value_.__r.__words + 1, &v144 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v119, &v145);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v119.__r_.__value_.__r.__words + 1, &v146);
      v69 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v134);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v149, &v119, &v126);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v122);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v135, &v149, NameToken);
      pxrInternal__aapl__pxrReserved__::UsdStage::OverridePrim(&v138, v69, &v135);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v135);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v149);
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v135, &v138);
      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v149, 0.0, 1.0);
      pxrInternal__aapl__pxrReserved__::UsdReferences::AddInternalReference();
      if ((BYTE8(v136) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v136 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v136);
      if (*(&v135 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v135 + 1));
      }

      if ((BYTE8(v139) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v139 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v139);
      if (v138.n128_u64[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v138.n128_i64[1]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v119);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v122);
      std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>::~pair(&v141);
      v71 = v66[1];
      if (v71)
      {
        do
        {
          v72 = v71;
          v71 = *v71;
        }

        while (v71);
      }

      else
      {
        do
        {
          v72 = v66[2];
          v14 = *v72 == v66;
          v66 = v72;
        }

        while (!v14);
      }

      v66 = v72;
    }

    while (v72 != v130);
  }

  if ((v126 & 7) != 0)
  {
    atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v128 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(v130[0]);
  *&v141 = &v131;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v141);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v134);
  v73 = v104;
  if (v104 && atomic_fetch_add_explicit((v104 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v73 + 8))(v73);
  }

  v74 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v98 + 2);
  RootLayer = pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v135, v74);
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(RootLayer);
  v76 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v109);
  v77 = pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v149, v76);
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v77);
  *&v141 = &unk_28594F618;
  *(&v141 + 1) = tleShouldCopyValue;
  *(&v142 + 1) = &v141;
  v138.n128_u64[0] = &unk_28594F6C8;
  v138.n128_u64[1] = tleShouldCopyChildren;
  *(&v139 + 1) = &v138;
  pxrInternal__aapl__pxrReserved__::SdfCopySpec();
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](&v138);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](&v141);
  v78 = *(&v149 + 1);
  if (*(&v149 + 1) && atomic_fetch_add_explicit((*(&v149 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v78 + 8))(v78);
  }

  v79 = *(&v135 + 1);
  if (*(&v135 + 1) && atomic_fetch_add_explicit((*(&v135 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v109);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v141, v80);
  v81 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v141);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v119, v81);
  v82 = *(&v141 + 1);
  if (*(&v141 + 1) && atomic_fetch_add_explicit((*(&v141 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v82 + 8))(v82);
  }

  *(&v149 + 1) = &unk_285946C7B;
  LOBYTE(v149) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v141, "RealityKit");
  pxrInternal__aapl__pxrReserved__::VtDictionary::erase();
  if (SBYTE7(v142) < 0)
  {
    operator delete(v141);
  }

  std::string::basic_string[abi:ne200100]<0>(&v141, "RealityKit:requireEntityAPI");
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  if (SBYTE7(v142) < 0)
  {
    operator delete(v141);
  }

  v83 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v109);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v141, v83);
  v84 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v141);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(v84, &v119);
  v85 = *(&v141 + 1);
  if (*(&v141 + 1) && atomic_fetch_add_explicit((*(&v141 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v85 + 8))(v85);
  }

  LODWORD(v141) = 1;
  *(&v141 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(&v142 + 1) = 0;
  v86 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v109);
  std::string::basic_string[abi:ne200100]<0>(&v135, "/model");
  MEMORY[0x24C1A5D70](&v122, &v135);
  v115 = 0;
  pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v138, v86, &v122, &v115);
  LODWORD(v141) = v138.n128_u32[0];
  if (*(&v141 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v141 + 1));
  }

  *(&v141 + 1) = v138.n128_u64[1];
  v138.n128_u64[1] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v142, &v139);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v142 + 4, &v139 + 1);
  if ((BYTE8(v142) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v142 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(&v142 + 1) = *(&v139 + 1);
  *(&v139 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v139);
  if (v138.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v138.n128_i64[1]);
  }

  if ((v115 & 7) != 0)
  {
    atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v122);
  if (SBYTE7(v136) < 0)
  {
    operator delete(v135);
  }

  if (v107 != v106)
  {
    v87 = atomic_load(MEMORY[0x277D86540]);
    if (v87)
    {
      MEMORY[0x24C1A5DE0](&v138, "RealityKit:entityName");
      pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v106);
      pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::TfToken>(&v141, (v87 + 72));
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  markPrimAsEntityProducing(&v141, 1, 0);
  v88 = v98[3];
  v89 = v109;
  v109 = 0;
  v138.n128_u64[0] = v89;
  v138.n128_u64[1] = v88;
  if (v88)
  {
    CFRetain(v88);
  }

  v90 = v98[4];
  v98[4] = 0;
  *&v139 = v90;
  v91 = RIOPxrUsdStageCreate<realityio::RIOPxrUsdStageData>(&v138);
  v93 = v92;
  v94 = v139;
  *&v139 = 0;
  if (v94)
  {
    (*(*v94 + 8))(v94, v91);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v138.n128_u64[1]);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v138);
  if ((BYTE8(v142) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v142 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v142);
  if (*(&v141 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v141 + 1));
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v149);
  v95 = v119.__r_.__value_.__r.__words[0];
  v119.__r_.__value_.__r.__words[0] = 0;
  if (v95)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v95, *(v95 + 8));
    MEMORY[0x24C1A91B0](v95, 0x1020C4062D53EE8);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v105);
  *&v141 = &v106;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v141);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v109);
  v96 = *MEMORY[0x277D85DE8];
  return v93;
}

void sub_24755CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16, __int16 a17, uint64_t a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a54);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v54 - 224));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v54 - 144));
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a29);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a16);
  a33 = &a17;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a33);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a20);
  _Unwind_Resume(a1);
}

BOOL tleShouldCopyValue(uint64_t a1, void *a2)
{
  MEMORY[0x24C1A5DE0](&v8, "defaultPrim");
  v3 = v8;
  if ((v8 ^ *a2) < 8)
  {
    result = 0;
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v7, "subLayerOffsets");
    v4 = v7;
    if ((v7 ^ *a2) < 8)
    {
      result = 0;
    }

    else
    {
      MEMORY[0x24C1A5DE0](&v6, "subLayers");
      result = (v6 ^ *a2) > 7;
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 = v7;
    }

    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 = v8;
  }

  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

__n128 RIOPxrUsdStageCreate<realityio::RIOPxrUsdStageData>(__n128 *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrUsdStageGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdStageGetTypeID::onceToken, &__block_literal_global_23);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = *a1;
    *(Instance + 16) = *a1;
    a1->n128_u64[0] = 0;
    a1->n128_u64[1] = 0;
    v5 = a1[1].n128_u64[0];
    a1[1].n128_u64[0] = 0;
    *(Instance + 32) = v5;
  }

  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(*(a1 + 8), a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 4), a2 + 1);
    result = v4 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(a1, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(*(a1 + 8), a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 4), a2 + 1);
    result = v4 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsInstanceable(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  v2 = atomic_load(MEMORY[0x277D86540]);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<BOOL>(this, (v2 + 200));
  return 0;
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::SetInstanceable(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  v2 = atomic_load(MEMORY[0x277D86540]);
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<BOOL>(this, (v2 + 200));
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
}

uint64_t std::map<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,std::allocator<std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::operator[](uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((pxrInternal__aapl__pxrReserved__::operator<(a2, (v3 + 4)) & 1) == 0 && ((pxrInternal__aapl__pxrReserved__::operator<((v5 + 4), a2) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2 + 4, v5 + 8)))
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    if ((pxrInternal__aapl__pxrReserved__::operator<((v5 + 4), a2) & 1) == 0 && ((pxrInternal__aapl__pxrReserved__::operator<(a2, (v5 + 4)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 8, a2 + 4)))
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (!*v4)
  {
LABEL_11:
    operator new();
  }

  return *v4 + 72;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  return a1;
}

uint64_t makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair::~toFromRootPair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((8 * v2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((8 * v2 + 4), a2 + 1);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(&v14);
  return v13;
}

void sub_24755DAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<BOOL>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetStrongestResolvedMetadata();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataTypedValue<BOOL>::_StoreVtValueImpl<pxrInternal__aapl__pxrReserved__::VtValue const&>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<BOOL>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<BOOL>::GetValue(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &unk_285946C7B;
  *a2 = v3;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<BOOL>::IsEqual(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(a2);
  if (result)
  {
    v5 = *(v2 + 1);
    if ((v5 & 4) != 0)
    {
      v2 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    return *v2 == **(a1 + 8);
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  result = *(a1 + 8);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator<(pxrInternal__aapl__pxrReserved__::UsdObject *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1, &v6);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v5);
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v6, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  return v3;
}

void sub_24755DE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 32), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 36), a3 + 1);
  return a1;
}

void std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(a1[1]);
    std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>::~pair((a1 + 4));

    operator delete(a1);
  }
}

void realityio::RIOPxrUsdStageData::~RIOPxrUsdStageData(realityio::RIOPxrUsdStageData *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(this + 1);

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this);
}

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594F618;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594F6C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_24755E3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::Document(RIO_MTLX::Document *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = RIO_MTLX::Document::CATEGORY(a1);
  RIO_MTLX::GraphElement::GraphElement(a1, &v7, v6, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_28594F778;
  operator new();
}

void RIO_MTLX::Document::~Document(RIO_MTLX::Document *this)
{
  *this = &unk_28594F778;
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(v2 + 184));
    v3 = *(v2 + 168);
    *(v2 + 168) = 0;
    if (v3)
    {
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(v2 + 144));
    v4 = *(v2 + 128);
    *(v2 + 128) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(v2 + 104));
    v5 = *(v2 + 88);
    *(v2 + 88) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    std::mutex::~mutex((v2 + 16));
    v6 = *(v2 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    MEMORY[0x24C1A91B0](v2, 0x10A0C40A0B08605);
  }

  RIO_MTLX::Element::~Element(this);
}

{
  RIO_MTLX::Document::~Document(this);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Document::initialize(RIO_MTLX::Document *this)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v9, this + 1);
  v3 = v9;
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(this + 31);
  *(this + 30) = v3;
  *(this + 31) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    v2 = v10;
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  RIO_MTLX::Element::getDocument(this, &v9);
  v5 = *(this + 34);
  v7 = v9;
  v6 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5[1];
  *v5 = v7;
  v5[1] = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  RIO_MTLX::Element::clearContent(this);
  RIO_MTLX::InterfaceElement::setVersionIntegers(this, 1, 38);
}

void sub_24755E740(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::importLibrary(uint64_t a1, RIO_MTLX::Element **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 17);
    v4 = *(v2 + 18);
    if (v3 != v4)
    {
      while (1)
      {
        v8 = *v3;
        v7 = *(v3 + 8);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RIO_MTLX::Element::getQualifiedName(v8, &v8[2], &__p);
        v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), &__p.__r_.__value_.__l.__data_);
        if (!v9)
        {
          break;
        }

        v10 = v9[5];
        v11 = v9[6];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          goto LABEL_11;
        }

LABEL_43:
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v7)
          {
            goto LABEL_48;
          }

LABEL_47:
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          goto LABEL_48;
        }

        if (v7)
        {
          goto LABEL_47;
        }

LABEL_48:
        v3 += 16;
        if (v3 == v4)
        {
          return;
        }
      }

      v11 = 0;
LABEL_11:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v48 = __p;
      }

      RIO_MTLX::Element::addChildOfCategory(a1, &v8[1], &v48, &v49);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      v12 = v49;
      v46 = v8;
      v47 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RIO_MTLX::Element::copyContentFrom(v12, &v46);
      v13 = v47;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      v14 = v49;
      v15 = RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(v13);
      v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v14 + 160), v15);
      if (!v16)
      {
        v17 = *a2;
        v18 = RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(0);
        v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v17 + 20, v18);
        if (v16)
        {
          v19 = v49;
          FilePrefix = RIO_MTLX::Element::getFilePrefix(*a2);
          v21 = RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(FilePrefix);
          v16 = RIO_MTLX::Element::setAttribute(v19, v21, FilePrefix);
        }
      }

      v22 = v49;
      v23 = RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(v16);
      v24 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v22 + 160), v23);
      if (!v24)
      {
        v25 = *a2;
        v26 = RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(0);
        v24 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v25 + 20, v26);
        if (v24)
        {
          v27 = v49;
          GeomPrefix = RIO_MTLX::Element::getGeomPrefix(*a2);
          v29 = RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(GeomPrefix);
          v24 = RIO_MTLX::Element::setAttribute(v27, v29, GeomPrefix);
        }
      }

      v30 = v49;
      v31 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(v24);
      v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v30 + 160), v31);
      if (!v32)
      {
        v33 = *a2;
        v34 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(0);
        v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v33 + 20, v34);
        if (v32)
        {
          v35 = v49;
          ColorSpace = RIO_MTLX::Element::getColorSpace(*a2);
          v37 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(ColorSpace);
          v32 = RIO_MTLX::Element::setAttribute(v35, v37, ColorSpace);
        }
      }

      v38 = v49;
      v39 = RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(v32);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v38 + 160), v39))
      {
        v40 = *a2;
        v41 = RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(0);
        if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v40 + 20, v41))
        {
          v42 = v49;
          Namespace = RIO_MTLX::Element::getNamespace(*a2);
          v44 = RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(Namespace);
          RIO_MTLX::Element::setAttribute(v42, v44, Namespace);
        }
      }

      if ((*(v49 + 95) & 0x8000000000000000) != 0)
      {
        if (*(v49 + 80))
        {
          goto LABEL_41;
        }
      }

      else if (*(v49 + 95))
      {
        goto LABEL_41;
      }

      v45 = *a2;
      if ((*(*a2 + 95) & 0x8000000000000000) != 0)
      {
        if (!*(v45 + 10))
        {
          goto LABEL_41;
        }
      }

      else if (!*(*a2 + 95))
      {
LABEL_41:
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        goto LABEL_43;
      }

      std::string::operator=((v49 + 72), v45 + 3);
      goto LABEL_41;
    }
  }
}

void sub_24755EA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RIO_MTLX::Element::getColorSpace(RIO_MTLX::Element *this)
{
  v2 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::Document::getReferencedSourceUris(RIO_MTLX::Document *this@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  RIO_MTLX::Element::traverseTree(this, &v13);
  *(&v17 + 1) = 0;
  v9 = v13;
  v10 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v11, 0, sizeof(v11));
  v3 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v11, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
  v12 = v17;
  RIO_MTLX::NULL_TREE_ITERATOR(v3);
  v6 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
  if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
  {
    atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
  }

  memset(v7, 0, sizeof(v7));
  std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v7, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
  v8 = xmmword_27EE52758;
  while (RIO_MTLX::TreeIterator::operator!=(&v9, &v6))
  {
    v4 = v9;
    v5 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v4 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v4 + 80))
      {
        goto LABEL_14;
      }

LABEL_13:
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a2, (v4 + 72));
      goto LABEL_14;
    }

    if (*(v4 + 95))
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    RIO_MTLX::TreeIterator::operator++(&v9);
  }

  RIO_MTLX::TreeIterator::~TreeIterator(&v6);
  RIO_MTLX::TreeIterator::~TreeIterator(&v9);
  RIO_MTLX::TreeIterator::~TreeIterator(&v13);
}

void sub_24755ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  RIO_MTLX::TreeIterator::~TreeIterator(va);
  RIO_MTLX::TreeIterator::~TreeIterator((v10 - 88));
  std::__tree<std::string>::destroy(v9, *(v9 + 8));
  _Unwind_Resume(a1);
}

unint64_t RIO_MTLX::Document::getVersionIntegers(RIO_MTLX::Document *this)
{
  v2 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(this);
  if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2))
  {
    return 0x2600000001;
  }

  return RIO_MTLX::InterfaceElement::getVersionIntegers(this);
}

char *RIO_MTLX::Document::getMatchingPorts@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  RIO_MTLX::Document::Cache::refresh(*(a1 + 272));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>((*(a1 + 272) + 88), a2);
  v7 = result;
  v9 = v8;
  while (v7 != v9)
  {
    result = std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, (v7 + 40));
    v7 = *v7;
  }

  return result;
}

void sub_24755EDFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Document::Cache::refresh(RIO_MTLX::Document::Cache *this)
{
  std::mutex::lock((this + 16));
  if ((*(this + 80) & 1) == 0)
  {
    if (*(this + 14))
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(this + 13));
      *(this + 13) = 0;
      v2 = *(this + 12);
      if (v2)
      {
        for (i = 0; i != v2; ++i)
        {
          *(*(this + 11) + 8 * i) = 0;
        }
      }

      *(this + 14) = 0;
    }

    if (*(this + 19))
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(this + 18));
      *(this + 18) = 0;
      v4 = *(this + 17);
      if (v4)
      {
        for (j = 0; j != v4; ++j)
        {
          *(*(this + 16) + 8 * j) = 0;
        }
      }

      *(this + 19) = 0;
    }

    if (*(this + 24))
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(this + 23));
      *(this + 23) = 0;
      v6 = *(this + 22);
      if (v6)
      {
        for (k = 0; k != v6; ++k)
        {
          *(*(this + 21) + 8 * k) = 0;
        }
      }

      *(this + 24) = 0;
    }

    v8 = *(this + 1);
    if (v8)
    {
      v8 = std::__shared_weak_count::lock(v8);
      v9 = v8;
      if (v8)
      {
        v8 = *this;
      }
    }

    else
    {
      v9 = 0;
    }

    RIO_MTLX::Element::traverseTree(v8, &v43);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    *(&v47 + 1) = 0;
    v39 = v43;
    v40 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v41, 0, sizeof(v41));
    v10 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v41, v45, v46, 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3));
    v42 = v47;
    RIO_MTLX::NULL_TREE_ITERATOR(v10);
    v36 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    memset(v37, 0, sizeof(v37));
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v37, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v38 = xmmword_27EE52758;
    while (1)
    {
      v11 = RIO_MTLX::TreeIterator::operator!=(&v39, &v36);
      if (!v11)
      {
        RIO_MTLX::TreeIterator::~TreeIterator(&v36);
        RIO_MTLX::TreeIterator::~TreeIterator(&v39);
        RIO_MTLX::TreeIterator::~TreeIterator(&v43);
        *(this + 80) = 1;
        break;
      }

      v13 = v39;
      v12 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(v11);
      v15 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), v14);
      if (v15)
      {
        v16 = (v15 + 40);
      }

      else
      {
        v15 = RIO_MTLX::EMPTY_STRING(0);
        v16 = v15;
      }

      v17 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v15);
      v18 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), v17);
      if (v18)
      {
        v19 = (v18 + 40);
      }

      else
      {
        v18 = RIO_MTLX::EMPTY_STRING(0);
        v19 = v18;
      }

      v20 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(v18);
      v21 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), v20);
      if (v21)
      {
        v22 = (v21 + 5);
      }

      else
      {
        v22 = RIO_MTLX::EMPTY_STRING(0);
      }

      if ((*(v16 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 1))
        {
          goto LABEL_48;
        }
      }

      else if (!*(v16 + 23))
      {
        goto LABEL_48;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::PortElement>(v13, &v34);
      if (v34)
      {
        RIO_MTLX::Element::getQualifiedName(v34, v16, &__p);
        operator new();
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

LABEL_48:
      if ((*(v19 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v19 + 1))
        {
          goto LABEL_56;
        }
      }

      else if (!*(v19 + 23))
      {
        goto LABEL_56;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v13, &v34);
      if (v34)
      {
        RIO_MTLX::Element::getQualifiedName(v34, v19, &__p);
        operator new();
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

LABEL_56:
      if ((*(v22 + 23) & 0x8000000000000000) != 0)
      {
        if (!v22[1])
        {
          goto LABEL_78;
        }
      }

      else if (!*(v22 + 23))
      {
        goto LABEL_78;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::InterfaceElement>(v13, &v34);
      v24 = v34;
      if (v34)
      {
        v25 = RIO_MTLX::EMPTY_STRING(v23);
        if (RIO_MTLX::Element::isA<RIO_MTLX::NodeGraph>(v24, v25))
        {
          RIO_MTLX::Element::getQualifiedName(v34, v22, &v48);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>>>::__emplace_multi<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>&>();
        }

        RIO_MTLX::Element::asA<RIO_MTLX::Implementation>(v34, &v31);
        if (v31)
        {
          NodeGraph = RIO_MTLX::Implementation::getNodeGraph(v31);
          v27 = NodeGraph;
          v28 = *(NodeGraph + 23);
          if ((v28 & 0x80u) != 0)
          {
            v28 = NodeGraph[1];
          }

          if (!v28)
          {
            RIO_MTLX::Element::getQualifiedName(v34, v22, &v48);
            std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>>>::__emplace_multi<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>&>();
          }

          RIO_MTLX::Element::getDocument(v31, &v48);
          RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeGraph>(v48.__r_.__value_.__l.__data_, v27, &v29);
          if (v48.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48.__r_.__value_.__l.__size_);
          }

          if (v29)
          {
            RIO_MTLX::Element::getQualifiedName(v34, v22, &__p);
            operator new();
          }

          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

LABEL_78:
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      RIO_MTLX::TreeIterator::operator++(&v39);
    }
  }

  std::mutex::unlock((this + 16));
}

void sub_24755FD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  RIO_MTLX::TreeIterator::~TreeIterator(&a38);
  RIO_MTLX::TreeIterator::~TreeIterator((v39 - 168));
  std::mutex::unlock((a14 + 16));
  _Unwind_Resume(a1);
}

void RIO_MTLX::Document::getGeomPropValue(RIO_MTLX *a1, uint64_t a2, const void **a3, RIO_MTLX *a4)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  v8 = RIO_MTLX::EMPTY_STRING(a1);
  RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(a2, v8, &v21);
  v10 = v21;
  v9 = v22;
  if (v21 == v22)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v14 = *v10;
    v13 = *(v10 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::GeomElement::getActiveGeom(&__p, v14);
    v15 = RIO_MTLX::geomStringsMatch(a4, &__p, 0);
    v16 = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }

    RIO_MTLX::Element::getChildOfType<RIO_MTLX::GeomProp>(&__p, v14, a3);
    if (__p.__r_.__value_.__r.__words[0])
    {
      RIO_MTLX::ValueElement::getValue(__p.__r_.__value_.__l.__data_, &v18);
      v12 = v18;
      v17 = v19;
      v18 = 0;
      v19 = 0;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      v11 = v17;
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

LABEL_16:
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v10 += 16;
  }

  while (v10 != v9);
  *(a1 + 1) = v11;
LABEL_21:
  *a1 = v12;
  __p.__r_.__value_.__r.__words[0] = &v21;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2475600AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *__p, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *a10 = v21;
  a10[1] = v19;
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  __p = &a19;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

char *RIO_MTLX::Document::getMatchingNodeDefs@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  RIO_MTLX::Document::Cache::refresh(*(a1 + 272));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>((*(a1 + 272) + 128), a2);
  v7 = result;
  v9 = v8;
  while (v7 != v9)
  {
    result = std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, (v7 + 40));
    v7 = *v7;
  }

  return result;
}

void sub_2475601A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *RIO_MTLX::Document::getMatchingImplementations@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  RIO_MTLX::Document::Cache::refresh(*(a1 + 272));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>((*(a1 + 272) + 168), a2);
  v7 = result;
  v9 = v8;
  while (v7 != v9)
  {
    result = std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, (v7 + 40));
    v7 = *v7;
  }

  return result;
}

void sub_24756023C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::Document::validate(uint64_t a1, std::string *a2)
{
  v18 = 1;
  v4 = (*(*a1 + 64))(a1);
  v6 = v4 != 1 || SHIDWORD(v4) > 37;
  v7 = v4 >= 1 && v6;
  std::string::basic_string[abi:ne200100]<0>(__p, "Unsupported document version");
  RIO_MTLX::Element::validateRequire(a1, v7, &v18, a2, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*a1 + 64))(a1);
  v10 = v8 != 1 || SHIDWORD(v8) < 39;
  v11 = v8 <= 1 && v10;
  std::string::basic_string[abi:ne200100]<0>(v14, "Future document version");
  RIO_MTLX::Element::validateRequire(a1, v11, &v18, a2, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = RIO_MTLX::Element::validate(a1, a2);
  return (v12 & v18);
}

void sub_24756039C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::upgradeVersion(uint64_t **this)
{
  v970 = *MEMORY[0x277D85DE8];
  v1 = ((*this)[8])(this);
  v2 = v1 >= 1 && v1 == 1;
  if (!v2 || SHIDWORD(v1) > 37)
  {
    goto LABEL_2040;
  }

  if (HIDWORD(v1) == 22)
  {
    RIO_MTLX::Element::traverseTree(this, &v965);
    *&v967[8] = 0;
    *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
    if (v965.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v962 = 0;
    v961.__r_.__value_.__r.__words[2] = 0;
    v963 = 0;
    v3 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
    v964 = *v967;
    RIO_MTLX::NULL_TREE_ITERATOR(v3);
    v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v958 = 0;
    v957 = 0;
    v959 = 0;
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v960 = xmmword_27EE52758;
    while (1)
    {
      v4 = RIO_MTLX::TreeIterator::operator!=(&v961, &v956);
      if (!v4)
      {
        RIO_MTLX::TreeIterator::~TreeIterator(&v956);
        RIO_MTLX::TreeIterator::~TreeIterator(&v961);
        RIO_MTLX::TreeIterator::~TreeIterator(&v965);
LABEL_39:
        RIO_MTLX::Element::traverseTree(this, &v965);
        *&v967[8] = 0;
        *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
        if (v965.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v962 = 0;
        v961.__r_.__value_.__r.__words[2] = 0;
        v963 = 0;
        v12 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
        v964 = *v967;
        RIO_MTLX::NULL_TREE_ITERATOR(v12);
        v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
        if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
        {
          atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v958 = 0;
        v957 = 0;
        v959 = 0;
        std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
        v960 = xmmword_27EE52758;
        while (2)
        {
          if (RIO_MTLX::TreeIterator::operator!=(&v961, &v956))
          {
            v13 = *&v961.__r_.__value_.__l.__data_;
            if (v961.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v14 = (v13 + 24);
            v15 = *(v13 + 47);
            if (v15 < 0)
            {
              if (*(v13 + 32) != 6)
              {
                goto LABEL_56;
              }

              v14 = *v14;
            }

            else if (v15 != 6)
            {
              goto LABEL_56;
            }

            v16 = *v14;
            v17 = *(v14 + 2);
            if (v16 == 1684105331 && v17 == 29285)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "shadername");
              v23 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), &__str);
              v24 = v23;
              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }

              if (v24)
              {
                v25 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v23);
                std::string::basic_string[abi:ne200100]<0>(&__str, "shadername");
                v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), &__str);
                if (v26)
                {
                  v27 = (v26 + 5);
                }

                else
                {
                  v27 = RIO_MTLX::EMPTY_STRING(0);
                }

                RIO_MTLX::Element::setAttribute(v13, v25, v27);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                std::string::basic_string[abi:ne200100]<0>(&__str, "shadername");
                RIO_MTLX::Element::removeAttribute(v13, &__str);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }
              }
            }

LABEL_56:
            std::string::basic_string[abi:ne200100]<0>(&__p, "assign");
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__str, this[17], this[18], &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v19 = *(&__str + 1);
            v20 = __str;
LABEL_59:
            if (v20 == v19)
            {
              __p.__r_.__value_.__r.__words[0] = &__str;
              std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
              if (*(&v13 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v961);
              continue;
            }

            v21 = *v20;
            v22 = v20[1];
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v22->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v953[1] = v22;
            v953[0] = v21;
            std::string::basic_string[abi:ne200100]<0>(&__p, "materialassign");
            RIO_MTLX::Element::changeChildCategory(v13, v953, &__p, &v954);
            if (v955)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v955);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v22)
              {
LABEL_66:
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }
            }

            else if (v22)
            {
              goto LABEL_66;
            }

            v20 += 2;
            goto LABEL_59;
          }

          break;
        }

        RIO_MTLX::TreeIterator::~TreeIterator(&v956);
        RIO_MTLX::TreeIterator::~TreeIterator(&v961);
        RIO_MTLX::TreeIterator::~TreeIterator(&v965);
LABEL_84:
        RIO_MTLX::Element::traverseTree(this, &v965);
        *&v967[8] = 0;
        *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
        if (v965.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v962 = 0;
        v961.__r_.__value_.__r.__words[2] = 0;
        v963 = 0;
        v28 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
        v964 = *v967;
        RIO_MTLX::NULL_TREE_ITERATOR(v28);
        v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
        if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
        {
          atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v958 = 0;
        v957 = 0;
        v959 = 0;
        std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
        v960 = xmmword_27EE52758;
        while (2)
        {
          v29 = RIO_MTLX::TreeIterator::operator!=(&v961, &v956);
          if (!v29)
          {
            RIO_MTLX::TreeIterator::~TreeIterator(&v956);
            RIO_MTLX::TreeIterator::~TreeIterator(&v961);
            RIO_MTLX::TreeIterator::~TreeIterator(&v965);
            goto LABEL_111;
          }

          v30 = *&v961.__r_.__value_.__l.__data_;
          if (v961.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v31 = RIO_MTLX::EMPTY_STRING(v29);
          if (!RIO_MTLX::Element::isA<RIO_MTLX::Input>(v30, v31))
          {
            goto LABEL_105;
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "graphname");
          v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v30 + 160), &__str);
          v33 = v32;
          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
            if (!v33)
            {
              goto LABEL_105;
            }
          }

          else if (!v32)
          {
            goto LABEL_105;
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "opgraph");
          std::string::basic_string[abi:ne200100]<0>(&__p, "graphname");
          v34 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v30 + 160), &__p.__r_.__value_.__l.__data_);
          if (v34)
          {
            v35 = (v34 + 5);
          }

          else
          {
            v35 = RIO_MTLX::EMPTY_STRING(0);
          }

          RIO_MTLX::Element::setAttribute(v30, &__str, v35);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "graphname");
          RIO_MTLX::Element::removeAttribute(v30, &__str);
          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
            if (*(&v30 + 1))
            {
LABEL_106:
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
            }
          }

          else
          {
LABEL_105:
            if (*(&v30 + 1))
            {
              goto LABEL_106;
            }
          }

          RIO_MTLX::TreeIterator::operator++(&v961);
          continue;
        }
      }

      v5 = *&v961.__r_.__value_.__l.__data_;
      if (v961.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v6 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v4);
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v5 + 160), v6);
      if (v7)
      {
        v8 = (v7 + 5);
      }

      else
      {
        v8 = RIO_MTLX::EMPTY_STRING(0);
      }

      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        if (v8[1] != 6)
        {
          goto LABEL_30;
        }

        v8 = *v8;
      }

      else if (v9 != 6)
      {
        goto LABEL_30;
      }

      if (*v8 == 1952671094 && *(v8 + 2) == 29295)
      {
        v11 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v8);
        RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
        RIO_MTLX::Element::setAttribute(v5, v11, &RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v);
      }

LABEL_30:
      if (*(&v5 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
      }

      RIO_MTLX::TreeIterator::operator++(&v961);
    }
  }

  if (SHIDWORD(v1) <= 25)
  {
    if (HIDWORD(v1) == 23)
    {
      goto LABEL_39;
    }

    if (HIDWORD(v1) == 24)
    {
      goto LABEL_84;
    }

    if (HIDWORD(v1) != 25)
    {
      goto LABEL_488;
    }

LABEL_111:
    RIO_MTLX::Element::traverseTree(this, &v965);
    *&v967[8] = 0;
    *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
    if (v965.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v962 = 0;
    v961.__r_.__value_.__r.__words[2] = 0;
    v963 = 0;
    v36 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
    v964 = *v967;
    RIO_MTLX::NULL_TREE_ITERATOR(v36);
    v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v958 = 0;
    v957 = 0;
    v959 = 0;
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v960 = xmmword_27EE52758;
    while (1)
    {
      if (!RIO_MTLX::TreeIterator::operator!=(&v961, &v956))
      {
        RIO_MTLX::TreeIterator::~TreeIterator(&v956);
        RIO_MTLX::TreeIterator::~TreeIterator(&v961);
        RIO_MTLX::TreeIterator::~TreeIterator(&v965);
        goto LABEL_141;
      }

      v37 = *&v961.__r_.__value_.__l.__data_;
      if (v961.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v38 = (v37 + 24);
      v39 = *(v37 + 47);
      if (v39 < 0)
      {
        if (*(v37 + 32) != 8)
        {
          goto LABEL_137;
        }

        v38 = *v38;
      }

      else if (v39 != 8)
      {
        goto LABEL_137;
      }

      if (*v38 != 0x746E6174736E6F63)
      {
        goto LABEL_137;
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, "color");
      v40 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v37 + 96), &__str);
      if (v40)
      {
        v42 = v40[5];
        v41 = v40[6];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      if (SBYTE7(__str_16) < 0)
      {
        operator delete(__str);
        if (v42)
        {
LABEL_133:
          std::string::basic_string[abi:ne200100]<0>(&__str, "value");
          RIO_MTLX::Element::setName(v42, &__str);
          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
          }
        }
      }

      else if (v42)
      {
        goto LABEL_133;
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

LABEL_137:
      if (*(&v37 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
      }

      RIO_MTLX::TreeIterator::operator++(&v961);
    }
  }

  if (SHIDWORD(v1) <= 34)
  {
    if (HIDWORD(v1) != 26)
    {
      if (HIDWORD(v1) == 34)
      {
        goto LABEL_510;
      }

      goto LABEL_488;
    }

LABEL_141:
    RIO_MTLX::Element::traverseTree(this, &v965);
    *&v967[8] = 0;
    *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
    if (v965.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v962 = 0;
    v961.__r_.__value_.__r.__words[2] = 0;
    v963 = 0;
    v43 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
    v964 = *v967;
    RIO_MTLX::NULL_TREE_ITERATOR(v43);
    v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v958 = 0;
    v957 = 0;
    v959 = 0;
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v960 = xmmword_27EE52758;
LABEL_146:
    if (RIO_MTLX::TreeIterator::operator!=(&v961, &v956))
    {
      v44 = *&v961.__r_.__value_.__l.__data_;
      if (v961.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      __str = 0uLL;
      *&__str_16 = 0;
      size = std::vector<std::shared_ptr<RIO_MTLX::Element>>::__init_with_size[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>*,std::shared_ptr<RIO_MTLX::Element>*>(&__str, *(v44 + 136), *(v44 + 144), (*(v44 + 144) - *(v44 + 136)) >> 4);
      v46 = *(&__str + 1);
      for (i = __str; ; i += 2)
      {
        if (i == v46)
        {
          __p.__r_.__value_.__r.__words[0] = &__str;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (*(&v44 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
          }

          RIO_MTLX::TreeIterator::operator++(&v961);
          goto LABEL_146;
        }

        v48 = *i;
        v49 = i[1];
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v50 = (v48 + 24);
        if (*(v48 + 47) < 0)
        {
          v52 = *(v48 + 32);
          if (v52 == 6)
          {
            v50 = *v50;
LABEL_187:
            v62 = *v50;
            v63 = *(v50 + 2);
            if (v62 != 1684105331 || v63 != 29285)
            {
              goto LABEL_250;
            }

            v949[0] = v48;
            v949[1] = v49;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "nodedef");
            RIO_MTLX::Element::changeChildCategory(v44, v949, &__p, &v905);
            RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v905.__r_.__value_.__l.__data_, &v907);
            if (v905.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v905.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v49)
              {
LABEL_198:
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }
            }

            else if (v49)
            {
              goto LABEL_198;
            }

            v65 = v907.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
            v66 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v65 + 160), &__p.__r_.__value_.__l.__data_);
            v67 = v66;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (!v67)
              {
                goto LABEL_215;
              }
            }

            else if (!v66)
            {
              goto LABEL_215;
            }

            v71 = v907.__r_.__value_.__r.__words[0];
            v72 = RIO_MTLX::SURFACE_SHADER_TYPE_STRING(v66);
            v73 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v72);
            RIO_MTLX::Element::setAttribute(v71, v73, v72);
            v74 = v907.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
            RIO_MTLX::Element::removeAttribute(v74, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

LABEL_215:
            v75 = v907.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shaderprogram");
            v76 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v75 + 160), &__p.__r_.__value_.__l.__data_);
            v77 = v76;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (!v77)
              {
                goto LABEL_248;
              }
            }

            else if (!v76)
            {
LABEL_248:
              size = v907.__r_.__value_.__l.__size_;
              if (v907.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v907.__r_.__value_.__l.__size_);
              }

              goto LABEL_250;
            }

            v78 = v907.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shaderprogram");
            v79 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v78 + 20, &__p.__r_.__value_.__l.__data_);
            if (v79)
            {
              v80 = (v79 + 40);
            }

            else
            {
              v79 = RIO_MTLX::EMPTY_STRING(0);
              v80 = v79;
            }

            v88 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v79);
            RIO_MTLX::Element::setAttribute(v78, v88, v80);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = v907.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shaderprogram");
            RIO_MTLX::Element::removeAttribute(v89, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_248;
          }

          if (v52 != 7)
          {
            if (v52 != 9)
            {
              goto LABEL_250;
            }

            v50 = *v50;
            goto LABEL_162;
          }

          v50 = *v50;
        }

        else
        {
          v51 = *(v48 + 47);
          if (v51 == 6)
          {
            goto LABEL_187;
          }

          if (v51 != 7)
          {
            if (v51 != 9)
            {
              goto LABEL_250;
            }

LABEL_162:
            if (*v50 == 0x6572726564616873 && *(v50 + 8) == 102)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
              size = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v48 + 160), &__p.__r_.__value_.__l.__data_);
              v68 = size;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if (!v68)
                {
                  goto LABEL_250;
                }
              }

              else if (!size)
              {
                goto LABEL_250;
              }

              v69 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(size);
              v70 = RIO_MTLX::SURFACE_SHADER_TYPE_STRING(v69);
              RIO_MTLX::Element::setAttribute(v48, v69, v70);
              std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
              RIO_MTLX::Element::removeAttribute(v48, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_250;
            }

            v54 = *v50;
            v55 = *(v50 + 8);
            if (v54 != 0x6574656D61726170 || v55 != 114)
            {
              goto LABEL_250;
            }

            v57 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(size);
            v58 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v48 + 160), v57);
            size = v58 ? (v58 + 5) : RIO_MTLX::EMPTY_STRING(0);
            v81 = *(size + 23);
            if (v81 < 0)
            {
              if (size[1] != 11)
              {
                goto LABEL_250;
              }

              size = *size;
            }

            else if (v81 != 11)
            {
              goto LABEL_250;
            }

            if (*size != 0x6E6870617267706FLL || *(size + 3) != 0x65646F6E68706172)
            {
LABEL_250:
              if (!v49)
              {
                continue;
              }

              goto LABEL_251;
            }

            v83 = RIO_MTLX::EMPTY_STRING(size);
            v84 = RIO_MTLX::Element::isA<RIO_MTLX::Node>(v44, v83);
            if (v84)
            {
              v948[0] = v48;
              v948[1] = v49;
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, "input");
              RIO_MTLX::Element::changeChildCategory(v44, v948, &__p, &v905);
              RIO_MTLX::Element::asA<RIO_MTLX::Input>(v905.__r_.__value_.__l.__data_, &v907);
              if (v905.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v905.__r_.__value_.__l.__size_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v49)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              v85 = v907.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__p, "value");
              v86 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v85 + 20, &__p.__r_.__value_.__l.__data_);
              if (v86)
              {
                v87 = (v86 + 40);
              }

              else
              {
                v86 = RIO_MTLX::EMPTY_STRING(0);
                v87 = v86;
              }

              v93 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(v86);
              RIO_MTLX::Element::setAttribute(v85, v93, v87);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v94 = v907.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__p, "value");
              RIO_MTLX::Element::removeAttribute(v94, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              (*(*v907.__r_.__value_.__l.__data_ + 64))(&__p);
              v95 = __p.__r_.__value_.__r.__words[0];
              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
              }

              v96 = v907.__r_.__value_.__r.__words[0];
              if (v95)
              {
                (*(*v907.__r_.__value_.__l.__data_ + 64))(&__p, v907.__r_.__value_.__r.__words[0]);
                v97 = (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
                v98 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v97);
                RIO_MTLX::Element::setAttribute(v96, v98, v97);
                if (__p.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                }
              }

              else
              {
                v99 = RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
                v100 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v99);
                RIO_MTLX::Element::setAttribute(v96, v100, &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v);
              }

              goto LABEL_248;
            }

            v90 = RIO_MTLX::EMPTY_STRING(v84);
            size = RIO_MTLX::Element::isA<RIO_MTLX::Output>(v44, v90);
            if (!size)
            {
              goto LABEL_250;
            }

            v91 = *(v48 + 71);
            if (v91 < 0)
            {
              if (*(v48 + 56) != 2)
              {
LABEL_278:
                RIO_MTLX::Element::removeChild(v44, (v48 + 48));
                goto LABEL_250;
              }

              v92 = *(v48 + 48);
            }

            else
            {
              v92 = (v48 + 48);
              if (v91 != 2)
              {
                goto LABEL_278;
              }
            }

            if (*v92 == 28265)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "nodename");
              std::string::basic_string[abi:ne200100]<0>(&v907, "value");
              v101 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v48 + 160), &v907.__r_.__value_.__l.__data_);
              if (v101)
              {
                v102 = (v101 + 5);
              }

              else
              {
                v102 = RIO_MTLX::EMPTY_STRING(0);
              }

              RIO_MTLX::Element::setAttribute(v44, &__p, v102);
              if (SHIBYTE(v907.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v907.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_278;
          }
        }

        v59 = *v50;
        v60 = *(v50 + 3);
        if (v59 != 1919381615 || v60 != 1752195442)
        {
          goto LABEL_250;
        }

        v950[0] = v48;
        v950[1] = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "nodegraph");
        RIO_MTLX::Element::changeChildCategory(v44, v950, &__p, &v951);
        size = v952;
        if (v952)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v952);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v49)
          {
            continue;
          }

LABEL_206:
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
LABEL_251:
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          continue;
        }

        if (v49)
        {
          goto LABEL_206;
        }
      }
    }

    RIO_MTLX::TreeIterator::~TreeIterator(&v956);
    RIO_MTLX::TreeIterator::~TreeIterator(&v961);
    RIO_MTLX::TreeIterator::~TreeIterator(&v965);
    std::string::basic_string[abi:ne200100]<0>(&v961, "material");
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v965, this[17], this[18], &v961);
    if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v961.__r_.__value_.__l.__data_);
    }

    v104 = v965.__r_.__value_.__l.__size_;
    for (j = v965.__r_.__value_.__r.__words[0]; j != v104; j += 2)
    {
      v106 = *j;
      v105 = j[1];
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v956, "shaderref");
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v961, *(v106 + 136), *(v106 + 144), &v956);
      if (SHIBYTE(v957) < 0)
      {
        operator delete(v956);
      }

      v107 = v961.__r_.__value_.__l.__size_;
      for (k = v961.__r_.__value_.__r.__words[0]; k != v107; k += 16)
      {
        v110 = *k;
        v109 = *(k + 8);
        if (v109)
        {
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v947[0] = v110;
        v947[1] = v109;
        v111 = v956;
        if (*(&v956 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v956 + 1));
        }

        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        if (!v111)
        {
          RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v110 + 6, &v956);
          if (v956)
          {
            v113 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(v112);
            v114 = RIO_MTLX::Element::setAttribute(v110, v113, (v956 + 48));
            v115 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v114);
            NodeString = RIO_MTLX::NodeDef::getNodeString(v956);
            RIO_MTLX::Element::setAttribute(v110, v115, NodeString);
          }

          if (*(&v956 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v956 + 1));
          }
        }

        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }
      }

      *&v956 = &v961;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v956);
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      }
    }

    v961.__r_.__value_.__r.__words[0] = &v965;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
    std::string::basic_string[abi:ne200100]<0>(&v965, "material");
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__str, this[17], this[18], &v965);
    if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v965.__r_.__value_.__l.__data_);
    }

    v118 = RIO_MTLX::EMPTY_STRING(v117);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(this, v118, &v965);
    v786 = v965.__r_.__value_.__l.__size_;
    v119 = v965.__r_.__value_.__r.__words[0];
    if (v965.__r_.__value_.__r.__words[0] != v965.__r_.__value_.__l.__size_)
    {
      while (1)
      {
        v121 = *v119;
        v120 = *(v119 + 8);
        v789 = v119;
        if (v120)
        {
          atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v792 = v120;
        RIO_MTLX::InterfaceElement::getActiveInputs(v121, &v961);
        v122 = v961.__r_.__value_.__l.__size_;
        v794 = v961.__r_.__value_.__l.__size_;
        v123 = v961.__r_.__value_.__r.__words[0];
        if (v961.__r_.__value_.__r.__words[0] != v961.__r_.__value_.__l.__size_)
        {
          break;
        }

LABEL_382:
        *&v956 = &v961;
        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v956);
        if (v792)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v792);
        }

        v119 = v789 + 16;
        if (v789 + 16 == v786)
        {
          goto LABEL_385;
        }
      }

      while (1)
      {
        v125 = *v123;
        v124 = v123[1];
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v799 = v124;
        std::string::basic_string[abi:ne200100]<0>(&v956, "opgraph");
        if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &v956))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "graphoutput");
          v126 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &__p.__r_.__value_.__l.__data_) != 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v126 = 0;
        }

        if (SHIBYTE(v957) < 0)
        {
          operator delete(v956);
          if (!v126)
          {
            goto LABEL_379;
          }
        }

        else if (!v126)
        {
          goto LABEL_379;
        }

        v797 = v123;
        v127 = *(&__str + 1);
        v804 = *(&__str + 1);
        v128 = __str;
LABEL_325:
        if (v128 != v127)
        {
          break;
        }

        std::string::basic_string[abi:ne200100]<0>(&v956, "opgraph");
        RIO_MTLX::Element::removeAttribute(v125, &v956);
        v122 = v794;
        v123 = v797;
        if (SHIBYTE(v957) < 0)
        {
          operator delete(v956);
        }

        std::string::basic_string[abi:ne200100]<0>(&v956, "graphoutput");
        RIO_MTLX::Element::removeAttribute(v125, &v956);
        if (SHIBYTE(v957) < 0)
        {
          operator delete(v956);
        }

LABEL_379:
        if (v799)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v799);
        }

        v123 += 2;
        if (v123 == v122)
        {
          goto LABEL_382;
        }
      }

      v130 = v128->__r_.__value_.__r.__words[0];
      v129 = v128->__r_.__value_.__l.__size_;
      if (v129)
      {
        atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __src = v129;
      std::string::basic_string[abi:ne200100]<0>(&__p, "shaderref");
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v956, *(v130 + 136), *(v130 + 144), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v132 = *(&v956 + 1);
      for (m = v956; ; m += 2)
      {
        if (m == v132)
        {
          __p.__r_.__value_.__r.__words[0] = &v956;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (__src)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__src);
          }

          v128 = (v128 + 16);
          v127 = v804;
          goto LABEL_325;
        }

        v134 = *m;
        v133 = m[1];
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v946[0] = v134;
        v946[1] = v133;
        if (__p.__r_.__value_.__l.__data_ != v121)
        {
          v135 = 0;
          goto LABEL_341;
        }

        v136 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v134 + 96), (v125 + 48));
        if (v136)
        {
          v138 = v136[5];
          v137 = v136[6];
          if (v137)
          {
            atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
            v135 = v138 == 0;
            std::__shared_weak_count::__release_shared[abi:ne200100](v137);
            goto LABEL_341;
          }
        }

        else
        {
          v138 = 0;
        }

        v135 = v138 == 0;
LABEL_341:
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        if (v133)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }

        if (v135)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "bindinput");
          if (*(v125 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v945, *(v125 + 48), *(v125 + 56));
          }

          else
          {
            v945 = *(v125 + 48);
          }

          RIO_MTLX::Element::addChildOfCategory(v134, &__p, &v945, &v905);
          if (SHIBYTE(v945.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v945.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v140 = v905.__r_.__value_.__r.__words[0];
          v141 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v139);
          v142 = (*(*v125 + 56))(v125);
          RIO_MTLX::Element::setAttribute(v140, v141, v142);
          v143 = v905.__r_.__value_.__r.__words[0];
          std::string::basic_string[abi:ne200100]<0>(&__p, "nodegraph");
          std::string::basic_string[abi:ne200100]<0>(&v907, "opgraph");
          v144 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &v907.__r_.__value_.__l.__data_);
          if (v144)
          {
            v145 = (v144 + 5);
          }

          else
          {
            v145 = RIO_MTLX::EMPTY_STRING(0);
          }

          RIO_MTLX::Element::setAttribute(v143, &__p, v145);
          if (SHIBYTE(v907.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v907.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v146 = v905.__r_.__value_.__r.__words[0];
          std::string::basic_string[abi:ne200100]<0>(&__p, "output");
          std::string::basic_string[abi:ne200100]<0>(&v907, "graphoutput");
          v147 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &v907.__r_.__value_.__l.__data_);
          if (v147)
          {
            v148 = (v147 + 5);
          }

          else
          {
            v148 = RIO_MTLX::EMPTY_STRING(0);
          }

          RIO_MTLX::Element::setAttribute(v146, &__p, v148);
          if (SHIBYTE(v907.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v907.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v905.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v905.__r_.__value_.__l.__size_);
          }
        }

        if (v133)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }
      }
    }

LABEL_385:
    v961.__r_.__value_.__r.__words[0] = &v965;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
    v150 = RIO_MTLX::EMPTY_STRING(v149);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(this, v150, &v965);
    v152 = v965.__r_.__value_.__l.__size_;
    v151 = v965.__r_.__value_.__r.__words[0];
    if (v965.__r_.__value_.__r.__words[0] == v965.__r_.__value_.__l.__size_)
    {
      goto LABEL_405;
    }

    do
    {
      v154 = *v151;
      v153 = v151[1];
      if (v153)
      {
        atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v956, "geomattr");
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v961, *(v154 + 136), *(v154 + 144), &v956);
      if (SHIBYTE(v957) < 0)
      {
        operator delete(v956);
      }

      v155 = v961.__r_.__value_.__l.__size_;
      for (n = v961.__r_.__value_.__r.__words[0]; n != v155; n += 16)
      {
        v157 = *n;
        v158 = *(n + 8);
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v158->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v942[1] = v158;
        v942[0] = v157;
        std::string::basic_string[abi:ne200100]<0>(&v956, "geomprop");
        RIO_MTLX::Element::changeChildCategory(v154, v942, &v956, &v943);
        if (v944)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v944);
        }

        if ((SHIBYTE(v957) & 0x80000000) == 0)
        {
          if (!v158)
          {
            continue;
          }

LABEL_398:
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
          continue;
        }

        operator delete(v956);
        if (v158)
        {
          goto LABEL_398;
        }
      }

      *&v956 = &v961;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v956);
      if (v153)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v153);
      }

      v151 += 2;
    }

    while (v151 != v152);
LABEL_405:
    v961.__r_.__value_.__r.__words[0] = &v965;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
    v159 = std::string::basic_string[abi:ne200100]<0>(&v965, "udim");
    v160 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v159);
    RIO_MTLX::Document::getGeomPropValue(&v956, this, &v965.__r_.__value_.__l.__data_, v160);
    if (v956)
    {
      v161 = std::string::basic_string[abi:ne200100]<0>(&v961, "udimset");
      v162 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v161);
      RIO_MTLX::Document::getGeomPropValue(&__p, this, &v961.__r_.__value_.__l.__data_, v162);
      v163 = __p.__r_.__value_.__r.__words[0] == 0;
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v961.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v961.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v163 = 0;
    }

    v164 = *(&v956 + 1);
    if (*(&v956 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v956 + 1));
    }

    if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v965.__r_.__value_.__l.__data_);
      if (!v163)
      {
        goto LABEL_509;
      }
    }

    else if (!v163)
    {
LABEL_509:
      v965.__r_.__value_.__r.__words[0] = &__str;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v965);
LABEL_510:
      RIO_MTLX::Element::traverseTree(this, &v965);
      *&v967[8] = 0;
      *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
      if (v965.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v962 = 0;
      v961.__r_.__value_.__r.__words[2] = 0;
      v963 = 0;
      v208 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
      v964 = *v967;
      RIO_MTLX::NULL_TREE_ITERATOR(v208);
      v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v958 = 0;
      v957 = 0;
      v959 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v960 = xmmword_27EE52758;
      while (2)
      {
        v209 = RIO_MTLX::TreeIterator::operator!=(&v961, &v956);
        if (v209)
        {
          v210 = *&v961.__r_.__value_.__l.__data_;
          if (v961.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v211 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v209);
          v212 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), v211);
          if (v212)
          {
            v213 = (v212 + 5);
          }

          else
          {
            v213 = RIO_MTLX::EMPTY_STRING(0);
          }

          v214 = *(v213 + 23);
          if (v214 < 0)
          {
            if (v213[1] != 6)
            {
              goto LABEL_532;
            }

            v213 = *v213;
          }

          else if (v214 != 6)
          {
            goto LABEL_532;
          }

          if (*v213 == 1920229741 && *(v213 + 2) == 30825)
          {
            v216 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v213);
            RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
            RIO_MTLX::Element::setAttribute(v210, v216, &RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v);
          }

LABEL_532:
          std::string::basic_string[abi:ne200100]<0>(&__str, "default");
          v217 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), &__str);
          if (v217)
          {
            v218 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v217);
            v219 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), v218);
            v220 = v219;
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
              if (!v220)
              {
                goto LABEL_537;
              }
            }

            else if (!v219)
            {
LABEL_537:
              v221 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v219);
              std::string::basic_string[abi:ne200100]<0>(&__str, "default");
              v222 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), &__str);
              if (v222)
              {
                v223 = (v222 + 5);
              }

              else
              {
                v223 = RIO_MTLX::EMPTY_STRING(0);
              }

              RIO_MTLX::Element::setAttribute(v210, v221, v223);
              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, "default");
              RIO_MTLX::Element::removeAttribute(v210, &__str);
              goto LABEL_543;
            }
          }

          else
          {
LABEL_543:
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
            }
          }

          RIO_MTLX::Element::asA<RIO_MTLX::MaterialAssign>(v210, &__str);
          v225 = __str;
          if (__str)
          {
            v226 = RIO_MTLX::MaterialAssign::MATERIAL_ATTRIBUTE(v224);
            RIO_MTLX::Element::setAttribute(v225, v226, v225 + 2);
          }

          if (*(&__str + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&__str + 1));
          }

          if (*(&v210 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v210 + 1));
          }

          RIO_MTLX::TreeIterator::operator++(&v961);
          continue;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v956);
      RIO_MTLX::TreeIterator::~TreeIterator(&v961);
      RIO_MTLX::TreeIterator::~TreeIterator(&v965);
LABEL_553:
      RIO_MTLX::Element::traverseTree(this, &v965);
      *&v967[8] = 0;
      *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
      if (v965.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v962 = 0;
      v961.__r_.__value_.__r.__words[2] = 0;
      v963 = 0;
      v227 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
      v964 = *v967;
      RIO_MTLX::NULL_TREE_ITERATOR(v227);
      v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v958 = 0;
      v957 = 0;
      v959 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v960 = xmmword_27EE52758;
      while (2)
      {
        if (RIO_MTLX::TreeIterator::operator!=(&v961, &v956))
        {
          v228 = v961.__r_.__value_.__l.__size_;
          v229 = v961.__r_.__value_.__r.__words[0];
          if (v961.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::Look>(v229, v902);
          RIO_MTLX::Element::asA<RIO_MTLX::GeomInfo>(v229, &v900);
          v231 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v230);
          v232 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v231);
          if (v232)
          {
            v233 = (v232 + 40);
          }

          else
          {
            v232 = RIO_MTLX::EMPTY_STRING(0);
            v233 = v232;
          }

          v234 = RIO_MTLX::GEOMNAME_TYPE_STRING(v232);
          v235 = *(v233 + 23);
          if (v235 >= 0)
          {
            v236 = *(v233 + 23);
          }

          else
          {
            v236 = *(v233 + 1);
          }

          v237 = *(v234 + 23);
          v238 = v237;
          if ((v237 & 0x80u) != 0)
          {
            v237 = *(v234 + 8);
          }

          if (v236 == v237)
          {
            v239 = v235 >= 0 ? v233 : *v233;
            v240 = v238 >= 0 ? v234 : *v234;
            v234 = memcmp(v239, v240, v236);
            if (!v234)
            {
              v262 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v234);
              v263 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v262);
              if (v263)
              {
                v234 = (v263 + 5);
              }

              else
              {
                v234 = RIO_MTLX::EMPTY_STRING(0);
              }

              v264 = *(v234 + 23);
              if (v264 < 0)
              {
                if (*(v234 + 8) != 1)
                {
                  goto LABEL_577;
                }

                v234 = *v234;
              }

              else if (v264 != 1)
              {
                goto LABEL_577;
              }

              if (*v234 == 42)
              {
                v265 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v234);
                v266 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v265);
                v234 = RIO_MTLX::Element::setAttribute(v229, v265, v266);
              }
            }
          }

LABEL_577:
          v241 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v234);
          v242 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v241);
          if (v242)
          {
            v243 = (v242 + 40);
          }

          else
          {
            v242 = RIO_MTLX::EMPTY_STRING(0);
            v243 = v242;
          }

          v244 = RIO_MTLX::FILENAME_TYPE_STRING(v242);
          v245 = *(v243 + 23);
          if (v245 >= 0)
          {
            v246 = *(v243 + 23);
          }

          else
          {
            v246 = *(v243 + 1);
          }

          v247 = v244[23];
          v248 = v247;
          if ((v247 & 0x80u) != 0)
          {
            v247 = *(v244 + 1);
          }

          v793 = v228;
          if (v246 == v247)
          {
            v249 = v245 >= 0 ? v243 : *v243;
            v250 = v248 >= 0 ? v244 : *v244;
            v251 = memcmp(v249, v250, v246);
            if (!v251)
            {
              __str = 0u;
              __str_16 = 0u;
              LODWORD(v830) = 1065353216;
              v252 = RIO_MTLX::UDIM_TOKEN(v251);
              std::string::basic_string[abi:ne200100]<0>(&__p, "%UDIM");
              v907.__r_.__value_.__r.__words[0] = &__p;
              v253 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__str, &__p.__r_.__value_.__l.__data_);
              v254 = std::string::operator=((v253 + 5), v252);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v255 = RIO_MTLX::UV_TILE_TOKEN(v254);
              std::string::basic_string[abi:ne200100]<0>(&__p, "%UVTILE");
              v907.__r_.__value_.__r.__words[0] = &__p;
              v256 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__str, &__p.__r_.__value_.__l.__data_);
              v257 = std::string::operator=((v256 + 5), v255);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v258 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v257);
              v259 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v258);
              v260 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v259);
              if (v260)
              {
                v261 = (v260 + 5);
              }

              else
              {
                v261 = RIO_MTLX::EMPTY_STRING(0);
              }

              if (*(v261 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v941, *v261, v261[1]);
              }

              else
              {
                v267 = *v261;
                v941.__r_.__value_.__r.__words[2] = v261[2];
                *&v941.__r_.__value_.__l.__data_ = v267;
              }

              RIO_MTLX::replaceSubstrings(&v941, &__str, &__p);
              RIO_MTLX::Element::setAttribute(v229, v258, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v941.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v941.__r_.__value_.__l.__data_);
              }

              std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&__str);
            }
          }

          __str = 0uLL;
          *&__str_16 = 0;
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::__init_with_size[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>*,std::shared_ptr<RIO_MTLX::Element>*>(&__str, *(v229 + 136), *(v229 + 144), (*(v229 + 144) - *(v229 + 136)) >> 4);
          v798 = *(&__str + 1);
          v268 = __str;
          if (__str == *(&__str + 1))
          {
LABEL_756:
            __p.__r_.__value_.__r.__words[0] = &__str;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
            if (v900.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v900.__r_.__value_.__l.__size_);
            }

            if (v902[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v902[1]);
            }

            if (v228)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v228);
            }

            RIO_MTLX::TreeIterator::operator++(&v961);
            continue;
          }

          v801 = (v229 + 24);
          v787 = v229;
          while (2)
          {
            v270 = *v268;
            v269 = v268[1];
            if (v269)
            {
              atomic_fetch_add_explicit(&v269->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            __srca = v269;
            v271 = *(v229 + 47);
            if (*(v229 + 47) < 0)
            {
              if (*(v229 + 32) != 8)
              {
                goto LABEL_637;
              }

              v272 = *v801;
            }

            else
            {
              v272 = v801;
              if (v271 != 8)
              {
                goto LABEL_637;
              }
            }

            if (*v272 == 0x6C6169726574616DLL)
            {
              v274 = (v270 + 24);
              v275 = *(v270 + 47);
              if (v275 < 0)
              {
                if (*(v270 + 32) != 8)
                {
                  goto LABEL_628;
                }

                v274 = *v274;
              }

              else if (v275 != 8)
              {
                goto LABEL_628;
              }

              if (*v274 == 0x656469727265766FLL)
              {
                std::string::basic_string[abi:ne200100]<0>(&v907, "shaderref");
                RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__p, *(v229 + 136), *(v229 + 144), &v907);
                v790 = v268;
                if (SHIBYTE(v907.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v907.__r_.__value_.__l.__data_);
                }

                v796 = __p.__r_.__value_.__l.__size_;
                v285 = __p.__r_.__value_.__r.__words[0];
                if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                {
                  v286 = (v270 + 48);
                  while (1)
                  {
                    v287 = *v285;
                    v288 = v285[1];
                    if (v288)
                    {
                      atomic_fetch_add_explicit(&v288->__shared_owners_, 1uLL, memory_order_relaxed);
                      atomic_fetch_add_explicit(&v288->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v940[0] = v287;
                    v940[1] = v288;
                    if (v288)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v288);
                    }

                    v805 = v288;
                    if (v898.__r_.__value_.__r.__words[0])
                    {
                      break;
                    }

LABEL_732:
                    if (v898.__r_.__value_.__l.__size_)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v898.__r_.__value_.__l.__size_);
                    }

                    if (v805)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v805);
                    }

                    v285 += 2;
                    if (v285 == v796)
                    {
                      goto LABEL_737;
                    }
                  }

                  RIO_MTLX::InterfaceElement::getActiveValueElements(v898.__r_.__value_.__l.__data_, &v907);
                  v289 = v907.__r_.__value_.__l.__size_;
                  v290 = v907.__r_.__value_.__r.__words[0];
                  while (2)
                  {
                    if (v290 == v289)
                    {
                      v905.__r_.__value_.__r.__words[0] = &v907;
                      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v905);
                      v228 = v793;
                      goto LABEL_732;
                    }

                    v292 = *v290;
                    v291 = v290[1];
                    if (v291)
                    {
                      atomic_fetch_add_explicit(&v291->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&v905, "publicname");
                    v293 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v292 + 160), &v905.__r_.__value_.__l.__data_);
                    if (v293)
                    {
                      v294 = (v293 + 5);
                    }

                    else
                    {
                      v294 = RIO_MTLX::EMPTY_STRING(0);
                    }

                    shared_weak_owners_high = SHIBYTE(v294->__shared_weak_owners_);
                    if (shared_weak_owners_high >= 0)
                    {
                      shared_owners = HIBYTE(v294->__shared_weak_owners_);
                    }

                    else
                    {
                      shared_owners = v294->__shared_owners_;
                    }

                    v297 = *(v270 + 71);
                    v298 = v297;
                    if ((v297 & 0x80u) != 0)
                    {
                      v297 = *(v270 + 56);
                    }

                    if (shared_owners != v297)
                    {
                      goto LABEL_684;
                    }

                    if (shared_weak_owners_high < 0)
                    {
                      v294 = v294->__vftable;
                    }

                    v299 = *v286;
                    v300 = (v298 >= 0 ? v270 + 48 : *v286);
                    v294 = memcmp(v294, v300, shared_owners);
                    if (v294)
                    {
LABEL_684:
                      v301 = 0;
                      goto LABEL_685;
                    }

                    v294 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v287 + 96), (v270 + 48));
                    if (v294)
                    {
                      shared_weak_owners = v294[1].__shared_weak_owners_;
                      v294 = v294[2].__vftable;
                      if (v294)
                      {
                        atomic_fetch_add_explicit(&v294->__shared_owners_, 1uLL, memory_order_relaxed);
                        v301 = shared_weak_owners == 0;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v294);
                        goto LABEL_685;
                      }
                    }

                    else
                    {
                      shared_weak_owners = 0;
                    }

                    v301 = shared_weak_owners == 0;
LABEL_685:
                    if (SHIBYTE(v905.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v905.__r_.__value_.__l.__data_);
                      if (v301)
                      {
                        goto LABEL_689;
                      }
                    }

                    else
                    {
                      if (!v301)
                      {
                        goto LABEL_728;
                      }

LABEL_689:
                      v302 = v292 + 24;
                      v303 = *(v292 + 47);
                      if (v303 < 0)
                      {
                        if (*(v292 + 32) != 9)
                        {
                          goto LABEL_701;
                        }

                        v302 = *v302;
                      }

                      else if (v303 != 9)
                      {
                        goto LABEL_701;
                      }

                      v305 = *v302;
                      v306 = *(v302 + 8);
                      if (v305 == 0x6574656D61726170 && v306 == 114)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&v905, "bindparam");
                        if (*(v292 + 71) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v939, *(v292 + 48), *(v292 + 56));
                        }

                        else
                        {
                          v939 = *(v292 + 48);
                        }

                        RIO_MTLX::Element::addChildOfCategory(v287, &v905, &v939, &v896);
                        if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v939.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v905.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v905.__r_.__value_.__l.__data_);
                        }

                        v319 = v896.__r_.__value_.__r.__words[0];
                        v320 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v318);
                        v321 = (*(*v292 + 56))(v292);
                        v322 = RIO_MTLX::Element::setAttribute(v319, v320, v321);
                        v314 = v896.__r_.__value_.__r.__words[0];
                        v315 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v322);
                        std::string::basic_string[abi:ne200100]<0>(&v905, "value");
                        v323 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &v905.__r_.__value_.__l.__data_);
                        if (v323)
                        {
                          v317 = (v323 + 5);
                          goto LABEL_724;
                        }

LABEL_723:
                        v317 = RIO_MTLX::EMPTY_STRING(0);
                        goto LABEL_724;
                      }

LABEL_701:
                      v308 = RIO_MTLX::EMPTY_STRING(v294);
                      if (RIO_MTLX::Element::isA<RIO_MTLX::Input>(v292, v308))
                      {
                        std::string::basic_string[abi:ne200100]<0>(&v905, "bindinput");
                        if (*(v292 + 71) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v938, *(v292 + 48), *(v292 + 56));
                        }

                        else
                        {
                          v938 = *(v292 + 48);
                        }

                        RIO_MTLX::Element::addChildOfCategory(v287, &v905, &v938, &v896);
                        if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v938.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v905.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v905.__r_.__value_.__l.__data_);
                        }

                        v310 = v896.__r_.__value_.__r.__words[0];
                        v311 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v309);
                        v312 = (*(*v292 + 56))(v292);
                        v313 = RIO_MTLX::Element::setAttribute(v310, v311, v312);
                        v314 = v896.__r_.__value_.__r.__words[0];
                        v315 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v313);
                        std::string::basic_string[abi:ne200100]<0>(&v905, "value");
                        v316 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &v905.__r_.__value_.__l.__data_);
                        if (v316)
                        {
                          v317 = (v316 + 5);
LABEL_724:
                          RIO_MTLX::Element::setAttribute(v314, v315, v317);
                          if (SHIBYTE(v905.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v905.__r_.__value_.__l.__data_);
                          }

                          if (v896.__r_.__value_.__l.__size_)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v896.__r_.__value_.__l.__size_);
                          }

                          goto LABEL_728;
                        }

                        goto LABEL_723;
                      }
                    }

LABEL_728:
                    if (v291)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v291);
                    }

                    v290 += 2;
                    continue;
                  }
                }

LABEL_737:
                v907.__r_.__value_.__r.__words[0] = &__p;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v907);
                v229 = v787;
                v268 = v790;
LABEL_741:
                RIO_MTLX::Element::removeChild(v229, (v270 + 48));
                goto LABEL_742;
              }
            }

LABEL_628:
            if ((v271 & 0x80) != 0)
            {
              if (*(v229 + 32) != 8)
              {
                goto LABEL_637;
              }

              v273 = *v801;
            }

            else
            {
              v273 = v801;
              if (v271 != 8)
              {
                goto LABEL_637;
              }
            }

            if (*v273 != 0x6C6169726574616DLL)
            {
              goto LABEL_637;
            }

            v283 = (v270 + 24);
            v284 = *(v270 + 47);
            if (v284 < 0)
            {
              if (*(v270 + 32) != 15)
              {
                goto LABEL_637;
              }

              v283 = *v283;
            }

            else if (v284 != 15)
            {
              goto LABEL_637;
            }

            v325 = *v283;
            v326 = *(v283 + 7);
            if (v325 == 0x6C6169726574616DLL && v326 == 0x74697265686E696CLL)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "material");
              v281 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &__p.__r_.__value_.__l.__data_);
              if (!v281)
              {
                goto LABEL_738;
              }

              v282 = (v281 + 40);
            }

            else
            {
LABEL_637:
              if (!v902[0])
              {
                goto LABEL_742;
              }

              v276 = (v270 + 24);
              v277 = *(v270 + 47);
              if (v277 < 0)
              {
                if (*(v270 + 32) != 11)
                {
                  goto LABEL_742;
                }

                v276 = *v276;
              }

              else if (v277 != 11)
              {
                goto LABEL_742;
              }

              v278 = *v276;
              v279 = *(v276 + 3);
              if (v278 != 0x65686E696B6F6F6CLL || v279 != 0x74697265686E696BLL)
              {
LABEL_742:
                if (__srca)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__srca);
                }

                v268 += 2;
                if (v268 == v798)
                {
                  goto LABEL_756;
                }

                continue;
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, "look");
              v281 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &__p.__r_.__value_.__l.__data_);
              if (v281)
              {
                v282 = (v281 + 40);
                break;
              }

LABEL_738:
              v281 = RIO_MTLX::EMPTY_STRING(0);
              v282 = v281;
            }

            break;
          }

          v324 = RIO_MTLX::Element::INHERIT_ATTRIBUTE(v281);
          RIO_MTLX::Element::setAttribute(v229, v324, v282);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_741;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v956);
      RIO_MTLX::TreeIterator::~TreeIterator(&v961);
      RIO_MTLX::TreeIterator::~TreeIterator(&v965);
LABEL_764:
      v328 = RIO_MTLX::EMPTY_STRING(v1);
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(this, v328, &v965);
      v331 = v965.__r_.__value_.__l.__size_;
      v330 = v965.__r_.__value_.__r.__words[0];
      if (v965.__r_.__value_.__r.__words[0] != v965.__r_.__value_.__l.__size_)
      {
        while (2)
        {
          v333 = *v330;
          v332 = *(v330 + 8);
          if (v332)
          {
            atomic_fetch_add_explicit(&v332->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v332->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v333)
          {
            v334 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v329);
            v329 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v333 + 20, v334);
            if (v329)
            {
              v335 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v329);
              v336 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v333 + 20, v335);
              if (v336)
              {
                v337 = (v336 + 5);
              }

              else
              {
                v337 = RIO_MTLX::EMPTY_STRING(0);
              }

              if (*(v337 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v961, *v337, v337[1]);
              }

              else
              {
                v338 = *v337;
                v961.__r_.__value_.__r.__words[2] = v337[2];
                *&v961.__r_.__value_.__l.__data_ = v338;
              }

              v339 = HIBYTE(v961.__r_.__value_.__r.__words[2]);
              if ((v961.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v339 = v961.__r_.__value_.__l.__size_;
              }

              if (!v339)
              {
                goto LABEL_794;
              }

              v340 = RIO_MTLX::MULTI_OUTPUT_TYPE_STRING(v337);
              if ((v961.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v341 = HIBYTE(v961.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v341 = v961.__r_.__value_.__l.__size_;
              }

              v342 = v340[23];
              v343 = v342;
              if ((v342 & 0x80u) != 0)
              {
                v342 = *(v340 + 1);
              }

              if (v341 != v342 || ((v961.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v344 = &v961) : (v344 = v961.__r_.__value_.__r.__words[0]), v343 >= 0 ? (v345 = v340) : (v345 = *v340), v337 = memcmp(v344, v345, v341), v337))
              {
                std::string::basic_string[abi:ne200100]<0>(&v956, "out");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v333, &v956, &__str);
                v346 = *(&__str + 1);
                v347 = __str;
                __str = 0uLL;
                if (SHIBYTE(v957) < 0)
                {
                  operator delete(v956);
                  if (!v347)
                  {
LABEL_796:
                    std::string::basic_string[abi:ne200100]<0>(&v956, "out");
                    RIO_MTLX::InterfaceElement::addOutput(v333, &v956);
                  }
                }

                else if (!v347)
                {
                  goto LABEL_796;
                }
              }

              else
              {
LABEL_794:
                v346 = 0;
                v347 = 0;
              }

              v348 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v337);
              RIO_MTLX::Element::removeAttribute(v333, v348);
              v350 = RIO_MTLX::Output::DEFAULT_INPUT_ATTRIBUTE(v349);
              v351 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v333 + 20, v350);
              if (v351)
              {
                v352 = (v351 + 40);
                if (!v347)
                {
                  goto LABEL_806;
                }
              }

              else
              {
                v351 = RIO_MTLX::EMPTY_STRING(0);
                v352 = v351;
                if (!v347)
                {
                  goto LABEL_806;
                }
              }

              if ((*(v352 + 23) & 0x8000000000000000) != 0)
              {
                if (!*(v352 + 1))
                {
                  goto LABEL_806;
                }
              }

              else if (!*(v352 + 23))
              {
LABEL_806:
                v354 = RIO_MTLX::Output::DEFAULT_INPUT_ATTRIBUTE(v351);
                RIO_MTLX::Element::removeAttribute(v333, v354);
                if (v346)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v346);
                }

                if ((SHIBYTE(v961.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  break;
                }

                operator delete(v961.__r_.__value_.__l.__data_);
                if (!v332)
                {
LABEL_811:
                  v330 += 16;
                  if (v330 == v331)
                  {
                    goto LABEL_815;
                  }

                  continue;
                }

LABEL_810:
                std::__shared_weak_count::__release_shared[abi:ne200100](v332);
                std::__shared_weak_count::__release_shared[abi:ne200100](v332);
                goto LABEL_811;
              }

              v353 = RIO_MTLX::Output::DEFAULT_INPUT_ATTRIBUTE(v351);
              v351 = RIO_MTLX::Element::setAttribute(v347, v353, v352);
              goto LABEL_806;
            }
          }

          break;
        }

        if (!v332)
        {
          goto LABEL_811;
        }

        goto LABEL_810;
      }

LABEL_815:
      v961.__r_.__value_.__r.__words[0] = &v965;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
      v356 = RIO_MTLX::EMPTY_STRING(v355);
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(this, v356, &v965);
      v358 = v965.__r_.__value_.__l.__size_;
      v357 = v965.__r_.__value_.__r.__words[0];
      if (v965.__r_.__value_.__r.__words[0] != v965.__r_.__value_.__l.__size_)
      {
        while (2)
        {
          v360 = *v357;
          v359 = *(v357 + 8);
          if (v359)
          {
            atomic_fetch_add_explicit(&v359->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v361 = (*(*v360 + 7))(v360);
          v362 = *(v361 + 23);
          if (v362 < 0)
          {
            if (*(v361 + 8) != 7)
            {
              goto LABEL_829;
            }

            v361 = *v361;
          }

          else if (v362 != 7)
          {
            goto LABEL_829;
          }

          if (*v361 == 1718777203 && *(v361 + 3) == 1701011814)
          {
            RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, v360 + 6);
          }

LABEL_829:
          if (v359)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v359);
          }

          v357 += 16;
          if (v357 == v358)
          {
            break;
          }

          continue;
        }
      }

      v961.__r_.__value_.__r.__words[0] = &v965;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
      v365 = RIO_MTLX::EMPTY_STRING(v364);
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(this, v365, &v965);
      v367 = v965.__r_.__value_.__l.__size_;
      v366 = v965.__r_.__value_.__r.__words[0];
      if (v965.__r_.__value_.__r.__words[0] == v965.__r_.__value_.__l.__size_)
      {
        goto LABEL_852;
      }

      while (2)
      {
        v369 = *v366;
        v368 = v366[1];
        if (v368)
        {
          atomic_fetch_add_explicit(&v368->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v956, "geomattr");
        RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v961, *(v369 + 136), *(v369 + 144), &v956);
        if (SHIBYTE(v957) < 0)
        {
          operator delete(v956);
        }

        v370 = v961.__r_.__value_.__l.__size_;
        v371 = v961.__r_.__value_.__r.__words[0];
        while (2)
        {
          if (v371 != v370)
          {
            v372 = *v371;
            v373 = *(v371 + 8);
            if (v373)
            {
              atomic_fetch_add_explicit(&v373->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v373->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v935[1] = v373;
            v935[0] = v372;
            std::string::basic_string[abi:ne200100]<0>(&v956, "geomprop");
            RIO_MTLX::Element::changeChildCategory(v369, v935, &v956, &v936);
            if (v937)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v937);
            }

            if (SHIBYTE(v957) < 0)
            {
              operator delete(v956);
              if (v373)
              {
LABEL_845:
                std::__shared_weak_count::__release_shared[abi:ne200100](v373);
                std::__shared_weak_count::__release_shared[abi:ne200100](v373);
              }
            }

            else if (v373)
            {
              goto LABEL_845;
            }

            v371 += 16;
            continue;
          }

          break;
        }

        *&v956 = &v961;
        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v956);
        if (v368)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v368);
        }

        v366 += 2;
        if (v366 != v367)
        {
          continue;
        }

        break;
      }

LABEL_852:
      v961.__r_.__value_.__r.__words[0] = &v965;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
      RIO_MTLX::Element::traverseTree(this, &v965);
      *&v967[8] = 0;
      *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
      if (v965.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v962 = 0;
      v961.__r_.__value_.__r.__words[2] = 0;
      v963 = 0;
      v374 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
      v964 = *v967;
      RIO_MTLX::NULL_TREE_ITERATOR(v374);
      v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v958 = 0;
      v957 = 0;
      v959 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v960 = xmmword_27EE52758;
      while (2)
      {
        if (RIO_MTLX::TreeIterator::operator!=(&v961, &v956))
        {
          v375 = *&v961.__r_.__value_.__l.__data_;
          if (v961.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::Node>(v375, &v907);
          if (!v907.__r_.__value_.__r.__words[0])
          {
            goto LABEL_870;
          }

          v376 = (v907.__r_.__value_.__r.__words[0] + 24);
          v377 = *(v907.__r_.__value_.__r.__words[0] + 47);
          if (v377 < 0)
          {
            if (*(v907.__r_.__value_.__r.__words[0] + 32) != 13)
            {
LABEL_870:
              if (v907.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v907.__r_.__value_.__l.__size_);
              }

              if (*(&v375 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v375 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v961);
              continue;
            }

            v378 = v376->__r_.__value_.__r.__words[0];
          }

          else
          {
            v378 = (v907.__r_.__value_.__r.__words[0] + 24);
            if (v377 != 13)
            {
              goto LABEL_870;
            }
          }

          v379 = *v378;
          v380 = *(v378 + 5);
          if (v379 == 0x727474616D6F6567 && v380 == 0x65756C6176727474)
          {
            std::string::basic_string[abi:ne200100]<0>(&__str, "geompropvalue");
            std::string::operator=(v376, &__str);
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
            }

            v382 = v907.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__str, "attrname");
            v383 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v382 + 160), &__str);
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
            }

            if (v383)
            {
              v384 = v907.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__str, "geomprop");
              v385 = v907.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__p, "attrname");
              v386 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v385 + 160), &__p.__r_.__value_.__l.__data_);
              if (v386)
              {
                v387 = (v386 + 5);
              }

              else
              {
                v387 = RIO_MTLX::EMPTY_STRING(0);
              }

              RIO_MTLX::Element::setAttribute(v384, &__str, v387);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }

              v388 = v907.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__str, "attrname");
              RIO_MTLX::Element::removeAttribute(v388, &__str);
              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }
            }
          }

          goto LABEL_870;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v956);
      RIO_MTLX::TreeIterator::~TreeIterator(&v961);
      RIO_MTLX::TreeIterator::~TreeIterator(&v965);
      RIO_MTLX::Element::traverseTree(this, &v965);
      *&v967[8] = 0;
      *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
      if (v965.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v962 = 0;
      v961.__r_.__value_.__r.__words[2] = 0;
      v963 = 0;
      v389 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
      v964 = *v967;
      RIO_MTLX::NULL_TREE_ITERATOR(v389);
      v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v958 = 0;
      v957 = 0;
      v959 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v960 = xmmword_27EE52758;
      while (2)
      {
        if (RIO_MTLX::TreeIterator::operator!=(&v961, &v956))
        {
          v390 = *&v961.__r_.__value_.__l.__data_;
          if (v961.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::Node>(v390, v902);
          v392 = v902[0];
          if (!v902[0])
          {
            goto LABEL_1188;
          }

          v393 = v902[0] + 24;
          if (*(v902[0] + 47) < 0)
          {
            if (*(v902[0] + 4) == 6)
            {
              v395 = *v393;
              goto LABEL_903;
            }
          }

          else
          {
            v394 = *(v902[0] + 47);
            v395 = v902[0] + 24;
            if (v394 != 6)
            {
LABEL_908:
              v399 = 0;
              if (v394 > 7)
              {
                if (v394 != 8)
                {
                  if (v394 != 14)
                  {
                    if (v394 == 15)
                    {
                      if (*v393 != 0x726F66736E617274 || *(v392 + 31) != 0x726F746365766D72)
                      {
                        v401 = *(v392 + 31);
                        v402 = *v393 == 0x726F66736E617274;
                        v403 = 0x6C616D726F6E6D72;
                        goto LABEL_966;
                      }

                      goto LABEL_1011;
                    }

LABEL_1008:
                    if (v399)
                    {
LABEL_1009:
                      if (*(v392 + 4) == 8)
                      {
                        v393 = *v393;
LABEL_1074:
                        if (*v393 == 0x706F72646B636162)
                        {
                          if (*(v902[0] + 71) < 0)
                          {
                            std::string::__init_copy_ctor_external(&__str, *(v902[0] + 6), *(v902[0] + 7));
                          }

                          else
                          {
                            __str = *(v902[0] + 3);
                            *&__str_16 = *(v902[0] + 8);
                          }

                          v495 = BYTE7(__str_16);
                          if (SBYTE7(__str_16) < 0)
                          {
                            v495 = *(&__str + 1);
                          }

                          if (!v495)
                          {
                            v496 = RIO_MTLX::Backdrop::CATEGORY(v391);
                            v497 = v496;
                            if (v496[23] >= 0)
                            {
                              v498 = v496[23];
                            }

                            else
                            {
                              v498 = *(v496 + 1);
                            }

                            std::string::basic_string[abi:ne200100](&v907, v498 + 1);
                            if ((v907.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v499 = &v907;
                            }

                            else
                            {
                              v499 = v907.__r_.__value_.__r.__words[0];
                            }

                            if (v498)
                            {
                              if (v497[23] >= 0)
                              {
                                v500 = v497;
                              }

                              else
                              {
                                v500 = *v497;
                              }

                              memmove(v499, v500, v498);
                            }

                            *(&v499->__r_.__value_.__l.__data_ + v498) = 49;
                            RIO_MTLX::Element::createValidChildName(this, &v907, &__p);
                            if (SBYTE7(__str_16) < 0)
                            {
                              operator delete(__str);
                            }

                            __str = *&__p.__r_.__value_.__l.__data_;
                            *&__str_16 = *(&__p.__r_.__value_.__l + 2);
                            *(&__p.__r_.__value_.__s + 23) = 0;
                            __p.__r_.__value_.__s.__data_[0] = 0;
                            if (SHIBYTE(v907.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v907.__r_.__value_.__l.__data_);
                            }
                          }

                          std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v905, this + 1);
                          operator new();
                        }
                      }
                    }

                    else if (v394 == 8)
                    {
                      goto LABEL_1074;
                    }

LABEL_1188:
                    if (v902[1])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v902[1]);
                    }

                    if (*(&v390 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v390 + 1));
                    }

                    RIO_MTLX::TreeIterator::operator++(&v961);
                    continue;
                  }

                  v401 = *(v392 + 30);
                  v402 = *v393 == 0x726F66736E617274;
                  v403 = 0x746E696F706D726FLL;
LABEL_966:
                  if (!v402 || v401 != v403)
                  {
                    goto LABEL_1188;
                  }

LABEL_1011:
                  v442 = v902[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "fromspace");
                  v443 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v442 + 12, &__str);
                  if (v443)
                  {
                    v444 = v443[5];
                    v445 = v443[6];
                    if (v445)
                    {
                      atomic_fetch_add_explicit(&v445->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v444)
                    {
                      v446 = 0;
                      goto LABEL_1103;
                    }
                  }

                  else
                  {
                    v445 = 0;
                  }

                  v470 = v902[0];
                  std::string::basic_string[abi:ne200100]<0>(&__p, "tospace");
                  v471 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v470 + 12, &__p.__r_.__value_.__l.__data_);
                  if (v471)
                  {
                    v473 = v471[5];
                    v472 = v471[6];
                    if (v472)
                    {
                      atomic_fetch_add_explicit(&v472->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::__shared_weak_count::__release_shared[abi:ne200100](v472);
                    }
                  }

                  else
                  {
                    v473 = 0;
                  }

                  v446 = v473 == 0;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

LABEL_1103:
                  if (v445)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v445);
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                    if (!v446)
                    {
                      goto LABEL_1188;
                    }
                  }

                  else if (!v446)
                  {
                    goto LABEL_1188;
                  }

                  v486 = v902[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "transformmatrix");
                  std::string::operator=(v486 + 1, &__str);
LABEL_1186:
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  goto LABEL_1188;
                }

                v424 = v392 + 24;
LABEL_1007:
                if (*v424 != 0x6574617261706573)
                {
                  goto LABEL_1008;
                }

                v447 = v902[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v447, &__str, &__p);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                if (__p.__r_.__value_.__r.__words[0])
                {
                  v448 = (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
                  RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE();
                  v449 = *(v448 + 23);
                  if (v449 >= 0)
                  {
                    v450 = *(v448 + 23);
                  }

                  else
                  {
                    v450 = *(v448 + 8);
                  }

                  v451 = byte_27EE524CF;
                  if (byte_27EE524CF < 0)
                  {
                    v451 = qword_27EE524C0;
                  }

                  if (v450 == v451)
                  {
                    v452 = v449 >= 0 ? v448 : *v448;
                    v453 = byte_27EE524CF >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v;
                    if (!memcmp(v452, v453, v450))
                    {
                      goto LABEL_1173;
                    }
                  }

                  RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE();
                  v454 = *(v448 + 23);
                  if (v454 >= 0)
                  {
                    v455 = *(v448 + 23);
                  }

                  else
                  {
                    v455 = *(v448 + 8);
                  }

                  v456 = byte_27EE5243F;
                  if (byte_27EE5243F < 0)
                  {
                    v456 = qword_27EE52430;
                  }

                  if (v455 == v456 && (v454 >= 0 ? (v457 = v448) : (v457 = *v448), byte_27EE5243F >= 0 ? (v458 = &RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v) : (v458 = RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v), !memcmp(v457, v458, v455)))
                  {
LABEL_1173:
                    v505 = v902[0];
                    std::string::basic_string[abi:ne200100]<0>(&__str, "separate4");
                    std::string::operator=(v505 + 1, &__str);
                  }

                  else
                  {
                    RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
                    v459 = *(v448 + 23);
                    if (v459 >= 0)
                    {
                      v460 = *(v448 + 23);
                    }

                    else
                    {
                      v460 = *(v448 + 8);
                    }

                    v461 = byte_27EE5249F;
                    if (byte_27EE5249F < 0)
                    {
                      v461 = qword_27EE52490;
                    }

                    if (v460 == v461)
                    {
                      v462 = v459 >= 0 ? v448 : *v448;
                      v463 = byte_27EE5249F >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v;
                      if (!memcmp(v462, v463, v460))
                      {
                        goto LABEL_1174;
                      }
                    }

                    RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
                    v464 = *(v448 + 23);
                    if (v464 >= 0)
                    {
                      v465 = *(v448 + 23);
                    }

                    else
                    {
                      v465 = *(v448 + 8);
                    }

                    v466 = byte_27EE5240F;
                    if (byte_27EE5240F < 0)
                    {
                      v466 = qword_27EE52400;
                    }

                    if (v465 == v466 && (v464 >= 0 ? (v467 = v448) : (v467 = *v448), byte_27EE5240F >= 0 ? (v468 = &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v) : (v468 = RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v), !memcmp(v467, v468, v465)))
                    {
LABEL_1174:
                      v506 = v902[0];
                      std::string::basic_string[abi:ne200100]<0>(&__str, "separate3");
                      std::string::operator=(v506 + 1, &__str);
                    }

                    else
                    {
                      v469 = v902[0];
                      std::string::basic_string[abi:ne200100]<0>(&__str, "separate2");
                      std::string::operator=(v469 + 1, &__str);
                    }
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

LABEL_1177:
                if (__p.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                }

                goto LABEL_1188;
              }

              if (v394 != 6)
              {
                if (v394 != 7)
                {
                  goto LABEL_1008;
                }

                if (*v393 != 1886220131 || *(v392 + 27) != 1701994864)
                {
                  v394 = 7;
                  v405 = (v392 + 24);
                  goto LABEL_931;
                }

LABEL_985:
                v433 = v902[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "ifgreatereq");
                std::string::operator=(v433 + 1, &__str);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v434 = v902[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "intest");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v434, &__str, &__p);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v435 = __p.__r_.__value_.__r.__words[0];
                if (__p.__r_.__value_.__r.__words[0])
                {
                  std::string::basic_string[abi:ne200100]<0>(&__str, "value1");
                  RIO_MTLX::Element::setName(v435, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

                v436 = v902[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "cutoff");
                v437 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v436 + 12, &__str);
                if (v437)
                {
                  v439 = v437[5];
                  v438 = v437[6];
                  if (v438)
                  {
                    atomic_fetch_add_explicit(&v438->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                  }
                }

                else
                {
                  v438 = 0;
                  v439 = 0;
                }

                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                  if (!v439)
                  {
                    goto LABEL_1124;
                  }

LABEL_1113:
                  v487 = v902[0];
                  v934[0] = v439;
                  v934[1] = v438;
                  if (v438)
                  {
                    atomic_fetch_add_explicit(&v438->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&__str, "input");
                  RIO_MTLX::Element::changeChildCategory(v487, v934, &__str, &v907);
                  v489 = v907.__r_.__value_.__l.__size_;
                  v488 = v907.__r_.__value_.__r.__words[0];
                  if (v438)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v438);
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  if (v438)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v438);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&__str, "value2");
                  RIO_MTLX::Element::setName(v488, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

                else
                {
                  if (v439)
                  {
                    goto LABEL_1113;
                  }

LABEL_1124:
                  v489 = v438;
                }

                v490 = v902[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in1");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v490, &__str, &v907);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v491 = v902[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in2");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v491, &__str, &v905);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v492 = v907.__r_.__value_.__r.__words[0];
                if (v907.__r_.__value_.__r.__words[0] && v905.__r_.__value_.__r.__words[0])
                {
                  std::string::basic_string[abi:ne200100]<0>(v932, "temp");
                  RIO_MTLX::Element::createValidChildName(this, v932, &__str);
                  RIO_MTLX::Element::setName(v492, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  if (v933 < 0)
                  {
                    operator delete(v932[0]);
                  }

                  v493 = v905.__r_.__value_.__r.__words[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "in1");
                  RIO_MTLX::Element::setName(v493, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  v494 = v907.__r_.__value_.__r.__words[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "in2");
                  RIO_MTLX::Element::setName(v494, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

                if (v905.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v905.__r_.__value_.__l.__size_);
                }

                if (v907.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v907.__r_.__value_.__l.__size_);
                }

                if (v489)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v489);
                }

                goto LABEL_1177;
              }

              if (*v393 != 1635020658 || *(v392 + 14) != 25972)
              {
                goto LABEL_1188;
              }

LABEL_1081:
              v474 = v902[0];
              v475 = (*(*v902[0] + 56))(v902[0]);
              RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
              v476 = *(v475 + 23);
              if (v476 >= 0)
              {
                v477 = *(v475 + 23);
              }

              else
              {
                v477 = *(v475 + 8);
              }

              v478 = byte_27EE5246F;
              if (byte_27EE5246F < 0)
              {
                v478 = qword_27EE52460;
              }

              v479 = "rotate3d";
              if (v477 == v478)
              {
                if (v476 >= 0)
                {
                  v480 = v475;
                }

                else
                {
                  v480 = *v475;
                }

                if (byte_27EE5246F >= 0)
                {
                  v481 = &RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v;
                }

                else
                {
                  v481 = RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v;
                }

                if (!memcmp(v480, v481, v477))
                {
                  v479 = "rotate2d";
                }

                else
                {
                  v479 = "rotate3d";
                }
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, v479);
              std::string::operator=(v474 + 1, &__str);
              goto LABEL_1186;
            }

LABEL_903:
            v396 = *v395;
            v397 = *(v395 + 2);
            if (v396 == 1702260329 && v397 == 29810)
            {
              v411 = (*(*v902[0] + 56))(v902[0]);
              RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE();
              v412 = *(v411 + 23);
              if (v412 >= 0)
              {
                v413 = *(v411 + 23);
              }

              else
              {
                v413 = *(v411 + 8);
              }

              v414 = byte_27EE524FF;
              if (byte_27EE524FF < 0)
              {
                v414 = qword_27EE524F0;
              }

              if (v413 == v414)
              {
                v415 = v412 >= 0 ? v411 : *v411;
                v416 = byte_27EE524FF >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v;
                if (!memcmp(v415, v416, v413))
                {
                  goto LABEL_963;
                }
              }

              v417 = (*(*v902[0] + 56))(v902[0]);
              v391 = RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
              v418 = *(v417 + 23);
              if (v418 >= 0)
              {
                v419 = *(v417 + 23);
              }

              else
              {
                v419 = *(v417 + 8);
              }

              v420 = byte_27EE5252F;
              if (byte_27EE5252F < 0)
              {
                v420 = qword_27EE52520;
              }

              if (v419 == v420)
              {
                v421 = v418 >= 0 ? v417 : *v417;
                v422 = byte_27EE5252F >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v;
                v391 = memcmp(v421, v422, v419);
                if (!v391)
                {
LABEL_963:
                  v423 = v902[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "invertmatrix");
                  std::string::operator=(v423 + 1, &__str);
                  goto LABEL_1186;
                }
              }
            }
          }

          v394 = v392[47];
          if ((v392[47] & 0x80000000) == 0)
          {
            goto LABEL_908;
          }

          v406 = *(v392 + 4);
          if (v406 <= 13)
          {
            if (v406 == 6 && **v393 == 1635020658 && *(*v393 + 4) == 25972)
            {
              goto LABEL_1081;
            }

            if (v406 == 7)
            {
              v405 = *v393;
              if (**v393 == 1886220131 && *(*v393 + 3) == 1701994864)
              {
                goto LABEL_985;
              }

LABEL_931:
              v408 = *v405;
              v409 = *(v405 + 3);
              if (v408 == 1651339107 && v409 == 1701734754)
              {
                v482 = v902[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in4");
                v483 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v482 + 12, &__str);
                if (v483)
                {
                  v485 = v483[5];
                  v484 = v483[6];
                  if (v484)
                  {
                    atomic_fetch_add_explicit(&v484->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v484);
                  }
                }

                else
                {
                  v485 = 0;
                }

                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v501 = v902[0];
                if (v485)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__str, "combine4");
                  std::string::operator=(v501 + 1, &__str);
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(&__str, "in3");
                  v502 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v501[4].__r_.__value_.__r.__words, &__str);
                  if (v502)
                  {
                    v504 = v502[5];
                    v503 = v502[6];
                    if (v503)
                    {
                      atomic_fetch_add_explicit(&v503->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::__shared_weak_count::__release_shared[abi:ne200100](v503);
                    }
                  }

                  else
                  {
                    v504 = 0;
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  v507 = v902[0];
                  if (v504)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__str, "combine3");
                  }

                  else
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__str, "combine2");
                  }

                  std::string::operator=(v507 + 1, &__str);
                }

                goto LABEL_1186;
              }

              if ((v394 & 0x80) == 0)
              {
                goto LABEL_1188;
              }
            }

LABEL_1005:
            if (*(v392 + 4) != 8)
            {
              goto LABEL_1009;
            }

            v424 = *v393;
            v399 = 1;
            goto LABEL_1007;
          }

          if (v406 == 14)
          {
            v430 = *(*v393 + 6);
            v431 = **v393 == 0x726F66736E617274;
            v432 = 0x746E696F706D726FLL;
          }

          else
          {
            if (v406 != 15)
            {
              goto LABEL_1005;
            }

            v427 = *v393;
            if (**v393 == 0x726F66736E617274 && *(*v393 + 7) == 0x726F746365766D72)
            {
              goto LABEL_1011;
            }

            v429 = *v427;
            v430 = *(v427 + 7);
            v431 = v429 == 0x726F66736E617274;
            v432 = 0x6C616D726F6E6D72;
          }

          if (v431 && v430 == v432)
          {
            goto LABEL_1011;
          }

          goto LABEL_1005;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v956);
      RIO_MTLX::TreeIterator::~TreeIterator(&v961);
      RIO_MTLX::TreeIterator::~TreeIterator(&v965);
      std::string::basic_string[abi:ne200100]<0>(v508, "ND_backdrop");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v965.__r_.__value_.__l.__data_);
      if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v965.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v965, "ND_invert_matrix33");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v965.__r_.__value_.__l.__data_);
      if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v965.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v965, "ND_invert_matrix44");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v965.__r_.__value_.__l.__data_);
      if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v965.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v965, "ND_rotate_vector2");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v965.__r_.__value_.__l.__data_);
      if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v965.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v965, "ND_rotate_vector3");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v965.__r_.__value_.__l.__data_);
      if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v965.__r_.__value_.__l.__data_);
      }

LABEL_1203:
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(&v965, "r", "x");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(&v967[8], "a", "y");
      v509 = 0;
      memset(v930, 0, sizeof(v930));
      v931 = 1065353216;
      while (2)
      {
        v510 = std::__string_hash<char>::operator()[abi:ne200100](v930, &v965 + v509);
        v511 = v510;
        v512 = *(&v930[0] + 1);
        if (!*(&v930[0] + 1))
        {
          goto LABEL_1220;
        }

        v513 = vcnt_s8(*(v930 + 8));
        v513.i16[0] = vaddlv_u8(v513);
        v514 = v513.u32[0];
        if (v513.u32[0] > 1uLL)
        {
          v515 = v510;
          if (v510 >= *(&v930[0] + 1))
          {
            v515 = v510 % *(&v930[0] + 1);
          }
        }

        else
        {
          v515 = (*(&v930[0] + 1) - 1) & v510;
        }

        v516 = *(*&v930[0] + 8 * v515);
        if (!v516 || (v517 = *v516) == 0)
        {
LABEL_1220:
          operator new();
        }

LABEL_1211:
        v518 = v517[1];
        if (v518 == v511)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v930, v517 + 2, (&v965.__r_.__value_.__l.__data_ + v509)))
          {
            v509 += 48;
            if (v509 != 96)
            {
              continue;
            }

            for (ii = 0; ii != -12; ii -= 6)
            {
              v520 = (&v965.__r_.__value_.__l.__data_ + ii * 8);
              if (SHIBYTE(v969.__r_.__value_.__r.__words[ii + 2]) < 0)
              {
                operator delete(v520[9]);
              }

              if (*(v520 + 71) < 0)
              {
                operator delete(v520[6]);
              }
            }

            RIO_MTLX::Element::traverseTree(this, &v965);
            *&v967[8] = 0;
            *&v961.__r_.__value_.__l.__data_ = *&v965.__r_.__value_.__l.__data_;
            if (v965.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v965.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v962 = 0;
            v961.__r_.__value_.__r.__words[2] = 0;
            v963 = 0;
            v521 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v961.__r_.__value_.__r.__words[2], v965.__r_.__value_.__r.__words[2], v966, 0xAAAAAAAAAAAAAAABLL * ((v966 - v965.__r_.__value_.__r.__words[2]) >> 3));
            v964 = *v967;
            RIO_MTLX::NULL_TREE_ITERATOR(v521);
            v956 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
            if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
            {
              atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v958 = 0;
            v957 = 0;
            v959 = 0;
            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
            v960 = xmmword_27EE52758;
            while (1)
            {
              v522 = RIO_MTLX::TreeIterator::operator!=(&v961, &v956);
              if (!v522)
              {
                break;
              }

              v523 = *&v961.__r_.__value_.__l.__data_;
              if (v961.__r_.__value_.__l.__size_)
              {
                atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
              }

              v524 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v522);
              v525 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v523 + 160), v524);
              if (v525)
              {
                v526 = (v525 + 5);
              }

              else
              {
                v526 = RIO_MTLX::EMPTY_STRING(0);
              }

              v527 = *(v526 + 23);
              if (v527 < 0)
              {
                if (v526[1] != 6)
                {
                  goto LABEL_1318;
                }

                v526 = *v526;
              }

              else if (v527 != 6)
              {
                goto LABEL_1318;
              }

              if (*v526 == 1869377379 && *(v526 + 2) == 12914)
              {
                v529 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v526);
                RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
                RIO_MTLX::Element::setAttribute(v523, v529, &RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v);
                v530 = *(v523 + 232);
                if (v530)
                {
                  v530 = std::__shared_weak_count::lock(v530);
                  v531 = v530;
                  if (v530)
                  {
                    v530 = *(v523 + 224);
                  }
                }

                else
                {
                  v531 = 0;
                }

                RIO_MTLX::Element::asA<RIO_MTLX::Node>(v530, &v905);
                if (v531)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v531);
                }

                if (!v905.__r_.__value_.__r.__words[0])
                {
                  goto LABEL_1316;
                }

                RIO_MTLX::Node::getDownstreamPorts(v905.__r_.__value_.__l.__data_, &__str);
                v533 = *(&__str + 1);
                v534 = __str;
                while (2)
                {
                  if (v534 == v533)
                  {
                    __p.__r_.__value_.__r.__words[0] = &__str;
                    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
                    v548 = v905.__r_.__value_.__r.__words[0];
                    std::string::basic_string[abi:ne200100]<0>(&__str, "channels");
                    v549 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v548 + 96), &__str);
                    if (v549)
                    {
                      v551 = v549[5];
                      v550 = v549[6];
                      if (v550)
                      {
                        atomic_fetch_add_explicit(&v550->__shared_owners_, 1uLL, memory_order_relaxed);
                      }
                    }

                    else
                    {
                      v550 = 0;
                      v551 = 0;
                    }

                    if (SBYTE7(__str_16) < 0)
                    {
                      operator delete(__str);
                      if (v551)
                      {
                        goto LABEL_1298;
                      }
                    }

                    else
                    {
                      if (!v551)
                      {
                        goto LABEL_1314;
                      }

LABEL_1298:
                      v552 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v549);
                      v553 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v551 + 20, v552);
                      if (v553)
                      {
                        v554 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v553);
                        v555 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v551 + 20, v554);
                        if (v555)
                        {
                          v556 = (v555 + 5);
                        }

                        else
                        {
                          v556 = RIO_MTLX::EMPTY_STRING(0);
                        }

                        if (*(v556 + 23) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__str, *v556, v556[1]);
                        }

                        else
                        {
                          v557 = *v556;
                          *&__str_16 = v556[2];
                          __str = v557;
                        }

                        if (SBYTE7(__str_16) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v927, __str, *(&__str + 1));
                        }

                        else
                        {
                          *&v927.__r_.__value_.__l.__data_ = __str;
                          v927.__r_.__value_.__r.__words[2] = __str_16;
                        }

                        RIO_MTLX::replaceSubstrings(&v927, v930, &__p);
                        if (SBYTE7(__str_16) < 0)
                        {
                          operator delete(__str);
                        }

                        __str = *&__p.__r_.__value_.__l.__data_;
                        *&__str_16 = *(&__p.__r_.__value_.__l + 2);
                        *(&__p.__r_.__value_.__s + 23) = 0;
                        __p.__r_.__value_.__s.__data_[0] = 0;
                        if (SHIBYTE(v927.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v927.__r_.__value_.__l.__data_);
                        }

                        v559 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v558);
                        RIO_MTLX::Element::setAttribute(v551, v559, &__str);
                        if (SBYTE7(__str_16) < 0)
                        {
                          operator delete(__str);
                        }
                      }
                    }

LABEL_1314:
                    if (v550)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v550);
                    }

LABEL_1316:
                    if (v905.__r_.__value_.__l.__size_)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v905.__r_.__value_.__l.__size_);
                    }

                    break;
                  }

                  v536 = *v534;
                  v535 = *(v534 + 8);
                  if (v535)
                  {
                    atomic_fetch_add_explicit(&v535->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v537 = RIO_MTLX::PortElement::CHANNELS_ATTRIBUTE(v532);
                  v538 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v536 + 20, v537);
                  if (v538)
                  {
                    Channels = RIO_MTLX::PortElement::getChannels(v536);
                    if (*(Channels + 23) < 0)
                    {
                      std::string::__init_copy_ctor_external(&__p, *Channels, Channels[1]);
                    }

                    else
                    {
                      v540 = *Channels;
                      __p.__r_.__value_.__r.__words[2] = Channels[2];
                      *&__p.__r_.__value_.__l.__data_ = v540;
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v929, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v929 = __p;
                    }

                    RIO_MTLX::replaceSubstrings(&v929, v930, &v907);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    __p = v907;
                    *(&v907.__r_.__value_.__s + 23) = 0;
                    v907.__r_.__value_.__s.__data_[0] = 0;
                    if (SHIBYTE(v929.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v929.__r_.__value_.__l.__data_);
                    }

                    v542 = RIO_MTLX::PortElement::CHANNELS_ATTRIBUTE(v541);
                    v538 = RIO_MTLX::Element::setAttribute(v536, v542, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  v543 = RIO_MTLX::PortElement::OUTPUT_ATTRIBUTE(v538);
                  v532 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v536 + 20, v543);
                  if (!v532)
                  {
                    goto LABEL_1285;
                  }

                  OutputString = RIO_MTLX::PortElement::getOutputString(v536);
                  if (*(OutputString + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__p, *OutputString, OutputString[1]);
                  }

                  else
                  {
                    v545 = *OutputString;
                    __p.__r_.__value_.__r.__words[2] = OutputString[2];
                    *&__p.__r_.__value_.__l.__data_ = v545;
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v928, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v928 = __p;
                  }

                  RIO_MTLX::replaceSubstrings(&v928, v930, &v907);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p = v907;
                  *(&v907.__r_.__value_.__s + 23) = 0;
                  v907.__r_.__value_.__s.__data_[0] = 0;
                  if (SHIBYTE(v928.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v928.__r_.__value_.__l.__data_);
                  }

                  v547 = RIO_MTLX::PortElement::OUTPUT_ATTRIBUTE(v546);
                  v532 = RIO_MTLX::Element::setAttribute(v536, v547, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                    if (v535)
                    {
LABEL_1286:
                      std::__shared_weak_count::__release_shared[abi:ne200100](v535);
                    }
                  }

                  else
                  {
LABEL_1285:
                    if (v535)
                    {
                      goto LABEL_1286;
                    }
                  }

                  v534 += 16;
                  continue;
                }
              }

LABEL_1318:
              if (*(&v523 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v523 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v961);
            }

            RIO_MTLX::TreeIterator::~TreeIterator(&v956);
            RIO_MTLX::TreeIterator::~TreeIterator(&v961);
            RIO_MTLX::TreeIterator::~TreeIterator(&v965);
            std::string::basic_string[abi:ne200100]<0>(v560, "material");
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__str, this[17], this[18], &v965);
            if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v965.__r_.__value_.__l.__data_);
            }

            v788 = *(&__str + 1);
            v561 = __str;
            if (__str != *(&__str + 1))
            {
              do
              {
                v562 = *v561;
                v563 = v561[1];
                if (v563)
                {
                  atomic_fetch_add_explicit(&v563->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v965, "shaderref");
                RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__p, *(v562 + 136), *(v562 + 144), &v965);
                if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v965.__r_.__value_.__l.__data_);
                }

                v791 = v561;
                if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                {
                  v564 = *__p.__r_.__value_.__l.__data_;
                  v565 = *(__p.__r_.__value_.__r.__words[0] + 8);
                  if (v565)
                  {
                    atomic_fetch_add_explicit(&v565->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v565->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v926[0] = v564;
                  v926[1] = v565;
                  if (v565)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v565);
                  }

                  if (v890[0])
                  {
                    v566 = (*(*v890[0] + 56))(v890[0]);
                  }

                  else
                  {
                    v566 = RIO_MTLX::SURFACE_SHADER_TYPE_STRING(0);
                  }

                  if (v566[23] < 0)
                  {
                    std::string::__init_copy_ctor_external(&v907, *v566, *(v566 + 1));
                  }

                  else
                  {
                    v567 = *v566;
                    v907.__r_.__value_.__r.__words[2] = *(v566 + 2);
                    *&v907.__r_.__value_.__l.__data_ = v567;
                  }

                  if (v890[0])
                  {
                    v568 = RIO_MTLX::NodeDef::getNodeString(v890[0]);
                  }

                  else
                  {
                    v569 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(0);
                    v570 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v564 + 160), v569);
                    if (v570)
                    {
                      v568 = (v570 + 5);
                    }

                    else
                    {
                      v568 = RIO_MTLX::EMPTY_STRING(0);
                    }
                  }

                  if (*(v568 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v905, *v568, v568[1]);
                  }

                  else
                  {
                    v571 = *v568;
                    v905.__r_.__value_.__r.__words[2] = v568[2];
                    *&v905.__r_.__value_.__l.__data_ = v571;
                  }

                  if (*(v564 + 71) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v925, *(v564 + 48), *(v564 + 56));
                  }

                  else
                  {
                    v925 = *(v564 + 48);
                  }

                  RIO_MTLX::Element::createValidChildName(this, &v925, v902);
                  if (SHIBYTE(v925.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v925.__r_.__value_.__l.__data_);
                  }

                  RIO_MTLX::GraphElement::addNode(this, &v905, v902);
                }

                v965.__r_.__value_.__r.__words[0] = &__p;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v965);
                RIO_MTLX::Element::removeChild(this, (v562 + 48));
                if (v563)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v563);
                }

                v561 += 2;
              }

              while (v791 + 2 != v788);
            }

            v965.__r_.__value_.__r.__words[0] = &__str;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v965);
            std::string::basic_string[abi:ne200100]<0>(v923, "atan2");
            std::string::basic_string[abi:ne200100]<0>(&v922, "in1");
            std::string::basic_string[abi:ne200100]<0>(&v921, "in2");
            std::string::basic_string[abi:ne200100]<0>(v919, "rotate3d");
            std::string::basic_string[abi:ne200100]<0>(v917, "axis");
            std::string::basic_string[abi:ne200100]<0>(v915, "1.0");
            RIO_MTLX::Document::getMatchingNodeDefs(this, v923, &v965);
            v573 = v965.__r_.__value_.__l.__size_;
            v572 = v965.__r_.__value_.__r.__words[0];
            if (v965.__r_.__value_.__r.__words[0] != v965.__r_.__value_.__l.__size_)
            {
              __srcb = 0;
              while (1)
              {
                v575 = *v572;
                v574 = v572[1];
                if (v574)
                {
                  atomic_fetch_add_explicit(&v574->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v575, &v922.__r_.__value_.__l.__data_, &v956);
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v575, &v921.__r_.__value_.__l.__data_, &__str);
                ValueString = RIO_MTLX::ValueElement::getValueString(v956);
                if (*(ValueString + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v961, *ValueString, ValueString[1]);
                }

                else
                {
                  v577 = *ValueString;
                  v961.__r_.__value_.__r.__words[2] = ValueString[2];
                  *&v961.__r_.__value_.__l.__data_ = v577;
                }

                v578 = HIBYTE(v961.__r_.__value_.__r.__words[2]);
                if ((v961.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v579 = HIBYTE(v961.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v579 = v961.__r_.__value_.__l.__size_;
                }

                v580 = v916;
                if ((v916 & 0x80u) != 0)
                {
                  v580 = v915[1];
                }

                if (v579 == v580)
                {
                  v581 = (v961.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v961 : v961.__r_.__value_.__r.__words[0];
                  v582 = (v916 & 0x80u) == 0 ? v915 : v915[0];
                  if (!memcmp(v581, v582, v579))
                  {
                    break;
                  }
                }

                if (v578 < 0)
                {
                  goto LABEL_1377;
                }

LABEL_1378:
                if (*(&__str + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&__str + 1));
                }

                if (*(&v956 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v956 + 1));
                }

                if (v574)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v574);
                }

                v572 += 2;
                if (v572 == v573)
                {
                  goto LABEL_1389;
                }
              }

              v583 = v956;
              v584 = RIO_MTLX::ValueElement::getValueString(__str);
              v585 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v584);
              v586 = RIO_MTLX::Element::setAttribute(v583, v585, v584);
              v587 = __str;
              v588 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v586);
              RIO_MTLX::Element::setAttribute(v587, v588, &v961);
              __srcb = 1;
              if ((*(&v961.__r_.__value_.__s + 23) & 0x80) == 0)
              {
                goto LABEL_1378;
              }

LABEL_1377:
              operator delete(v961.__r_.__value_.__l.__data_);
              goto LABEL_1378;
            }

            __srcb = 0;
LABEL_1389:
            v961.__r_.__value_.__r.__words[0] = &v965;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
            RIO_MTLX::Document::getMatchingNodeDefs(this, v919, &v965);
            v590 = v965.__r_.__value_.__l.__size_;
            for (jj = v965.__r_.__value_.__r.__words[0]; jj != v590; jj += 16)
            {
              v592 = *jj;
              v591 = *(jj + 8);
              if (v591)
              {
                atomic_fetch_add_explicit(&v591->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v593 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v592 + 12, v917);
              if (!v593)
              {
                goto LABEL_1406;
              }

              v594 = v593[5];
              v595 = v593[6];
              if (v595)
              {
                atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!v594)
                {
                  goto LABEL_1405;
                }

                v911 = v594;
                v912 = v595;
                atomic_fetch_add_explicit(&v595->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                if (!v594)
                {
                  goto LABEL_1406;
                }

                v911 = v593[5];
                v912 = 0;
              }

              std::string::basic_string[abi:ne200100]<0>(&v961, "input");
              RIO_MTLX::Element::changeChildCategory(v592, &v911, &v961, &v913);
              if (v914)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v914);
              }

              if ((SHIBYTE(v961.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                if (!v595)
                {
                  goto LABEL_1406;
                }

LABEL_1404:
                std::__shared_weak_count::__release_shared[abi:ne200100](v595);
LABEL_1405:
                std::__shared_weak_count::__release_shared[abi:ne200100](v595);
                goto LABEL_1406;
              }

              operator delete(v961.__r_.__value_.__l.__data_);
              if (v595)
              {
                goto LABEL_1404;
              }

LABEL_1406:
              if (v591)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v591);
              }
            }

            v961.__r_.__value_.__r.__words[0] = &v965;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(&__p, "dielectric_brdf", "dielectric_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(&v907, "dielectric_btdf", "dielectric_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v905, "generalized_schlick_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v906, "generalized_schlick_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[15],0>(v902, "conductor_brdf", "conductor_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v900, "sheen_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v901, "sheen_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v898, "diffuse_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v899, "oren_nayar_diffuse_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v896, "burley_diffuse_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v897, "burley_diffuse_bsdf");
            std::string::basic_string[abi:ne200100]<0>(v893, "diffuse_btdf");
            std::string::basic_string[abi:ne200100]<0>(&v895, "translucent_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(v890, "subsurface_brdf", "subsurface_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[15],0>(v887, "thin_film_brdf", "thin_film_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&__s, "scatter_mode");
            std::string::basic_string[abi:ne200100]<0>(&v885, "BSDF");
            std::string::basic_string[abi:ne200100]<0>(&v883, "layer");
            std::string::basic_string[abi:ne200100]<0>(&v882, "top");
            std::string::basic_string[abi:ne200100]<0>(&v880, "base");
            std::string::basic_string[abi:ne200100]<0>(v878, "interior");
            std::string::basic_string[abi:ne200100]<0>(&v875, "artistic_ior");
            std::string::basic_string[abi:ne200100]<0>(v873, "complex_ior");
            std::string::basic_string[abi:ne200100]<0>(&v871, "reflectivity");
            std::string::basic_string[abi:ne200100]<0>(&v869, "edge_color");
            std::string::basic_string[abi:ne200100]<0>(v867, "ior");
            std::string::basic_string[abi:ne200100]<0>(v865, "extinction");
            std::string::basic_string[abi:ne200100]<0>(&v864, "color3");
            std::string::basic_string[abi:ne200100]<0>(&v861, "vector3");
            std::string::basic_string[abi:ne200100]<0>(v859, "convert");
            std::string::basic_string[abi:ne200100]<0>(&v857, "in");
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v856, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              v856 = __s;
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &__p.__r_.__value_.__l.__data_, &v854);
            RIO_MTLX::Document::upgradeVersion(void)::$_0::operator()(&v856, &v854, &v910);
            if (v855)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v855);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v905.__r_.__value_.__l.__data_, &v852);
            RIO_MTLX::Document::upgradeVersion(void)::$_0::operator()(&v856, &v852, &v906);
            if (v853)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v853);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v902, &v850);
            if (v850)
            {
              RIO_MTLX::Element::setName(v850, &v904);
            }

            if (v851)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v851);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v900.__r_.__value_.__l.__data_, &v848);
            if (v848)
            {
              RIO_MTLX::Element::setName(v848, &v901);
            }

            if (v849)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v849);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v898.__r_.__value_.__l.__data_, &v846);
            if (v846)
            {
              RIO_MTLX::Element::setName(v846, &v899);
            }

            if (v847)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v847);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v896.__r_.__value_.__l.__data_, &v844);
            if (v844)
            {
              RIO_MTLX::Element::setName(v844, &v897);
            }

            if (v845)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v845);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v893, &v842);
            if (v842)
            {
              RIO_MTLX::Element::setName(v842, &v895);
            }

            if (v843)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v843);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v890, &v840);
            if (v840)
            {
              RIO_MTLX::Element::setName(v840, &v892);
            }

            if (v841)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v841);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v887, &v838);
            if (v838)
            {
              RIO_MTLX::Element::setName(v838, &v889);
            }

            if (v839)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v839);
            }

            RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v907.__r_.__value_.__l.__data_);
            RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, v873);
            if (SHIBYTE(v882.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v965, v882.__r_.__value_.__l.__data_, v882.__r_.__value_.__l.__size_);
            }

            else
            {
              v965 = v882;
            }

            if (SHIBYTE(v881) < 0)
            {
              std::string::__init_copy_ctor_external(&v966, v880, *(&v880 + 1));
            }

            else
            {
              v966 = v880;
              *v967 = v881;
            }

            if (SHIBYTE(v884) < 0)
            {
              std::string::__init_copy_ctor_external(&v967[8], v883, *(&v883 + 1));
            }

            else
            {
              *&v967[8] = v883;
              v968 = v884;
            }

            if (SHIBYTE(v885.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v969, v885.__r_.__value_.__l.__data_, v885.__r_.__value_.__l.__size_);
            }

            else
            {
              v969 = v885;
            }

            v835 = 0;
            v836 = 0;
            v837 = 0;
            v832 = 0;
            v833 = 0;
            v834 = 0;
            RIO_MTLX::Element::traverseTree(this, &v961);
            *(&v964 + 1) = 0;
            v956 = *&v961.__r_.__value_.__l.__data_;
            if (v961.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v958 = 0;
            v957 = 0;
            v959 = 0;
            v596 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, v961.__r_.__value_.__r.__words[2], v962, 0xAAAAAAAAAAAAAAABLL * ((v962 - v961.__r_.__value_.__r.__words[2]) >> 3));
            v960 = v964;
            RIO_MTLX::NULL_TREE_ITERATOR(v596);
            __str = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
            if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
            {
              atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
            }

            __str_16 = 0uLL;
            v830 = 0;
            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&__str_16, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
            v831 = xmmword_27EE52758;
            while (RIO_MTLX::TreeIterator::operator!=(&v956, &__str))
            {
              v597 = v956;
              if (*(&v956 + 1))
              {
                atomic_fetch_add_explicit((*(&v956 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              RIO_MTLX::Element::asA<RIO_MTLX::Node>(v597, &v826);
              v599 = v826;
              if (!v826)
              {
                goto LABEL_1721;
              }

              v600 = (v826 + 24);
              v601 = *(v826 + 47);
              if (__srcb)
              {
                v602 = *(v826 + 4);
                if ((v601 & 0x80u) == 0)
                {
                  v603 = *(v826 + 47);
                }

                else
                {
                  v603 = *(v826 + 4);
                }

                v604 = v924;
                if ((v924 & 0x80u) != 0)
                {
                  v604 = v923[1];
                }

                if (v603 == v604)
                {
                  v605 = (v601 & 0x80u) == 0 ? (v826 + 24) : *v600;
                  v606 = (v924 & 0x80u) == 0 ? v923 : v923[0];
                  v598 = memcmp(v605, v606, v603);
                  if (!v598)
                  {
                    RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v599, &v922.__r_.__value_.__l.__data_, &v821);
                    RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v826, &v921.__r_.__value_.__l.__data_, v813);
                    v608 = v821.__r_.__value_.__r.__words[0];
                    if (v821.__r_.__value_.__r.__words[0])
                    {
                      if (v813[0])
                      {
                        v609 = RIO_MTLX::EMPTY_STRING(v607);
                        RIO_MTLX::Element::setName(v608, v609);
                        RIO_MTLX::Element::setName(v813[0], &v922);
                        RIO_MTLX::Element::setName(v821.__r_.__value_.__l.__data_, &v921);
LABEL_1740:
                        if (v813[1])
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v813[1]);
                        }

                        v598 = v821.__r_.__value_.__l.__size_;
                        if (!v821.__r_.__value_.__l.__size_)
                        {
                          goto LABEL_1634;
                        }

LABEL_1633:
                        std::__shared_weak_count::__release_shared[abi:ne200100](v598);
                        goto LABEL_1634;
                      }

                      RIO_MTLX::Element::setName(v821.__r_.__value_.__l.__data_, &v921);
                    }

                    if (v813[0])
                    {
                      RIO_MTLX::Element::setName(v813[0], &v922);
                    }

                    goto LABEL_1740;
                  }
                }
              }

              else
              {
                v602 = *(v826 + 4);
              }

              if ((v601 & 0x80u) == 0)
              {
                v610 = v601;
              }

              else
              {
                v610 = v602;
              }

              v611 = v920;
              if ((v920 & 0x80u) != 0)
              {
                v611 = v919[1];
              }

              if (v610 == v611 && ((v601 & 0x80u) == 0 ? (v612 = v599 + 1) : (v612 = *v600), (v920 & 0x80u) == 0 ? (v613 = v919) : (v613 = v919[0]), v598 = memcmp(v612, v613, v610), !v598))
              {
                v598 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v599[4].__r_.__value_.__r.__words, v917);
                if (v598)
                {
                  v655 = *(v598 + 40);
                  v656 = *(v598 + 48);
                  if (v656)
                  {
                    atomic_fetch_add_explicit(&v656->__shared_owners_, 1uLL, memory_order_relaxed);
                    if (v655)
                    {
                      v657 = v826;
                      v822 = v655;
                      v823 = v656;
                      atomic_fetch_add_explicit(&v656->__shared_owners_, 1uLL, memory_order_relaxed);
                      goto LABEL_1731;
                    }
                  }

                  else
                  {
                    if (!v655)
                    {
                      goto LABEL_1634;
                    }

                    v657 = v826;
                    v822 = *(v598 + 40);
                    v823 = 0;
LABEL_1731:
                    std::string::basic_string[abi:ne200100]<0>(&v821, "input");
                    RIO_MTLX::Element::changeChildCategory(v657, &v822, &v821, &v824);
                    v598 = v825;
                    if (v825)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v825);
                    }

                    if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v821.__r_.__value_.__l.__data_);
                    }

                    if (!v656)
                    {
                      goto LABEL_1634;
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v656);
                  }

LABEL_1632:
                  v598 = v656;
                  goto LABEL_1633;
                }
              }

              else
              {
                v614 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v614 = __p.__r_.__value_.__l.__size_;
                }

                if (v610 == v614)
                {
                  v615 = (v601 & 0x80u) == 0 ? &v599[1] : *v600;
                  v616 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v598 = memcmp(v615, v616, v610);
                  if (!v598)
                  {
                    std::string::operator=(v599 + 1, &v910);
                    v656 = v827;
                    v820[0] = v826;
                    v820[1] = v827;
                    if (v827)
                    {
                      atomic_fetch_add_explicit(&v827->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v965, v820);
LABEL_1631:
                    if (v656)
                    {
                      goto LABEL_1632;
                    }

                    goto LABEL_1634;
                  }
                }

                v617 = HIBYTE(v907.__r_.__value_.__r.__words[2]);
                if ((v907.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v617 = v907.__r_.__value_.__l.__size_;
                }

                if (v610 == v617)
                {
                  v618 = (v601 & 0x80u) == 0 ? &v599[1] : *v600;
                  v619 = (v907.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v907 : v907.__r_.__value_.__r.__words[0];
                  v598 = memcmp(v618, v619, v610);
                  if (!v598)
                  {
                    std::string::operator=(v599 + 1, &v908);
                    RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Input>(v826, v878);
                    v658 = v826;
                    RIO_MTLX::STRING_TYPE_STRING(v659);
                    RIO_MTLX::InterfaceElement::addInput(v658, &__s);
                  }
                }

                v620 = HIBYTE(v905.__r_.__value_.__r.__words[2]);
                if ((v905.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v620 = v905.__r_.__value_.__l.__size_;
                }

                if (v610 == v620)
                {
                  v621 = (v601 & 0x80u) == 0 ? &v599[1] : *v600;
                  v622 = (v905.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v905 : v905.__r_.__value_.__r.__words[0];
                  v598 = memcmp(v621, v622, v610);
                  if (!v598)
                  {
                    std::string::operator=(v599 + 1, &v906);
                    v656 = v827;
                    v819[0] = v826;
                    v819[1] = v827;
                    if (v827)
                    {
                      atomic_fetch_add_explicit(&v827->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v965, v819);
                    goto LABEL_1631;
                  }
                }

                v623 = HIBYTE(v900.__r_.__value_.__r.__words[2]);
                if ((v900.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v623 = v900.__r_.__value_.__l.__size_;
                }

                if (v610 == v623)
                {
                  v624 = (v601 & 0x80u) == 0 ? &v599[1] : *v600;
                  v625 = (v900.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v900 : v900.__r_.__value_.__r.__words[0];
                  v598 = memcmp(v624, v625, v610);
                  if (!v598)
                  {
                    std::string::operator=(v599 + 1, &v901);
                    v656 = v827;
                    v818[0] = v826;
                    v818[1] = v827;
                    if (v827)
                    {
                      atomic_fetch_add_explicit(&v827->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v965, v818);
                    goto LABEL_1631;
                  }
                }

                v626 = v888;
                if ((v888 & 0x80u) != 0)
                {
                  v626 = v887[1];
                }

                if (v610 == v626)
                {
                  v627 = (v601 & 0x80u) == 0 ? &v599[1] : *v600;
                  v628 = (v888 & 0x80u) == 0 ? v887 : v887[0];
                  v598 = memcmp(v627, v628, v610);
                  if (!v598)
                  {
                    std::string::operator=(v599 + 1, &v889);
                    v656 = v827;
                    v817[0] = v826;
                    v817[1] = v827;
                    if (v827)
                    {
                      atomic_fetch_add_explicit(&v827->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v965, v817);
                    goto LABEL_1631;
                  }
                }

                v629 = v903;
                if ((v903 & 0x80u) != 0)
                {
                  v629 = v902[1];
                }

                if (v610 == v629)
                {
                  v630 = (v601 & 0x80u) == 0 ? &v599[1] : *v600;
                  v631 = (v903 & 0x80u) == 0 ? v902 : v902[0];
                  v598 = memcmp(v630, v631, v610);
                  if (!v598)
                  {
                    std::string::operator=(v599 + 1, &v904);
                    v696 = v826;
                    v697 = *(v826 + 29);
                    if (v697)
                    {
                      v697 = std::__shared_weak_count::lock(v697);
                      v698 = v697;
                      if (v697)
                      {
                        v697 = *(v696 + 28);
                      }
                    }

                    else
                    {
                      v698 = 0;
                    }

                    RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v697, &v815);
                    if (v698)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v698);
                    }

                    v699 = v815;
                    v700 = v826;
                    if (*(v826 + 71) >= 0)
                    {
                      v701 = *(v826 + 71);
                    }

                    else
                    {
                      v701 = *(v826 + 7);
                    }

                    std::string::basic_string[abi:ne200100](&v821, v701 + 14);
                    if ((v821.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v702 = &v821;
                    }

                    else
                    {
                      v702 = v821.__r_.__value_.__r.__words[0];
                    }

                    if (v701)
                    {
                      if (*(v700 + 71) >= 0)
                      {
                        v703 = v700 + 48;
                      }

                      else
                      {
                        v703 = *(v700 + 6);
                      }

                      memmove(v702, v703, v701);
                    }

                    strcpy(v702 + v701, "__artistic_ior");
                    std::string::basic_string[abi:ne200100]<0>(v813, "multioutput");
                    RIO_MTLX::GraphElement::addNode(v699, &v875, &v821);
                  }
                }

                if ((v601 & 0x80u) == 0)
                {
                  v632 = v601;
                }

                else
                {
                  v632 = v602;
                }

                v633 = HIBYTE(v898.__r_.__value_.__r.__words[2]);
                if ((v898.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v633 = v898.__r_.__value_.__l.__size_;
                }

                if (v632 != v633 || ((v601 & 0x80u) == 0 ? (v634 = v599 + 1) : (v634 = *v600), (v898.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v635 = &v898) : (v635 = v898.__r_.__value_.__r.__words[0]), v598 = memcmp(v634, v635, v632), v636 = &v899, v598))
                {
                  v637 = HIBYTE(v896.__r_.__value_.__r.__words[2]);
                  if ((v896.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v637 = v896.__r_.__value_.__l.__size_;
                  }

                  if (v632 != v637 || ((v601 & 0x80u) == 0 ? (v638 = v599 + 1) : (v638 = *v600), (v896.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v639 = &v896) : (v639 = v896.__r_.__value_.__r.__words[0]), v598 = memcmp(v638, v639, v632), v636 = &v897, v598))
                  {
                    v640 = v894;
                    if ((v894 & 0x80u) != 0)
                    {
                      v640 = v893[1];
                    }

                    if (v632 != v640 || ((v601 & 0x80u) == 0 ? (v641 = v599 + 1) : (v641 = *v600), (v894 & 0x80u) == 0 ? (v642 = v893) : (v642 = v893[0]), v598 = memcmp(v641, v642, v632), v636 = &v895, v598))
                    {
                      v643 = v891;
                      if ((v891 & 0x80u) != 0)
                      {
                        v643 = v890[1];
                      }

                      if (v632 != v643 || ((v601 & 0x80u) == 0 ? (v644 = v599 + 1) : (v644 = *v600), (v891 & 0x80u) == 0 ? (v645 = v890) : (v645 = v890[0]), v598 = memcmp(v644, v645, v632), v636 = &v892, v598))
                      {
                        v646 = v877;
                        if ((v877 & 0x80u) != 0)
                        {
                          v646 = v876;
                        }

                        if (v632 != v646)
                        {
                          goto LABEL_1634;
                        }

                        v647 = (v601 & 0x80u) == 0 ? &v599[1] : *v600;
                        v648 = (v877 & 0x80u) == 0 ? &v875 : v875;
                        v598 = memcmp(v647, v648, v632);
                        if (v598)
                        {
                          goto LABEL_1634;
                        }

                        RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v599, v867, &v821);
                        v650 = v821.__r_.__value_.__r.__words[0];
                        if (v821.__r_.__value_.__r.__words[0])
                        {
                          v651 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v649);
                          RIO_MTLX::Element::setAttribute(v650, v651, &v864);
                        }

                        RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v826, v865, v813);
                        v653 = v813[0];
                        if (v813[0])
                        {
                          v654 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v652);
                          RIO_MTLX::Element::setAttribute(v653, v654, &v864);
                        }

                        goto LABEL_1740;
                      }
                    }
                  }
                }

                v598 = std::string::operator=(v599 + 1, v636);
              }

LABEL_1634:
              v660 = v826;
              v661 = RIO_MTLX::EMPTY_STRING(v598);
              RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(v660, v661, &v821);
              v663 = v821.__r_.__value_.__l.__size_;
              for (kk = v821.__r_.__value_.__r.__words[0]; kk != v663; kk += 16)
              {
                v664 = *kk;
                v665 = *(kk + 8);
                v813[0] = *kk;
                v813[1] = v665;
                if (v665)
                {
                  atomic_fetch_add_explicit(v665 + 1, 1uLL, memory_order_relaxed);
                }

                v666 = RIO_MTLX::PortElement::getOutputString(v664);
                v667 = *(v666 + 23);
                if (v667 >= 0)
                {
                  v668 = *(v666 + 23);
                }

                else
                {
                  v668 = v666[1];
                }

                v669 = v868;
                if ((v868 & 0x80u) != 0)
                {
                  v669 = v867[1];
                }

                if (v668 != v669)
                {
                  goto LABEL_1661;
                }

                if (v667 < 0)
                {
                  v666 = *v666;
                }

                v670 = (v868 & 0x80u) == 0 ? v867 : v867[0];
                if (memcmp(v666, v670, v668))
                {
                  goto LABEL_1661;
                }

                v671 = (*(*v813[0] + 56))(v813[0]);
                v672 = *(v671 + 23);
                if (v672 >= 0)
                {
                  v673 = *(v671 + 23);
                }

                else
                {
                  v673 = v671[1];
                }

                v674 = v863;
                if ((v863 & 0x80u) != 0)
                {
                  v674 = v862;
                }

                if (v673 != v674)
                {
                  goto LABEL_1661;
                }

                if (v672 < 0)
                {
                  v671 = *v671;
                }

                v675 = (v863 & 0x80u) == 0 ? &v861 : v861;
                if (!memcmp(v671, v675, v673))
                {
                  (*(*v813[0] + 64))(&v815);
                  if (v815)
                  {
                    v691 = *(v815 + 47);
                    if (v691 >= 0)
                    {
                      v692 = *(v815 + 47);
                    }

                    else
                    {
                      v692 = v815[4];
                    }

                    v693 = v877;
                    if ((v877 & 0x80u) != 0)
                    {
                      v693 = v876;
                    }

                    if (v692 == v693)
                    {
                      v694 = v691 >= 0 ? (v815 + 3) : v815[3];
                      v695 = (v877 & 0x80u) == 0 ? &v875 : v875;
                      if (!memcmp(v694, v695, v692))
                      {
                        std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&v835, v813);
                      }
                    }
                  }
                }

                else
                {
LABEL_1661:
                  v676 = RIO_MTLX::PortElement::getOutputString(v813[0]);
                  v677 = *(v676 + 23);
                  if (v677 >= 0)
                  {
                    v678 = *(v676 + 23);
                  }

                  else
                  {
                    v678 = v676[1];
                  }

                  v679 = v866;
                  if ((v866 & 0x80u) != 0)
                  {
                    v679 = v865[1];
                  }

                  if (v678 != v679)
                  {
                    goto LABEL_1717;
                  }

                  if (v677 < 0)
                  {
                    v676 = *v676;
                  }

                  v680 = (v866 & 0x80u) == 0 ? v865 : v865[0];
                  if (memcmp(v676, v680, v678))
                  {
                    goto LABEL_1717;
                  }

                  v681 = (*(*v813[0] + 56))(v813[0]);
                  v682 = *(v681 + 23);
                  if (v682 >= 0)
                  {
                    v683 = *(v681 + 23);
                  }

                  else
                  {
                    v683 = v681[1];
                  }

                  v684 = v863;
                  if ((v863 & 0x80u) != 0)
                  {
                    v684 = v862;
                  }

                  if (v683 != v684)
                  {
                    goto LABEL_1717;
                  }

                  if (v682 < 0)
                  {
                    v681 = *v681;
                  }

                  v685 = (v863 & 0x80u) == 0 ? &v861 : v861;
                  if (memcmp(v681, v685, v683))
                  {
                    goto LABEL_1717;
                  }

                  (*(*v813[0] + 64))(&v815);
                  if (v815)
                  {
                    v686 = *(v815 + 47);
                    if (v686 >= 0)
                    {
                      v687 = *(v815 + 47);
                    }

                    else
                    {
                      v687 = v815[4];
                    }

                    v688 = v877;
                    if ((v877 & 0x80u) != 0)
                    {
                      v688 = v876;
                    }

                    if (v687 == v688)
                    {
                      v689 = v686 >= 0 ? (v815 + 3) : v815[3];
                      v690 = (v877 & 0x80u) == 0 ? &v875 : v875;
                      if (!memcmp(v689, v690, v687))
                      {
                        std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&v832, v813);
                      }
                    }
                  }
                }

                if (v816)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v816);
                }

LABEL_1717:
                if (v813[1])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v813[1]);
                }
              }

              v813[0] = &v821;
              std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v813);
LABEL_1721:
              if (v827)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v827);
              }

              if (*(&v597 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v597 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v956);
            }

            RIO_MTLX::TreeIterator::~TreeIterator(&__str);
            RIO_MTLX::TreeIterator::~TreeIterator(&v956);
            RIO_MTLX::TreeIterator::~TreeIterator(&v961);
            if (v835 != v836)
            {
              v706 = *v835;
              v705 = v835[1];
              if (v705)
              {
                atomic_fetch_add_explicit((v705 + 8), 1uLL, memory_order_relaxed);
              }

              (*(*v706 + 64))(&v956, v706);
              v707 = v706[29];
              if (v707)
              {
                if (std::__shared_weak_count::lock(v707))
                {
                  v708 = v706[28];
                }

                else
                {
                  v708 = 0;
                }
              }

              else
              {
                v708 = 0;
              }

              v709 = *(v708 + 232);
              if (v709)
              {
                v709 = std::__shared_weak_count::lock(v709);
                v710 = v709;
                if (v709)
                {
                  v709 = *(v708 + 224);
                }
              }

              else
              {
                v710 = 0;
              }

              RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v709, &__str);
              if (v710)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v710);
              }

              v711 = __str;
              if (*(v708 + 71) >= 0)
              {
                v712 = *(v708 + 71);
              }

              else
              {
                v712 = *(v708 + 56);
              }

              std::string::basic_string[abi:ne200100](&v961, v712 + 13);
              if ((v961.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v713 = &v961;
              }

              else
              {
                v713 = v961.__r_.__value_.__r.__words[0];
              }

              if (v712)
              {
                if (*(v708 + 71) >= 0)
                {
                  v714 = (v708 + 48);
                }

                else
                {
                  v714 = *(v708 + 48);
                }

                memmove(v713, v714, v712);
              }

              strcpy(v713 + v712, "__convert_ior");
              RIO_MTLX::GraphElement::addNode(v711, v859, &v961);
            }

            if (v832 != v833)
            {
              v716 = *v832;
              v715 = v832[1];
              if (v715)
              {
                atomic_fetch_add_explicit((v715 + 8), 1uLL, memory_order_relaxed);
              }

              (*(*v716 + 64))(&v956, v716);
              v717 = v716[29];
              if (v717)
              {
                if (std::__shared_weak_count::lock(v717))
                {
                  v718 = v716[28];
                }

                else
                {
                  v718 = 0;
                }
              }

              else
              {
                v718 = 0;
              }

              v719 = *(v718 + 232);
              if (v719)
              {
                v719 = std::__shared_weak_count::lock(v719);
                v720 = v719;
                if (v719)
                {
                  v719 = *(v718 + 224);
                }
              }

              else
              {
                v720 = 0;
              }

              RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v719, &__str);
              if (v720)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v720);
              }

              v721 = __str;
              if (*(v718 + 71) >= 0)
              {
                v722 = *(v718 + 71);
              }

              else
              {
                v722 = *(v718 + 56);
              }

              std::string::basic_string[abi:ne200100](&v961, v722 + 20);
              if ((v961.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v723 = &v961;
              }

              else
              {
                v723 = v961.__r_.__value_.__r.__words[0];
              }

              if (v722)
              {
                if (*(v718 + 71) >= 0)
                {
                  v724 = (v718 + 48);
                }

                else
                {
                  v724 = *(v718 + 48);
                }

                memmove(v723, v724, v722);
              }

              strcpy(v723 + v722, "__convert_extinction");
              RIO_MTLX::GraphElement::addNode(v721, v859, &v961);
            }

            v725 = RIO_MTLX::EMPTY_STRING(v704);
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeGraph>(this, v725, &v961);
            v802 = v961.__r_.__value_.__l.__size_;
            v727 = v961.__r_.__value_.__r.__words[0];
            if (v961.__r_.__value_.__r.__words[0] != v961.__r_.__value_.__l.__size_)
            {
              do
              {
                v806 = v727;
                v729 = *v727;
                v728 = *(v727 + 8);
                if (v728)
                {
                  atomic_fetch_add_explicit(&v728->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                __srcc = v728;
                v730 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(v726);
                RIO_MTLX::Element::removeAttribute(v729, v730);
                *(&v956 + 1) = 0;
                v957 = 0;
                *&v956 = &v956 + 8;
                v732 = *(v729 + 17);
                v731 = *(v729 + 18);
                if (v732 != v731)
                {
                  do
                  {
                    v733 = *v732;
                    v734 = v732[1];
                    if (v734)
                    {
                      atomic_fetch_add_explicit(&v734->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Element::asA<RIO_MTLX::Node>(v733, &v821);
                    v736 = v821.__r_.__value_.__r.__words[0];
                    if (v821.__r_.__value_.__r.__words[0])
                    {
                      v737 = RIO_MTLX::EMPTY_STRING(v735);
                      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::ValueElement>(v736, v737, &__str);
                      v738 = *(&__str + 1);
                      for (mm = __str; mm != v738; mm += 16)
                      {
                        v740 = *mm;
                        v741 = *(mm + 8);
                        if (v741)
                        {
                          atomic_fetch_add_explicit(&v741->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        InterfaceName = RIO_MTLX::ValueElement::getInterfaceName(v740);
                        v743 = *(InterfaceName + 23);
                        if ((v743 & 0x80u) != 0)
                        {
                          v743 = InterfaceName[1];
                        }

                        if (v743)
                        {
                          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v956, InterfaceName);
                        }

                        if (v741)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v741);
                        }
                      }

                      v813[0] = &__str;
                      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v813);
                    }

                    if (v821.__r_.__value_.__l.__size_)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v821.__r_.__value_.__l.__size_);
                    }

                    if (v734)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v734);
                    }

                    v732 += 2;
                  }

                  while (v732 != v731);
                  v744 = v956;
                  if (v956 != (&v956 + 8))
                  {
                    do
                    {
                      if (*(v744 + 55) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__str, *(v744 + 4), *(v744 + 5));
                      }

                      else
                      {
                        __str = v744[2];
                        *&__str_16 = *(v744 + 6);
                      }

                      RIO_MTLX::Element::getChildOfType<RIO_MTLX::Node>(v729, &__str, &v826);
                      if (v826)
                      {
                        if (SBYTE7(__str_16) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v812, __str, *(&__str + 1));
                        }

                        else
                        {
                          *&v812.__r_.__value_.__l.__data_ = __str;
                          v812.__r_.__value_.__r.__words[2] = __str_16;
                        }

                        RIO_MTLX::Element::createValidChildName(v729, &v812, &v821);
                        if (SHIBYTE(v812.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v812.__r_.__value_.__l.__data_);
                        }

                        RIO_MTLX::Node::getDownstreamPorts(v826, v813);
                        v745 = v813[0];
                        v746 = v813[1];
                        while (v745 != v746)
                        {
                          v748 = *v745;
                          v747 = *(v745 + 1);
                          if (v747)
                          {
                            atomic_fetch_add_explicit(&v747->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          NodeName = RIO_MTLX::PortElement::getNodeName(v748);
                          v750 = *(NodeName + 23);
                          if (v750 >= 0)
                          {
                            v751 = *(NodeName + 23);
                          }

                          else
                          {
                            v751 = NodeName[1];
                          }

                          v752 = BYTE7(__str_16);
                          if (SBYTE7(__str_16) < 0)
                          {
                            v752 = *(&__str + 1);
                          }

                          if (v751 == v752)
                          {
                            if (v750 < 0)
                            {
                              NodeName = *NodeName;
                            }

                            if ((SBYTE7(__str_16) & 0x80u) == 0)
                            {
                              p_str = &__str;
                            }

                            else
                            {
                              p_str = __str;
                            }

                            v754 = memcmp(NodeName, p_str, v751);
                            if (!v754)
                            {
                              v755 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(v754);
                              RIO_MTLX::Element::setAttribute(v748, v755, &v821);
                            }
                          }

                          if (v747)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v747);
                          }

                          v745 = (v745 + 16);
                        }

                        RIO_MTLX::Element::setName(v826, &v821);
                        v815 = v813;
                        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v815);
                        if (SHIBYTE(v821.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v821.__r_.__value_.__l.__data_);
                        }
                      }

                      if (v827)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v827);
                      }

                      if (SBYTE7(__str_16) < 0)
                      {
                        operator delete(__str);
                      }

                      v756 = *(v744 + 1);
                      if (v756)
                      {
                        do
                        {
                          v757 = v756;
                          v756 = *v756;
                        }

                        while (v756);
                      }

                      else
                      {
                        do
                        {
                          v757 = *(v744 + 2);
                          v2 = *v757 == v744;
                          v744 = v757;
                        }

                        while (!v2);
                      }

                      v744 = v757;
                    }

                    while (v757 != (&v956 + 8));
                  }
                }

                std::__tree<std::string>::destroy(&v956, *(&v956 + 1));
                v726 = __srcc;
                if (__srcc)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__srcc);
                }

                v727 = &v806->__r_.__value_.__r.__words[2];
              }

              while (&v806->__r_.__value_.__r.__words[2] != v802);
            }

            *&v956 = &v961;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v956);
            RIO_MTLX::Element::traverseTree(this, &v961);
            *(&v964 + 1) = 0;
            v956 = *&v961.__r_.__value_.__l.__data_;
            if (v961.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v961.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v958 = 0;
            v957 = 0;
            v959 = 0;
            v758 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v957, v961.__r_.__value_.__r.__words[2], v962, 0xAAAAAAAAAAAAAAABLL * ((v962 - v961.__r_.__value_.__r.__words[2]) >> 3));
            v960 = v964;
            RIO_MTLX::NULL_TREE_ITERATOR(v758);
            __str = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
            if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
            {
              atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
            }

            __str_16 = 0uLL;
            v830 = 0;
            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&__str_16, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
            v831 = xmmword_27EE52758;
            while (2)
            {
              v759 = RIO_MTLX::TreeIterator::operator!=(&v956, &__str);
              if (!v759)
              {
                RIO_MTLX::TreeIterator::~TreeIterator(&__str);
                RIO_MTLX::TreeIterator::~TreeIterator(&v956);
                RIO_MTLX::TreeIterator::~TreeIterator(&v961);
                v961.__r_.__value_.__r.__words[0] = &v832;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
                v961.__r_.__value_.__r.__words[0] = &v835;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
                if (SHIBYTE(v969.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v969.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v968) < 0)
                {
                  operator delete(*&v967[8]);
                }

                if ((v967[7] & 0x80000000) != 0)
                {
                  operator delete(v966);
                }

                if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v965.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v856.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v856.__r_.__value_.__l.__data_);
                }

                if (v858 < 0)
                {
                  operator delete(v857);
                }

                if (v860 < 0)
                {
                  operator delete(v859[0]);
                }

                if (v863 < 0)
                {
                  operator delete(v861);
                }

                if (SHIBYTE(v864.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v864.__r_.__value_.__l.__data_);
                }

                if (v866 < 0)
                {
                  operator delete(v865[0]);
                }

                if (v868 < 0)
                {
                  operator delete(v867[0]);
                }

                if (v870 < 0)
                {
                  operator delete(v869);
                }

                if (v872 < 0)
                {
                  operator delete(v871);
                }

                if (v874 < 0)
                {
                  operator delete(v873[0]);
                }

                if (v877 < 0)
                {
                  operator delete(v875);
                }

                if (v879 < 0)
                {
                  operator delete(v878[0]);
                }

                if (SHIBYTE(v881) < 0)
                {
                  operator delete(v880);
                }

                if (SHIBYTE(v882.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v882.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v884) < 0)
                {
                  operator delete(v883);
                }

                if (SHIBYTE(v885.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v885.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__s.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v889.__r_.__value_.__l.__data_);
                }

                if (v888 < 0)
                {
                  operator delete(v887[0]);
                }

                if (SHIBYTE(v892.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v892.__r_.__value_.__l.__data_);
                }

                if (v891 < 0)
                {
                  operator delete(v890[0]);
                }

                if (SHIBYTE(v895.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v895.__r_.__value_.__l.__data_);
                }

                if (v894 < 0)
                {
                  operator delete(v893[0]);
                }

                if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v897.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v896.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v896.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v899.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v899.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v898.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v898.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v901.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v901.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v900.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v900.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v904.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v904.__r_.__value_.__l.__data_);
                }

                if (v903 < 0)
                {
                  operator delete(v902[0]);
                }

                if (SHIBYTE(v906.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v906.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v905.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v905.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v908.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v908.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v907.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v907.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v910.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v910.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v916 < 0)
                {
                  operator delete(v915[0]);
                }

                if (v918 < 0)
                {
                  operator delete(v917[0]);
                }

                if (v920 < 0)
                {
                  operator delete(v919[0]);
                }

                if (SHIBYTE(v921.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v921.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v922.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v922.__r_.__value_.__l.__data_);
                }

                if (v924 < 0)
                {
                  operator delete(v923[0]);
                }

                std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v930);
                RIO_MTLX::InterfaceElement::setVersionIntegers(this, 1, 38);
                goto LABEL_2040;
              }

              v760 = v956;
              if (*(&v956 + 1))
              {
                atomic_fetch_add_explicit((*(&v956 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v761 = RIO_MTLX::EMPTY_STRING(v759);
              RIO_MTLX::Element::asA<RIO_MTLX::InterfaceElement>(v760, &v821);
              v762 = v821.__r_.__value_.__r.__words[0];
              if (v821.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v821.__r_.__value_.__l.__size_);
              }

              if (v762)
              {
                v763 = *(v761 + 23);
                v764 = v763 >= 0 ? *(v761 + 23) : v761[1];
                if (!v764)
                {
                  goto LABEL_1905;
                }

                v765 = *(v760 + 47);
                v766 = v765;
                if ((v765 & 0x80u) != 0)
                {
                  v765 = *(v760 + 32);
                }

                if (v765 == v764)
                {
                  v767 = v766 >= 0 ? (v760 + 24) : *(v760 + 24);
                  v768 = v763 >= 0 ? v761 : *v761;
                  if (!memcmp(v767, v768, v764))
                  {
LABEL_1905:
                    std::string::basic_string[abi:ne200100]<0>(v813, "parameter");
                    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v821, *(v760 + 136), *(v760 + 144), v813);
                    if (v814 < 0)
                    {
                      operator delete(v813[0]);
                    }

                    v770 = v821.__r_.__value_.__l.__size_;
                    v769 = v821.__r_.__value_.__r.__words[0];
                    if (v821.__r_.__value_.__r.__words[0] != v821.__r_.__value_.__l.__size_)
                    {
                      while (1)
                      {
                        v771 = *v769;
                        v772 = *(v769 + 8);
                        if (v772)
                        {
                          atomic_fetch_add_explicit(&v772->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                          atomic_fetch_add_explicit(&v772->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                        }

                        v811[0] = v771;
                        v811[1] = v772;
                        std::string::basic_string[abi:ne200100]<0>(v813, "input");
                        RIO_MTLX::Element::changeChildCategory(v760, v811, v813, &v815);
                        RIO_MTLX::Element::asA<RIO_MTLX::Input>(v815, &v826);
                        v773 = v816;
                        if (v816)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v816);
                        }

                        if (v814 < 0)
                        {
                          break;
                        }

                        if (v772)
                        {
                          goto LABEL_1914;
                        }

LABEL_1915:
                        v774 = RIO_MTLX::EMPTY_STRING(v773);
                        RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v760, v813);
                        v776 = v813[0];
                        v775 = v813[1];
                        if (v813[1])
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v813[1]);
                        }

                        if (v776)
                        {
                          v777 = *(v774 + 23);
                          v778 = v777 >= 0 ? *(v774 + 23) : v774[1];
                          if (!v778)
                          {
                            goto LABEL_1932;
                          }

                          v779 = *(v760 + 47);
                          v780 = v779;
                          if ((v779 & 0x80u) != 0)
                          {
                            v779 = *(v760 + 32);
                          }

                          if (v779 == v778)
                          {
                            v781 = v780 >= 0 ? (v760 + 24) : *(v760 + 24);
                            v782 = v777 >= 0 ? v774 : *v774;
                            v775 = memcmp(v781, v782, v778);
                            if (!v775)
                            {
LABEL_1932:
                              v783 = v826;
                              LOBYTE(v813[0]) = 1;
                              v784 = RIO_MTLX::ValueElement::UNIFORM_ATTRIBUTE(v775);
                              RIO_MTLX::Element::setTypedAttribute<BOOL>(v783, v784, v813);
                            }
                          }
                        }

                        if (v827)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v827);
                        }

                        if (v772)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v772);
                        }

                        v769 += 16;
                        if (v769 == v770)
                        {
                          goto LABEL_1941;
                        }
                      }

                      operator delete(v813[0]);
                      if (!v772)
                      {
                        goto LABEL_1915;
                      }

LABEL_1914:
                      std::__shared_weak_count::__release_shared[abi:ne200100](v772);
                      goto LABEL_1915;
                    }

LABEL_1941:
                    v813[0] = &v821;
                    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v813);
                  }
                }
              }

              if (*(&v760 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v760 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v956);
              continue;
            }
          }
        }

        else
        {
          if (v514 > 1)
          {
            if (v518 >= v512)
            {
              v518 %= v512;
            }
          }

          else
          {
            v518 &= v512 - 1;
          }

          if (v518 != v515)
          {
            goto LABEL_1220;
          }
        }

        break;
      }

      v517 = *v517;
      if (!v517)
      {
        goto LABEL_1220;
      }

      goto LABEL_1211;
    }

    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    v165 = RIO_MTLX::EMPTY_STRING(v164);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(this, v165, &v965);
    v795 = v965.__r_.__value_.__l.__size_;
    v167 = v965.__r_.__value_.__r.__words[0];
    if (v965.__r_.__value_.__r.__words[0] == v965.__r_.__value_.__l.__size_)
    {
LABEL_465:
      v961.__r_.__value_.__r.__words[0] = &v965;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v961);
      memset(&v907, 0, sizeof(v907));
      v193 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[1])
      {
        do
        {
          v194 = HIBYTE(v907.__r_.__value_.__r.__words[2]);
          if ((v907.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v194 = v907.__r_.__value_.__l.__size_;
          }

          if (v194)
          {
            std::operator+<char>();
            if ((v965.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v195 = &v965;
            }

            else
            {
              v195 = v965.__r_.__value_.__r.__words[0];
            }

            if ((v965.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v196 = HIBYTE(v965.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v196 = v965.__r_.__value_.__l.__size_;
            }

            v192 = std::string::append(&v907, v195, v196);
            if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v965.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v192 = std::string::operator=(&v907, (v193 + 32));
          }

          v197 = *(v193 + 8);
          if (v197)
          {
            do
            {
              v198 = v197;
              v197 = v197->__r_.__value_.__r.__words[0];
            }

            while (v197);
          }

          else
          {
            do
            {
              v198 = *(v193 + 16);
              v2 = v198->__r_.__value_.__r.__words[0] == v193;
              v193 = v198;
            }

            while (!v2);
          }

          v193 = v198;
        }

        while (v198 != &__p.__r_.__value_.__r.__words[1]);
      }

      v199 = RIO_MTLX::EMPTY_STRING(v192);
      v200 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v199);
      if (*(v199 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v965, *v199, v199[1]);
      }

      else
      {
        v201 = *v199;
        v965.__r_.__value_.__r.__words[2] = v199[2];
        *&v965.__r_.__value_.__l.__data_ = v201;
      }

      v202 = HIBYTE(v965.__r_.__value_.__r.__words[2]);
      if ((v965.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v202 = v965.__r_.__value_.__l.__size_;
      }

      if (!v202)
      {
        v203 = RIO_MTLX::GeomInfo::CATEGORY(v200);
        v204 = v203;
        if (v203[23] >= 0)
        {
          v205 = v203[23];
        }

        else
        {
          v205 = *(v203 + 1);
        }

        v206 = &v956;
        std::string::basic_string[abi:ne200100](&v956, v205 + 1);
        if (v957 < 0)
        {
          v206 = v956;
        }

        if (v205)
        {
          if (v204[23] >= 0)
          {
            v207 = v204;
          }

          else
          {
            v207 = *v204;
          }

          memmove(v206, v207, v205);
        }

        *(v206 + v205) = 49;
        RIO_MTLX::Element::createValidChildName(this, &v956, &v961);
        if (SHIBYTE(v965.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v965.__r_.__value_.__l.__data_);
        }

        v965 = v961;
        *(&v961.__r_.__value_.__s + 23) = 0;
        v961.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v957) < 0)
        {
          operator delete(v956);
        }
      }

      std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v905, this + 1);
      operator new();
    }

    while (1)
    {
      v168 = *v167;
      v169 = v167[1];
      if (v169)
      {
        atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v170 = RIO_MTLX::EMPTY_STRING(v166);
      v172 = *(v168 + 136);
      v171 = *(v168 + 144);
      memset(&v961, 0, sizeof(v961));
      if (v172 != v171)
      {
        v173 = v170;
        v800 = v167;
        do
        {
          v175 = *v172;
          v174 = v172[1];
          if (v174)
          {
            atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::GeomProp>(v175, &v956);
          if (v956)
          {
            v176 = *(v173 + 23);
            v177 = v176 >= 0 ? *(v173 + 23) : v173[1];
            if (!v177)
            {
              goto LABEL_443;
            }

            v178 = *(v175 + 47);
            v179 = v178;
            if ((v178 & 0x80u) != 0)
            {
              v178 = *(v175 + 32);
            }

            if (v178 == v177)
            {
              v182 = *(v175 + 24);
              v181 = v175 + 24;
              v180 = v182;
              v183 = (v179 >= 0 ? v181 : v180);
              v184 = v176 >= 0 ? v173 : *v173;
              if (!memcmp(v183, v184, v177))
              {
LABEL_443:
                operator new();
              }
            }
          }

          if (*(&v956 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v956 + 1));
          }

          if (v174)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v174);
          }

          v172 += 2;
        }

        while (v172 != v171);
        v186 = v961.__r_.__value_.__l.__size_;
        v185 = v961.__r_.__value_.__r.__words[0];
        v167 = v800;
        if (v961.__r_.__value_.__r.__words[0] != v961.__r_.__value_.__l.__size_)
        {
          break;
        }
      }

LABEL_462:
      *&v956 = &v961;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v956);
      if (v169)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v169);
      }

      v167 += 2;
      if (v167 == v795)
      {
        goto LABEL_465;
      }
    }

    while (1)
    {
      v187 = *v185;
      v188 = v185[1];
      if (v188)
      {
        atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v189 = (v187 + 48);
      v190 = *(v187 + 71);
      if (v190 < 0)
      {
        if (*(v187 + 56) == 4)
        {
          v189 = *v189;
LABEL_457:
          if (*v189 == 1835623541)
          {
            v191 = RIO_MTLX::ValueElement::getValueString(v187);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&__p, v191);
          }
        }
      }

      else if (v190 == 4)
      {
        goto LABEL_457;
      }

      if (v188)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v188);
      }

      v185 += 2;
      if (v185 == v186)
      {
        goto LABEL_462;
      }
    }
  }

  if (HIDWORD(v1) == 35)
  {
    goto LABEL_553;
  }

  if (HIDWORD(v1) == 36)
  {
    goto LABEL_764;
  }

LABEL_488:
  if (SHIDWORD(v1) >= 37)
  {
    goto LABEL_1203;
  }

LABEL_2040:
  v785 = *MEMORY[0x277D85DE8];
}