void sub_1B5393228(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B539331CLL);
}

void sub_1B5393240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  quasar::Token::~Token(&a31);
  if (a17)
  {
    operator delete(a17);
  }

  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(v31);
  _Unwind_Resume(a1);
}

void sub_1B5393280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    operator delete(a17);
  }

  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(v17);
  _Unwind_Resume(a1);
}

void sub_1B5393288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(v32);
  _Unwind_Resume(a1);
}

void sub_1B53932A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, char a28, uint64_t a29, uint64_t a30, void *a31)
{
  a27 = &a28;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a27);
  quasar::Token::~Token(&a31);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a21);
  JUMPOUT(0x1B5393304);
}

void sub_1B53932D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  a31 = &a21;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (a17)
  {
    operator delete(a17);
  }

  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(v31);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100]<std::vector<std::vector<unsigned int>>&,std::vector<std::vector<std::vector<quasar::Token>>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<std::vector<quasar::Token>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1B53933E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<quasar::Token>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5393464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<quasar::Token>>>,std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<quasar::Token>>>,std::vector<std::vector<quasar::Token>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<quasar::Token>>>,std::vector<std::vector<quasar::Token>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<quasar::Token>>>,std::vector<std::vector<quasar::Token>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<quasar::Token>>>,std::vector<std::vector<quasar::Token>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void *std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::pair[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<std::vector<quasar::Token>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<quasar::Token>>*,std::vector<std::vector<quasar::Token>>*>((a1 + 3), a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 3));
  return a1;
}

void sub_1B5393648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<quasar::Token>>>::__emplace_back_slow_path<std::vector<std::vector<quasar::Token>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<quasar::Token>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<quasar::Token>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<std::vector<quasar::Token>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<quasar::Token>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<quasar::Token>>>::__emplace_back_slow_path<std::vector<std::vector<quasar::Token>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::vector<quasar::Token>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5393828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<quasar::Token>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token const*,quasar::Token const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53938A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B539392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5393BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t **std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          std::__tree<unsigned int>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<unsigned int>::__emplace_multi<unsigned int const&>();
  }

  return result;
}

void sub_1B5393E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<unsigned int>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void std::vector<std::vector<std::vector<quasar::Token>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::vector<quasar::Token>>>::~__split_buffer(v18);
  }
}

uint64_t *std::vector<std::set<std::string>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 24 * a2;
      v11 = 24 * a2;
      v12 = (v5 + 8);
      do
      {
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 1) = v12;
        v12 += 3;
        v11 -= 24;
      }

      while (v11);
    }

    else
    {
      v10 = result[1];
    }

    result[1] = v10;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(result, v9);
    }

    v13 = 24 * v6;
    v20 = 0;
    v21 = 24 * v6;
    *(&v22 + 1) = 0;
    v14 = 24 * a2;
    v15 = (24 * v6 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    *&v22 = v13 + 24 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<std::set<std::string>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B539423C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::set<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::string>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

void **std::__split_buffer<std::set<std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::set<std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::set<std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::string>::destroy(i - 24, *(i - 16));
  }
}

uint64_t *std::vector<std::map<std::string,unsigned int>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 24 * a2;
      v11 = 24 * a2;
      v12 = (v5 + 8);
      do
      {
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 1) = v12;
        v12 += 3;
        v11 -= 24;
      }

      while (v11);
    }

    else
    {
      v10 = result[1];
    }

    result[1] = v10;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(result, v9);
    }

    v13 = 24 * v6;
    v20 = 0;
    v21 = 24 * v6;
    *(&v22 + 1) = 0;
    v14 = 24 * a2;
    v15 = (24 * v6 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    *&v22 = v13 + 24 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,unsigned int>>,std::map<std::string,unsigned int>*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<std::set<std::string>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B5394518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::set<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,unsigned int>>,std::map<std::string,unsigned int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::string>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,unsigned int>>,std::map<std::string,unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,unsigned int>>,std::map<std::string,unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *quasar::joinToStream<std::vector<quasar::Token>>(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      result = quasar::operator<<(v6, v3);
      v7 = 0;
      v3 += 224;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5394818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineLatticeRealignmentDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  kaldi::WordBoundaryInfoNewOpts::Register((this + 59), a2);
  quasar::QsrTextSymbolTable::Register(this[57], a2, 16, 1, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(v7, "am-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Acoustic model (transition model) filename");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 71), __p, 1, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic likelihoods");
  quasar::SystemConfig::Register<float>(a2, v7, (this + 68), __p, 0, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoding beam");
  quasar::SystemConfig::Register<float>(a2, v7, this + 548, __p, 1, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "first-pass-lattice-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "First pass lattice beam");
  quasar::SystemConfig::Register<float>(a2, v7, (this + 70), __p, 1, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "lattice-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoding lattice beam");
  quasar::SystemConfig::Register<float>(a2, v7, this + 556, __p, 1, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "retry-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Fall-back decoding beam");
  quasar::SystemConfig::Register<float>(a2, v7, (this + 69), __p, 0, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "fst-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "HCP FST filename");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 74), __p, 1, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "tree-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Tree file");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 77), __p, 1, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "phone-map-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Phone mappings file");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 80), __p, 1, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "word-boundary-int-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word boundary file with format <integer-phone-id> [begin|end|singleton|internal|nonword]");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 83), __p, 1, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "unpronounced-word-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing newline-separated list of words with no pronunciation.");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 86), __p, 0, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "max-expand");
  std::string::basic_string[abi:ne200100]<0>(__p, "If >0, the max amount by which lattices will be expanded.");
  quasar::SystemConfig::Register<float>(a2, v7, (this + 89), __p, 0, 49, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *(this + 136) = 1065353216;
  *(this + 178) = 0;
  *(this + 138) = 0;
  MEMORY[0x1B8C84820](this + 77, "");
  MEMORY[0x1B8C84820](this + 83, "");
  return MEMORY[0x1B8C84820](this + 86, "");
}

void sub_1B5394DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeRealignmentDecoder::convertToOtherTransitionModel(uint64_t a1, uint64_t a2, int (***a3)(void), uint64_t a4, uint64_t a5)
{
  if ((**a3)(a3) > 1 && quasar::gLogLevel >= 5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v7 = 0u;
    *v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Conversion of alignments in lattice is only supported for models with context width = 1, other models will result in alignments which do not properly consider cross-word contexts", 178);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v7);
  }

  (*(*a5 + 160))(a5);
  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_23CompactLatticeWeightTplINS1_16LatticeWeightTplIfEEiEEiEENS1_11VectorStateIS8_NS_9allocatorIS8_EEEEEENSA_ISD_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void quasar::OnlineLatticeRealignmentDecoder::realignLattice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::DecodableMatrixScaledMapped::DecodableMatrixScaledMapped(v16, *(a1 + 720), a2, 1, *(a1 + 544));
  v7 = 0xC87FFFFFFFLL;
  v8 = 0;
  v10 = 25;
  v11 = 1;
  v12 = xmmword_1B5AE1360;
  v13 = 0x2FAF0803A800000;
  v14 = 257;
  v15 = 0;
  v6 = *(a1 + 548);
  v9 = *(a1 + 556);
  kaldi::LatticeFasterDecoder::LatticeFasterDecoder(v5, a3, &v6);
  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B5395628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  *v46 = 0;
  (*(*v47 + 8))(v47);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a44);
  kaldi::LatticeFasterDecoder::~LatticeFasterDecoder(&a46);
  kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped((v48 - 96));
  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeRealignmentDecoder::finishInit(quasar::OnlineLatticeRealignmentDecoder *this)
{
  quasar::result_handler::Range::Range(v18, 16, 1);
  if (quasar::SystemConfig::Version::operator>(this + 8, v18))
  {
    quasar::QsrTextSymbolTable::init(*(this + 57), (this + 32), 0, *(this + 449), 1);
    v2 = quasar::QsrTextSymbolTable::Find(*(this + 57), "<?>");
    if (v2 != -1)
    {
      v3 = v2;
      v4 = *(this + 118);
      if (v4 && v2 != v4 && quasar::gLogLevel >= 5)
      {
        memset(v18, 0, sizeof(v18));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Silence label is set to ", 24);
        v6 = MEMORY[0x1B8C84C00](v5, *(this + 118));
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " but does not match the auto-determined silence label ", 54);
        v8 = MEMORY[0x1B8C84C60](v7, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ". Will use latter.", 18);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v18);
      }

      *(this + 118) = v3;
    }
  }

  if (*(this + 663) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 80), *(this + 81));
  }

  else
  {
    __p = *(this + 640);
  }

  kaldi::ReadPhoneMap(&__p, this + 21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::ModelLoader::readTransitionModel(*(this + 47), this + 71, 1, v18);
  v9 = v18[0];
  v18[0] = 0uLL;
  v10 = *(this + 91);
  *(this + 45) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (*(&v18[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18[0] + 1));
    }
  }

  quasar::ModelLoader::readWordBoundaryInfo(*(this + 47), this + 118, this + 664, this + 688, v18);
  v11 = v18[0];
  v18[0] = 0uLL;
  v12 = *(this + 62);
  *(this + 488) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (*(&v18[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18[0] + 1));
    }
  }

  (*(**(this + 47) + 16))(v18);
  v13 = v18[0];
  v18[0] = 0uLL;
  v14 = *(this + 93);
  *(this + 46) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    if (*(&v18[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18[0] + 1));
    }
  }

  quasar::ModelLoader::readContextDependency(*(this + 47), this + 77, v18);
  v15 = v18[0];
  v18[0] = 0uLL;
  v16 = *(this + 67);
  *(this + 33) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (*(&v18[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18[0] + 1));
    }
  }
}

void quasar::OnlineLatticeRealignmentDecoder::runImpl(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *(*a3 + 512);
  *(v5 + 504) = 0;
  *(v5 + 512) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v9 = *(*(*a3 + 168) + 8);
  ++*(v9 + 56);
  v8 = &unk_1F2CFC270;
  v7 = quasar::PTree::begin(*(a2 + 32));
  kaldi::ConvertCompactLatticeToPhones(v7, &v8, 0);
  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B5396094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::locale a33)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a33);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a10);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a12);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a14);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a16);
  (*(*v34 + 8))(v34);
  kaldi::CuMatrix<float>::~CuMatrix(&a19);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a25);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a27);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a29);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a31);
  _Unwind_Resume(a1);
}

void sub_1B53962D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::MinimizeEncoded<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, float a2)
{
  v3 = a2;
  fst::ArcMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::QuantizeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, &v3);
  fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::EncodeMapper(&v2, 3, 1);
}

void sub_1B5396474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~EncodeMapper(&a12);
  fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~EncodeMapper(&a9);
  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeRealignmentDecoder::~OnlineLatticeRealignmentDecoder(quasar::OnlineLatticeRealignmentDecoder *this)
{
  quasar::OnlineLatticeRealignmentDecoder::~OnlineLatticeRealignmentDecoder(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0F020;
  v2 = *(this + 93);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 91);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
  }

  if (*(this + 687) < 0)
  {
    operator delete(*(this + 83));
  }

  if (*(this + 663) < 0)
  {
    operator delete(*(this + 80));
  }

  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  v4 = *(this + 67);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 63);
  if (v5)
  {
    *(this + 64) = v5;
    operator delete(v5);
  }

  v6 = *(this + 62);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 58);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  quasar::Decoder::~Decoder(this);
}

void fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::VectorFst();
  }

  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(v3, a1);
}

void sub_1B5396760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18)
{
  fst::AutoQueue<int>::~AutoQueue(&a18);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(&a13);
  _Unwind_Resume(a1);
}

float fst::ComputeTotalWeight<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t *a2, char a3)
{
  if (a3)
  {
    if ((*(*a1 + 24))(a1) < ((a2[1] - *a2) >> 2))
    {
      return *(*a2 + 4 * (*(*a1 + 24))(a1));
    }

    return INFINITY;
  }

  v6 = *a2;
  if (a2[1] == *a2)
  {
    return INFINITY;
  }

  v7 = 0;
  v5 = INFINITY;
  do
  {
    (*(*a1 + 32))(a1, v7);
    v9 = *(v6 + 4 * v7);
    v10 = NAN;
    if (v9 != -INFINITY && v8 != -INFINITY)
    {
      v11 = v8 == INFINITY || v9 == INFINITY;
      v12 = v9 + v8;
      if (v11)
      {
        v10 = INFINITY;
      }

      else
      {
        v10 = v12;
      }
    }

    if (v5 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v5;
    }

    if (v10 == -INFINITY || v5 == -INFINITY)
    {
      v5 = NAN;
    }

    else
    {
      v5 = v13;
    }

    ++v7;
    v6 = *a2;
  }

  while (v7 < (a2[1] - *a2) >> 2);
  return v5;
}

