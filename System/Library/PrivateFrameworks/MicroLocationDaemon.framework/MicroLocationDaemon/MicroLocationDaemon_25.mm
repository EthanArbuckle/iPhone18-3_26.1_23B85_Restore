void sub_2591B7E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2591B7F78(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<ULRapportDO>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 5 * a5;
        std::vector<ULRapportDO>::__move_range(a1, a2, a1[1], a2 + 80 * a5);
        v17 = v7 + 16 * v18;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULRapportDO>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,ULRapportDO*>(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<ULRapportDO>::__move_range(a1, v5, v10, v5 + 80 * a5);
        v17 = v16 + v7;
      }

      std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO *>>,std::move_iterator<std::__wrap_iter<ULRapportDO *>>,ULRapportDO *>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 4);
    if (v12 > 0x333333333333333)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x199999999999999)
    {
      v15 = 0x333333333333333;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = v19 + 80 * a5;
    v21 = 80 * a5;
    do
    {
      std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(v26, v19, v7);
      v19 += 80;
      v7 += 80;
      v21 -= 80;
    }

    while (v21);
    v24 = v20;
    v5 = std::vector<ULRapportDO>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<ULRapportDO>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<ULRapportDO>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(a1, v8, v10);
      v10 += 80;
      v8 += 80;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULRapportDO *,ULRapportDO *,ULRapportDO *>(&v12, a2, v7, v6);
}

uint64_t std::vector<ULRapportDO>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULRapportDO>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,ULRapportDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(a1, a4, v6);
      v6 += 80;
      a4 += 80;
      v8 -= 80;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_2591B83C0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 80;
    do
    {
      std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v4);
      v4 -= 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  CLMicroLocationProto::RapportDevice::RapportDevice((a2 + 32), (a3 + 32));
  result = *(a3 + 64);
  *(a2 + 64) = result;
  return result;
}

void sub_2591B8440(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULRapportDO *,ULRapportDO *,ULRapportDO *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(a4 + v7 - 80) = *(a3 + v7 - 80);
      v10 = (a4 + v7 - 72);
      if (*(a4 + v7 - 49) < 0)
      {
        operator delete(*v10);
      }

      v11 = *(v8 - 72);
      *(a4 + v7 - 56) = *(v8 - 56);
      *v10 = v11;
      *(v8 - 49) = 0;
      *(v8 - 72) = 0;
      CLMicroLocationProto::RapportDevice::CopyFrom((v9 - 48), (v8 - 48));
      *(v9 - 16) = *(v8 - 16);
      v7 -= 80;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO *>>,std::move_iterator<std::__wrap_iter<ULRapportDO *>>,ULRapportDO *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      CLMicroLocationProto::RapportDevice::CopyFrom((a4 + 32), (v5 + 32));
      *(a4 + 64) = *(v5 + 64);
      a4 += 80;
      v5 += 80;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<ULRapportDO>::__emplace_back_slow_path<std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::construct_at[abi:ne200100]<ULRapportDO,std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,ULRapportDO*>(80 * v5, a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULRapportDO>::~__split_buffer(&v16);
  return v15;
}

void sub_2591B86E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULRapportDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<ULRapportDO,std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,ULRapportDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  ULRapportDO::ULRapportDO(a1, &__p, a3, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2591B8790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULRapportDO>::__init_with_size[abi:ne200100]<ULRapportDO const*,ULRapportDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULRapportDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591B8814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULRapportDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO const*,ULRapportDO const*,ULRapportDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *(a4 + v7) = *(a2 + v7);
      v9 = (a4 + v7 + 8);
      if (*(a2 + v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      CLMicroLocationProto::RapportDevice::RapportDevice((a4 + v7 + 32), (a2 + v7 + 32));
      *(a4 + v7 + 64) = *(v8 + 64);
      v7 += 80;
    }

    while (v8 + 80 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2591B892C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_2591B89D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = CLMicroLocationRapportMonitorItem::HashItem::operator()(a1, (a2 + 2));
  v2[1] = v4;
  v5 = std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t CLMicroLocationRapportMonitorItem::CLMicroLocationRapportMonitorItem(uint64_t a1, _OWORD *a2, __int128 *a3, __int128 *a4, _OWORD *a5)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = *a5;
  return a1;
}

void sub_2591B8B8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            LOBYTE(a1) = CLMicroLocationRapportMonitorItem::PredicateItem::operator()(a1, (v11 + 2), a3);
            if (a1)
            {
              return v11;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v13 = (*(v3 + 24) + 1);
  v14 = *(v3 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(v3, v18);
  }

  return 0;
}

void sub_2591B8D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v5[0] = &unk_286A5E7A8;
  v5[1] = a1;
  v5[3] = v5;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>((a1 + 1), v5, &v6, 1uLL);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2591B8F0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v3 + 48))(v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation();
    }

    v4 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v5 = "{msg%{public}.0s:Background activity cancelled, will skip refresh routine state at last location}";
LABEL_19:
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, v5, &v15, 0x12u);
LABEL_20:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableBackgroundRoutineStateRefresh"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v11 = v10;

  if ((v11 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation();
    }

    v4 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v15 = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v5 = "{msg%{public}.0s:#Warning, tried to refresh routine state in background but it's disabled by settings}";
    goto LABEL_19;
  }

  v12 = *(**a1 + 16);
  v13 = *MEMORY[0x277D85DE8];

  v12();
}

uint64_t CLMicroLocationRoutineStateAnalyzer::executeWorkItems(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v7);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_135()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__func<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0,std::allocator<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E7A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0,std::allocator<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591B942C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0,std::allocator<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void CLMicroLocationStateMachine::EventBase::getEventName(CLMicroLocationStateMachine::EventBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

CLMicroLocationStateMachine::StateBase *CLMicroLocationStateMachine::StateBase::StateBase(CLMicroLocationStateMachine::StateBase *this, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *(this + 31) = 13;
  *this = &unk_286A5E828;
  strcpy(this + 8, "No Name Given");
  *(this + 7) = 0;
  v4 = this + 56;
  *(this + 6) = this + 56;
  v5 = this + 48;
  *(this + 8) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:StateBase}", v9, 0x12u);
  }

  *(this + 32) = a2;
  *(this + 5) = 0;
  *(this + 9) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v5, *(this + 7));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v4;
  *(this + 10) = 0;
  v7 = *MEMORY[0x277D85DE8];
  return this;
}

void CLMicroLocationStateMachine::StateBase::~StateBase(CLMicroLocationStateMachine::StateBase *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = &unk_286A5E828;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:~StateBase}", v5, 0x12u);
  }

  v3 = *(this + 7);
  *(this + 5) = 0;
  *(this + 9) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(this + 48, v3);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = this + 56;
  *(this + 10) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(this + 48, 0);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v4 = *MEMORY[0x277D85DE8];
}

{
  CLMicroLocationStateMachine::StateBase::~StateBase(this);

  JUMPOUT(0x259CA1F90);
}

CLMicroLocationStateMachine::StateMachineBase *CLMicroLocationStateMachine::StateMachineBase::StateMachineBase(CLMicroLocationStateMachine::StateMachineBase *this)
{
  *this = &unk_286A5E848;
  *(this + 4) = 0;
  *(this + 3) = 0;
  v2 = (this + 24);
  *(this + 2) = this + 24;
  v3 = (this + 16);
  std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(this + 16, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *v3 = v2;
  *v2 = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  return this;
}

void CLMicroLocationStateMachine::StateMachineBase::~StateMachineBase(CLMicroLocationStateMachine::StateMachineBase *this)
{
  v12 = *MEMORY[0x277D85DE8];
  *this = &unk_286A5E848;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:~StateMachineBase}", v9, 0x12u);
  }

  v3 = *(this + 2);
  if (v3 != (this + 24))
  {
    do
    {
      v4 = *(v3 + 7);
      *(v3 + 7) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (this + 24));
  }

  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(this + 16, *(this + 3));
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t CLMicroLocationStateMachine::StateMachineBase::addStateToStateMap(uint64_t a1, void **a2, uint64_t *a3)
{
  v4 = std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2);
  v5 = *a3;
  *a3 = 0;
  result = *(v4 + 56);
  *(v4 + 56) = v5;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void CLMicroLocationStateMachine::StateMachineBase::setInitialState(void *a1, uint64_t *a2)
{
  v2 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, a2[1]);
  }

  else
  {
    __p = *a2;
  }

  v4 = std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>((a1 + 2), &__p.__r_.__value_.__l.__data_);
  if (a1 + 3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 56);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
LABEL_9:
    CLMicroLocationStateMachine::StateMachineBase::enterNewState(a1, v5);
    goto LABEL_23;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateMachineBase::setInitialState();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v7 = v2;
    if (*(v2 + 23) < 0)
    {
      v7 = *v2;
    }

    *buf = 68289283;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:State Machine: Failed to initialize state because requested state doesn't exist in the state table, State:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateMachineBase::setInitialState();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    if (*(v2 + 23) < 0)
    {
      v2 = *v2;
    }

    *buf = 68289283;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v2;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "State Machine: Failed to initialize state because requested state doesn't exist in the state table", "{msg%{public}.0s:State Machine: Failed to initialize state because requested state doesn't exist in the state table, State:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

LABEL_23:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_2591B9C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_136()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(CLMicroLocationTimeUtils *this, NSDate *a2)
{
  v2 = a2;
  v3 = this;
  if (v2 >= 1)
  {
    CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(&v7);

    abort_report_np();
    __break(1u);
  }

  else
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v5 setDay:v2];
    v6 = [v4 dateByAddingComponents:v5 toDate:v3 options:0];
    MEMORY[0x259CA1500]();
  }
}

void sub_2591BA014(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_137()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLMicroLocationUtils::createEnabledTechnologies(CLMicroLocationUtils *this, int a2, int a3, int a4)
{
  v4 = 2;
  if (!this)
  {
    v4 = 0;
  }

  if (a2)
  {
    v4 |= 0x20uLL;
  }

  if (a3)
  {
    v4 |= 0x40uLL;
  }

  if (a4)
  {
    return v4 | 0x80;
  }

  else
  {
    return v4;
  }
}

void CLMicroLocationUtils::getAnchorDeviceModelAllowedMap(void *a1@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v5, "MacPro");
  v6 = 3;
  std::string::basic_string[abi:ne200100]<0>(v7, "MacMini");
  v8 = 3;
  std::string::basic_string[abi:ne200100]<0>(v9, "iMac");
  v10 = 3;
  std::string::basic_string[abi:ne200100]<0>(v11, "Mac15,4");
  v12 = 3;
  std::string::basic_string[abi:ne200100]<0>(v13, "Mac13");
  v14 = 3;
  std::string::basic_string[abi:ne200100]<0>(v15, "Mac16,3");
  v16 = 3;
  std::string::basic_string[abi:ne200100]<0>(v17, "Mac16,2");
  v18 = 3;
  std::string::basic_string[abi:ne200100]<0>(v19, "AudioAccessory1");
  v20 = 2;
  std::string::basic_string[abi:ne200100]<0>(v21, "AudioAccessory5");
  v22 = 2;
  std::string::basic_string[abi:ne200100]<0>(v23, "AudioAccessory6");
  v24 = 2;
  std::string::basic_string[abi:ne200100]<0>(v25, "AppleTV");
  v26 = 1;
  std::map<std::string,DeviceModel>::map[abi:ne200100](a1, v5, 11);
  v3 = 44;
  do
  {
    if (*(&v5[v3 - 1] - 1) < 0)
    {
      operator delete(v5[v3 - 4]);
    }

    v3 -= 4;
  }

  while (v3 * 8);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_2591BA2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 343);
  v13 = -352;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CLMicroLocationUtils::convertModelStringToDeviceModel(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
    memset(&v24, 0, sizeof(v24));
    v4 = +[ULDefaultsSingleton shared];
    v5 = [v4 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnchorDeviceModelAllowedList"];
    v7 = [v5 objectForKey:v6];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = v7;
      memset(&v25, 0, sizeof(v25));
      std::vector<std::string>::reserve(&v25, [v8 count]);
      v28 = 0u;
      v29 = 0u;
      memset(v27, 0, sizeof(v27));
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:v27 objects:v30 count:16];
      if (v10)
      {
        v11 = **&v27[16];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (**&v27[16] != v11)
            {
              objc_enumerationMutation(v9);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, [*(*&v27[8] + 8 * i) UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v25, &__p);
            if (SHIBYTE(__p.__end_cap_.__value_) < 0)
            {
              operator delete(__p.__begin_);
            }
          }

          v10 = [v9 countByEnumeratingWithState:v27 objects:v30 count:16];
        }

        while (v10);
      }

      begin = v25.__begin_;
      v23 = v25;
      end = v25.__end_;
      memset(&v25, 0, sizeof(v25));
      v30[0].__locale_ = &v25;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v30);
    }

    else
    {
      memset(v27, 0, 24);
      memset(&__p, 0, sizeof(__p));
      std::vector<std::string>::reserve(&__p, 0xDuLL);
      for (j = 0; j != 13; ++j)
      {
        std::string::basic_string[abi:ne200100]<0>(v30, _ZGRN10ULSettings14SettingsTraitsINS_28AnchorDeviceModelAllowedListEE12defaultValueE_[j]);
        std::vector<std::string>::push_back[abi:ne200100](&__p, v30);
        if (v31 < 0)
        {
          operator delete(v30[0].__locale_);
        }
      }

      std::vector<std::string>::__vdeallocate(v27);
      *v27 = __p;
      memset(&__p, 0, sizeof(__p));
      v30[0].__locale_ = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v30);
      end = *&v27[8];
      begin = *v27;
      v23 = *v27;
      memset(v27, 0, 24);
      v30[0].__locale_ = v27;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v30);
    }

    while (begin != end)
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      MEMORY[0x259CA1E90](v30);
      v16 = boost::algorithm::ifind_first<std::string,std::string>(a1, begin, v30);
      v18 = v17;
      std::locale::~locale(v30);
      if (v16 != v18)
      {
        std::string::operator=(&v24, begin);
        break;
      }

      begin += 3;
    }

    v19 = std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>(a2, &v24.__r_.__value_.__l.__data_);
    if (a2 + 8 == v19)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v19 + 56);
    }

    v30[0].__locale_ = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v30);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_2591BA6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::locale a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  a24 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

