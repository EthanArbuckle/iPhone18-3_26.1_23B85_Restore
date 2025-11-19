void std::__shared_ptr_pointer<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *)#1},std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 32));
  std::vector<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>>::emplace_back<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> * const&>(v1 + 8, &v2);
  std::mutex::unlock((v1 + 32));
  std::condition_variable::notify_one((v1 + 96));
}

void sub_248EBDDE4(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 32));
  __clang_call_terminate(a1);
}

uint64_t std::__shared_ptr_pointer<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *)#1},std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN16ContextAllocatorIN5locks3StdEJNSt3__110unique_ptrIN17DiskImageUDIFReadI10UDIFReaderINS0_4NoneEE13DiskImageUDIFE11ContextUDIFENS2_14default_deleteISA_EEEENS2_10shared_ptrI9BackendSGEEEE8allocateEvEUlT_E_))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>>::emplace_back<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> * const&>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return v6 - 8;
}

uint64_t di_log::logger_buf<di_log::log_printer<339ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEC3A0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248EBDFD0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v3 < v4)
      {
LABEL_4:
        v6 = *a2;
        v5 = *(a2 + 8);
        v7 = *a2 >= v5 || *a2 + 1 >= v5;
        v8 = v6 >= v5;
        v9 = v5 < v6;
        if (*(a2 + 16) != 3)
        {
          v9 = v8;
        }

        if (*(a2 + 16))
        {
          v10 = v9;
        }

        else
        {
          v10 = v7;
        }

        return !v10;
      }
    }

    else if (v4 >= v3)
    {
      goto LABEL_4;
    }
  }

  else if (v4 >= v3 || v4 + 1 >= v3)
  {
    goto LABEL_4;
  }

  if ((v2 & 2) != 0)
  {
    v13 = *a1;
  }

  else
  {
    v13 = v4 + 1;
  }

  v14 = *a2;
  if ((*(a2 + 16) & 2) == 0)
  {
    ++v14;
  }

  if (v13 < v14)
  {
    return 1;
  }

  if (v14 == v13)
  {
    return (v2 & 1) + v3 - 1 < (*(a2 + 16) & 1) + *(a2 + 8) - 1;
  }

  return 0;
}

void boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,boost::move_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,boost::move_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>>(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_248EBE2C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,boost::move_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    result = *(a2 + 32);
    *(a5 + 32) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  if (a6)
  {
    v9 = a6;
    v10 = a5;
    do
    {
      *v10 = *a7;
      v11 = *(a7 + 8);
      *(v10 + 24) = *(a7 + 24);
      *(v10 + 8) = v11;
      result = *(a7 + 32);
      *(v10 + 32) = result;
      *(a7 + 32) = 0;
      *(a7 + 40) = 0;
      *(v10 + 48) = *(a7 + 48);
      a7 += 56;
      v10 += 56;
      --v9;
    }

    while (v9);
  }

  if (a3 != a4)
  {
    v12 = a5 + 56 * a6;
    do
    {
      *v12 = *a3;
      v13 = *(a3 + 8);
      *(v12 + 24) = *(a3 + 24);
      *(v12 + 8) = v13;
      result = *(a3 + 32);
      *(v12 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v12 + 48) = *(a3 + 48);
      a3 += 56;
      v12 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

void boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >= 0x24924924924924ALL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(56 * v11);
  boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t boost::container::vector_alloc_holder<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0x249249249249249;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x249249249249249 - v4 < &a2[v3 - v4])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v3];
  if (v8 < 0x249249249249249)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_248EBE5A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    *(a5 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  *a5 = *a7;
  v8 = *(a7 + 8);
  *(a5 + 24) = *(a7 + 24);
  *(a5 + 8) = v8;
  result = *(a7 + 32);
  *(a5 + 32) = result;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a5 + 48) = *(a7 + 48);
  if (a3 != a4)
  {
    v10 = a5 + 56 * a6;
    do
    {
      *v10 = *a3;
      v11 = *(a3 + 8);
      *(v10 + 24) = *(a3 + 24);
      *(v10 + 8) = v11;
      result = *(a3 + 32);
      *(v10 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v10 + 48) = *(a3 + 48);
      a3 += 56;
      v10 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(a1, a2);
  v4 = a2[12];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

void *boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 40);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t di_asif::details::dir_base::calc_num_real_elements(di_asif::details::dir_base *this)
{
  v1 = *(this + 5);
  v2 = v1 % (*(this + 7) + 1);
  result = v1 - v2;
  if (v1 == v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Invalid chunk size", 0xFFFFFFEA);
  }

  return result;
}

unint64_t di_asif::details::unmap_iterator_t::make_val(di_asif::details::unmap_iterator_t *this)
{
  v1 = *(this + 2);
  v2 = *(this + 7);
  v3 = v2 * *v1;
  v4 = *(this + 5);
  v5 = v3 + v4;
  v6 = v1[1] * v2;
  if (v4 >= v6)
  {
    v4 = 0;
    *(this + 5) = 0;
    v7 = *this;
    v8 = *(this + 1);
    if (v8 > (v1 - *this) >> 4)
    {
      *(this + 2) = v1 + 2;
      if (v8 == (v1 - v7 + 16) >> 4)
      {
        return 0;
      }

      v3 = v1[2] * v2;
      if (v3 >= *(this + 9))
      {
        return 0;
      }

      v4 = 0;
      v6 = v1[3] * v2;
      v5 = v1[2] * v2;
    }
  }

  v9 = *(this + 9) - v3;
  if (v9 >= v6)
  {
    v9 = v6;
  }

  if (*(this + 6) + v5 / *(this + 6) * *(this + 6) - v5 < v9 - v4)
  {
    v10 = *(this + 6) + v5 / *(this + 6) * *(this + 6) - v5;
  }

  return v5 / v2;
}

di_asif::details::unmap_iterator_t *di_asif::details::unmap_iterator_t::unmap_iterator_t(di_asif::details::unmap_iterator_t *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 5) = 0;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  v9 = (a2 + 16 * a8);
  *(this + 9) = a7;
  if (a8 == a3)
  {
LABEL_6:
    *(this + 2) = v9;
  }

  else
  {
    v10 = 16 * a3 - 16 * a8;
    while (1)
    {
      v11 = *v9;
      if ((v9[1] + *v9) * a5 >= a6)
      {
        break;
      }

      v9 += 2;
      v10 -= 16;
      if (!v10)
      {
        v9 = (a2 + 16 * a3);
        goto LABEL_6;
      }
    }

    *(this + 2) = v9;
    v13 = v11 * a5;
    if (v11 * a5 < a7)
    {
      v14 = a6 >= v13;
      v15 = a6 - v13;
      if (v15 != 0 && v14)
      {
        *(this + 5) = v15;
      }

      *(this + 3) = di_asif::details::unmap_iterator_t::make_val(this);
      *(this + 4) = v16;
    }
  }

  return this;
}

uint64_t di_asif::details::table::get_map_entry_for_offset(di_asif::details::table *this, unint64_t a2)
{
  v2 = *(this + 1);
  di_asif::details::table_entry_map::table_entry_map(&v4, this, *(v2 + 56) + (*(v2 + 56) + 1) * ((a2 / *(v2 + 26) - *(this + 44) / *(v2 + 26)) / (*(v2 + 56) * (*(v2 + 28) / *(v2 + 26)))));
  return v4;
}

uint64_t di_asif::details::map_entry_iterator_t::operator++(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 1);
  v4 = *(a1 + 8) + *(v3 + 26) * (*(v3 + 28) / *(v3 + 26)) * *(v3 + 56);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 44) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    map_entry_for_offset = di_asif::details::table::get_map_entry_for_offset(v2, v4);
    v6 = map_entry_for_offset & 0xFFFFFFFFFFFFFF00;
    v7 = map_entry_for_offset;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t di_asif::details::map_entry_iterator_t::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return di_asif::details::map_entry_iterator_t::operator++(a1);
}

uint64_t di_asif::details::table::get_data_entry_for_offset(di_asif::details::table *this, unint64_t a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 26);
  di_asif::details::table_entry_data::table_entry_data(&v5, this, ((a2 / v3 - *(this + 44) / v3) / (*(v2 + 28) / v3) + (a2 / v3 - *(this + 44) / v3) / (*(v2 + 28) / v3) * *(v2 + 56)) / *(v2 + 56));
  return v5;
}

uint64_t di_asif::details::data_entry_iterator_t::operator++(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 1);
  v4 = *(a1 + 8) + *(v3 + 28);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 44) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(v2, v4);
    v6 = data_entry_for_offset & 0xFFFFFFFFFFFFFF00;
    v7 = data_entry_for_offset;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t di_asif::details::data_entry_iterator_t::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return di_asif::details::data_entry_iterator_t::operator++(a1);
}

void di_asif::details::table::table(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  di_utils::fixed_vector_t<di_asif::details::table_entry>::fixed_vector_t((a1 + 16), *(a2 + 64), a6);
  std::vector<ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>>::vector[abi:ne200100]((a1 + 72), *(a2 + 72));
  *(a1 + 104) = 850045863;
  *(a1 + 96) = 0;
  *(a1 + 101) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 850045863;
  *(a1 + 160) = 0;
  *(a1 + 280) = 850045863;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = a4;
  *(a1 + 352) = a5;
  if (a4)
  {
    if (a4 % *(a2 + 28))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v12 = std::generic_category();
      exception[1] = 4294967274;
      exception[2] = v12;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "ASIF: table is not aligned to chunk size";
    }
  }

  v10 = *(a2 + 28);
  operator new[]();
}

void sub_248EBED54(_Unwind_Exception *a1)
{
  MEMORY[0x24C1ED710](v5, v6);
  std::mutex::~mutex(v4);
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&v2[2].__m_.__sig);
  std::mutex::~mutex(v3);
  std::mutex::~mutex(v2);
  v8 = v1[9];
  if (v8)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100](v1 + 2, 0);
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100]((v1 + 3));
  _Unwind_Resume(a1);
}

void sub_248EBF0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  MEMORY[0x24C1ED710](v21, v20);
  _Unwind_Resume(a1);
}