uint64_t fst::Reweight<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t *a1, void *a2, int a3)
{
  result = (*(*a1 + 160))(a1);
  if (!result)
  {
    return result;
  }

  v52 = 0;
  (*(*a1 + 128))(a1, &v50);
LABEL_3:
  if (v50)
  {
    if ((*(*v50 + 16))(v50))
    {
      goto LABEL_73;
    }

    if (v50)
    {
      v8 = (*(*v50 + 24))(v50);
      goto LABEL_9;
    }
  }

  else if (v52 >= v51)
  {
    goto LABEL_73;
  }

  v8 = v52;
LABEL_9:
  v9 = v8;
  if (v8 != (a2[1] - *a2) >> 2)
  {
    v10 = *(*a2 + 4 * v8);
    v48.n128_f32[0] = v10;
    LODWORD(v49) = 2139095040;
    v7.n128_f32[0] = v10;
    if (v10 == INFINITY)
    {
      goto LABEL_45;
    }

    (*(*a1 + 296))(a1, v8, &v49, v48.n128_f32[0]);
    while (1)
    {
      if ((*(*v49 + 24))(v49))
      {
        if (v49)
        {
          (*(*v49 + 8))(v49);
        }

        if (a3)
        {
LABEL_45:
          if (a3 == 1)
          {
            v18.n128_u32[0] = (*(*a1 + 32))(a1, v9, v7);
            v19.n128_u32[0] = 2143289344;
            if (v10 != -INFINITY && v18.n128_f32[0] != -INFINITY)
            {
              v19.n128_u32[0] = 2139095040;
              v20 = v18.n128_f32[0] == INFINITY || v10 == INFINITY;
              v18.n128_f32[0] = v10 + v18.n128_f32[0];
              if (!v20)
              {
                v19.n128_f32[0] = v18.n128_f32[0];
              }
            }

            (*(*a1 + 184))(a1, v9, v19, v18);
          }
        }

        else
        {
          v21 = (*(*a1 + 32))(a1, v9);
          v22.n128_u32[0] = 2143289344;
          if (v21 != -INFINITY && (LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v22.n128_u32[0] = 2139095040;
            if (v21 != INFINITY)
            {
              v22.n128_f32[0] = v21 - v10;
            }
          }

          (*(*a1 + 184))(a1, v9, v22);
        }

        if (v50)
        {
          (*(*v50 + 32))(v50);
        }

        else
        {
          ++v52;
        }

        goto LABEL_3;
      }

      v11 = *(*(*v49 + 32))(v49);
      v48 = v11;
      if (v11.n128_i32[3] < ((a2[1] - *a2) >> 2))
      {
        v11.n128_u32[0] = *(*a2 + 4 * v48.n128_i32[3]);
        v54 = v11.n128_u32[0];
        v53 = 2139095040;
        v12.n128_u32[0] = v11.n128_u32[0];
        if (v11.n128_f32[0] != INFINITY)
        {
          break;
        }
      }

LABEL_41:
      (*(*v49 + 40))(v49, v11, v12);
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_40:
        v11.n128_f64[0] = (*(*v49 + 88))(v49, &v48);
        goto LABEL_41;
      }

      v13 = NAN;
      if (v10 != -INFINITY)
      {
        v13 = NAN;
        if (v48.n128_f32[2] != -INFINITY)
        {
          v14 = v48.n128_f32[2] == INFINITY || v10 == INFINITY;
          v15 = v10 + v48.n128_f32[2];
          if (v14)
          {
            v15 = INFINITY;
          }

          v13 = NAN;
          if (v15 != -INFINITY && (v11.n128_u32[0] & 0x7FFFFFFF) <= 0x7F7FFFFF)
          {
            v13 = INFINITY;
            if (v15 != INFINITY)
            {
              v13 = v15 - v11.n128_f32[0];
            }
          }
        }
      }
    }

    else
    {
      v13 = NAN;
      if (v48.n128_f32[2] != -INFINITY && v11.n128_f32[0] != -INFINITY)
      {
        v16 = v48.n128_f32[2] == INFINITY || v11.n128_f32[0] == INFINITY;
        v17 = v11.n128_f32[0] + v48.n128_f32[2];
        if (v16)
        {
          v17 = INFINITY;
        }

        v13 = NAN;
        if (v17 != -INFINITY && (LODWORD(v10) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v13 = INFINITY;
          if (v17 != INFINITY)
          {
            v13 = v17 - v10;
          }
        }
      }
    }

    v48.n128_f32[2] = v13;
    goto LABEL_40;
  }

  while (1)
  {
LABEL_73:
    if (!v50)
    {
      if (v52 >= v51)
      {
        break;
      }

      goto LABEL_65;
    }

    if ((*(*v50 + 16))(v50))
    {
      break;
    }

    if (v50)
    {
      v23 = (*(*v50 + 24))(v50);
      goto LABEL_66;
    }

LABEL_65:
    v23 = v52;
LABEL_66:
    if (a3 == 1)
    {
      v14 = (*(*a1 + 32))(a1, v23) == -INFINITY;
      v24.n128_u32[0] = 2139095040;
      if (v14)
      {
        v24.n128_f32[0] = NAN;
      }

      (*(*a1 + 184))(a1, v23, v24);
    }

    if (v50)
    {
      (*(*v50 + 32))(v50);
    }

    else
    {
      ++v52;
    }
  }

  if ((*(*a1 + 24))(a1) >= ((a2[1] - *a2) >> 2))
  {
    v26 = INFINITY;
  }

  else
  {
    v26 = *(*a2 + 4 * (*(*a1 + 24))(a1));
  }

  v48.n128_f32[0] = v26;
  LODWORD(v49) = 0;
  v25.n128_f32[0] = v26;
  if (v26 == 0.0)
  {
    goto LABEL_137;
  }

  v48.n128_f32[0] = v26;
  LODWORD(v49) = 2139095040;
  v25.n128_f32[0] = v26;
  if (v26 == INFINITY)
  {
    goto LABEL_137;
  }

  v27 = (*(*a1 + 64))(a1, 0x2000000000, 1, v26);
  v28 = *a1;
  if ((v27 & 0x2000000000) == 0)
  {
    v29 = (*(v28 + 200))(a1);
    if (a3)
    {
      if ((LODWORD(v26) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v26 = NAN;
      }

      else
      {
        v26 = 0.0 - v26;
      }
    }

    v30 = (*(*a1 + 24))(a1);
    v48.n128_u64[0] = 0;
    v48.n128_u64[1] = __PAIR64__(v30, LODWORD(v26));
    (*(*a1 + 208))(a1, v29, &v48);
    (*(*a1 + 176))(a1, v29);
    goto LABEL_137;
  }

  v31 = (*(v28 + 24))(a1);
  (*(*a1 + 296))(a1, v31, &v49);
  if ((LODWORD(v26) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v32 = NAN;
  }

  else
  {
    v32 = 0.0 - v26;
  }

  while (2)
  {
    if (!(*(*v49 + 24))(v49))
    {
      v48 = *(*(*v49 + 32))(v49);
      v33 = NAN;
      if (a3)
      {
        if (v32 != -INFINITY)
        {
          v33 = NAN;
          if (v48.n128_f32[2] != -INFINITY)
          {
            v33 = INFINITY;
            v34 = v48.n128_f32[2] == INFINITY || v32 == INFINITY;
            v35 = v32 + v48.n128_f32[2];
LABEL_103:
            if (!v34)
            {
              v33 = v35;
            }
          }
        }
      }

      else if (v26 != -INFINITY)
      {
        v33 = NAN;
        if (v48.n128_f32[2] != -INFINITY)
        {
          v33 = INFINITY;
          v34 = v48.n128_f32[2] == INFINITY || v26 == INFINITY;
          v35 = v48.n128_f32[2] + v26;
          goto LABEL_103;
        }
      }

      v48.n128_f32[2] = v33;
      (*(*v49 + 88))(v49, &v48);
      (*(*v49 + 40))(v49);
      continue;
    }

    break;
  }

  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v36 = *(*a1 + 32);
  if (a3)
  {
    v37.n128_f32[0] = v36(a1, v31);
    v38 = INFINITY;
    if (v37.n128_f32[0] != INFINITY && v32 != INFINITY)
    {
      v38 = v32 + v37.n128_f32[0];
    }

    v41 = v37.n128_f32[0] == -INFINITY || v32 == -INFINITY;
    v37.n128_u32[0] = 2143289344;
    if (!v41)
    {
      v37.n128_f32[0] = v38;
    }
  }

  else
  {
    v37.n128_f32[0] = v36(a1, v31);
    v42 = INFINITY;
    if (v37.n128_f32[0] != INFINITY && v26 != INFINITY)
    {
      v42 = v37.n128_f32[0] + v26;
    }

    v45 = v37.n128_f32[0] == -INFINITY || v26 == -INFINITY;
    v37.n128_u32[0] = 2143289344;
    if (!v45)
    {
      v37.n128_f32[0] = v42;
    }
  }

  (*(*a1 + 184))(a1, v31, v37);
LABEL_137:
  v46 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0, v25);
  v47 = fst::ReweightProperties(v46);
  (*(*a1 + 192))(a1, v47, 0x3FFFFFFF0007);
  result = v50;
  if (v50)
  {
    return (*(*v50 + 8))(v50);
  }

  return result;
}

void sub_1B539750C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveWeight<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t result, int a2, float a3)
{
  *&v16 = a3;
  LODWORD(v15) = 0;
  if (a3 == 0.0)
  {
    return result;
  }

  *&v16 = a3;
  LODWORD(v15) = 2139095040;
  if (a3 == INFINITY)
  {
    return result;
  }

  v4 = result;
  if (a2)
  {
    v17 = 0;
    (*(*result + 128))(result, &v16);
    while (1)
    {
      result = v16;
      if (!v16)
      {
        break;
      }

      v5 = (*(*v16 + 16))(v16);
      result = v16;
      if (v5)
      {
        if (v16)
        {
          return (*(*v16 + 8))();
        }

        return result;
      }

      if (!v16)
      {
        goto LABEL_11;
      }

      v6 = (*(*v16 + 24))();
      if (v16)
      {
        v7 = (*(*v16 + 24))(v16);
      }

      else
      {
        v7 = v17;
      }

LABEL_12:
      (*(*v4 + 32))(v4, v7);
      v9 = NAN;
      if (v8 != -INFINITY && (LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v9 = INFINITY;
        if (v8 != INFINITY)
        {
          v9 = v8 - a3;
        }
      }

      (*(*v4 + 184))(v4, v6, v9);
      if (v16)
      {
        (*(*v16 + 32))(v16);
      }

      else
      {
        ++v17;
      }
    }

    if (v17 >= SDWORD2(v16))
    {
      return result;
    }

LABEL_11:
    v6 = v17;
    v7 = v17;
    goto LABEL_12;
  }

  v10 = (*(*result + 24))(result);
  (*(*v4 + 296))(v4, v10, &v15);
  while (!(*(*v15 + 24))(v15))
  {
    v16 = *(*(*v15 + 32))(v15);
    v11 = NAN;
    if (*(&v16 + 2) != -INFINITY)
    {
      v12 = *(&v16 + 2) - a3;
      if (*(&v16 + 2) == INFINITY)
      {
        v12 = INFINITY;
      }

      if ((LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v11 = v12;
      }
    }

    *(&v16 + 2) = v11;
    (*(*v15 + 88))(v15, &v16);
    (*(*v15 + 40))(v15);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v13 = (*(*v4 + 32))(v4, v10);
  v14.n128_u32[0] = 2143289344;
  if (v13 != -INFINITY && (LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v14.n128_u32[0] = 2139095040;
    if (v13 != INFINITY)
    {
      v14.n128_f32[0] = v13 - a3;
    }
  }

  return (*(*v4 + 184))(v4, v10, v14);
}

void sub_1B5397A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ShortestDistance<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, 29);
  a2[1] = *a2;
  fst::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ShortestDistance(v6, *(a3 + 12));
  if (BYTE12(v13[1]) == 1)
  {
    a2[1] = *a2;
    v5 = 2143289344;
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, &v5);
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(v6);
}

void sub_1B5397B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        v5[0] = v3;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = &v6;
        fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B539841C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::NaturalLess<fst::TropicalWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v10 = *(a3 + 8) - *a3;
  if (v10)
  {
    v11 = v10 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    bzero(*a3, 4 * v11);
  }

  v29 = 0;
  (*(*a1 + 128))(a1, &v27);
  while (1)
  {
    result = v27;
    if (!v27)
    {
      if (v29 >= v28)
      {
        return result;
      }

LABEL_11:
      v14 = v29;
      goto LABEL_12;
    }

    v13 = (*(*v27 + 16))(v27);
    result = v27;
    if (v13)
    {
      break;
    }

    if (!v27)
    {
      goto LABEL_11;
    }

    v14 = (*(*v27 + 24))();
LABEL_12:
    v26 = 0;
    (*(*a1 + 136))(a1, v14, v24);
    while (1)
    {
      if (!v24[0])
      {
        if (v26 >= v24[2])
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      if ((*(*v24[0] + 24))(v24[0]))
      {
        break;
      }

      if (v24[0])
      {
        v15 = (*(*v24[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v15 = v24[1] + 16 * v26;
LABEL_19:
      v16 = *(*a2 + 4 * v14);
      if (v16 == *(*a2 + 4 * *(v15 + 12)))
      {
        v17 = *a3;
        if (!a4 || (v18 = (v15 + 8), v31 = 0.0, fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(a4, (v15 + 8), &v31)))
        {
          v19 = 1;
          goto LABEL_23;
        }

        if ((v17[v16] | 2) == 2)
        {
          v21 = *v18;
          v31 = *v18;
          v30 = 2139095040;
          if (v31 == INFINITY || (v31 = v21, v30 = 0, v21 == 0.0))
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
          }

LABEL_23:
          v17[v16] = v19;
        }

        *a5 = 0;
      }

      v20 = *(v15 + 8);
      v31 = v20;
      v30 = 2139095040;
      if (v20 != INFINITY)
      {
        v31 = v20;
        v30 = 0;
        if (v20 != 0.0)
        {
          *a6 = 0;
        }
      }

      if (v24[0])
      {
        (*(*v24[0] + 40))(v24[0]);
      }

      else
      {
        ++v26;
      }
    }

    if (v24[0])
    {
      (*(*v24[0] + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (v25)
    {
      --*v25;
    }

LABEL_40:
    if (v27)
    {
      (*(*v27 + 32))(v27);
    }

    else
    {
      ++v29;
    }
  }

  if (v27)
  {
    return (*(*v27 + 8))();
  }

  return result;
}

void sub_1B5398910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::TopOrderVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
}

void sub_1B5398AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B53992E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::TopOrderVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      JUMPOUT(0x1B8C85350);
    }

    v5 = 0;
    v6 = **a1;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

uint64_t fst::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    result = (*(**a1 + 64))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v7 = a1 + 116;
LABEL_88:
    *v7 = 1;
    return result;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v4 = a1[1];
  for (i = *v4; a2 >= ((v4[1] - *v4) >> 2); i = *v4)
  {
    LODWORD(v38[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v4, v38);
    LODWORD(v38[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), v38);
    LOBYTE(v38[0]) = 0;
    std::vector<BOOL>::push_back((a1 + 8), v38);
    v4 = a1[1];
  }

  if (*(a1 + 33) == 1)
  {
    v6 = a1[11];
    if (a2 >= ((a1[12] - v6) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v6 = a1[11];
      }

      while (a2 >= ((a1[12] - v6) >> 2));
      i = *a1[1];
    }

    *(v6 + 4 * a2) = *(a1 + 28);
  }

  *(i + 4 * a2) = 0;
  *(a1[5] + 4 * a2) = 0;
  *(a1[8] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), a2);
  v7 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_87;
    }

    v8 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v9 = a1[1];
      if (v8 < ((v9[1] - *v9) >> 2))
      {
        break;
      }

      LODWORD(v38[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v9, v38);
      LODWORD(v38[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), v38);
      LOBYTE(v38[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), v38);
    }

    if (*(a1 + 32) == 1)
    {
      LODWORD(v38[0]) = (*(**a1 + 32))(*a1, v8);
      v41 = 2139095040;
      if (*v38 != INFINITY)
      {
LABEL_87:
        ++*(a1 + 28);
        result = (*(**a1 + 64))(*a1, 4, 0);
        if (!result)
        {
          return result;
        }

        goto LABEL_88;
      }
    }

    *(a1[8] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
    v10 = a1[5];
    v11 = *(v10 + 4 * v8);
    *(v10 + 4 * v8) = 2139095040;
    v12 = *a1;
    v40 = 0;
    (*(*v12 + 136))(v12, v8, v38);
    while (1)
    {
      if (v38[0])
      {
        if ((*(*v38[0] + 24))(v38[0]))
        {
          goto LABEL_77;
        }

        if (v38[0])
        {
          v13 = (*(*v38[0] + 32))(v38[0]);
          goto LABEL_27;
        }
      }

      else if (v40 >= v38[2])
      {
LABEL_77:
        v36 = 1;
        goto LABEL_79;
      }

      v13 = v38[1] + 16 * v40;
LABEL_27:
      v14 = a1[1];
      for (j = *(v13 + 12); j >= (v14[1] - *v14) >> 2; j = *(v13 + 12))
      {
        v41 = 2139095040;
        std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v14, &v41);
        v41 = 2139095040;
        std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), &v41);
        LOBYTE(v41) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v41);
        v14 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v16 = a1[11];
          LODWORD(j) = *(v13 + 12);
          if (j < ((a1[12] - v16) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v14 = a1[1];
        if (*(v16 + 4 * j) != *(a1 + 28))
        {
          *(*v14 + 4 * j) = 2139095040;
          *(a1[5] + 4 * *(v13 + 12)) = 2139095040;
          v17 = *(v13 + 12);
          *(a1[8] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v17);
          *(a1[11] + 4 * v17) = *(a1 + 28);
          v14 = a1[1];
          LODWORD(j) = *(v13 + 12);
        }
      }

      v18 = *v14;
      v19 = a1[5];
      v20 = NAN;
      if (v11 != -INFINITY)
      {
        v21 = *(v13 + 8);
        v20 = NAN;
        if (v21 != -INFINITY)
        {
          v20 = INFINITY;
          v22 = v21 == INFINITY || v11 == INFINITY;
          v23 = v11 + v21;
          if (!v22)
          {
            v20 = v23;
          }
        }
      }

      v24 = *(v18 + 4 * j);
      if (v24 >= v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = *(v18 + 4 * j);
      }

      if (v20 == -INFINITY || v24 == -INFINITY)
      {
        v25 = NAN;
      }

      v28 = *(a1 + 7);
      if (v25 > (v24 + v28) || v24 > (v28 + v25))
      {
        break;
      }

LABEL_74:
      if (v38[0])
      {
        (*(*v38[0] + 40))(v38[0]);
      }

      else
      {
        ++v40;
      }
    }

    *(v18 + 4 * j) = v25;
    v30 = *(v19 + 4 * j);
    if (v30 >= v20)
    {
      v31 = v20;
    }

    else
    {
      v31 = *(v19 + 4 * j);
    }

    v33 = v20 == -INFINITY || v30 == -INFINITY;
    v34 = NAN;
    if (!v33)
    {
      v34 = v31;
    }

    *(v19 + 4 * j) = v34;
    if (*(v18 + 4 * j) != -INFINITY && (v34 < -INFINITY || v34 > -INFINITY))
    {
      v35 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v13 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v13 + 12)))
      {
        (*(v35 + 40))();
      }

      else
      {
        (*(v35 + 24))();
        *(a1[8] + ((*(v13 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v13 + 12);
      }

      goto LABEL_74;
    }

    v36 = 0;
    *v7 = 1;
LABEL_79:
    result = v38[0];
    if (v38[0])
    {
      result = (*(*v38[0] + 8))(v38[0]);
    }

    else if (v39)
    {
      --*v39;
    }
  }

  while ((v36 & 1) != 0);
  return result;
}

void sub_1B5399C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  else if (a12)
  {
    --*a12;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AcceptorMinimize<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 64))(a1, 0x200010000, 1))
  {
    fst::Connect<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1);
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "FST is not an unweighted acceptor", 33);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 192))(a1, 4, 4);
}

void sub_1B5399F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::QuantizeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, float *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v6 = 0;
      v7 = vneg_f32(0x7F0000007FLL);
      do
      {
        (*(*a1 + 296))(a1, v6, &v13);
        while (!(*(*v13 + 24))(v13))
        {
          v8 = (*(*v13 + 32))(v13);
          *&v9 = fst::QuantizeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()(a2, v8, v12);
          (*(*v13 + 88))(v13, v12, v9);
          (*(*v13 + 40))(v13);
        }

        if (v13)
        {
          (*(*v13 + 8))();
        }

        (*(*a1 + 32))(v12, a1, v6);
        v10 = vaddv_f32(v12[0]);
        v11 = 0x7F0000007FLL;
        if (v10 != -INFINITY)
        {
          v11 = v7;
          if (v10 != INFINITY)
          {
            v11.i32[0] = *a2;
            v11 = vmul_n_f32(vrndm_f32(vadd_f32(vdiv_f32(v12[0], vdup_lane_s32(v11, 0)), 0x3F0000003F000000)), *a2);
          }
        }

        v12[0] = v11;
        (*(*a1 + 184))(a1, v6, v12);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFCFFFF0007, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B539A338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t fst::QuantizeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()@<D0>(float *a1@<X0>, uint64_t a2@<X1>, int32x2_t *a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = vaddv_f32(v3);
  v5 = 0x7F0000007FLL;
  if (v4 != -INFINITY)
  {
    if (v4 == INFINITY)
    {
      v5 = vneg_f32(0x7F0000007FLL);
    }

    else
    {
      v5.i32[0] = *a1;
      v5 = vmul_n_f32(vrndm_f32(vadd_f32(vdiv_f32(v3, vdup_lane_s32(v5, 0)), 0x3F0000003F000000)), *a1);
    }
  }

  v6 = *(a2 + 16);
  result = *a2;
  *a3 = *a2;
  a3[1] = v5;
  a3[2].i32[0] = v6;
  return result;
}

void fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::EncodeMapper(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::EncodeTable(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = a2;
  v5 = a2 & 1;
  v6 = (a2 & 2) != 0;
  std::unordered_map<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const* const,int>>>::unordered_map(a1 + 32, 0x400uLL, &v4);
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1B539A4E4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const* const,int>>>::unordered_map(uint64_t a1, size_t a2, int *a3)
{
  v4 = *a3;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 36) = v4 & 1;
  *(a1 + 37) = (v4 & 2) != 0;
  *(a1 + 40) = 1065353216;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 280))(a1, 0);
  (*(*a1 + 288))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v18 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if (*(a2 + 4) == 1 && (*a2 & 2) != 0)
    {
      v5 = (*(*a1 + 200))(a1);
      v22[0] = 0;
      (*(*a1 + 184))(a1, v5, v22);
      v6 = 0;
    }

    else
    {
      LODWORD(v5) = -1;
      v6 = 1;
    }

    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      v8 = vneg_f32(0x7F0000007FLL);
      while (1)
      {
        (*(*a1 + 296))(a1, v7, &v26);
        while (!(*(*v26 + 24))(v26))
        {
          v9 = (*(*v26 + 32))(v26);
          fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()(a2, v9, &v29);
          (*(*v26 + 88))(v26, &v29);
          (*(*v26 + 40))(v26);
        }

        if (v26)
        {
          (*(*v26 + 8))();
        }

        if (v6)
        {
          break;
        }

        if (v7 != v5)
        {
          (*(*a1 + 32))(&v25, a1, v7);
          v26 = 0;
          v27 = v25;
          v28 = -1;
          fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()(a2, &v26, &v29);
          if (v29)
          {
            v13 = LODWORD(v30[1]);
            goto LABEL_26;
          }

          v13 = LODWORD(v30[1]);
          *&v25 = v30[1];
          *&v26 = v30[0];
          v32 = 2139095040;
          v31 = INFINITY;
          if (v30[0] != INFINITY || *&v25 != v31)
          {
LABEL_26:
            v26 = v29;
            v27 = __PAIR64__(v13, LODWORD(v30[0]));
            v28 = v5;
            (*(*a1 + 208))(a1, v7, &v26);
          }

          v26 = v8;
LABEL_33:
          (*(*a1 + 184))(a1, v7, &v26);
        }

        v7 = (v7 + 1);
        if (v7 >= (*(*a1 + 160))(a1))
        {
          goto LABEL_35;
        }
      }

      (*(*a1 + 32))(&v25, a1, v7);
      v26 = 0;
      v27 = v25;
      v28 = -1;
      fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()(a2, &v26, &v29);
      if (!v29)
      {
LABEL_32:
        v26 = *v30;
        goto LABEL_33;
      }

      v10 = FLAGS_fst_error_fatal;
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v22, "FATAL");
        v11 = fst::LogMessage::LogMessage(&v24, v22);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        v11 = fst::LogMessage::LogMessage(&v21, __p);
      }

      v12 = fst::cerr(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ArcMap: non-zero arc labels for superfinal arc", 46);
      if (v10)
      {
        fst::LogMessage::~LogMessage(&v24);
        if (v23 < 0)
        {
          v14 = v22[0];
LABEL_30:
          operator delete(v14);
        }
      }

      else
      {
        fst::LogMessage::~LogMessage(&v21);
        if (v20 < 0)
        {
          v14 = __p[0];
          goto LABEL_30;
        }
      }

      (*(*a1 + 192))(a1, 4, 4);
      goto LABEL_32;
    }