char *boost::algorithm::ifind_first<std::string,std::string>(uint64_t a1, uint64_t **a2, std::locale *a3)
{
  std::locale::locale(&v12, a3);
  v5 = *(a2 + 23);
  v6 = a2[1];
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v5 < 0)
  {
    v5 = v6;
  }

  v7 = a2 + v5;
  std::locale::locale(&v15, &v12);
  v13[0] = a2;
  v13[1] = v7;
  std::locale::locale(&v14, &v15);
  std::locale::~locale(&v15);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 < 0)
  {
    v8 = *(a1 + 8);
  }

  v10 = boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_iequal>::operator()<std::__wrap_iter<char const*>>(v13, v9, &v9[v8]);
  std::locale::~locale(&v14);
  std::locale::~locale(&v12);
  return v10;
}

void sub_2591BA894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v10 + 2);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void *std::map<std::string,DeviceModel>::map[abi:ne200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,DeviceModel> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t ULAlgorithms::createLearner@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 >= 2)
  {
    ULAlgorithms::createLearner();
  }

  if (a1 != 1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t ULAlgorithms::createLocalizerAlgorithm@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 >= 5)
  {
    ULAlgorithms::createLocalizerAlgorithm();
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (a1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

void ULAlgorithms::getDendrogramLearningParams(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    v3 = +[ULDefaultsSingleton shared];
    v4 = [v3 defaultsDictionary];

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListClusterDistanceThresholdVector"];
    v6 = [v4 objectForKey:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v6, &v32);
      v31 = v32;
      *a2 = v32;
      v7 = v33;
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_44SimilarityListClusterDistanceThresholdVectorEE12defaultValueE_, 1uLL, &v32);
      v7 = v33;
      v31 = v32;
      *a2 = v32;
    }

    *(a2 + 16) = v7;

    v13 = +[ULDefaultsSingleton shared];
    v14 = [v13 defaultsDictionary];

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListSmallClusterSize"];
    v16 = [v14 objectForKey:v15];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v16 unsignedLongValue];
    }

    else
    {
      v17 = [&unk_286A72918 unsignedLongValue];
    }

    v18 = v17;

    *(a2 + 24) = v18;
    v19 = +[ULDefaultsSingleton shared];
    v20 = [v19 defaultsDictionary];

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListSmallClusterRelativeSize"];
    v22 = [v20 objectForKey:v21];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v22 doubleValue];
    }

    else
    {
      [&unk_286A73020 doubleValue];
    }

    v24 = v23;

    *(a2 + 32) = v24;
    v25 = +[ULDefaultsSingleton shared];
    v26 = [v25 defaultsDictionary];

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListSmallClusterDistanceThreshold"];
    v28 = [v26 objectForKey:v27];
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v28 doubleValue];
    }

    else
    {
      [&unk_286A73030 doubleValue];
    }

    v30 = v29;

    *(a2 + 40) = v30;
  }

  else
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMagicalMomentsClusterDistanceThresholdVector"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v11, &v32);
      *a2 = v32;
      v12 = v33;
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_44MagicalMomentsClusterDistanceThresholdVectorEE12defaultValueE_, 3uLL, &v32);
      v12 = v33;
      *a2 = v32;
    }

    *(a2 + 16) = v12;

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }
}

void sub_2591BAE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a9)
  {
    *(v9 + 8) = a9;
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void ULAlgorithms::createKernelFunction(ULAlgorithms *this@<X0>, void *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = this;
  v4 = [(ULAlgorithms *)v28 objectForKeyedSubscript:@"type"];
  v5 = v4;
  if (!v4)
  {
    v11 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "primitiveType";
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No type provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v12 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v12))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "primitiveType";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No type provided in dictionary", "{msg%{public}.0s:No type provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v13 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "primitiveType";
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No type provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_33;
  }

  if ([v4 unsignedLongValue] >= 4)
  {
    v14 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      v34 = [v5 unsignedLongValue];
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "primitiveType.unsignedLongValue < static_cast<uint32_t>(KernelFunctionType::kTypeCount)";
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v15 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v15))
    {
      v16 = [v5 unsignedLongValue];
      *buf = 68289795;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      v34 = v16;
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "primitiveType.unsignedLongValue < static_cast<uint32_t>(KernelFunctionType::kTypeCount)";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid algorithm chosen", "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v13 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      ULAlgorithms::createKernelFunction(buf, [v5 unsignedLongValue], v13);
    }

LABEL_33:

    abort_report_np();
    goto LABEL_69;
  }

  v6 = [v5 unsignedLongValue];
  v7 = [(ULAlgorithms *)v28 objectForKeyedSubscript:@"sigma"];
  v8 = [(ULAlgorithms *)v28 objectForKeyedSubscript:@"power"];
  v9 = v8;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v7)
      {
        [v7 doubleValue];
        operator new();
      }

      v24 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v25 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_signpost_enabled(v25))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v19 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }

    else
    {
      if (v7)
      {
        [v7 doubleValue];
        operator new();
      }

      v22 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v23 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_signpost_enabled(v23))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v19 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }

    goto LABEL_68;
  }

  if (v6 == 2)
  {
    if (v7)
    {
      if (v8)
      {
        [v7 doubleValue];
        [v9 doubleValue];
        operator new();
      }

      v26 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "power";
        _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No power provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v27 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_signpost_enabled(v27))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "power";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No power provided in dictionary", "{msg%{public}.0s:No power provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v19 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "power";
        _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No power provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }

    else
    {
      v17 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v18 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_signpost_enabled(v18))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v19 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = "assert";
        v35 = 2081;
        v36 = "sigma";
        _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }

    goto LABEL_68;
  }

  if (v6 == 3)
  {
    if (v7)
    {
      [v7 doubleValue];
      operator new();
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "sigma";
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v21))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "sigma";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "sigma";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_68:

    abort_report_np();
LABEL_69:
    __break(1u);
  }

  *a2 = 0;

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2591BBD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  MEMORY[0x259CA1F90](v15, 0x1081C40468F112ELL);

  _Unwind_Resume(a1);
}

void ULAlgorithms::details::createFingerprintDistanceFunction(unsigned int a1@<W0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = __PAIR64__(a3, a1);
  v43 = a2;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingWifiRssiEnable"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v10 = v9;

  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingBleLeechEnable"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v16 = v15;

  v17 = +[ULDefaultsSingleton shared];
  v18 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
  v20 = [v18 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = [v20 BOOLValue];
  }

  else
  {
    v21 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v22 = v21;

  if (v22)
  {
    isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v23);
  }

  else
  {
    isUwbRangingSupportedOnDevice = 0;
  }

  v25 = +[ULDefaultsSingleton shared];
  v26 = [v25 defaultsDictionary];

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingPhotoFeaturesEnable"];
  v28 = [v26 objectForKey:v27];
  if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v29 = [v28 BOOLValue];
  }

  else
  {
    v29 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v30 = v29;

  EnabledTechnologies = CLMicroLocationUtils::createEnabledTechnologies(v10, v16, isUwbRangingSupportedOnDevice, v30);
  v31 = +[ULDefaultsSingleton shared];
  v32 = [v31 defaultsDictionary];

  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v34 = [v32 objectForKey:v33];
  if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v35 = [v34 BOOLValue];
  }

  else
  {
    v35 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v36 = v35;

  v45 = v36;
  ULAlgorithms::details::createFingerprintDistanceFunction(*v40, v43, &EnabledTechnologies, v40[4], v42, v38);
}

uint64_t ULAlgorithms::details::createFingerprintDistanceFunction@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __src[63] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v19 = a4;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v14 = *a3;
        v15 = *(a3 + 8);
        std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](v16, a5);
        *(a6 + 24) = 0;
        operator new();
      }

      ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(v13, a3, &v19, a5, a6);
    }

    v16[8] = *a3;
    v17 = *(a3 + 8);
    std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](&v18, a5);
    *(a6 + 24) = 0;
    operator new();
  }

  if (a1 == 3)
  {
    v11 = v13;
    if (![v11 count])
    {

      v11 = &unk_286A73C00;
    }

    memset(__src, 0, 504);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionFunctionSettings(v11, __src);
    memcpy(__dst, __src, 0x1F8uLL);
    __dst[63] = *a3;
    v21 = *(a3 + 8);
    std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](v22, a5);
    v22[64] = 0;
    v22[72] = 0;
    *(a6 + 24) = 0;
    operator new();
  }

  if (a1 == 4)
  {
    ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(v13, a3, &v19, a5, __src);
  }

  ULAlgorithms::details::createFingerprintDistanceFunction(__dst);

  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_2591BCEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0::~$_0(&a35);

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](&STACK[0x330]);
  _Unwind_Resume(a1);
}

void ULAlgorithms::createLinkageFunction(int a1@<W0>, void *a2@<X8>)
{
  if (a1 >= 4)
  {
    ULAlgorithms::createLinkageFunction();
  }

  if (a1 <= 1)
  {
    *a2 = &unk_286A54628;
    if (a1)
    {
      v3 = CLHierarchicalClustering::averageLinkage;
    }

    else
    {
      v3 = CLHierarchicalClustering::singleLinkage;
    }

    goto LABEL_8;
  }

  if (a1 == 2)
  {
    *a2 = &unk_286A54628;
    v3 = CLHierarchicalClustering::completeLinkage;
LABEL_8:
    a2[1] = v3;
    goto LABEL_14;
  }

  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLinkageFunctionInterpolationFactor"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
  }

  else
  {
    [&unk_286A73090 floatValue];
  }

  v9 = v8;

  *a2 = &unk_286A5ED78;
  *(a2 + 2) = v9;