uint64_t analytics_collector_t::table_counter_add(uint64_t this, unint64_t a2)
{
  v2 = *(this + 80);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((this + 80), &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit((this + 80), &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  atomic_fetch_add_explicit((this + 152), a2, memory_order_relaxed);
  v6 = *(this + 80);
  v7 = v6;
  atomic_compare_exchange_strong_explicit((this + 80), &v7, (v6 & 0xFFFFFFFF00000000 | (v6 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v7 != v6)
  {
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong_explicit((this + 80), &v8, (v7 & 0xFFFFFFFF00000000 | (v7 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v8 == v7;
      v7 = v8;
    }

    while (!v5);
  }

  return this;
}

void di_asif::details::table::return_chunk(di_asif::details::table *this, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    std::mutex::lock((this + 280));
    std::deque<unsigned long long>::emplace_back<unsigned long long &>(this + 232, &v3);
    atomic_store(1u, this + 24);
    std::mutex::unlock((this + 280));
  }
}

uint64_t std::deque<unsigned long long>::emplace_back<unsigned long long &>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9 + v8;
  if (v7 == v9 + v8)
  {
    std::deque<unsigned long long>::__add_back_capacity(a1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = *(a1 + 8);
    v10 = v8 + v9;
  }

  *(*(v6 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)) = *a2;
  v11 = v9 + 1;
  *(a1 + 40) = v11;
  v12 = v8 + v11;
  v13 = (v6 + 8 * (v12 >> 9));
  v14 = v12 & 0x1FF;
  if (v14)
  {
    v15 = *v13 + 8 * v14;
  }

  else
  {
    v15 = *(v13 - 1) + 4096;
  }

  return v15 - 8;
}

uint64_t di_asif::details::table::make_map_entry_iterators@<X0>(di_asif::details::table *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 44);
  v6 = *(*(this + 1) + 88) + v5;
  if (v5 >= v6)
  {
    v8 = 0;
    result = 0;
  }

  else
  {
    result = di_asif::details::table::get_map_entry_for_offset(this, *(this + 44));
    v6 = *(*(this + 1) + 88) + *(this + 44);
    v8 = 1;
  }

  *a3 = this;
  *(a3 + 8) = v5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  *(a3 + 32) = v8;
  *(a3 + 40) = this;
  *(a3 + 48) = v6;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t di_asif::details::table::update_entry_if_bits_in_same_state(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_data *a3)
{
  v3 = atomic_load((*(*a3 + 56) + 16 * *(a3 + 1) + 8));
  if (v3 >> 62 != 3)
  {
    return 0;
  }

  ref::ref_cnt::take_exclusive(*(*a3 + 56) + 16 * *(a3 + 1), 0, v50);
  if ((v50[16] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v48 = std::generic_category();
    exception[1] = 4294967291;
    exception[2] = v48;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't take exclusive lock on entry";
  }

  v7 = atomic_load((*(*a3 + 56) + 16 * *(a3 + 1) + 8));
  if (v7 >> 62 != 3)
  {
    v9 = 0;
    v10 = 0;
    v12 = 1;
    v11 = 1;
    goto LABEL_54;
  }

  v8 = *(*a3 + 8);
  di_asif::details::table::get_bitmap(this, a2, (*(*a3 + 352) + (*(v8 + 56) + *(v8 + 56) * *(a3 + 1)) / (*(v8 + 56) + 1) * *(v8 + 28)) / *(v8 + 26), 0, &v49);
  if (!v49 || (v49[344] & 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = 1;
    goto LABEL_53;
  }

  if (v49[224])
  {
    v14 = (v49 + 40);
  }

  else
  {
    v14 = 0;
  }

  bitmap_range = di_asif::details::table_entry_data::get_bitmap_range(a3);
  block_bits = di_asif::details::map_element::get_block_bits(v14, bitmap_range);
  v10 = block_bits;
  v17 = *(*a3 + 8);
  v18 = *(v17 + 56);
  v19 = *(v17 + 28);
  v20 = *(*a3 + 352) + (v18 + v18 * *(a3 + 1)) / (v18 + 1) * v19;
  v21 = v20 + v19;
  v22 = *(*(*(this + 1) + 32) + 216);
  if (v22 != 1 || block_bits == 1)
  {
    if (v49)
    {
      if (v49[224])
      {
        v24 = v49 + 40;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = di_asif::details::map_element::search_for_pattern_match(v24, this, v10, v20, v21);
  }

  else
  {
    if (v49)
    {
      if (v49[224])
      {
        v23 = v49 + 40;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = di_asif::details::map_element::search_for_pattern_mismatch(v23, this, 1u, v20, v21);
  }

  v26 = v25 == v21;
  if (v25 == v21)
  {
    v27 = *(a3 + 1);
    v28 = *(*a3 + 56);
    v29 = *(v28 + 16 * v27 + 8);
    v30 = *(*(*a3 + 8) + 28);
    v12 = (v10 & 0xFFFFFFFD) != 0;
    v31 = *(this + 1);
    v32 = *(v31 + 16);
    if (*(v32 + 160) == 1)
    {
      analytics_collector_t::bitmapped_entry_to_other_type(v32, v10, *(v31 + 48));
      v27 = *(a3 + 1);
      v28 = *(*a3 + 56);
    }

    v9 = (v29 & 0x7FFFFFFFFFFFFFLL) * v30;
    v33 = (v28 + 16 * v27 + 8);
    v34 = *v33;
    v35 = *v33;
    atomic_compare_exchange_strong(v33, &v35, (v10 << 62) | *v33 & 0x3FFFFFFFFFFFFFFFLL);
    if (v35 != v34)
    {
      v36 = v35;
      do
      {
        atomic_compare_exchange_strong(v33, &v36, v35 & 0x3FFFFFFFFFFFFFFFLL | (v10 << 62));
        v37 = v36 == v35;
        v35 = v36;
      }

      while (!v37);
    }

    if (v10 == 1)
    {
      goto LABEL_52;
    }

    v38 = (*(*a3 + 56) + 16 * *(a3 + 1) + 8);
    if (!*(*(*a3 + 8) + 28))
    {
      v39 = *v38;
      v40 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v40, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v40 != v39)
      {
        v41 = v40;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v41, v40 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v41 == v40;
          v40 = v41;
        }

        while (!v37);
      }

      v10 = 1;
      goto LABEL_52;
    }

LABEL_51:
    atomic_fetch_and_explicit(v38, 0xFF80000000000000, memory_order_relaxed);
    v10 = v26;
LABEL_52:
    v11 = 0;
    atomic_store(1u, this + 24);
    goto LABEL_53;
  }

  v9 = 0;
  v11 = 0;
  v12 = 1;
  if (v10 == 1)
  {
    v10 = 0;
    goto LABEL_53;
  }

  v10 = 0;
  if ((v22 & 1) == 0)
  {
    if (v49)
    {
      if (v49[224])
      {
        v42 = v49 + 40;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }

    if (di_asif::details::map_element::search_for_pattern_mismatch(v42, this, 1u, *(*a3 + 352) + (*(*(*a3 + 8) + 56) + *(*(*a3 + 8) + 56) * *(a3 + 1)) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 28), v21) != v21)
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_53;
    }

    v38 = (*(*a3 + 56) + 16 * *(a3 + 1) + 8);
    v43 = *(*(*a3 + 8) + 28);
    v9 = (*v38 & 0x7FFFFFFFFFFFFFLL) * v43;
    if (!v43)
    {
      v44 = *v38;
      v45 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v45, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v45 != v44)
      {
        v46 = v45;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v46, v45 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v46 == v45;
          v45 = v46;
        }

        while (!v37);
      }

      v12 = 0;
      v10 = 0;
      goto LABEL_52;
    }

    v12 = 0;
    goto LABEL_51;
  }

LABEL_53:
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v49);
LABEL_54:
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v50);
  result = v10 & (v11 ^ 1);
  if ((v11 & 1) == 0 && !v12)
  {
    di_asif::details::table::return_chunk(this, v9);
    return v10;
  }

  return result;
}

void sub_248EBF810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(va1);
  _Unwind_Resume(a1);
}

void di_asif::details::table::get_bitmap(di_asif::details::table *this@<X0>, di_asif::details::ContextASIF *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t *a5@<X8>)
{
  v10 = (a3 - *(this + 44) / *(*(this + 1) + 26)) / (*(*(this + 1) + 56) * (*(*(this + 1) + 28) / *(*(this + 1) + 26)));
  v11 = di_asif::details::table::bitmap_idx_to_tag(this, v10);
  ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag((*(this + 9) + 8 * v10), v11, a5);
  if (!*a5 || (*(*a5 + 344) & 1) != 0)
  {
    v12 = *(this + 1);
    v26 = *(v12 + 56) + (*(v12 + 56) + 1) * ((a3 - *(this + 44) / *(v12 + 26)) / (*(v12 + 56) * (*(v12 + 28) / *(v12 + 26))));
    di_asif::details::table_entry_map::table_entry_map(&v23, this, v26);
    v13 = v23;
    v14 = v24;
    if (a4)
    {
      LOBYTE(v23) = 0;
      v25 = 0;
    }

    else
    {
      v15 = (*(v23 + 56) + 16 * v24);
      v16 = ref::ref_cnt::get(v15);
      v21[0] = &unk_285BF4C50;
      v21[1] = v15;
      v22 = v16;
      ref::details::ref_cnt_handle::ref_cnt_handle(&v23, v21);
      v25 = 1;
      ref::details::ref_cnt_handle::~ref_cnt_handle(v21);
    }

    (*(**(this + 1) + 32))(v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(a5, v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v21);
    if (*a5)
    {
      if ((*(*a5 + 344) & 1) == 0)
      {
        if (!*a5 || (v17 = atomic_load((*a5 + 24)), v17 != 2))
        {
          v18 = atomic_load(a5);
          v21[0] = v18;
          atomic_store(atomic_exchange(v21, 0), (*(this + 9) + 8 * v10));
          v21[0] = (*(*(v13 + 56) + 16 * v14 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v13 + 8) + 28);
          if (v21[0])
          {
            ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::make_value<di_asif::details::ContextASIF &,di_asif::details::table &,unsigned long &,unsigned long long &>(a5, a2, this, &v26, v21);
          }

          else
          {
            space = di_asif::details::dir_base::allocate_space(*(this + 1), a2, 1);
            v19 = 1;
            ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::make_value<di_asif::details::ContextASIF &,di_asif::details::table &,unsigned long &,unsigned long long &,BOOL>(a5, a2, this, &v26, &space, &v19);
          }
        }
      }
    }

    if (v25 == 1)
    {
      ref::details::ref_cnt_handle::~ref_cnt_handle(&v23);
    }
  }
}

void sub_248EBFADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    ref::details::ref_cnt_handle::~ref_cnt_handle(&a14);
  }

  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v17);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::map_element::get_block_bits(di_asif::details::map_element *this, unint64_t a2)
{
  bit = lock_free::bitmap_t::get_bit((this + 32), a2);
  if (lock_free::bitmap_t::get_bit((this + 32), a2 + 1))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  result = v5 | bit;
  if (result == 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "bitmap flag value invalid", 0xFFFFFFEA);
  }

  return result;
}

unint64_t di_asif::details::table_entry_data::get_bitmap_range(di_asif::details::table_entry_data *this)
{
  v1 = *(*this + 352);
  v2 = *(*this + 8);
  v3 = *(v2 + 56);
  v4 = *(v2 + 28);
  v5 = (v3 + v3 * *(this + 1)) / (v3 + 1) * v4;
  v6 = *(v2 + 26);
  return ((2 * (((v5 - ((v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) & 0x7FFFFFFF)) | (((v4 - v6 + v5 - ((v4 - v6 + v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) << 33)) + 0x200000000;
}

unint64_t di_asif::details::map_element::search_for_pattern_mismatch(void *a1, di_asif::details::table *this, unsigned int a3, unint64_t a4, uint64_t a5)
{
  range_bits = di_asif::details::table::make_range_bits(this, a4, a5 - a4);
  mismatch_bits = HIDWORD(range_bits);
  if (range_bits != HIDWORD(range_bits))
  {
    v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
    mismatch_bits = lock_free::bitmap_t::find_mismatch_bits((a1 + 4), range_bits, mismatch_bits, &v11);
  }

  return *(this + 44) + *a1 / (*(*(this + 1) + 56) + 1) * *(*(this + 1) + 56) * *(*(this + 1) + 28) + ((mismatch_bits * *(*(this + 1) + 26)) >> 1);
}

unint64_t di_asif::details::map_element::search_for_pattern_match(void *a1, di_asif::details::table *this, unsigned int a3, unint64_t a4, uint64_t a5)
{
  if (a5 != a4)
  {
    range_bits = di_asif::details::table::make_range_bits(this, a4, a5 - a4);
    match_bits = HIDWORD(range_bits);
    if (range_bits != HIDWORD(range_bits))
    {
      v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
      match_bits = lock_free::bitmap_t::find_match_bits((a1 + 4), range_bits, match_bits, &v11);
    }

    return *(this + 44) + *a1 / (*(*(this + 1) + 56) + 1) * *(*(this + 1) + 56) * *(*(this + 1) + 28) + ((match_bits * *(*(this + 1) + 26)) >> 1);
  }

  return a4;
}

atomic_ullong *analytics_collector_t::bitmapped_entry_to_other_type(atomic_ullong *a1, int a2, uint64_t a3)
{
  result = analytics_collector_t::handle_flag_change(a1, 3, a2);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (a2 != 2)
  {
    v8 = a1 + 18;
  }

  if (a2)
  {
    v7 = a1 + 16;
  }

  if (a2 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, -a3, memory_order_relaxed);
  return result;
}

void *di_asif::details::table_entry_obj::set_offset(void *this, unint64_t a2)
{
  v2 = *(*(*this + 8) + 28);
  v3 = (*(*this + 56) + 16 * this[1] + 8);
  if (v2 <= a2)
  {
    v4 = a2 / v2;
    v5 = *v3;
    v6 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v6, *v3 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v5)
    {
      v7 = v6;
      do
      {
        atomic_compare_exchange_strong_explicit(v3, &v7, v6 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v6;
        v6 = v7;
      }

      while (!v8);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v3, 0xFF80000000000000, memory_order_relaxed);
  }

  return this;
}

unint64_t di_asif::details::table::bitmap_idx_to_tag(di_asif::details::table *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 72);
  if ((v3 & (v3 - 1)) != 0)
  {
    v4 = 0;
    v5 = 2 * v3;
    do
    {
      v5 >>= 1;
      ++v4;
    }

    while (v5 != 1);
    v3 = 1 << v4;
  }

  v6 = *(v2 + 88);
  if (v3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v3 >>= 1;
      ++v7;
    }

    while (v3 != 1);
  }

  return ((*(this + 44) / v6) << v7) | a2;
}

unint64_t *ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(&v8, v6, 1);
    if (v8 && (*(v8 + 344) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

atomic_ullong *ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_248EC0040(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t di_asif::details::dir_base::allocate_space(atomic_ullong *this, di_asif::details::ContextASIF *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 1, 1uLL);
  v6 = (*(*this + 16))(this);
  if (a3)
  {
    v7 = *(this + 7);
    v11[0] = &unk_285BEC918;
    v11[1] = a2;
    v11[2] = v7;
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v8 = space_allocators::FixedSize::allocate(v6, v11);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_248EC0164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_248EC01A4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t di_asif::details::table::allocate_backend_space_for_entry(uint64_t a1, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 + 56) + 16 * a4 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(a3 + 8) + 28))
  {
    return 0;
  }

  space = di_asif::details::dir_base::allocate_space(*(a1 + 8), a2, 0);
  if (space)
  {
    v9 = *(a3 + 56) + 16 * a4;
    v10 = *(v9 + 8);
    if ((v10 & 0x7FFFFFFFFFFFFFLL) != 0)
    {
LABEL_7:
      di_asif::details::dir_base::insert_space(*(a1 + 8), space, a2);
    }

    else
    {
      v11 = (v9 + 8);
      v12 = v10;
      v13 = space / *(*(a3 + 8) + 28);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v11, &v12, v10 & 0xFF80000000000000 | v13, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v10)
        {
          break;
        }

        v10 = v12;
        if ((v12 & 0x7FFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_7;
        }
      }
    }

    return 0;
  }

  return 4294967268;
}

uint64_t di_asif::details::dir_base::insert_space(atomic_ullong *this, unint64_t a2, di_asif::details::ContextASIF *a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 16))(this);
  v9[0] = &unk_285BEC9A8;
  v9[1] = a3;
  v9[3] = v9;
  space_allocators::FixedSize::insert(v6, a2, v9);
  result = std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v9);
  atomic_fetch_add(this + 1, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EC0374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void di_asif::details::table::set_entry_bitmap_range(uint64_t a1, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_data *a3, unsigned int *a4, unsigned int a5, uint64_t a6)
{
  v11 = *(*a3 + 8);
  di_asif::details::table::get_bitmap(a1, a2, (*(*a3 + 352) + (*(v11 + 56) + *(v11 + 56) * *(a3 + 1)) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26), 0, &v35);
  if (!v35 || (*(v35 + 344) & 1) != 0)
  {
    *&v38 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
    *(&v38 + 1) = 47;
    v39 = 16;
    di_log::logger<di_log::log_printer<497ul>>::logger(v40, &v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Can't load bitmap while setting range", 37);
    di_log::logger<di_log::log_printer<497ul>>::~logger(v40);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v32 = std::generic_category();
    exception[1] = 5;
    exception[2] = v32;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't load bitmap while setting range";
  }

  v12 = (a4[1] - *a4) >> 1;
  if ((a6 & 0x100000000) != 0)
  {
    if (a6 == 3)
    {
      v13 = *(a1 + 8);
      v14 = *(v13 + 16);
      if ((*(v14 + 160) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(v35 + 224))
      {
        v15 = v35 + 40;
      }

      else
      {
        v15 = 0;
      }

      v19 = *(v13 + 56);
      di_asif::details::map_element::get_bitmap_counts(v15, a1, *(a1 + 352) + v19 * *(v13 + 28) * (*(v35 + 40) / (v19 + 1)) + ((*(v13 + 26) * *a4) >> 1), *(a1 + 352) + v19 * *(v13 + 28) * (*(v35 + 40) / (v19 + 1)) + ((a4[1] * *(v13 + 26)) >> 1), v40);
      analytics_collector_t::operator-=(v14, v40);
      goto LABEL_20;
    }

    bitmap_range = di_asif::details::table_entry_data::get_bitmap_range(a3);
    *&v40[0] = bitmap_range;
    v17 = *(*(a1 + 8) + 16);
    if (*(v17 + 160) == 1)
    {
      analytics_collector_t::update_bitmapped_data_entry(v17, a6, ((HIDWORD(bitmap_range) - bitmap_range) >> 1) - v12);
    }

    if (v35)
    {
      if (*(v35 + 224))
      {
        v18 = v35 + 40;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    di_asif::details::map_element::set_range(v18, a1, v40, a6);
  }

  v14 = *(*(a1 + 8) + 16);
  if (*(v14 + 160))
  {
LABEL_20:
    LODWORD(v40[0]) = a5;
    *(&v40[0] + 1) = v12;
    analytics_collector_t::operator+=(v14, v40);
  }

LABEL_21:
  if (v35)
  {
    if (*(v35 + 224))
    {
      v20 = v35 + 40;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  di_asif::details::map_element::set_range(v20, a1, a4, a5);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v35);
  if ((a6 & 0x100000000) != 0 && a6 != 3)
  {
    v21 = *(*a3 + 8);
    v22 = *(a1 + 8);
    v23 = *(v22 + 56);
    di_asif::details::table_entry_map::table_entry_map(v40, a1, v23 + (v23 + 1) * (((*(*a3 + 352) + (*(v21 + 56) + *(v21 + 56) * *(a3 + 1)) / (*(v21 + 56) + 1) * *(v21 + 28)) / *(v21 + 26) - *(a1 + 352) / *(v22 + 26)) / (v23 * (*(v22 + 28) / *(v22 + 26)))));
    v37 = v40[0];
    v24 = (*(*&v40[0] + 56) + 16 * *(&v40[0] + 1));
    v25 = ref::ref_cnt::get(v24);
    *&v38 = &unk_285BF4C50;
    *(&v38 + 1) = v24;
    LOBYTE(v39) = v25;
    if (!v25)
    {
      *&v35 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
      *(&v35 + 1) = 47;
      v36 = 16;
      di_log::logger<di_log::log_printer<528ul>>::logger(v40, &v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Couldn't lock entry ", 20);
      di_asif::details::operator<<(v41, &v37);
      di_log::logger<di_log::log_printer<528ul>>::~logger(v40);
      v33 = __cxa_allocate_exception(0x40uLL);
      *v33 = &unk_285BF4E60;
      v34 = std::generic_category();
      v33[1] = 4294967282;
      v33[2] = v34;
      *(v33 + 24) = 0;
      *(v33 + 48) = 0;
      v33[7] = "Couldn't lock entry";
    }

    v26 = (*(*a3 + 56) + 16 * *(a3 + 1) + 8);
    v27 = *v26;
    v28 = *v26;
    atomic_compare_exchange_strong(v26, &v28, *v26 | 0xC000000000000000);
    if (v28 != v27)
    {
      v29 = v28;
      do
      {
        atomic_compare_exchange_strong(v26, &v29, v28 | 0xC000000000000000);
        v30 = v29 == v28;
        v28 = v29;
      }

      while (!v30);
    }

    atomic_store(1u, (a1 + 96));
    ref::details::ref_cnt_handle::~ref_cnt_handle(&v38);
  }
}

void sub_248EC0814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ref::details::ref_cnt_handle::~ref_cnt_handle(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<497ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<497ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BECA30;
  a1[45] = &unk_285BECB30;
  a1[46] = &unk_285BECB58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BECA30;
  a1[45] = &unk_285BECAB8;
  a1[46] = &unk_285BECAE0;
  return a1;
}

void sub_248EC0980(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<497ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

atomic_ullong *analytics_collector_t::update_bitmapped_data_entry(atomic_ullong *a1, int a2, unint64_t a3)
{
  result = analytics_collector_t::handle_flag_change(a1, a2, 3);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (a2 != 2)
  {
    v8 = a1 + 18;
  }

  if (a2)
  {
    v7 = a1 + 16;
  }

  if (a2 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, a3, memory_order_relaxed);
  return result;
}

void *di_asif::details::map_element::set_range(uint64_t a1, di_asif::details::table *a2, unsigned int *a3, unsigned int a4)
{
  v6 = *a3;
  v7 = a3[1];
  LOWORD(v9[0]) = a4 & 1 | (((a4 >> 1) & 1) << 8);
  result = lock_free::bitmap_t::update_pair_bits(a1 + 32, v6, v7, v9);
  if (result)
  {
    *(a1 + 113) = 1;
    result = di_asif::details::table_entry_map::table_entry_map(v9, a2, *a1);
    atomic_fetch_or((*(v9[0] + 56) + 16 * v9[1] + 8), 0x8000000000000000);
  }

  return result;
}

unint64_t di_asif::details::map_element::get_bitmap_counts@<X0>(unint64_t this@<X0>, di_asif::details::table *a2@<X3>, unint64_t a3@<X1>, unint64_t a4@<X2>, _OWORD *a5@<X8>)
{
  *a5 = 0u;
  a5[1] = 0u;
  if (a3 < a4)
  {
    v7 = a3;
    v8 = this;
    v10 = a5 + 3;
    v11 = a5 + 1;
    v12 = a5 + 1;
    v13 = *(a2 + 1);
    v14 = *(v13 + 26);
    do
    {
      block_bits = di_asif::details::map_element::get_block_bits(v8, 2 * ((v7 - (*(a2 + 44) + *(v13 + 56) * *(v13 + 28) * ((v7 / v14 - *(a2 + 44) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
      this = di_asif::details::map_element::search_for_pattern_match(v8, a2, block_bits, v7, a4);
      if (block_bits > 1)
      {
        v16 = v11;
        if (block_bits != 2)
        {
          v16 = v10;
        }
      }

      else
      {
        v16 = a5;
        if (block_bits)
        {
          v16 = v12;
        }
      }

      v13 = *(a2 + 1);
      v14 = *(v13 + 26);
      *v16 += (this - v7) / v14;
      v7 = this;
    }

    while (this < a4);
  }

  return this;
}

atomic_ullong *analytics_collector_t::operator-=(atomic_ullong *result, void *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, -*a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, -v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, -v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, -v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

atomic_ullong *analytics_collector_t::operator+=(atomic_ullong *result, uint64_t a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = *a2;
  v7 = result + 15;
  v8 = result + 17;
  if (*a2 != 2)
  {
    v8 = result + 18;
  }

  if (v6)
  {
    v7 = result + 16;
  }

  if (v6 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  atomic_fetch_add_explicit(v9, *(a2 + 8), memory_order_relaxed);
  v10 = result[10];
  v11 = v10;
  atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v11 != v10)
  {
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v12, (v11 & 0xFFFFFFFF00000000 | (v11 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v12 == v11;
      v11 = v12;
    }

    while (!v5);
  }

  return result;
}

{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = *a2;
  v7 = result + 11;
  v8 = result + 13;
  if (*a2 != 2)
  {
    v8 = result + 14;
  }

  if (v6)
  {
    v7 = result + 12;
  }

  if (v6 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  atomic_fetch_add_explicit(v9, *(a2 + 8), memory_order_relaxed);
  v10 = result[10];
  v11 = v10;
  atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v11 != v10)
  {
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v12, (v11 & 0xFFFFFFFF00000000 | (v11 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v12 == v11;
      v11 = v12;
    }

    while (!v5);
  }

  return result;
}

void *di_log::logger<di_log::log_printer<528ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<528ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BECC50;
  a1[45] = &unk_285BECD50;
  a1[46] = &unk_285BECD78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BECC50;
  a1[45] = &unk_285BECCD8;
  a1[46] = &unk_285BECD00;
  return a1;
}

void sub_248EC0EB8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<528ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_asif::details::table::update_map_entry(di_asif::details::table *this, uint64_t a2, unint64_t a3)
{
  result = di_asif::details::table_entry_map::table_entry_map(v13, this, a2);
  v6 = *(*(v13[0] + 8) + 28);
  v7 = (*(v13[0] + 56) + 16 * v13[1] + 8);
  if (v6 <= a3)
  {
    v8 = a3 / v6;
    v9 = *v7;
    v10 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v10, *v7 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v9)
    {
      v11 = v10;
      do
      {
        atomic_compare_exchange_strong_explicit(v7, &v11, v10 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
        v12 = v11 == v10;
        v10 = v11;
      }

      while (!v12);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v7, 0xFF80000000000000, memory_order_relaxed);
  }

  atomic_store(1u, this + 24);
  return result;
}

__n128 di_asif::details::table::make_unmap_iterators@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  di_asif::details::unmap_iterator_t::unmap_iterator_t(v15, a1, a2, a3, a4, a5, a6, 0);
  di_asif::details::unmap_iterator_t::unmap_iterator_t((a7 + 80), a1, a2, a3, a4, a6, a6, 0);
  v13 = v15[3];
  *(a7 + 32) = v15[2];
  *(a7 + 48) = v13;
  *(a7 + 64) = v15[4];
  result = v15[1];
  *a7 = v15[0];
  *(a7 + 16) = result;
  return result;
}

void di_asif::details::dir::defrag(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v22[0] = &unk_285BE5728;
  v22[1] = v3;
  (*(**(v3 + 16) + 80))(&v23);
  if (*(a1 + 24))
  {
    goto LABEL_46;
  }

  do
  {
    __lk.__m_ = (a1 + 3688);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 3688));
    if ((*(a1 + 24) & 1) == 0)
    {
      do
      {
        if (*(a1 + 3680))
        {
          break;
        }

        std::condition_variable::wait((a1 + 3632), &__lk);
      }

      while (*(a1 + 24) != 1);
    }

    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 2000000000;
    while ((*(a1 + 24) & 1) == 0 && v4.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v5.__d_.__rep_ = v4.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v5.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v6.__d_.__rep_)
        {
          if (v6.__d_.__rep_ < 1)
          {
            if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_16;
            }

            v7 = 0x8000000000000000;
          }

          else
          {
            if (v6.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v7 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_17;
            }

LABEL_16:
            v7 = 1000 * v6.__d_.__rep_;
LABEL_17:
            if (v7 > (v5.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
              std::condition_variable::__do_timed_wait((a1 + 3632), &__lk, v8);
              std::chrono::steady_clock::now();
              goto LABEL_21;
            }
          }
        }

        else
        {
          v7 = 0;
        }

        v8.__d_.__rep_ = v7 + v5.__d_.__rep_;
        goto LABEL_20;
      }

LABEL_21:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v4.__d_.__rep_)
      {
        break;
      }
    }

    *(a1 + 3680) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*(a1 + 168) != *(a1 + 160))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (*(a1 + 24) == 1)
        {
          break;
        }

        if (!di_asif::details::dir::defrag_table(a1, v22, v9))
        {
          ++v10;
        }

        di_asif::details::dir::get_table(a1, v22, v9, 0, 1, &__lk);
        if (__lk.__m_ && (__lk.__m_[8].__m_.__opaque[0] & 1) == 0)
        {
          if (__lk.__m_[6].__m_.__opaque[8])
          {
            v11 = &__lk.__m_->__m_.__opaque[32];
          }

          else
          {
            v11 = 0;
          }

          v10 += di_asif::details::table::defrag(v11, v22);
        }

        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&__lk);
        ++v9;
      }

      while (v9 < (*(a1 + 168) - *(a1 + 160)) >> 3);
      if (v10)
      {
        v12 = (*(*v23 + 16))(v23, 0);
        if (v12)
        {
          *&v17 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v17 + 1) = 48;
          v18 = 16;
          di_log::logger<di_log::log_printer<644ul>>::logger(&__lk, &v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Barrier failed after defrag, error ", 35);
          MEMORY[0x24C1ED390](&v20, v12);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(&__lk);
          MEMORY[0x24C1ED6A0](v21);
          DiskImage::Context::terminate_di(v22);
        }

        if (*(*(a1 + 16) + 160) == 1)
        {
          v13 = *(a1 + 32);
          if (*(v13 + 496) == 1)
          {
            DiskImageASIF::telemetry_t::send_defrag_count_event((v13 + 400));
          }
        }

        v14 = *(a2 + 24);
        if (!v14)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v15 = (*(*v14 + 48))(v14, v22);
        if (v15)
        {
          *&v17 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v17 + 1) = 48;
          v18 = 16;
          di_log::logger<di_log::log_printer<656ul>>::logger(&__lk, &v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Flush failed after defrag, ignoring. Error ", 43);
          MEMORY[0x24C1ED390](&v20, v15);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(&__lk);
          MEMORY[0x24C1ED6A0](v21);
        }
      }
    }
  }

  while (*(a1 + 24) != 1);
LABEL_46:
  v22[0] = &unk_285BE5728;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_248EC1510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  di_log::logger<di_log::log_printer<637ul>>::~logger(va);
  __cxa_end_catch();
  JUMPOUT(0x248EC1568);
}

void sub_248EC1540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  di_log::logger<di_log::log_printer<644ul>>::~logger(va);
  JUMPOUT(0x248EC1568);
}

void sub_248EC1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  di_log::logger<di_log::log_printer<656ul>>::~logger(va);
  JUMPOUT(0x248EC1568);
}

void sub_248EC1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 - 120) = a12;
  v14 = *(v12 - 96);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t di_asif::details::dir_base::create_context@<X0>(di_asif::details::dir_base *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 4);
  *a2 = &unk_285BE5728;
  a2[1] = v2;
  return (*(**(v2 + 16) + 80))(*(v2 + 16));
}

uint64_t di_asif::details::dir::defrag_table(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, uint64_t a3)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this + 1);
  v4 = *(this + 7);
  v5 = *(*(this + 20) + 8 * a3) * v4;
  v24 = v5;
  if (!v5 || 3 * v5 <= 4 * v3 * v4)
  {
    v11 = 4294967274;
    goto LABEL_18;
  }

  v9 = (*(this + 17) + 8 * a3);
  ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag(v9, a3, &v23);
  if (v23 && (*(v23 + 520) & 1) == 0)
  {
    if (*(v23 + 464))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v23 + 440, v23);
    }

    ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag(v9, a3, &v25);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v23, &v25);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v25);
    if (v23)
    {
      if ((*(v23 + 520) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  ref::Allocator<di_asif::details::table,unsigned long long>::allocate(this + 288, a3, 1, &v25);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v23, &v25);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v25);
  if (v23)
  {
    if ((*(v23 + 520) & 1) == 0)
    {
      v10 = atomic_load((v23 + 24));
      if (v10 != 2)
      {
        v14 = *(this + 7);
        if (v14)
        {
          v15 = malloc_type_valloc(v14, 0x8B7C732DuLL);
          if (!v15)
          {
            exception = __cxa_allocate_exception(8uLL);
            v17 = std::bad_alloc::bad_alloc(exception);
            __cxa_throw(v17, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
          }
        }

        else
        {
          v15 = 0;
        }

        v27[0] = &unk_285BED4C8;
        v27[3] = v27;
        v25 = v15;
        std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v26, v27);
        std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v27);
        v18 = *(this + 7);
        v19 = (*(**(a2 + 2) + 40))(*(a2 + 2));
        if (v19 - v24 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19 - v24;
        }

        v11 = di_asif::details::dir_base::move_realloc_chunk(this, a2, v25, v20, v24);
        v22 = v21;
        if (v23 && *(v23 + 464))
        {
          std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v23 + 440, v23);
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          (*(*this + 40))(this, *(this + 11) * a3, v22);
          std::mutex::lock((this + 3800));
          std::deque<unsigned long long>::emplace_back<unsigned long long &>(this + 3752, &v24);
          atomic_store(1u, this + 900);
          std::mutex::unlock((this + 3800));
          v11 = 0;
        }

        std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v25, 0);
        std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v26);
        goto LABEL_16;
      }
    }
  }

  if (v23 && (*(v23 + 520) & 1) == 0)
  {
LABEL_14:
    (*(*this + 24))(this);
  }

  v11 = 4294967248;
LABEL_16:
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v23);
LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_248EC1908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11)
{
  std::mutex::unlock((v11 + 3800));
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&a11, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v12 + 8);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&a9);
  _Unwind_Resume(a1);
}

void *di_asif::details::dir::get_table@<X0>(di_asif::details::dir *this@<X0>, di_asif::details::ContextASIF *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, unint64_t *a6@<X8>)
{
  result = ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag((*(this + 17) + 8 * a3), a3, a6);
  if (!*a6 || (*(*a6 + 520) & 1) != 0)
  {
    di_asif::details::dir::load_create_table(this, a2, a3, *(*(this + 20) + 8 * a3) * *(this + 7), a4, a5, &v14);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(a6, &v14);
    result = ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v14);
    if (*a6)
    {
      if ((*(*a6 + 520) & 1) == 0)
      {
        v13 = atomic_load(a6);
        v14 = v13;
        atomic_store(atomic_exchange(&v14, 0), (*(this + 17) + 8 * a3));
      }
    }
  }

  return result;
}

uint64_t di_asif::details::table::defrag(di_asif::details::table *this, di_asif::details::ContextASIF *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = atomic_load((*(this + 1) + 8));
  v5 = *(this + 1);
  v6 = *(v5 + 28);
  if (v6)
  {
    v7 = malloc_type_valloc(*(v5 + 28), 0x8B7C732DuLL);
    if (!v7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v9, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v7 = 0;
  }

  v18[0] = &unk_285BED4C8;
  v19[1] = v18;
  v20 = v7;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v21, v18);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v18);
  di_asif::details::table::make_map_entry_iterators(this, v10, v18);
  v11 = 0;
  v12 = v4 * v6;
  while ((v18[0] != v19[3] || v18[1] != v19[4]) && (*(*(this + 1) + 24) & 1) == 0)
  {
    v13 = di_asif::details::table::defrag_map_entry(this, a2, v19, v12, v20);
    di_asif::details::table::make_data_entry_iterators_for_map(this, v19, v16);
    while (1)
    {
      if (!v13)
      {
        ++v11;
      }

      if (v16[0] == v17[3] && v16[1] == v17[4] || (*(*(this + 1) + 24) & 1) != 0)
      {
        break;
      }

      v13 = di_asif::details::table::defrag_entry(this, a2, v17, v12, v20);
      di_asif::details::data_entry_iterator_t::operator++(v16);
    }

    di_asif::details::map_entry_iterator_t::operator++(v18);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v20, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v21);
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_248EC1C80(_Unwind_Exception *a1)
{
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v2 - 128), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<637ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<637ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BECE70;
  a1[45] = &unk_285BECF70;
  a1[46] = &unk_285BECF98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BECE70;
  a1[45] = &unk_285BECEF8;
  a1[46] = &unk_285BECF20;
  return a1;
}