LABEL_35:
    v15 = 0x3FFF00000007;
    if ((*a2 & 1) == 0)
    {
      v15 = 0x3FFFFFFF0007;
    }

    if ((*a2 & 2) != 0)
    {
      v16 = 0x1D7C48100007;
      if (*(a2 + 4) == 1)
      {
        v16 = 0x2EBC84200007;
      }

      v15 &= v16;
    }

    if (*(a2 + 16))
    {
      v17 = v18 | 4;
    }

    else
    {
      v17 = v18;
    }

    return (*(*a1 + 192))(a1, v15 & v17, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B539AB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  fst::LogMessage::~LogMessage(&a29);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()(int *a1@<X0>, int8x8_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[2].i32[0];
  if (a1[1] == 1)
  {
    if (v6 != -1)
    {
LABEL_3:
      v7 = fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Encode(*(a1 + 1), a2);
      v8 = a2->i32[1];
      if (*a1)
      {
        v8 = v7;
      }

      v9 = (*a1 & 2) == 0;
      v6 = a2[2].i32[0];
      *a3 = v7;
      *(a3 + 4) = v8;
      v10 = vand_s8(a2[1], vcltz_s32(vshl_n_s32(vdup_n_s32(v9), 0x1FuLL)));
      goto LABEL_41;
    }

    if ((*a1 & 2) != 0)
    {
      v14 = *a2[1].i32;
      v15 = a2[1].i32[1];
      *__p = v14;
      LODWORD(v27[0]) = v15;
      LODWORD(v25[0]) = 2139095040;
      v33 = INFINITY;
      if (v14 != INFINITY || *v27 != v33)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v14 = *a2[1].i32;
      v15 = a2[1].i32[1];
    }

    *a3 = *a2;
    *(a3 + 8) = v14;
    *(a3 + 12) = v15;
    goto LABEL_19;
  }

  if (v6 == -1)
  {
    *a3 = *a2;
    *(a3 + 8) = a2[1];
LABEL_19:
    v6 = -1;
    goto LABEL_42;
  }

  if (!a2->i32[0])
  {
    *a3 = *a2;
    v10 = a2[1];
LABEL_41:
    *(a3 + 8) = v10;
    goto LABEL_42;
  }

  v11 = *a1;
  if ((*a1 & 1) != 0 && a2->i32[0] != a2->i32[1])
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v12 = fst::LogMessage::LogMessage(&v31, __p);
    v13 = fst::cerr(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "EncodeMapper: Label-encoded arc has different input and output labels", 69);
    fst::LogMessage::~LogMessage(&v31);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 1;
    v11 = *a1;
  }

  if ((v11 & 2) != 0)
  {
    v16 = a2[1].i32[1];
    LODWORD(v27[0]) = a2[1].i32[0];
    LODWORD(v25[0]) = v16;
    v33 = 0.0;
    v32 = 0.0;
    if (*v27 != 0.0 || *v25 != v32)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v27, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v27, "ERROR");
      }

      v17 = fst::LogMessage::LogMessage(&v33, v27);
      v18 = fst::cerr(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "EncodeMapper: Weight-encoded arc has non-trivial weight", 55);
      fst::LogMessage::~LogMessage(&v33);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      *(a1 + 16) = 1;
    }
  }

  v19 = fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Decode(*(a1 + 1), a2->u32[0]);
  if (v19)
  {
    if (*a1)
    {
      v20 = v19;
    }

    else
    {
      v20 = a2;
    }

    v21 = v20->i32[1];
    if ((*a1 & 2) != 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = a2;
    }

    v6 = a2[2].i32[0];
    *a3 = v19->i32[0];
    *(a3 + 4) = v21;
    v10 = v22[1];
    goto LABEL_41;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "ERROR");
  }

  v23 = fst::LogMessage::LogMessage(&v32, v25);
  v24 = fst::cerr(v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "EncodeMapper: decode failed", 27);
  fst::LogMessage::~LogMessage(&v32);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  *(a1 + 16) = 1;
  v6 = a2[2].i32[0];
  *a3 = -1;
  *(a3 + 8) = vneg_f32(0x3F0000003FLL);
LABEL_42:
  *(a3 + 16) = v6;
}

void sub_1B539AF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  fst::LogMessage::~LogMessage((v27 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Encode(uint64_t a1, int8x8_t *a2)
{
  v2 = ((*a1 << 31) >> 31) & a2->i32[1];
  v3 = (*a1 & 2) == 0;
  v6[0] = a2->i32[0];
  v6[1] = v2;
  v7 = vand_s8(a2[1], vcgez_s32(vshl_n_s32(vdup_n_s32(v3), 0x1FuLL)));
  v8 = v6;
  v4 = std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*>((a1 + 32), &v8);
  if (!v4)
  {
    operator new();
  }

  return *(v4 + 6);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Decode(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v3 = *(a1 + 8);
    if (a2 <= ((*(a1 + 16) - v3) >> 3))
    {
      return *(v3 + 8 * a2 - 8);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v4 = fst::LogMessage::LogMessage(&v10, __p);
  v5 = fst::cerr(v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "EncodeTable::Decode: unknown decode key: ", 41);
  MEMORY[0x1B8C84C00](v6, a2);
  fst::LogMessage::~LogMessage(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B539B258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float **std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*>(void *a1, int **a2)
{
  v4 = fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey::operator()((a1 + 4), *a2);
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
      if (std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,true>::operator()[abi:ne200100](a1, i + 2, a2))
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

BOOL std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,true>::operator()[abi:ne200100](uint64_t a1, float **a2, float **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (**a2 != **a3 || *(v3 + 1) != *(v4 + 1))
  {
    return 0;
  }

  if (v3[2] == v4[2])
  {
    return v3[3] == v4[3];
  }

  return 0;
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  result = *a2;
  if (v2 == 1)
  {
    result += 7853 * a2[1];
    if (!v3)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  v5 = a2[2];
  v6 = a2[3];
  v7 = __CFADD__(v6, v5);
  v8 = (v6 + v5);
  v9 = 0x100000000;
  if (!v7)
  {
    v9 = 0;
  }

  result += 7867 * (v9 | v8);
  return result;
}

float **std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>>>::__emplace_unique_key_args<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::piecewise_construct_t const&,std::tuple<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const* const&>,std::tuple<>>(void *a1, int **a2)
{
  v4 = fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey::operator()((a1 + 4), *a2);
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

  if (!std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::TupleKey,true>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void fst::MergeStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(void *a1, uint64_t a2)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((a1[5] - a1[4]) >> 3));
  v5 = a1[4];
  v4 = a1[5];
  v6 = v4 - v5;
  if (((v4 - v5) >> 3))
  {
    v7 = 0;
    v8 = (v6 >> 3);
    v9 = __p;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      *v9++ = **(v5 + (v7 >> 29));
      v7 += 0x100000000;
      --v8;
    }

    while (v8);
  }

  if ((v6 & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    do
    {
      v11 = *(v5 + 8 * v10);
      if (v11)
      {
        do
        {
          v12 = *v11;
          (*(*a2 + 296))(a2, *v11, &v17);
          while (!(*(*v17 + 24))(v17))
          {
            v13 = (*(*v17 + 32))(v17);
            v15[0] = *v13;
            v15[1] = *(v13 + 8);
            v16 = *(v13 + 16);
            v16 = *(__p + *(a1[10] + 4 * v16));
            if (v12 == *(__p + v10))
            {
              (*(*v17 + 88))(v17, v15);
            }

            else
            {
              (*(*a2 + 208))(a2);
            }

            (*(*v17 + 40))(v17);
          }

          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          v11 = *(v11 + 1);
        }

        while (v11);
        v5 = a1[4];
        v4 = a1[5];
      }

      ++v10;
    }

    while (v10 < ((v4 - v5) >> 3));
  }

  v14 = (*(*a2 + 24))(a2);
  (*(*a2 + 176))(a2, *(__p + *(a1[10] + 4 * v14)));
  fst::Connect<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
}

void sub_1B539B970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AcyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::AcyclicMinimizer(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 64))(a2, 0x40000, 1) == 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v4;
  if (!(*(*a2 + 64))(a2, 0x40000, 1))
  {
    FstCheck(1, "Weight::Properties() & kIdempotent", "../libquasar/libkaldi/tools/openfst/src/include/fst/minimize.h", 317);
  }

  fst::AcyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Initialize(a1, a2);
  fst::AcyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Refine(a1, a2);
  return a1;
}

void fst::AcyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Initialize(uint64_t a1, uint64_t a2)
{
  fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AcyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::HeightVisitor,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a2);
  fst::Partition<int>::Initialize(a1, 0);
  fst::Partition<int>::AllocateClasses(a1, 1);
}

void sub_1B539BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::AcyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Refine(void *a1, void *a2)
{
  v2 = a1[5] - a1[4];
  if ((v2 >> 3))
  {
    v5 = 0;
    v6 = (v2 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v17[0] = 0;
      v17[1] = 0;
      v17[2] = a2;
      v17[3] = a1;
      v18 = 7;
      v16 = v17;
      v8 = *(a1[4] + 8 * v5);
      v15 = *v8;
      v19 = &v15;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32) = v5;
      for (i = *(v8 + 8); i; i = *(i + 8))
      {
        v15 = *i;
        v10 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&v16, &v15);
        if (v17 == v10)
        {
          v11 = fst::Partition<int>::AddClass(a1);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v19 = &v15;
        *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32) = v11;
      }

      v12 = *(a1[4] + 8 * v5);
      while (v12)
      {
        v15 = *v12;
        v13 = *(a1[10] + 4 * v15);
        v19 = &v15;
        v14 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32);
        v12 = *(v12 + 8);
        if (v13 != v14)
        {
          fst::Partition<int>::Move(a1, v15, v14);
        }
      }

      std::__tree<int>::destroy(&v16, v17[0]);
      ++v5;
    }

    while (v5 != v7);
  }
}

uint64_t fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AcyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::HeightVisitor,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    memset(&v6, 0, sizeof(v6));
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MemoryPool(v2, 64);
  }

  return result;
}

void sub_1B539C51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()((a1 + 24), *a3, *(v4 + 7)))
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

      if (!fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()((a1 + 24), *(v8 + 7), *a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 4);
  if (v6)
  {
    (*(**a1 + 32))(v26);
    if (__CFADD__(HIDWORD(v26[0]), v26[0]))
    {
      v16 = 0x100000000;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | (HIDWORD(v26[0]) + LODWORD(v26[0]));
    (*(**a1 + 32))(v26);
    if (__CFADD__(HIDWORD(v26[0]), v26[0]))
    {
      v18 = 0x100000000;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 | (HIDWORD(v26[0]) + LODWORD(v26[0]));
    if (v17 < v19)
    {
      return 1;
    }

    if (v17 <= v19 && (a1[2] & 2) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v6 & 2) == 0)
  {
    return 0;
  }

LABEL_3:
  v7 = (*(**a1 + 40))(*a1, a2);
  if (v7 < (*(**a1 + 40))(*a1, a3))
  {
    return 1;
  }

  v8 = (*(**a1 + 40))(*a1, a2);
  if (v8 > (*(**a1 + 40))(*a1, a3) || (a1[2] & 4) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v28 = 0;
  (*(*v9 + 136))(v9, a2, v26);
  v10 = *a1;
  v25 = 0;
  (*(*v10 + 136))(v10, a3, v23);
  while (1)
  {
    if (v26[0])
    {
      if ((*(*v26[0] + 24))(v26[0]))
      {
        goto LABEL_42;
      }
    }

    else if (v28 >= v26[2])
    {
      goto LABEL_42;
    }

    if (v23[0])
    {
      if ((*(*v23[0] + 24))(v23[0]))
      {
        goto LABEL_42;
      }
    }

    else if (v25 >= v23[2])
    {
LABEL_42:
      v20 = 0;
      v21 = 1;
      goto LABEL_45;
    }

    if (v26[0])
    {
      v11 = (*(*v26[0] + 32))(v26[0]);
    }

    else
    {
      v11 = (v26[1] + 20 * v28);
    }

    if (v23[0])
    {
      v12 = (*(*v23[0] + 32))(v23[0]);
    }

    else
    {
      v12 = (v23[1] + 20 * v25);
    }

    if (*v11 < *v12)
    {
      goto LABEL_43;
    }

    if (*v11 > *v12)
    {
      break;
    }

    v13 = *(a1[1] + 80);
    v14 = *(v13 + 4 * v11[4]);
    v15 = *(v13 + 4 * v12[4]);
    if (v14 < v15)
    {
LABEL_43:
      v21 = 0;
      v20 = 1;
      goto LABEL_45;
    }

    if (v14 > v15)
    {
      break;
    }

    if (v26[0])
    {
      (*(*v26[0] + 40))(v26[0]);
    }

    else
    {
      ++v28;
    }

    if (v23[0])
    {
      (*(*v23[0] + 40))(v23[0]);
    }

    else
    {
      ++v25;
    }
  }

  v21 = 0;
  v20 = 0;
LABEL_45:
  if (v23[0])
  {
    (*(*v23[0] + 8))(v23[0]);
  }

  else if (v24)
  {
    --*v24;
  }

  if (v26[0])
  {
    (*(*v26[0] + 8))(v26[0]);
  }

  else if (v27)
  {
    --*v27;
  }

  if (v21)
  {
    return 0;
  }

  return v20;
}

void sub_1B539CB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  else if (a17)
  {
    --*a17;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(uint64_t a1, unsigned int *a2)
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
    v7 = fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()((a1 + 24), *(v3 + 28), *a2);
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
  if (v6 == v2 || fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::operator()((a1 + 24), *a2, *(v6 + 28)))
  {
    return v2;
  }

  return v6;
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::CyclicMinimizer(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 64))(a2, 0x40000, 1);
  *(a1 + 200) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v3 == 0;
  *(a1 + 192) = 2;
  *(a1 + 196) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 184) = &unk_1F2CFB7B0;
  fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::VectorFst();
}

void sub_1B539CDE4(_Unwind_Exception *a1)
{
  std::deque<int>::~deque[abi:ne200100](v2);
  fst::Partition<int>::~Partition(v1);
  _Unwind_Resume(a1);
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::Initialize(uint64_t a1, uint64_t a2)
{
  fst::Reverse<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a2, (a1 + 248), 1);
  fst::ArcSort<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1 + 248);
  fst::Partition<int>::Initialize(a1, (((*(*(a1 + 256) + 72) - *(*(a1 + 256) + 64)) << 29) - 0x100000000) >> 32);
  fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::PrePartition(a1, a2);
  operator new();
}

uint64_t fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::Compute(uint64_t result)
{
  v1 = *(result + 240);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = *(*(v2[26] + ((v2[29] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v2[29] & 0x3FFLL));
      ++v2[29];
      v2[30] = v1 - 1;
      std::deque<int>::__maybe_remove_front_spare[abi:ne200100]((v2 + 25), 1);
      result = fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::Split(v2, v3);
      v1 = v2[30];
    }

    while (v1);
  }

  return result;
}