LABEL_14:
  a2[3] = a2;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_138()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591BD3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_2591BD538(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(void *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:@"jaccard_scale_factor"];
  v25 = [v9 objectForKeyedSubscript:@"e2j_kernel_thr"];
  v11 = [v9 objectForKeyedSubscript:@"per_source_params"];
  v12 = v11;
  if (v10)
  {
    if (v25)
    {
      if (v11)
      {
        v10;
        v25;
        ULAlgorithms::details::createPerSourceWeights(@"value_scale_factor", v12, &v26);
        ULAlgorithms::details::createPerSourceWeights(@"euclidean_weight", v12, &v27);
        ULAlgorithms::details::createPerSourceWeights(@"jaccard_pos_weight", v12, &v28);
        ULAlgorithms::details::createPerSourceWeights(@"jaccard_neg_weight", v12, &v29);
        v13 = *a3;
        v14 = v12;
        v15 = v14;
        if (!v13)
        {
          v30 = &unk_286A5E9E8;
          v31 = 0;
LABEL_8:

          v32 = *a2;
          v33 = *(a2 + 8);
          std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](&v34, a4);
          *(a5 + 24) = 0;
          operator new();
        }

        v16 = [(NSString *)v14 objectForKeyedSubscript:@"onesided_jaccard"];
        v17 = v16;
        if (v16)
        {
          CLMicroLocationUtils::PerSourceWeights<BOOL>::fromConfiguration(v16, &v30);

          goto LABEL_8;
        }

        ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(buf);

        abort_report_np();
LABEL_31:
        __break(1u);
      }

      v23 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = "assert";
        v40 = 2081;
        v41 = "perSourceParams";
        _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No per_source_params provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v24 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_signpost_enabled(v24))
      {
        *buf = 68289539;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = "assert";
        v40 = 2081;
        v41 = "perSourceParams";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No per_source_params provided in dictionary", "{msg%{public}.0s:No per_source_params provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v20 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = "assert";
        v40 = 2081;
        v41 = "perSourceParams";
        _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No per_source_params provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }

    else
    {
      v21 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = "assert";
        v40 = 2081;
        v41 = "e2jKernelThr";
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No e2j_kernel_thr provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v22 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_signpost_enabled(v22))
      {
        *buf = 68289539;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = "assert";
        v40 = 2081;
        v41 = "e2jKernelThr";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No e2j_kernel_thr provided in dictionary", "{msg%{public}.0s:No e2j_kernel_thr provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v20 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v36 = 2082;
        v37 = "";
        v38 = 2082;
        v39 = "assert";
        v40 = 2081;
        v41 = "e2jKernelThr";
        _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No e2j_kernel_thr provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }
    }
  }

  else
  {
    v18 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      v39 = "assert";
      v40 = 2081;
      v41 = "jaccard_scale_factor";
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No jaccard_scale_factor provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v19))
    {
      *buf = 68289539;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      v39 = "assert";
      v40 = 2081;
      v41 = "jaccard_scale_factor";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No jaccard_scale_factor provided in dictionary", "{msg%{public}.0s:No jaccard_scale_factor provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      v39 = "assert";
      v40 = 2081;
      v41 = "jaccard_scale_factor";
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No jaccard_scale_factor provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  abort_report_np();
  goto LABEL_31;
}

uint64_t std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_2591BDF0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E8D8;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E8D8;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A5E8D8;
  *(a2 + 8) = *(a1 + 8);
  return std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](a2 + 24, a1 + 24);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(result + 24);
  }

  return result;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(_BYTE *__p)
{
  if (__p[80] == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((__p + 24));
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E968;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E968;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A5E968;
  *(a2 + 8) = *(a1 + 8);
  return std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](a2 + 24, a1 + 24);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(result + 24);
  }

  return result;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(_BYTE *__p)
{
  if (__p[80] == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((__p + 24));
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ULAlgorithms::details::createPerSourceWeights(ULAlgorithms::details *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = this;
  v6 = a2;
  v7 = [(NSString *)v6 objectForKeyedSubscript:v16];
  v8 = v7;
  if (!v7)
  {
    v10 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = [(ULAlgorithms::details *)v16 UTF8String];
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "weightsDict";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't find key: , key:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v11 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v11))
    {
      v12 = v16;
      v13 = [(ULAlgorithms::details *)v16 UTF8String];
      *buf = 68289795;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = v13;
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "weightsDict";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't find key: ", "{msg%{public}.0s:Couldn't find key: , key:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v14 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v16;
      ULAlgorithms::details::createPerSourceWeights([(ULAlgorithms::details *)v16 UTF8String], buf, v14);
    }

    abort_report_np();
    __break(1u);
  }

  CLMicroLocationUtils::PerSourceWeights<float>::fromConfiguration(v7, a3);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 144);
  }

  return a1;
}

void CLMicroLocationUtils::PerSourceWeights<float>::fromConfiguration(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = [v19 objectForKeyedSubscript:@"wifi"];
  v4 = [v19 objectForKeyedSubscript:@"ble"];
  v5 = [v19 objectForKeyedSubscript:@"uwb"];
  v6 = [v19 objectForKeyedSubscript:@"photoFeatures"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "wifiValue && [wifiValue isKindOfClass:[NSNumber class]]";
    v18 = 100;
    goto LABEL_16;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "bleValue && [bleValue isKindOfClass:[NSNumber class]]";
    v18 = 101;
    goto LABEL_16;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "uwbValue && [uwbValue isKindOfClass:[NSNumber class]]";
    v18 = 102;
    goto LABEL_16;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "photoFeaturesValue && [photoFeaturesValue isKindOfClass:[NSNumber class]]";
    v18 = 103;
LABEL_16:
    __assert_rtn("fromConfiguration", "CLMicroLocationUtils.h", v18, v17);
  }

  [v3 doubleValue];
  v8 = v7;
  [v4 doubleValue];
  v10 = v9;
  [v5 doubleValue];
  v12 = v11;
  [v6 doubleValue];
  v13 = v10;
  v14 = v8;
  v15 = v12;
  *a2 = &unk_286A5CBC8;
  *(a2 + 8) = v14;
  *(a2 + 12) = v13;
  *&v16 = v16;
  *(a2 + 16) = v15;
  *(a2 + 20) = LODWORD(v16);
}

void CLMicroLocationUtils::PerSourceWeights<BOOL>::fromConfiguration(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = [v19 objectForKeyedSubscript:@"wifi"];
  v4 = [v19 objectForKeyedSubscript:@"ble"];
  v5 = [v19 objectForKeyedSubscript:@"uwb"];
  v6 = [v19 objectForKeyedSubscript:@"photoFeatures"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "wifiValue && [wifiValue isKindOfClass:[NSNumber class]]";
    v15 = 100;
    goto LABEL_16;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "bleValue && [bleValue isKindOfClass:[NSNumber class]]";
    v15 = 101;
    goto LABEL_16;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "uwbValue && [uwbValue isKindOfClass:[NSNumber class]]";
    v15 = 102;
    goto LABEL_16;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = "photoFeaturesValue && [photoFeaturesValue isKindOfClass:[NSNumber class]]";
    v15 = 103;
LABEL_16:
    __assert_rtn("fromConfiguration", "CLMicroLocationUtils.h", v15, v14);
  }

  [v3 doubleValue];
  v18 = v7;
  [v4 doubleValue];
  v17 = v8;
  [v5 doubleValue];
  v16 = v9;
  [v6 doubleValue];
  v10.f64[0] = v18;
  v10.f64[1] = v17;
  v11.f64[0] = v16;
  v11.f64[1] = v12;
  *a2 = &unk_286A5E9E8;
  v13 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v10), vceqzq_f64(v11)))), 0x1000100010001);
  *(a2 + 8) = vuzp1_s8(v13, v13).u32[0];
}

uint64_t CLMicroLocationUtils::PerSourceWeights<BOOL>::operator[](_BYTE *a1, int a2)
{
  if (a2 > 5)
  {
    if (a2 == 6)
    {
      v4 = a1[10];
      return v4 & 1;
    }

    if (a2 == 7)
    {
      v4 = a1[11];
      return v4 & 1;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v4 = a1[8];
      return v4 & 1;
    }

    if (a2 == 5)
    {
      v4 = a1[9];
      return v4 & 1;
    }
  }

  v8 = v2;
  v9 = v3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "Datatype not supported", v7, 2u);
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EA38;
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EA38;
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A5EA38;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = &unk_286A5CBC8;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = &unk_286A5CBC8;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = &unk_286A5CBC8;
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = &unk_286A5CBC8;
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = &unk_286A5E9E8;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 136) = *(a1 + 136);
  return std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](a2 + 152, a1 + 152);
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  v2 = *(a1 + 8);
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 152);
  }

  operator delete(a1);
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 8) floatValue];
  v7 = v6;
  [*(a1 + 16) floatValue];
  LODWORD(v9) = v8;
  LODWORD(v10) = v7;
  CLMicroLocationFingerprintDistanceFunction::weightedEuclideanJaccardDistance(a2, a3, a1 + 24, a1 + 48, a1 + 72, a1 + 96, a1 + 120, a1 + 136, v10, v9, v11, v12, v13, v14, v15, v16, a1 + 152);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EAB8;
  if (*(a1 + 584) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 528);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EAB8;
  if (*(a1 + 584) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 528);
  }

  JUMPOUT(0x259CA1F90);
}

__n128 std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_286A5EAB8;
  memcpy(&a2->n128_i8[8], &a1->n128_i8[8], 0x201uLL);
  std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](&a2[33], &a1[33]);
  result = a1[37];
  a2[37] = result;
  return result;
}

uint64_t std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t result)
{
  if (*(result + 584) == 1)
  {
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(result + 528);
  }

  return result;
}

void std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(_BYTE *__p)
{
  if (__p[584] == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((__p + 528));
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createMaxLikelihoodDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0::~$_0(id *a1)
{

  return std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](a1);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EB38;

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5EB38;

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](a1 + 8);

  JUMPOUT(0x259CA1F90);
}

id std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(id *a1, void *a2)
{
  *a2 = &unk_286A5EB38;
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100]((a2 + 1), (a1 + 1));
  a2[5] = a1[5];
  a2[6] = a1[6];
  a2[7] = a1[7];
  result = a1[8];
  a2[8] = result;
  return result;
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(id *a1)
{

  return std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100]((a1 + 1));
}

void std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(id *a1)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete(a1);
}

float std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v7 = (*(*v4 + 48))(v4);
  [*(a1 + 40) floatValue];
  v9 = v8;
  v10 = [*(a1 + 48) intValue];
  [*(a1 + 64) floatValue];
  v12 = v11;
  [*(a1 + 56) floatValue];

  return CLMicroLocationFingerprintDistanceFunction::removeNonIndicativeAPsDistance(a2, a3, v10, v9, v12, v13, v7);
}

uint64_t std::__function::__func<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void CLLaplacianKernelFunction::CLLaplacianKernelFunction(CLLaplacianKernelFunction *this, double a2)
{
  *this = &unk_286A5EBB8;
  *(this + 1) = 0x3FF0000000000000;
  if (a2 <= 0.0)
  {
    CLLaplacianKernelFunction::CLLaplacianKernelFunction();
  }

  *(this + 1) = 1.0 / a2;
}

uint64_t CLKernelFunction::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = &unk_286A5EC60;
  v4 = CLEuclideanSquaredDistanceFunction::operator()(&v6, a2, a3);
  return (*(*a1 + 24))(a1, sqrt(v4));
}

double CLEuclideanSquaredDistanceFunction::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 != a3[1] - *a3)
  {
    CLEuclideanSquaredDistanceFunction::operator()();
  }

  if (v4 == v3)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = v5 >> 3;
  result = 0.0;
  do
  {
    v9 = *(v3 + 8 * v6) - *(*a3 + 8 * v6);
    result = result + v9 * v9;
    ++v6;
  }

  while (v7 > v6);
  return result;
}

void CLGaussianKernelFunction::CLGaussianKernelFunction(CLGaussianKernelFunction *this, double a2)
{
  *this = &unk_286A5ECA0;
  *(this + 1) = 0x3FE0000000000000;
  if (a2 <= 0.0)
  {
    CLGaussianKernelFunction::CLGaussianKernelFunction();
  }

  *(this + 1) = 1.0 / ((a2 + a2) * a2);
}