void sub_248EC1DB8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<637ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<644ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<644ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED090;
  a1[45] = &unk_285BED190;
  a1[46] = &unk_285BED1B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED090;
  a1[45] = &unk_285BED118;
  a1[46] = &unk_285BED140;
  return a1;
}

void sub_248EC1F24(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<644ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImage::Context::terminate_di(DiskImage::Context *this)
{
  v1 = *(this + 1);
  *&v4 = "DiskImage::terminate()";
  *(&v4 + 1) = 20;
  v5 = 16;
  di_log::logger<di_log::log_printer<246ul>>::logger(v6, &v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Encountered an inrecoverable I/O error, all future I/Os will be invalidated", 75);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v6);
  MEMORY[0x24C1ED6A0](&v8);
  atomic_store(1u, v1 + 8);
  v2 = (*(*v1 + 200))(v1);
  return process_terminator::terminate(v2);
}

void sub_248EC2050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<246ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<656ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<656ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED2B0;
  a1[45] = &unk_285BED3B0;
  a1[46] = &unk_285BED3D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED2B0;
  a1[45] = &unk_285BED338;
  a1[46] = &unk_285BED360;
  return a1;
}

void sub_248EC2168(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<656ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::dir::async_defrag(di_asif::details::dir *this)
{
  if (*(this + 453))
  {
    std::mutex::lock((this + 3688));
    *(this + 3680) = 1;
    std::condition_variable::notify_one((this + 3632));

    std::mutex::unlock((this + 3688));
  }
}

uint64_t di_asif::details::table::defrag_entry(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_obj *a3, uint64_t a4, char *a5)
{
  v5 = (*(*a3 + 56) + 16 * *(a3 + 1));
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v11 = 0;
    atomic_compare_exchange_strong(v5, &v11, 0xFFFFFFFFFFFFFFFFLL);
    v8 = v11 == 0;
  }

  v13[1] = v5;
  v14 = v8;
  v13[0] = &unk_285BF4C70;
  v15 = 0;
  if (v8)
  {
    v12 = (*(*(*a3 + 56) + 16 * *(a3 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
    v9 = di_asif::details::table::defrag_entry_locked(this, a2, a3, v12, a5);
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v13);
    if ((v9 & 0x80000000) == 0)
    {
      atomic_store(1u, this + 24);
      di_asif::details::table::return_chunk(this, v12);
    }
  }

  else
  {
    (*(**(this + 1) + 24))(*(this + 1), a2);
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v13);
    return 4294967282;
  }

  return v9;
}

uint64_t di_asif::details::table::defrag_entry_locked(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_obj *a3, uint64_t a4, char *a5)
{
  if (!a4)
  {
    return 0;
  }

  v10 = *(*(this + 1) + 28);
  v11 = (*(**(a2 + 2) + 40))(*(a2 + 2));
  if (v11 - a4 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11 - a4;
  }

  result = di_asif::details::dir_base::move_realloc_chunk(*(this + 1), a2, a5, v12, a4);
  if ((result & 0x8000000000000000) == 0)
  {
    di_asif::details::table_entry_obj::set_offset(a3, v14);
    return 0;
  }

  return result;
}

uint64_t di_asif::details::dir_base::move_realloc_chunk(atomic_ullong *this, di_asif::details::ContextASIF *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(details::get_dummy_shared_ptr() + 1);
  v28 = a3;
  v29 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = a4;
  v31 = a5;
  v32 = a4;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v11 = (*(**(a2 + 2) + 128))(*(a2 + 2), &v28);
  if (v11 != a4)
  {
    *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
    *(&v17 + 1) = 46;
    v18 = 16;
    di_log::logger<di_log::log_printer<2353ul>>::logger(&v19, &v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Can't read for defrag", 21);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(&v19);
    MEMORY[0x24C1ED6A0](v27);
    if (v11 < 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = -5;
    }

    goto LABEL_16;
  }

  space = di_asif::details::dir_base::allocate_space(this, a2, 0);
  if (space)
  {
    v13 = *(details::get_dummy_shared_ptr() + 1);
    *&v19 = a3;
    *(&v19 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = a4;
    v21 = space;
    v22 = a4;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sg_entry::operator=(&v28, &v19);
    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
    }

    v14 = (*(**(a2 + 2) + 120))(*(a2 + 2), &v28);
    if (v14 != a4)
    {
      *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
      *(&v17 + 1) = 46;
      v18 = 16;
      di_log::logger<di_log::log_printer<2363ul>>::logger(&v19, &v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Can't write table for defrag", 28);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(&v19);
      MEMORY[0x24C1ED6A0](v27);
      di_asif::details::dir_base::insert_space(this, space, a2);
      if (v14 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = -5;
      }

LABEL_16:
      a4 = --v15;
    }
  }

  else
  {
    a4 = -28;
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  return a4;
}

void sub_248EC26A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<2363ul>>::~logger(va);
  v6 = *(v4 - 152);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table::defrag_map_entry(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_map *a3, uint64_t a4, char *a5)
{
  v5 = (*(*a3 + 56) + 16 * *(a3 + 1));
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = 0;
    atomic_compare_exchange_strong(v5, &v12, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v12 == 0;
  }

  v23[1] = v5;
  v24 = v11;
  v23[0] = &unk_285BF4C70;
  v25 = 0;
  if (!v11)
  {
    (*(**(this + 1) + 24))(*(this + 1));
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v23);
    return 4294967274;
  }

  v13 = *(this + 1);
  v14 = *(v13 + 26);
  v15 = ((*(*a3 + 352) + *(a3 + 1) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / v14 - *(this + 44) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14));
  v16 = di_asif::details::table::bitmap_idx_to_tag(this, v15);
  ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag((*(this + 9) + 8 * v15), v16, &v22);
  if (!v22 || (*(v22 + 344) & 1) != 0)
  {
    goto LABEL_13;
  }

  if (*(v22 + 288))
  {
    std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v22 + 264, v22);
  }

  ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag((*(this + 9) + 8 * v15), v16, &v21);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v22, &v21);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v21);
  if (v22 && (*(v22 + 344) & 1) == 0)
  {
    (*(**(this + 1) + 24))(*(this + 1));
    v20 = 0;
    v18 = 4294967274;
  }

  else
  {
LABEL_13:
    (*(**(this + 1) + 32))(&v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v22, &v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v21);
    if (!v22 || (*(v22 + 344) & 1) != 0 || (v17 = atomic_load((v22 + 24)), v17 == 2))
    {
      if (v22 && (*(v22 + 344) & 1) == 0)
      {
        (*(**(this + 1) + 24))(*(this + 1));
        v18 = 4294967248;
      }

      else
      {
        v18 = 4294967274;
      }
    }

    else
    {
      v6 = (*(*(*a3 + 56) + 16 * *(a3 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
      v18 = di_asif::details::table::defrag_entry_locked(this, a2, a3, v6, a5);
    }

    if (v22 && (*(v22 + 344) & 1) == 0 && *(v22 + 288))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v22 + 264, v22);
    }

    v20 = 1;
  }

  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v22);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v23);
  if (!v20)
  {
    return 4294967248;
  }

  if (!v18)
  {
    atomic_store(1u, this + 24);
    di_asif::details::table::return_chunk(this, v6);
  }

  return v18;
}

void sub_248EC2A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(va1);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table::make_data_entry_iterators_for_map@<X0>(di_asif::details::table *this@<X0>, const di_asif::details::table_entry_map *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 352) + *(a2 + 1) / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28);
  v7 = *(this + 1);
  v8 = *(this + 44) + *(v7 + 88);
  if (v6 >= v8)
  {
    v12 = 0;
    v11 = 0;
    v17 = 0;
    v16 = *(*a2 + 352) + *(a2 + 1) / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28);
  }

  else
  {
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(this, v6);
    v3 = a2;
    v11 = data_entry_for_offset & 0xFFFFFFFFFFFFFF00;
    v12 = data_entry_for_offset;
    v13 = *(*a2 + 8);
    v14 = *(v13 + 56);
    v15 = *(v13 + 28);
    v7 = *(this + 1);
    v16 = *(*a2 + 352) + *(a2 + 1) / (v14 + 1) * v14 * v15;
    v8 = *(this + 44) + *(v7 + 88);
    v17 = 1;
  }

  v18 = *(v7 + 26);
  v19 = *(v7 + 28) / v18;
  v20 = *(v7 + 56);
  v21 = v16 + v18 * v19 * v20;
  if (v21 >= v8)
  {
    v23 = 0;
    result = 0;
  }

  else
  {
    result = di_asif::details::table::get_data_entry_for_offset(this, v16 + v18 * v19 * v20);
    v23 = 1;
  }

  *a3 = this;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11 | v12;
  *(a3 + 24) = v3;
  *(a3 + 32) = v17;
  *(a3 + 40) = this;
  *(a3 + 48) = v21;
  *(a3 + 56) = result;
  *(a3 + 64) = a2;
  *(a3 + 72) = v23;
  return result;
}

void di_asif::details::dir::~dir(di_asif::details::dir *this)
{
  *this = &unk_285BEC4E0;
  v2 = *(this + 4);
  if (*(v2 + 496) == 1)
  {
    DiskImageASIF::telemetry_t::~telemetry_t((v2 + 400));
    *(v2 + 496) = 0;
  }

  if (*(this + 453))
  {
    std::mutex::lock((this + 3688));
    *(this + 24) = 1;
    std::condition_variable::notify_one((this + 3632));
    std::mutex::unlock((this + 3688));
    std::thread::join(this + 453);
  }

  std::mutex::~mutex((this + 3800));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](this + 469);
  std::mutex::~mutex((this + 3688));
  std::condition_variable::~condition_variable((this + 3632));
  std::thread::~thread(this + 453);
  std::mutex::~mutex((this + 3536));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::~Allocator(this + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::~Allocator(this + 288);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this + 256, *(this + 33));
  std::mutex::~mutex(this + 3);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](this + 96);
}

{
  di_asif::details::dir::~dir(this);

  JUMPOUT(0x24C1ED730);
}

__n128 di_asif::details::dir::make_unmap_iterators@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  di_asif::details::unmap_iterator_t::unmap_iterator_t(v10, a2, a3, *(a1 + 88), *(a1 + 26), 0, *(a1 + 128), 0);
  di_asif::details::unmap_iterator_t::unmap_iterator_t((a4 + 80), a2, a3, *(a1 + 88), *(a1 + 26), *(a1 + 128), *(a1 + 128), 0);
  v8 = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = v8;
  *(a4 + 64) = v10[4];
  result = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = result;
  return result;
}

void di_asif::details::table::check_if_map_element_needed(di_asif::details::table *this, di_asif::details::ContextASIF *a2, uint64_t a3)
{
  di_asif::details::table_entry_map::table_entry_map(&v29, this, a3);
  v33 = v29;
  if ((*(*(v29 + 56) + 16 * *(&v29 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v29 + 8) + 28))
  {
    di_asif::details::table::make_data_entry_iterators_for_map(this, &v33, &v29);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    while (v26 != v32)
    {
      v5 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
      if (v5 >> 62 == 3)
      {
        return;
      }

      di_asif::details::data_entry_iterator_t::operator++(&v26);
    }

    if ((*(*(v33 + 56) + 16 * *(&v33 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
    {
      v26 = v29;
      if (v28 == v31)
      {
        if (v28)
        {
          *(&v27 + 1) = *(&v30 + 1);
        }
      }

      else if (v28)
      {
        LOBYTE(v28) = 0;
      }

      else
      {
        v27 = v30;
        LOBYTE(v28) = 1;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (v26 != v32)
      {
        ref::ref_cnt::take_exclusive(*(v27 + 56) + 16 * *(&v27 + 1), 0, v22);
        v6 = v24;
        if (v24 >= v25)
        {
          v7 = std::vector<ref::details::ref_cnt_set_handle>::__emplace_back_slow_path<ref::details::ref_cnt_set_handle>(&v23, v22);
        }

        else
        {
          ref::details::ref_cnt_handle::ref_cnt_handle(v24, v22);
          *v6 = &unk_285BF4C70;
          *(v6 + 24) = v22[3];
          v7 = v6 + 32;
        }

        v24 = v7;
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v22);
        v8 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
        if (v8 >> 62 == 3)
        {
          goto LABEL_34;
        }

        di_asif::details::data_entry_iterator_t::operator++(&v26);
      }

      v9 = v33;
      v10 = *(v33 + 56) + 16 * *(&v33 + 1);
      if ((*(v10 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
      {
        ref::ref_cnt::take_exclusive(v10, 0, v22);
        v11 = *(v9 + 8);
        v12 = *(v11 + 28);
        if ((*(*(v9 + 56) + 16 * *(&v9 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v12)
        {
          di_asif::details::table::get_bitmap(this, a2, (*(v9 + 352) + *(v11 + 56) * v12 * (*(&v9 + 1) / (*(v11 + 56) + 1))) / *(*(this + 1) + 26), 1, &v21);
          if (v21 && (*(v21 + 344) & 1) == 0)
          {
            atomic_fetch_and((*(v9 + 56) + 16 * *(&v9 + 1) + 8), 0xBFFFFFFFFFFFFFFFLL);
            if (*(v21 + 224))
            {
              v13 = v21 + 40;
            }

            else
            {
              v13 = 0;
            }

            v14 = *(v13 + 16);
            *(v13 + 16) = 0;
            *(v13 + 24) = v14;
            *(v13 + 112) = 0;
            if (v21 && *(v21 + 288))
            {
              std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v21 + 264, v21);
            }

            v15 = *(this + 1);
            v16 = ((*(v33 + 352) + *(&v33 + 1) / (*(*(v33 + 8) + 56) + 1) * *(*(v33 + 8) + 56) * *(*(v33 + 8) + 28)) / *(v15 + 26) - *(this + 44) / *(v15 + 26)) / (*(v15 + 56) * (*(v15 + 28) / *(v15 + 26)));
            v20 = 0;
            atomic_store(atomic_exchange(&v20, 0), (*(this + 9) + 8 * v16));
            v17 = *(this + 1);
            v18 = *(v17 + 16);
            if (*(v18 + 160) == 1)
            {
              v19 = *(v30 + 8);
              lock_free::bitmap_t::set_bit(v18, ((*(v30 + 352) + (*(v19 + 56) + *(v19 + 56) * *(&v30 + 1)) / (*(v19 + 56) + 1) * *(v19 + 28)) / *(v19 + 26) - *(this + 44) / *(v17 + 26)) / (*(v17 + 56) * (*(v17 + 28) / *(v17 + 26))) + *(v17 + 72) * (*(this + 44) / *(v17 + 88)), 0);
            }
          }

          ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v21);
        }

        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v22);
      }

LABEL_34:
      v22[0] = &v23;
      std::vector<ref::details::ref_cnt_set_handle>::__destroy_vector::operator()[abi:ne200100](v22);
    }
  }
}

void sub_248EC320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_ullong a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&a11);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(&a12);
  a12 = &a16;
  std::vector<ref::details::ref_cnt_set_handle>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *di_asif::details::operator<<(void *a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "table entry data@", 17);
  v4 = MEMORY[0x24C1ED3E0](v3, *(*a2 + 352) + (*(*(*a2 + 8) + 56) + *(*(*a2 + 8) + 56) * a2[1]) / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 28));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " = offset = ", 12);
  v6 = MEMORY[0x24C1ED3E0](v5, (*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", flags = ", 10);
  v8 = atomic_load((*(*a2 + 56) + 16 * a2[1] + 8));
  v10 = v8 >> 62;
  return di_asif::details::operator<<(v7, &v10);
}

void di_asif::details::operator<<(void *a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "table entry map@", 16);
  v4 = MEMORY[0x24C1ED3E0](v3, *(*a2 + 352) + a2[1] / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " = offset = ", 12);
  v5 = (*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28);

  JUMPOUT(0x24C1ED3E0);
}

__n128 di_asif::details::table::unmap@<Q0>(uint64_t a1@<X0>, di_asif::details::ContextASIF *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  std::mutex::lock((a1 + 104));
  di_asif::details::table::make_unmap_iterators(a3, a4, *(*(a1 + 8) + 28), *(*(a1 + 8) + 26), *(a1 + 352), *(*(a1 + 8) + 88) + *(a1 + 352), v79);
  v9 = 0;
  LOBYTE(v77) = 0;
  v78 = 0;
  v69 = *(*(*(a1 + 8) + 32) + 216);
  while (*v79 != v82 || *&v79[8] != v83 || *&v79[16] != *v79 + 16 * *&v79[8] && (*&v80[8] != v84 || *&v80[24] != v85))
  {
    v10 = *&v79[24];
    v11 = *v80;
    *&v80[8] += *&v80[24] * *v80;
    *&v79[24] = di_asif::details::unmap_iterator_t::make_val(v79);
    *v80 = v12;
    v13 = v10 * *(*(a1 + 8) + 26);
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(a1, v13);
    v16 = data_entry_for_offset;
    v17 = v15;
    *&v76 = data_entry_for_offset;
    *(&v76 + 1) = v15;
    if (v78 == 1)
    {
      v18 = v77;
      v19 = *(data_entry_for_offset + 352) == *(v77 + 352) && v15 == *(&v77 + 1);
      if (!v19)
      {
        v9 |= di_asif::details::table::update_entry_if_bits_in_same_state(a1, a2, &v77);
        v20 = *(v18 + 8);
        v21 = (*(v18 + 352) + (*(v20 + 56) + *(v20 + 56) * *(&v18 + 1)) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26);
        v22 = *(a1 + 8);
        v23 = *(v22 + 56);
        v24 = *(v22 + 28);
        v25 = *(v22 + 26);
        v26 = v23 * (v24 / v25);
        v27 = *(a1 + 352) / v25;
        ++v23;
        v28 = v23 + v23 * ((v21 - v27) / v26);
        v29 = v16[1];
        if (v28 != v23 + v23 * (((v16[44] + (*(v29 + 56) + *(v29 + 56) * v17) / (*(v29 + 56) + 1) * *(v29 + 28)) / *(v29 + 26) - v27) / v26) && (v9 & 1) != 0)
        {
          di_asif::details::table::check_if_map_element_needed(a1, a2, v28 - 1);
          v9 = 0;
        }
      }

      *(&v77 + 1) = v17;
    }

    else
    {
      v77 = v76;
      v78 = 1;
    }

    v30 = atomic_load((v16[7] + 16 * v17 + 8));
    v31 = v30 >> 62;
    if (v30 >> 62 != 2)
    {
      v32 = v76;
      v33 = *(v76 + 8);
      v34 = *(v33 + 56);
      v35 = *(v33 + 28);
      if (*(v76 + 352) + (v34 + v34 * *(&v76 + 1)) / (v34 + 1) * v35 == v13 && v11 * *(*(a1 + 8) + 26) == v35)
      {
        ref::ref_cnt::take_exclusive(*(v76 + 56) + 16 * *(&v76 + 1), 0, v74);
        if (!v75)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          di_log::logger<di_log::log_printer<973ul>>::logger(v72, &v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Couldn't lock entry ", 20);
          di_asif::details::operator<<(v73, &v76);
          di_log::logger<di_log::log_printer<973ul>>::~logger(v72);
          exception = __cxa_allocate_exception(0x40uLL);
          *exception = &unk_285BF4E60;
          v65 = std::generic_category();
          exception[1] = 4294967282;
          exception[2] = v65;
          *(exception + 24) = 0;
          *(exception + 48) = 0;
          exception[7] = "Couldn't lock entry";
        }

        v36 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v37 = v36 & 0xC000000000000000;
        if (v31 != 1 && v37 == 0x4000000000000000)
        {
          goto LABEL_32;
        }

        v39 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v40 = *v39;
        v41 = *v39 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        for (i = *v39; ; v41 = i & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000)
        {
          atomic_compare_exchange_strong(v39, &i, v41);
          if (i == v40)
          {
            break;
          }

          v40 = i;
        }

        v48 = v40 >> 62;
        di_asif::details::table::update_analytics_counters_data_entry(a1, a2, v40 >> 62, 2, &v76);
        v9 |= v48 == 3;
        v49 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v50 = *v49;
        v51 = *(*(v76 + 8) + 28);
        if (v51)
        {
          atomic_fetch_and_explicit(v49, 0xFF80000000000000, memory_order_relaxed);
          goto LABEL_41;
        }

        v52 = *v49;
        v53 = *v49;
        atomic_compare_exchange_strong_explicit(v49, &v53, *v49 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
        if (v53 == v52)
        {
          atomic_store(1u, (a1 + 96));
          goto LABEL_32;
        }

        do
        {
          v54 = v53;
          atomic_compare_exchange_strong_explicit(v49, &v54, v53 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v19 = v54 == v53;
          v53 = v54;
        }

        while (!v19);
LABEL_41:
        v55 = (v50 & 0x7FFFFFFFFFFFFFLL) * v51;
        atomic_store(1u, (a1 + 96));
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v74);
        if (v55)
        {
          di_asif::details::table::return_chunk(a1, v55);
        }
      }

      else if ((v30 & 0x4000000000000000) != 0)
      {
        v45 = (*(v76 + 56) + 16 * *(&v76 + 1));
        v46 = ref::ref_cnt::get(v45);
        v74[0] = &unk_285BF4C50;
        v74[1] = v45;
        v75 = v46;
        if (!v46)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          di_log::logger<di_log::log_printer<998ul>>::logger(v72, &v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Couldn't lock entry ", 20);
          di_asif::details::operator<<(v73, &v76);
          di_log::logger<di_log::log_printer<998ul>>::~logger(v72);
          v62 = __cxa_allocate_exception(0x40uLL);
          *v62 = &unk_285BF4E60;
          v63 = std::generic_category();
          v62[1] = 4294967282;
          v62[2] = v63;
          *(v62 + 24) = 0;
          *(v62 + 48) = 0;
          v62[7] = "Couldn't lock entry";
        }

        v47 = *(*(a1 + 8) + 26);
        *v72 = di_asif::details::table::make_range_bits(a1, v10 * v47, v11 * v47);
        di_asif::details::table::set_entry_bitmap_range(a1, a2, &v76, v72, 2u, v31 | 0x100000000);
        ref::details::ref_cnt_handle::~ref_cnt_handle(v74);
      }

      else if ((v69 & 1) == 0)
      {
        ref::ref_cnt::take_exclusive(*(v76 + 56) + 16 * *(&v76 + 1), 0, v74);
        if (!v75)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          di_log::logger<di_log::log_printer<1010ul>>::logger(v72, &v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Couldn't exclusively lock entry ", 32);
          di_asif::details::operator<<(v73, &v76);
          di_log::logger<di_log::log_printer<1010ul>>::~logger(v72);
          v66 = __cxa_allocate_exception(0x40uLL);
          *v66 = &unk_285BF4E60;
          v67 = std::generic_category();
          v66[1] = 4294967282;
          v66[2] = v67;
          *(v66 + 24) = 0;
          *(v66 + 48) = 0;
          v66[7] = "Couldn't lock entry";
        }

        v43 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v44 = *(*(a1 + 8) + 26);
        *v72 = di_asif::details::table::make_range_bits(a1, v10 * v44, v11 * v44);
        di_asif::details::table::set_entry_bitmap_range(a1, a2, &v76, v72, 2u, (v43 >> 62) | 0x100000000);
LABEL_32:
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v74);
      }
    }
  }

  if (v78 == 1 && ((di_asif::details::table::update_entry_if_bits_in_same_state(a1, a2, &v77) | v9) & 1) != 0)
  {
    v56 = *(v77 + 8);
    v57 = *(a1 + 8);
    v58 = *(v57 + 56);
    di_asif::details::table::check_if_map_element_needed(a1, a2, v58 + (v58 + 1) * (((*(v77 + 352) + (*(v56 + 56) + *(v56 + 56) * *(&v77 + 1)) / (*(v56 + 56) + 1) * *(v56 + 28)) / *(v56 + 26) - *(a1 + 352) / *(v57 + 26)) / (v58 * (*(v57 + 28) / *(v57 + 26)))));
  }

  v59 = *&v80[16];
  a5[2] = *v80;
  a5[3] = v59;
  a5[4] = v81;
  v60 = *&v79[16];
  *a5 = *v79;
  a5[1] = v60;
  std::mutex::unlock((a1 + 104));
  return result;
}

atomic_ullong *di_asif::details::table::update_analytics_counters_data_entry(atomic_ullong *result, di_asif::details::ContextASIF *a2, int a3, int a4, void *a5)
{
  v5 = *(result[1] + 16);
  if (*(v5 + 160) == 1)
  {
    v9 = result;
    analytics_collector_t::handle_flag_change(*(result[1] + 16), a3, a4);
    v10 = *(*a5 + 8);
    v11 = v9[1];
    result = lock_free::bitmap_t::get_bit(v5, ((*(*a5 + 352) + (*(v10 + 56) + *(v10 + 56) * a5[1]) / (*(v10 + 56) + 1) * *(v10 + 28)) / *(v10 + 26) - v9[44] / *(v11 + 26)) / (*(v11 + 56) * (*(v11 + 28) / *(v11 + 26))) + *(v11 + 72) * (v9[44] / *(v11 + 88)));
    if (a3 == 3)
    {
      if (result)
      {
        v12 = *(*a5 + 8);
        di_asif::details::table::get_bitmap(v9, a2, (*(*a5 + 352) + (*(v12 + 56) + *(v12 + 56) * a5[1]) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0, &v19);
        v13 = *(*a5 + 8);
        range_bits = di_asif::details::table::make_range_bits(v9, *(*a5 + 352) + (*(v13 + 56) + *(v13 + 56) * a5[1]) / (*(v13 + 56) + 1) * *(v13 + 28), *(v13 + 28));
        if (v19)
        {
          v15 = v19 + 40;
          if (!*(v19 + 224))
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v9[1];
        v17 = *(v16 + 56);
        di_asif::details::map_element::get_bitmap_counts(v15, v9, v9[44] + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1)) + ((range_bits * *(v16 + 26)) >> 1), v9[44] + ((HIDWORD(range_bits) * *(v16 + 26)) >> 1) + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1)), v18);
        analytics_collector_t::operator-=(v5, v18);
        return ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v19);
      }
    }
  }

  return result;
}

void sub_248EC3E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<973ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<973ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED550;
  a1[45] = &unk_285BED650;
  a1[46] = &unk_285BED678;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED550;
  a1[45] = &unk_285BED5D8;
  a1[46] = &unk_285BED600;
  return a1;
}