void fst::ArcSort<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B539CF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::PrePartition(uint64_t a1, uint64_t a2)
{
  if (FLAGS_v >= 5)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "INFO");
    v4 = fst::LogMessage::LogMessage(&v33, &__p);
    v5 = fst::cerr(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "PrePartition", 12);
    fst::LogMessage::~LogMessage(&v33);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p);
    }
  }

  v38 = 0;
  v39 = a2;
  v40 = a1;
  v41 = 1;
  __p = &v37;
  v37 = 0;
  v35 = 0;
  (*(*a2 + 128))(a2, &v33);
  v6 = fst::Partition<int>::AddClass(a1);
  if (v33)
  {
    v7 = (*(*v33 + 24))(v33);
  }

  else
  {
    v7 = v35;
  }

  v8 = *(*(a1 + 8) + 8 * v7);
  v9 = *(a1 + 32);
  v10 = *(v9 + 8 * v6);
  if (v10)
  {
    *(v10 + 16) = v8;
    v10 = *(v9 + 8 * v6);
  }

  *(v8 + 8) = v10;
  *(v8 + 16) = 0;
  *(v9 + 8 * v6) = v8;
  *(*(a1 + 80) + 4 * v7) = v6;
  ++*(*(a1 + 104) + 4 * v6);
  if (v33)
  {
    v11 = (*(*v33 + 24))(v33);
  }

  else
  {
    v11 = v35;
  }

  v32 = v11;
  v30[0] = &v32;
  *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v6;
  LODWORD(v30[0]) = v6;
  std::deque<int>::push_front((a1 + 200), v30);
  v12 = v33;
  if (v33)
  {
    goto LABEL_28;
  }

  ++v35;
  while (v33)
  {
    if ((*(*v33 + 16))(v33))
    {
      goto LABEL_30;
    }

    if (!v33)
    {
      goto LABEL_19;
    }

    v13 = (*(*v33 + 24))(v33);
LABEL_20:
    v32 = v13;
    v14 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&__p, &v32);
    if (&v37 == v14)
    {
      v21 = fst::Partition<int>::AddClass(a1);
      v22 = v21;
      v23 = v32;
      v24 = *(*(a1 + 8) + 8 * v32);
      v25 = *(a1 + 32);
      v26 = *(v25 + 8 * v21);
      if (v26)
      {
        *(v26 + 16) = v24;
        v26 = *(v25 + 8 * v21);
      }

      *(v24 + 8) = v26;
      *(v24 + 16) = 0;
      *(v25 + 8 * v21) = v24;
      *(*(a1 + 80) + 4 * v23) = v21;
      ++*(*(a1 + 104) + 4 * v21);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v21;
      LODWORD(v30[0]) = v22;
      std::deque<int>::push_front((a1 + 200), v30);
    }

    else
    {
      v15 = v32;
      v16 = *(v14 + 32);
      v17 = *(*(a1 + 8) + 8 * v32);
      v18 = *(a1 + 32);
      v19 = *(v18 + 8 * v16);
      if (v19)
      {
        *(v19 + 16) = v17;
        v19 = *(v18 + 8 * v16);
      }

      *(v17 + 8) = v19;
      *(v17 + 16) = 0;
      *(v18 + 8 * v16) = v17;
      *(*(a1 + 80) + 4 * v15) = v16;
      ++*(*(a1 + 104) + 4 * v16);
      v20 = *(v14 + 32);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v20;
    }

    v12 = v33;
    if (v33)
    {
LABEL_28:
      (*(*v33 + 32))(v12);
    }

    else
    {
      ++v35;
    }
  }

  if (v35 < v34)
  {
LABEL_19:
    v13 = v35;
    goto LABEL_20;
  }

LABEL_30:
  if (FLAGS_v >= 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v30, "INFO");
    v27 = fst::LogMessage::LogMessage(&v32, v30);
    v28 = fst::cerr(v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Initial Partition: ", 19);
    MEMORY[0x1B8C84C00](v29, (*(a1 + 40) - *(a1 + 32)) >> 3);
    fst::LogMessage::~LogMessage(&v32);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  std::__tree<int>::destroy(&__p, v37);
}

void sub_1B539D3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  std::__tree<int>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t fst::StateMap<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0xCCCCCCCCCCCCCCCDLL * ((a2[3] - v9) >> 2))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 20 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

void fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::reserve(v4, v5);
  v6 = *a1;
  v14 = 0;
  (*(*v6 + 136))(v6, a2, v12);
  while (1)
  {
    if (!v12[0])
    {
      if (v14 >= v12[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v7 = v12[1] + 20 * v14;
      goto LABEL_8;
    }

    if ((*(*v12[0] + 24))(v12[0]))
    {
      break;
    }

    if (!v12[0])
    {
      goto LABEL_7;
    }

    v7 = (*(*v12[0] + 32))();
LABEL_8:
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::push_back[abi:ne200100](v4, v7);
    if (v12[0])
    {
      (*(*v12[0] + 40))(v12[0]);
    }

    else
    {
      ++v14;
    }
  }

  if (v12[0])
  {
    (*(*v12[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v13)
  {
    --*v13;
  }

LABEL_15:
  v8 = a1[2];
  v9 = a1[3];
  v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 2));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(v8, v9, v12, v11, 1);
}

void sub_1B539D930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::Split(void *a1, int a2)
{
  for (i = *(a1[4] + 8 * a2); i; i = *(i + 1))
  {
    if (*(*(*(a1[32] + 64) + 8 * (*i + 1)) + 32) != *(*(*(a1[32] + 64) + 8 * (*i + 1)) + 24))
    {
      operator new();
    }
  }

  v4 = a1[33];
  v5 = *v4;
  v6 = (v4 + 8);
  v7 = *(v4 + 8);
  if (*v4 != v7)
  {
    v8 = -1;
    while (1)
    {
      v9 = *v5;
      v36 = *(v4 + 24);
      v10 = (v7 - v5) >> 3;
      if (v10 >= 2)
      {
        v11 = *v5;
        v12 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>> **>>(v5, &v36, v10);
        v13 = (v7 - 8);
        if ((v7 - 8) == v12)
        {
          *v12 = v11;
        }

        else
        {
          *v12 = *v13;
          *v13 = v11;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>> **>>(v5, (v12 + 1), &v36, v12 + 1 - v5);
        }
      }

      *v6 -= 8;
      if (!*v9)
      {
        break;
      }

      v14 = (*(**v9 + 24))(*v9);
      v15 = *v9;
      if ((v14 & 1) == 0)
      {
        if (v15)
        {
          v17 = (*(*v15 + 32))(v15);
          if (*v9)
          {
            v18 = (*(**v9 + 32))(*v9);
            goto LABEL_24;
          }
        }

        else
        {
LABEL_22:
          v17 = (v9[1] + 20 * v9[4]);
        }

        v18 = v9[1] + 20 * v9[4];
LABEL_24:
        v19 = *(v18 + 16);
        v20 = *v17;
        if (v8 != *v17)
        {
          fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
        }

        if (*(a1[13] + 4 * *(a1[10] + 4 * (v19 - 1))) >= 2u)
        {
          fst::Partition<int>::SplitOn(a1, v19 - 1);
        }

        if (*v9)
        {
          (*(**v9 + 40))(*v9);
          if (*v9)
          {
            if ((*(**v9 + 24))(*v9))
            {
              if (*v9)
              {
                (*(**v9 + 8))(*v9);
                goto LABEL_39;
              }

LABEL_37:
              v25 = v9[3];
              if (v25)
              {
                --*v25;
              }

LABEL_39:
              MEMORY[0x1B8C85350](v9, 0x1070C401ACC3EEFLL);
LABEL_51:
              v8 = v20;
              goto LABEL_52;
            }

LABEL_35:
            v21 = a1[33];
            v23 = *(v21 + 8);
            v22 = *(v21 + 16);
            if (v23 >= v22)
            {
              v26 = (v23 - *v21) >> 3;
              if ((v26 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v27 = v22 - *v21;
              v28 = v27 >> 2;
              if (v27 >> 2 <= (v26 + 1))
              {
                v28 = v26 + 1;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1[33], v29);
              }

              v30 = (8 * v26);
              *v30 = v9;
              v24 = 8 * v26 + 8;
              v31 = *(v21 + 8) - *v21;
              v32 = v30 - v31;
              memcpy(v30 - v31, *v21, v31);
              v33 = *v21;
              *v21 = v32;
              *(v21 + 8) = v24;
              *(v21 + 16) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v23 = v9;
              v24 = (v23 + 1);
            }

            *(v21 + 8) = v24;
            v34 = *v21;
            v36 = *(v21 + 24);
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>> **>>(v34, v24, &v36, (v24 - v34) >> 3);
            goto LABEL_51;
          }
        }

        else
        {
          ++v9[4];
        }

        if (v9[4] >= v9[2])
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      if (!v15)
      {
        goto LABEL_16;
      }

      (*(*v15 + 8))(v15);
LABEL_18:
      MEMORY[0x1B8C85350](v9, 0x1070C401ACC3EEFLL);
LABEL_52:
      v4 = a1[33];
      v5 = *v4;
      v6 = (v4 + 8);
      v7 = *(v4 + 8);
      if (*v4 == v7)
      {
        return fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
      }
    }

    if (v9[4] < v9[2])
    {
      goto LABEL_22;
    }

LABEL_16:
    v16 = v9[3];
    if (v16)
    {
      --*v16;
    }

    goto LABEL_18;
  }

  return fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>> **>>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while (result);
      *v11 = v10;
    }
  }

  return result;
}

BOOL fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(uint64_t a1, void *a2, void *a3)
{
  if (*a2)
  {
    v4 = (*(**a2 + 32))(*a2);
  }

  else
  {
    v4 = (a2[1] + 20 * a2[4]);
  }

  if (*a3)
  {
    v5 = (*(**a3 + 32))(*a3);
  }

  else
  {
    v5 = (a3[1] + 20 * a3[4]);
  }

  return *v4 > *v5;
}

void **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>> **>>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

void *fst::CyclicMinimizer<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::LifoQueue<int>>::~CyclicMinimizer(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B8C85350](v2, 0xE0C40DD5D8FE3);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~ImplToFst(a1 + 31);
  std::deque<int>::~deque[abi:ne200100](a1 + 25);

  return fst::Partition<int>::~Partition(a1);
}

uint64_t fst::StateMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0xCCCCCCCCCCCCCCCDLL * ((a2[3] - v9) >> 2))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 20 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0xA6A0A950007, 0x3FFFFFFF0007);
  }

  return result;
}

void fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v15 = 0;
  (*(*v6 + 136))(v6, a2, v13);
  while (1)
  {
    if (!v13[0])
    {
      if (v15 >= v13[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v7 = v13[1] + 20 * v15;
      goto LABEL_8;
    }

    if ((*(*v13[0] + 24))(v13[0]))
    {
      break;
    }

    if (!v13[0])
    {
      goto LABEL_7;
    }

    v7 = (*(*v13[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v7);
    if (v13[0])
    {
      (*(*v13[0] + 40))(v13[0]);
    }

    else
    {
      ++v15;
    }
  }

  if (v13[0])
  {
    (*(*v13[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v14)
  {
    --*v14;
  }

LABEL_15:
  v8 = a1[2];
  v9 = a1[3];
  v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 2));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(v8, v9, v13, v11, 1);
  v12 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *>,std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *>,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Equal &>(a1[2], a1[3], v13);
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::resize(v4, 0xCCCCCCCCCCCCCCCDLL * ((v12 - a1[2]) >> 2));
}

void sub_1B539E5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(uint64_t result, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v28 = *(a2 - 5);
        if (v28 < *v9 || v28 <= *v9 && ((v33 = *(a2 - 4), v34 = *(v9 + 4), v33 < v34) || v33 <= v34 && *(a2 - 1) < *(v9 + 16)))
        {
          v29 = *v9;
          v30 = *(v9 + 16);
          *v9 = *(a2 - 20);
          v31 = *(a2 - 12);
          *(v9 + 16) = *(a2 - 1);
          v32 = *(v9 + 8);
          *(v9 + 8) = v31;
          *(a2 - 20) = v29;
          *(a2 - 12) = v32;
          *(a2 - 1) = v30;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20), (v9 + 40), (a2 - 20));
    }

    if (v13 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, v9 + 20, v9 + 40, v9 + 60, a2 - 20);
    }

LABEL_11:
    if (v12 <= 479)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v9 + 20 * (v13 >> 1);
    if (v12 < 0xA01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((v9 + 20 * v14), v9, (a2 - 20));
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20 * v14), (a2 - 20));
      v16 = 5 * v14;
      v17 = (v9 + 20 * v14 - 20);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((v9 + 20), v17, a2 - 5);
      v18 = (v9 + 20 + 4 * v16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((v8 + 40), v18, (a2 - 60));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v17, v15, v18);
      v19 = *v8;
      v20 = *(v8 + 16);
      *v8 = *v15;
      *(v8 + 16) = *(v15 + 16);
      *v15 = v19;
      v21 = *(v8 + 8);
      *(v8 + 8) = *(v15 + 8);
      *(v15 + 8) = v21;
      *(v15 + 16) = v20;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v22 = *(v8 - 20);
    if (v22 >= *v8)
    {
      if (v22 > *v8 || (v23 = *(v8 - 16), v24 = *(v8 + 4), v23 >= v24) && (v23 > v24 || *(v8 - 4) >= *(v8 + 16)))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &>(v8, a2);
        v9 = result;
        goto LABEL_27;
      }
    }