double CLGaussianKernelFunction::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  v6 = &unk_286A5EC60;
  v4 = -(v3 * CLEuclideanSquaredDistanceFunction::operator()(&v6, a2, a3));

  return exp(v4);
}

void CLExponentialKernelFunction::CLExponentialKernelFunction(CLExponentialKernelFunction *this, long double a2, long double a3)
{
  *this = &unk_286A5ECE8;
  __asm { FMOV            V2.2D, #1.0 }

  *(this + 8) = _Q2;
  if (a3 <= 0.0)
  {
    CLExponentialKernelFunction::CLExponentialKernelFunction();
  }

  if (a2 <= 0.0)
  {
    CLExponentialKernelFunction::CLExponentialKernelFunction();
  }

  *(this + 1) = a3;
  *(this + 2) = 1.0 / pow(a2, a3);
}

double CLExponentialKernelFunction::operator()(uint64_t a1, long double a2)
{
  v2 = *(a1 + 16);
  v3 = -(v2 * pow(a2, *(a1 + 8)));

  return exp(v3);
}

double CLUniformKernelFunction::operator()(uint64_t a1, double a2)
{
  v2 = *(a1 + 8) <= a2;
  result = 0.0;
  if (!v2)
  {
    return 1.0;
  }

  return result;
}

uint64_t std::__function::__func<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0,std::allocator<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0>,float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286A5ED78;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0,std::allocator<ULAlgorithms::createLinkageFunction(ULAlgorithms::LinkageFunctionType)::$_0>,float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *a1 = &unk_286A5EDF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  v6 = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v35 = 2082;
    v36 = "";
    v37 = 2082;
    v38 = "ULCustomLoiRecordingMonitor";
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor initialized, method:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  *(a1 + 24) = 0;
  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiRecordingFenceRadiusInMeters"];
  v11 = [v9 objectForKey:v10];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v11 floatValue];
  }

  else
  {
    [&unk_286A72930 floatValue];
  }

  v13 = v12;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  aBlock[3] = &unk_2798D4EA0;
  v33 = a1;
  v14 = v6;
  v32 = v14;
  v15 = _Block_copy(aBlock);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v28 = &unk_2798D4EC8;
  v30 = a1;
  v16 = v14;
  v29 = v16;
  v17 = _Block_copy(&v25);
  v18 = [ULCMPDRFenceProvider alloc];
  LODWORD(v19) = v13;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:{v19, v25, v26, v27, v28}];
  v21 = [(ULCMPDRFenceProvider *)v18 initWithFenceIdentifier:@"ULCustomLoiRecordingFence" queue:v16 radiusInMeters:v20 callback:v15 statusCallback:&__block_literal_global_150 errorCallback:v17];
  v22 = *(a1 + 32);
  *(a1 + 32) = v21;

  v23 = *MEMORY[0x277D85DE8];
  return a1;
}

void ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;
  ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(v7, 2);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 68289794;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "ULCustomLoiRecordingMonitor_block_invoke";
    v17 = 2050;
    v18 = v9;
    v19 = 2082;
    v20 = [v6 UTF8String];
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor initialized, method:%{public, location:escape_only}s, Timestamp::%{public}.5f, fenceId::%{public, location:escape_only}s}", v12, 0x30u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "onCustomLoiSessionCompletion";
    v13 = 1026;
    v14 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CustomLoi session completion, method:%{public, location:escape_only}s, Reason::%{public}d}", v8, 0x22u);
  }

  [*(a1 + 48) invalidate];
  v5 = *(a1 + 48);
  *(a1 + 48) = 0;

  ULCustomLoiRecordingMonitor::stopMotionSession(a1);
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  result = (***(a1 + 16))(*(a1 + 16));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN27ULCustomLoiRecordingMonitorC2ER35ULCustomLoiRecordingMonitorDelegatePU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  dispatch_assert_queue_V2(*(a1 + 32));
  [v8 timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = MEMORY[0x277CCACA8];
  v14 = [v7 domain];
  v15 = [v7 code];
  v16 = [v7 localizedDescription];
  v17 = [v7 userInfo];
  v18 = [v13 stringWithFormat:@"Error Domain: %@\nCode: %ld\nDescription: %@\nUser Info: %@", v14, v15, v16, v17];

  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2082;
    v26 = "ULCustomLoiRecordingMonitor_block_invoke";
    v27 = 2050;
    v28 = v12;
    v29 = 2082;
    v30 = [v9 UTF8String];
    v31 = 2082;
    v32 = [v18 UTF8String];
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor initialized, method:%{public, location:escape_only}s, Timestamp::%{public}.5f, fenceId::%{public, location:escape_only}s, Error: :%{public, location:escape_only}s}", buf, 0x3Au);
  }

  ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(v10, 4);
  v20 = *MEMORY[0x277D85DE8];
}

void ULCustomLoiRecordingMonitor::~ULCustomLoiRecordingMonitor(id *this)
{
  *this = &unk_286A5EDF8;
  [this[6] invalidate];
  v2 = this[6];
  this[6] = 0;
}

{
  ULCustomLoiRecordingMonitor::~ULCustomLoiRecordingMonitor(this);

  JUMPOUT(0x259CA1F90);
}

void ULCustomLoiRecordingMonitor::startMonitoring(id *this)
{
  if (*(this + 8))
  {
    started = ULCustomLoiRecordingMonitor::startMonitoring();
    ULCustomLoiRecordingMonitor::startMotionSession(started);
  }

  else
  {
    ULCustomLoiRecordingMonitor::startMotionSession(this);
    ULCustomLoiRecordingMonitor::startSessionTimer(this);
    *(this + 8) = 1;
  }
}

uint64_t ULCustomLoiRecordingMonitor::startMotionSession(id *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "startMotionSession";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor::startMotionSession, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  [this[4] startSession];
  result = [this[4] setFence];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ULCustomLoiRecordingMonitor::startSessionTimer(id *this)
{
  [this[6] invalidate];
  v2 = this[6];
  this[6] = 0;

  v3 = MEMORY[0x277CCABB0];
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiMaxRecordingWindow"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 doubleValue];
  }

  else
  {
    [&unk_286A73290 doubleValue];
  }

  v9 = v8;

  v10 = [v3 numberWithDouble:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___ZN27ULCustomLoiRecordingMonitor17startSessionTimerEv_block_invoke;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = this;
  v11 = [ULTimerFactory timerOnPrimaryQueueWithInterval:v10 repeats:MEMORY[0x277CBEC28] block:v13];
  v12 = this[6];
  this[6] = v11;
}

uint64_t ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded(uint64_t this)
{
  if (*(this + 8) == 1)
  {

    return ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(this, 3);
  }

  else if (*(this + 48))
  {
    v2 = ULCustomLoiRecordingMonitor::stopMonitoringIfNeeded();
    return ULCustomLoiRecordingMonitor::isMonitoring(v2);
  }

  return this;
}

void ULCustomLoiRecordingMonitor::onScanEvent(ULCustomLoiRecordingMonitor *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *(this + 6) + 1;
    *(this + 6) = v2;
    v3 = +[ULDefaultsSingleton shared];
    v4 = [v3 defaultsDictionary];

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiMaxRecordings"];
    v6 = [v4 objectForKey:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 unsignedIntValue];
    }

    else
    {
      v7 = [&unk_286A72930 unsignedIntValue];
    }

    v8 = v7;

    if (v2 >= v8)
    {

      ULCustomLoiRecordingMonitor::onCustomLoiSessionCompletion(this, 0);
    }
  }
}

uint64_t ULCustomLoiRecordingMonitor::stopMotionSession(id *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULCustomLoiRecordingMonitor::ULCustomLoiRecordingMonitor();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "stopMotionSession";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULCustomLoiRecordingMonitor::stopMotionSession, method:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  result = [this[4] endSession];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_139()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULDendrogramAlgorithm::learn(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, CLMicroLocationFingerprintPool *a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v9 = a2;
  v98 = *MEMORY[0x277D85DE8];
  ULAlgorithms::getDendrogramLearningParams(a2, &v81);
  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULPruneDistanceThreshold"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v15 doubleValue];
  }

  else
  {
    [&unk_286A732A0 doubleValue];
  }

  v17 = v16;

  v18 = v81;
  if (v81 == v82)
  {
    v60 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "!dendrogramLearningParams.clusterDistanceThresholdVector.empty()";
      _os_log_impl(&dword_258FE9000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:cluster distance threshold must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v61 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v61))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "!dendrogramLearningParams.clusterDistanceThresholdVector.empty()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "cluster distance threshold must not be empty", "{msg%{public}.0s:cluster distance threshold must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a7 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(a7, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "!dendrogramLearningParams.clusterDistanceThresholdVector.empty()";
      _os_log_impl(&dword_258FE9000, a7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:cluster distance threshold must not be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a1 = 29;
    goto LABEL_83;
  }

  v19 = (v81 + 8);
  if (v81 + 8 != v82)
  {
    v20 = *v81;
    v21 = (v81 + 8);
    do
    {
      v22 = *v21++;
      v23 = v22;
      if (v22 < v20)
      {
        v20 = v23;
        v18 = v19;
      }

      v19 = v21;
    }

    while (v21 != v82);
  }

  if (v17 > *v18)
  {
    v62 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "pruneDistanceThreshold <= *std::min_element(dendrogramLearningParams.clusterDistanceThresholdVector.begin(), dendrogramLearningParams.clusterDistanceThresholdVector.end())";
      _os_log_impl(&dword_258FE9000, v62, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:prune threshold must be less than or equal to clusterDistance threshold, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v63 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v63))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "pruneDistanceThreshold <= *std::min_element(dendrogramLearningParams.clusterDistanceThresholdVector.begin(), dendrogramLearningParams.clusterDistanceThresholdVector.end())";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v63, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "prune threshold must be less than or equal to clusterDistance threshold", "{msg%{public}.0s:prune threshold must be less than or equal to clusterDistance threshold, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a7 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(a7, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "pruneDistanceThreshold <= *std::min_element(dendrogramLearningParams.clusterDistanceThresholdVector.begin(), dendrogramLearningParams.clusterDistanceThresholdVector.end())";
      _os_log_impl(&dword_258FE9000, a7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:prune threshold must be less than or equal to clusterDistance threshold, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a1 = 32;
    goto LABEL_83;
  }

  if (*(a1 + 8) == *a1)
  {
    v64 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "fingerprintVector.size() > 0";
      _os_log_impl(&dword_258FE9000, v64, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:fingerprintVector must be non-empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    v65 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v65))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "fingerprintVector.size() > 0";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v65, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "fingerprintVector must be non-empty", "{msg%{public}.0s:fingerprintVector must be non-empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a7 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(a7, OS_LOG_TYPE_INFO))
    {
      buf = 68289539;
      v89 = 2082;
      v90 = "";
      v91 = 2082;
      v92 = "assert";
      v93 = 2081;
      v94 = "fingerprintVector.size() > 0";
      _os_log_impl(&dword_258FE9000, a7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:fingerprintVector must be non-empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
    }

    a1 = 34;
LABEL_83:

    v67 = a1;
    v68 = "learn";
    v66 = "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULDendrogramAlgorithm.mm";
    abort_report_np();
    __break(1u);
LABEL_84:
    ULDendrogramAlgorithm::learn();
    goto LABEL_16;
  }

  CLMicroLocationModel::CLMicroLocationModel(a7);
  *a7 = 1;
  *(a7 + 4) = v9;
  v9 = a7 + 16;
  if (a7 + 16 != a4)
  {
    *(a7 + 48) = *(a4 + 32);
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a7 + 16), *(a4 + 16), 0);
  }

  *(a7 + 56) = *(a4 + 40);
  if (onceToken_MicroLocation_Default != -1)
  {
    goto LABEL_84;
  }

LABEL_16:
  v24 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    isStable = CLMicroLocationModel::isStable(a7);
    buf = 68289282;
    v89 = 2082;
    v90 = "";
    v91 = 1026;
    LODWORD(v92) = isStable;
    _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, dendrogram, initialization, isStableflag:%{public}hhd}", &buf, 0x18u);
  }

  v26 = +[ULDefaultsSingleton shared];
  v27 = [v26 defaultsDictionary];

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLearning"];
  v29 = [v27 objectForKey:v28];
  if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v30 = [v29 unsignedIntValue];
  }

  else
  {
    v30 = [&unk_286A72948 unsignedIntValue];
  }

  v31 = v30;

  v32 = ULSettings::getFingerprintDistanceFunctionParamsForType(v31);
  v33 = +[ULDefaultsSingleton shared];
  v34 = [v33 defaultsDictionary];

  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
  v36 = [v34 objectForKey:v35];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = [v36 BOOLValue];
  }

  else
  {
    v37 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v38 = v37;

  if (v38)
  {
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(&buf, v9);
    v95 = *(a7 + 56);
    v39 = 1;
  }

  else
  {
    v39 = 0;
    LOBYTE(buf) = 0;
  }

  v96 = v39;
  ULAlgorithms::createLearnFingerprintDistanceFunction(v31, v32, &buf, v97);
  if (v96 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf);
  }

  v40 = [ULDefaultsSingleton shared:v66];
  v41 = [v40 defaultsDictionary];

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLinkageFunction"];
  v43 = [v41 objectForKey:v42];
  if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = [v43 unsignedIntValue];
  }

  else
  {
    v44 = [&unk_286A72960 unsignedIntValue];
  }

  v45 = v44;

  ULAlgorithms::createLinkageFunction(v45, &buf);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](v87, v97);
  CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate<std::vector<CLMicroLocationFingerprint>,std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>(&v77, a1, v87, v46);
  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__value_func[abi:ne200100](v86, &buf);
  CLHierarchicalClustering::CLHierarchicalClustering(v80, &v77, v86);
  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](v86);
  if (__p)
  {
    v79 = __p;
    operator delete(__p);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v87);
  v47 = vcvtmd_u64_f64(v84 * a6);
  if (v83 <= v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = v83;
  }

  v77 = 0;
  __p = 0;
  v79 = 0;
  ClusterLabels = CLHierarchicalClustering::getClusterLabels(v80, &v77, &v81, v48, a3, v85);
  CLMicroLocationModel::generateRandomIdentifiers(ClusterLabels, v76);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v50 = CLHierarchicalClustering::getClusterLabels(v80, &v73, 0, v17, 0.0);
  std::vector<unsigned long>::vector[abi:ne200100](&v71, v50);
  v51 = v73;
  v52 = v71;
  if (v74 != v73)
  {
    v53 = 0;
    v54 = (v74 - v73) >> 3;
    if (v54 <= 1)
    {
      v54 = 1;
    }

    do
    {
      v52[v51[v53]] = v53;
      ++v53;
    }

    while (v54 != v53);
  }

  for (i = v72; v52 != i; ++v52)
  {
    CLMicroLocationModel::addFingerprint(a7, (*a1 + 224 * *v52), v76[0] + *(v77 + *v52), a5);
  }

  v56 = v77;
  if (__p != v77)
  {
    v57 = 0;
    v58 = 40;
    do
    {
      CLMicroLocationModel::addRecording(a7, v76[0] + v56[v57++], (*a1 + v58));
      v56 = v77;
      v58 += 224;
    }

    while (v57 < (__p - v77) >> 3);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76[0])
  {
    v76[1] = v76[0];
    operator delete(v76[0]);
  }

  if (v77)
  {
    __p = v77;
    operator delete(v77);
  }

  if (v80[0])
  {
    v80[1] = v80[0];
    operator delete(v80[0]);
  }

  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](&buf);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v97);

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  v59 = *MEMORY[0x277D85DE8];
}