void sub_248EC3F68(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<973ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<998ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<998ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED770;
  a1[45] = &unk_285BED870;
  a1[46] = &unk_285BED898;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED770;
  a1[45] = &unk_285BED7F8;
  a1[46] = &unk_285BED820;
  return a1;
}

void sub_248EC40D4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<998ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

atomic_ullong *analytics_collector_t::handle_flag_change(atomic_ullong *result, int a2, int a3)
{
  v3 = result[10];
  v4 = v3;
  atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v4 != v3)
  {
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v5, (v4 & 0xFFFFFFFF00000000 | (v4 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  v7 = result + 11;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = result + 13;
    }

    else
    {
      v8 = result + 14;
    }
  }

  else
  {
    v8 = result + 11;
    if (a2)
    {
      v8 = result + 12;
    }
  }

  atomic_fetch_add_explicit(v8, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = result + 13;
    }

    else
    {
      v7 = result + 14;
    }
  }

  else if (a3)
  {
    v7 = result + 12;
  }

  atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v11 == v10;
      v10 = v11;
    }

    while (!v6);
  }

  return result;
}

unint64_t di_asif::details::table::make_range_bits(di_asif::details::table *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  v4 = *(v3 + 26);
  if (v4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(v3 + 26);
  }

  if (!a3)
  {
    v5 = 0;
  }

  v6 = *(v3 + 28);
  v7 = *(v3 + 56);
  return ((2 * (((a2 - (*(this + 44) + v7 * v6 * ((a2 / v4 - *(this + 44) / v4) / (v7 * (v6 / v4))))) / v4) & 0x7FFFFFFF)) | (((v5 + a2 - v4 - (*(this + 44) + ((v5 + a2 - v4) / v4 - *(this + 44) / v4) / (v7 * (v6 / v4)) * v7 * v6)) / v4) << 33)) + 0x200000000;
}

uint64_t di_asif::details::table::flush_mapped_entry(di_asif::details::table *this, di_asif::details::ContextASIF *a2, void *a3, char a4)
{
  if ((atomic_fetch_and((*(*a3 + 56) + 16 * a3[1] + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if ((a4 & 2) != 0)
  {
    v9 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
    if (v9)
    {
      v13 = v9;
      DiskImage::Context::terminate_di(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      if (v13 < 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = -v13;
      }

      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Can't flush asif on table flush, backend barrier failed", v15);
    }
  }

  di_asif::details::table::get_bitmap(this, a2, (*(*a3 + 352) + a3[1] / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / *(*(this + 1) + 26), a4 & 1, &v22);
  if (v22 && (v22[344] & 1) == 0)
  {
    if (v22[224])
    {
      v10 = (v22 + 40);
    }

    else
    {
      v10 = 0;
    }

    v11 = di_asif::details::map_element::flush(v10, a2, this);
    if (v11)
    {
      DiskImage::Context::terminate_di(a2);
      v17 = __cxa_allocate_exception(0x40uLL);
      std::ostringstream::basic_ostringstream[abi:ne200100](v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Can't flush asif table, bitmap flush failed ", 44);
      if (a4)
      {
        v18 = "(locked)";
      }

      else
      {
        v18 = "(unlocked)";
      }

      if (a4)
      {
        v19 = 8;
      }

      else
      {
        v19 = 10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v18, v19);
      if (v11 < 0)
      {
        v20 = v11;
      }

      else
      {
        v20 = -v11;
      }

      DiskImagesRuntimeException::DiskImagesRuntimeException(v17, v21, v20);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v22);
  return v4;
}

void sub_248EC4588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::map_element::flush(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3)
{
  std::mutex::lock((this + 120));
  v6 = di_asif::details::map_element::flush_locked(this, a2, a3, *(*(a3 + 1) + 28));
  std::mutex::unlock((this + 120));
  return v6;
}

uint64_t di_asif::details::table::flush(di_asif::details::table *this, di_asif::details::ContextASIF *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v30 = atomic_exchange(this + 24, 0);
  std::mutex::lock((this + 280));
  v4 = *(this + 248);
  v5 = *(this + 264);
  v50 = *(this + 232);
  v51 = v4;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  v6 = v52;
  v52 = v5;
  *(this + 264) = v6;
  std::mutex::unlock((this + 280));
  v7 = *(this + 1);
  v8 = *(v7 + 26);
  v9 = *(v7 + 56);
  v10 = v8 + 8 * *(v7 + 64) - 1;
  v11 = v10 / v8 * v8;
  if (v10 == v10 % v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v11, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v29 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v29, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  v55 = &unk_285BED4C8;
  v56 = &v55;
  v53 = v12;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v54, &v55);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v55);
  v13 = v53;
  std::mutex::lock((this + 168));
  di_asif::details::table::make_map_entry_iterators(this, v14, v45);
  v15 = 0;
  *&v40 = a2;
  *(&v40 + 1) = &v44;
  *&v41 = v13;
  *(&v41 + 1) = v42;
  v37 = v40;
  v44 = *(this + 43);
  v42[0] = a2;
  v42[1] = &v43;
  v34 = a2;
  v35 = &v44;
  v38 = v41;
  v36 = v13;
  v39 = v42;
  v16 = v13;
  v43 = 0;
  while (v45[0] != v48 || v45[1] != v49)
  {
    v43 = di_asif::details::table::flush_mapped_entry(this, a2, &v46, 0);
    ref::ref_cnt::take_exclusive(*(v46 + 56) + 16 * v47, 0, v33);
    v17 = di_asif::details::table::flush_mapped_entry(this, a2, &v46, 1);
    v43 |= v17;
    ++v15;
    if (v30)
    {
      if ((atomic_fetch_and((*(v46 + 56) + 16 * v47 + 8), 0xBFFFFFFFFFFFFFFFLL) & 0x4000000000000000) != 0 && v11 < 8 * v9 + 8)
      {
        di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0::operator()(&v40, v13);
        v16 = v13;
      }

      di_asif::details::table::make_data_entry_iterators_for_map(this, &v46, v31);
      if (v31[0] == v32[3] && v31[1] == v32[4])
      {
        v19 = atomic_load((*(v46 + 56) + 16 * v47 + 8));
        *v16 = bswap64(v19 & 0x3FFFFFFFFFFFFFFFLL);
        v56 = 0;
        operator new();
      }

      di_asif::details::table_entry_data::validate(v32);
      v18 = atomic_load((*(v32[0] + 56) + 16 * v32[1] + 8));
      *v16 = bswap64(v18);
      v56 = 0;
      operator new();
    }

    v44 = *(this + 43) + 8 * (v15 + v15 * *(*(this + 1) + 56));
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v33);
    di_asif::details::map_entry_iterator_t::operator++(v45);
  }

  std::mutex::unlock((this + 168));
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v53, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v54);
  v20 = *(&v52 + 1);
  v21 = (*(&v50 + 1) + 8 * (v52 >> 9));
  if (v51 == *(&v50 + 1))
  {
    v22 = 0;
    v24 = 0;
    v23 = (*(&v50 + 1) + 8 * ((v52 + *(&v52 + 1)) >> 9));
  }

  else
  {
    v22 = &(*v21)[v52 & 0x1FF];
    v23 = (*(&v50 + 1) + 8 * ((v52 + *(&v52 + 1)) >> 9));
    v24 = (*v23 + 8 * ((v52 + *(&v52 + 1)) & 0x1FF));
  }

  di_asif::details::dir_base::insert_space<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(*(this + 1), v21, v22, v23, v24, a2);
  if (v20)
  {
    (*(**(this + 1) + 24))(*(this + 1));
  }

  v25 = *(this + 100);
  if (v25 == 1)
  {
    (*(**(this + 1) + 40))(*(this + 1), *(this + 44), *(this + 43));
    *(this + 100) = 0;
  }

  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&v50);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_248EC4DCC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62, uint64_t a63)
{
  std::mutex::unlock((v63 + 168));
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v64 - 256), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v64 - 248);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock((v63 + 280));
    v67 = *(v63 + 264) + *(v63 + 272);
    v68 = *(v63 + 240);
    v69 = (v68 + 8 * (v67 >> 9));
    if (*(v63 + 248) == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = *v69 + 8 * (v67 & 0x1FF);
    }

    v71 = (a59 + 8 * (a62 >> 9));
    if (a60 == a59)
    {
      v72 = 0;
      v73 = 0;
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
    }

    else
    {
      v72 = &(*v71)[8 * (a62 & 0x1FF)];
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
      v73 = (*v74 + 8 * ((a63 + a62) & 0x1FF));
    }

    std::deque<unsigned long long>::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(a10, v69, v70, v71, v72, v74, v73);
    std::mutex::unlock((v63 + 280));
    atomic_fetch_or((v63 + 96), a16 != 0);
    __cxa_rethrow();
  }

  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&a58);
  _Unwind_Resume(a1);
}

void sub_248EC4FB0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248EC4FA8);
}

void di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0::operator()(DiskImage::Context **a1, di_asif::details::ContextASIF *a2)
{
  v4 = a1[3];
  if (*v4[1] == 1)
  {
    di_asif::details::do_barrier_or_throw(*v4, a2);
    *v4[1] = 0;
  }

  v5 = a1[2];
  v6 = a2 - v5;
  v7 = *a1[1];
  v8 = *(details::get_dummy_shared_ptr() + 1);
  v16 = v5;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v6;
  v19 = v7;
  v20 = v6;
  v22 = 0;
  v23 = 0;
  v21 = 1;
  sg_entry::sg_entry(v24, &v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v9 = (*(**(*a1 + 2) + 120))(*(*a1 + 2), v24);
  *a1[1] += v6;
  if (v6 != v9)
  {
    v10 = *a1;
    v11 = v9;
    DiskImage::Context::terminate_di(v10);
    LODWORD(v12) = v11;
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = exception;
    if (v12 < 0)
    {
      v12 = v12;
    }

    else
    {
      v12 = -v12;
    }

    *exception = &unk_285BF4E60;
    v15 = std::generic_category();
    v14[1] = v12;
    v14[2] = v15;
    *(v14 + 24) = 0;
    *(v14 + 48) = 0;
    v14[7] = "Can't flush asif table, backend write failed";
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_248EC5150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL di_asif::details::table_entry_data::validate(di_asif::details::table_entry_data *this)
{
  atomic_load((*(*this + 56) + 16 * *(this + 1) + 8));
  v1 = atomic_load((*(*this + 56) + 16 * *(this + 1) + 8));
  if ((v1 & 0x3F80000000000000) != 0)
  {
    *&v3 = "di_asif::details::table_entry_data::validate() const";
    *(&v3 + 1) = 44;
    v4 = 16;
    di_log::logger<di_log::log_printer<265ul>>::logger(v5, &v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Diskimages2 - ASIF - bad reserved bits ", 39);
    *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v6, v1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(v5);
    MEMORY[0x24C1ED6A0](&v7);
  }

  return (v1 & 0x3F80000000000000) == 0;
}

void sub_248EC5278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<265ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t *std::deque<unsigned long long>::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(uint64_t a1, char *a2, uint64_t a3, char **a4, char *a5, char *a6, char *a7)
{
  if (a7 == a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&a7[-*a6] >> 3) + ((a6 - a4) << 6) - ((a5 - *a4) >> 3);
  }

  return std::deque<unsigned long long>::__insert_bidirectional[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t di_asif::details::dir_base::insert_space<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(atomic_ullong *a1, unint64_t **a2, unint64_t *a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 16))(a1);
  v16[0] = &unk_285BEC9A8;
  v16[1] = a6;
  v16[3] = v16;
  space_allocators::FixedSize::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(v12, a2, a3, a4, a5, v16);
  result = std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v16);
  if (a5 == a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((a2 - a4) << 6) - ((a5 - *a4) >> 3) + a3 - *a2;
  }

  atomic_fetch_add(a1 + 1, v14);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EC53D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t di_asif::details::table::write(di_asif::details::table *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v54 = *(a3 + 3);
  *v85 = 0;
  v87 = 0;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v81, a3);
  v55 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(v81, a4))
  {
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(this, v83);
    v80 = v7;
    v8 = data_entry_for_offset[1];
    v9 = *(v8 + 56);
    v10 = *(v8 + 28);
    v69[0] = data_entry_for_offset[44] + (v9 + v9 * v7) / (v9 + 1) * v10;
    v69[1] = v69[0] + v10;
    v70 = 2;
    sg_vec_ns::details::sg_vec_iterator::subvec(v81, v69, a4, v73);
    if (!sg_vec_ns::details::sg_vec_iterator::operator==(v73, &v76))
    {
      *&v65 = &v85[1];
      *(&v65 + 1) = &data_entry_for_offset;
      v66 = v85;
      v67 = this;
      v68 = a2;
      v13 = (data_entry_for_offset[7] + 16 * v80);
      v14 = ref::ref_cnt::get(v13);
      v63[0] = &unk_285BF4C50;
      v63[1] = v13;
      v64 = v14;
      if (!v14)
      {
        *&v60 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v60 + 1) = 30;
        LODWORD(v61) = 16;
        di_log::logger<di_log::log_printer<1282ul>>::logger(v69, &v60);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Couldn't lock entry ", 20);
        di_asif::details::operator<<(&v71, &data_entry_for_offset);
        di_log::logger<di_log::log_printer<1282ul>>::~logger(v69);
        exception = __cxa_allocate_exception(0x40uLL);
        *exception = &unk_285BF4E60;
        v49 = std::generic_category();
        exception[1] = 4294967282;
        exception[2] = v49;
        *(exception + 24) = 0;
        *(exception + 48) = 0;
        exception[7] = "Couldn't lock entry";
      }

      v15 = v80;
      v16 = data_entry_for_offset[7];
      v17 = (*(v16 + 16 * v80 + 8) & 0x7FFFFFFFFFFFFFLL) * *(data_entry_for_offset[1] + 28);
      if (!v17)
      {
        backend_space_for_entry = di_asif::details::table::allocate_backend_space_for_entry(this, a2, data_entry_for_offset, v80);
        if (!backend_space_for_entry)
        {
          v15 = v80;
          v16 = data_entry_for_offset[7];
          goto LABEL_7;
        }

        *&v60 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v60 + 1) = 30;
        LODWORD(v61) = 16;
        di_log::logger<di_log::log_printer<1291ul>>::logger(v69, &v60);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "couldn't allocate space for entry ", 34);
        di_asif::details::operator<<(&v71, &data_entry_for_offset);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, " ret: ", 6);
        MEMORY[0x24C1ED390](&v71, backend_space_for_entry);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v69);
        MEMORY[0x24C1ED6A0](v72);
        backend_space_for_entry = backend_space_for_entry;
        goto LABEL_43;
      }

LABEL_7:
      v18 = atomic_load((v16 + 16 * v15 + 8));
      v19 = di_asif::details::table_entry_data::write(&data_entry_for_offset, a2, v73, &v76);
      backend_space_for_entry = v19;
      v21 = v20;
      if ((v19 & 0x8000000000000000) != 0 && v19)
      {
        if (v17)
        {
          goto LABEL_42;
        }

        ref::details::ref_cnt_handle::upgrade_to_exclusive(v63, 0, v69);
        if (v70 == 1)
        {
          v22 = atomic_load((data_entry_for_offset[7] + 16 * v80 + 8));
          if ((v22 & 0x4000000000000000) == 0)
          {
            v23 = (data_entry_for_offset[7] + 16 * v80 + 8);
            v24 = *v23;
            v25 = *(data_entry_for_offset[1] + 28);
            if (v25)
            {
              atomic_fetch_and_explicit(v23, 0xFF80000000000000, memory_order_relaxed);
LABEL_58:
              v41 = (v24 & 0x7FFFFFFFFFFFFFLL) * v25;
              ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v69);
              if (v41)
              {
                di_asif::details::dir_base::insert_space(*(this + 1), v41, a2);
              }

LABEL_42:
              *&v60 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v60 + 1) = 30;
              LODWORD(v61) = 16;
              di_log::logger<di_log::log_printer<1313ul>>::logger(v69, &v60);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Failed during data entry write in table write, error ", 53);
              MEMORY[0x24C1ED390](&v71, backend_space_for_entry);
              std::ostream::~ostream();
              di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v69);
              MEMORY[0x24C1ED6A0](v72);
LABEL_43:
              v11 = 1;
LABEL_44:
              ref::details::ref_cnt_handle::~ref_cnt_handle(v63);
              finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(&v65);
              goto LABEL_45;
            }

            v37 = *v23;
            v38 = *v23;
            atomic_compare_exchange_strong_explicit(v23, &v38, *v23 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
            if (v38 != v37)
            {
              v39 = v38;
              do
              {
                atomic_compare_exchange_strong_explicit(v23, &v39, v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
                v40 = v39 == v38;
                v38 = v39;
              }

              while (!v40);
              goto LABEL_58;
            }
          }
        }

        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v69);
        goto LABEL_42;
      }

      v26 = v18 >> 62;
      *&v60 = v81;
      *(&v60 + 1) = a4;
      v61 = v19;
      v62 = v20;
      if (v26 == 1)
      {
LABEL_15:
        v11 = 2;
      }

      else
      {
        v27 = data_entry_for_offset[1];
        v28 = *(v27 + 28);
        if (v19 == v28 && data_entry_for_offset[44] + (*(v27 + 56) + *(v27 + 56) * v80) / (*(v27 + 56) + 1) * v28 == v20)
        {
          ref::details::ref_cnt_handle::upgrade_to_exclusive(v63, 0, v58);
          if ((v59 & 1) == 0)
          {
            *&v56 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
            *(&v56 + 1) = 30;
            v57 = 16;
            di_log::logger<di_log::log_printer<1337ul>>::logger(v69, &v56);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Couldn't upgrade lock entry ", 28);
            di_asif::details::operator<<(&v71, &data_entry_for_offset);
            di_log::logger<di_log::log_printer<1337ul>>::~logger(v69);
            v50 = __cxa_allocate_exception(0x40uLL);
            *v50 = &unk_285BF4E60;
            v51 = std::generic_category();
            v50[1] = 4294967282;
            v50[2] = v51;
            *(v50 + 24) = 0;
            *(v50 + 48) = 0;
            v50[7] = "Couldn't upgrade lock entry";
          }

          v29 = atomic_load((data_entry_for_offset[7] + 16 * v80 + 8));
          if (v26 == 2 || (v29 & 0xC000000000000000) != 0x8000000000000000)
          {
            v30 = (data_entry_for_offset[7] + 16 * v80 + 8);
            v31 = *v30;
            v32 = *v30 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
            for (i = *v30; ; v32 = i & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000)
            {
              atomic_compare_exchange_strong(v30, &i, v32);
              if (i == v31)
              {
                break;
              }

              v31 = i;
            }

            v36 = v31 >> 62;
            di_asif::details::table::update_analytics_counters_data_entry(this, a2, v31 >> 62, 1, &data_entry_for_offset);
            v85[0] |= v36 == 3;
            atomic_store(1u, this + 24);
          }

          ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v58);
          v11 = 2;
        }

        else
        {
          if (v26 == 3)
          {
            v69[0] = di_asif::details::table::make_range_bits(this, v20, v19);
            di_asif::details::table::set_entry_bitmap_range(this, a2, &data_entry_for_offset, v69, 1u, 0x100000003);
          }

          else
          {
            ref::details::ref_cnt_handle::upgrade_to_exclusive(v63, 0, v58);
            if ((v59 & 1) == 0)
            {
              *&v56 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v56 + 1) = 30;
              v57 = 16;
              di_log::logger<di_log::log_printer<1375ul>>::logger(v69, &v56);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Couldn't upgrade lock entry ", 28);
              di_asif::details::operator<<(&v71, &data_entry_for_offset);
              di_log::logger<di_log::log_printer<1375ul>>::~logger(v69);
              v52 = __cxa_allocate_exception(0x40uLL);
              *v52 = &unk_285BF4E60;
              v53 = std::generic_category();
              v52[1] = 4294967282;
              v52[2] = v53;
              *(v52 + 24) = 0;
              *(v52 + 48) = 0;
              v52[7] = "Couldn't upgrade lock entry";
            }

            v34 = atomic_load((data_entry_for_offset[7] + 16 * v80 + 8));
            if (!((*(data_entry_for_offset[7] + 16 * v80 + 8) & 0x7FFFFFFFFFFFFFLL) * *(data_entry_for_offset[1] + 28)) || (v35 = v34 >> 62, v34 >> 62 == 1))
            {
              ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v58);
              goto LABEL_15;
            }

            v69[0] = di_asif::details::table::make_range_bits(this, v21, backend_space_for_entry);
            di_asif::details::table::set_entry_bitmap_range(this, a2, &data_entry_for_offset, v69, 1u, v35 | 0x100000000);
            ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v58);
          }

          if (v17)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            atomic_store(1u, this + 24);
          }
        }
      }

      v55 += backend_space_for_entry;
      finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_1>::~finally(&v60);
      goto LABEL_44;
    }

    *&v65 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v65 + 1) = 30;
    LODWORD(v66) = 16;
    di_log::logger<di_log::log_printer<1260ul>>::logger(v69, &v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "Couldn't trim entry in write ", 29);
    operator<<(&v71, v81);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v69);
    MEMORY[0x24C1ED6A0](v72);
    v11 = 1;
    backend_space_for_entry = -34;