LABEL_22:
    v25 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &>(v8, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_25;
    }

    v27 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v8, v25);
    v9 = v25 + 20;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v25 + 20, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v25;
      if (v27)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v27)
    {
LABEL_25:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(v8, v25, a3, -v11, a5 & 1);
      v9 = v25 + 20;
LABEL_27:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20), (a2 - 20));
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(uint64_t *a1, int *a2, uint64_t *a3)
{
  v3 = *a2;
  if (*a2 < *a1 || v3 <= *a1 && ((v20 = a2[1], v21 = *(a1 + 1), v20 < v21) || v20 <= v21 && a2[4] < *(a1 + 4)))
  {
    if (*a3 < v3 || *a3 <= v3 && ((v22 = *(a3 + 1), v23 = a2[1], v22 < v23) || v22 <= v23 && *(a3 + 4) < a2[4]))
    {
      v4 = *a1;
      v5 = *(a1 + 4);
      *a1 = *a3;
      v6 = a3[1];
      *(a1 + 4) = *(a3 + 4);
      v7 = a1[1];
      a1[1] = v6;
      *a3 = v4;
      a3[1] = v7;
    }

    else
    {
      v16 = *a1;
      v17 = *(a1 + 2);
      v18 = *(a1 + 3);
      v5 = *(a1 + 4);
      *a1 = *a2;
      a1[1] = *(a2 + 1);
      *(a1 + 4) = a2[4];
      *a2 = v16;
      a2[2] = v17;
      a2[3] = v18;
      a2[4] = v5;
      if (*a3 >= v16)
      {
        if (*a3 > v16)
        {
          return 1;
        }

        v26 = *(a3 + 1);
        if (v26 >= SHIDWORD(v16) && (v26 > SHIDWORD(v16) || *(a3 + 4) >= v5))
        {
          return 1;
        }
      }

      *a2 = *a3;
      *(a2 + 1) = a3[1];
      a2[4] = *(a3 + 4);
      *a3 = v16;
      *(a3 + 2) = v17;
      *(a3 + 3) = v18;
    }

    *(a3 + 4) = v5;
    return 1;
  }

  if (*a3 < v3 || *a3 <= v3 && ((v27 = *(a3 + 1), v28 = a2[1], v27 < v28) || v27 <= v28 && *(a3 + 4) < a2[4]))
  {
    v8 = *a2;
    v9 = a2[4];
    *a2 = *a3;
    v10 = a3[1];
    a2[4] = *(a3 + 4);
    v11 = *(a2 + 1);
    *(a2 + 1) = v10;
    *a3 = v8;
    a3[1] = v11;
    *(a3 + 4) = v9;
    if (*a2 < *a1 || *a2 <= *a1 && ((v24 = a2[1], v25 = *(a1 + 1), v24 < v25) || v24 <= v25 && a2[4] < *(a1 + 4)))
    {
      v12 = *a1;
      v13 = *(a1 + 4);
      *a1 = *a2;
      v14 = *(a2 + 1);
      *(a1 + 4) = a2[4];
      v15 = a1[1];
      a1[1] = v14;
      *a2 = v12;
      *(a2 + 1) = v15;
      a2[4] = v13;
    }

    return 1;
  }

  return 0;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && ((v21 = *(a4 + 1), v22 = *(a3 + 1), v21 < v22) || v21 <= v22 && *(a4 + 4) < *(a3 + 4)))
  {
    v9 = *a3;
    v10 = *(a3 + 4);
    *a3 = *a4;
    v11 = a4[1];
    *(a3 + 4) = *(a4 + 4);
    v12 = a3[1];
    a3[1] = v11;
    *a4 = v9;
    a4[1] = v12;
    *(a4 + 4) = v10;
    if (*a3 < *a2 || *a3 <= *a2 && ((v23 = *(a3 + 1), v24 = *(a2 + 1), v23 < v24) || v23 <= v24 && *(a3 + 4) < *(a2 + 4)))
    {
      v13 = *a2;
      v14 = *(a2 + 4);
      *a2 = *a3;
      v15 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      v16 = a2[1];
      a2[1] = v15;
      *a3 = v13;
      a3[1] = v16;
      *(a3 + 4) = v14;
      if (*a2 < *a1 || *a2 <= *a1 && ((v25 = *(a2 + 1), v26 = *(a1 + 4), v25 < v26) || v25 <= v26 && *(a2 + 4) < *(a1 + 16)))
      {
        v17 = *a1;
        v18 = *(a1 + 16);
        *a1 = *a2;
        v19 = a2[1];
        *(a1 + 16) = *(a2 + 4);
        v20 = *(a1 + 8);
        *(a1 + 8) = v19;
        *a2 = v17;
        a2[1] = v20;
        *(a2 + 4) = v18;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, a2, a3, a4);
  if (*a5 < *a4 || *a5 <= *a4 && ((v27 = *(a5 + 4), v28 = *(a4 + 4), v27 < v28) || v27 <= v28 && *(a5 + 16) < *(a4 + 16)))
  {
    v11 = *a4;
    v12 = *(a4 + 16);
    *a4 = *a5;
    v13 = *(a5 + 8);
    *(a4 + 16) = *(a5 + 16);
    v14 = *(a4 + 8);
    *(a4 + 8) = v13;
    *a5 = v11;
    *(a5 + 8) = v14;
    *(a5 + 16) = v12;
    if (*a4 < *a3 || *a4 <= *a3 && ((v29 = *(a4 + 4), v30 = *(a3 + 4), v29 < v30) || v29 <= v30 && *(a4 + 16) < *(a3 + 16)))
    {
      v15 = *a3;
      v16 = *(a3 + 16);
      *a3 = *a4;
      v17 = *(a4 + 8);
      *(a3 + 16) = *(a4 + 16);
      v18 = *(a3 + 8);
      *(a3 + 8) = v17;
      *a4 = v15;
      *(a4 + 8) = v18;
      *(a4 + 16) = v16;
      if (*a3 < *a2 || *a3 <= *a2 && ((v31 = *(a3 + 4), v32 = *(a2 + 4), v31 < v32) || v31 <= v32 && *(a3 + 16) < *(a2 + 16)))
      {
        v19 = *a2;
        v20 = *(a2 + 16);
        *a2 = *a3;
        v21 = *(a3 + 8);
        *(a2 + 16) = *(a3 + 16);
        v22 = *(a2 + 8);
        *(a2 + 8) = v21;
        *a3 = v19;
        *(a3 + 8) = v22;
        *(a3 + 16) = v20;
        if (*a2 < *a1 || *a2 <= *a1 && ((v33 = *(a2 + 4), v34 = *(a1 + 4), v33 < v34) || v33 <= v34 && *(a2 + 16) < *(a1 + 16)))
        {
          v23 = *a1;
          v24 = *(a1 + 16);
          *a1 = *a2;
          v25 = *(a2 + 8);
          *(a1 + 16) = *(a2 + 16);
          v26 = *(a1 + 8);
          *(a1 + 8) = v25;
          *a2 = v23;
          *(a2 + 8) = v26;
          *(a2 + 16) = v24;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 20;
  if (result + 20 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = *(v5 + 20);
    if (v6 >= *v5)
    {
      if (v6 > *v5)
      {
        goto LABEL_21;
      }

      v15 = *(v5 + 24);
      v16 = *(v5 + 4);
      if (v15 >= v16 && (v15 > v16 || *(v5 + 36) >= *(v5 + 16)))
      {
        goto LABEL_21;
      }
    }

    v7 = *(v5 + 20);
    v8 = *(v5 + 28);
    v9 = *(v5 + 36);
    *(v5 + 20) = *v5;
    *(v4 + 8) = *(v5 + 8);
    *(v4 + 16) = *(v5 + 16);
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_20;
    }

    v11 = v3;
    while (1)
    {
      v12 = result + v11;
      v13 = *(result + v11 - 20);
      if (v13 <= v7)
      {
        if (v13 < v7)
        {
          goto LABEL_19;
        }

        v14 = *(result + v11 - 16);
        if (v14 <= SHIDWORD(v7))
        {
          break;
        }
      }

LABEL_12:
      v5 -= 20;
      *v12 = *(v12 - 20);
      *(v12 + 8) = *(v12 - 12);
      *(v12 + 16) = *(v12 - 4);
      v11 -= 20;
      if (!v11)
      {
        v10 = result;
        goto LABEL_20;
      }
    }

    if (v14 >= SHIDWORD(v7))
    {
      v10 = result + v11;
      if (v9 >= *(result + v11 - 4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

LABEL_19:
    v10 = v5;
LABEL_20:
    *v10 = v7;
    *(v10 + 8) = v8;
    *(v10 + 16) = v9;
LABEL_21:
    v2 = v4 + 20;
    v3 += 20;
  }

  while (v4 + 20 != a2);
  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 20);
    if ((result + 20) != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = *(v4 + 5);
        if (v5 < *v4 || v5 <= *v4 && ((v14 = *(v4 + 6), v15 = *(v4 + 1), v14 < v15) || v14 <= v15 && *(v4 + 9) < *(v4 + 4)))
        {
          v6 = *result;
          v7 = *(v4 + 28);
          v8 = *(v4 + 9);
          v9 = HIDWORD(*result);
          v10 = v3;
          do
          {
            do
            {
              v11 = v10;
              *(v10 + 12) = *(v10 - 1);
              *(v10 + 20) = *v10;
              *(v10 + 7) = *(v10 + 2);
              v12 = *(v10 - 7);
              v10 = (v10 - 20);
            }

            while (v12 > v6);
            if (v12 < v6)
            {
              break;
            }

            v13 = *(v11 - 6);
          }

          while (v13 > v9 || v13 >= v9 && v8 < *(v11 - 3));
          *(v11 - 1) = v6;
          *v11 = v7;
          *(v11 + 2) = v8;
        }

        v2 = (result + 20);
        v3 = (v3 + 20);
      }

      while ((result + 20) != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &>(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a2 - 20);
  v5 = HIDWORD(*a1);
  if (v4 > *a1 || v4 >= *a1 && ((v25 = *(a2 - 16), v25 > v5) || v25 >= v5 && v3 < *(a2 - 4)))
  {
    i = a1;
    while (1)
    {
      v8 = *(i + 5);
      i = (i + 20);
      v7 = v8;
      if (v8 > v2)
      {
        break;
      }

      if (v7 >= v2)
      {
        v9 = *(i + 1);
        if (v9 > v5 || v9 >= v5 && v3 < *(i + 4))
        {
          break;
        }
      }
    }
  }

  else
  {
    for (i = (a1 + 20); i < a2; i = (i + 20))
    {
      if (*i > v2)
      {
        break;
      }

      if (*i >= v2)
      {
        v24 = *(i + 1);
        if (v24 > v5 || v24 >= v5 && v3 < *(i + 4))
        {
          break;
        }
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 20; ; a2 -= 20)
    {
      if (v4 <= v2)
      {
        if (v4 < v2)
        {
          break;
        }

        v10 = *(a2 + 4);
        if (v10 <= v5 && (v10 < v5 || v3 >= *(a2 + 16)))
        {
          break;
        }
      }

      v11 = *(a2 - 20);
      v4 = v11;
    }
  }

  v12 = a1[1];
  while (i < a2)
  {
    v13 = *i;
    v14 = *(i + 4);
    *i = *a2;
    v15 = *(a2 + 8);
    *(i + 4) = *(a2 + 16);
    v16 = i[1];
    i[1] = v15;
    *a2 = v13;
    *(a2 + 8) = v16;
    *(a2 + 16) = v14;
    while (1)
    {
      v18 = *(i + 5);
      i = (i + 20);
      v17 = v18;
      if (v18 > v2)
      {
        break;
      }

      if (v17 >= v2)
      {
        v19 = *(i + 1);
        if (v19 > v5 || v19 >= v5 && v3 < *(i + 4))
        {
          break;
        }
      }
    }

    do
    {
      do
      {
        v20 = *(a2 - 20);
        a2 -= 20;
        v21 = v20 < v2;
      }

      while (v20 > v2);
      if (v21)
      {
        break;
      }

      v22 = *(a2 + 4);
    }

    while (v22 > v5 || v22 >= v5 && v3 < *(a2 + 16));
  }

  if ((i - 20) != a1)
  {
    *a1 = *(i - 20);
    a1[1] = *(i - 12);
    *(a1 + 4) = *(i - 1);
  }

  *(i - 20) = v2;
  *(i - 12) = v12;
  *(i - 1) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  v6 = HIDWORD(*a1);
  while (1)
  {
    v7 = *(a1 + v2 + 20);
    if (v7 >= v3)
    {
      if (v7 > v3)
      {
        break;
      }

      v8 = *(a1 + v2 + 24);
      if (v8 >= v6 && (v8 > v6 || *(a1 + v2 + 36) >= v5))
      {
        break;
      }
    }

    v2 += 20;
  }

  v9 = a1 + v2 + 20;
  if (v2)
  {
    while (1)
    {
      v11 = *(a2 - 20);
      a2 -= 20;
      v10 = v11;
      if (v11 < v3)
      {
        break;
      }

      if (v10 <= v3)
      {
        v12 = *(a2 + 4);
        if (v12 < v6 || v12 <= v6 && *(a2 + 16) < v5)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_25:
    if (v9 < a2)
    {
      do
      {
        v14 = *(a2 - 20);
        a2 -= 20;
        v13 = v14;
        if (v14 < v3)
        {
          break;
        }

        if (v13 > v3)
        {
          goto LABEL_25;
        }

        v15 = *(a2 + 4);
        if (v15 < v6)
        {
          break;
        }

        if (v15 > v6)
        {
          goto LABEL_25;
        }
      }

      while (*(a2 + 16) >= v5 && v9 < a2);
    }
  }

  v17 = v9;
  if (v9 < a2)
  {
    v18 = a2;
    do
    {
      v19 = *v17;
      v20 = *(v17 + 16);
      *v17 = *v18;
      v21 = *(v18 + 8);
      *(v17 + 16) = *(v18 + 16);
      v22 = *(v17 + 8);
      *(v17 + 8) = v21;
      *v18 = v19;
      *(v18 + 8) = v22;
      *(v18 + 16) = v20;
      do
      {
        do
        {
          v23 = *(v17 + 20);
          v17 += 20;
          v26 = __OFSUB__(v23, v3);
          v24 = v23 == v3;
          v25 = v23 - v3 < 0;
        }

        while (v23 < v3);
        if (!(v25 ^ v26 | v24))
        {
          break;
        }

        v27 = *(v17 + 4);
      }

      while (v27 < v6 || v27 <= v6 && *(v17 + 16) < v5);
      while (1)
      {
        v29 = *(v18 - 20);
        v18 -= 20;
        v28 = v29;
        if (v29 < v3)
        {
          break;
        }

        if (v28 <= v3)
        {
          v30 = *(v18 + 4);
          if (v30 < v6 || v30 <= v6 && *(v18 + 16) < v5)
          {
            break;
          }
        }
      }
    }

    while (v17 < v18);
  }

  if ((v17 - 20) != a1)
  {
    *a1 = *(v17 - 20);
    a1[1] = *(v17 - 12);
    *(a1 + 4) = *(v17 - 4);
  }

  *(v17 - 20) = v3;
  *(v17 - 12) = v4;
  *(v17 - 4) = v5;
  return v17 - 20;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 20);
        if (v5 < *a1 || v5 <= *a1 && ((v25 = *(a2 - 16), v26 = *(a1 + 4), v25 < v26) || v25 <= v26 && *(a2 - 4) < *(a1 + 16)))
        {
          v6 = *a1;
          v7 = *(a1 + 16);
          *a1 = *(a2 - 20);
          v8 = *(a2 - 12);
          *(a1 + 16) = *(a2 - 4);
          v9 = *(a1 + 8);
          *(a1 + 8) = v8;
          *(a2 - 20) = v6;
          *(a2 - 12) = v9;
          *(a2 - 4) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a2 - 20));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a1 + 40), (a2 - 20));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, a1 + 20, a1 + 40, a1 + 60, a2 - 20);
      return 1;
  }

LABEL_11:
  v10 = a1 + 40;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a1 + 40));
  v11 = a1 + 60;
  if (a1 + 60 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (*v11 < *v10 || *v11 <= *v10 && ((v22 = *(v11 + 4), v23 = *(v10 + 4), v22 < v23) || v22 <= v23 && *(v11 + 16) < *(v10 + 16)))
    {
      v14 = *v11;
      v15 = *(v11 + 8);
      v16 = *(v11 + 16);
      *v11 = *v10;
      *(v11 + 8) = *(v10 + 8);
      *(v11 + 16) = *(v10 + 16);
      v17 = v12;
      while (1)
      {
        v18 = a1 + v17;
        v19 = *(a1 + v17 + 20);
        if (v19 <= v14)
        {
          if (v19 < v14)
          {
            break;
          }

          v20 = *(a1 + v17 + 24);
          if (v20 <= SHIDWORD(v14) && (v20 < SHIDWORD(v14) || v16 >= *(a1 + v17 + 36)))
          {
            break;
          }
        }

        *(v18 + 40) = *(v18 + 20);
        *(v18 + 48) = *(v18 + 28);
        *(v18 + 56) = *(v18 + 36);
        v17 -= 20;
        if (v17 == -40)
        {
          v21 = a1;
          goto LABEL_28;
        }
      }

      v21 = a1 + v17 + 40;
LABEL_28:
      *v21 = v14;
      *(v21 + 8) = v15;
      *(v21 + 16) = v16;
      if (++v13 == 8)
      {
        return v11 + 20 == a2;
      }
    }

    v10 = v11;
    v12 += 20;
    v11 += 20;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
    if (a2 - a1 >= 21)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 20 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v9, v12);
        v12 = (v12 - 20);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (*v13 < *a1 || *v13 <= *a1 && ((v18 = *(v13 + 1), v19 = *(a1 + 4), v18 < v19) || v18 <= v19 && *(v13 + 4) < *(a1 + 16)))
        {
          v14 = *v13;
          v15 = *(v13 + 4);
          *v13 = *a1;
          v16 = *(a1 + 8);
          *(v13 + 4) = *(a1 + 16);
          v17 = v13[1];
          v13[1] = v16;
          *a1 = v14;
          *(a1 + 8) = v17;
          *(a1 + 16) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v9, a1);
        }

        v13 = (v13 + 20);
      }

      while (v13 != a3);
    }

    if (v8 >= 21)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2);
      v21 = a2 - 20;
      do
      {
        v22 = *a1;
        v24 = *(a1 + 8);
        v23 = *(a1 + 12);
        v25 = *(a1 + 16);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v20);
        if (v21 == v26)
        {
          *v26 = v22;
          *(v26 + 8) = v24;
          *(v26 + 12) = v23;
          *(v26 + 16) = v25;
        }

        else
        {
          *v26 = *v21;
          *(v26 + 8) = *(v21 + 8);
          *(v26 + 16) = *(v21 + 16);
          *v21 = v22;
          *(v21 + 8) = v24;
          *(v21 + 12) = v23;
          *(v21 + 16) = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, v26 + 20, a4, 0xCCCCCCCCCCCCCCCDLL * ((v26 + 20 - a1) >> 2));
        }

        v21 -= 20;
      }

      while (v20-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 2)))
    {
      v5 = (0x999999999999999ALL * ((a4 - result) >> 2)) | 1;
      v6 = (result + 20 * v5);
      if ((0x999999999999999ALL * ((a4 - result) >> 2) + 2) < a3)
      {
        v7 = *(v6 + 5);
        if (*v6 < v7 || *v6 <= v7 && ((v20 = *(v6 + 1), v21 = *(v6 + 6), v20 < v21) || v20 <= v21 && *(v6 + 4) < *(v6 + 9)))
        {
          v6 = (v6 + 20);
          v5 = 0x999999999999999ALL * ((a4 - result) >> 2) + 2;
        }
      }

      if (*v6 >= *a4)
      {
        if (*v6 > *a4 || (v18 = *(v6 + 1), v19 = *(a4 + 1), v18 >= v19) && (v18 > v19 || *(v6 + 4) >= *(a4 + 4)))
        {
          v8 = *a4;
          v9 = a4[1];
          v10 = *(a4 + 4);
          *a4 = *v6;
          a4[1] = v6[1];
          *(a4 + 4) = *(v6 + 4);
          if (v4 >= v5)
          {
            while (1)
            {
              v11 = v6;
              v12 = 2 * v5;
              v5 = (2 * v5) | 1;
              v6 = (result + 20 * v5);
              v13 = v12 + 2;
              if (v13 < a3)
              {
                v14 = *(v6 + 5);
                if (*v6 < v14 || *v6 <= v14 && ((v16 = *(v6 + 1), v17 = *(v6 + 6), v16 < v17) || v16 <= v17 && *(v6 + 4) < *(v6 + 9)))
                {
                  v6 = (v6 + 20);
                  v5 = v13;
                }
              }

              if (*v6 < v8)
              {
                break;
              }

              if (*v6 <= v8)
              {
                v15 = *(v6 + 1);
                if (v15 < SHIDWORD(v8) || v15 <= SHIDWORD(v8) && *(v6 + 4) < v10)
                {
                  break;
                }
              }

              *v11 = *v6;
              v11[1] = v6[1];
              *(v11 + 4) = *(v6 + 4);
              if (v4 < v5)
              {
                goto LABEL_34;
              }
            }

            v6 = v11;
          }

LABEL_34:
          *v6 = v8;
          v6[1] = v9;
          *(v6 + 4) = v10;
        }
      }
    }
  }

  return result;
}

double std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(double *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 5 * v3;
    a1 = (v5 + 5);
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[10];
      v9 = v5[5];
      if (v9 < v8 || v9 <= v8 && ((v11 = v5[6], v12 = v5[11], v11 < v12) || v11 <= v12 && v5[9] < v5[14]))
      {
        a1 = (v5 + 10);
        v3 = v7;
      }
    }

    *v4 = *a1;
    result = a1[1];
    v4[1] = result;
    *(v4 + 4) = *(a1 + 4);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Compare &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 20 * (v4 >> 1);
    v7 = *(a2 - 20);
    if (*v6 < v7 || *v6 <= v7 && ((v14 = *(v6 + 4), v15 = *(a2 - 16), v14 < v15) || v14 <= v15 && *(v6 + 16) < *(a2 - 4)))
    {
      v8 = *(a2 - 20);
      v9 = *(a2 - 12);
      v10 = *(a2 - 4);
      *(a2 - 20) = *v6;
      *(a2 - 12) = *(v6 + 8);
      *(a2 - 4) = *(v6 + 16);
      if (v4 >= 2)
      {
        while (1)
        {
          v11 = v6;
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v6 = result + 20 * v5;
          if (*v6 >= v8)
          {
            if (*v6 > v8)
            {
              break;
            }

            v13 = *(v6 + 4);
            if (v13 >= SHIDWORD(v8) && (v13 > SHIDWORD(v8) || *(v6 + 16) >= v10))
            {
              break;
            }
          }

          *v11 = *v6;
          *(v11 + 8) = *(v6 + 8);
          *(v11 + 16) = *(v6 + 16);
          if (v12 <= 1)
          {
            goto LABEL_17;
          }
        }

        v6 = v11;
      }

LABEL_17:
      *v6 = v8;
      *(v6 + 8) = v9;
      *(v6 + 16) = v10;
    }
  }

  return result;
}

uint64_t std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *>,std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *>,fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Equal &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v7 = a1 + 20;
      if (a1 + 20 == a2)
      {
        break;
      }

      v8 = fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Equal::operator()(a3, a1, a1 + 20);
      a1 = v7;
      if (v8)
      {
        v9 = v7 - 20;
        goto LABEL_6;
      }
    }

    v9 = a2;