void sub_2591C18F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v46 - 152);

  CLMicroLocationModel::~CLMicroLocationModel(v41);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_140()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2591C1C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2591C2144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CLMicroLocationLoiBridge;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2591C23FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v24 + 32));

  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591C24F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591C25B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2591C2D74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_2591C3164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591C3500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2591C3B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 48));

  objc_destroyWeak((v17 - 56));
  _Unwind_Resume(a1);
}

void sub_2591C4088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v8 - 56));
  _Unwind_Resume(a1);
}

void sub_2591C49D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

double ULSettings::get<ULSettings::CustomLoiGeofenceRadius>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiGeofenceRadius"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A732C0 doubleValue];
  }

  v5 = v4;

  return v5;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_141()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULLoiTypes::rtLoiStringToLocationType(unsigned int *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) != 4 || **a1 != 1701670760)
    {
      if (*(a1 + 1) == 4 && **a1 == 1802661751)
      {
        return 1;
      }

      if (*(a1 + 1) == 6 && **a1 == 1953723747 && *(*a1 + 4) == 28015)
      {
        return 2;
      }

      if (*(a1 + 1) != 4)
      {
        return 30;
      }

      a1 = *a1;
      goto LABEL_22;
    }

    return 0;
  }

  v1 = *(a1 + 23);
  if (v1 != 4)
  {
    if (v1 == 6)
    {
      if (*a1 ^ 0x74737563 | *(a1 + 2) ^ 0x6D6F)
      {
        return 30;
      }

      else
      {
        return 2;
      }
    }

    return 30;
  }

  if (*a1 == 1701670760)
  {
    return 0;
  }

  if (*a1 == 1802661751)
  {
    return 1;
  }

LABEL_22:
  v4 = bswap32(*a1);
  v5 = v4 >= 0x6E6F6E65;
  v6 = v4 > 0x6E6F6E65;
  v7 = !v5;
  if (v6 == v7)
  {
    return 3;
  }

  else
  {
    return 30;
  }
}

_BYTE *ULLoiTypes::locationTypeToString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = "home";
  v5 = "custom";
  if (a1 != 2)
  {
    v5 = "none";
  }

  if (a1)
  {
    v4 = "work";
  }

  if (a1 <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v6);
}

uint64_t ULModel::ULModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 16, a2 + 16);
  v4 = *(a2 + 56);
  *(a1 + 72) = 0;
  *(a1 + 56) = v4;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v5 = *(a2 + 96);
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v5;
    *(a1 + 112) = v6;
    *(a1 + 136) = 1;
  }

  v7 = *(a2 + 144);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a1 + 200, (a2 + 200));
  v8 = *(a2 + 240);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 240) = v8;
  *(a1 + 248) = 0;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  v9 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v9;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = 1;
  *(a1 + 312) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 304) = 0;
  std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100]((a1 + 312), a2);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = *(a2 + 40);
  *(a1 + 368) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 376, a2 + 64);
  *(a1 + 416) = *(a2 + 104);
  v4 = *(a2 + 120);
  *(a1 + 448) = *(a2 + 136);
  *(a1 + 432) = v4;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  v5 = *(a2 + 144);
  v6 = *(a2 + 160);
  *(a1 + 488) = *(a2 + 176);
  *(a1 + 456) = v5;
  *(a1 + 472) = v6;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 496) = *(a2 + 184);
  *(a1 + 512) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  return a1;
}

void sub_2591C6720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<ULTrajectoryPointCloud>::~optional(v2 + 312);
  std::optional<CLMicroLocationModel>::~optional(v2);
  _Unwind_Resume(a1);
}

void ULModel::ULModel(ULModel *this, const CLMicroLocationModel *a2)
{
  CLMicroLocationModel::CLMicroLocationModel(this, a2);
  *(v2 + 304) = 1;
  *(v2 + 312) = 0;
  *(v2 + 520) = 0;
  *(v2 + 528) = 0;
}

uint64_t ULModelMetaData::ULModelMetaData(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, double a5)
{
  *a1 = *a2;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  v6 = a1 + 24;
  *(a1 + 64) = 0;
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (v7)
  {
    CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings(v9, a3, a4);
    std::optional<ULRfClusterModelMetaData>::operator=[abi:ne200100]<CLMicroLocationLocalizationSettings,void>(v6, v9);

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v9, v9[1]);
  }

  return a1;
}

void sub_2591C680C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CLMicroLocationLocalizationSettings::~CLMicroLocationLocalizationSettings(va);
  std::optional<ULRfClusterModelMetaData>::~optional(v2);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULRfClusterModelMetaData>::operator=[abi:ne200100]<CLMicroLocationLocalizationSettings,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v3 = a2 + 1;
    v4 = a2[1];
    v14 = *a2;
    v15 = v4;
    if (a2[2])
    {
      v4[2] = &v15;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      v14 = &v15;
    }

    v5 = a2[3];
    v6 = a2[4];
    a2[3] = 0;
    v17 = v5;
    v18 = v6;
    std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::map[abi:ne200100](&v19, &v14);
    v22 = v17;
    v23 = v18;
    v7 = a1 + 8;
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1, *(a1 + 8));
    v8 = v20;
    *a1 = v19;
    *(a1 + 8) = v8;
    v9 = v21;
    *(a1 + 16) = v21;
    if (v9)
    {
      v8[2] = v7;
      v19 = &v20;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      *a1 = v7;
    }

    v10 = v22;
    v22 = 0;
    v11 = *(a1 + 24);
    *(a1 + 24) = v10;

    v12 = v22;
    *(a1 + 32) = v23;

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v19, v20);
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v14, v15);
  }

  else
  {
    std::construct_at[abi:ne200100]<ULRfClusterModelMetaData,CLMicroLocationLocalizationSettings,ULRfClusterModelMetaData*>(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t ULModelAndStates::acceptsScanEventLocalization(ULModelAndStates *this)
{
  if (*(this + 304) == 1)
  {
    return CLMicroLocationModel::isValid(this);
  }

  else
  {
    return *(this + 520);
  }
}

BOOL ULModelAndStates::requiresAcceleratedRecording(ULModelAndStates *this)
{
  if (*(this + 304) != 1)
  {
    return 0;
  }

  v1 = *(this + 37);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumFingerprintsThresholdForExpeditedRecordings"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A72A20 unsignedIntValue];
  }

  v8 = v6;

  return v1 < v8;
}

uint64_t ULModelAndStates::requiresBlueAtlasLocalizationScanType(ULModelAndStates *this)
{
  if (*(this + 304) == 1 && *(this + 1) == 3)
  {
    v1 = *(this + 136);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ULModelAndStates::doesInvalidatedScanEventInvalidateLocalizationResults(ULModelAndStates *this)
{
  if (*(this + 520))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 529) ^ 1;
  }

  return v1 & 1;
}

void ULModelAndStates::initState(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 520) == 1)
  {
    AnchorsAppearanceMap = ULHomeSlamModel::getAnchorsAppearanceMap((a1 + 312));
    ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(v10, AnchorsAppearanceMap);
    v6 = a2;
    ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(v7, v10);
    std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>>((a1 + 608), &v6);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    ULHomeSlamSettings::~ULHomeSlamSettings(v7);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    ULHomeSlamSettings::~ULHomeSlamSettings(v10);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2591C6C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>::~pair(&a9);
  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(&a69);
  _Unwind_Resume(a1);
}

uint64_t ULModelAndStates::ULModelAndStates(uint64_t a1, _OWORD *a2, unsigned int *a3, uint64_t a4, double a5)
{
  v10 = ULModel::ULModel(a1, a3);
  ULModelMetaData::ULModelMetaData(v10 + 536, a2, a4, *a3, a5);
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  return a1;
}