LABEL_45:
    if (v78)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v75);
    }

    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    if ((v11 | 2) != 2)
    {
      goto LABEL_64;
    }
  }

  if (v87 == 1)
  {
    updated = di_asif::details::table::update_entry_if_bits_in_same_state(this, a2, &v85[1]);
    backend_space_for_entry = v55;
    v43 = updated | v85[0];
    v85[0] = (updated | v85[0]) & 1;
    if (v43)
    {
      v44 = *(*&v85[1] + 8);
      v45 = *(this + 1);
      v46 = *(v45 + 56);
      di_asif::details::table::check_if_map_element_needed(this, a2, v46 + (v46 + 1) * (((*(*&v85[1] + 352) + (*(v44 + 56) + *(v44 + 56) * v86) / (*(v44 + 56) + 1) * *(v44 + 28)) / *(v44 + 26) - *(this + 44) / *(v45 + 26)) / (v46 * (*(v45 + 28) / *(v45 + 26)))));
    }
  }

  else
  {
    backend_space_for_entry = v55;
  }

LABEL_64:
  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
  }

  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v82);
  }

  return backend_space_for_entry;
}

void sub_248EC5D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, di_asif::details::table_entry_data *a26)
{
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(&a15);
  finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_1>::~finally(&a19);
  ref::details::ref_cnt_handle::~ref_cnt_handle(&a23);
  finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(&a26);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&STACK[0x2B8]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x488]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<1260ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1260ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEDBB0;
  a1[45] = &unk_285BEDCB0;
  a1[46] = &unk_285BEDCD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEDBB0;
  a1[45] = &unk_285BEDC38;
  a1[46] = &unk_285BEDC60;
  return a1;
}

void sub_248EC5F94(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1260ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1282ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1282ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEDDD0;
  a1[45] = &unk_285BEDED0;
  a1[46] = &unk_285BEDEF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEDDD0;
  a1[45] = &unk_285BEDE58;
  a1[46] = &unk_285BEDE80;
  return a1;
}

void sub_248EC6100(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1282ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1291ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1291ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEDFF0;
  a1[45] = &unk_285BEE0F0;
  a1[46] = &unk_285BEE118;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEDFF0;
  a1[45] = &unk_285BEE078;
  a1[46] = &unk_285BEE0A0;
  return a1;
}

void sub_248EC626C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1291ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::table_entry_data::write(di_asif::details::table_entry_data *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, std::__shared_weak_count **a4)
{
  v127[48] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v5 = *(*this + 8);
  v6 = *(v5 + 28);
  if (!((*(*(*this + 56) + 16 * v4 + 8) & 0x7FFFFFFFFFFFFFLL) * v6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "ASIF: No data offset found (write)", 0xFFFFFFEA);
  }

  *&v109 = *(*this + 352) + (*(v5 + 56) + *(v5 + 56) * v4) / (*(v5 + 56) + 1) * v6;
  *(&v109 + 1) = v109 + v6;
  LOBYTE(v110) = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(a3, &v109, a4, v71);
  if (sg_vec_ns::details::sg_vec_iterator::operator==(v71, &v74))
  {
    v11 = -34;
  }

  else
  {
    __p = v127;
    v126 = xmmword_248F9D670;
    v12 = *(a3 + 136);
    v109 = *(a3 + 120);
    v110 = v12;
    v111 = *(a3 + 152);
    v112 = *(a3 + 168);
    v13 = *(a3 + 23);
    v113 = *(a3 + 22);
    v114 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v115 = *(a3 + 12);
    v14 = a4[15];
    v15 = a4[16];
    v16 = a4[17];
    v17 = a4[23];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = 0;
    for (i = 0; ; ++i)
    {
      v20 = v109 == v14 && *(&v109 + 1) == v15;
      if (v20 && v110 == v16)
      {
        break;
      }

      v18 += 24;
      sg_vec_ns::details::buffer_iterator::operator++(&v109);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v114);
    }

    if (*(&v126 + 1) < i)
    {
      if (i >= 0x555555555555556)
      {
        boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v10);
      }

      v22 = operator new(v18);
      boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(&__p, v22, i, __p + 24 * v126, 0, 0);
    }

    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v60, a3);
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v49, a4);
    sg_entry::sg_entry(&v88, v60);
    v90 = v62;
    v91 = v63;
    v92 = v64;
    v93 = v65;
    v94 = v66;
    v23 = v67;
    v67 = 0uLL;
    v95 = v23;
    v96 = v68;
    v98 = v70;
    v97 = v69;
    sg_entry::sg_entry(v77, v49);
    v24 = 0;
    v25 = 0;
    v79 = v51;
    v80 = v52;
    v81 = v53;
    v82 = v54;
    v83 = v55;
    v26 = v56;
    v56 = 0uLL;
    v84 = v26;
    v85 = v57;
    v27 = v58;
    v87 = v59;
    v86 = v58;
    LOBYTE(v109) = 0;
    v121 = 0;
    while (!sg_vec_ns::details::sg_vec_iterator::operator==(&v88, v77))
    {
      if (v97 >= v27 || v25 == -1)
      {
        break;
      }

      if (DIDebugLogsEnabled())
      {
        *&v105 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1990:32)]";
        *(&v105 + 1) = 104;
        LODWORD(v106) = 2;
        di_log::logger<di_log::log_printer<624ul>>::logger(&v100, &v105);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v103, "sg: ", 4);
        operator<<(&v103, &v88);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(&v100);
        MEMORY[0x24C1ED6A0](&v104);
      }

      v100 = 0;
      v101 = v27;
      v102 = 2;
      trim_sg_to_interval(&v88, &v100, &v105);
      v29 = *(*(*this + 8) + 28);
      sg_entry::sg_entry<sg_entry const&,void>(&v100, &v105, v106, 0, v107 % v29 + (*(*(*this + 56) + 16 * *(this + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v29, v108);
      (*(**(a2 + 2) + 144))(v122);
      v30 = __p + 24 * v126;
      if (v126 == *(&v126 + 1))
      {
        boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(&__p, v30, 1, v122, &v124);
      }

      else
      {
        *v30 = 0;
        v30[4] = 0;
        *(v30 + 1) = 0;
        if (BYTE4(v122[0]) == 1)
        {
          *v30 = v122[0];
          v30[4] = 1;
        }

        *(v30 + 2) = v123;
        v123 = 0;
        v31 = *(v30 + 2);
        if (v31)
        {
          *v31 = v30;
        }

        *&v126 = v126 + 1;
      }

      v32 = v107;
      v33 = v106;
      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v101);
      }

      v34 = v33 >= 0 || v33 == 0;
      v35 = v34;
      if (v34)
      {
        if ((v24 & 1) == 0)
        {
          v24 = 1;
        }

        if (sg_vec_ns::should_create_new_sg_vec_ref(&v88, v77, v32, v33))
        {
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v99, &v88);
          sg_vec_ns::generate_vec_ref(v99, v77, v32, v33, 0xFFFFFFFFFFFFFFFFLL, &v100);
          std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(&v109, &v100);
          sg_vec_ref::~sg_vec_ref(&v100);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v99);
          sg_vec_ref::begin(&v109, &v100);
          sg_vec_ns::details::sg_vec_iterator::operator=(&v88, &v100);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v100);
          sg_vec_ref::end(&v109, &v100);
          sg_vec_ns::details::sg_vec_iterator::operator=(v77, &v100);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v100);
        }

        sg_vec_ns::details::sg_vec_iterator::operator+=(&v88, v33);
        v25 += v33;
      }

      else
      {
        if (v33 >= 0)
        {
          v36 = v33;
        }

        else
        {
          v36 = -v33;
        }

        v47 = -v36;
      }

      if (*(&v105 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v105 + 1));
      }

      if ((v35 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v47 = v25;
LABEL_63:
    v11 = v47;
    if (v121 == 1)
    {
      if (v120)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v120);
      }

      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

      if (v118)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v118);
      }

      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }
    }

    if (*(&v84 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v84 + 1));
    }

    if (v78)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
    }

    if (*(&v95 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v95 + 1));
    }

    if (v89)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v89);
    }

    if (*(&v56 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
    }

    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (*(&v67 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v67 + 1));
    }

    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    if ((v47 & 0x8000000000000000) == 0 || !v47)
    {
      (*(**(a2 + 2) + 152))(*(a2 + 2));
      if (v126)
      {
        v38 = 0;
        v39 = __p;
        v40 = 24 * v126;
        do
        {
          v41 = lw_future<int>::get(v39, v37);
          if (v41 < 0)
          {
            break;
          }

          v38 += v41;
          v39 = (v39 + 24);
          v41 = v38;
          v40 -= 24;
        }

        while (v40);
      }

      else
      {
        v41 = 0;
      }

      if (v47 != v41)
      {
        if (v41 < 0)
        {
          v42 = v41;
        }

        else
        {
          v42 = -5;
        }

        v11 = --v42;
      }
    }

    if (*(&v126 + 1) && v127 != __p)
    {
      operator delete(__p);
    }
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_248EC6A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x640]);
  if (STACK[0x918])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x918]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x980]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x3A0]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x480]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a13);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a41);
  if (STACK[0xC90])
  {
    if (a10 != STACK[0xC80])
    {
      operator delete(STACK[0xC80]);
    }
  }

  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&a69);
  _Unwind_Resume(a1);
}

void sub_248EC6B9C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (STACK[0x9C0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x9C0]);
  }

  JUMPOUT(0x248EC6B70);
}

void *di_log::logger<di_log::log_printer<1313ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1313ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE210;
  a1[45] = &unk_285BEE310;
  a1[46] = &unk_285BEE338;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE210;
  a1[45] = &unk_285BEE298;
  a1[46] = &unk_285BEE2C0;
  return a1;
}

void sub_248EC6CC0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1313ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1337ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1337ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE430;
  a1[45] = &unk_285BEE530;
  a1[46] = &unk_285BEE558;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE430;
  a1[45] = &unk_285BEE4B8;
  a1[46] = &unk_285BEE4E0;
  return a1;
}

void sub_248EC6E2C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1337ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1375ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1375ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE650;
  a1[45] = &unk_285BEE750;
  a1[46] = &unk_285BEE778;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE650;
  a1[45] = &unk_285BEE6D8;
  a1[46] = &unk_285BEE700;
  return a1;
}

void sub_248EC6F98(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1375ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_1>::~finally(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) == 0 || !v2)
  {
    sg_vec_ns::details::sg_vec_iterator::operator+=(*a1, v2);
  }

  return a1;
}

di_asif::details::table_entry_data **finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(di_asif::details::table_entry_data **a1)
{
  v2 = *a1;
  if (*(*a1 + 16) == 1)
  {
    v3 = a1[3];
    v4 = a1[1];
    if (*(*v4 + 352) != *(*v2 + 352) || *(v4 + 1) != *(v2 + 1))
    {
      updated = di_asif::details::table::update_entry_if_bits_in_same_state(a1[3], a1[4], v2);
      v6 = a1[2];
      v7 = (updated & 1) != 0 ? 1 : *v6;
      *v6 = v7 & 1;
      v2 = *a1;
      v8 = a1[1];
      v9 = **a1;
      v10 = *(v9 + 352);
      v11 = *(v9 + 8);
      v12 = (v10 + (*(v11 + 56) + *(v11 + 56) * *(*a1 + 1)) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26);
      v13 = *(v3 + 1);
      v14 = *(v13 + 56);
      v15 = *(v13 + 28);
      v16 = *(v13 + 26);
      v17 = v14 * (v15 / v16);
      v18 = *(v3 + 44) / v16;
      ++v14;
      v19 = v14 + v14 * ((v12 - v18) / v17);
      v20 = *(*v8 + 8);
      if (v19 != v14 + v14 * (((*(*v8 + 352) + (*(v20 + 56) + *(v20 + 56) * *(v8 + 1)) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26) - v18) / v17) && (v7 & 1) != 0)
      {
        di_asif::details::table::check_if_map_element_needed(v3, a1[4], v19 - 1);
        *a1[2] = 0;
        v2 = *a1;
      }
    }
  }

  v21 = a1[1];
  if (*(v2 + 16) == 1)
  {
    *(v2 + 1) = *(v21 + 1);
  }

  else
  {
    *v2 = *v21;
    *(v2 + 16) = 1;
  }

  return a1;
}

uint64_t di_asif::details::table::read(di_asif::details::table *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v6 = v5;
  v36 = v7;
  v8 = v4;
  v89[896] = *MEMORY[0x277D85DE8];
  v10 = *(v9 + 3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v51, v9);
  *&v55 = -78;
  LOBYTE(v59[0]) = 0;
  v63 = 0;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v64, &v51);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v65, &v51);
  v37 = 0;
  v66 = v36;
  v67[0] = &v68;
  v67[1] = 0;
  v67[2] = 16;
  LOBYTE(v69) = 0;
  v70 = 0;
  v71 = &v74;
  v72 = 0;
  v73 = 16;
  v75 = 0;
  v50[0] = v59;
  v50[1] = &v55;
  v50[2] = v36;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(&v51, v6))
  {
    *&v49 = di_asif::details::table::get_data_entry_for_offset(v8, v53);
    *(&v49 + 1) = v11;
    v12 = *(v49 + 8);
    v13 = *(v12 + 56);
    v14 = *(v12 + 28);
    *&v76 = *(v49 + 352) + (v13 + v13 * v11) / (v13 + 1) * v14;
    *(&v76 + 1) = v76 + v14;
    LOBYTE(v77) = 2;
    sg_vec_ns::details::sg_vec_iterator::subvec(&v51, &v76, v6, v43);
    if (!sg_vec_ns::details::sg_vec_iterator::operator==(v43, &v46))
    {
      if (v70 == 1 && !di_asif::details::table_entry_obj::is_physically_contiguous(&v49, &v69) && (v22 = di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize_ios(v59), v22 < 0) && v22)
      {
        *&v38 = v22;
        *(&v38 + 1) = v23;
        v39 = v59;
        v40 = 0;
        v41[0] = 0;
        v42 = 0;
      }

      else
      {
        v69 = v49;
        v70 = 1;
        v16 = (*(v49 + 56) + 16 * *(&v49 + 1));
        v17 = ref::ref_cnt::get(v16);
        *&v86 = &unk_285BF4C50;
        *(&v86 + 1) = v16;
        LOBYTE(v87) = v17;
        if (v17)
        {
          v18 = 0;
        }

        else
        {
          *&v56 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)::data_entries_vectorizer_t::add_data_entry(const data_entry_t &)";
          *(&v56 + 1) = 139;
          v57 = 16;
          di_log::logger<di_log::log_printer<1594ul>>::logger(&v76, &v56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "Couldn't lock entry ", 20);
          di_asif::details::operator<<(&v82, &v49);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(&v76);
          MEMORY[0x24C1ED6A0](v83);
          v18 = -5;
        }

        v19 = atomic_load((*(v69 + 56) + 16 * *(&v69 + 1) + 8));
        *&v38 = v18;
        v39 = v59;
        v40 = v19 >> 62;
        ref::details::ref_cnt_handle::ref_cnt_handle(v41, &v86);
        v42 = 1;
        ref::details::ref_cnt_handle::~ref_cnt_handle(&v86);
      }

      v55 = v38;
      zeros = v38;
      v21 = v38;
      if ((v38 & 0x8000000000000000) != 0 && v38)
      {
        v15 = 0;
LABEL_64:
        di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::io_result_inserter_t::~io_result_inserter_t(&v38);
        goto LABEL_65;
      }

      if (v40 <= 1)
      {
        if (v40)
        {
          if (v40 == 1)
          {
LABEL_57:
            di_asif::details::table_entry_data::future_read(v43, &v49, v36, &v46, v67, &v76);
            v55 = v76;
            zeros = v76;
            v21 = v76;
            if ((v76 & 0x8000000000000000) == 0 || !v55)
            {
              v75 += v77;
            }
          }

LABEL_60:
          if ((zeros & 0x8000000000000000) != 0 && v21)
          {
            v15 = 0;
            v75 = 0;
          }

          else
          {
            sg_vec_ns::details::sg_vec_iterator::operator+=(&v51, zeros);
            sg_vec_ns::details::sg_vec_iterator::operator=(v65, &v51);
            v37 += zeros;
            v15 = 1;
          }

          goto LABEL_64;
        }

LABEL_26:
        zeros = di_asif::details::table_entry_data::get_zeros(&v49, v43, &v46);
        *&v55 = zeros;
        *(&v55 + 1) = v26;
        v21 = zeros;
        goto LABEL_60;
      }

      if (v40 == 2)
      {
        goto LABEL_26;
      }

      if (v40 != 3)
      {
        goto LABEL_60;
      }

      v24 = *(v49 + 8);
      v25 = (*(v49 + 352) + (*(v24 + 56) + *(v24 + 56) * *(&v49 + 1)) / (*(v24 + 56) + 1) * *(v24 + 28)) / *(v24 + 26);
      if (v63 == 1)
      {
        if (*(v59[0] + 40) == (v25 - *(v8 + 44) / *(*(v8 + 1) + 26)) / (*(*(v8 + 1) + 56) * (*(*(v8 + 1) + 28) / *(*(v8 + 1) + 26))))
        {
          zeros = 0;
          goto LABEL_45;
        }

        v29 = di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize(v59);
        v35 = v30;
        zeros = v29;
        if (v29 < 0 && v29)
        {
          v31 = v30;
          goto LABEL_55;
        }

        if (v63)
        {
LABEL_45:
          std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<true,0>(&v76, v43, &v46);
          if (v61 == *(&v61 + 1))
          {
            boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>>(&v60, &v60[56 * v61], 1, &v76, &v86);
            v31 = v35;
          }

          else
          {
            std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100](&v60[56 * v61], &v76);
            v31 = v35;
            *&v61 = v61 + 1;
          }

          if (v84)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v84);
          }

          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
          }

          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }

          if (*(&v76 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v76 + 1));
          }

          goto LABEL_55;
        }
      }

      else
      {
        zeros = 0;
      }

      *&v86 = 0;
      *(&v86 + 1) = v8;
      v87 = v89;
      v88 = xmmword_248F9D670;
      di_asif::details::table::get_bitmap(v8, v66, v25, 0, &v56);
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v86, &v56);
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v56);
      if (v86 && (*(v86 + 344) & 1) == 0)
      {
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(&v76, &v86);
        *(&v76 + 1) = *(&v86 + 1);
        v77 = &v79;
        v78 = xmmword_248F9D670;
        *&v56 = v87;
        v58 = &v87[56 * v88];
        boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::assign<boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>>(&v77, &v56, &v58);
        v28 = 1;
      }

      else
      {
        v27 = std::generic_category();
        v28 = 0;
        *&v76 = 5;
        *(&v76 + 1) = v27;
      }

      v31 = 7208;
      v85 = v28;
      di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(&v86);
      if (v85)
      {
        if (v63 == 1)
        {
          di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(v59);
          v63 = 0;
        }

        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(v59, &v76);
        v59[1] = *(&v76 + 1);
        v60 = &v62;
        v61 = xmmword_248F9D670;
        *&v86 = v77;
        *&v56 = &v77[56 * v78];
        boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::assign<boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>>(&v60, &v86, &v56);
        v63 = 1;
        if (v85)
        {
          di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(&v76);
        }

        goto LABEL_45;
      }

      if (v76 >= 0)
      {
        v32 = v76;
      }

      else
      {
        v32 = -v76;
      }

      zeros = -v32;
LABEL_55:
      *&v55 = zeros;
      *(&v55 + 1) = v31;
      if ((zeros & 0x8000000000000000) == 0)
      {
        goto LABEL_57;
      }

      v21 = zeros;
      if (!zeros)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    }

    *&v86 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v86 + 1) = 29;
    LODWORD(v87) = 16;
    di_log::logger<di_log::log_printer<1626ul>>::logger(&v76, &v86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "Couldn't trim entry in read ", 28);
    operator<<(&v82, &v51);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(&v76);
    MEMORY[0x24C1ED6A0](v83);
    v15 = 0;
    *&v55 = -34;
LABEL_65:
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if ((v15 & 1) == 0)
    {
      break;
    }
  }

  if ((v55 & 0x8000000000000000) == 0 || !v55)
  {
    *&v55 = v37;
    *(&v55 + 1) = v10;
  }

  finally<di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(v50);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::~data_entries_vectorizer_t(v59);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  result = v55;
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EC7A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::~vector(v28 + 16);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&STACK[0x24E0]);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(&STACK[0x4110]);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::io_result_inserter_t::~io_result_inserter_t(&a20);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&a28);
  finally<di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(&STACK[0x268]);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::~data_entries_vectorizer_t(&STACK[0x390]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<1626ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1626ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE870;
  a1[45] = &unk_285BEE970;
  a1[46] = &unk_285BEE998;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE870;
  a1[45] = &unk_285BEE8F8;
  a1[46] = &unk_285BEE920;
  return a1;
}