LABEL_6:
    result = a2;
    if (v9 != a2)
    {
      for (i = v9 + 40; i != a2; i += 20)
      {
        if (!fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Equal::operator()(a3, v9, i))
        {
          *(v9 + 20) = *i;
          v9 += 20;
          *(v9 + 8) = *(i + 8);
          *(v9 + 16) = *(i + 16);
        }
      }

      return v9 + 20;
    }
  }

  return result;
}

BOOL fst::ArcUniqueMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Equal::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3 || *(a2 + 4) != *(a3 + 4) || *(a2 + 16) != *(a3 + 16))
  {
    return 0;
  }

  if (*(a2 + 8) == *(a3 + 8))
  {
    return *(a2 + 12) == *(a3 + 12);
  }

  return 0;
}

void std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__append(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 2) >= a2)
  {
    a1[1] = v4 + 20 * (20 * a2 / 0x14);
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    v13 = a1;
    if (v8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, v8);
    }

    __p = 0;
    v10 = 20 * v5;
    v11 = 20 * v5 + 20 * (20 * a2 / 0x14);
    v12 = 0;
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__swap_out_circular_buffer(a1, &__p);
    if (v11 != v10)
    {
      v11 = (v11 - v10 - 20) % 0x14 + v10;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1B53A0018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::RmFinalEpsilon<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  v2 = 0;
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, v1);
}

void sub_1B53A0884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    operator delete(v25);
  }

  v26 = *(v23 - 96);
  if (v26)
  {
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~EncodeMapper(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 80) - 1;
  *(v2 + 80) = v3;
  if (!v3)
  {
    v4 = fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~EncodeTable(v2);
    MEMORY[0x1B8C85350](v4, 0x10A0C40782F6942);
  }

  return a1;
}

void *fst::EncodeTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~EncodeTable(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        MEMORY[0x1B8C85350](v5, 0x1000C40451B5BE8);
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[11];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 4));
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void LMThreads::freeThread(LMThreads *this)
{
  LM::freeThread(this);
  LMStats::freeThread(v1);
  NBestHyp::freeThread(v2);
  Vocab::freeThread(v3);
  WordMesh::freeThread(v4);
  XCount::freeThread(v5);
  RefList_freeThread();
  wordError_freeThread();
  DStructThreads::freeThread(v6);
  v7 = countSentenceWidsTLS();
  if (*v7)
  {
    free(*v7);
    *v7 = 0;
  }

  v8 = writeBufferTLS();
  if (*v8)
  {
    free(*v8);
    *v8 = 0;
  }
}

double kaldi::BeamSearchDecoder::BeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  if (*(a1 + 4) <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "opts_.max_steps > 0", 19);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  if (*(a1 + 8) <= 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "opts_.beam > 0", 14);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

void sub_1B53A0D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *(v9 + 232);
  if (v12)
  {
    *(v9 + 240) = v12;
    operator delete(v12);
  }

  a9 = (v9 + 208);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v13 = *(v9 + 184);
  if (v13)
  {
    *(v9 + 192) = v13;
    operator delete(v13);
  }

  v14 = *(v9 + 160);
  if (v14)
  {
    *(v9 + 168) = v14;
    operator delete(v14);
  }

  v15 = *(v9 + 136);
  if (v15)
  {
    *(v9 + 144) = v15;
    operator delete(v15);
  }

  v16 = *(v9 + 112);
  if (v16)
  {
    *(v9 + 120) = v16;
    operator delete(v16);
  }

  v17 = *(v9 + 88);
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(v9 + 64);
  if (v18)
  {
    *(v9 + 72) = v18;
    operator delete(v18);
  }

  v19 = *v10;
  if (*v10)
  {
    *(v9 + 48) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void kaldi::BeamSearchDecoder::InitDecoding(kaldi::BeamSearchDecoder *this)
{
  *(this + 20) = xmmword_1B5AFD2B0;
  *(this + 6) = *(this + 5);
  std::vector<int>::vector[abi:ne200100](v6, *(this + 2));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  *(this + 4) = *v6;
  *(this + 10) = *&v6[16];
  std::vector<BOOL>::vector(v6, *(this + 2));
  v3 = *(this + 11);
  if (v3)
  {
    operator delete(v3);
  }

  *(this + 11) = *v6;
  *(this + 6) = *&v6[8];
  std::vector<int>::vector[abi:ne200100](v6, *(this + 2));
  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  *(this + 7) = *v6;
  *(this + 16) = *&v6[16];
  std::vector<float>::vector[abi:ne200100](v6, *(this + 2));
  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  *(this + 136) = *v6;
  *(this + 19) = *&v6[16];
  *(this + 21) = *(this + 20);
  *(this + 24) = *(this + 23);
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 26);
}

BOOL kaldi::BeamSearchDecoder::Finished(kaldi::BeamSearchDecoder *this)
{
  if (*(this + 8) == *(this + 1))
  {
    return 1;
  }

  v1 = *(this + 12);
  v2 = v1 & 0x3F;
  if (v1 <= 0x3F && v2 == 0)
  {
    return 1;
  }

  v4 = 0;
  v5 = *(this + 11);
  v6 = &v5[v1 >> 6];
  do
  {
    result = (*v5 & (1 << v4)) != 0;
    if ((*v5 & (1 << v4)) == 0)
    {
      break;
    }

    v5 += v4 == 63;
    if (v4 == 63)
    {
      v4 = 0;
    }

    else
    {
      ++v4;
    }
  }

  while (v4 != v2 || v5 != v6);
  return result;
}

uint64_t kaldi::BeamSearchDecoder::AdvanceDecoding(kaldi::BeamSearchDecoder *this, uint64_t a2, uint64_t a3)
{
  if (!*(this + 8))
  {
    *(this + 5) = (*(*a2 + 16))(a2);
    *(this + 6) = (*(*a2 + 24))(a2);
    *(this + 7) = (*(*a2 + 32))(a2);
    std::vector<int>::vector[abi:ne200100](&v16, *(this + 2));
    v6 = *(this + 5);
    if (v6)
    {
      *(this + 6) = v6;
      operator delete(v6);
      *(this + 5) = 0;
      *(this + 6) = 0;
      *(this + 7) = 0;
    }

    *(this + 40) = v16;
    *(this + 7) = v17;
    if ((*(this + 5) & 0x80000000) != 0 || (*(this + 6) & 0x80000000) != 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v16, "bos_index_ >= 0 && eos_index_ >= 0");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v16);
    }
  }

  v7 = 0;
  if (a3)
  {
    while (!kaldi::BeamSearchDecoder::Finished(this))
    {
      v16 = 0u;
      v17 = 0u;
      v18 = 1065353216;
      if (((**a2)(a2, *(this + 8), this + 64, this + 40, &v16, this + 232) & 1) == 0)
      {
        goto LABEL_29;
      }

      if (!*(&v17 + 1))
      {
        v10 = *(this + 2);
        LOBYTE(v14.__begin_) = 1;
        std::vector<BOOL>::vector(__p, v10);
        v11 = *(this + 11);
        if (v11)
        {
          operator delete(v11);
          *(this + 11) = 0;
          *(this + 12) = 0;
          *(this + 13) = 0;
        }

        *(this + 11) = *__p;
        *(this + 6) = *&__p[8];
LABEL_29:
        std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(&v16);
        return v7;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "loglikes");
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(&v16, __p);
      if (!v8)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "att_probs");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(&v16, __p);
      if (!v9)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      kaldi::BeamSearchDecoder::AdjustLogProbs(this, (v8 + 5));
      kaldi::BeamSearchDecoder::AdjustAttentionProbs(this, v9 + 5);
      *__p = *(this + 7);
      *&__p[16] = *(this + 16);
      *(this + 15) = 0;
      *(this + 16) = 0;
      *(this + 14) = 0;
      kaldi::BeamSearchDecoder::AdjustLengths(this, __p);
      kaldi::BeamSearchDecoder::Score(this, v8 + 5, v9 + 5, __p, &v14, *(this + 3), 0.0);
      if (!*(this + 8))
      {
        std::vector<int>::resize(&v14, (v14.__end_ - v14.__begin_) / *(this + 2));
      }

      kaldi::BeamSearchDecoder::ComputeTopIndices(this, &v14, &v13);
      kaldi::BeamSearchDecoder::UpdateDecoderState(this, v8 + 5, v9 + 5, __p, &v13);
      if (v13.__begin_)
      {
        v13.__end_ = v13.__begin_;
        operator delete(v13.__begin_);
      }

      if (v14.__begin_)
      {
        v14.__end_ = v14.__begin_;
        operator delete(v14.__begin_);
      }

      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(&v16);
      ++*(this + 8);
      v7 = (v7 + 1);
      if (a3 == v7)
      {
        return a3;
      }
    }
  }

  return v7;
}

void kaldi::BeamSearchDecoder::FinalizeDecoding(kaldi::BeamSearchDecoder *this)
{
  if (*(this + 8))
  {
    kaldi::BeamSearchDecoder::Score(this, this + 17, this + 20, this + 14, v3, *(this + 3), *(this + 4));
    kaldi::BeamSearchDecoder::ComputeTopIndices(this, v3, &__p);
    kaldi::BeamSearchDecoder::FinalizeDecoderState(this, v3, &__p);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v3[0])
    {
      v3[1] = v3[0];
      operator delete(v3[0]);
    }
  }
}

void sub_1B53A13F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::BeamSearchDecoder::AdjustLogProbs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *a2;
    v5 = ((*(a2 + 8) - *a2) >> 2) / v2;
    v6 = *(result + 136);
    v7 = *(result + 88);
    v8 = vdupq_n_s64(v5 - 1);
    do
    {
      v9 = &v4[v5];
      if ((*(v7 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        if (v5 >= 1)
        {
          v10 = 0;
          v11 = v4 + 2;
          do
          {
            v12 = vdupq_n_s64(v10);
            v13 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v12, xmmword_1B5AE0060)));
            if (vuzp1_s16(v13, *v8.i8).u8[0])
            {
              *(v11 - 2) = -8388609;
            }

            if (vuzp1_s16(v13, *&v8).i8[2])
            {
              *(v11 - 1) = -8388609;
            }

            if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v12, xmmword_1B5AE0050)))).i32[1])
            {
              *v11 = -8388609;
              v11[1] = -8388609;
            }

            v10 += 4;
            v11 += 4;
          }

          while (((v5 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v10);
        }

        v4[*(result + 24)] = *(v6 + 4 * v3);
      }

      else if (v5 << 32)
      {
        do
        {
          *v4 = *(v6 + 4 * v3) + *v4;
          ++v4;
        }

        while (v4 != v9);
      }

      ++v3;
      v4 = v9;
    }

    while (v3 != v2);
  }

  return result;
}

void *kaldi::BeamSearchDecoder::AdjustAttentionProbs(void *result, char **a2)
{
  v3 = result[20];
  v2 = result[21];
  if (v3 != v2)
  {
    v4 = result;
    v5 = *(result + 2);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = *a2;
      v8 = ((v2 - v3) >> 2) / v5;
      v9 = v8 << 32;
      v10 = v8;
      v11 = 4 * v8;
      v12 = (((a2[1] - *a2) >> 2) / v5);
      do
      {
        if ((*(v4[11] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
        {
          if (v9)
          {
            result = memmove(v7, v3, v11);
            LODWORD(v5) = *(v4 + 2);
          }
        }

        else
        {
          v13 = v7;
          v14 = v3;
          if (v3 != &v3[v11])
          {
            do
            {
              v15 = *v14++;
              *v13 = v15 + *v13;
              ++v13;
            }

            while (v14 != &v3[v11]);
          }
        }

        v3 += 4 * v10;
        v7 += 4 * v12;
        ++v6;
      }

      while (v6 < v5);
    }
  }

  return result;
}

uint64_t kaldi::BeamSearchDecoder::AdjustLengths(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 88);
    do
    {
      if (((*(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        ++*(*a2 + 4 * v3);
        v2 = *(result + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return result;
}

void kaldi::BeamSearchDecoder::Score(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int **a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  kaldi::BeamSearchDecoder::LengthPenalty(a4, v34, a6);
  kaldi::BeamSearchDecoder::CoveragePenalty(a1, a3, v33, a7);
  std::vector<float>::vector[abi:ne200100](a5, (a2[1] - *a2) >> 2);
  v14 = *(a1 + 8);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = *a2;
    v18 = ((a2[1] - *a2) >> 2) / v14;
    do
    {
      v19 = *(v33[0] + v15);
      v20 = v15 * v18;
      if (v18 >= 1)
      {
        v21 = *(v34[0] + v15);
        v22 = *a5;
        v23 = v16;
        do
        {
          *(v22 + 4 * v23) = v19 + (*(v17 + 4 * v23) / v21);
          ++v23;
        }

        while (v20 + v18 > v23);
      }

      v24 = *(a1 + 28);
      if (v24 != -1 && v24 < v18)
      {
        v26 = *(a1 + 40);
        if (v26 != *(a1 + 48) && *(v26 + 4 * v15) == v24)
        {
          v28 = (*a4)[v15] - 1;
          v30 = 0;
          v31 = 0;
          v29 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v29, &v28, &v29, 1uLL);
          kaldi::BeamSearchDecoder::LengthPenalty(&v29, __p, a6);
          v27 = *__p[0];
          __p[1] = __p[0];
          operator delete(__p[0]);
          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }

          v17 = *a2;
          *(*a5 + 4 * (v20 + *(a1 + 28))) = v19 + (*(*a2 + 4 * (v20 + *(a1 + 28))) / v27);
          LODWORD(v14) = *(a1 + 8);
        }
      }

      ++v15;
      v16 += v18;
    }

    while (v15 < v14);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }
}

void sub_1B53A1884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::BeamSearchDecoder::ComputeTopIndices(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  std::vector<int>::vector[abi:ne200100](a3, (a2[1] - *a2) >> 2);
  begin = a3->__begin_;
  end = a3->__end_;
  if (a3->__begin_ != end)
  {
    v8 = 0;
    v9 = (end - begin - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = begin + 2;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1B5AE0060)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1B5AE0050)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  v15 = *(a1 + 8);
  if (v15 >= ((a2[1] - *a2) >> 2))
  {
    v45 = a2;
    if (end - begin < 129)
    {
      v44 = 0;
      v41 = 0;
    }

    else
    {
      v40 = MEMORY[0x1E69E5398];
      v41 = end - begin;
      while (1)
      {
        v42 = operator new(4 * v41, v40);
        if (v42)
        {
          break;
        }

        v43 = v41 >> 1;
        v31 = v41 > 1;
        v41 >>= 1;
        if (!v31)
        {
          v44 = 0;
          v41 = v43;
          goto LABEL_43;
        }
      }

      v44 = v42;
    }

LABEL_43:
    std::__stable_sort<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(begin, end, &v45, end - begin, v44, v41);
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    v45 = a2;
    if (v15)
    {
      v16 = &begin[v15];
      if (v15 >= 2)
      {
        v17 = (v15 - 2) >> 1;
        v18 = &begin[v17];
        v19 = v17 + 1;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(begin, &v45, v15, v18--);
          --v19;
        }

        while (v19);
      }

      if (v16 != end)
      {
        v20 = &begin[v15];
        do
        {
          v21 = *v20;
          v22 = *begin;
          if (*(*a2 + 4 * v21) > *(*a2 + 4 * v22))
          {
            *v20 = v22;
            *begin = v21;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> kaldi::quasar::argsortn<float,false>(std::vector<float> const&,unsigned long)::{lambda(int,int)#1} &,std::__wrap_iter<int *>>(begin, &v45, v15, begin);
          }

          ++v20;
        }

        while (v20 != end);
      }

      if (v15 >= 2)
      {
        do
        {
          v23 = 0;
          v24 = *begin;
          v25 = v45;
          v26 = begin;
          do
          {
            v27 = v26;
            v26 += v23 + 1;
            v28 = 2 * v23;
            v23 = (2 * v23) | 1;
            v29 = v28 + 2;
            if (v29 < v15 && *(*v25 + 4 * *v26) > *(*v25 + 4 * v26[1]))
            {
              ++v26;
              v23 = v29;
            }

            *v27 = *v26;
          }

          while (v23 <= ((v15 - 2) >> 1));
          if (v26 == --v16)
          {
            *v26 = v24;
          }

          else
          {
            *v26 = *v16;
            *v16 = v24;
            v30 = (v26 - begin + 4) >> 2;
            v31 = v30 < 2;
            v32 = v30 - 2;
            if (!v31)
            {
              v33 = v32 >> 1;
              v34 = &begin[v33];
              v35 = *v34;
              v36 = *v26;
              v37 = *v25;
              v38 = *(v37 + 4 * v36);
              if (*(v37 + 4 * v35) > v38)
              {
                do
                {
                  v39 = v34;
                  *v26 = v35;
                  if (!v33)
                  {
                    break;
                  }

                  v33 = (v33 - 1) >> 1;
                  v34 = &begin[v33];
                  v35 = *v34;
                  v26 = v39;
                }

                while (*(v37 + 4 * v35) > v38);
                *v39 = v36;
              }
            }
          }

          v31 = v15-- <= 2;
        }

        while (!v31);
      }
    }

    std::vector<int>::resize(a3, *(a1 + 8));
  }
}

void sub_1B53A1C4C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::BeamSearchDecoder::UpdateDecoderState(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int **a5)
{
  v11 = (a1 + 64);
  v10 = *(a1 + 64);
  v12 = *(a1 + 8);
  v14 = *a3;
  v13 = a3[1];
  v15 = *a5;
  v16 = a5[1];
  v17 = ((a2[1] - *a2) >> 2) / v12;
  while (v15 != v16)
  {
    v18 = *v15++;
    *v10++ = v18 / v17;
  }

  memset(&v51, 0, sizeof(v51));
  kaldi::BeamSearchDecoder::Gather<int>(a1, (a1 + 40), (a1 + 64), &v51);
  v19 = *a5;
  v20 = a5[1];
  v21 = *(a1 + 40);
  if (*a5 != v20)
  {
    v22 = *(a1 + 40);
    do
    {
      v23 = *v19++;
      *v22++ = v23 % v17;
    }

    while (v19 != v20);
  }

  v24 = *(a1 + 48);
  if (v21 != v24)
  {
    v25 = 0;
    v26 = *(a1 + 88);
    v27 = *(a1 + 24);
    do
    {
      v28 = 1 << v25;
      if (v27 == *v21)
      {
        v29 = *v26 | v28;
      }

      else
      {
        v29 = *v26 & ~v28;
      }

      *v26 = v29;
      ++v21;
      v26 += v25 == 63;
      if (v25 == 63)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }
    }

    while (v21 != v24);
  }

  memset(&__p, 0, sizeof(__p));
  kaldi::BeamSearchDecoder::Gather<float>(a1, (a1 + 136), v11, &__p);
  kaldi::BeamSearchDecoder::Gather<float>(a1, a2, a5, (a1 + 136));
  kaldi::BeamSearchDecoder::GatherBlocks<float>(a1, a3, v11, ((v13 - v14) >> 2) / v12, (a1 + 160));
  kaldi::BeamSearchDecoder::Gather<int>(a1, a4, v11, (a1 + 112));
  v30 = *(a1 + 8);
  if (v30 <= 0)
  {
    __src = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v31 = 0;
    begin = v51.__begin_;
    do
    {
      v33 = *(a1 + 28);
      if (v33 != -1 && begin[v31] == v33 && *(*(a1 + 40) + 4 * v31) == v33)
      {
        --*(*(a1 + 112) + 4 * v31);
        v30 = *(a1 + 8);
      }

      ++v31;
    }

    while (v31 < v30);
    __src = 0;
    v48 = 0;
    v49 = 0;
    if (v30 >= 1)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = *(a1 + 40);
        v37 = *v11;
        v38 = *(*(a1 + 136) + 4 * v35) - *&__p.__begin_[v35];
        if (v34 >= v49)
        {
          v39 = __src;
          v40 = v34 - __src;
          v41 = 0xAAAAAAAAAAAAAAABLL * ((v34 - __src) >> 2);
          v42 = v41 + 1;
          if (v41 + 1 > 0x1555555555555555)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v49 - __src) >> 2) > v42)
          {
            v42 = 0x5555555555555556 * ((v49 - __src) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v49 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v43 = 0x1555555555555555;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(&__src, v43);
          }

          v44 = 12 * v41;
          *v44 = *(v36 + 4 * v35);
          *(v44 + 4) = v37[v35];
          *(v44 + 8) = v38;
          v34 = 12 * v41 + 12;
          v45 = (v44 - v40);
          memcpy((v44 - v40), v39, v40);
          v46 = __src;
          __src = v45;
          v48 = v34;
          v49 = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          *v34 = *(v36 + 4 * v35);
          *(v34 + 4) = v37[v35];
          *(v34 + 8) = v38;
          v34 += 12;
        }

        v48 = v34;
        ++v35;
      }

      while (v35 < *(a1 + 8));
    }
  }

  std::vector<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc>>>::push_back[abi:ne200100](a1 + 208, &__src);
  if (__src)
  {
    v48 = __src;
    operator delete(__src);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v51.__begin_)
  {
    v51.__end_ = v51.__begin_;
    operator delete(v51.__begin_);
  }
}