void ULModel::~ULModel(void **this)
{
  if (*(this + 520) == 1)
  {
    ULHomeSlamModel::~ULHomeSlamModel(this + 39);
  }

  if (*(this + 304) == 1)
  {
    if (*(this + 295) < 0)
    {
      operator delete(this[34]);
    }

    v2 = this[31];
    if (v2)
    {
      this[32] = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table((this + 25));
    v4 = this + 22;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(this + 136) == 1)
    {
      v3 = this[9];
      if (v3)
      {
        this[10] = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((this + 2));
  }
}

uint64_t ULModelAndStates::ULModelAndStates(uint64_t a1, _OWORD *a2, uint64_t a3, double a4)
{
  v7 = ULModel::ULModel(a1, a3);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  ULModelMetaData::ULModelMetaData(v7 + 536, a2, __p, 0, a4);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  return a1;
}

void sub_2591C6E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ULModel::~ULModel(v15);
  _Unwind_Resume(a1);
}

uint64_t ULModelAndStates::ULModelAndStates(uint64_t a1, _OWORD *a2, double a3)
{
  *a1 = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 520) = 0;
  *(a1 + 529) = 1;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  ULModelMetaData::ULModelMetaData(a1 + 536, a2, __p, 0, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 1065353216;
  return a1;
}

void sub_2591C6EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ULModel::~ULModel(v15);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<ULRfClusterModelMetaData,CLMicroLocationLocalizationSettings,ULRfClusterModelMetaData*>(void *a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  if (a2[2])
  {
    v4[2] = &v11;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  v5 = a2[3];
  v6 = a2[4];
  a2[3] = 0;
  v13 = v5;
  v14 = v6;
  std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::map[abi:ne200100](a1, &v10);
  v7 = v13;
  v8 = v14;
  a1[3] = v7;
  a1[4] = v8;

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v10, v11);
  return a1;
}

void sub_2591C6F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CLMicroLocationLocalizationSettings::~CLMicroLocationLocalizationSettings(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULRfClusterModelMetaData>::~optional(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1, *(a1 + 8));
  }

  return a1;
}

void ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(ULHomeSlamLocalizerState *this, const ULHomeSlamLocalizerState *a2)
{
  v4 = *a2;
  *(this + 14) = *(a2 + 14);
  *this = v4;
  v5 = *(a2 + 10);
  *(this + 4) = *(a2 + 4);
  *(this + 10) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  v6 = *(a2 + 32);
  *(this + 15) = *(a2 + 15);
  *(this + 32) = v6;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 136, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 3);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 160, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 3);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 184, *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 3);
  v7 = *(a2 + 13);
  v8 = *(a2 + 15);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = v8;
  *(this + 13) = v7;
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](this + 256, a2 + 256);
  v9 = *(a2 + 18);
  *(this + 38) = *(a2 + 38);
  *(this + 18) = v9;
  *(this + 39) = *(a2 + 39);
  v10 = *(a2 + 352);
  v11 = *(a2 + 21);
  *(this + 20) = *(a2 + 20);
  *(this + 21) = v11;
  *(this + 352) = v10;
  v12 = *(a2 + 376);
  *(this + 360) = *(a2 + 360);
  *(this + 376) = v12;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(this + 392, *(a2 + 49), *(a2 + 50), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 50) - *(a2 + 49)) >> 2));
  v13 = *(a2 + 26);
  v14 = *(a2 + 27);
  v15 = *(a2 + 28);
  *(this + 461) = *(a2 + 461);
  *(this + 27) = v14;
  *(this + 28) = v15;
  *(this + 26) = v13;
}

uint64_t std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>::~pair(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (v2)
  {
    *(a1 + 408) = v2;
    operator delete(v2);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings((a1 + 8));
  return a1;
}

void *std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>>(void *a1, unint64_t *a2)
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
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__construct_node_hash<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>>();
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

void sub_2591C7480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *ULWiFiChannelHistogramAnalyzer::update(uint64_t *result, __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      if (!std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>(v4, &v5))
      {
        v6 = &v5;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4, &v5) + 5) = 0;
      }

      v6 = &v5;
      result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4, &v5);
      ++*(result + 5);
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void ULWiFiChannelHistogramAnalyzer::getHistogram(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = a3[2];
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v13);
        }

        *(8 * v10) = v5[2];
        v6 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = v5[2];
      }

      a3[1] = v6;
      v5 = *v5;
    }

    while (v5);
  }

  ULWiFiChannelHistogramAnalyzer::getValidChannels(a2, &v35);
  v15 = v35;
  v16 = *a3;
  if (v35 == v36)
  {
    v17 = a3[1];
  }

  else
  {
    v17 = a3[1];
    do
    {
      v18 = *(v15 + 7);
      v19 = v16;
      if (v16 == v17)
      {
LABEL_21:
        v20 = a3[2];
        if (v17 >= v20)
        {
          v21 = v17 - v16;
          v22 = (v17 - v16) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v24 = v20 - v16;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v25);
          }

          v26 = v22;
          v27 = (8 * v22);
          *v27 = v18;
          v27[1] = 0;
          v17 = 8 * v22 + 8;
          v28 = &v27[-2 * v26];
          memcpy(v28, v16, v21);
          v29 = *a3;
          *a3 = v28;
          a3[1] = v17;
          a3[2] = 0;
          if (v29)
          {
            operator delete(v29);
            v16 = *a3;
          }

          else
          {
            v16 = v28;
          }
        }

        else
        {
          *v17 = v18;
          *(v17 + 4) = 0;
          v17 += 8;
        }

        a3[1] = v17;
      }

      else
      {
        while (*v19 != v18)
        {
          v19 += 2;
          if (v19 == v17)
          {
            goto LABEL_21;
          }
        }
      }

      v30 = v15[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v15[2];
          v32 = *v31 == v15;
          v15 = v31;
        }

        while (!v32);
      }

      v15 = v31;
    }

    while (v31 != v36);
  }

  v33 = 126 - 2 * __clz((v17 - v16) >> 3);
  v37 = ULWiFiChannelHistogramAnalyzer::histogramSortFunction;
  if (v17 == v16)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,false>(v16, v17, &v37, v34, 1);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v35, v36[0]);
}

void sub_2591C7A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a9, a10);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t ULWiFiChannelHistogramAnalyzer::getValidChannels@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v13[0] = xmmword_259224FA8;
  v13[1] = unk_259224FB8;
  v13[2] = xmmword_259224FC8;
  v14 = 13;
  std::set<unsigned int>::set[abi:ne200100](v9, v13, 13);
  std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100]<char const* const&,std::set<unsigned int>,0>(v15, CLMicroLocationLOITypeHome, v9);
  v11[2] = xmmword_259224FFC;
  v11[3] = unk_25922500C;
  v11[4] = xmmword_25922501C;
  v11[5] = unk_25922502C;
  v11[0] = xmmword_259224FDC;
  v11[1] = unk_259224FEC;
  v12 = 0xB1000000ADLL;
  std::set<unsigned int>::set[abi:ne200100](v8, v11, 26);
  std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100]<char const* const&,std::set<unsigned int>,0>(v16, &CLMicroLocationLOITypeCustom, v8);
  std::unordered_map<std::string,std::set<unsigned int>>::unordered_map(v10, v15, 2);
  for (i = 0; i != -12; i -= 6)
  {
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v16[i + 3], v16[i + 4]);
    if (SHIBYTE(v16[i + 2]) < 0)
    {
      operator delete(v15[i + 6]);
    }
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v8, v8[1]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v9, v9[1]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::find<std::string>(v10, a1);
  if (v5)
  {
    std::set<unsigned int>::set[abi:ne200100](a2, (v5 + 5));
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }

  result = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::~__hash_table(v10);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591C7C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, uint64_t a14, char a15, void *a16)
{
  v18 = -96;
  v19 = v16;
  do
  {
    v19 = std::pair<std::string const,std::set<unsigned int>>::~pair(v19) - 48;
    v18 += 48;
  }

  while (v18);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a11, a12);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void ULWiFiChannelHistogramAnalyzer::histogramFromProtobuf(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  ULWiFiChannelHistogramAnalyzer::getValidChannels(a2, &v28);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = &v6[v5];
    do
    {
      CLMicroLocationProto::ChannelAndCount::ChannelAndCount(v25, *v6);
      v8 = v29[0];
      if (v29[0])
      {
        v9 = v29;
        do
        {
          v10 = *(v8 + 7);
          v11 = v10 >= v27;
          v12 = v10 < v27;
          if (v11)
          {
            v9 = v8;
          }

          v8 = v8[v12];
        }

        while (v8);
        if (v9 != v29 && v27 >= *(v9 + 7))
        {
          v13 = v26;
          v15 = a3[1];
          v14 = a3[2];
          if (v15 >= v14)
          {
            v17 = *a3;
            v18 = v15 - *a3;
            v19 = v18 >> 3;
            v20 = (v18 >> 3) + 1;
            if (v20 >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v21 = v14 - v17;
            if (v21 >> 2 > v20)
            {
              v20 = v21 >> 2;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v22);
            }

            v23 = (8 * v19);
            *v23 = v27;
            v23[1] = v13;
            v16 = 8 * v19 + 8;
            memcpy(0, v17, v18);
            v24 = *a3;
            *a3 = 0;
            a3[1] = v16;
            a3[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = v27;
            *(v15 + 1) = v13;
            v16 = (v15 + 8);
          }

          a3[1] = v16;
        }
      }

      CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(v25);
      ++v6;
    }

    while (v6 != v7);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v28, v29[0]);
}