void sub_248EC7D1C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1626ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::table_entry_data::future_read(sg_vec_ns::details::sg_vec_iterator *a1@<X2>, void *a2@<X0>, uint64_t a3@<X1>, const sg_vec_ns::details::sg_vec_iterator *a4@<X3>, uint64_t *a5@<X4>, unint64_t *a6@<X8>)
{
  v10 = *(*a2 + 8);
  v11 = *(v10 + 56);
  v12 = *(v10 + 28);
  v97[0] = *(*a2 + 352) + (v11 + v11 * a2[1]) / (v11 + 1) * v12;
  v97[1] = v97[0] + v12;
  v98 = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(a1, v97, a4, v57);
  if (sg_vec_ns::details::sg_vec_iterator::operator==(v57, &v61))
  {
    *a6 = -34;
LABEL_83:
    a6[2] = 0;
    goto LABEL_84;
  }

  if (!((*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28)))
  {
    v30 = fill_zeros(v57, &v61);
    v31 = v59;
    *a6 = v30;
    a6[1] = v31;
    goto LABEL_83;
  }

  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v46, v57);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v35, &v61);
  sg_entry::sg_entry(&v75, v46);
  v33 = a6;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v13 = v53;
  v53 = 0uLL;
  v82 = v13;
  v83 = v54;
  v85 = v56;
  v84 = v55;
  sg_entry::sg_entry(v64, v35);
  v34 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  v70 = v41;
  v17 = v42;
  v42 = 0uLL;
  v71 = v17;
  v72 = v43;
  v18 = v44;
  v74 = v45;
  v73 = v44;
  LOBYTE(v97[0]) = 0;
  v105 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(&v75, v64))
  {
    if (v84 >= v18 || v16 == -1)
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v108 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1954:32)]";
      *(&v108 + 1) = 104;
      LODWORD(v109) = 2;
      di_log::logger<di_log::log_printer<624ul>>::logger(&v87, &v108);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "sg: ", 4);
      operator<<(&v90, &v75);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(&v87);
      MEMORY[0x24C1ED6A0](&v91);
    }

    v87 = 0;
    v88 = v18;
    v89 = 2;
    trim_sg_to_interval(&v75, &v87, v92);
    v20 = *(*(*a2 + 8) + 28);
    sg_entry::sg_entry<sg_entry const&,void>(&v87, v92, v94, 0, v95 % v20 + (*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v20, v96);
    v21 = (*(**(a3 + 16) + 40))(*(a3 + 16));
    v106[0] = 0;
    v106[1] = v21;
    LOBYTE(v107) = 2;
    trim_sg_to_interval(&v87, v106, &v108);
    if (v109)
    {
      (*(**(a3 + 16) + 136))(v106);
      v22 = a5[1];
      v23 = *a5 + 24 * v22;
      if (v22 == a5[2])
      {
        boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(a5, v23, 1, v106, &v110);
      }

      else
      {
        *v23 = 0;
        *(v23 + 4) = 0;
        *(v23 + 8) = 0;
        if (BYTE4(v106[0]) == 1)
        {
          *v23 = v106[0];
          *(v23 + 4) = 1;
        }

        *(v23 + 16) = v107;
        v107 = 0;
        v24 = *(v23 + 16);
        if (v24)
        {
          *v24 = v23;
        }

        ++a5[1];
      }

      v34 += v109;
    }

    v25 = v95;
    v26 = v94;
    if (*(&v108 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v108 + 1));
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    v27 = v26 >= 0 || v26 == 0;
    v28 = v27;
    if (v27)
    {
      if ((v15 & 1) == 0)
      {
        v14 = v25;
        v15 = 1;
      }

      if (sg_vec_ns::should_create_new_sg_vec_ref(&v75, v64, v25, v26))
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v86, &v75);
        sg_vec_ns::generate_vec_ref(v86, v64, v25, v26, 0xFFFFFFFFFFFFFFFFLL, &v87);
        std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v97, &v87);
        sg_vec_ref::~sg_vec_ref(&v87);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v86);
        sg_vec_ref::begin(v97, &v87);
        sg_vec_ns::details::sg_vec_iterator::operator=(&v75, &v87);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v87);
        sg_vec_ref::end(v97, &v87);
        sg_vec_ns::details::sg_vec_iterator::operator=(v64, &v87);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v87);
      }

      sg_vec_ns::details::sg_vec_iterator::operator+=(&v75, v26);
      v16 += v26;
    }

    else
    {
      if (v26 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = -v26;
      }

      v32 = -v29;
    }

    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if (v15)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0;
  }

  v32 = v16;
LABEL_50:
  if (v105 == 1)
  {
    if (v104)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v104);
    }

    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    if (v102)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v102);
    }

    if (v101)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v101);
    }

    if (v100)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
    }

    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }
  }

  if (*(&v71 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (*(&v82 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v82 + 1));
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (*(&v42 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(&v53 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  *v33 = v32;
  v33[1] = v26;
  if ((v32 & 0x8000000000000000) != 0 && v32)
  {
    v33[2] = 0;
  }

  else
  {
    v33[2] = v34;
  }

LABEL_84:
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }
}

void sub_248EC8398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x640]);
  if (STACK[0x918])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x918]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x980]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x3A0]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x480]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a13);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a41);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&a69);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table_entry_data::get_zeros(di_asif::details::table_entry_data *this, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  v3 = *(*this + 8);
  v4 = *(v3 + 56);
  v5 = *(v3 + 28);
  v8[0] = *(*this + 352) + (v4 + v4 * *(this + 1)) / (v4 + 1) * v5;
  v8[1] = v8[0] + v5;
  v9 = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(a2, v8, a3, v10);
  if (sg_vec_ns::details::sg_vec_iterator::operator==(v10, &v14))
  {
    v6 = -34;
  }

  else
  {
    fill_zeros(v10, &v14);
    v6 = (v17 - v13) & ~((v17 - v13) >> 63);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v6;
}

void sub_248EC857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(va);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::io_result_inserter_t::~io_result_inserter_t(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (*(v2 + 8104) == 1 && (*(a1 + 24) | 2) != 2)
    {
      v3 = *(v2 + 8120);
      if (v3 == *(v2 + 8128))
      {
        boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>((v2 + 8112), *(v2 + 8112) + 24 * v3, 1, a1 + 32, &v5);
      }

      else
      {
        ref::details::ref_cnt_handle::ref_cnt_handle(*(v2 + 8112) + 24 * v3, a1 + 32);
        ++*(v2 + 8120);
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    ref::details::ref_cnt_handle::~ref_cnt_handle((a1 + 32));
  }

  return a1;
}

uint64_t *finally<di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(uint64_t *a1)
{
  v2 = di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize(*a1);
  if (v2 < 0)
  {
    if (v2)
    {
      v4 = a1[1];
      if ((*v4 & 0x8000000000000000) == 0 || !*v4)
      {
        *v4 = v2;
        v4[1] = v3;
      }
    }
  }

  return a1;
}

uint64_t di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::~data_entries_vectorizer_t(uint64_t a1)
{
  boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::~vector(a1 + 8112);
  if (*(a1 + 7696))
  {
    v2 = *(a1 + 7680);
    if ((a1 + 7704) != v2)
    {
      operator delete(v2);
    }
  }

  v3 = *(a1 + 7624);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 7448);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 7400);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 7224);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(a1 + 7208) == 1)
  {
    di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(a1);
  }

  return a1;
}

uint64_t di_asif::details::table::close(di_asif::details::table *this)
{
  v2 = *(*(this + 1) + 32);
  v20 = &unk_285BE5728;
  v21 = v2;
  (*(**(v2 + 16) + 80))(&v22);
  if (*(v21 + 8))
  {
    v4 = 4294967290;
  }

  else
  {
    if (atomic_load(this + 24))
    {
      LODWORD(v6) = (*(*v22 + 16))(v22, 0);
      if (v6)
      {
        DiskImage::Context::terminate_di(&v20);
        exception = __cxa_allocate_exception(0x40uLL);
        v15 = exception;
        if (v6 < 0)
        {
          v6 = v6;
        }

        else
        {
          v6 = -v6;
        }

        *exception = &unk_285BF4E60;
        v16 = std::generic_category();
        v15[1] = v6;
        v15[2] = v16;
        *(v15 + 24) = 0;
        *(v15 + 48) = 0;
        v15[7] = "Can't flush asif on table close, backend barrier failed";
      }

      di_asif::details::table::flush(this, &v20);
    }

    else
    {
      di_asif::details::table::make_map_entry_iterators(this, v3, v18);
      v8 = 1;
      while (v18[0] != v19[3] || v18[1] != v19[4])
      {
        if (v8)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = di_asif::details::table::flush_mapped_entry(this, &v20, v19, v9);
        ref::ref_cnt::take_exclusive(*(v19[0] + 56) + 16 * v19[1], 0, v17);
        v11 = v10 | v8 ^ 1;
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        v13 = di_asif::details::table::flush_mapped_entry(this, &v20, v19, v12);
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v17);
        di_asif::details::map_entry_iterator_t::operator++(v18);
        v8 = (v13 | v11) ^ 1;
      }
    }

    v4 = 0;
  }

  v20 = &unk_285BE5728;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return v4;
}

void sub_248EC897C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, char a14)
{
  *(v15 - 96) = v14;
  v17 = *(v15 - 72);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<1698ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1698ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEECB0;
  a1[45] = &unk_285BEEDB0;
  a1[46] = &unk_285BEEDD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEECB0;
  a1[45] = &unk_285BEED38;
  a1[46] = &unk_285BEED60;
  return a1;
}

void sub_248EC8B5C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1698ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t ref::ref_cnt::take_exclusive@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  while (1)
  {
    if (!*v4)
    {
      v6 = 0;
      atomic_compare_exchange_strong(v4, &v6, 0xFFFFFFFFFFFFFFFFLL);
      if (!v6)
      {
        break;
      }
    }

    this = ref::ref_cnt::wait_fn(v4, 1);
    if ((this & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = 1;
LABEL_7:
  *(a3 + 16) = v7;
  *a3 = &unk_285BF4C70;
  *(a3 + 8) = v4;
  *(a3 + 24) = a2;
  return this;
}

BOOL di_asif::details::table_entry_obj::is_physically_contiguous(di_asif::details::table_entry_obj *this, const di_asif::details::table_entry_obj *a2)
{
  v2 = *(*(*this + 8) + 28);
  v3 = (*(*(*this + 56) + 16 * *(this + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v2;
  v4 = (*(*(*a2 + 56) + 16 * *(a2 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5 || v3 == v4 + v2;
}

uint64_t Backend::get_returned_io_size(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = *a1;
  v5 = 24 * v2;
  while (1)
  {
    v6 = lw_future<int>::get(v4, a2);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v3 = (v6 + v3);
    v4 = (v4 + 24);
    v5 -= 24;
    if (!v5)
    {
      return v3;
    }
  }

  return v6;
}

uint64_t di_asif::details::map_element::flush_locked(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, uint64_t a4)
{
  if (*(this + 113) != 1)
  {
    goto LABEL_14;
  }

  *(this + 113) = 0;
  v6 = *(this + 2);
  if (!v6)
  {
    goto LABEL_14;
  }

  v9 = *(this + 5);
  v10 = *(details::get_dummy_shared_ptr() + 1);
  v17 = v9;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a4;
  v20 = v6;
  v21 = a4;
  v23 = 0;
  v24 = 0;
  v22 = 1;
  sg_entry::sg_entry(v27, &v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v11 = (*(**(a2 + 2) + 120))(*(a2 + 2), v27);
  v12 = v29;
  if (v29 != v11)
  {
    *&v15 = "di_asif::details::map_element::flush_locked(ContextASIF &, table *, size_t)";
    *(&v15 + 1) = 43;
    v16 = 16;
    di_log::logger<di_log::log_printer<2098ul>>::logger(&v17, &v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "backend write failed during locked flush of map element, error ", 63);
    MEMORY[0x24C1ED390](&v25, v11);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(&v17);
    MEMORY[0x24C1ED6A0](&v26);
    *(this + 113) = 1;
    DiskImage::Context::terminate_di(a2);
    if (v11 < 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = -v11;
    }
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v12 == v11)
  {
LABEL_14:
    v6 = 0;
    if (a3 && (*(this + 112) & 1) != 0)
    {
      *(this + 112) = 0;
      di_asif::details::table::update_map_entry(a3, *this, *(this + 2));
      if (!*(this + 2))
      {
        v13 = *(this + 3);
        if (v13)
        {
          di_asif::details::table::return_chunk(a3, v13);
        }
      }

      return 0;
    }
  }

  return v6;
}

void sub_248EC8EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 168);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<2098ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2098ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEEED0;
  a1[45] = &unk_285BEEFD0;
  a1[46] = &unk_285BEEFF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEEED0;
  a1[45] = &unk_285BEEF58;
  a1[46] = &unk_285BEEF80;
  return a1;
}

void sub_248EC9034(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2098ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::map_element::zero_range_in_sg(di_asif::details::map_element *this, const di_asif::details::table *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v7 = *(this + 1) + *(*(a2 + 1) + 56) * *(*(a2 + 1) + 28);
  v30[0] = *(this + 1);
  v30[1] = v7;
  v31 = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(a3, v30, a4, &v45);
  if (!sg_vec_ns::details::sg_vec_iterator::operator==(&v45, &v50))
  {
    v8 = *(*(a2 + 1) + 26);
    v9 = v47 / v8 * v8;
    v19 = (v53 - v49) & ~((v53 - v49) >> 63);
    v10 = v19 + v47;
    v11 = (v8 + v19 + v47 - 1) / v8 * v8;
    if (v9 < v11)
    {
      v12 = v47 % v8;
      do
      {
        v13 = di_asif::details::map_element::search_for_pattern_mismatch(this, a2, 1u, v9, v11);
        v14 = v13;
        if (v10 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v10;
        }

        v16 = v9 + v12;
        if (v15 > v9 + v12)
        {
          if (v19 - ((v49 - *(a3 + 26)) & ~((v49 - *(a3 + 26)) >> 63)) >= v15 - (v9 + v12))
          {
            v17 = v15 - (v9 + v12);
          }

          else
          {
            v17 = v19 - ((v49 - *(a3 + 26)) & ~((v49 - *(a3 + 26)) >> 63));
          }

          sg_vec_ns::details::sg_vec_iterator::subvec(&v45, a4, v17 + v47, 0, v38);
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v27, v38);
          sg_vec_ns::generate_vec_ref(v27, &v42, v40, v17, 0xFFFFFFFFFFFFFFFFLL, v30);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          sg_vec_ref::begin(v30, v24);
          sg_vec_ref::end(v30, v21);
          fill_written_zeros(v24, v21);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }

          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }
        }

        v18 = di_asif::details::map_element::search_for_pattern_match(this, a2, 1u, v14, v11);
        v9 = v18;
        if (v18 >= v15 + v12)
        {
          sg_vec_ns::details::sg_vec_iterator::operator+=(&v45, v18 - v16);
          v12 = 0;
        }
      }

      while (v9 < v10);
    }
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void di_asif::details::map_element::load(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3)
{
  v6 = *(this + 5);
  v7 = *(*(a3 + 1) + 28);
  v8 = *(this + 2);
  v9 = *(details::get_dummy_shared_ptr() + 1);
  v15 = v6;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v7;
  v18 = v8;
  v19 = v7;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v10 = (*(**(a2 + 2) + 128))(*(a2 + 2), &v15);
  if (v17 != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = exception;
    if (v10 < 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = -v10;
    }

    *exception = &unk_285BF4E60;
    v14 = std::generic_category();
    v12[1] = v13;
    v12[2] = v14;
    *(v12 + 24) = 0;
    *(v12 + 48) = 0;
    v12[7] = "Can't load bitmap from backend";
  }

  di_asif::details::map_element::validate_bitmap(this, a3);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_248EC9520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t di_asif::details::map_element::validate_bitmap(di_asif::details::map_element *this, di_asif::details::table *a2)
{
  di_asif::details::table_entry_map::table_entry_map(v23, a2, *this);
  v20 = v23[0];
  result = di_asif::details::table::make_data_entry_iterators_for_map(a2, &v20, v23);
  v5 = *(a2 + 1);
  v6 = *(v5 + 16);
  if (*(v6 + 160) != 1 || (v7 = (*(this + 1) / *(v5 + 26) - *(a2 + 44) / *(v5 + 26)) / (*(v5 + 56) * (*(v5 + 28) / *(v5 + 26))) + *(v5 + 72) * (*(a2 + 44) / *(v5 + 88)), result = lock_free::bitmap_t::get_bit(v6, v7), (result & 1) != 0) || v7 >= *(v6 + 16))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    result = lock_free::bitmap_t::set_bit(v6, v7, 1);
  }

  v22 = v24;
  v20 = v23[0];
  v21 = v23[1];
  v9 = *(a2 + 1);
  v10 = *(v9 + 26);
  v11 = *(v9 + 28);
  v18 = 0u;
  v19 = 0u;
  if (2 * v11 / v10 * *(v9 + 56))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!((v13 >> 1) * v10 % v11))
      {
        if (v13)
        {
          di_asif::details::data_entry_iterator_t::operator++(&v20);
          v12 = 0;
        }

        v15 = atomic_load((*(v21 + 56) + 16 * *(&v21 + 1) + 8));
        v12 |= v15 >> 62 == 3;
        v14 += 2 * (v11 / v10);
      }

      block_bits = di_asif::details::map_element::get_block_bits(this, v13);
      result = v13;
      if (v13 != v14)
      {
        *v25 = block_bits & 1 | (((block_bits >> 1) & 1) << 8);
        result = lock_free::bitmap_t::find_match_bits(this + 32, v13, v14, v25);
      }

      if ((v8 & v12) == 1)
      {
        if (block_bits > 1)
        {
          v17 = &v19;
          if (block_bits != 2)
          {
            v17 = &v19 + 8;
          }
        }

        else if (block_bits)
        {
          v17 = &v18 + 8;
        }

        else
        {
          v17 = &v18;
        }

        *v17 += (result - v13) >> 1;
      }

      v13 = result;
    }

    while (result < 2 * (*(*(a2 + 1) + 28) / *(*(a2 + 1) + 26)) * *(*(a2 + 1) + 56));
  }

  if (v8)
  {
    return analytics_collector_t::operator+=(v6, &v18);
  }

  return result;
}

atomic_ullong *analytics_collector_t::operator+=(atomic_ullong *result, unint64_t *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 11, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 12, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 13, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 14, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

di_asif::details::map_element *di_asif::details::map_element::map_element(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, unint64_t a4, uint64_t a5, char a6)
{
  *this = a4;
  v9 = *(a3 + 1);
  v10 = *(v9 + 56);
  v11 = *(v9 + 28);
  *(this + 1) = *(a3 + 44) + a4 / (v10 + 1) * v10 * v11;
  *(this + 2) = a5;
  *(this + 3) = 0;
  v12 = a6 ^ 1;
  lock_free::bitmap_dynamically_allocated_t::bitmap_dynamically_allocated_t(this + 4, 2 * v10 * (v11 / *(v9 + 26)), a6 ^ 1);
  *(this + 15) = 850045863;
  *(this + 56) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  if (v12)
  {
    di_asif::details::map_element::load(this, a2, a3);
  }

  else
  {
    *(this + 56) = 257;
    di_asif::details::table_entry_map::table_entry_map(&v16, a3, *this);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x8000000000000000);
    di_asif::details::table_entry_map::table_entry_map(&v16, a3, *this);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x4000000000000000uLL);
    v13 = *(a3 + 1);
    v14 = *(v13 + 16);
    if (*(v14 + 160) == 1)
    {
      lock_free::bitmap_t::set_bit(v14, (*(this + 1) / *(v13 + 26) - *(a3 + 44) / *(v13 + 26)) / (*(v13 + 56) * (*(v13 + 28) / *(v13 + 26))) + *(v13 + 72) * (*(a3 + 44) / *(v13 + 88)), 1);
    }
  }

  return this;
}

void sub_248EC99F8(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  lock_free::bitmap_dynamically_allocated_t::~bitmap_dynamically_allocated_t((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::map_element::close(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, uint64_t a4)
{
  if ((*(*(a2 + 1) + 8) & 1) == 0)
  {
    std::mutex::lock((this + 120));
    if (a3 && (di_asif::details::table_entry_map::table_entry_map(&v17, a3, *this), (atomic_fetch_and((*(v17 + 56) + 16 * v18 + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) != 0))
    {
      v9 = 1;
    }

    else
    {
      if ((*(this + 113) & 1) == 0)
      {
        v4 = 0;
        if (*(this + 112) != 1)
        {
LABEL_16:
          std::mutex::unlock((this + 120));
          return v4;
        }
      }

      v9 = 0;
    }

    v10 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
    if (v10)
    {
      DiskImage::Context::terminate_di(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = exception;
      if (v10 < 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = -v10;
      }

      *exception = &unk_285BF4E60;
      v16 = std::generic_category();
      v14[1] = v15;
      v14[2] = v16;
      *(v14 + 24) = 0;
      *(v14 + 48) = 0;
      v14[7] = "Can't flush asif on map element close, backend barrier failed";
    }

    v4 = di_asif::details::map_element::flush_locked(this, a2, a3, a4);
    if (v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (a3 && v11)
    {
      di_asif::details::table_entry_map::table_entry_map(&v17, a3, *this);
      atomic_fetch_or((*(v17 + 56) + 16 * v18 + 8), 0x8000000000000000);
    }

    goto LABEL_16;
  }

  return 4294967290;
}

atomic_ullong *di_asif::details::dir::load_create_table@<X0>(atomic_ullong *this@<X0>, di_asif::details::ContextASIF *a2@<X1>, std::unique_lock<std::mutex>::mutex_type *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, atomic_ullong *a7@<X8>)
{
  v10 = this;
  v19 = a4;
  *a7 = 0;
  if (a4 || a5)
  {
    ref::Allocator<di_asif::details::table,unsigned long long>::allocate((this + 36), a3, a6, &v18);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(a7, &v18);
    this = ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v18);
    v12 = *a7;
    if (*a7)
    {
      LOBYTE(v12) = *(v12 + 520) ^ 1;
    }

    if (v12 & 1) != 0 || (a6)
    {
      if (!*a7 || (v13 = atomic_load((*a7 + 24)), v13 != 2))
      {
        if (!*a7 || (*(*a7 + 520) & 1) == 0)
        {
          if (v19 | (*(*(v10 + 160) + 8 * a3) * *(v10 + 28)))
          {
            if (v19)
            {
              v14 = v19;
            }

            else
            {
              v14 = *(*(v10 + 160) + 8 * a3) * *(v10 + 28);
            }

            v18 = *(v10 + 88) * a3;
            v19 = v14;
            ref::tagged_ptr<di_asif::details::table,unsigned long long>::make_value<di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long>(a7, v10, a2 + 2, &v19, &v18);
          }

          space = di_asif::details::dir_base::allocate_space(v10, a2, 1);
          v17 = *(v10 + 88) * a3;
          v18 = space;
          v16 = 1;
          ref::tagged_ptr<di_asif::details::table,unsigned long long>::make_value<di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long,BOOL>(a7, v10, a2 + 2, &v18, &v17, &v16);
        }
      }
    }
  }

  return this;
}

atomic_ullong *ref::Allocator<di_asif::details::table,unsigned long long>::allocate@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = a2;
  ref::Allocator<di_asif::details::table,unsigned long long>::add_tag(a1, a2, a3, &v19);
  if (v19 && (*(v19 + 520) & 1) == 0 || v19 && (*(v19 + 520) & 1) != 0)
  {
LABEL_5:
    *a4 = 0;
    v7 = atomic_exchange(&v19, 0);
  }

  else
  {
    v8 = *(a1 + 912);
    if ((v8 & 1) == 0 || v20 == (a1 + 936))
    {
      *a4 = 0;
      goto LABEL_16;
    }

    while ((v8 & 2) == 0)
    {
      ref::Allocator<di_asif::details::table,unsigned long long>::allocate_from_empty_pool(a1, a2, &v17);
      v21 = v17;
      ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v19, &v18);
      ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v18);
      if (v19 && (*(v19 + 520) & 1) == 0)
      {
        goto LABEL_23;
      }

      min = ref::Allocator<di_asif::details::table,unsigned long long>::extract_min(a1);
      if (min)
      {
        v21 = min;
        ref::Allocator<di_asif::details::table,unsigned long long>::insert_elem(a1, min, a2, &v17);
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v19, &v17);
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v17);
LABEL_23:
        std::mutex::lock((a1 + 952));
        v14 = std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *&>((a1 + 928), v20, &v22);
        if ((v15 & 1) == 0)
        {
          *(v14 + 40) = v21;
        }

        std::condition_variable::notify_all((a1 + 1016));
        std::mutex::unlock((a1 + 952));
        v23[0] = 0;
        v24 = 0;
        ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, 0, v23);
        if (v24 == 1)
        {
          std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v23);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 912);
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = (a1 + 104);
    *a4 = 0;
    v12 = atomic_load((a1 + 104));
    if (v12)
    {
      v13 = v12;
      while (1)
      {
        atomic_compare_exchange_strong(v7, &v13, v12 + 1);
        if (v13 == v12)
        {
          break;
        }

        v12 = v13;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      v16 = *(a1 + 608);
      if (v16)
      {
        *(a1 + 616) = atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a4);
LABEL_16:
  result = ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v19);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248EC9F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

atomic_ullong *ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_248ECA064(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

void sub_248ECA0C8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

unint64_t *ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::tagged_ptr(&v8, v6, 1);
    if (v8 && (*(v8 + 520) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *di_log::logger<di_log::log_printer<2353ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2353ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF180;
  a1[45] = &unk_285BEF280;
  a1[46] = &unk_285BEF2A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF180;
  a1[45] = &unk_285BEF208;
  a1[46] = &unk_285BEF230;
  return a1;
}

void sub_248ECA2A4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2353ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2363ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2363ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF3A0;
  a1[45] = &unk_285BEF4A0;
  a1[46] = &unk_285BEF4C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF3A0;
  a1[45] = &unk_285BEF428;
  a1[46] = &unk_285BEF450;
  return a1;
}

void sub_248ECA410(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2363ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::handle_all_failures(di_asif::details::dir *this, di_asif::details::ContextASIF *a2)
{
  v4 = ref::Allocator<di_asif::details::map_element,unsigned long long>::handle_failures(this + 2088);
  if (v4 == -1)
  {
    return 4294967282;
  }

  if (v4 != 1 || ((v5 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0), v5 < 0) ? (v6 = v5) : (v6 = -v5), !v5))
  {
    v7 = ref::Allocator<di_asif::details::table,unsigned long long>::handle_failures(this + 288);
    if (v7 != -1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      v8 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
      v6 = v8 < 0 ? v8 : -v8;
      if (!v8)
      {
        return 0;
      }

      *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
      *(&v10 + 1) = 42;
      v11 = 16;
      di_log::logger<di_log::log_printer<2440ul>>::logger(v12, &v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Backend barrier failed during allocator failures handling, error ", 65);
      MEMORY[0x24C1ED390](&v13, v6);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<2440ul>>::~logger_buf(v12);
      goto LABEL_15;
    }

    return 4294967282;
  }

  *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
  *(&v10 + 1) = 42;
  v11 = 16;
  di_log::logger<di_log::log_printer<2429ul>>::logger(v12, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Backend barrier failed during bitmap allocator failures handling, error ", 72);
  MEMORY[0x24C1ED390](&v13, v6);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v12);
LABEL_15:
  MEMORY[0x24C1ED6A0](&v14);
  return v6;
}

void sub_248ECA634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<2440ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t ref::Allocator<di_asif::details::map_element,unsigned long long>::handle_failures(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v5 = 0;
  v1 = ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(a1, 0, v4);
  if (v5 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_248ECA6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<2429ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2429ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF5C0;
  a1[45] = &unk_285BEF6C0;
  a1[46] = &unk_285BEF6E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF5C0;
  a1[45] = &unk_285BEF648;
  a1[46] = &unk_285BEF670;
  return a1;
}

void sub_248ECA7FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2429ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t ref::Allocator<di_asif::details::table,unsigned long long>::handle_failures(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v5 = 0;
  v1 = ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, 0, v4);
  if (v5 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_248ECA8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<2440ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2440ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF7E0;
  a1[45] = &unk_285BEF8E0;
  a1[46] = &unk_285BEF908;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF7E0;
  a1[45] = &unk_285BEF868;
  a1[46] = &unk_285BEF890;
  return a1;
}

void sub_248ECAA08(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2440ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2440ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2440ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::flush_dir(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, __int128 *a3)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  std::mutex::lock((this + 3800));
  v6 = *(this + 3768);
  v55 = *(this + 3752);
  v56 = v6;
  *(this + 3752) = 0u;
  *(this + 3768) = 0u;
  v7 = v57;
  v57 = *(this + 3784);
  *(this + 3784) = v7;
  std::mutex::unlock((this + 3800));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::wait_for_idle(this + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::wait_for_idle(this + 288);
  v8 = di_asif::details::dir::handle_all_failures(this, a2);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = *(this + 13);
  v10 = *(this + 21) - *(this + 20) + v9 + 7;
  v11 = v10 / v9 * v9;
  if (v10 == v10 % v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v10 / v9 * v9, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v44 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v44, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  *&v58 = &unk_285BED4C8;
  v60 = &v58;
  v68 = v12;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v69, &v58);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v58);
  v13 = v68;
  *v68 = bswap64(*(this + 452) - 2);
  v14 = v13 + 1;
  v15 = *(this + 20);
  v16 = *(this + 21);
  while (v15 != v16)
  {
    v17 = *v15++;
    *v14++ = bswap64(v17);
  }

  bzero(v14, v68 + v11 - v14);
  v18 = *(this + 13);
  if (*(this + 13))
  {
    v18 = malloc_type_valloc(v18, 0x8B7C732DuLL);
    if (!v18)
    {
      v41 = __cxa_allocate_exception(8uLL);
      v42 = std::bad_alloc::bad_alloc(v41);
      __cxa_throw(v42, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  *&v58 = &unk_285BED4C8;
  v60 = &v58;
  v66 = v18;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v67, &v58);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v58);
  memcpy(v66, v68, *(this + 13));
  v19 = v68;
  v20 = *(details::get_dummy_shared_ptr() + 1);
  v47 = v19;
  v48 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = v11;
  v50 = a3;
  v51 = v11;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v21 = (*(**(a2 + 2) + 120))(*(a2 + 2), &v47);
  if (v11 != v21)
  {
    v34 = v21;
    *&v45 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v45 + 1) = 32;
    v46 = 16;
    di_log::logger<di_log::log_printer<2488ul>>::logger(&v58, &v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Full dir write failed with ", 27);
    MEMORY[0x24C1ED390](v65, v34);
    di_log::logger<di_log::log_printer<2488ul>>::~logger(&v58);
    v35 = __cxa_allocate_exception(0x40uLL);
    if (v34 >= 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = v34;
    }

    v36 = "Failed writing full dir";
LABEL_31:
    *v35 = &unk_285BF4E60;
    v37 = std::generic_category();
    v35[1] = v22;
    v35[2] = v37;
    *(v35 + 24) = 0;
    *(v35 + 48) = 0;
    v35[7] = v36;
  }

  v22 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
  if (v22)
  {
    v35 = __cxa_allocate_exception(0x40uLL);
    v36 = "Failed barrier after writing full dir";
    goto LABEL_31;
  }

  v23 = *(this + 452);
  *(this + 452) = v23 + 1;
  *v66 = bswap64(v23);
  v24 = v66;
  v25 = *(this + 13);
  v26 = *(details::get_dummy_shared_ptr() + 1);
  *&v58 = v24;
  *(&v58 + 1) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v59 = v25;
  v60 = a3;
  v61 = v25;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sg_entry::operator=(&v47, &v58);
  if (*(&v58 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v58 + 1));
  }

  v27 = (*(**(a2 + 2) + 120))(*(a2 + 2), &v47);
  if (v27 != *(this + 13))
  {
    *&v45 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v45 + 1) = 32;
    v46 = 16;
    di_log::logger<di_log::log_printer<2501ul>>::logger(&v58, &v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "First block of dir write failed with ", 37);
    MEMORY[0x24C1ED390](v65, v27);
    di_log::logger<di_log::log_printer<2501ul>>::~logger(&v58);
    v38 = __cxa_allocate_exception(0x40uLL);
    v39 = v38;
    if (v27 >= 0)
    {
      v27 = 4294967291;
    }

    else
    {
      v27 = v27;
    }

    *v38 = &unk_285BF4E60;
    v40 = std::generic_category();
    v39[1] = v27;
    v39[2] = v40;
    *(v39 + 24) = 0;
    *(v39 + 48) = 0;
    v39[7] = "Failed writing first block of dir";
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v28 = (*(&v55 + 1) + 8 * (v57 >> 9));
  if (v56 == *(&v55 + 1))
  {
    v29 = 0;
    v31 = 0;
    v30 = (*(&v55 + 1) + 8 * ((*(&v57 + 1) + v57) >> 9));
  }

  else
  {
    v29 = &(*v28)[v57 & 0x1FF];
    v30 = (*(&v55 + 1) + 8 * ((*(&v57 + 1) + v57) >> 9));
    v31 = (*v30 + 8 * ((*(&v57 + 1) + v57) & 0x1FF));
  }

  di_asif::details::dir_base::insert_space<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(this, v28, v29, v30, v31, a2);
  v8 = 1;
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v66, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v67);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v68, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v69);
LABEL_25:
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&v55);
  v32 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_248ECB06C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, char a33)
{
  di_log::logger<di_log::log_printer<2501ul>>::~logger(&a33);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a2 == 1)
  {
    v41 = __cxa_begin_catch(a1);
    *(v33 + 3616) = v37;
    std::mutex::lock((v33 + 3800));
    v42 = *(v33 + 3784) + *(v33 + 3792);
    v43 = *(v33 + 3760);
    v44 = (v43 + 8 * (v42 >> 9));
    if (*(v33 + 3768) == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = *v44 + 8 * (v42 & 0x1FF);
    }

    v46 = (a28 + 8 * (a31 >> 9));
    if (a29 == a28)
    {
      v47 = 0;
      v49 = 0;
      v48 = (a28 + 8 * ((a32 + a31) >> 9));
    }

    else
    {
      v47 = &(*v46)[8 * (a31 & 0x1FF)];
      v48 = (a28 + 8 * ((a32 + a31) >> 9));
      v49 = (*v48 + 8 * ((a32 + a31) & 0x1FF));
    }

    std::deque<unsigned long long>::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v34, v44, v45, v46, v47, v48, v49);
    v50 = v41[2];
    std::mutex::unlock((v33 + 3800));
    __cxa_end_catch();
    JUMPOUT(0x248ECADFCLL);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v38 - 168), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v36 + 8);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v38 - 128), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v35 + 8);
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void ref::Allocator<di_asif::details::map_element,unsigned long long>::wait_for_idle(uint64_t a1)
{
  v1 = (a1 + 608);
  if (atomic_load((a1 + 608)))
  {
    v4 = (a1 + 616);
    atomic_fetch_add((a1 + 616), 1uLL);
    v7.__m_ = (a1 + 624);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 624));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 688), &v7);
      }

      while (atomic_load((a1 + 608)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void ref::Allocator<di_asif::details::table,unsigned long long>::wait_for_idle(uint64_t a1)
{
  v1 = (a1 + 784);
  if (atomic_load((a1 + 784)))
  {
    v4 = (a1 + 792);
    atomic_fetch_add((a1 + 792), 1uLL);
    v7.__m_ = (a1 + 800);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 800));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 864), &v7);
      }

      while (atomic_load((a1 + 784)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void *di_log::logger<di_log::log_printer<2488ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2488ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEFA00;
  a1[45] = &unk_285BEFB00;
  a1[46] = &unk_285BEFB28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEFA00;
  a1[45] = &unk_285BEFA88;
  a1[46] = &unk_285BEFAB0;
  return a1;
}

void sub_248ECB45C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2488ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2488ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2488ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2501ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2501ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEFC20;
  a1[45] = &unk_285BEFD20;
  a1[46] = &unk_285BEFD48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEFC20;
  a1[45] = &unk_285BEFCA8;
  a1[46] = &unk_285BEFCD0;
  return a1;
}