void sub_1B53A1FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::BeamSearchDecoder::FinalizeDecoderState(uint64_t a1, uint64_t *a2, int **a3)
{
  kaldi::BeamSearchDecoder::Gather<float>(a1, a2, a3, (a1 + 184));
  memset(&__p, 0, sizeof(__p));
  kaldi::BeamSearchDecoder::Gather<float>(a1, (a1 + 136), a3, &__p);
  v5 = *(a1 + 136);
  if (v5)
  {
    *(a1 + 144) = v5;
    operator delete(v5);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 136) = __p;
  memset(&__p, 0, sizeof(__p));
  v9 = 0uLL;
  v6 = (*(a1 + 216) - 24);
  v10 = 0;
  kaldi::BeamSearchDecoder::Gather<std::tuple<int,int,float>>(a1, v6, a3, &v9);
  v7 = *(a1 + 216);
  v8 = *(v7 - 24);
  if (v8)
  {
    *(v7 - 16) = v8;
    operator delete(v8);
    *(v7 - 24) = 0;
    *(v7 - 16) = 0;
    *(v7 - 8) = 0;
  }

  *(v7 - 24) = v9;
  *(v7 - 8) = v10;
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1B53A212C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::BeamSearchDecoder::Gather<int>(int a1, uint64_t *a2, int **a3, std::vector<unsigned int> *this)
{
  std::vector<int>::resize(this, a3[1] - *a3);
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    begin = this->__begin_;
    v10 = *a2;
    do
    {
      v11 = *v7++;
      *begin++ = *(v10 + 4 * v11);
    }

    while (v7 != v8);
  }
}

float kaldi::BeamSearchDecoder::Gather<float>(int a1, uint64_t *a2, int **a3, std::vector<unsigned int> *this)
{
  std::vector<int>::resize(this, a3[1] - *a3);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    begin = this->__begin_;
    v11 = *a2;
    do
    {
      v12 = *v8++;
      result = *(v11 + 4 * v12);
      *begin++ = result;
    }

    while (v8 != v9);
  }

  return result;
}

void kaldi::BeamSearchDecoder::GatherBlocks<float>(int a1, void *a2, void *a3, int a4, std::vector<unsigned int> *this)
{
  v9 = a4;
  std::vector<int>::resize(this, ((a3[1] - *a3) >> 2) * a4);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    begin = this->__begin_;
    do
    {
      if (a4)
      {
        memmove(begin, (*a2 + 4 * *v10 * a4), 4 * v9);
      }

      ++v10;
      begin += v9;
    }

    while (v10 != v11);
  }
}

float kaldi::BeamSearchDecoder::Gather<std::tuple<int,int,float>>(uint64_t a1, uint64_t *a2, int **a3, uint64_t *a4)
{
  std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::resize(a4, a3[1] - *a3);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v10 = *a4;
    v11 = *a2;
    do
    {
      v12 = *v8++;
      v13 = (v11 + 12 * v12);
      v14 = *v13;
      result = v13[2];
      v15 = HIDWORD(*v13);
      *v10 = v14;
      *(v10 + 4) = v15;
      *(v10 + 8) = result;
      v10 += 12;
    }

    while (v8 != v9);
  }

  return result;
}

BOOL kaldi::BeamSearchDecoder::ReachedFinal(kaldi::BeamSearchDecoder *this, int a2)
{
  v11 = a2;
  v2 = (this + 8);
  if (a2 != -1 && *v2 >= a2)
  {
    v2 = &v11;
  }

  v3 = *v2;
  if ((v3 & 0x80000000) != 0)
  {
    v4 = -((63 - v3) >> 6);
  }

  else
  {
    v4 = v3 >> 6;
  }

  v5 = v3 & 0x3F;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(this + 11);
  v9 = &v8[v4];
  do
  {
    result = (*v8 & (1 << v7)) != 0;
    if ((*v8 & (1 << v7)) != 0)
    {
      break;
    }

    v8 += v7 == 63;
    if (v7 == 63)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }
  }

  while (v7 != v5 || v8 != v9);
  return result;
}

uint64_t kaldi::BeamSearchDecoder::GetRawLattice(uint64_t a1, uint64_t a2, int a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v5 = (a1 + 8);
  if (a3 != -1 && *v5 >= a3)
  {
    v5 = &v48;
  }

  v6 = *v5;
  v48 = *v5;
  (*(*a2 + 224))(a2);
  if (*(a1 + 216) != *(a1 + 208))
  {
    if (v6)
    {
      v7 = (*(*a2 + 200))(a2);
      v50 = 0;
      v39 = v7;
      (*(*a2 + 184))(a2);
      v45 = 0u;
      v46 = 0u;
      v47 = 1065353216;
      LODWORD(v42) = 0;
      if (v6 >= 1)
      {
        do
        {
          v50 = &v42;
          *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v45, &v42) + 5) = v39;
          LODWORD(v42) = v42 + 1;
        }

        while (v42 < v6);
      }

      v8 = -1431655765 * ((*(a1 + 216) - *(a1 + 208)) >> 3) - 1;
      if ((v8 & 0x80000000) == 0)
      {
        do
        {
          v9 = *(a1 + 208);
          v42 = 0u;
          v43 = 0u;
          v44 = 1065353216;
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::swap(&v42, &v45);
          v10 = v43;
          if (v43)
          {
            v11 = (v9 + 24 * v8);
            do
            {
              v12 = *v11 + 12 * *(v10 + 4);
              v13 = *(v12 + 8);
              v14 = *v12;
              v40 = v14;
              v41 = v13;
              if (v14 == *(a1 + 24))
              {
                if (*a1)
                {
                  LODWORD(v14) = 0;
                }
              }

              else if (v14 == *(a1 + 20))
              {
                if (kaldi::g_kaldi_verbose_level >= -1)
                {
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
                  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Decoding output contains BOS label (", 36);
                  v16 = MEMORY[0x1B8C84C00](v15, *(a1 + 20));
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "). Mapping it to label 0.", 25);
                  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v50);
                }

                LODWORD(v14) = 0;
              }

              else if (!v14)
              {
                LODWORD(v14) = *(a1 + 20);
                if (kaldi::g_kaldi_verbose_level >= -1)
                {
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
                  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Decoding output contains label 0. Mapping it to BOS label (", 59);
                  v18 = MEMORY[0x1B8C84C00](v17, *(a1 + 20));
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ").", 2);
                  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v50);
                  LODWORD(v14) = *(a1 + 20);
                }
              }

              if (*(a1 + 1) == 1 && v40 == *(a1 + 28))
              {
                LODWORD(v14) = 0;
              }

              if (-1 - 0x5555555555555555 * ((*(a1 + 216) - *(a1 + 208)) >> 3) != v8 || (v19 = *(a1 + 184), v19 == *(a1 + 192)))
              {
                v20 = -0.0;
              }

              else
              {
                v20 = *(v19 + 4 * *(v10 + 4)) - *(*(a1 + 136) + 4 * *(v10 + 4));
              }

              v21 = *(v10 + 5);
              v50 = __PAIR64__(v14, v40);
              v51 = -v20;
              v52 = -v41;
              LODWORD(v53) = v21;
              v22 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v45, &v40 + 1);
              if (v22)
              {
                v23 = *(v22 + 5);
              }

              else
              {
                v23 = (*(*a2 + 200))(a2);
                v49 = &v40 + 4;
                *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v45, &v40 + 1) + 5) = v23;
              }

              (*(*a2 + 208))(a2, v23, &v50);
              v10 = *v10;
            }

            while (v10);
          }

          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v42);
        }

        while (v8-- > 0);
      }

      (*(*a2 + 176))(a2, *(v46 + 20));
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v45);
      v26 = *(a1 + 232);
      v25 = *(a1 + 240);
      goto LABEL_42;
    }

    return 0;
  }

  v26 = *(a1 + 232);
  v25 = *(a1 + 240);
  if (v25 == v26 || v6 == 0)
  {
    return 0;
  }

  v39 = 0;
LABEL_42:
  if (v25 != v26)
  {
    if ((*(*a2 + 24))(a2) == -1)
    {
      v39 = (*(*a2 + 200))(a2);
      (*(*a2 + 176))(a2, v39);
    }

    v50 = vneg_f32(0x7F0000007FLL);
    (*(*a2 + 184))(a2, v39, &v50);
    v29 = *(a1 + 232);
    v30 = *(a1 + 240);
    if (v29 == v30)
    {
      v33 = v39;
    }

    else
    {
      do
      {
        v31 = *v29;
        v32 = *(v29 + 1);
        v33 = (*(*a2 + 200))(a2);
        if (v31 == *(a1 + 24))
        {
          if (*a1)
          {
            v34 = 0;
          }

          else
          {
            v34 = v31;
          }
        }

        else if (v31 == *(a1 + 20))
        {
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
            v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Decoding output contains BOS label (", 36);
            v36 = MEMORY[0x1B8C84C00](v35, *(a1 + 20));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "). Mapping it to label 0.", 25);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v50);
          }

          v34 = 0;
        }

        else
        {
          v34 = v31;
          if (!v31)
          {
            v34 = *(a1 + 20);
            if (kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
              v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Decoding output contains label 0. Mapping it to BOS label (", 59);
              v38 = MEMORY[0x1B8C84C00](v37, *(a1 + 20));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ").", 2);
              kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v50);
              v34 = *(a1 + 20);
            }
          }
        }

        if (*(a1 + 1) == 1 && v31 == *(a1 + 28))
        {
          v34 = 0;
        }

        v50 = __PAIR64__(v34, v31);
        v51 = 0.0;
        v52 = -v32;
        LODWORD(v53) = v33;
        (*(*a2 + 208))(a2, v39, &v50);
        v29 += 2;
        v39 = v33;
      }

      while (v29 != v30);
    }

    v50 = 0;
    (*(*a2 + 184))(a2, v33, &v50);
  }

  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsLocalClass(&v50, a2);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  return 1;
}

void sub_1B53A2B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void kaldi::BeamSearchDecoder::LengthPenalty(int **a1@<X1>, void *a2@<X8>, float a3@<S0>)
{
  v5 = std::vector<float>::vector[abi:ne200100](a2, a1[1] - *a1);
  if (a3 != 0.0)
  {
    v7 = a1;
    v6 = *a1;
    v8 = v7[1] - v6;
    if (v8)
    {
      v9 = v8 >> 2;
      v10 = a3;
      v11 = *v5;
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      do
      {
        v13 = *v6++;
        v14 = pow((v13 + 5.0) / 6.0, v10);
        *v11++ = v14;
        --v12;
      }

      while (v12);
    }
  }
}

void kaldi::BeamSearchDecoder::CoveragePenalty(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a1 + 8);
  v10 = std::vector<float>::vector[abi:ne200100](a3, v9);
  if (a4 != 0.0)
  {
    v11 = *(a1 + 8);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = ((v7 - v8) >> 2) / v9;
      v15 = *a2;
      v16 = *v10;
      do
      {
        v17 = v12 + 1;
        v18 = *(v16 + 4 * v12);
        if (v14 >= 1)
        {
          v19 = v13;
          do
          {
            v20 = *(v15 + 4 * v19);
            v21 = 1.0;
            if (v20 > 1.0 || (v22 = v20 < 0.000001, v21 = *(v15 + 4 * v19), v23 = 0.000001, !v22))
            {
              v23 = v21;
            }

            v18 = logf(v23) + v18;
            *(v16 + 4 * v12) = v18;
            ++v19;
          }

          while (v17 * v14 > v19);
        }

        *(v16 + 4 * v12) = v18 * a4;
        v13 += v14;
        ++v12;
      }

      while (v17 != v11);
    }
  }
}