void sub_2591C7E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  CLMicroLocationProto::ChannelAndCount::~ChannelAndCount(&a10);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a14, a15);
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::set<unsigned int>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v61 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v61;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v48 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v48)
        {
          v47 = v8[v34];
          v8[v13] = v47;
          v8[v34] = v44;
LABEL_58:
          v44 = v47;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = v8[v26];
          v46 = (*a3)();
          v44 = v8[v13];
          if (v46)
          {
            v47 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v47;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v49 = *v8;
      *v8 = v44;
      v8[v13] = v49;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v50 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(v8, a2, a3);
    if ((v51 & 1) == 0)
    {
      goto LABEL_64;
    }

    v52 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(v8, v50, a3);
    v9 = (v50 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(v50 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v50;
      if (v52)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v52)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,false>(v8, v50, a3, -v11, a5 & 1);
      v9 = (v50 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v55;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v56 = v9[1].i64[0];
      v57 = v9->i64[1];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v56;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v59 = v9->i64[1];
      v58 = v9[1].i64[0];
      v60 = v9->i64[0];
      v9->i64[1] = v58;
      v9[1].i64[0] = v59;
      result = (*a3)(v58, v60);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v53 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v53 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v62 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v62;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v54 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v54;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v54;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v61 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ULWiFiChannelHistogram *,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_17;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if ((*a3)(*v26, *v19))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v30 -= 8;
        if (((*a3)(v29, *(v31 + 1)) & 1) == 0)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v19 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ULWiFiChannelHistogram,ULWiFiChannelHistogram),ULWiFiChannelHistogram*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
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
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100]<char const* const&,std::set<unsigned int>,0>(uint64_t a1, const char **a2, void *a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = *a3;
  v8 = a3 + 1;
  v9 = a3[1];
  *(a1 + 32) = v9;
  v10 = a1 + 32;
  v11 = a3[2];
  *(a1 + 40) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *a3 = v8;
    *v8 = 0;
    a3[2] = 0;
  }

  else
  {
    *(a1 + 24) = v10;
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v4, a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::unordered_map<std::string,std::set<unsigned int>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned int>> const&>(a1, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::set<unsigned int>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__construct_node_hash<std::pair<std::string const,std::set<unsigned int>> const&>();
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

void sub_2591C9A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::set<unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::set<unsigned int>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::set<unsigned int>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_2591C9B4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned int>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned int>>>>::find<std::string>(void *a1, const void **a2)
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
    if (v6 == v12)
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

void *std::set<unsigned int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

void *ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = &unk_286A5EF50;
  result[3] = result;
  result[5] = result + 2;
  return result;
}

uint64_t ULWiFiHistogramAnalyzer::executeWiFiItem(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 40);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v6);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void ULWiFiHistogramAnalyzer::analyzeWiFiChannels(void **a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing WiFi channels}", buf, 0x12u);
  }

  v5 = (*(*a1[1] + 64))(a1[1]);
  v6 = v5;
  if (v5)
  {
    [v5 fetchAllDistinctLoiGroups];
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = (v69 - v68) >> 6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Got %zu Unique LOI Ids", buf, 0xCu);
  }

  if (v68 == v69)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
    }

    v49 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:no LOI ids found}", buf, 0x12u);
    }
  }

  else
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToAnalyzeWiFiChannels"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 intValue];
    }

    else
    {
      v12 = [&unk_286A72A80 intValue];
    }

    v13 = v12;

    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = v68;
    v55 = v69;
    if (v68 == v69)
    {
LABEL_85:
      if (onceToken_MicroLocation_Default != -1)
      {
        ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
      }

      v50 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Wifi Channel Histogram was not generated}", buf, 0x12u);
      }
    }

    else
    {
      v53 = 0;
      while (1)
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        memset(v63, 0, sizeof(v63));
        v64 = 1065353216;
        if (v13 < 1)
        {
          v18 = 0;
LABEL_34:
          if (!ULWiFiChannelHistogramAnalyzer::isEmpty(v63))
          {
            ULWiFiChannelHistogramAnalyzer::getHistogram(v63, (v15 + 40), &v61);
            CLMicroLocationProto::WifiHistogram::WifiHistogram(&__p);
            v28 = v61;
            v29 = v62;
            if (v61 != v62)
            {
              v30 = DWORD2(v59);
              do
              {
                v31 = HIDWORD(v59);
                if (v30 >= SHIDWORD(v59))
                {
                  if (HIDWORD(v59) == v60)
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v59);
                    v31 = HIDWORD(v59);
                  }

                  HIDWORD(v59) = v31 + 1;
                  wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ChannelAndCount>::New();
                }

                DWORD2(v59) = v30 + 1;
                v32 = *(v59 + 8 * v30++);
                v33 = *v28;
                v34 = *(v32 + 24);
                *(v32 + 24) = v34 | 1;
                *(v32 + 16) = v33;
                v35 = v28[1];
                *(v32 + 24) = v34 | 3;
                *(v32 + 8) = v35;
                v28 += 2;
              }

              while (v28 != v29);
            }

            *buf = cl::chrono::CFAbsoluteTimeClock::now();
            v36 = v66;
            if (v66 >= v67)
            {
              v37 = std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,boost::uuids::uuid const&,CLMicroLocationProto::WifiHistogram &>(&v65, buf, (v15 + 24), &__p);
            }

            else
            {
              ULWiFiHistogramDO::ULWiFiHistogramDO(v66, buf, (v15 + 24), &__p);
              v37 = v36 + 72;
            }

            v66 = v37;
            CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v14, -v13);
            v40 = v39;
            v41 = (*(*a1[1] + 160))(a1[1]);
            v42 = v41;
            v54 = v54 & 0xFFFFFFFFFFFFFF00 | 1;
            if (v41)
            {
              [v41 fetchMostRecentWifiHistogramAtLoiGroupId:v15 + 24 beforeTime:v40];
            }

            else
            {
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              memset(buf, 0, sizeof(buf));
            }

            if (BYTE8(v76) == 1)
            {
              ULWiFiChannelHistogramAnalyzer::histogramFromProtobuf(&buf[24], (v15 + 40), v71);
              if (*v71)
              {
                v72[0] = *v71;
                operator delete(*v71);
              }
            }

            else
            {
              if (onceToken_MicroLocation_Default != -1)
              {
                ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
              }

              v43 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
              {
                *v71 = 68289026;
                LOWORD(v72[0]) = 2082;
                *(v72 + 2) = "";
                _os_log_impl(&dword_258FE9000, v43, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wifi Channel Histogram analytics was not sent since not enough time elapsed}", v71, 0x12u);
              }
            }

            if (BYTE8(v76) == 1)
            {
              CLMicroLocationProto::WifiHistogram::~WifiHistogram(&buf[24]);
            }

            CLMicroLocationProto::WifiHistogram::~WifiHistogram(&__p);
            if (v61)
            {
              v62 = v61;
              operator delete(v61);
            }
          }

          if (v65 != v66)
          {
            v44 = (*(*a1[1] + 160))(a1[1]);
            v45 = [v44 insertDataObjects:&v65 atLoiUUID:v15 + 24];

            if (v45)
            {
              v46 = v65;
              v52 = v66;
              if (onceToken_MicroLocation_Default != -1)
              {
                ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
              }

              v47 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                operator new();
              }

              v53 += 954437177 * ((v52 - v46) >> 3);
            }

            else
            {
              if (onceToken_MicroLocation_Default != -1)
              {
                ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
              }

              v48 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                operator new();
              }
            }
          }
        }

        else
        {
          v16 = 0;
          v17 = 1;
          v18 = 1;
          while (1)
          {
            v19 = *(a2 + 24);
            if (!v19)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            if ((*(*v19 + 48))(v19))
            {
              break;
            }

            v20 = (v16 - 1);
            CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v14, v20);
            v22 = v21;
            CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v14, v16);
            v24 = v23;
            v25 = (*(*a1[1] + 176))(a1[1]);
            v26 = v25;
            buf[0] = 0;
            buf[24] = 0;
            v3 = v3 & 0xFFFFFFFFFFFFFF00 | 1;
            v2 = v2 & 0xFFFFFFFFFFFFFF00 | 1;
            if (v25)
            {
              [v25 getChannelsUsedByMeasurementsAtLoiGroupID:v15 + 24 withSourceBSSIDinSet:buf fromScanTime:v22 toScanTime:{v3, v24, v2}];
              if (buf[24])
              {
                std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(buf, *&buf[8]);
              }
            }

            else
            {
              __p = 0;
              v59 = 0uLL;
            }

            v27 = __p;
            if (__p != v59)
            {
              ULWiFiChannelHistogramAnalyzer::update(v63, &__p);
              v27 = __p;
            }

            if (v27)
            {
              *&v59 = v27;
              operator delete(v27);
            }

            v18 = v13 > v17++;
            v16 = v20;
            if (-v13 == v20)
            {
              goto LABEL_34;
            }
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULWiFiHistogramAnalyzer::analyzeWiFiChannels();
          }

          v38 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "MicroLocationAnalytics";
            _os_log_impl(&dword_258FE9000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wifi channels analytics operation cancelled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
          }
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v63);
        *buf = &v65;
        std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](buf);
        if (v18)
        {
          break;
        }

        v15 += 64;
        if (v15 == v55)
        {
          if (!v53)
          {
            goto LABEL_85;
          }

          (*(**a1 + 16))();
          break;
        }
      }
    }
  }

  *buf = &v68;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
  v51 = *MEMORY[0x277D85DE8];
}