void sub_248ECB5C8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2501ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2501ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2501ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::do_io(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4, int a5)
{
  v10 = *(a4 + 26) - *(a3 + 26);
  v11 = v10 & ~(v10 >> 63);
  v12 = *(a3 + 3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v41, a3);
  v13 = 0;
  if (a5)
  {
    v14 = "read";
  }

  else
  {
    v14 = "write";
  }

  v15 = 4;
  if (!a5)
  {
    v15 = 5;
  }

  v25 = v15;
  v26 = v14;
  while (1)
  {
    v16 = v12 / *(this + 11);
    di_asif::details::dir::get_table(this, a2, v16, a5 ^ 1, 1, &v40);
    if (v40 && (v40[520] & 1) != 0)
    {
      if ((a5 & 1) == 0)
      {
        DiskImage::Context::terminate_di(a2);
      }

      v17 = 0;
      v5 = -5;
      goto LABEL_24;
    }

    sg_vec_ns::details::sg_vec_iterator::subvec(&v41, a4, *(this + 11) + *(this + 11) * v16, 0, &v32);
    if (v40 && (v40[520] & 1) == 0)
    {
      if (a5)
      {
        if (v40[400])
        {
          v19 = (v40 + 40);
        }

        else
        {
          v19 = 0;
        }

        v21 = di_asif::details::table::read(v19, a2, &v32, &v36);
      }

      else
      {
        if (v40[400])
        {
          v20 = (v40 + 40);
        }

        else
        {
          v20 = 0;
        }

        v21 = di_asif::details::table::write(v20, a2, &v32, &v36);
      }

      v5 = v21;
      if ((v21 & 0x8000000000000000) != 0 && v21)
      {
        *&v27 = "di_asif::details::dir::do_io(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &, BOOL)";
        *(&v27 + 1) = 28;
        v28 = 16;
        di_log::logger<di_log::log_printer<2547ul>>::logger(v29, &v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Failed during table ", 20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v26, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " in dir I/O, error ", 19);
        MEMORY[0x24C1ED390](&v30, v5);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<2547ul>>::~logger_buf(v29);
        MEMORY[0x24C1ED6A0](&v31);
        if ((a5 & 1) == 0)
        {
          DiskImage::Context::terminate_di(a2);
        }

        v17 = 0;
        goto LABEL_16;
      }

      v18 = v21;
    }

    else
    {
      fill_zeros(&v32, &v36);
      v18 = (v39 - v35) & ~((v39 - v35) >> 63);
      sg_vec_ns::details::sg_vec_iterator::operator+=(&v32, v18);
    }

    sg_vec_ns::details::sg_vec_iterator::operator+=(&v41, v18);
    v12 += v18;
    v13 += v18;
    v17 = 1;
LABEL_16:
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

LABEL_24:
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v40);
    if (!v17)
    {
      break;
    }

    if (v13 == v11)
    {
      v22 = *(a3 + 3);
      goto LABEL_43;
    }
  }

  v11 = v5;
LABEL_43:
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  return v11;
}

void sub_248ECB924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  di_log::logger<di_log::log_printer<2547ul>>::~logger(va);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&STACK[0x240]);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&STACK[0x400]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x408]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<2547ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2547ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEFE40;
  a1[45] = &unk_285BEFF40;
  a1[46] = &unk_285BEFF68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEFE40;
  a1[45] = &unk_285BEFEC8;
  a1[46] = &unk_285BEFEF0;
  return a1;
}

void sub_248ECBA84(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2547ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2547ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2547ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

double di_asif::details::asif_extents_iterator_interface::_make_val@<D0>(di_asif::details::asif_extents_iterator_interface *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(this + 32) & 1) + *(this + 3);
  v10[0] = *(this + 5);
  v10[1] = v3;
  v11 = 2;
  *&v8 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  *(&v8 + 1) = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  LOBYTE(v9) = 2;
  next_extent = di_asif::details::dir::get_next_extent(*(this + 8), *(this + 7), v10, &v8);
  if (next_extent >= 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Can't convert ASIF flag.", 5u);
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = next_extent;
  return result;
}

uint64_t di_asif::details::dir::get_next_extent(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, void *a3, uint64_t a4)
{
  v7 = 0;
  *&v29 = *a3;
  *(&v29 + 1) = v29;
  v26 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  v27 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  v30 = 2;
  v28 = 2;
  v24 = *a3;
  v25 = a3[2];
  do
  {
    v8 = *(&v24 + 1);
    if (v25)
    {
      if (v25 == 3)
      {
        if (*(&v24 + 1) < v24)
        {
          goto LABEL_5;
        }
      }

      else if (v24 >= *(&v24 + 1))
      {
        goto LABEL_5;
      }
    }

    else if (v24 >= *(&v24 + 1) || (v24 + 1) >= *(&v24 + 1))
    {
LABEL_5:
      if (!boost::icl::identity_element<unsigned long long>::value(void)::_value)
      {
        break;
      }

      goto LABEL_12;
    }

    if (!(*(&v24 + 1) + (v25 & 1) - v24 + ((v25 >> 1) & 1) - 1))
    {
      break;
    }

LABEL_12:
    if ((v25 & 2) != 0)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }

    v11 = v10 * *(this + 13);
    di_asif::details::dir::get_table(this, a2, v11 / *(this + 11), 0, 1, &v23);
    if (v23 && (v23[520] & 1) != 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v18 = std::generic_category();
      exception[1] = 4294967291;
      exception[2] = v18;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't load table to get extents";
    }

    if (v23 && (v23[520] & 1) == 0)
    {
      if (v23[400])
      {
        v14 = (v23 + 40);
      }

      else
      {
        v14 = 0;
      }

      next_extent = di_asif::details::table::get_next_extent(v14, a2, &v24, &v26);
    }

    else
    {
      next_extent = 0;
      v13 = (*(this + 11) + *(this + 11) * (v11 / *(this + 11)) + 1) / *(this + 13);
      if (v13 >= v8)
      {
        v13 = v8;
      }

      v26 = v10;
      v27 = v13;
      v28 = 2;
    }

    if (next_extent == v7)
    {
LABEL_36:
      *(&v29 + 1) = v27;
      v30 = 2;
      v19 = v24;
      v20 = v25;
      boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v19, &v29, &v21);
      v24 = v21;
      LOBYTE(v25) = v22;
      v15 = 1;
      v7 = next_extent;
      goto LABEL_40;
    }

    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_35;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_35;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_35:
      if (!(*(&v29 + 1) + (v30 & 1) - v29 + ((v30 >> 1) & 1) - 1))
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    if (!boost::icl::identity_element<unsigned long long>::value(void)::_value)
    {
      goto LABEL_36;
    }

LABEL_39:
    v15 = 0;
LABEL_40:
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v23);
  }

  while ((v15 & 1) != 0);
  *a4 = v29;
  *(a4 + 16) = v30;
  return v7;
}