int *std::__stable_sort<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) > *(**a3 + 4 * v10))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(result, v24, a3, v25, a5);
        v26 = &v22[v23];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * v30);
          v32 = *(*v28 + 4 * *v22);
          if (v31 <= v32)
          {
            LODWORD(v30) = *v22;
          }

          v22 += v31 <= v32;
          v29 += v31 > v32;
          *v8 = v30;
          v8 += 4;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8 = v34;
              v8 += 4;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22++;
          *v8 = v33;
          v8 += 4;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(result, v24, a3, v25, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v22, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(v8, &v8[4 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 > *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 4) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 4);
              v19 -= 4;
              if (v18 <= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 4);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 4;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

int *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 <= v13)
      {
        LODWORD(v10) = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 <= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v25 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(result, v25, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v26 = *a3;
      v27 = &v7[a4 >> 1];
      while (v27 != a2)
      {
        v28 = *v27;
        v29 = *(*v26 + 4 * v28);
        v30 = *(*v26 + 4 * *v7);
        if (v29 <= v30)
        {
          LODWORD(v28) = *v7;
        }

        v27 += v29 > v30;
        v7 += v29 <= v30;
        *v5++ = v28;
        if (v7 == v25)
        {
          while (v27 != a2)
          {
            v32 = *v27++;
            *v5++ = v32;
          }

          return result;
        }
      }

      while (v7 != v25)
      {
        v31 = *v7++;
        *v5++ = v31;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = *v14;
          if (*(v16 + 4 * v21) <= *(v16 + 4 * v20))
          {
            *v18 = v21;
          }

          else
          {
            v17[1] = v19;
            v22 = a5;
            if (v17 != a5)
            {
              v23 = v15;
              while (1)
              {
                v22 = (a5 + v23);
                v24 = *(a5 + v23 - 4);
                if (*(v16 + 4 * *v14) <= *(v16 + 4 * v24))
                {
                  break;
                }

                *v22 = v24;
                v23 -= 4;
                if (!v23)
                {
                  v22 = a5;
                  break;
                }
              }
            }

            *v22 = *v14;
          }

          ++v14;
          v15 += 4;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    v12 = result;
    while (v9 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = *a2;
      v15 = **a4;
      v16 = -a5;
      while (1)
      {
        v17 = *&v12[v13];
        if (*(v15 + 4 * v14) > *(v15 + 4 * v17))
        {
          break;
        }

        v13 += 4;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v19 = -v16;
      v58 = a3;
      v59 = a7;
      v57 = a4;
      v60 = a8;
      if (-v16 >= v9)
      {
        if (v16 == -1)
        {
          *&v12[v13] = v14;
          *a2 = v17;
          return result;
        }

        v28 = v19 / 2;
        v29 = &v12[4 * (v19 / 2)];
        v21 = a2;
        if (a2 != a3)
        {
          v30 = (a3 - a2) >> 2;
          v21 = a2;
          do
          {
            v31 = v30 >> 1;
            v32 = &v21[4 * (v30 >> 1)];
            v34 = *v32;
            v33 = v32 + 4;
            v30 += ~(v30 >> 1);
            if (*(v15 + 4 * v34) > *(v15 + 4 * *&v29[v13]))
            {
              v21 = v33;
            }

            else
            {
              v30 = v31;
            }
          }

          while (v30);
        }

        v20 = (v21 - a2) >> 2;
        v22 = &v29[v13];
      }

      else
      {
        v20 = v9 / 2;
        v21 = &a2[4 * (v9 / 2)];
        v22 = a2;
        if (a2 - v12 != v13)
        {
          v23 = (a2 - v12 - v13) >> 2;
          v22 = &v12[v13];
          do
          {
            v24 = v23 >> 1;
            v25 = &v22[4 * (v23 >> 1)];
            v27 = *v25;
            v26 = v25 + 4;
            v23 += ~(v23 >> 1);
            if (*(v15 + 4 * *v21) > *(v15 + 4 * v27))
            {
              v23 = v24;
            }

            else
            {
              v22 = v26;
            }
          }

          while (v23);
        }

        v28 = (v22 - v12 - v13) >> 2;
      }

      a5 = -(v28 + v16);
      v35 = v9 - v20;
      v36 = v28;
      v37 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v22, a2, v21);
      v38 = v36;
      v39 = v37;
      if (v38 + v20 >= v9 - (v38 + v20) - v16)
      {
        v42 = v38;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(v37, v21, v58, v57, a5, v35, v59, v60);
        v21 = v22;
        a4 = v57;
        v35 = v20;
        a7 = v59;
        a5 = v42;
        a3 = v39;
        v12 += v13;
      }

      else
      {
        v40 = v22;
        a4 = v57;
        v41 = v20;
        a7 = v59;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::BeamSearchDecoder::ComputeTopIndices(std::vector<float> const&)::$_1 &,std::__wrap_iter<int *>>(&v12[v13], v40, v37, v57, v38, v41, v59, v60);
        v12 = v39;
        a3 = v58;
      }

      v9 = v35;
      a2 = v21;
      a8 = v60;
      if (!v35)
      {
        return result;
      }
    }

    if (a5 <= v9)
    {
      if (a2 != v12)
      {
        v47 = -a7;
        v48 = a7;
        v49 = v12;
        do
        {
          v50 = *v49;
          v49 += 4;
          *v48++ = v50;
          v47 -= 4;
        }

        while (v49 != a2);
        v51 = *a4;
        while (a2 != a3)
        {
          v52 = *a2;
          v53 = *(*v51 + 4 * v52);
          v54 = *(*v51 + 4 * *a7);
          if (v53 <= v54)
          {
            LODWORD(v52) = *a7;
          }

          a2 += 4 * (v53 > v54);
          a7 += 4 * (v53 <= v54);
          *v12 = v52;
          v12 += 4;
          if (v48 == a7)
          {
            return result;
          }
        }

        return memmove(v12, a7, -(a7 + v47));
      }
    }

    else if (a2 != a3)
    {
      v43 = 0;
      do
      {
        *(a7 + v43) = *&a2[v43];
        v43 += 4;
      }

      while (&a2[v43] != a3);
      v44 = *a4;
      v45 = (a7 + v43);
      while (a2 != v12)
      {
        v46 = *(v45 - 1);
        if (*(*v44 + 4 * v46) <= *(*v44 + 4 * *(a2 - 1)))
        {
          --v45;
        }

        else
        {
          LODWORD(v46) = *(a2 - 1);
          a2 -= 4;
        }

        *(a3 - 1) = v46;
        a3 -= 4;
        if (v45 == a7)
        {
          return result;
        }
      }

      if (v45 != a7)
      {
        v55 = -4;
        do
        {
          v56 = *--v45;
          *&a3[v55] = v56;
          v55 -= 4;
        }

        while (v45 != a7);
      }
    }
  }

  return result;
}

void *TAllocator::clear(TAllocator *this)
{
  result = *(this + 4);
  if (result)
  {
    do
    {
      v3 = *result;
      MEMORY[0x1B8C85310]();
      result = v3;
    }

    while (v3);
  }

  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  return result;
}

void TAllocator::TAllocator(TAllocator *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

uint64_t TAllocator::allocate(TAllocator *this, uint64_t a2)
{
  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = this + 16;
  result = *(this + 2);
  if (*(v5 + 1) - result < v3)
  {
    if (v3 + 8 <= *(this + 1))
    {
      v6 = *(this + 1);
    }

    else
    {
      v6 = v3 + 8;
    }

    *this += v6;
    operator new[]();
  }

  *(this + 2) = result + v3;
  return result;
}

void DStructThreads::freeThread(DStructThreads *this)
{
  BM_freeThread();

  srilm_tserror_freeThread();
}

void quasar::GrammarFST::getAlternatives(unsigned __int8 ***a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        goto LABEL_4;
      }

      v8 = *(v3 + 23);
      if (v8 < 0)
      {
        if (v3[1] != 1)
        {
          goto LABEL_4;
        }

        v9 = *v3;
      }

      else
      {
        v9 = v3;
        if (v8 != 1)
        {
          goto LABEL_4;
        }
      }

      if (*v9 == 124)
      {
        std::vector<std::vector<std::string>>::push_back[abi:ne200100](a2, &v16);
        v13 = v16;
        v14 = v17;
        while (v14 != v13)
        {
          v15 = *(v14 - 1);
          v14 -= 3;
          if (v15 < 0)
          {
            operator delete(*v14);
          }
        }

        v17 = v13;
      }

LABEL_4:
      v6 = *(v3 + 23);
      if (*(v3 + 23) < 0)
      {
        if (v3[1] != 1 || **v3 != 91)
        {
          if (v3[1] != 1)
          {
            goto LABEL_21;
          }

          v7 = **v3;
LABEL_15:
          if (v7 != 40)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        if (v6 != 1)
        {
          goto LABEL_18;
        }

        v7 = *v3;
        if (v7 != 91)
        {
          goto LABEL_15;
        }
      }

      ++v5;
LABEL_17:
      if ((v6 & 0x80) == 0)
      {
LABEL_18:
        if (v6 != 1)
        {
          goto LABEL_24;
        }

        v10 = *v3;
        if (v10 != 93)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

LABEL_21:
      if (v3[1] != 1)
      {
        goto LABEL_26;
      }

      if (**v3 != 93)
      {
        if ((v6 & 0x80) != 0)
        {
LABEL_26:
          if (v3[1] != 1)
          {
            if (!v5)
            {
              goto LABEL_45;
            }

            goto LABEL_50;
          }

          v11 = *v3;
        }

        else
        {
LABEL_24:
          if (v6 != 1)
          {
            if (!v5)
            {
              goto LABEL_35;
            }

            goto LABEL_50;
          }

          v11 = v3;
        }

        v10 = *v11;
LABEL_29:
        if (v10 != 41)
        {
          goto LABEL_31;
        }
      }

LABEL_30:
      --v5;
LABEL_31:
      if (!v5)
      {
        if ((v6 & 0x80) != 0)
        {
LABEL_45:
          if (v3[1] == 1)
          {
            v12 = *v3;
LABEL_47:
            v5 = 0;
            if (*v12 == 124)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }
        }

        else
        {
LABEL_35:
          v12 = v3;
          if (v6 == 1)
          {
            goto LABEL_47;
          }
        }

        v5 = 0;
      }

LABEL_50:
      std::vector<std::string>::push_back[abi:ne200100](&v16, v3);
LABEL_51:
      v3 += 3;
    }

    while (v3 != v4);
  }

  std::vector<std::vector<std::string>>::push_back[abi:ne200100](a2, &v16);
  v19 = &v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1B53A38F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B53A3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  __cxa_end_catch();
  v11 = *(v9 - 208);
  if (v11)
  {
    *(v9 - 200) = v11;
    operator delete(v11);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v9 - 96));
  _Unwind_Resume(a1);
}

uint64_t quasar::GrammarFST::extractBracketedPart(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char *a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = (a3 + 1);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < v7)
  {
    return 0;
  }

  v11 = *a2 + 24 * a3;
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *v11, *(v11 + 8));
  }

  else
  {
    v12 = *v11;
    v38.__r_.__value_.__r.__words[2] = *(v11 + 16);
    *&v38.__r_.__value_.__l.__data_ = v12;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(v36, "");
  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_54;
    }

    v14 = v38.__r_.__value_.__s.__data_[0];
    if (v38.__r_.__value_.__s.__data_[0] != 91)
    {
      goto LABEL_16;
    }

LABEL_13:
    MEMORY[0x1B8C84820](v13, "]");
    v15 = 1;
    goto LABEL_18;
  }

  if (v38.__r_.__value_.__l.__size_ == 1 && *v38.__r_.__value_.__l.__data_ == 91)
  {
    goto LABEL_13;
  }

  if (v38.__r_.__value_.__l.__size_ != 1)
  {
    goto LABEL_54;
  }

  v14 = *v38.__r_.__value_.__l.__data_;
LABEL_16:
  if (v14 != 40)
  {
LABEL_54:
    if (quasar::gLogLevel >= 1)
    {
      memset(v35, 0, sizeof(v35));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "RegexParseError: expected [ or(at ", 36);
      v28 = MEMORY[0x1B8C84C00](v27, a3);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " but found ", 11);
      v30 = *a2 + 24 * a3;
      v31 = *(v30 + 23);
      if (v31 >= 0)
      {
        v32 = *a2 + 24 * a3;
      }

      else
      {
        v32 = *v30;
      }

      if (v31 >= 0)
      {
        v33 = *(v30 + 23);
      }

      else
      {
        v33 = *(v30 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v32, v33);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v35);
    }

    goto LABEL_62;
  }

  MEMORY[0x1B8C84820](v13, ")");
  v15 = 0;
LABEL_18:
  *a5 = v15;
  v16 = *a2;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v17 <= v7)
  {
LABEL_62:
    v8 = 0;
    goto LABEL_63;
  }

  v18 = 0;
  if ((v37 & 0x80u) == 0)
  {
    v19 = v37;
  }

  else
  {
    v19 = v36[1];
  }

  if ((v37 & 0x80u) == 0)
  {
    v20 = v36;
  }

  else
  {
    v20 = v36[0];
  }

  v21 = (v16 + 24 * v7);
  while (1)
  {
    if (v18)
    {
      v22 = v21[23];
      goto LABEL_35;
    }

    v22 = v21[23];
    v23 = *(v21 + 1);
    if ((v22 & 0x80u) == 0)
    {
      v23 = v21[23];
    }

    if (v23 == v19)
    {
      v24 = (v22 & 0x80u) == 0 ? v21 : *v21;
      if (!memcmp(v24, v20, v19))
      {
        break;
      }
    }

LABEL_35:
    if ((v22 & 0x80) == 0)
    {
      if (v22 != 1)
      {
        goto LABEL_52;
      }

      v25 = *v21;
      if (v25 == 40 || v25 == 91)
      {
        goto LABEL_45;
      }

      v26 = v21;
      if (v25 == 93)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (*(v21 + 1) == 1 && **v21 == 91 || *(v21 + 1) == 1 && **v21 == 40)
    {
LABEL_45:
      ++v18;
      goto LABEL_52;
    }

    if (*(v21 + 1) == 1 && **v21 == 93)
    {
LABEL_51:
      --v18;
      goto LABEL_52;
    }

    if (*(v21 + 1) == 1)
    {
      v26 = *v21;
LABEL_50:
      if (*v26 == 41)
      {
        goto LABEL_51;
      }
    }

LABEL_52:
    ++v7;
    v21 += 24;
    if (v17 <= v7)
    {
      goto LABEL_62;
    }
  }

  *a4 = v7;
  v8 = 1;
LABEL_63:
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_1B53A3F30(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::GrammarFST::compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  if (*a2 == *(a2 + 8))
  {
    *&v50 = 0;
    DWORD2(v50) = 0;
    HIDWORD(v50) = a4;
    (*(*a6 + 208))(a6, a3, &v50);
    return 1;
  }

  quasar::GrammarFST::getAlternatives(a2, &v68);
  v14 = v68;
  v15 = v69;
  if (0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3) <= 1)
  {
    v19 = *a2;
    if (*(a2 + 8) == *a2)
    {
      goto LABEL_77;
    }

    v43 = a5;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = &v19[3 * v20];
      if (*(v22 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, *v22, v22[1]);
      }

      else
      {
        v23 = *v22;
        v67.__r_.__value_.__r.__words[2] = v22[2];
        *&v67.__r_.__value_.__l.__data_ = v23;
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v67.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_47;
        }

        v25 = *v67.__r_.__value_.__l.__data_;
        if (v25 != 40 && v25 != 91)
        {
          if (v25 != 93 && *v67.__r_.__value_.__l.__data_ != 41)
          {
            if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_47;
            }

            v24 = *v67.__r_.__value_.__l.__data_;
LABEL_30:
            if (v24 != 124)
            {
LABEL_47:
              if (-1 - 0x5555555555555555 * ((*(a2 + 8) - *a2) >> 3) != v20)
              {
                (*(*a6 + 200))(a6);
              }

              LODWORD(v46[0]) = 0;
              quasar::GrammarFST::getWeight();
            }
          }

LABEL_31:
          if (quasar::gLogLevel >= 1)
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
            v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Unexpected regex found: '", 25);
            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v67;
            }

            else
            {
              v27 = v67.__r_.__value_.__r.__words[0];
            }

            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v67.__r_.__value_.__l.__size_;
            }

            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, size);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "' in '", 6);
            v46[0] = " ";
            v46[1] = 1;
            quasar::join<std::vector<std::string>>(a2, v46);
            if ((v49 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v49 & 0x80u) == 0)
            {
              v32 = v49;
            }

            else
            {
              v32 = v48;
            }

            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, p_p, v32);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "'", 1);
            if (v49 < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarErrorMessage::~QuasarErrorMessage(&v50);
          }

LABEL_58:
          v40 = 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) != 1)
        {
          goto LABEL_47;
        }

        v24 = v67.__r_.__value_.__s.__data_[0];
        if (v67.__r_.__value_.__s.__data_[0] > 0x5Au)
        {
          if (v67.__r_.__value_.__s.__data_[0] != 91)
          {
            if (v67.__r_.__value_.__s.__data_[0] != 93)
            {
              goto LABEL_30;
            }

            goto LABEL_31;
          }
        }

        else if (v67.__r_.__value_.__s.__data_[0] != 40)
        {
          if (v67.__r_.__value_.__s.__data_[0] != 41)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      LODWORD(v46[0]) = 0;
      v45 = 0;
      v13 = quasar::GrammarFST::extractBracketedPart(v13, a2, v21, v46, &v45);
      if ((v13 & 1) == 0)
      {
        if (quasar::gLogLevel >= 1)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Unbalanced parenthesis or brackets found in grammar", 51);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v50);
        }

        goto LABEL_58;
      }

      v34 = *a2;
      v35 = 24 * v20 + 24;
      v36 = SLODWORD(v46[0]);
      v37 = *a2 + 24 * SLODWORD(v46[0]);
      *&v51 = 0;
      v50 = 0uLL;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v50, v34 + v35, v37, 0xAAAAAAAAAAAAAAABLL * ((24 * SLODWORD(v46[0]) - v35) >> 3));
      v38 = a4;
      if (-1 - 0x5555555555555555 * ((*(a2 + 8) - *a2) >> 3) != v36)
      {
        v38 = (*(*a6 + 200))(a6);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v67.__r_.__value_.__l.__size_ == 1)
        {
          v39 = v67.__r_.__value_.__r.__words[0];
LABEL_61:
          if (v39->__r_.__value_.__s.__data_[0] == 91)
          {
            __p = 0;
            LODWORD(v48) = 0;
            HIDWORD(v48) = v38;
            (*(*a6 + 208))(a6, v9, &__p);
          }
        }
      }

      else if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) == 1)
      {
        v39 = &v67;
        goto LABEL_61;
      }

      v41 = quasar::GrammarFST::compile(a1, &v50, v9, v38, (v43 + 1), a6, a7);
      if (v41)
      {
        v21 = (v36 + 1);
      }

      else
      {
        v21 = v21;
      }

      if (v41)
      {
        v9 = v38;
      }

      else
      {
        v9 = v9;
      }

      if (v41)
      {
        v40 = 4;
      }

      else
      {
        v40 = 1;
      }

      __p = &v50;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_73:
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if ((v40 | 4) != 4)
      {
        v17 = 0;
        goto LABEL_78;
      }

      v20 = v21;
      v19 = *a2;
      if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= v21)
      {
        goto LABEL_77;
      }
    }
  }

  if (v68 == v69)
  {
LABEL_77:
    v17 = 1;
    goto LABEL_78;
  }

  do
  {
    v16 = quasar::GrammarFST::compile(a1, v14, v9, a4, 1, a6, a7);
    v17 = v16;
    v14 += 24;
    if (v14 == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }
  }

  while ((v18 & 1) != 0);
LABEL_78:
  *&v50 = &v68;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v50);
  return v17;
}

void sub_1B53A46C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  __p = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v25 - 121) < 0)
  {
    operator delete(*(v24 + 272));
  }

  a24 = v25 - 120;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void sub_1B53A4DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  std::ofstream::~ofstream(&__p, MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C85200](v38);
  _Unwind_Resume(a1);
}

void quasar::SpokenFormLine::getLineWithPrior(quasar::SpokenFormLine *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 56) == 1)
  {
    std::to_string(&v18, *this);
    v4 = std::string::insert(&v18, 0, "prior=");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v19, " ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v10 = *(this + 1);
    v9 = this + 8;
    v8 = v10;
    v11 = v9[23];
    if (v11 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    if (v11 >= 0)
    {
      v13 = v9[23];
    }

    else
    {
      v13 = *(v9 + 1);
    }

    v14 = std::string::append(&v20, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&a2->__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else if (*(this + 31) < 0)
  {
    v16 = *(this + 1);
    v17 = *(this + 2);

    std::string::__init_copy_ctor_external(a2, v16, v17);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void sub_1B53A5028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53A50DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::nnet1::Nnet>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x51B3BEA3677D46CFLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<kaldi::nnet1::Nnet>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 376 * a2;
    while (v3 != v7)
    {
      kaldi::nnet1::Nnet::~Nnet((v3 - 376));
    }

    a1[1] = v7;
  }
}