void sub_2591CAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  a24 = &a42;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_142()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__func<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5EF50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  ULWiFiHistogramAnalyzer::analyzeWiFiChannels(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591CAD10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(ULWiFiHistogramAnalyzer::IWiFiAnalyzerDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2591CB6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ULLearnedFeatures;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_143()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591CC138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2591CC63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *ULSpatialSceneTypeToString(unint64_t a1)
{
  if (a1 > 0x1F)
  {
    return @"Invalid";
  }

  else
  {
    return off_2798D54F0[a1];
  }
}

void sub_2591CE800(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_144()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591CEEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_145()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591CFE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591D0264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2591D082C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CLLogObjectForCategory_MicroLocation_Default()
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

void _ULRequireInitializer(uint64_t a1, SEL aSelector)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(aSelector);
  v5 = [v3 stringWithFormat:@"%@ requires the use of the initializer: %@", a1, v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

void sub_2591D1040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v30 = v27;

  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2591D1390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ULClientProcessConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2591D33E0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_146()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591D4B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ULLifeCycleManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2591D4F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v15;

  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2591D6328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59)
{
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  if (a25)
  {
    (*(*a25 + 8))(a25);
  }

  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v66 = a53;
  a53 = 0;
  if (v66)
  {
    std::default_delete<CLMicroLocationLegacyClient>::operator()[abi:ne200100](&a53, v66);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  v67 = *(v64 - 216);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  v68 = *(v64 - 200);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  if (a26)
  {
    (*(*a26 + 8))(a26);
  }

  v69 = *(v64 - 184);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v70 = *(v64 - 176);
  *(v64 - 176) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = *(v64 - 160);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  v72 = *(v64 - 144);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v73 = *(v64 - 128);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  v74 = *(v64 - 120);
  *(v64 - 120) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *(v64 - 112);
  *(v64 - 112) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(a1);
}

void sub_2591D7050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x259CA1F90](v13, v12);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_147()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *_ZNSt3__120__shared_ptr_emplaceI15ULTriggerEngineNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F190;
  ULTriggerEngine::ULTriggerEngine((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<ULTriggerEngine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void *std::__shared_ptr_emplace<ULServiceManager>::__shared_ptr_emplace[abi:ne200100]<CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,std::allocator<ULServiceManager>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F1E0;
  std::construct_at[abi:ne200100]<ULServiceManager,CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,ULServiceManager*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<ULServiceManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F1E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t std::construct_at[abi:ne200100]<ULServiceManager,CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,ULServiceManager*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  *a5 = 0;
  v9 = v6;
  ULServiceManager::ULServiceManager(a1, a2, a3, a4, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void sub_2591D7890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    std::construct_at[abi:ne200100]<ULServiceManager,CLMicroLocationLogic &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &,std::unique_ptr<ULLocalizationController>,ULServiceManager*>(a10);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceI16ULMotionDetectorNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F230;
  ULMotionDetector::ULMotionDetector((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<ULMotionDetector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void *std::__shared_ptr_emplace<ULSensorsDataHandler>::__shared_ptr_emplace[abi:ne200100]<ULScanService &,std::allocator<ULSensorsDataHandler>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F280;
  ULSensorsDataHandler::ULSensorsDataHandler(a1 + 3, a2 + 16);
  return a1;
}

void std::__shared_ptr_emplace<ULSensorsDataHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void *std::__shared_ptr_emplace<ULSensorsManager>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ULTriggerEngine> &,std::allocator<ULSensorsManager>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F2D0;
  std::construct_at[abi:ne200100]<ULSensorsManager,std::shared_ptr<ULTriggerEngine> &,ULSensorsManager*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ULSensorsManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F2D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t std::construct_at[abi:ne200100]<ULSensorsManager,std::shared_ptr<ULTriggerEngine> &,ULSensorsManager*>(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (*a2)
  {
    v4 = *a2 + 40;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ULSensorsManager::ULSensorsManager(a1, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void sub_2591D7D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ULSensorsDataProvider>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ULSensorsManager> &,std::shared_ptr<ULSensorsDataHandler> &,std::allocator<ULSensorsDataProvider>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F320;
  std::construct_at[abi:ne200100]<ULSensorsDataProvider,std::shared_ptr<ULSensorsManager> &,std::shared_ptr<ULSensorsDataHandler> &,ULSensorsDataProvider*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ULSensorsDataProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t std::construct_at[abi:ne200100]<ULSensorsDataProvider,std::shared_ptr<ULSensorsManager> &,std::shared_ptr<ULSensorsDataHandler> &,ULSensorsDataProvider*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ULSensorsDataProvider::ULSensorsDataProvider(a1, &v9, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void sub_2591D7F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ULSystemTriggerGenerator>::__shared_ptr_emplace[abi:ne200100]<ULScanService &,std::allocator<ULSystemTriggerGenerator>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5F370;
  ULSystemTriggerGenerator::ULSystemTriggerGenerator(a1 + 3, a2 + 8);
  return a1;
}

void std::__shared_ptr_emplace<ULSystemTriggerGenerator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A5F370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_148()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591D89E8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_2591D8DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2591D9528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D95F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D96CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2591D9798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D9874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2591D9940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D9AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2591D9B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_149()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591DA5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2591DA738(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2591DA758(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2591DA7A8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2592122F0();
}

uint64_t sub_2591DA7F4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2592122E0();
}

uint64_t sub_2591DA84C()
{
  sub_259212C90();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2592122E0();
  return sub_259212CD0();
}

uint64_t sub_2591DA8B4()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

uint64_t sub_2591DA928()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

uint64_t sub_2591DA96C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2592122D0();
}

uint64_t sub_2591DAA68(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2591DAAF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2591DAB14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2591DAB34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2591DAB84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for DatabaseFrame()
{
  result = qword_27F99B7E0;
  if (!qword_27F99B7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2591DAC48()
{
  sub_2592121D0();
  if (v0 <= 0x3F)
  {
    sub_2591DAD18(319, &qword_27F99B7F0);
    if (v1 <= 0x3F)
    {
      sub_2591DAD18(319, qword_27F99B7F8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2591DAD18(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_259212AB0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContiguousKeypoints(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContiguousKeypoints(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t sub_2591DADDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 512))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2591DADFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 512) = v3;
  return result;
}

uint64_t sub_2591DAEBC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) != 128)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);

    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v1 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_258FE9000, v3, v4, "[GlobalFeatures] Invalid number of global features: %ld", v5, 0xCu);
      MEMORY[0x259CA2F70](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2591DB028(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) != 128 || *(*(a1 + 32) + 16) != 5)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);

    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v1 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_258FE9000, v3, v4, "[Keypoints] Invalid number of keypoints: %ld", v5, 0xCu);
      MEMORY[0x259CA2F70](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2591DB16C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) != 128 || *(*(a1 + 32) + 16) != 128)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);

    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v1 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_258FE9000, v3, v4, "[LocalFeatures] Invalid number of local features: %ld", v5, 0xCu);
      MEMORY[0x259CA2F70](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2591DB2DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2591DB330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2591DB378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2591DB40C(uint64_t a1)
{
  v3 = *(type metadata accessor for DatabaseFrame() - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DC018(a1, v6);
  v7 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2591E0B58(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_2591E0B58(v8 > 1, v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  result = sub_2591DBFB4(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9);
  *v1 = v7;
  if (*(v1 + 8) <= v9)
  {
    return sub_2591DC1D8(0, 1);
  }

  return result;
}

uint64_t sub_2591DB55C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DatabaseFrame() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

size_t sub_2591DB648@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2591DBFA0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for DatabaseFrame() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2591DBFB4(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void *sub_2591DB798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2592121D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DatabaseFrame();
  v10 = *(*(v9 - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  if (*(*a1 + 16))
  {
    sub_2591DC018(*a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
    sub_2591DC1D8(0, 1);
    sub_2591DBFB4(v13, v16);
    sub_2591DB40C(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B888, &qword_259225700);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2592256B0;
    sub_2592121C0();
    v18 = sub_2591DDEC8();
    (*(v5 + 8))(v8, v4);
    v19 = MEMORY[0x277D84F90];
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    v20 = sub_2591DDEC8();
    v21 = *&v16[*(v9 + 20)];
    v22 = *&v16[*(v9 + 24)];
    result = sub_2591DC298(v16);
    v24 = *(*a1 + 16) != 0;
    *a2 = v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = v22;
    *(a2 + 24) = v17;
    *(a2 + 32) = v24;
  }

  else
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v25 = sub_259212520();
    __swift_project_value_buffer(v25, qword_281456B60);
    v26 = sub_259212500();
    v27 = sub_259212A00();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_258FE9000, v26, v27, "[ExclaveSharedState]: getPoseEstimation: There are no buffered frames", v28, 2u);
      MEMORY[0x259CA2F70](v28, -1, -1);
    }

    result = sub_2592128E0();
    result[2] = 16;
    result[4] = 0;
    result[5] = 0;
    *a2 = result;
    *(a2 + 8) = 0;
    v29 = MEMORY[0x277D84F90];
    *(a2 + 16) = 0;
    *(a2 + 24) = v29;
    *(a2 + 32) = 0;
  }

  return result;
}

void sub_2591DBAE8(uint64_t a1, uint64_t a2)
{
  v32 = sub_2592121D0();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B880, &qword_2592256F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = (a2 + 32);
    v14 = (v4 + 8);
    v31 = a1;
    do
    {
      v15 = *v13;

      sub_2591DDFD0(v16);

      v18 = *(a1 + 16);
      MEMORY[0x28223BE20](v17);
      *(&v30 - 2) = v7;
      v20 = sub_2591DB55C(sub_2591DBF80, (&v30 - 4), v19);
      if (v21)
      {
        v22 = 1;
      }

      else
      {
        sub_2591DB648(v20, v11);
        v22 = 0;
      }

      v23 = type metadata accessor for DatabaseFrame();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v11, v22, 1, v23);
      (*v14)(v7, v32);
      v25 = (*(v24 + 48))(v11, 1, v23);
      sub_2591DC520(v11, &qword_27F99B880, &qword_2592256F8);
      if (v25 == 1)
      {
        if (qword_281455650 != -1)
        {
          swift_once();
        }

        v26 = sub_259212520();
        __swift_project_value_buffer(v26, qword_281456B60);
        v27 = sub_259212500();
        v28 = sub_259212A00();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_258FE9000, v27, v28, "[ExclaveSharedState]: save: identifier not found", v29, 2u);
          MEMORY[0x259CA2F70](v29, -1, -1);
        }
      }

      ++v13;
      --v12;
      a1 = v31;
    }

    while (v12);
  }
}

uint64_t sub_2591DBE30(uint64_t a1, uint64_t a2)
{
  v3 = sub_2592121D0();
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 32);
    v11 = (v6 + 8);
    do
    {
      v12 = *v10++;

      sub_2591DDFD0(v13);

      result = (*v11)(v8, v3);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2591DBFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseFrame();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591DC018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseFrame();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2591DC090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for DatabaseFrame();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2591DC1D8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2591E0B58(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2591DC090(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2591DC298(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseFrame();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591DC2F4(uint64_t a1)
{
  sub_2591DC4B0(a1, &v8);
  if (v10)
  {
    sub_2591DC580(&v8, v12);
    sub_2591DC598(v12, &v11);
    *&v8 = MEMORY[0x277D84F90];
    *(&v8 + 1) = 100;
    v9 = MEMORY[0x277D84F90];
    v10 = 100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B898, &qword_259225710);
    v2 = swift_allocObject();
    *(v2 + 88) = 0;
    sub_2591DC5FC(&v8, v2 + 16);
    sub_2591DC520(a1, &qword_27F99B890, &qword_259225708);
    sub_2591DC634(&v8);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2591DC520(&v8, &qword_27F99B890, &qword_259225708);
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v3 = sub_259212520();
    __swift_project_value_buffer(v3, qword_281456B60);
    v4 = sub_259212500();
    v5 = sub_2592129F0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v4, v5, "[ExclaveSharedState]: Failed to get visualMappingDatabase", v6, 2u);
      MEMORY[0x259CA2F70](v6, -1, -1);
    }

    sub_2591DC520(a1, &qword_27F99B890, &qword_259225708);
    return 0;
  }

  return v2;
}

uint64_t sub_2591DC4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B890, &qword_259225708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591DC520(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2591DC580(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2591DC598(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2591DC6D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2591DC71C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2591DC77C()
{
  v0 = sub_259212520();
  __swift_allocate_value_buffer(v0, qword_281456B60);
  __swift_project_value_buffer(v0, qword_281456B60);
  return sub_259212510();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2591DC864()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2591DC8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    v5 = *(v1 + 56);

    os_unfair_lock_lock(v3 + 22);
    sub_2591DB798(&v3[4], &v13);
    os_unfair_lock_unlock(v3 + 22);
    if (v2)
    {
    }

    else
    {
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v11 = v16;
      v12 = v17;

      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
    }
  }

  else
  {
    sub_2591DD26C();
    swift_allocError();
    *v7 = 0xD000000000000022;
    *(v7 + 8) = 0x800000025925E780;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2591DC9D8()
{
  v2 = v0;
  v3 = sub_2592120B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-1] - v9;
  v11 = v0[7];
  if (!v11)
  {
    sub_2591DD26C();
    swift_allocError();
    *v16 = 0xD000000000000022;
    *(v16 + 8) = 0x800000025925E780;
    *(v16 + 16) = 1;
    return swift_willThrow();
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  sub_259212070();
  (*(v4 + 16))(v8, v10, v3);
  v30 = type metadata accessor for OpenDomainExclaveStorageFileMock(0);
  v31 = &off_286A5F9F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  sub_2591DED54(v8, boxed_opaque_existential_1);
  (*(v4 + 8))(v10, v3);
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v13 = sub_2592120C0();
  if (!v1)
  {
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2 || *(v13 + 16) == *(v13 + 24))
      {
        goto LABEL_12;
      }
    }

    else if (v15)
    {
      if (v13 == v13 >> 32)
      {
LABEL_12:
        v22 = v13;
        v23 = v14;
        if (qword_281455650 != -1)
        {
          swift_once();
        }

        v24 = sub_259212520();
        __swift_project_value_buffer(v24, qword_281456B60);
        v25 = sub_259212500();
        v26 = sub_259212A00();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_258FE9000, v25, v26, "[MicroLocationExclaveComponentHandler]: load: there is no data to load", v27, 2u);
          MEMORY[0x259CA2F70](v27, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
        sub_2591DEEE4(1752457584, 0xE400000000000000);
        sub_2591DD3CC(v22, v23);
        goto LABEL_17;
      }
    }

    else if ((v14 & 0xFF000000000000) == 0)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x28223BE20](v13);
    *(&v28 - 2) = v18;
    *(&v28 - 1) = v19;
    v20 = v18;
    v21 = v19;
    os_unfair_lock_lock(v11 + 22);
    sub_2591DD3B0(&v11[4]);
    os_unfair_lock_unlock(v11 + 22);
    sub_2591DD3CC(v20, v21);
  }

LABEL_17:

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_2591DCD58(uint64_t a1)
{
  v4 = sub_2592120B0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v12 = &v23[-1] - v11;
  v13 = v1[7];
  if (v13)
  {
    v26 = v10;
    MEMORY[0x28223BE20](v9);
    *(&v22 - 2) = a1;

    os_unfair_lock_lock(v13 + 22);
    sub_2591DD330(&v13[4]);
    os_unfair_lock_unlock(v13 + 22);
    if (!v2)
    {
      os_unfair_lock_lock(v13 + 22);
      os_unfair_lock_unlock(v13 + 22);
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_259212070();
      v14 = v26;
      (*(v26 + 16))(v8, v12, v4);
      v24 = type metadata accessor for OpenDomainExclaveStorageFileMock(0);
      v25 = &off_286A5F9F8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
      sub_2591DED54(v8, boxed_opaque_existential_1);
      (*(v14 + 8))(v12, v4);
      __swift_project_boxed_opaque_existential_1(v23, v24);
      sub_259212100();
      if (qword_281455650 != -1)
      {
        swift_once();
      }

      v16 = sub_259212520();
      __swift_project_value_buffer(v16, qword_281456B60);
      v17 = sub_259212500();
      v18 = sub_259212A00();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = 0;
        _os_log_impl(&dword_258FE9000, v17, v18, "[MicroLocationExclaveComponentHandler]: update: frames data stored: %ld", v19, 0xCu);
        MEMORY[0x259CA2F70](v19, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  else
  {
    sub_2591DD26C();
    swift_allocError();
    *v21 = 0xD000000000000022;
    *(v21 + 8) = 0x800000025925E780;
    *(v21 + 16) = 2;
    return swift_willThrow();
  }
}

void sub_2591DD088(uint64_t a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = v1;
    MEMORY[0x28223BE20](a1);

    os_unfair_lock_lock(v3 + 22);
    sub_2591DD2C0(&v3[4]);
    if (v2)
    {
      os_unfair_lock_unlock(v3 + 22);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v3 + 22);
      os_unfair_lock_lock(v3 + 22);
      os_unfair_lock_unlock(v3 + 22);
      if (qword_281455650 != -1)
      {
        swift_once();
      }

      v5 = sub_259212520();
      __swift_project_value_buffer(v5, qword_281456B60);
      v6 = sub_259212500();
      v7 = sub_259212A00();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_258FE9000, v6, v7, "[MicroLocationExclaveComponentHandler]: drop: there are no frames left after the drop - calling clear", v8, 2u);
        MEMORY[0x259CA2F70](v8, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
      sub_2591DEEE4(1752457584, 0xE400000000000000);
    }
  }

  else
  {
    sub_2591DD26C();
    swift_allocError();
    *v9 = 0xD000000000000022;
    *(v9 + 8) = 0x800000025925E780;
    *(v9 + 16) = 3;
    swift_willThrow();
  }
}