void sub_248ECBE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table::get_next_extent(di_asif::details::table *a1, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v61[0] = *(a3 + 17);
  *(v61 + 3) = *(a3 + 20);
  if ((v7 & 2) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
  }

  data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(a1, v8 * *(*(a1 + 1) + 26));
  v11 = atomic_load((data_entry_for_offset[7] + 16 * v10 + 8));
  *v48 = v11 >> 62;
  if (v11 >> 62 == 3)
  {
    v12 = data_entry_for_offset[1];
    di_asif::details::table::get_bitmap(a1, a2, (data_entry_for_offset[44] + (*(v12 + 56) + *(v12 + 56) * v10) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0, v54);
    v13 = *(a1 + 1);
    if (v54[0])
    {
      if (*(v54[0] + 224))
      {
        v15 = (v54[0] + 40);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v14 = *(v13 + 26);
    *v48 = di_asif::details::map_element::get_block_bits(v15, 2 * ((v8 * v14 - (*(a1 + 44) + *(v13 + 56) * *(v13 + 28) * ((v8 * v14 / v14 - *(a1 + 44) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v54);
  }

  v16 = 0;
  while (1)
  {
    if (v7)
    {
      if (v7 == 3)
      {
        if (v6 >= v5)
        {
          goto LABEL_18;
        }
      }

      else if (v6 > v5)
      {
        goto LABEL_18;
      }
    }

    else if (v6 > v5 && v5 + 1 < v6)
    {
LABEL_18:
      if (!(v6 - v5 + (v7 & 1) + (((v7 >> 1) & 1) - 1)))
      {
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (!boost::icl::identity_element<unsigned long long>::value(void)::_value)
    {
      goto LABEL_42;
    }

LABEL_22:
    if ((v7 & 2) != 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 + 1;
    }

    v18 = *(a1 + 1);
    v19 = v17 * *(v18 + 26);
    if (v19 >= *(v18 + 88) + *(a1 + 44))
    {
      goto LABEL_42;
    }

    v20 = di_asif::details::table::get_data_entry_for_offset(a1, v19);
    v22 = v20;
    v23 = v21;
    v59 = v20;
    v60 = v21;
    v24 = v7;
    v49 = v6;
    v25 = *(*(a1 + 1) + 26);
    v26 = v20[1];
    v27 = (*(v26 + 56) + *(v26 + 56) * v21) / (*(v26 + 56) + 1);
    v28 = *(v26 + 28);
    if (v20[44] + v28 + v27 * v28 >= v25 + v25 * (v6 + ((v7 & 1) - 1)))
    {
      v29 = v25 + v25 * (v6 + ((v7 & 1) - 1));
    }

    else
    {
      v29 = v20[44] + v28 + v27 * v28;
    }

    v30 = (v20[7] + 16 * v21);
    v31 = ref::ref_cnt::get(v30);
    v57[0] = &unk_285BF4C50;
    v57[1] = v30;
    v58 = v31;
    if (!v31)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      di_log::logger<di_log::log_printer<2631ul>>::logger(v54, &v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Couldn't lock entry ", 20);
      di_asif::details::operator<<(v56, &v59);
      di_log::logger<di_log::log_printer<2631ul>>::~logger(v54);
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v42 = std::generic_category();
      exception[1] = 5;
      exception[2] = v42;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't lock entry";
    }

    v32 = atomic_load((v22[7] + 16 * v23 + 8));
    v33 = v32 >> 62;
    if (v48[0] == v33)
    {
      v34 = v29 / *(*(a1 + 1) + 26);
      v16 = v34;
      goto LABEL_40;
    }

    if (v33 != 3)
    {
      break;
    }

    v35 = v59[1];
    di_asif::details::table::get_bitmap(a1, a2, (v59[44] + (*(v35 + 56) + *(v35 + 56) * v60) / (*(v35 + 56) + 1) * *(v35 + 28)) / *(v35 + 26), 0, v50);
    if (!v50[0] || (*(v50[0] + 344) & 1) != 0)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      di_log::logger<di_log::log_printer<2641ul>>::logger(v54, &v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Can't read bitmap", 17);
      di_log::logger<di_log::log_printer<2641ul>>::~logger(v54);
      v43 = __cxa_allocate_exception(0x40uLL);
      *v43 = &unk_285BF4E60;
      v44 = std::generic_category();
      v43[1] = 5;
      v43[2] = v44;
      *(v43 + 24) = 0;
      *(v43 + 48) = 0;
      v43[7] = "Can't read bitmap";
    }

    v36 = *(v50[0] + 224) ? (v50[0] + 40) : 0;
    v37 = di_asif::details::map_element::search_for_pattern_match(v36, a1, v48[0], v19, v29);
    v38 = *(*(a1 + 1) + 26);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v50);
    v16 = v37 / v38;
    if (v37 < v29)
    {
      break;
    }

    v34 = v29 / *(*(a1 + 1) + 26);
LABEL_40:
    *&v52 = v5;
    *(&v52 + 1) = v49;
    LOBYTE(v53) = v24;
    *(&v53 + 1) = v61[0];
    HIDWORD(v53) = *(v61 + 3);
    v50[0] = v17;
    v50[1] = v34;
    v51 = 2;
    boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v52, v50, v54);
    v5 = v54[0];
    v6 = v54[1];
    v7 = v55;
    ref::details::ref_cnt_handle::~ref_cnt_handle(v57);
  }

  ref::details::ref_cnt_handle::~ref_cnt_handle(v57);
LABEL_42:
  v39 = *a3;
  if ((*(a3 + 16) & 2) == 0)
  {
    ++v39;
  }

  *a4 = v39;
  *(a4 + 8) = v16;
  *(a4 + 16) = 2;
  return *v48;
}

void sub_248ECC408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<2631ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2631ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0060;
  a1[45] = &unk_285BF0160;
  a1[46] = &unk_285BF0188;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0060;
  a1[45] = &unk_285BF00E8;
  a1[46] = &unk_285BF0110;
  return a1;
}

void sub_248ECC580(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2631ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2631ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2631ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2641ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2641ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0280;
  a1[45] = &unk_285BF0380;
  a1[46] = &unk_285BF03A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0280;
  a1[45] = &unk_285BF0308;
  a1[46] = &unk_285BF0330;
  return a1;
}

void sub_248ECC6EC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2641ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::unmap(uint64_t a1, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4)
{
  di_asif::details::dir::make_unmap_iterators(a1, a3, a4, &v33);
  v9 = *(*(a1 + 32) + 216);
  while (1)
  {
    v10 = v33;
    if (v33 == v41 && v34 == v42 && v35 == v43 && (v35 == v33 + 16 * v34 || v38 == v44 && v39 == v45 && v40 == v46))
    {
      return 0;
    }

    v11 = val * *(a1 + 26);
    di_asif::details::dir::get_table(a1, a2, v11 / *(a1 + 88), v9 ^ 1, 1, &v32);
    if (v32 && (*(v32 + 520) & 1) == 0)
    {
      if (*(v32 + 400))
      {
        v14 = v32 + 40;
      }

      else
      {
        v14 = 0;
      }

      di_asif::details::table::unmap(v14, a2, a3, a4, &v19);
      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        val = di_asif::details::unmap_iterator_t::make_val(&v33);
        v37 = v17;
      }

      v13 = 0;
      goto LABEL_38;
    }

    if (v32)
    {
      if (*(v32 + 520))
      {
        v12 = 4294967291;
      }

      else
      {
        v12 = 0;
      }

      v13 = 1;
      if (*(v32 + 520) & 1) != 0 || (v9)
      {
        goto LABEL_39;
      }

LABEL_23:
      di_asif::details::table::make_unmap_iterators(a3, a4, *(a1 + 28), *(a1 + 26), v11 / *(a1 + 88) * *(a1 + 88), *(a1 + 88) + v11 / *(a1 + 88) * *(a1 + 88), &v19);
      while (v19 != v26 || *(&v19 + 1) != v27 || v20 != v28 || v20 != v19 + 16 * *(&v19 + 1) && (v23 != v29 || v24 != v30 || v25 != v31))
      {
        v23 += v25 * v22;
        v21 = di_asif::details::unmap_iterator_t::make_val(&v19);
        v22 = v15;
      }

      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        val = di_asif::details::unmap_iterator_t::make_val(&v33);
        v37 = v16;
      }

      v13 = 2;
LABEL_38:
      v12 = v4;
      goto LABEL_39;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_23;
    }

    v12 = 0;
    v13 = 1;
LABEL_39:
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v32);
    v4 = v12;
    if ((v13 | 2) != 2)
    {
      return v12;
    }
  }
}

uint64_t di_asif::details::dir::flush(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, __int128 *a3, int a4)
{
  std::mutex::lock((this + 3536));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::wait_for_idle(this + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::wait_for_idle(this + 288);
  v8 = atomic_exchange(this + 900, 0);
  v9 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
  if (!v9)
  {
    v9 = di_asif::details::dir::handle_all_failures(this, a2);
    if (v9)
    {
      v11 = v8;
      goto LABEL_9;
    }

    v12 = *(this + 17);
    v13 = *(this + 18);
    if (v12 == v13)
    {
      v9 = 0;
      if (v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      v9 = 0;
      do
      {
        ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag(v12, v14 / *(this + 11), &v18);
        if (v18 && (v18[520] & 1) == 0)
        {
          if (v18[400])
          {
            v15 = (v18 + 40);
          }

          else
          {
            v15 = 0;
          }

          v16 = di_asif::details::table::flush(v15, a2);
          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = v16;
          }
        }

        v14 += *(this + 11);
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v18);
        ++v12;
      }

      while (v12 != v13);
      if (v8)
      {
LABEL_23:
        v17 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
        if (v17)
        {
          *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
          *(&v19 + 1) = 28;
          v20 = 16;
          di_log::logger<di_log::log_printer<2767ul>>::logger(v21, &v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Backend barrier failed during dir flush, error ", 47);
          MEMORY[0x24C1ED390](&v22, v17);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v21);
          MEMORY[0x24C1ED6A0](v23);
          if (v17 < 0)
          {
            v9 = v17;
          }

          else
          {
            v9 = -v17;
          }

          goto LABEL_5;
        }

        goto LABEL_29;
      }
    }

    if (!a4)
    {
      v11 = 0;
LABEL_32:
      if ((v9 & 0x80000000) == 0)
      {
        v9 = 0;
        goto LABEL_6;
      }

LABEL_9:
      v8 = v11;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_29:
    v9 = di_asif::details::dir::flush_dir(this, a2, a3);
    v11 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
  *(&v19 + 1) = 28;
  v20 = 16;
  di_log::logger<di_log::log_printer<2734ul>>::logger(v21, &v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Failed barrier at start of dir flush, error", 43);
  MEMORY[0x24C1ED390](&v22, v9);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v21);
  MEMORY[0x24C1ED6A0](v23);
  if (v9 < 0)
  {
    v9 = v9;
  }

  else
  {
    v9 = -v9;
  }

LABEL_5:
  atomic_fetch_or(this + 900, v8);
LABEL_6:
  std::mutex::unlock((this + 3536));
  return v9;
}

void sub_248ECCDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<2751ul>>::~logger(va);
  __cxa_end_catch();
  JUMPOUT(0x248ECCDC4);
}

void *di_log::logger<di_log::log_printer<2734ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2734ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF04A0;
  a1[45] = &unk_285BF05A0;
  a1[46] = &unk_285BF05C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF04A0;
  a1[45] = &unk_285BF0528;
  a1[46] = &unk_285BF0550;
  return a1;
}

void sub_248ECCF24(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2734ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2751ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2751ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF06C0;
  a1[45] = &unk_285BF07C0;
  a1[46] = &unk_285BF07E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF06C0;
  a1[45] = &unk_285BF0748;
  a1[46] = &unk_285BF0770;
  return a1;
}

void sub_248ECD090(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2751ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2767ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2767ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF08E0;
  a1[45] = &unk_285BF09E0;
  a1[46] = &unk_285BF0A08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF08E0;
  a1[45] = &unk_285BF0968;
  a1[46] = &unk_285BF0990;
  return a1;
}

void sub_248ECD1FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2767ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::dir::dir(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = di_asif::details::dir_base::dir_base(a1, a2, a4, a5, a10);
  *v15 = &unk_285BEC4E0;
  v15[12] = &unk_285BF30F8;
  v15[13] = v15;
  v15[15] = v15 + 12;
  v15[16] = a3;
  std::vector<ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>>::vector[abi:ne200100](v15 + 17, (v15[11] + a3 - 1) / v15[11]);
  std::vector<unsigned long long>::vector[abi:ne200100]((a1 + 160), (*(a1 + 88) + a3 - 1) / *(a1 + 88));
  *(a1 + 184) = a4;
  v16 = (a4 - 1 + (a5 - 1 + a6) / a5 * a5 + (a5 + 7 + 8 * ((*(a1 + 128) + *(a1 + 88) - 1) / *(a1 + 88))) / a5 * a5 * a7) / a4;
  *(a1 + 192) = 850045863;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 272) = 0;
  *(a1 + 280) = v16 * a4;
  v18[3] = 0;
  ref::Allocator<di_asif::details::table,unsigned long long>::Allocator(a1 + 288, 4, 0, v18);
}

void sub_248ECD760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, uint64_t a19, __int16 a20, char a21, char a22)
{
  v27 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v25);
  MEMORY[0x24C1ED730](v27, 0x1020C407A7143E5);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](&a19);
  std::__function::__value_func<int ()(di_asif::details::ContextASIF &)>::~__value_func[abi:ne200100](v23 + 8);
  std::mutex::~mutex((v22 + 3800));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((v22 + 3752));
  std::mutex::~mutex((v22 + 3688));
  std::condition_variable::~condition_variable((v22 + 3632));
  std::thread::~thread(a10);
  std::mutex::~mutex((v22 + 3536));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::~Allocator(v22 + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::~Allocator(v24 + 104);
  space_allocators::FixedSize::~FixedSize(v24);
  v28 = *(v22 + 160);
  if (v28)
  {
    *(v22 + 168) = v28;
    operator delete(v28);
  }

  v29 = *(v22 + 136);
  if (v29)
  {
    *(v22 + 144) = v29;
    operator delete(v29);
  }

  std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](a14);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::dir_base::dir_base(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  *a1 = &unk_285BF0AF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 26) = a4;
  *(a1 + 28) = a3;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3 >> 3;
  v6 = a3 / a4;
  v7 = 4 * a3;
  if (v7 < v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 / v6;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  v9 = di_asif::details::dir_base::calc_num_real_elements(a1);
  v10 = (*(a1 + 56) + v9) / (*(a1 + 56) + 1);
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v11 = v9 - v10;
  v12 = v11 * *(a1 + 28);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

unint64_t di_asif::details::dir::load<std::__wrap_iter<unsigned long long *>>(uint64_t a1, void **a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v35[4] = *MEMORY[0x277D85DE8];
  v9 = a3 + 8 * a4 + 7;
  v10 = v9 / a3 * a3;
  if (v9 == v9 % a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v9 / a3 * a3, 0x8B7C732DuLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v25 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v25, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  v26 = &unk_285BED4C8;
  v29 = &v26;
  v34 = v11;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v35, &v26);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v26);
  v12 = v34;
  v13 = *(details::get_dummy_shared_ptr() + 1);
  v26 = v12;
  v27 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = v10;
  v29 = a2;
  v30 = v10;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v14 = (*(*a1 + 128))(a1, &v26);
  if (v10 != v14)
  {
    v20 = __cxa_allocate_exception(0x40uLL);
    v21 = v20;
    if (v14 >= 0)
    {
      v22 = 4294967291;
    }

    else
    {
      v22 = v14;
    }

    *v20 = &unk_285BF4E60;
    v23 = std::generic_category();
    v21[1] = v22;
    v21[2] = v23;
    *(v21 + 24) = 0;
    *(v21 + 48) = 0;
    v21[7] = "Can't load asif dir table";
  }

  v15 = *v12;
  if (v6)
  {
    v16 = v12 + 1;
    do
    {
      v17 = *v16++;
      *a5++ = bswap64(v17);
      --v6;
    }

    while (v6);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v34, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v35);
  v18 = *MEMORY[0x277D85DE8];
  return bswap64(v15);
}

void sub_248ECDB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v15 + 8);
  _Unwind_Resume(a1);
}

unint64_t di_asif::details::dir::get_version(unint64_t this, Backend *a2)
{
  v4 = *(details::get_dummy_shared_ptr() + 1);
  v10 = &v18;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v12 = 8;
  v13 = a2;
  v14 = 8;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  LODWORD(this) = (*(*this + 128))(this, &v10);
  if (this != 8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = exception;
    if ((this & 0x80000000) == 0)
    {
      this = 4294967291;
    }

    else
    {
      this = this;
    }

    *exception = &unk_285BF4E60;
    v9 = std::generic_category();
    v8[1] = this;
    v8[2] = v9;
    *(v8 + 24) = 0;
    *(v8 + 48) = 0;
    v8[7] = "Can't load asif dir version";
  }

  v5 = bswap64(v18);
  v18 = v5;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v5;
}

void sub_248ECDCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

di_asif::details::ContextMetadata *di_asif::details::ContextMetadata::ContextMetadata(di_asif::details::ContextMetadata *this, DiskImageASIF *a2, const di_asif::details::ContextASIF *a3)
{
  *this = &unk_285BE5728;
  *(this + 1) = a2;
  (*(**(a2 + 2) + 80))(*(a2 + 2));
  *this = &unk_285BEC520;
  LODWORD(v13) = *(a2 + 34);
  v6 = smart_enums::validators::is_valid<Wrapper<di_asif::metadata_read_only_flags_t,std::integral_constant<BOOL,false>,be_type>,unsigned int>("metadata_read_only_flags", &v13, smart_enums::validators::flags<unsigned int>);
  v7 = v6;
  if (!v6)
  {
    std::allocate_shared[abi:ne200100]<ReadOnlyBackend,std::allocator<ReadOnlyBackend>,std::shared_ptr<Backend>,0>();
  }

  v8 = *(a3 + 2);
  v9 = *(a3 + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = 1;
  }

  v11 = *(this + 3);
  *(this + 2) = v8;
  *(this + 3) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((v7 & 1) == 0 && v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return this;
}

void sub_248ECDE20(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_248ECDE6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x248ECDE64);
}

void *di_asif::details::operator<<(void *result, int *a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 == 2)
    {
      v3 = "unmapped";
      v4 = 8;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }

    if (v2 == 3)
    {
      v3 = "has_bitmap";
      v4 = 10;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = "uninit";
      v4 = 6;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }

    if (v2 == 1)
    {
      v3 = "fully";
      v4 = 5;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }
  }

  return result;
}

uint64_t di_asif::details::dir::trim_last_unused_extents(di_asif::details::dir *this, di_asif::details::ContextASIF *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this + 16))(this);
  v6[0] = &unk_285BEC9A8;
  v6[1] = a2;
  v6[3] = v6;
  space_allocators::FixedSize::trim_largest(v3, v6);
  result = std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248ECE058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void space_allocators::FixedSize::trim_largest(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    v4 = 0;
    v5 = (a1 + 80);
    do
    {
      v6 = *v5;
      v7 = *v5;
      v8 = v5;
      if (*v5)
      {
        do
        {
          v9 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (v10);
      }

      if ((v9[4] + *a1) != *(a1 + 96))
      {
        break;
      }

      v11 = v5;
      if (v6)
      {
        do
        {
          v12 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v12 = v11[2];
          v10 = *v12 == v11;
          v11 = v12;
        }

        while (v10);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer((a1 + 72), v12);
      operator delete(v12);
      v13 = *(a1 + 88);
      *(a1 + 96) -= *a1;
      v4 = 1;
    }

    while (v13);
    if ((v4 & 1) != 0 && *(a2 + 24))
    {
      v14 = std::function<int ()(unsigned long long)>::operator()(a2, *(a1 + 96));
      if (v14)
      {
        v15 = v14;
        *&v16 = "space_allocators::FixedSize::trim_largest(const size_changed_fn_t &)";
        *(&v16 + 1) = 41;
        v17 = 16;
        di_log::logger<di_log::log_printer<158ul>>::logger(v18, &v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "trim largest: size change callback failed with ", 47);
        MEMORY[0x24C1ED390](&v19, v15);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(v18);
        MEMORY[0x24C1ED6A0](&v20);
      }
    }
  }
}

void sub_248ECE1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  di_log::logger<di_log::log_printer<158ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void di_asif::header::header(di_asif::header *this, Backend *a2)
{
  *(this + 92) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if ((*(*a2 + 40))(a2) > 0x1FF)
  {
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = (*(*a2 + 40))(a2);
  *exception = &unk_285BF0D58;
  exception[1] = "asif_header";
  exception[2] = 512;
  exception[3] = v4;
}

uint64_t di_asif::header::init(di_asif::header *this, const char *a2)
{
  v4 = *a2;
  LODWORD(v17[0]) = 2003069043;
  smart_enums::validators::value<unsigned int>("header_signature", v4, v17, 1);
  *this = 2003069043;
  *(this + 1) = bswap32(*(a2 + 1));
  *(this + 2) = bswap32(*(a2 + 2));
  v5 = bswap32(*(a2 + 3));
  LODWORD(v17[0]) = 1;
  smart_enums::validators::flags<unsigned int>("header_flags", v5, v17, 1);
  *(this + 3) = v5;
  *(this + 2) = bswap64(*(a2 + 2));
  *(this + 3) = bswap64(*(a2 + 3));
  *(this + 2) = *(a2 + 2);
  *(this + 6) = bswap64(*(a2 + 6));
  *(this + 7) = bswap64(*(a2 + 7));
  *(this + 16) = bswap32(*(a2 + 16));
  *(this + 34) = bswap32(*(a2 + 34)) >> 16;
  di_asif::header::total_segments_t::total_segments_t(v17, *(a2 + 35));
  *(this + 35) = v17[0];
  *(this + 9) = bswap64(*(a2 + 9));
  *(this + 5) = *(a2 + 5);
  *(this + 24) = bswap32(*(a2 + 24));
  v6 = bswap32(*(a2 + 25));
  result = smart_enums::validators::flags<unsigned int>("metadata_flags_t", v6, 0, 0);
  *(this + 25) = v6;
  *(this + 26) = bswap32(*(a2 + 26));
  v8 = *(this + 1);
  if (v8 >= 2)
  {
    if (v8 <= 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v13 = "Legacy shadow file format is not supported by DiskImages2 framework";
      v14 = 161;
      goto LABEL_24;
    }

LABEL_15:
    v15 = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unsupported ASIF version ", 25);
    MEMORY[0x24C1ED3A0](v17, *(this + 1));
    DiskImagesRuntimeException::DiskImagesRuntimeException(v15, v17, 0xA1u);
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  if ((*(this + 2) - 1048577) <= 0xFFF0004E)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Invalid ASIF header size";
LABEL_20:
    v14 = 152;
    goto LABEL_24;
  }

  v9 = *(this + 34);
  if (!*(this + 34))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Shadow block size is invalid (0)";
    goto LABEL_20;
  }

  v10 = *(this + 16);
  if (v10 < v9 || v10 % v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max_write size in header exceed the limit";
LABEL_23:
    v14 = 22;
LABEL_24:
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v13, v14);
  }

  if (v10 >= 0x4000001)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max chunk size in header exceeds the limit";
    goto LABEL_23;
  }

  if ((v9 & 0x1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF block size isn't multiple of 512";
    goto LABEL_20;
  }

  v11 = *(this + 7);
  if (v11 >= 0xFFFFFFFFFFFFFFFFLL / v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Max sector count is too large";
    goto LABEL_23;
  }

  if (v11 < *(this + 6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Sector count is too large";
    goto LABEL_23;
  }

  return result;
}

void sub_248ECE9E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_248ECE9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

__n128 di_asif::header::header(di_asif::header *this, const char *a2)
{
  *(this + 92) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = v2;
  result = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  *(this + 92) = *(a2 + 92);
  *(this + 4) = v5;
  *(this + 5) = v6;
  *(this + 3) = result;
  return result;
}

char *di_asif::header::write(di_asif::header *this, char *a2)
{
  *a2 = *this;
  *(a2 + 1) = bswap32(*(this + 1));
  *(a2 + 2) = bswap32(*(this + 2));
  *(a2 + 3) = bswap32(*(this + 3));
  *(a2 + 2) = bswap64(*(this + 2));
  *(a2 + 3) = bswap64(*(this + 3));
  *(a2 + 2) = *(this + 2);
  *(a2 + 6) = bswap64(*(this + 6));
  *(a2 + 7) = bswap64(*(this + 7));
  *(a2 + 16) = bswap32(*(this + 16));
  *(a2 + 34) = bswap32(*(this + 34)) >> 16;
  *(a2 + 35) = *(this + 35);
  *(a2 + 9) = bswap64(*(this + 9));
  *(a2 + 5) = *(this + 5);
  *(a2 + 24) = bswap32(*(this + 24));
  *(a2 + 25) = bswap32(*(this + 25));
  *(a2 + 26) = bswap32(*(this + 26));
  return a2 + 108;
}

uint64_t di_asif::header::header(uint64_t a1, _DWORD *a2, _OWORD *a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned int a7)
{
  *a1 = 2003069043;
  LODWORD(v28) = 2003069043;
  smart_enums::validators::value<unsigned int>("header_signature", 2003069043, &v28, 1);
  *(a1 + 4) = 1;
  *(a1 + 8) = (a7 + 511) / a7 * a7;
  *(a1 + 12) = *a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  v14 = a7;
  *(a1 + 64) = a6;
  *(a1 + 68) = a7;
  di_asif::header::total_segments_t::total_segments_t((a1 + 70), 0);
  *(a1 + 100) = 0;
  *(a1 + 86) = 0u;
  *(a1 + 70) = 0u;
  v15 = !is_mul_ok(a5, a7);
  v16 = a5 * a7;
  if (!is_mul_ok(a5, a7))
  {
    v16 = -1;
  }

  v28 = v16;
  v29 = v15;
  v17 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  v18 = !is_mul_ok(a4, v14);
  v19 = a4 * v14;
  if (!is_mul_ok(a4, v14))
  {
    v19 = -1;
  }

  v28 = v19;
  v29 = v18;
  v20 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  v28 = 2 * a6;
  v29 = 0;
  v21 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  v22 = v20 + v21;
  v23 = __CFADD__(v20, v21);
  if (__CFADD__(v20, v21))
  {
    v24 = -1;
  }

  else
  {
    v24 = v20 + v21;
  }

  if (__CFADD__(v20, v21))
  {
    v22 = v24;
  }

  v28 = v22;
  v29 = v23;
  v25 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  if (v25 <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = v25;
  }

  *(a1 + 56) = v26 / v14;
  *(a1 + 32) = *a3;
  return a1;
}

uint64_t safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Overflow detected", 0x54u);
  }

  return *a1;
}

void di_asif::header::write_header(di_asif::header *this, Backend *a2)
{
  if (*(this + 2) >= *(this + 34))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = *(this + 34);
  }

  operator new[]();
}

void *di_log::logger<di_log::log_printer<3061ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3061ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0D90;
  a1[45] = &unk_285BF0E90;
  a1[46] = &unk_285BF0EB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0D90;
  a1[45] = &unk_285BF0E18;
  a1[46] = &unk_285BF0E40;
  return a1;
}

void sub_248ECF240(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3061ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

di_asif::meta_header *di_asif::meta_header::meta_header(di_asif::meta_header *this, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  *this = 1635018093;
  LODWORD(v8[0]) = 1635018093;
  smart_enums::validators::value<unsigned int>("header_signature", 1635018093, v8, 1);
  *(this + 1) = 1;
  LODWORD(v8[0]) = 1;
  smart_enums::validators::value<unsigned int>("version_t", 1, v8, 1);
  *(this + 2) = 512;
  v8[0] = 0x100000000200;
  smart_enums::validators::value<unsigned int>("header_size_t", 512, v8, 2);
  *(this + 12) = a2;
  *(this + 20) = a3;
  v6 = *MEMORY[0x277D85DE8];
  return this;
}