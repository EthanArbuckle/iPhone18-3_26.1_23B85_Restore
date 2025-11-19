uint64_t sub_24266404C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a2[1].n128_u8[8] == 1)
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

__n128 ctb::bridging::makeOptional@<Q0>(ctb::bridging *this@<X0>, uint64_t a2@<X8>)
{
  result = *this;
  *a2 = *this;
  *(a2 + 16) = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(a2 + 24) = 1;
  return result;
}

{
  *a2 = *this;
  *(a2 + 16) = *(this + 2);
  v3 = *(this + 24);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(a2 + 24) = v3;
  *(a2 + 40) = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  result = *(this + 3);
  *(a2 + 48) = result;
  *(a2 + 64) = *(this + 8);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(a2 + 72) = 1;
  return result;
}

{
  *a2 = *this;
  *(a2 + 16) = *(this + 2);
  *this = 0;
  *(this + 1) = 0;
  v3 = *(this + 24);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(a2 + 24) = v3;
  *(a2 + 40) = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(a2 + 64) = *(this + 8);
  *(a2 + 48) = *(this + 3);
  *(this + 6) = 0;
  *(this + 7) = 0;
  v4 = *(this + 72);
  *(a2 + 88) = *(this + 11);
  *(a2 + 72) = v4;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v5 = *(this + 6);
  *(a2 + 112) = *(this + 14);
  *(a2 + 96) = v5;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v6 = *(this + 120);
  *(a2 + 136) = *(this + 17);
  *(a2 + 120) = v6;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v7 = *(this + 9);
  *(a2 + 160) = *(this + 20);
  *(a2 + 144) = v7;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v8 = *(this + 168);
  *(a2 + 184) = *(this + 23);
  *(a2 + 168) = v8;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v9 = *(this + 12);
  *(a2 + 208) = *(this + 26);
  *(a2 + 192) = v9;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(a2 + 216) = *(this + 216);
  *(a2 + 232) = *(this + 232);
  *(a2 + 248) = *(this + 31);
  *(this + 29) = 0;
  *(this + 30) = 0;
  result = *(this + 16);
  *(a2 + 256) = result;
  *(a2 + 272) = *(this + 34);
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(a2 + 280) = 1;
  return result;
}

{
  *a2 = *this;
  *(a2 + 16) = *(this + 2);
  *this = 0;
  *(this + 1) = 0;
  v3 = *(this + 24);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(a2 + 24) = v3;
  *(a2 + 40) = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(a2 + 64) = *(this + 8);
  *(a2 + 48) = *(this + 3);
  *(this + 6) = 0;
  *(this + 7) = 0;
  result = *(this + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(this + 11);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(a2 + 96) = 1;
  return result;
}

{
  *a2 = *this;
  result = *(this + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(this + 3);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(a2 + 32) = 1;
  return result;
}

void ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::vector<ctb::SIPConferenceInfo::User>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ctb::SIPConferenceInfo::User>::__emplace_back_slow_path<ctb::SIPConferenceInfo::User const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::SIPConferenceInfo::User>::__construct_one_at_end[abi:ne200100]<ctb::SIPConferenceInfo::User const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<ctb::SIPConferenceInfo::Endpoint>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ctb::SIPConferenceInfo::Endpoint>::__emplace_back_slow_path<ctb::SIPConferenceInfo::Endpoint const&>(a1, a2);
  }

  else
  {
    std::vector<ctb::SIPConferenceInfo::Endpoint>::__construct_one_at_end[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint const&>(a1, a2);
    result = v3 + 88;
  }

  *(a1 + 8) = result;
  return result;
}

void ctb::SIPConferenceInfo::Endpoint::~Endpoint(void **this)
{
  if (*(this + 72) == 1 && *(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void **std::vector<ctb::SIPConferenceInfo::Endpoint>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

_BYTE *std::optional<ctb::SIPConferenceInfo::ReferredInfo>::optional[abi:ne200100](_BYTE *result)
{
  *result = 0;
  result[32] = 0;
  return result;
}

uint64_t sub_242664250(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2426642B8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t std::optional<std::string>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2426643A4(uint64_t a1)
{
  v2 = sub_2426A9FF0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (MEMORY[0x277CF2270] && v4 == *MEMORY[0x277CF2270])
  {
    return 1;
  }

  if (MEMORY[0x277CF2248] && v4 == *MEMORY[0x277CF2248])
  {
    return 2;
  }

  if (MEMORY[0x277CF2288] && v4 == *MEMORY[0x277CF2288])
  {
    return 3;
  }

  if (MEMORY[0x277CF2278] && v4 == *MEMORY[0x277CF2278])
  {
    return 4;
  }

  if (MEMORY[0x277CF2268] && v4 == *MEMORY[0x277CF2268])
  {
    return 5;
  }

  if (MEMORY[0x277CF2280] && v4 == *MEMORY[0x277CF2280])
  {
    return 6;
  }

  if (MEMORY[0x277CF2260] && v4 == *MEMORY[0x277CF2260])
  {
    return 7;
  }

  if (MEMORY[0x277CF2258] && v4 == *MEMORY[0x277CF2258])
  {
    return 8;
  }

  if (MEMORY[0x277CF2250] && v4 == *MEMORY[0x277CF2250])
  {
    return 9;
  }

  (*(v3 + 8))(a1, v2);
  return 0;
}

uint64_t std::vector<ctb::SIPConferenceInfo::User>::__construct_one_at_end[abi:ne200100]<ctb::SIPConferenceInfo::User const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<ctb::SIPConferenceInfo::Endpoint>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint*,ctb::SIPConferenceInfo::Endpoint*>(v3, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<ctb::SIPConferenceInfo::User>::__emplace_back_slow_path<ctb::SIPConferenceInfo::User const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::User>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<ctb::SIPConferenceInfo::Endpoint>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint*,ctb::SIPConferenceInfo::Endpoint*>(24 * v2, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  *&v16 = v16 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ctb::SIPConferenceInfo::User>::~__split_buffer(&v14);
  return v13;
}

void sub_242664718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ctb::SIPConferenceInfo::User>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<ctb::SIPConferenceInfo::Endpoint>>::destroy[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72) == 1 && *(a2 + 64) == 1 && *(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::User>,ctb::SIPConferenceInfo::User*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void **std::__split_buffer<ctb::SIPConferenceInfo::User>::~__split_buffer(void **a1)
{
  std::__split_buffer<ctb::SIPConferenceInfo::User>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ctb::SIPConferenceInfo::User>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<ctb::SIPConferenceInfo::Endpoint>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

std::string *std::vector<ctb::SIPConferenceInfo::Endpoint>::__construct_one_at_end[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v4, a2);
  *(v4 + 32) = *(a2 + 32);
  result = std::__optional_copy_base<ctb::SIPConferenceInfo::ReferredInfo,false>::__optional_copy_base[abi:ne200100]((v4 + 40), a2 + 40);
  *(v4 + 80) = *(a2 + 80);
  *(a1 + 8) = v4 + 88;
  return result;
}

void sub_242664944(_Unwind_Exception *exception_object)
{
  if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ctb::SIPConferenceInfo::Endpoint>::__emplace_back_slow_path<ctb::SIPConferenceInfo::Endpoint const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>>(a1, v6);
  }

  v7 = 88 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v7, a2);
  *(v7 + 32) = *(a2 + 32);
  std::__optional_copy_base<ctb::SIPConferenceInfo::ReferredInfo,false>::__optional_copy_base[abi:ne200100]((v7 + 40), a2 + 40);
  *(v7 + 80) = *(a2 + 80);
  *&v16 = v16 + 88;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>,ctb::SIPConferenceInfo::Endpoint*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ctb::SIPConferenceInfo::Endpoint>::~__split_buffer(&v14);
  return v13;
}

void sub_242664AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 24) == 1 && *(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<ctb::SIPConferenceInfo::Endpoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::SIPConferenceInfo::Endpoint>,ctb::SIPConferenceInfo::Endpoint*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::construct_at[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint,ctb::SIPConferenceInfo::Endpoint,ctb::SIPConferenceInfo::Endpoint*>(a4, v7);
      v7 = (v7 + 88);
      a4 = v12 + 88;
      v12 += 88;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ctb::SIPConferenceInfo::Endpoint>>::destroy[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint,void,0>(a1, v5);
      v5 += 88;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ctb::SIPConferenceInfo::Endpoint>,ctb::SIPConferenceInfo::Endpoint*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::construct_at[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint,ctb::SIPConferenceInfo::Endpoint,ctb::SIPConferenceInfo::Endpoint*>(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(result + 24) = 1;
  }

  v3 = *(a2 + 4);
  *(result + 40) = 0;
  *(result + 32) = v3;
  *(result + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    *(result + 64) = 0;
    if (*(a2 + 64) == 1)
    {
      v4 = *(a2 + 40);
      *(result + 56) = *(a2 + 7);
      *(result + 40) = v4;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      *(a2 + 5) = 0;
      *(result + 64) = 1;
    }

    *(result + 72) = 1;
  }

  *(result + 80) = *(a2 + 10);
  return result;
}

uint64_t std::__split_buffer<ctb::SIPConferenceInfo::Endpoint>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ctb::SIPConferenceInfo::Endpoint>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ctb::SIPConferenceInfo::Endpoint>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    std::allocator_traits<std::allocator<ctb::SIPConferenceInfo::Endpoint>>::destroy[abi:ne200100]<ctb::SIPConferenceInfo::Endpoint,void,0>(v5, v4 - 88);
  }
}

uint64_t FileCryptoMaterial.Algorithm.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2426ABC60();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_242664D58()
{
  sub_2426ABDB0();
  sub_2426ABA50();
  return sub_2426ABDD0();
}

uint64_t sub_242664DBC()
{
  sub_2426ABDB0();
  sub_2426ABA50();
  return sub_2426ABDD0();
}

uint64_t sub_242664E08@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2426ABC60();

  *a1 = v2 != 0;
  return result;
}

uint64_t FileCryptoMaterial.key.getter()
{
  v1 = *v0;
  sub_242664F58(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_242664F58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t FileCryptoMaterial.nonce.getter()
{
  v1 = *(v0 + 16);
  sub_242664FE0(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_242664FE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_242664F58(a1, a2);
  }

  return a1;
}

uint64_t FileCryptoMaterial.aad.getter()
{
  v1 = *(v0 + 32);
  sub_242664FE0(v1, *(v0 + 40));
  return v1;
}

uint64_t FileCryptoMaterial.authTag.getter()
{
  v1 = *(v0 + 48);
  sub_242664F58(v1, *(v0 + 56));
  return v1;
}

uint64_t FileCryptoMaterial.init(key:nonce:aad:authTag:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = 0;
  return result;
}

uint64_t FileCryptoMaterial.init(key:nonce:aad:authTag:originalFileSizeInBytes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_2426650B0()
{
  v1 = *v0;
  sub_2426ABDB0();
  MEMORY[0x245D15D60](v1);
  return sub_2426ABDD0();
}

uint64_t sub_242665124()
{
  v1 = *v0;
  sub_2426ABDB0();
  MEMORY[0x245D15D60](v1);
  return sub_2426ABDD0();
}

uint64_t sub_242665168()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 6578529;
  v4 = 0x67615468747561;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E6F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2426651F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242666948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242665234(uint64_t a1)
{
  v2 = sub_24266624C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242665270(uint64_t a1)
{
  v2 = sub_24266624C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileCryptoMaterial.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5B40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = v9;
  v10 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v10;
  v11 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = v11;
  v28 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242664F58(v7, v8);
  sub_24266624C();
  v12 = v3;
  sub_2426ABDF0();
  v26 = v7;
  v27 = v8;
  v29 = 0;
  sub_2426662A0();
  v13 = v25;
  sub_2426ABD10();
  if (v13)
  {
    sub_2426662F4(v26, v27);
  }

  else
  {
    v15 = v21;
    v14 = v22;
    v16 = v20;
    sub_2426662F4(v26, v27);
    v26 = v24;
    v27 = v23;
    v29 = 1;
    sub_242664FE0(v24, v23);
    sub_2426ABCE0();
    sub_242666348(v26, v27);
    v26 = v14;
    v27 = v15;
    v29 = 2;
    sub_242664FE0(v14, v15);
    sub_2426ABCE0();
    sub_242666348(v26, v27);
    v26 = v16;
    v27 = v19;
    v29 = 3;
    sub_242664F58(v16, v19);
    sub_2426ABD10();
    sub_2426662F4(v26, v27);
    LOBYTE(v26) = 4;
    sub_2426ABD20();
  }

  return (*(v4 + 8))(v6, v12);
}

uint64_t FileCryptoMaterial.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5B58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24266624C();
  sub_2426ABDE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  sub_2426663A8();
  sub_2426ABCB0();
  v22 = v28[0];
  LOBYTE(v23) = 1;
  sub_2426ABC80();
  v20 = v28[0];
  LOBYTE(v23) = 2;
  sub_2426ABC80();
  v18 = *(&v28[0] + 1);
  v19 = *&v28[0];
  LOBYTE(v23) = 3;
  sub_2426ABCB0();
  v9 = *(&v28[0] + 1);
  v21 = *&v28[0];
  v34 = 4;
  v10 = sub_2426ABCC0();
  (*(v6 + 8))(v8, v5);
  v11 = v22;
  v23 = v22;
  v12 = v20;
  v24 = v20;
  v13 = v18;
  *&v25 = v19;
  *(&v25 + 1) = v18;
  *&v26 = v21;
  *(&v26 + 1) = v9;
  v27 = v10;
  *(a2 + 64) = v10;
  v14 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v14;
  v15 = v24;
  *a2 = v23;
  *(a2 + 16) = v15;
  sub_2426663FC(&v23, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[0] = __PAIR128__(*(&v22 + 1), v11);
  v28[1] = v12;
  v29 = v19;
  v30 = v13;
  v31 = v21;
  v32 = v9;
  v33 = v10;
  return sub_242666434(v28);
}

uint64_t sub_2426659E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2426A9800();
    if (v10)
    {
      v11 = sub_2426A9820();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2426A9810();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2426A9800();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2426A9820();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2426A9810();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_242665C10(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_242665DA0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2426662F4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2426659E0(v13, a3, a4, &v12);
  v10 = v4;
  sub_2426662F4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_242665DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2426A9800();
  v11 = result;
  if (result)
  {
    result = sub_2426A9820();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2426A9810();
  sub_2426659E0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_242665E58(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_242664F58(a3, a4);
          return sub_242665C10(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s18CTBlastDoorSupport18FileCryptoMaterialV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v20 = *(a1 + 56);
  v21 = *(a1 + 48);
  v6 = *(a1 + 64);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v18 = *(a2 + 48);
  v19 = *(a2 + 64);
  if ((sub_242665E58(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      v17 = v6;
      sub_242664FE0(v3, v2);
      sub_242664FE0(v8, v7);
      sub_242666348(v3, v2);
      goto LABEL_8;
    }

LABEL_6:
    sub_242664FE0(v3, v2);
    sub_242664FE0(v8, v7);
    sub_242666348(v3, v2);
    v12 = v8;
    v13 = v7;
LABEL_13:
    sub_242666348(v12, v13);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v17 = v6;
  sub_242664FE0(v3, v2);
  sub_242664FE0(v8, v7);
  v14 = sub_242665E58(v3, v2, v8, v7);
  sub_242666348(v8, v7);
  sub_242666348(v3, v2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v4 >> 60 != 15)
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_12;
    }

    sub_242664FE0(v5, v4);
    sub_242664FE0(v10, v9);
    v16 = sub_242665E58(v5, v4, v10, v9);
    sub_242666348(v10, v9);
    sub_242666348(v5, v4);
    if (v16)
    {
      return sub_242665E58(v21, v20, v18, v11) & (v17 == v19);
    }

    return 0;
  }

  if (v9 >> 60 != 15)
  {
LABEL_12:
    sub_242664FE0(v5, v4);
    sub_242664FE0(v10, v9);
    sub_242666348(v5, v4);
    v12 = v10;
    v13 = v9;
    goto LABEL_13;
  }

  sub_242664FE0(v5, v4);
  sub_242664FE0(v10, v9);
  sub_242666348(v5, v4);
  return sub_242665E58(v21, v20, v18, v11) & (v17 == v19);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24266624C()
{
  result = qword_27ECB5B48;
  if (!qword_27ECB5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B48);
  }

  return result;
}

unint64_t sub_2426662A0()
{
  result = qword_27ECB5B50;
  if (!qword_27ECB5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B50);
  }

  return result;
}

uint64_t sub_2426662F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_242666348(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2426662F4(a1, a2);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2426663A8()
{
  result = qword_27ECB5B60;
  if (!qword_27ECB5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B60);
  }

  return result;
}

unint64_t sub_242666468()
{
  result = qword_27ECB5B68;
  if (!qword_27ECB5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_242666524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 68))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242666578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 68) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileCryptoMaterial.Algorithm(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FileCryptoMaterial.Algorithm(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileCryptoMaterial.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileCryptoMaterial.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242666844()
{
  result = qword_27ECB5B70;
  if (!qword_27ECB5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B70);
  }

  return result;
}

unint64_t sub_24266689C()
{
  result = qword_27ECB5B78;
  if (!qword_27ECB5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B78);
  }

  return result;
}

unint64_t sub_2426668F4()
{
  result = qword_27ECB5B80;
  if (!qword_27ECB5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B80);
  }

  return result;
}

uint64_t sub_242666948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2426ABD50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000 || (sub_2426ABD50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6578529 && a2 == 0xE300000000000000 || (sub_2426ABD50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67615468747561 && a2 == 0xE700000000000000 || (sub_2426ABD50() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002426AFA00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2426ABD50();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_242666AFC()
{
  result = qword_27ECB5B88;
  if (!qword_27ECB5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5B88);
  }

  return result;
}

uint64_t sub_242666B50()
{
  v0 = sub_2426A9A10();
  __swift_allocate_value_buffer(v0, qword_27ECB5B90);
  __swift_project_value_buffer(v0, qword_27ECB5B90);
  return sub_2426A9A00();
}

void sub_242666BD4()
{
  if (qword_27ECB5458 != -1)
  {
    swift_once();
  }

  v0 = sub_2426A9A10();
  __swift_project_value_buffer(v0, qword_27ECB5B90);

  oslog = sub_2426A99F0();
  v1 = sub_2426ABB60();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C18);
    v4 = sub_2426ABA20();
    v6 = sub_242670C0C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_242644000, oslog, v1, "Received response from diagnostic Reporter snapshot for %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x245D163E0](v3, -1, -1);
    MEMORY[0x245D163E0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_242666D78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_2426AB9C0();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

unint64_t type metadata accessor for AutoBugCaptureHelper()
{
  result = qword_27ECB5C08;
  if (!qword_27ECB5C08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECB5C08);
  }

  return result;
}

void sub_242666FE4()
{
  if (qword_27ECB5458 != -1)
  {
    swift_once();
  }

  v0 = sub_2426A9A10();
  __swift_project_value_buffer(v0, qword_27ECB5B90);
  v1 = sub_2426A99F0();
  v2 = sub_2426ABB60();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_242644000, v1, v2, "Reporting error with ABC", v3, 2u);
    MEMORY[0x245D163E0](v3, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v4 = sub_2426ABA00();
  v5 = sub_2426ABA00();
  v6 = sub_2426ABA00();
  v7 = sub_2426ABA00();
  v8 = sub_2426ABA00();
  v9 = [v20 signatureWithDomain:v4 type:v5 subType:v6 subtypeContext:v7 detectedProcess:v8 triggerThresholdValues:0];

  if (v9)
  {
    aBlock[0] = 0;
    v10 = v9;
    sub_2426AB9B0();
  }

  v11 = v9;
  v12 = sub_2426A99F0();
  v13 = sub_2426ABB70();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    aBlock[6] = v9;
    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C10);
    v17 = sub_2426ABA20();
    v19 = sub_242670C0C(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_242644000, v12, v13, "Couldn't parse signature: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245D163E0](v15, -1, -1);
    MEMORY[0x245D163E0](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2426676A8()
{
  v0 = sub_2426A9A10();
  __swift_allocate_value_buffer(v0, qword_27ECB5C20);
  __swift_project_value_buffer(v0, qword_27ECB5C20);
  return sub_2426A9A00();
}

uint64_t sub_24266772C(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000019, 0x80000002426AFC30, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AA7C0();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CD8, MEMORY[0x282214C50]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_242667D50(void *a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  v46 = __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000011, 0x80000002426AFC10, &v48);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426A9EE0();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CD0, MEMORY[0x2822148F0]);
  sub_2426A99C0();
  if (v3)
  {
    v45 = a2;

    v48 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v43 = a3;

      v40 = v38;
      MEMORY[0x28223BE20](v15);
      v16 = (*(v12 + 32))(v38 - v14, v38 - v14, v11);
      MEMORY[0x28223BE20](v16);
      v17 = v38 - v14;
      v18 = *(v12 + 16);
      v44 = v38 - v14;
      v18(v38 - v14, v38 - v14, v11);
      v19 = sub_2426A99F0();
      v20 = sub_2426ABB60();
      v21 = os_log_type_enabled(v19, v20);
      v41 = v12;
      v42 = v38;
      v39 = v18;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v38[1] = v38;
        v23 = v22;
        v24 = swift_slowAlloc();
        v38[2] = v12 + 16;
        v25 = v24;
        *v23 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v18(v26, v17, v11);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v46 = *(v12 + 8);
        v46(v17, v11);
        *(v23 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_242644000, v19, v20, "Detected a BlastDoor explosion: %@", v23, 0xCu);
        sub_2426711B8(v25);
        MEMORY[0x245D163E0](v25, -1, -1);
        MEMORY[0x245D163E0](v23, -1, -1);
      }

      else
      {

        v46 = *(v12 + 8);
        v46(v17, v11);
      }

      v29 = [v47 autoBugCaptureHelper];
      v30 = v44;
      v31 = v29;
      v32 = sub_2426ABA00();
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      sub_2426AB980();
      v35 = sub_2426ABA00();

      [v31 reportWithDomain:v32 type:v33 subtype:v34 subtypeContext:v35];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v39(v36, v30, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v46(v30, v11);
      a3 = v43;
    }

    v28 = v45;
  }

  else
  {

    v28 = a2;
  }

  return sub_2426662F4(v28, a3);
}

uint64_t sub_242668374(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0x7373654D4D495043, 0xEB00000000656761, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426A9D00();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CC8, MEMORY[0x282214728]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_242668998(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0x4D534C4D4D495043, 0xEE00656761737365, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426A9DF0();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CC0, MEMORY[0x2822147F8]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_242668FC0(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000013, 0x80000002426AFBF0, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AA190();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CB8, MEMORY[0x282214A88]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_2426695E4(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0x54656C6946534C4DLL, 0xEF726566736E6172, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426A9E30();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CB0, MEMORY[0x282214850]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_242669C0C(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000013, 0x80000002426AFBD0, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AA170();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CA8, MEMORY[0x282214A70]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_24266A230(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0x6C65766E45534352, 0xEB0000000065706FLL, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426A9D20();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5CA0, MEMORY[0x282214758]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_24266A854(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000019, 0x80000002426AFBB0, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AA770();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C98, MEMORY[0x282214C38]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_24266AE78(void *a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  v46 = __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000011, 0x80000002426AFB90, &v48);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AA030();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C90, MEMORY[0x282214990]);
  sub_2426A99C0();
  if (v3)
  {
    v45 = a2;

    v48 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v43 = a3;

      v40 = v38;
      MEMORY[0x28223BE20](v15);
      v16 = (*(v12 + 32))(v38 - v14, v38 - v14, v11);
      MEMORY[0x28223BE20](v16);
      v17 = v38 - v14;
      v18 = *(v12 + 16);
      v44 = v38 - v14;
      v18(v38 - v14, v38 - v14, v11);
      v19 = sub_2426A99F0();
      v20 = sub_2426ABB60();
      v21 = os_log_type_enabled(v19, v20);
      v41 = v12;
      v42 = v38;
      v39 = v18;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v38[1] = v38;
        v23 = v22;
        v24 = swift_slowAlloc();
        v38[2] = v12 + 16;
        v25 = v24;
        *v23 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v18(v26, v17, v11);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v46 = *(v12 + 8);
        v46(v17, v11);
        *(v23 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_242644000, v19, v20, "Detected a BlastDoor explosion: %@", v23, 0xCu);
        sub_2426711B8(v25);
        MEMORY[0x245D163E0](v25, -1, -1);
        MEMORY[0x245D163E0](v23, -1, -1);
      }

      else
      {

        v46 = *(v12 + 8);
        v46(v17, v11);
      }

      v29 = [v47 autoBugCaptureHelper];
      v30 = v44;
      v31 = v29;
      v32 = sub_2426ABA00();
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      sub_2426AB980();
      v35 = sub_2426ABA00();

      [v31 reportWithDomain:v32 type:v33 subtype:v34 subtypeContext:v35];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v39(v36, v30, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v46(v30, v11);
      a3 = v43;
    }

    v28 = v45;
  }

  else
  {

    v28 = a2;
  }

  return sub_2426662F4(v28, a3);
}

uint64_t sub_24266B49C(void *a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  v46 = __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000010, 0x80000002426AFB70, &v48);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426A9EB0();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C88, MEMORY[0x2822148C0]);
  sub_2426A99C0();
  if (v3)
  {
    v45 = a2;

    v48 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v43 = a3;

      v40 = v38;
      MEMORY[0x28223BE20](v15);
      v16 = (*(v12 + 32))(v38 - v14, v38 - v14, v11);
      MEMORY[0x28223BE20](v16);
      v17 = v38 - v14;
      v18 = *(v12 + 16);
      v44 = v38 - v14;
      v18(v38 - v14, v38 - v14, v11);
      v19 = sub_2426A99F0();
      v20 = sub_2426ABB60();
      v21 = os_log_type_enabled(v19, v20);
      v41 = v12;
      v42 = v38;
      v39 = v18;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v38[1] = v38;
        v23 = v22;
        v24 = swift_slowAlloc();
        v38[2] = v12 + 16;
        v25 = v24;
        *v23 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v18(v26, v17, v11);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v46 = *(v12 + 8);
        v46(v17, v11);
        *(v23 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_242644000, v19, v20, "Detected a BlastDoor explosion: %@", v23, 0xCu);
        sub_2426711B8(v25);
        MEMORY[0x245D163E0](v25, -1, -1);
        MEMORY[0x245D163E0](v23, -1, -1);
      }

      else
      {

        v46 = *(v12 + 8);
        v46(v17, v11);
      }

      v29 = [v47 autoBugCaptureHelper];
      v30 = v44;
      v31 = v29;
      v32 = sub_2426ABA00();
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      sub_2426AB980();
      v35 = sub_2426ABA00();

      [v31 reportWithDomain:v32 type:v33 subtype:v34 subtypeContext:v35];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v39(v36, v30, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v46(v30, v11);
      a3 = v43;
    }

    v28 = v45;
  }

  else
  {

    v28 = a2;
  }

  return sub_2426662F4(v28, a3);
}

uint64_t sub_24266BAC0(void *a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  v46 = __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000012, 0x80000002426AFB50, &v48);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AA080();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C80, MEMORY[0x2822149D8]);
  sub_2426A99C0();
  if (v3)
  {
    v45 = a2;

    v48 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v43 = a3;

      v40 = v38;
      MEMORY[0x28223BE20](v15);
      v16 = (*(v12 + 32))(v38 - v14, v38 - v14, v11);
      MEMORY[0x28223BE20](v16);
      v17 = v38 - v14;
      v18 = *(v12 + 16);
      v44 = v38 - v14;
      v18(v38 - v14, v38 - v14, v11);
      v19 = sub_2426A99F0();
      v20 = sub_2426ABB60();
      v21 = os_log_type_enabled(v19, v20);
      v41 = v12;
      v42 = v38;
      v39 = v18;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v38[1] = v38;
        v23 = v22;
        v24 = swift_slowAlloc();
        v38[2] = v12 + 16;
        v25 = v24;
        *v23 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v18(v26, v17, v11);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v46 = *(v12 + 8);
        v46(v17, v11);
        *(v23 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_242644000, v19, v20, "Detected a BlastDoor explosion: %@", v23, 0xCu);
        sub_2426711B8(v25);
        MEMORY[0x245D163E0](v25, -1, -1);
        MEMORY[0x245D163E0](v23, -1, -1);
      }

      else
      {

        v46 = *(v12 + 8);
        v46(v17, v11);
      }

      v29 = [v47 autoBugCaptureHelper];
      v30 = v44;
      v31 = v29;
      v32 = sub_2426ABA00();
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      sub_2426AB980();
      v35 = sub_2426ABA00();

      [v31 reportWithDomain:v32 type:v33 subtype:v34 subtypeContext:v35];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v39(v36, v30, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v46(v30, v11);
      a3 = v43;
    }

    v28 = v45;
  }

  else
  {

    v28 = a2;
  }

  return sub_2426662F4(v28, a3);
}

uint64_t sub_24266C0E4(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD000000000000017, 0x80000002426AFB30, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AA550();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C78, MEMORY[0x282214B98]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

void sub_24266C708(void (*a1)(void))
{
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v3 = sub_2426A9A10();
  __swift_project_value_buffer(v3, qword_27ECB5C20);
  v4 = sub_2426A99F0();
  v5 = sub_2426ABB60();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_242670C0C(0x7373654D746F6F52, 0xEB00000000656761, &v41);
    _os_log_impl(&dword_242644000, v4, v5, "Attempting to decode %s in BlastDoor", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D163E0](v7, -1, -1);
    MEMORY[0x245D163E0](v6, -1, -1);
  }

  a1();
  if (v1)
  {
    v41 = v1;
    v8 = sub_2426AB990();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v37 = v32;

      MEMORY[0x28223BE20](v12);
      v13 = (*(v9 + 32))(v32 - v11, v32 - v11, v8);
      v38 = v32;
      MEMORY[0x28223BE20](v13);
      v14 = v32 - v11;
      v15 = *(v9 + 16);
      v39 = v32 - v11;
      v15(v32 - v11, v32 - v11, v8);
      v16 = sub_2426A99F0();
      v17 = sub_2426ABB60();
      v18 = os_log_type_enabled(v16, v17);
      v35 = v9 + 16;
      v36 = v9;
      v34 = v15;
      if (v18)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32[1] = v32;
        v21 = v20;
        *v19 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v15(v22, v14, v8);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v33 = *(v9 + 8);
        v33(v14, v8);
        *(v19 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_242644000, v16, v17, "Detected a BlastDoor explosion: %@", v19, 0xCu);
        sub_2426711B8(v21);
        MEMORY[0x245D163E0](v21, -1, -1);
        MEMORY[0x245D163E0](v19, -1, -1);
      }

      else
      {

        v33 = *(v9 + 8);
        v33(v14, v8);
      }

      v24 = [v40 autoBugCaptureHelper];
      v25 = v39;
      v26 = v24;
      v27 = sub_2426ABA00();
      v28 = sub_2426ABA00();
      v29 = sub_2426ABA00();
      sub_2426AB980();
      v30 = sub_2426ABA00();

      [v26 reportWithDomain:v27 type:v28 subtype:v29 subtypeContext:v30];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v34(v31, v25, v8);
      swift_willThrow();
      swift_unknownObjectRelease();
      v33(v25, v8);
    }
  }
}

uint64_t sub_24266CCA4(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(1868983881, 0xE400000000000000, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AB390();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C68, MEMORY[0x282214FC0]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_24266D2B8(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0xD00000000000001CLL, 0x80000002426AFB10, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AAA50();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C60, MEMORY[0x282214D00]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_24266D8DC(void *a1, uint64_t a2, unint64_t a3)
{
  v49 = a1;
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v6 = sub_2426A9A10();
  __swift_project_value_buffer(v6, qword_27ECB5C20);
  v7 = sub_2426A99F0();
  v8 = sub_2426ABB60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_242670C0C(0x656B6F7665524D49, 0xE800000000000000, &v50);
    _os_log_impl(&dword_242644000, v7, v8, "Attempting to decode %s in BlastDoor", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D163E0](v10, -1, -1);
    MEMORY[0x245D163E0](v9, -1, -1);
  }

  sub_2426AB970();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C38, MEMORY[0x282215138]);
  sub_2426A99C0();
  if (v3)
  {
    v48 = a2;

    v50 = v3;
    v11 = sub_2426AB990();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x245D16280](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C40);
    if (swift_dynamicCast())
    {
      v45 = &v40;
      v46 = a3;

      v43 = &v40;
      MEMORY[0x28223BE20](v15);
      v16 = v12;
      v17 = &v40 - v14;
      v18 = (*(v16 + 32))(&v40 - v14, &v40 - v14, v11);
      v47 = &v40;
      MEMORY[0x28223BE20](v18);
      v19 = &v40 - v14;
      v20 = *(v16 + 16);
      v20(v19, v17, v11);
      v21 = sub_2426A99F0();
      v22 = sub_2426ABB60();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v16;
      v41 = v20;
      v42 = v16 + 16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v17;
        v26 = v25;
        *v24 = 138412290;
        sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
        swift_allocError();
        v20(v27, v19, v11);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = *(v16 + 8);
        v29(v19, v11);
        *(v24 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_242644000, v21, v22, "Detected a BlastDoor explosion: %@", v24, 0xCu);
        sub_2426711B8(v26);
        v30 = v26;
        v17 = v40;
        MEMORY[0x245D163E0](v30, -1, -1);
        MEMORY[0x245D163E0](v24, -1, -1);
      }

      else
      {

        v29 = *(v16 + 8);
        v29(v19, v11);
      }

      v32 = [v49 autoBugCaptureHelper];
      v33 = sub_2426ABA00();
      v34 = sub_2426ABA00();
      v35 = sub_2426ABA00();
      sub_2426AB980();
      v36 = sub_2426ABA00();

      [v32 reportWithDomain:v33 type:v34 subtype:v35 subtypeContext:v36];

      sub_242671E10(&qword_27ECB5C48, MEMORY[0x282215150]);
      swift_allocError();
      v41(v37, v17, v11);
      swift_willThrow();
      swift_unknownObjectRelease();
      v29(v17, v11);
      a3 = v46;
    }

    v38 = v48;

    v31 = v38;
  }

  else
  {

    v31 = a2;
  }

  return sub_2426662F4(v31, a3);
}

uint64_t sub_24266DEF8()
{
  sub_2426AAD50();
  sub_2426A99E0();
  swift_allocObject();
  sub_2426A99D0();
  sub_242671E10(&qword_27ECB5C70, MEMORY[0x282214E08]);
  sub_2426A99B0();
}

id sub_24266DFBC(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426AA7C0();
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v9 = sub_24266772C(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v9);
    v10 = v16;
    (*(v16 + 16))(&v13[-v8 - 8], &v13[-v8 - 8], v6);
    sub_242692EBC(&v13[-v8 - 8], v15);
    ctb::ProvisioningConfiguration::ProvisioningConfiguration(v13, v15);
    ctb::bridging::makeOptional(v13, v14);
    ctb::ProvisioningConfiguration::~ProvisioningConfiguration(v13);
    v7 = [objc_allocWithZone(CTBProvisioningConfigurationWrapper) initWithWrapped_];
    std::optional<ctb::ProvisioningConfiguration>::~optional(v14);
    ctb::ProvisioningConfiguration::~ProvisioningConfiguration(v15);
    (*(v10 + 8))(&v13[-v8 - 8], v6);
  }

  return v7;
}

uint64_t sub_24266E1AC(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = sub_2426A9940();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2426A9EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v25 - v12;
  sub_242664F58(a1, a2);
  v14 = v27;
  v15 = sub_242667D50(v3, a1, a2);
  if (v14)
  {
    return a2;
  }

  v27 = 0;
  MEMORY[0x28223BE20](v15);
  v16 = &v25 - v12;
  (*(v10 + 16))(&v25 - v12, &v25 - v12, v9);
  v17 = sub_2426A9EC0();
  sub_24268D30C(v17, v18, &v30);
  sub_2426A9ED0();
  sub_2426A9930();
  v20 = v19;
  v21 = v19;
  (*(v25 + 8))(v8, v26);
  v22 = *(v10 + 8);
  result = v22(v16, v9);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v20 < 9.22337204e18)
  {
    *&v30.var0 = v20;
    v24 = ctb::CPMGroupManagement::CPMGroupManagement(&v28, &v30);
    ctb::bridging::makeOptional(v24, v29);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v28.__r_.__value_.__l.__data_);
    a2 = [objc_allocWithZone(CTBBootstrappingInfoWrapper) initWithWrapped_];
    std::optional<ctb::CPMGroupManagement>::~optional(v29);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v30);
    v22(v13, v9);
    return a2;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_24266E498(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426A9D00();
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v9 = sub_242668374(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v9);
    v10 = v16;
    (*(v16 + 16))(&v13[-v8 - 8], &v13[-v8 - 8], v6);
    sub_242685BF8(&v13[-v8 - 8], v15);
    ctb::CPIMMessage::CPIMMessage(v13, v15);
    ctb::bridging::makeOptional(v13, v14);
    ctb::CPIMMessage::~CPIMMessage(v13);
    v7 = [objc_allocWithZone(CTBCPIMMessageWrapper) initWithWrapped_];
    std::optional<ctb::CPIMMessage>::~optional(v14);
    ctb::CPIMMessage::~CPIMMessage(v15);
    (*(v10 + 8))(&v13[-v8 - 8], v6);
  }

  return v7;
}

id sub_24266E6AC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_2426A9DF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v11 = sub_242668998(v4, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v11);
    (*(v8 + 16))(v17 - v10, v17 - v10, v7);
    v12 = sub_2426A9DE0();
    sub_2426838D8(v12, v13, v19);
    v14 = *(v8 + 8);
    v14(v17 - v10, v7);
    v15 = std::vector<unsigned char>::vector[abi:ne200100](v17, v19);
    ctb::bridging::makeOptional(v15, v18);
    std::vector<unsigned char>::~vector[abi:ne200100](v17);
    v9 = [objc_allocWithZone(CTBCPIMMLSMessageWrapper) initWithWrapped_];
    std::optional<ctb::MLSFileTransfer>::~optional(v18);
    std::vector<unsigned char>::~vector[abi:ne200100](v19);
    v14(v17 - v10, v7);
  }

  return v9;
}

id sub_24266E8A0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_2426AA190();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v11 = sub_242668FC0(v4, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v11);
    (*(v8 + 16))(v17 - v10, v17 - v10, v7);
    v12 = sub_2426AA180();
    sub_2426838D8(v12, v13, v19);
    v14 = *(v8 + 8);
    v14(v17 - v10, v7);
    v15 = std::vector<unsigned char>::vector[abi:ne200100](v17, v19);
    ctb::bridging::makeOptional(v15, v18);
    std::vector<unsigned char>::~vector[abi:ne200100](v17);
    v9 = [objc_allocWithZone(CTBServerMLSRCSContentWrapper) initWithWrapped_];
    std::optional<ctb::MLSFileTransfer>::~optional(v18);
    std::vector<unsigned char>::~vector[abi:ne200100](v19);
    v14(v17 - v10, v7);
  }

  return v9;
}

id sub_24266EA94(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_2426A9E30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v11 = sub_2426695E4(v4, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v11);
    (*(v8 + 16))(v17 - v10, v17 - v10, v7);
    v12 = sub_2426A9E20();
    sub_2426838D8(v12, v13, v19);
    v14 = *(v8 + 8);
    v14(v17 - v10, v7);
    v15 = std::vector<unsigned char>::vector[abi:ne200100](v17, v19);
    ctb::bridging::makeOptional(v15, v18);
    std::vector<unsigned char>::~vector[abi:ne200100](v17);
    v9 = [objc_allocWithZone(CTBMLSFileTransferWrapper) initWithWrapped_];
    std::optional<ctb::MLSFileTransfer>::~optional(v18);
    std::vector<unsigned char>::~vector[abi:ne200100](v19);
    v14(v17 - v10, v7);
  }

  return v9;
}

id sub_24266EC88(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426AA170();
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v9 = sub_242669C0C(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v9);
    v10 = v16;
    (*(v16 + 16))(&v13[-v8 - 8], &v13[-v8 - 8], v6);
    sub_242691840(&v13[-v8 - 8], v15);
    ctb::FileTransferDescriptor::FileTransferDescriptor(v13, v15);
    ctb::bridging::makeOptional(v13, v14);
    ctb::FileTransferDescriptor::~FileTransferDescriptor(v13);
    v7 = [objc_allocWithZone(CTBFileTransferDescriptorWrapper) initWithWrapped_];
    std::optional<ctb::FileTransferDescriptor>::~optional(v14);
    ctb::FileTransferDescriptor::~FileTransferDescriptor(v15);
    (*(v10 + 8))(&v13[-v8 - 8], v6);
  }

  return v7;
}

unint64_t sub_24266F0E4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_2426A9920();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2426A9940();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2426AA770();
  v53 = *(v10 - 8);
  v11 = v53[8];
  MEMORY[0x28223BE20](v10);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v13 = sub_24266A854(v4, a1, a2);
  if (!v3)
  {
    v32 = 0;
    v38 = &v32;
    MEMORY[0x28223BE20](v13);
    v14 = v53[2];
    v33 = &v32 - v12;
    v15 = v14(&v32 - v12, &v32 - v12, v10);
    MEMORY[0x28223BE20](v15);
    v14(&v32 - v12, &v32 - v12, v10);
    v16 = sub_24268E620(&v32 - v12);
    v35 = v17;
    v36 = v16;
    v34 = v18;
    v37 = HIDWORD(v17);
    MEMORY[0x28223BE20](v16);
    v14(&v32 - v12, &v32 - v12, v10);
    v19 = sub_24268F314(&v32 - v12);
    v20 = v10;
    v21 = sub_2426AA760();
    sub_24268D30C(v21, v22, &v51);
    v23 = v39;
    sub_2426AA750();
    v24 = v41;
    sub_24267BA1C(v41);
    v25 = sub_2426A98C0();
    v27 = v26;
    (*(v43 + 8))(v24, v44);
    (*(v40 + 8))(v23, v42);
    sub_24268D30C(v25, v27, &v52);
    v28 = v53[1];
    v28(&v32 - v12, v20);
    v47[0] = v36;
    v47[1] = v34;
    v48 = v35;
    v49 = v37;
    v50 = v19;
    ctb::IMDispositionNotification::IMDispositionNotification(v45, v47);
    ctb::bridging::makeOptional(v45, v46);
    ctb::IMDispositionNotification::~IMDispositionNotification(v45);
    v29 = [objc_allocWithZone(CTBIMDispositionNotificationWrapper) initWithWrapped_];
    v30 = v33;
    a2 = v29;
    std::optional<ctb::IMDispositionNotification>::~optional(v46);
    ctb::IMDispositionNotification::~IMDispositionNotification(v47);
    v28(v30, v20);
  }

  return a2;
}

id sub_24266F524(uint64_t a1, unint64_t x1_0)
{
  v6 = sub_2426AA030();
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, x1_0);
  v9 = sub_24266AE78(v2, a1, x1_0);
  if (!v3)
  {
    MEMORY[0x28223BE20](v9);
    v10 = v15;
    (*(v15 + 16))(v12 - v8, v12 - v8, v6);
    sub_24266398C(v12 - v8, v14);
    ctb::SIPConferenceInfo::SIPConferenceInfo(v12, v14);
    ctb::bridging::makeOptional(v12, v16, v13);
    ctb::SIPConferenceInfo::~SIPConferenceInfo(v12);
    v7 = [objc_allocWithZone(CTBSIPConferenceInfoWrapper) initWithWrapped_];
    std::optional<ctb::SIPConferenceInfo>::~optional(v13);
    ctb::SIPConferenceInfo::~SIPConferenceInfo(v14);
    (*(v10 + 8))(v12 - v8, v6);
  }

  return v7;
}

id sub_24266F714(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426A9EB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v10 = sub_24266B49C(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v10);
    (*(v7 + 16))(v13 - v9, v13 - v9, v6);
    sub_24265397C(v13 - v9, &v15);
    v11 = ctb::chatbot::CategoryList::CategoryList(v13, &v15);
    ctb::bridging::makeOptional(v11, v14);
    ctb::SIPResourceLists::~SIPResourceLists(v13);
    v8 = [objc_allocWithZone(CTBSIPResourceListsWrapper) initWithWrapped_];
    std::optional<ctb::SIPResourceLists>::~optional(v14);
    ctb::SIPResourceLists::~SIPResourceLists(&v15);
    (*(v7 + 8))(v13 - v9, v6);
  }

  return v8;
}

id sub_24266F8F4(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426AA080();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v10 = sub_24266BAC0(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v10);
    (*(v7 + 16))(&v13 - v9, &v13 - v9, v6);
    sub_24268CEBC(&v13 - v9, &v16);
    v11 = ctb::CPMGroupManagement::CPMGroupManagement(&v14, &v16);
    ctb::bridging::makeOptional(v11, v15);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v14.__r_.__value_.__l.__data_);
    v8 = [objc_allocWithZone(CTBCPMGroupManagementWrapper) initWithWrapped_];
    std::optional<ctb::CPMGroupManagement>::~optional(v15);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v16);
    (*(v7 + 8))(&v13 - v9, v6);
  }

  return v8;
}

id sub_24266FAD4(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426AA550();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v10 = sub_24266C0E4(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v10);
    (*(v7 + 16))(v13 - v9, v13 - v9, v6);
    sub_24268C950(v13 - v9, &v15.fState);
    v11 = ctb::IMCompositionIndication::IMCompositionIndication(v13, &v15);
    ctb::bridging::makeOptional(v11, v14);
    ctb::chatbot::VerificationDetails::~VerificationDetails(v13);
    v8 = [objc_allocWithZone(CTBIMCompositionIndicationWrapper) initWithWrapped_];
    std::optional<ctb::IMCompositionIndication>::~optional(v14);
    ctb::chatbot::VerificationDetails::~VerificationDetails(&v15);
    (*(v7 + 8))(v13 - v9, v6);
  }

  return v8;
}

id sub_24266FCB4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v46 = a1;
  v47 = a2;
  v3 = a3;
  LODWORD(v49) = (a3 >> 8) & 1;
  v50 = sub_2426AAD40();
  v54 = *(v50 - 8);
  v4 = v54[8];
  MEMORY[0x28223BE20](v50);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = sub_2426AAD20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v13 = MEMORY[0x277CF2AC0];
  if (v3 == 1)
  {
    v13 = MEMORY[0x277CF2AD0];
  }

  if (v3 == 2)
  {
    v13 = MEMORY[0x277CF2AD8];
  }

  (*(v7 + 104))(v42 - v11, *v13, v6);
  (*(v7 + 32))(v10, v12, v6);
  sub_2426AAD30();
  if (qword_27ECB5460 != -1)
  {
    swift_once();
  }

  v14 = sub_2426A9A10();
  v15 = __swift_project_value_buffer(v14, qword_27ECB5C20);
  v45 = v42;
  MEMORY[0x28223BE20](v15);
  v16 = v42 - v5;
  v17 = v54;
  v18 = v54[2];
  v49 = v42 - v5;
  v19 = v50;
  v18(v42 - v5, v42 - v5, v50);
  v20 = sub_2426A99F0();
  v21 = sub_2426ABB60();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52[0] = v43;
    *v22 = 136315394;
    v23 = sub_242670C0C(0x7373654D746F6F52, 0xEB00000000656761, v52);
    v42[1] = v42;
    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    MEMORY[0x28223BE20](v23);
    v18(v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v19);
    v24 = sub_2426ABA30();
    v26 = v25;
    v44 = v54[1];
    v44(v16, v19);
    v27 = sub_242670C0C(v24, v26, v52);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_242644000, v20, v21, "Decoding %s using context: %s", v22, 0x16u);
    v28 = v43;
    swift_arrayDestroy();
    MEMORY[0x245D163E0](v28, -1, -1);
    MEMORY[0x245D163E0](v22, -1, -1);
  }

  else
  {

    v44 = v17[1];
    v44(v16, v19);
  }

  v29 = sub_2426AAD50();
  v45 = *(v29 - 8);
  v30 = v45[8];
  v31 = MEMORY[0x28223BE20](v29);
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v42 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = v47;
  v42[-4] = v46;
  v42[-3] = v34;
  v35 = v48;
  v36 = v49;
  v42[-2] = v49;
  sub_24266C708(sub_2426714E8);
  if (v35)
  {
    v44(v36, v50);
  }

  else
  {
    MEMORY[0x28223BE20](v37);
    v38 = v42 - v32;
    v39 = v45;
    (v45[2])(v38, v33, v29);
    sub_242676360(v38, v53);
    std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::optional[abi:ne200100](v51, v53);
    v40 = v39;
    ctb::bridging::makeOptional(v51, v52);
    std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::~optional(v51);
    v30 = [objc_allocWithZone(CTBChatBotMessageWrapper) initWithWrapped_];
    std::optional<ctb::chatbot::Message>::~optional(v52);
    std::optional<std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>>::~optional(v53);
    (v40[1])(v33, v29);
    v44(v49, v50);
  }

  return v30;
}

id sub_2426703D8(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426AB390();
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v9 = sub_24266CCA4(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v9);
    v10 = v16;
    (*(v16 + 16))(&v13[-1] - v8, &v13[-1] - v8, v6);
    sub_2426723CC(&v13[-1] - v8, v15);
    ctb::chatbot::RenderInformation::RenderInformation(v13, v15);
    ctb::bridging::makeOptional(v13, v14);
    ctb::chatbot::RenderInformation::~RenderInformation(v13);
    v7 = [objc_allocWithZone(CTBChatBotRenderInformationWrapper) initWithWrapped_];
    std::optional<ctb::chatbot::RenderInformation>::~optional(v14);
    ctb::chatbot::RenderInformation::~RenderInformation(v15);
    (*(v10 + 8))(&v13[-1] - v8, v6);
  }

  return v7;
}

id sub_2426705C8(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426AAA50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v10 = sub_24266D2B8(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v10);
    (*(v7 + 16))(&v13 - v9, &v13 - v9, v6);
    sub_2426841A0(&v13 - v9, v16);
    v11 = ctb::ClientAuthenticityRequest::ClientAuthenticityRequest(v14, v16);
    ctb::bridging::makeOptional(v11, v15);
    ctb::ClientAuthenticityRequest::~ClientAuthenticityRequest(&v14[0].__r_.__value_.__l.__data_);
    v8 = [objc_allocWithZone(CTBClientAuthenticityRequestWrapper) initWithWrapped_];
    std::optional<ctb::ClientAuthenticityRequest>::~optional(v15);
    ctb::ClientAuthenticityRequest::~ClientAuthenticityRequest(v16);
    (*(v7 + 8))(&v13 - v9, v6);
  }

  return v8;
}

id sub_2426707A8(uint64_t a1, unint64_t a2)
{
  v6 = sub_2426AB970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_242664F58(a1, a2);
  v10 = sub_24266D8DC(v2, a1, a2);
  if (!v3)
  {
    MEMORY[0x28223BE20](v10);
    (*(v7 + 16))(&v13 - v9, &v13 - v9, v6);
    sub_24268D4F0(&v13 - v9, &v15);
    v11 = ctb::IMRevoke::IMRevoke(&v13, &v15);
    ctb::bridging::makeOptional(v11, v14);
    ctb::chatbot::TelephoneInformation::~TelephoneInformation(&v13.__r_.__value_.__l.__data_);
    v8 = [objc_allocWithZone(CTBIMRevokeWrapper) initWithWrapped_];
    std::optional<ctb::IMRevoke>::~optional(v14);
    ctb::chatbot::TelephoneInformation::~TelephoneInformation(&v15);
    (*(v7 + 8))(&v13 - v9, v6);
  }

  return v8;
}

id sub_242670988(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = a3;
  v8 = a1;
  v9 = sub_2426A9880();
  v11 = v10;

  v12 = a5(v9, v11);
  sub_2426662F4(v9, v11);

  return v12;
}

std::string *ctb::IMRevoke::IMRevoke(std::string *this, const IMRevoke *a2)
{
  if (*(&a2->fMessageID.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->fMessageID.__rep_.__l.__data_, a2->fMessageID.__rep_.__l.__size_);
  }

  else
  {
    v4 = *a2->fMessageID.__rep_.__s.__data_;
    this->__r_.__value_.__r.__words[2] = *(&a2->fMessageID.__rep_.__l + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (a2[1].fMessageID.__rep_.__s.__data_[15] < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *&a2->var0, a2[1].fMessageID.__rep_.__l.__data_);
  }

  else
  {
    v5 = *&a2->var0;
    this[1].__r_.__value_.__r.__words[2] = a2[1].fMessageID.__rep_.__l.__size_;
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (a2[2].fMessageID.__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(&a2[1].fMessageID.__rep_.__l + 2), *&a2[1].var0);
  }

  else
  {
    v6 = *(&a2[1].fMessageID.__rep_.__l + 1);
    this[2].__r_.__value_.__r.__words[2] = a2[2].fMessageID.__rep_.__l.__data_;
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  LODWORD(this[3].__r_.__value_.__l.__data_) = a2[2].fMessageID.__rep_.__l.__size_;
  return this;
}

void sub_242670B20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 ctb::bridging::makeOptional@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a2 + 24) = v2;
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = 1;
  return result;
}

{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a2 + 32) = result;
  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  *(a2 + 64) = 1;
  return result;
}

{
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = *(a1 + 56);
  *(a2 + 56) = result;
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a2 + 80) = 1;
  return result;
}

{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a2 + 48) = 1;
  }

  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = *(a1 + 104);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  result = *(a1 + 128);
  *(a2 + 128) = result;
  *(a2 + 144) = 1;
  return result;
}

{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = 1;
  return result;
}

{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a2 + 48) = 1;
  }

  v2 = (a1 + 64);
  v3 = *(a1 + 64);
  v4 = *(a1 + 56);
  *(a2 + 64) = v3;
  v5 = a2 + 64;
  *(a2 + 56) = v4;
  v6 = *(a1 + 72);
  *(a2 + 72) = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    *(a1 + 56) = v2;
    *v2 = 0;
    *(a1 + 72) = 0;
  }

  else
  {
    *(a2 + 56) = v5;
  }

  v7 = (a1 + 88);
  v8 = *(a1 + 88);
  v9 = *(a1 + 80);
  *(a2 + 88) = v8;
  v10 = a2 + 88;
  *(a2 + 80) = v9;
  v11 = *(a1 + 96);
  *(a2 + 96) = v11;
  if (v11)
  {
    *(v8 + 16) = v10;
    *(a1 + 80) = v7;
    *v7 = 0;
    *(a1 + 96) = 0;
  }

  else
  {
    *(a2 + 80) = v10;
  }

  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v12 = *(a1 + 128);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a2 + 128) = v12;
  *(a2 + 144) = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 152) = *(a1 + 152);
  v13 = *(a1 + 176);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 176) = v13;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v14 = *(a1 + 200);
  *(a2 + 216) = *(a1 + 216);
  *(a2 + 200) = v14;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v15 = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  *(a2 + 224) = v15;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v16 = *(a1 + 248);
  *(a2 + 264) = *(a1 + 264);
  *(a2 + 248) = v16;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v17 = *(a1 + 272);
  *(a2 + 288) = *(a1 + 288);
  *(a2 + 272) = v17;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  v18 = *(a1 + 296);
  *(a2 + 312) = *(a1 + 312);
  *(a2 + 296) = v18;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  v19 = *(a1 + 320);
  *(a2 + 336) = *(a1 + 336);
  *(a2 + 320) = v19;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v20 = *(a1 + 344);
  *(a2 + 360) = *(a1 + 360);
  *(a2 + 344) = v20;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  v21 = *(a1 + 368);
  *(a2 + 384) = *(a1 + 384);
  *(a2 + 368) = v21;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v22 = *(a1 + 392);
  *(a2 + 408) = *(a1 + 408);
  *(a2 + 392) = v22;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  v23 = *(a1 + 416);
  *(a2 + 432) = *(a1 + 432);
  *(a2 + 416) = v23;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  v24 = *(a1 + 440);
  *(a2 + 456) = *(a1 + 456);
  *(a2 + 440) = v24;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  v25 = *(a1 + 464);
  *(a2 + 480) = *(a1 + 480);
  *(a2 + 464) = v25;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  result = *(a1 + 488);
  v27 = *(a1 + 504);
  *(a2 + 520) = *(a1 + 520);
  *(a2 + 488) = result;
  *(a2 + 504) = v27;
  *(a2 + 528) = 1;
  return result;
}

{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = 1;
  return result;
}

{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v3 = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 96) = v3;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = *(a1 + 120);
  *(a2 + 120) = result;
  *(a2 + 136) = 1;
  return result;
}

{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a2 + 24) = v2;
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 48) = result;
  *(a2 + 64) = v4;
  *(a2 + 72) = v5;
  *(a2 + 88) = 1;
  return result;
}

uint64_t std::optional<ctb::IMRevoke>::~optional(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

unint64_t sub_242670C0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242670CD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242671220(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_242670CD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242670DE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2426ABC20();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_242670DE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_242670E30(a1, a2);
  sub_242670F60(&unk_2854F7178);
  return v3;
}

uint64_t sub_242670E30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24267104C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2426ABC20();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2426ABA60();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24267104C(v10, 0);
        result = sub_2426ABC00();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242670F60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2426710C0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24267104C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2426710C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2426711B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242671220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t std::optional<ctb::ClientAuthenticityRequest>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v3 = a1;
    std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](&v3, std::__destroy_at[abi:ne200100]<ctb::ClientAuthenticityRequest::Method,0>);
  }

  return a1;
}

void ctb::bridging::makeOptional(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  ctb::chatbot::BotInformation::BotInformation(a2, a1);
  *(v3 + 560) = 0;
  *(v3 + 584) = 0;
  if (*(a1 + 584) == 1)
  {
    *(v3 + 560) = *(a1 + 560);
    *(v3 + 576) = *(a1 + 576);
    *(a1 + 576) = 0;
    *(a1 + 560) = 0u;
    *(v3 + 584) = 1;
  }

  *(v3 + 592) = *(a1 + 592);
  *(v3 + 616) = *(a1 + 616);
  *(v3 + 600) = *(a1 + 600);
  *(a1 + 616) = 0;
  *(a1 + 608) = 0;
  *(a1 + 600) = 0;
  *(v3 + 624) = *(a1 + 624);
  *(v3 + 640) = *(a1 + 640);
  *(a1 + 632) = 0;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0;
  *(v3 + 648) = 0;
  *(v3 + 672) = 0;
  if (*(a1 + 672) == 1)
  {
    *(v3 + 664) = *(a1 + 664);
    *(v3 + 648) = *(a1 + 648);
    *(a1 + 664) = 0;
    *(a1 + 648) = 0;
    *(a1 + 656) = 0;
    *(v3 + 672) = 1;
  }

  *(v3 + 680) = 1;
}

void **std::optional<ctb::chatbot::RenderInformation>::~optional(void **this)
{
  if (*(this + 680) == 1)
  {
    if (*(this + 672) == 1 && *(this + 671) < 0)
    {
      operator delete(this[81]);
    }

    if (*(this + 647) < 0)
    {
      operator delete(this[78]);
    }

    if (*(this + 623) < 0)
    {
      operator delete(this[75]);
    }

    if (*(this + 584) == 1)
    {
      v3 = this + 70;
      std::vector<ctb::chatbot::MenuL1Content>::__destroy_vector::operator()[abi:ne200100](&v3, std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]);
    }

    ctb::chatbot::BotInformation::~BotInformation(this);
  }

  return this;
}

_BYTE *ctb::bridging::makeOptional@<X0>(ctb::bridging *this@<X0>, _BYTE *a2@<X8>)
{
  result = a2;
  *a2 = 0;
  a2[336] = 0;
  if (*(this + 336) == 1)
  {
    result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2, this);
    result[336] = 1;
  }

  result[344] = 1;
  return result;
}

uint64_t std::optional<ctb::chatbot::Message>::~optional(uint64_t a1)
{
  if (*(a1 + 344) == 1 && *(a1 + 336) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  }

  return a1;
}

ctb::IMCompositionIndication *ctb::IMCompositionIndication::IMCompositionIndication(ctb::IMCompositionIndication *this, const IMCompositionIndication *a2)
{
  *this = a2->fState;
  if (*(&a2->fLastActive.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), a2->fLastActive.__rep_.__l.__data_, a2->fLastActive.__rep_.__l.__size_);
  }

  else
  {
    v4 = *a2->fLastActive.__rep_.__s.__data_;
    *(this + 3) = *(&a2->fLastActive.__rep_.__l + 2);
    *(this + 8) = v4;
  }

  if (a2[1].fLastActive.__rep_.__s.__data_[7] < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *&a2->var0, *&a2[1].fState);
  }

  else
  {
    v5 = *&a2->var0;
    *(this + 6) = a2[1].fLastActive.__rep_.__l.__data_;
    *(this + 2) = v5;
  }

  *(this + 7) = a2[1].fLastActive.__rep_.__l.__size_;
  return this;
}

void sub_242671628(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<ctb::IMCompositionIndication>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

__n128 ctb::bridging::makeOptional@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u8[0] = 1;
  return result;
}

uint64_t std::optional<ctb::SIPResourceLists>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v3 = a1;
    std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](&v3, std::vector<std::string>::clear[abi:ne200100]);
  }

  return a1;
}

__n128 ctb::bridging::makeOptional@<Q0>(ctb::bridging *this@<X0>, SIPConferenceInfo a2@<0:X1>, uint64_t a3@<X8>)
{
  v4 = std::__optional_move_base<ctb::SIPConferenceInfo::Description,false>::__optional_move_base[abi:ne200100](a3, this);
  result = *(this + 72);
  *(v4 + 72) = result;
  *(v4 + 88) = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(v4 + 96) = 1;
  return result;
}

uint64_t std::optional<ctb::SIPConferenceInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    std::vector<ctb::SIPConferenceInfo::User>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 64) == 1)
    {
      if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }
    }
  }

  return a1;
}

ctb::IMDispositionNotification *ctb::IMDispositionNotification::IMDispositionNotification(ctb::IMDispositionNotification *this, const ctb::IMDispositionNotification *a2)
{
  v4 = *a2;
  *(this + 12) = *(a2 + 12);
  *this = v4;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v6;
  }

  return this;
}

void sub_2426718FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<ctb::IMDispositionNotification>::~optional(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

_BYTE *ctb::bridging::makeOptional@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = 0;
  v4 = a2 + 24;
  *(a2 + 48) = 0;
  if (*(a1 + 48) == 1)
  {
    *v4 = *(a1 + 24);
    *(v4 + 16) = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a2 + 48) = 1;
  }

  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v5 = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = *(a1 + 104);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a2 + 128) = *(a1 + 128);
  result = std::__optional_move_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_move_base[abi:ne200100]((a2 + 144), (a1 + 144));
  *(a2 + 296) = 0;
  *(a2 + 320) = 0;
  if (*(a1 + 320) == 1)
  {
    *(a2 + 312) = *(a1 + 312);
    *(a2 + 296) = *(a1 + 296);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0;
    *(a2 + 320) = 1;
  }

  *(a2 + 328) = 1;
  return result;
}

void std::optional<ctb::FileTransferDescriptor>::~optional(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    ctb::FileTransferDescriptor::~FileTransferDescriptor(a1);
  }
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *a2, a2[1], a2[1] - *a2);
  return a1;
}

uint64_t std::vector<unsigned char>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::optional<ctb::MLSFileTransfer>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void std::optional<ctb::CPIMMessage>::~optional(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    ctb::CPIMMessage::~CPIMMessage(a1);
  }
}

uint64_t std::optional<ctb::CPMGroupManagement>::~optional(uint64_t a1)
{
  if (*(a1 + 32) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ctb::bridging::makeOptional@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ctb::ProvisioningConfiguration::ProvisioningConfiguration(a2, a1);
  *(result + 1224) = 1;
  return result;
}

{
  result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a2, a1);
  *(result + 336) = 1;
  return result;
}

uint64_t std::optional<ctb::ProvisioningConfiguration>::~optional(uint64_t a1)
{
  if (*(a1 + 1224) == 1)
  {
    if (*(a1 + 1168) == 1)
    {
      ctb::ProvisioningConfiguration::Messaging::~Messaging((a1 + 720));
    }

    if (*(a1 + 712) == 1)
    {
      std::__tree<std::string>::destroy(a1 + 688, *(a1 + 696));
    }

    if (*(a1 + 648) == 1)
    {
      ctb::ProvisioningConfiguration::IMS3GPP::~IMS3GPP((a1 + 120));
    }

    if (*(a1 + 112) == 1)
    {
      v3 = (a1 + 88);
      std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](&v3, std::__destroy_at[abi:ne200100]<ctb::ProvisioningConfiguration::AccessControl::Server,0>);
      std::__tree<std::string>::destroy(a1 + 64, *(a1 + 72));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t sub_242671E10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242671E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242671EB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

std::string *sub_242671F04(std::string *a1)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1);
  return a1;
}

void sub_242671F34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ctb::chatbot::MediaEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0__0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v2, *a2, a2[1], a2[1] - *a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  v3[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0_(ctb::FileTransferDescriptor::FileDescriptor **a1, uint64_t a2)
{
  v3 = *a1;
  ctb::FileTransferDescriptor::FileDescriptor::FileDescriptor(*a1, a2);
  std::__optional_copy_base<ctb::FileTransferDescriptor::FileDescriptor,false>::__optional_copy_base[abi:ne200100]((v3 + 144), (a2 + 144));
  return sub_242671F04((v3 + 296));
}

void sub_242672114(_Unwind_Exception *a1)
{
  std::optional<ctb::FileTransferDescriptor::FileDescriptor>::~optional((v1 + 18));
  ctb::FileTransferDescriptor::FileDescriptor::~FileDescriptor(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0_(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  *v4 = *a2;
  v5 = (v4 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 8), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(v3 + 2) = v7;
  }

  *(v3 + 7) = *(a2 + 56);
}

void sub_2426721D0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *v3 = v4;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 9);
    *(v3 + 56) = v6;
  }
}

void sub_242672270(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0_(std::string **a1, __int128 *a2)
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

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3ctb15GeoPushLocationENS8_14CPIMMLSMessageENS8_19ServerMLSRCSContentENS8_15MLSFileTransferENS8_18CPMGroupManagementENS8_22FileTransferDescriptorENS8_7chatbot7MessageENS8_23IMCompositionIndicationENS8_25IMDispositionNotificationENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_17SIPConferenceInfoEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISQ_LNS0_6_TraitE1EEEEEvRSR_OT_EUlS10_E_JRKNS0_6__baseILSU_1EJS9_SA_SB_SC_SD_SE_SG_SH_SI_SO_SP_EEEEEEDcSZ_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = std::__optional_copy_base<ctb::SIPConferenceInfo::Description,false>::__optional_copy_base[abi:ne200100](*a1, a2);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v4 + 72) = 0;
  return std::vector<ctb::SIPConferenceInfo::User>::__init_with_size[abi:ne200100]<ctb::SIPConferenceInfo::User*,ctb::SIPConferenceInfo::User*>(v4 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
}

void std::vector<ctb::ClientAuthenticityRequest::Method>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(char *))
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v5 = v2[1];
    v6 = **a1;
    if (v5 != v3)
    {
      do
      {
        v5 -= 56;
        a2(v5);
      }

      while (v5 != v3);
      v6 = **a1;
    }

    v2[1] = v3;

    operator delete(v6);
  }
}

void sub_2426723CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v37 - v5;
  v6 = sub_2426AB590();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AB350();
  sub_2426752B0(v8, v49);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v12 = sub_2426AB360();
  MEMORY[0x28223BE20](v12);
  sub_242664250(v11, v11, &qword_27ECB5CE8);
  v13 = sub_2426AB3B0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v11, 1, v13);
  if (v15 == 1)
  {
    sub_2426642B8(v11, &qword_27ECB5CE8);
    v45 = 0u;
    v46 = 0u;
    LOBYTE(v47[0]) = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.MenuItem_(0);
    v22 = v21;
    v23 = sub_242676174(&qword_27ECB57F8, type metadata accessor for std.__1.optional_ctb.chatbot.MenuItem_);
    CxxOptional.init(nilLiteral:)(v22, v23);
    if (LOBYTE(v47[0]) != 1)
    {
      sub_2426642B8(&v45, &qword_27ECB5CF0);
    }
  }

  else
  {
    v38 = a2;
    v16 = *(v14 + 64);
    MEMORY[0x28223BE20](v15);
    v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = (*(v14 + 32))(v17, v11, v13);
    MEMORY[0x28223BE20](v18);
    (*(v14 + 16))(v17, v17, v13);
    v19 = sub_2426AB3A0();
    sub_242682258(v19, &v41);
    v20 = *(v14 + 8);
    v20(v17, v13);
    ctb::bridging::makeOptional(&v41, &v45);
    ctb::chatbot::MenuItem::~MenuItem(&v41);
    v20(v17, v13);
    sub_2426642B8(v11, &qword_27ECB5CE8);
    LOBYTE(v47[0]) = 0;
    a2 = v38;
    ctb::ClientAuthenticityRequest::Parameter::Parameter(v48, &v45);
    std::optional<ctb::chatbot::MenuItem>::~optional(&v45, std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100], std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100]);
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CF8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2426AB370();
  MEMORY[0x28223BE20](v27);
  sub_242664250(v26, v26, &qword_27ECB5CF8);
  v28 = sub_2426AAFF0();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v26, 1, v28);
  if (v30 == 1)
  {
    sub_2426642B8(v26, &qword_27ECB5CF8);
    v41 = 2;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
  }

  else
  {
    v37[1] = v37;
    v31 = *(v29 + 64);
    MEMORY[0x28223BE20](v30);
    v38 = v37;
    v32 = v37 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = (*(v29 + 32))(v32, v26, v28);
    v37[0] = v37;
    MEMORY[0x28223BE20](v33);
    (*(v29 + 16))(v32, v32, v28);
    sub_2426757EC(v32, &v41);
    (*(v29 + 8))(v32, v28);
    sub_2426642B8(v26, &qword_27ECB5CF8);
  }

  if (v41 == 2)
  {
    v45.n128_u64[1] = 0;
    v46 = 0uLL;
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v45.n128_u64[1]);
    memset(v47, 0, sizeof(v47));
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](v47);
    v45.n128_u8[0] = 0;
    if (v41 != 2)
    {
      sub_2426642B8(&v41, &qword_27ECB5D00);
    }
  }

  else
  {
    ctb::chatbot::VerificationDetails::VerificationDetails(&v45, &v41);
    ctb::chatbot::VerificationDetails::~VerificationDetails(&v41);
  }

  v35 = v39;
  v34 = v40;
  sub_2426AB380();
  sub_2426836A0(v35, (a2 + 81));
  v36 = sub_2426AB390();
  (*(*(v36 - 8) + 8))(v34, v36);
  ctb::chatbot::BotInformation::BotInformation(a2, v49);
  ctb::chatbot::BotInformation::~BotInformation(v49);
  ctb::ClientAuthenticityRequest::Parameter::Parameter((a2 + 70), v48);
  std::optional<ctb::chatbot::MenuItem>::~optional(v48, std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedChip,ctb::chatbot::MenuL1>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100], std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100]);
  ctb::chatbot::VerificationDetails::VerificationDetails((a2 + 74), &v45);
  ctb::chatbot::VerificationDetails::~VerificationDetails(&v45);
}

void **sub_242672B08@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v39 = a2;
    v54 = MEMORY[0x277D84F90];
    sub_242684D38(0, v4, 0);
    v5 = v54;
    v6 = sub_2426AB620();
    v49 = v6;
    v7 = *(v6 - 8);
    v8 = *(v7 + 16);
    v43 = v7 + 16;
    v44 = v8;
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v38 = a1;
    v10 = a1 + v9;
    v11 = *(v7 + 64);
    v41 = *(v7 + 72);
    v42 = v11;
    v40 = (v7 + 8);
    do
    {
      v12 = v42;
      MEMORY[0x28223BE20](v6);
      v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = v49;
      v15 = v44;
      v16 = (v44)(v13, v10, v49);
      v48 = &v38;
      MEMORY[0x28223BE20](v16);
      v15(v13, v13, v14);
      v17 = sub_2426AB5D0();
      v19 = v18;

      sub_24268D30C(v17, v19, &v50);
      ctb::bridging::makeOptional(&v50, &v51);
      std::string::~string(&v50);

      v20 = sub_2426AB610();
      v21 = *(v20 - 8);
      MEMORY[0x28223BE20](v20);
      v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2426AB5E0();
      v24 = (*(v21 + 88))(v23, v20);
      v46 = v4;
      v47 = v5;
      if (MEMORY[0x277CF2F18] && v24 == *MEMORY[0x277CF2F18])
      {
        v45 = 1;
      }

      else if (MEMORY[0x277CF2F10] && v24 == *MEMORY[0x277CF2F10])
      {
        v45 = 2;
      }

      else
      {
        (*(v21 + 8))(v23, v20);
        v45 = 0;
      }

      v25 = sub_2426AB5F0();
      v26 = *(v25 - 8);
      MEMORY[0x28223BE20](v25);
      v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2426AB600();
      v29 = *v40;
      v30 = v49;
      (*v40)(v13, v49);
      v29(v13, v30);
      v31 = (*(v26 + 88))(v28, v25);
      if (MEMORY[0x277CF2EF8] && v31 == *MEMORY[0x277CF2EF8])
      {
        v32 = 1;
      }

      else if (MEMORY[0x277CF2EF0] && v31 == *MEMORY[0x277CF2EF0])
      {
        v32 = 2;
      }

      else
      {
        (*(v26 + 8))(v28, v25);
        v32 = 0;
      }

      v52 = v45;
      v53 = v32;
      v5 = v47;
      v54 = v47;
      v34 = *(v47 + 16);
      v33 = *(v47 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_242684D38((v33 > 1), v34 + 1, 1);
        v5 = v54;
      }

      *(v5 + 16) = v34 + 1;
      ctb::chatbot::URIEntry::URIEntry(v5 + 40 * v34 + 32, &v51);
      v6 = std::optional<std::string>::~optional(&v51);
      v10 += v41;
      v4 = v46 - 1;
    }

    while (v46 != 1);

    v3 = v39;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  memset(&v50, 0, sizeof(v50));
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v50);
  v35 = *(v5 + 16);
  if (v35)
  {
    v36 = (v5 + 32);
    do
    {
      ctb::chatbot::URIEntry::URIEntry(&v51, v36);
      std::vector<ctb::chatbot::URIEntry>::push_back[abi:ne200100](&v50, &v51);
      std::optional<std::string>::~optional(&v51);
      v36 = (v36 + 40);
      --v35;
    }

    while (v35);
  }

  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v51, &v50);
  std::vector<ctb::chatbot::URIEntry>::~vector[abi:ne200100](&v50.__r_.__value_.__l.__data_);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](v3, &v51);
  return std::vector<ctb::chatbot::URIEntry>::~vector[abi:ne200100](&v51.__r_.__value_.__l.__data_);
}

void **sub_242673010@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v72 = sub_2426A9870();
  v4 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v62 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = *(a1 + 16);
  if (v10)
  {
    v70 = v58 - v8;
    v71 = v9;
    v59 = a2;
    v90 = MEMORY[0x277D84F90];
    sub_242684D58(0, v10, 0);
    v11 = v90;
    v12 = sub_2426AAD00();
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = *(v14 + 16);
    v14 += 16;
    v68 = v15;
    v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v58[1] = a1;
    v17 = a1 + v16;
    v66 = (v4 + 48);
    v61 = (v4 + 32);
    v60 = (v4 + 8);
    v18 = *(v14 + 56);
    v65 = *(v14 + 48);
    v64 = v18;
    v67 = v14;
    v63 = (v14 - 8);
    v69 = v12;
    do
    {
      v79 = v10;
      v80 = v11;
      v78 = v58;
      v19 = v65;
      MEMORY[0x28223BE20](v12);
      v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = v68;
      v22 = (v68)(v20, v17, v13);
      v77 = v58;
      MEMORY[0x28223BE20](v22);
      v76 = v20;
      v21(v20, v20, v13);
      v23 = sub_2426AACD0();
      v24 = *(v23 - 8);
      MEMORY[0x28223BE20](v23);
      v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2426AACE0();
      v27 = (*(v24 + 88))(v26, v23);
      if (MEMORY[0x277CF2A60] && v27 == *MEMORY[0x277CF2A60])
      {
        v75 = 1;
      }

      else
      {
        (*(v24 + 8))(v26, v23);
        v75 = 0;
      }

      v28 = v70;
      v29 = sub_2426AB3E0();
      v74 = v58;
      v73 = v29;
      v30 = *(v29 - 8);
      MEMORY[0x28223BE20](v29);
      v32 = v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2426AACF0();
      sub_2426AB3D0();
      v33 = v71;
      sub_242664250(v28, v71, &qword_27ECB5CE0);
      v34 = v72;
      if ((*v66)(v33, 1, v72) == 1)
      {
        sub_2426642B8(v28, &qword_27ECB5CE0);
        memset(v81, 0, 24);
        v81[24] = 1;
        memset(&v84, 0, sizeof(v84));
        std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v84);
        if (v81[24] != 1)
        {
          sub_2426642B8(v81, &qword_27ECB5D10);
        }
      }

      else
      {
        v35 = v62;
        (*v61)(v62, v33, v34);
        v36 = sub_2426A9850();
        sub_24268D30C(v36, v37, v81);
        (*v60)(v35, v34);
        sub_2426642B8(v28, &qword_27ECB5CE0);
        v81[24] = 0;
        std::string::basic_string[abi:ne200100](&v84, v81);
        std::string::~string(v81);
      }

      v38 = sub_2426AB3C0();
      v13 = v69;
      if (v39)
      {
        v40 = v38;
        v41 = v39;

        sub_24268D30C(v40, v41, &v83);
        ctb::bridging::makeOptional(&v83, v81);
        std::string::~string(&v83);

        v82 = 0;
        std::optional<std::string>::optional[abi:ne200100](&v83, v81);
        std::optional<std::string>::~optional(v81);
      }

      else
      {
        memset(v81, 0, sizeof(v81));
        v82 = 1;
        type metadata accessor for std.__1.optional_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___(0);
        v43 = v42;
        v44 = sub_242676174(&qword_27ECB57F0, type metadata accessor for std.__1.optional_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___);
        CxxOptional.init(nilLiteral:)(v43, v44);
        if (v82 != 1)
        {
          sub_2426642B8(v81, &qword_27ECB5B08);
        }
      }

      std::optional<std::string>::optional[abi:ne200100](v87, &v83);
      std::optional<std::string>::~optional(&v83);
      (*(v30 + 8))(v32, v73);
      std::string::basic_string[abi:ne200100](&v85, &v84);
      std::string::~string(&v84);
      ctb::chatbot::Media::Media(&v88.n128_i8[8], &v85);
      ctb::chatbot::Media::~Media(&v85);
      v45 = sub_2426AACB0();
      v46 = *(v45 - 8);
      MEMORY[0x28223BE20](v45);
      v48 = v58 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2426AACC0();
      v49 = *v63;
      (*v63)(v20, v13);
      v49(v76, v13);
      v50 = (*(v46 + 88))(v48, v45);
      if (MEMORY[0x277CF2A40] && v50 == *MEMORY[0x277CF2A40])
      {
        v51 = 1;
        v11 = v80;
        v52 = v79;
      }

      else
      {
        v11 = v80;
        v52 = v79;
        if (MEMORY[0x277CF2A48] && v50 == *MEMORY[0x277CF2A48])
        {
          v51 = 2;
        }

        else
        {
          (*(v46 + 8))(v48, v45);
          v51 = 0;
        }
      }

      v88.n128_u32[0] = v75;
      v89 = v51;
      v90 = v11;
      v54 = v11[2];
      v53 = v11[3];
      if (v54 >= v53 >> 1)
      {
        sub_242684D58((v53 > 1), v54 + 1, 1);
        v11 = v90;
      }

      v11[2] = v54 + 1;
      ctb::chatbot::MediaEntry::MediaEntry(&v11[9 * v54 + 4], &v88);
      ctb::chatbot::MediaEntry::~MediaEntry(&v88);
      v17 += v64;
      v10 = v52 - 1;
    }

    while (v10);

    a2 = v59;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v85 = 0uLL;
  v86 = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v85);
  v55 = v11[2];
  if (v55)
  {
    v56 = (v11 + 4);
    do
    {
      ctb::chatbot::MediaEntry::MediaEntry(&v88, v56);
      std::vector<ctb::chatbot::MediaEntry>::push_back[abi:ne200100](&v85, &v88);
      ctb::chatbot::MediaEntry::~MediaEntry(&v88);
      v56 = (v56 + 72);
      --v55;
    }

    while (v55);
  }

  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v88, &v85);
  std::vector<ctb::chatbot::MediaEntry>::~vector[abi:ne200100](&v85);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2, &v88);
  return std::vector<ctb::chatbot::MediaEntry>::~vector[abi:ne200100](&v88);
}

void **sub_2426739E8@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v34 = a2;
    v45.n128_u64[0] = MEMORY[0x277D84F90];
    sub_242684D78(0, v4, 0);
    v5 = v45.n128_u64[0];
    v6 = sub_2426AB070();
    v35 = v6;
    v7 = *(v6 - 8);
    v8 = *(v7 + 16);
    v39 = v7 + 16;
    v40 = v8;
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v33 = a1;
    v10 = (a1 + v9);
    v11 = *(v7 + 64);
    v37 = *(v7 + 72);
    v38 = v11;
    v36 = (v7 + 8);
    do
    {
      v43 = v4;
      v44 = v5;
      v42 = &v33;
      v12 = v38;
      MEMORY[0x28223BE20](v6);
      v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = v35;
      v15 = v40;
      v16 = v40(v13, v10, v35);
      v41 = &v33;
      MEMORY[0x28223BE20](v16);
      v17 = v15(v13, v13, v14);
      v18 = MEMORY[0x245D14FE0](v17);
      sub_24268D30C(v18, v19, &v47);
      v20 = sub_2426AB050();
      v21 = *(v20 - 8);
      MEMORY[0x28223BE20](v20);
      v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2426AB060();
      v24 = *v36;
      (*v36)(v13, v14);
      v24(v13, v14);
      v25 = MEMORY[0x277CF2C80];
      v26 = (*(v21 + 88))(v23, v20);
      if (v25 && v26 == *v25)
      {
        v27 = 1;
      }

      else
      {
        (*(v21 + 8))(v23, v20);
        v27 = 0;
      }

      v48 = v27;
      v5 = v44;
      v45.n128_u64[0] = v44;
      v29 = *(v44 + 16);
      v28 = *(v44 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_242684D78((v28 > 1), v29 + 1, 1);
        v5 = v45.n128_u64[0];
      }

      *(v5 + 16) = v29 + 1;
      ctb::chatbot::OrgNameEntry::OrgNameEntry((v5 + 32 * v29 + 32), &v47);
      ctb::chatbot::OrgNameEntry::~OrgNameEntry(&v47);
      v10 += v37;
      v4 = v43 - 1;
    }

    while (v43 != 1);

    v3 = v34;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v45 = 0uLL;
  v46 = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v45);
  v30 = *(v5 + 16);
  if (v30)
  {
    v31 = (v5 + 32);
    do
    {
      ctb::chatbot::OrgNameEntry::OrgNameEntry(&v47, v31);
      std::vector<ctb::chatbot::OrgNameEntry>::push_back[abi:ne200100](&v45, &v47);
      ctb::chatbot::OrgNameEntry::~OrgNameEntry(&v47);
      v31 = (v31 + 32);
      --v30;
    }

    while (v30);
  }

  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v47, &v45);
  std::vector<ctb::chatbot::OrgNameEntry>::~vector[abi:ne200100](&v45);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](v3, &v47);
  return std::vector<ctb::chatbot::OrgNameEntry>::~vector[abi:ne200100](&v47.__r_.__value_.__l.__data_);
}

void **sub_242673D84@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_2426AADB0();
  begin = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = *(v4 + 16);
    if (v6)
    {
      v26 = a1;
      v27 = a2;
      v32.__begin_ = MEMORY[0x277D84F90];
      v7 = v4;
      sub_242684C4C(0, v6, 0);
      begin = v32.__begin_;
      v8 = sub_2426AADA0();
      v31 = v8;
      v9 = *(v8 - 8);
      v10 = *(v9 + 16);
      v29 = v9 + 16;
      v30 = v10;
      v11 = *(v9 + 80);
      v25 = v7;
      v12 = v7 + ((v11 + 32) & ~v11);
      v13 = *(v9 + 64);
      v28 = *(v9 + 72);
      v14 = (v9 + 8);
      do
      {
        MEMORY[0x28223BE20](v8);
        v15 = v31;
        v16 = v30(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v31);
        v17 = MEMORY[0x245D14D30](v16);
        v19 = v18;
        v8 = (*v14)(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
        v32.__begin_ = begin;
        v21 = begin->__r_.__value_.__r.__words[2];
        v20 = begin[1].__r_.__value_.__r.__words[0];
        if (v21 >= v20 >> 1)
        {
          v8 = sub_242684C4C((v20 > 1), v21 + 1, 1);
          begin = v32.__begin_;
        }

        begin->__r_.__value_.__r.__words[2] = v21 + 1;
        v22 = begin + 16 * v21;
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
        v12 += v28;
        --v6;
      }

      while (v6);

      a1 = v26;
      a2 = v27;
    }

    else
    {
    }
  }

  sub_242683514(begin, &v32);
  v23 = sub_2426AADC0();
  (*(*(v23 - 8) + 8))(a1, v23);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2, &v32);
  return std::vector<std::string>::~vector[abi:ne200100](&v32.__begin_);
}

uint64_t sub_242673F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v7 = sub_2426AB130();
  MEMORY[0x28223BE20](v7);
  sub_242664250(v6, v6, &qword_27ECB5D38);
  v8 = sub_2426AB1B0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v82 = a2;
  if (v10 == 1)
  {
    sub_2426642B8(v6, &qword_27ECB5D38);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0;
    v95 = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.CommunicationAddress_(0);
    v33 = v32;
    v34 = sub_242676174(&qword_27ECB57C0, type metadata accessor for std.__1.optional_ctb.chatbot.CommunicationAddress_);
    CxxOptional.init(nilLiteral:)(v33, v34);
    if (v95 != 1)
    {
      sub_2426642B8(&v88, &qword_27ECB5D40);
    }
  }

  else
  {
    v76 = &v74;
    v11 = *(v9 + 64);
    MEMORY[0x28223BE20](v10);
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = (*(v9 + 32))(&v74 - v12, v6, v8);
    v81 = &v74;
    MEMORY[0x28223BE20](v13);
    v14 = &v74 - v12;
    v15 = *(v9 + 16);
    v75 = &v74 - v12;
    v15(&v74 - v12, &v74 - v12, v8);
    v79 = sub_2426AAF50();
    v80 = &v74;
    v78 = *(v79 - 8);
    MEMORY[0x28223BE20](v79);
    v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = sub_2426AB1A0();
    v19 = MEMORY[0x245D14ED0](v18);
    sub_24268D30C(v19, v20, &v96);
    v21 = sub_2426AB030();
    v77 = &v74;
    v22 = *(v21 - 8);
    MEMORY[0x28223BE20](v21);
    v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = sub_2426AAF40();
    v26 = MEMORY[0x245D14FC0](v25);
    sub_24268D30C(v26, v27, &v97);
    (*(v22 + 8))(v24, v21);
    v28 = sub_2426AAF20();
    sub_24268D30C(v28, v29, &v98);
    (*(v78 + 8))(v17, v79);
    v30 = sub_2426AB190();
    sub_242672B08(v30, v99);
    v31 = *(v9 + 8);
    v31(v14, v8);
    ctb::bridging::makeOptional(&v96, &v88);
    ctb::chatbot::CommunicationAddress::~CommunicationAddress(&v96.__r_.__value_.__l.__data_);
    v31(v75, v8);
    sub_2426642B8(v6, &qword_27ECB5D38);
    v95 = 0;
    a2 = v82;
    std::optional<ctb::chatbot::CommunicationAddress>::optional[abi:ne200100](&v96, &v88);
    std::optional<ctb::chatbot::CommunicationAddress>::~optional(&v88);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D48);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v74 - v37;
  v39 = sub_2426AB140();
  MEMORY[0x28223BE20](v39);
  v40 = &v74 - v37;
  sub_242664250(&v74 - v37, &v74 - v37, &qword_27ECB5D48);
  v41 = sub_2426AB7D0();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 48))(&v74 - v37, 1, v41);
  if (v43 == 1)
  {
    sub_2426642B8(&v74 - v37, &qword_27ECB5D48);
    v88 = 0u;
    v89 = 0u;
    LOBYTE(v90) = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v43);
    v45 = &v74 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v42 + 32))(v45, v40, v41);
    v46 = sub_2426AADB0();
    if (!v46)
    {
      v46 = MEMORY[0x277D84F90];
    }

    sub_242673010(v46, v87);
    ctb::bridging::makeOptional(v87, &v88);
    ctb::chatbot::MediaList::~MediaList(v87);
    (*(v42 + 8))(v45, v41);
    sub_2426642B8(v38, &qword_27ECB5D48);
    LOBYTE(v90) = 0;
  }

  if (v90)
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.MediaList_(0);
    v48 = v47;
    v49 = sub_242676174(&qword_27ECB57B8, type metadata accessor for std.__1.optional_ctb.chatbot.MediaList_);
    CxxOptional.init(nilLiteral:)(v48, v49);
    if (v90 != 1)
    {
      sub_2426642B8(&v88, &qword_27ECB5D50);
    }
  }

  else
  {
    ctb::ClientAuthenticityRequest::Parameter::Parameter(v87, &v88);
    std::optional<ctb::chatbot::MenuItem>::~optional(&v88, std::vector<ctb::chatbot::MediaEntry>::__base_destruct_at_end[abi:ne200100], std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100]);
  }

  if (sub_2426AB120())
  {

    sub_2426739E8(v50, v86);
    ctb::bridging::makeOptional(v86, &v88);
    ctb::chatbot::OrgName::~OrgName(v86);

    LOBYTE(v90) = 0;
    ctb::ClientAuthenticityRequest::Parameter::Parameter(v86, &v88);
    std::optional<ctb::chatbot::MenuItem>::~optional(&v88, std::vector<ctb::chatbot::OrgNameEntry>::clear[abi:ne200100], std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100]);
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
    LOBYTE(v90) = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.OrgName_(0);
    v52 = v51;
    v53 = sub_242676174(&qword_27ECB57B0, type metadata accessor for std.__1.optional_ctb.chatbot.OrgName_);
    CxxOptional.init(nilLiteral:)(v52, v53);
    if ((v90 & 1) == 0)
    {
      sub_2426642B8(&v88, &qword_27ECB5D58);
    }
  }

  v54 = sub_2426AB100();
  sub_2426835F0(v54, v55, v85);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D60);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = sub_2426AB110();
  MEMORY[0x28223BE20](v59);
  sub_242664250(&v74 - v58, &v74 - v58, &qword_27ECB5D60);
  v60 = sub_2426AADC0();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 48))(&v74 - v58, 1, v60);
  if (v62 == 1)
  {
    sub_2426642B8(&v74 - v58, &qword_27ECB5D60);
    v88 = 0u;
    v89 = 0u;
    LOBYTE(v90) = 1;
  }

  else
  {
    v81 = &v74;
    v63 = *(v61 + 64);
    MEMORY[0x28223BE20](v62);
    v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
    v65 = (*(v61 + 32))(&v74 - v64, &v74 - v58, v60);
    MEMORY[0x28223BE20](v65);
    (*(v61 + 16))(&v74 - v64, &v74 - v64, v60);
    sub_242673D84(&v74 - v64, v84);
    ctb::bridging::makeOptional(v84, &v88);
    ctb::chatbot::CategoryList::~CategoryList(v84);
    (*(v61 + 8))(&v74 - v64, v60);
    sub_2426642B8(&v74 - v58, &qword_27ECB5D60);
    LOBYTE(v90) = 0;
    a2 = v82;
  }

  if (v90)
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CategoryList_(0);
    v67 = v66;
    v68 = sub_242676174(&qword_27ECB57A8, type metadata accessor for std.__1.optional_ctb.chatbot.CategoryList_);
    CxxOptional.init(nilLiteral:)(v67, v68);
    if (v90 != 1)
    {
      sub_2426642B8(&v88, &qword_27ECB5D68);
    }
  }

  else
  {
    ctb::ClientAuthenticityRequest::Parameter::Parameter(v84, &v88);
    std::optional<ctb::chatbot::MenuItem>::~optional(&v88, std::vector<std::string>::clear[abi:ne200100], std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100]);
  }

  type metadata accessor for std.__1.optional_ctb.chatbot.WebResources_(0);
  v70 = v69;
  v71 = sub_242676174(&qword_27ECB57A0, type metadata accessor for std.__1.optional_ctb.chatbot.WebResources_);
  CxxOptional.init(nilLiteral:)(v70, v71);
  v72 = sub_2426AB150();
  (*(*(v72 - 8) + 8))(v83, v72);
  std::optional<ctb::chatbot::CommunicationAddress>::optional[abi:ne200100](a2, &v96);
  std::optional<ctb::chatbot::CommunicationAddress>::~optional(&v96);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a2 + 104, v87);
  std::optional<ctb::chatbot::MenuItem>::~optional(v87, std::vector<ctb::chatbot::MediaEntry>::__base_destruct_at_end[abi:ne200100], std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100]);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a2 + 136, v86);
  std::optional<ctb::chatbot::MenuItem>::~optional(v86, std::vector<ctb::chatbot::OrgNameEntry>::clear[abi:ne200100], std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100]);
  std::optional<std::string>::optional[abi:ne200100](a2 + 168, v85);
  std::optional<std::string>::~optional(v85);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a2 + 200, v84);
  return std::optional<ctb::chatbot::MenuItem>::~optional(v84, std::vector<std::string>::clear[abi:ne200100], std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100]);
}

void sub_242674C3C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2426AB160();
  MEMORY[0x28223BE20](v7);
  sub_242664250(v6, v6, &qword_27ECB5D28);
  v8 = sub_2426AB150();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  if (v10 == 1)
  {
    sub_2426642B8(v6, &qword_27ECB5D28);
    memset(v22, 0, sizeof(v22));
    v23 = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.OrgDetails_(0);
    v15 = v14;
    v16 = sub_242676174(&qword_27ECB57C8, type metadata accessor for std.__1.optional_ctb.chatbot.OrgDetails_);
    CxxOptional.init(nilLiteral:)(v15, v16);
    if (v23 != 1)
    {
      sub_2426642B8(v22, &qword_27ECB5D30);
    }
  }

  else
  {
    v20 = &v20;
    v21 = a2;
    v11 = *(v9 + 64);
    MEMORY[0x28223BE20](v10);
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = (*(v9 + 32))(&v20 - v12, v6, v8);
    MEMORY[0x28223BE20](v13);
    (*(v9 + 16))(&v20 - v12, &v20 - v12, v8);
    sub_242673F88(&v20 - v12, v24);
    ctb::bridging::makeOptional(v24, v22);
    ctb::chatbot::OrgDetails::~OrgDetails(v24);
    (*(v9 + 8))(&v20 - v12, v8);
    sub_2426642B8(v6, &qword_27ECB5D28);
    v23 = 0;
    a2 = v21;
    std::optional<ctb::chatbot::OrgDetails>::optional[abi:ne200100](v24, v22);
    std::optional<ctb::chatbot::OrgDetails>::~optional(v22);
  }

  v17 = sub_2426AB170();
  sub_2426835F0(v17, v18, (a2 + 272));
  v19 = sub_2426AB180();
  (*(*(v19 - 8) + 8))(a1, v19);
  std::optional<ctb::chatbot::OrgDetails>::optional[abi:ne200100](a2, v24);
  std::optional<ctb::chatbot::OrgDetails>::~optional(v24);
}

uint64_t sub_242674FB8@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_2426AADB0();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = *(v4 + 16);
    if (v6)
    {
      v34 = a1;
      v35 = a2;
      v44.n128_u64[0] = MEMORY[0x277D84F90];
      v7 = v4;
      sub_242684D98(0, v6, 0);
      v5 = v44.n128_u64[0];
      v8 = sub_2426AAD80();
      v9 = v8;
      v10 = *(v8 - 8);
      v11 = *(v10 + 16);
      v39 = v10 + 16;
      v40 = v11;
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v33 = v7;
      v13 = v7 + v12;
      v14 = *(v10 + 64);
      v37 = *(v10 + 72);
      v38 = v14;
      v36 = (v10 + 8);
      do
      {
        v41 = &v33;
        v15 = v5;
        v16 = v38;
        MEMORY[0x28223BE20](v8);
        v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = v40;
        v19 = (v40)(v17, v13, v9);
        v5 = v15;
        MEMORY[0x28223BE20](v19);
        v18(v17, v17, v9);
        v20 = sub_2426AAD70();
        sub_24268D30C(v20, v21, &v42);
        v22 = sub_2426AAD60();
        sub_24268D30C(v22, v23, &v43);
        v24 = *v36;
        (*v36)(v17, v9);
        v24(v17, v9);
        v44.n128_u64[0] = v15;
        v26 = *(v15 + 16);
        v25 = *(v44.n128_u64[0] + 24);
        if (v26 >= v25 >> 1)
        {
          sub_242684D98((v25 > 1), v26 + 1, 1);
          v5 = v44.n128_u64[0];
        }

        *(v5 + 16) = v26 + 1;
        ctb::chatbot::AddressEntry::AddressEntry(v5 + 48 * v26 + 32, &v42);
        ctb::chatbot::AddressEntry::~AddressEntry(&v42.__r_.__value_.__l.__data_);
        v13 += v37;
        --v6;
      }

      while (v6);

      a1 = v34;
      a2 = v35;
    }

    else
    {
    }
  }

  v44 = 0uLL;
  v45 = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v44);
  v27 = *(v5 + 16);
  if (v27)
  {
    v28 = (v5 + 32);
    do
    {
      ctb::chatbot::AddressEntry::AddressEntry(&v42, v28);
      std::vector<ctb::chatbot::AddressEntry>::push_back[abi:ne200100](&v44, &v42);
      ctb::chatbot::AddressEntry::~AddressEntry(&v42.__r_.__value_.__l.__data_);
      v28 += 3;
      --v27;
    }

    while (v27);
  }

  v29 = sub_2426AB4F0();
  (*(*(v29 - 8) + 8))(a1, v29);

  v30 = std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v42, &v44);
  std::vector<ctb::chatbot::AddressEntry>::~vector[abi:ne200100](&v44, v30);
  v31 = std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2, &v42);
  return std::vector<ctb::chatbot::AddressEntry>::~vector[abi:ne200100](&v42, v31);
}

uint64_t sub_2426752B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_2426AB180();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AB520();
  sub_242674C3C(v9, v46);
  v10 = sub_2426AB570();
  sub_2426835F0(v10, v11, v45);
  v12 = sub_2426AB580();
  sub_2426835F0(v12, v13, v44);
  v14 = sub_2426AB540();
  sub_2426835F0(v14, v15, v43);
  v16 = sub_2426AB550();
  sub_2426835F0(v16, v17, v42);
  sub_2426AB510();
  sub_2426836A0(v6, v41);
  sub_2426AB500();
  sub_2426836A0(v6, v40);
  sub_2426AB530();
  sub_2426836A0(v6, v39);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2426AB560();
  MEMORY[0x28223BE20](v21);
  sub_242664250(v20, v20, &qword_27ECB5D18);
  v22 = sub_2426AB4F0();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v20, 1, v22);
  if (v24 == 1)
  {
    sub_2426642B8(v20, &qword_27ECB5D18);
    memset(v36, 0, sizeof(v36));
    v37 = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.AddressEntryList_(0);
    v29 = v28;
    v30 = sub_242676174(&qword_27ECB57D0, type metadata accessor for std.__1.optional_ctb.chatbot.AddressEntryList_);
    CxxOptional.init(nilLiteral:)(v29, v30);
    v31 = sub_2426AB590();
    (*(*(v31 - 8) + 8))(a1, v31);
    if (v37 != 1)
    {
      sub_2426642B8(v36, &qword_27ECB5D20);
    }
  }

  else
  {
    v34 = &v34;
    v35 = a2;
    v25 = *(v23 + 64);
    MEMORY[0x28223BE20](v24);
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    v27 = (*(v23 + 32))(&v34 - v26, v20, v22);
    MEMORY[0x28223BE20](v27);
    (*(v23 + 16))(&v34 - v26, &v34 - v26, v22);
    sub_242674FB8(&v34 - v26, v38);
    ctb::bridging::makeOptional(v38, v36);
    ctb::chatbot::WebResources::~WebResources(v38);
    (*(v23 + 8))(&v34 - v26, v22);
    sub_2426642B8(v20, &qword_27ECB5D18);
    v37 = 0;
    a2 = v35;
    v32 = sub_2426AB590();
    (*(*(v32 - 8) + 8))(a1, v32);
    ctb::ClientAuthenticityRequest::Parameter::Parameter(v38, v36);
    std::optional<ctb::chatbot::AddressEntryList>::~optional(v36);
  }

  ctb::chatbot::PCC::PCC(a2, v46);
  ctb::chatbot::PCC::~PCC(v46);
  std::optional<std::string>::optional[abi:ne200100](a2 + 304, v45);
  std::optional<std::string>::~optional(v45);
  std::optional<std::string>::optional[abi:ne200100](a2 + 336, v44);
  std::optional<std::string>::~optional(v44);
  std::optional<std::string>::optional[abi:ne200100](a2 + 368, v43);
  std::optional<std::string>::~optional(v43);
  std::optional<std::string>::optional[abi:ne200100](a2 + 400, v42);
  std::optional<std::string>::~optional(v42);
  std::optional<std::string>::optional[abi:ne200100](a2 + 432, v41);
  std::optional<std::string>::~optional(v41);
  std::optional<std::string>::optional[abi:ne200100](a2 + 464, v40);
  std::optional<std::string>::~optional(v40);
  std::optional<std::string>::optional[abi:ne200100](a2 + 496, v39);
  std::optional<std::string>::~optional(v39);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(a2 + 528, v38);
  return std::optional<ctb::chatbot::AddressEntryList>::~optional(v38);
}

void sub_2426757EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2426A9920();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2426A9940();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D08);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_2426AB0F0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_2426AAFE0();
  v20 = (*(v17 + 88))(v19, v16);
  if (MEMORY[0x277CF2CB0] && v20 == *MEMORY[0x277CF2CB0])
  {
    (*(v17 + 96))(v19, v16);
    v21 = sub_2426AB0E0();
    v42 = &v39;
    MEMORY[0x28223BE20](v21);
    v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v24;
    v26 = *(v24 + 32);
    v40 = v27;
    v26(v23, v19);
    v41 = sub_2426AB0D0();
    v28 = sub_2426AB0B0();
    if (v29)
    {
      sub_24268D30C(v28, v29, &v49);
      v50 = 0;
      std::string::basic_string[abi:ne200100](&v48, &v49);
      std::string::~string(&v49);
      v30 = v45;
    }

    else
    {
      memset(&v49, 0, sizeof(v49));
      v50 = 1;
      memset(&v48, 0, sizeof(v48));
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v48);
      v30 = v45;
      if (v50 != 1)
      {
        sub_2426642B8(&v49, &qword_27ECB5D10);
      }
    }

    sub_2426AB0C0();
    sub_242664250(v15, v13, &qword_27ECB5D08);
    if ((*(v30 + 48))(v13, 1, v7) == 1)
    {
      sub_2426642B8(v15, &qword_27ECB5D08);
      memset(&v49, 0, sizeof(v49));
      v50 = 1;
      memset(&v47, 0, sizeof(v47));
      std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v47);
      v33 = sub_2426AAFF0();
      (*(*(v33 - 8) + 8))(v46, v33);
      (*(v25 + 8))(v23, v40);
      if (v50 != 1)
      {
        sub_2426642B8(&v49, &qword_27ECB5D10);
      }
    }

    else
    {
      (*(v30 + 32))(v9, v13, v7);
      sub_24267BA1C(v6);
      v34 = sub_2426A98C0();
      v35 = v30;
      v37 = v36;
      (*(v43 + 8))(v6, v44);
      sub_24268D30C(v34, v37, &v49);
      (*(v35 + 8))(v9, v7);
      sub_2426642B8(v15, &qword_27ECB5D08);
      v50 = 0;
      v38 = sub_2426AAFF0();
      (*(*(v38 - 8) + 8))(v46, v38);
      (*(v25 + 8))(v23, v40);
      std::string::basic_string[abi:ne200100](&v47, &v49);
      std::string::~string(&v49);
    }

    v49.__r_.__value_.__s.__data_[0] = v41 & 1;
    std::string::basic_string[abi:ne200100](&v49.__r_.__value_.__r.__words[1], &v48);
    std::string::~string(&v48);
    std::string::basic_string[abi:ne200100](v51, &v47);
    std::string::~string(&v47);
    ctb::chatbot::VerificationDetails::VerificationDetails(a2, &v49);
    ctb::chatbot::VerificationDetails::~VerificationDetails(&v49.__r_.__value_.__l.__data_);
  }

  else if (MEMORY[0x277CF2CA0] && v20 == *MEMORY[0x277CF2CA0])
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100]((a2 + 8));
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100]((a2 + 32));
    v31 = sub_2426AAFF0();
    (*(*(v31 - 8) + 8))(v46, v31);
    *a2 = 0;
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100]((a2 + 8));
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100]((a2 + 32));
    v32 = sub_2426AAFF0();
    (*(*(v32 - 8) + 8))(v46, v32);
    *a2 = 0;
    (*(v17 + 8))(v19, v16);
  }
}

__n128 ctb::chatbot::PCC::PCC(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 264) = 0;
  if (a2[16].n128_u8[8] == 1)
  {
    result.n128_u64[0] = ctb::chatbot::OrgDetails::OrgDetails(a1, a2).n128_u64[0];
    *(a1 + 264) = 1;
  }

  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (a2[18].n128_u8[8] == 1)
  {
    result = a2[17];
    *(a1 + 288) = a2[18].n128_u64[0];
    *(a1 + 272) = result;
    a2[17].n128_u64[1] = 0;
    a2[18].n128_u64[0] = 0;
    a2[17].n128_u64[0] = 0;
    *(a1 + 296) = 1;
  }

  return result;
}

uint64_t std::optional<ctb::chatbot::AddressEntryList>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v3 = a1;
    std::vector<ctb::CPIMNamespace>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void ctb::bridging::makeOptional(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::__optional_move_base<ctb::chatbot::CommunicationAddress,false>::__optional_move_base[abi:ne200100](a2, a1);
  *(v3 + 104) = 0;
  *(v3 + 128) = 0;
  if (*(a1 + 128) == 1)
  {
    *(v3 + 104) = *(a1 + 104);
    *(v3 + 120) = *(a1 + 120);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(v3 + 128) = 1;
  }

  *(v3 + 136) = 0;
  *(v3 + 160) = 0;
  if (*(a1 + 160) == 1)
  {
    *(v3 + 136) = *(a1 + 136);
    *(v3 + 152) = *(a1 + 152);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    *(v3 + 160) = 1;
  }

  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  if (*(a1 + 192) == 1)
  {
    *(v3 + 168) = *(a1 + 168);
    *(v3 + 184) = *(a1 + 184);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0;
    *(v3 + 192) = 1;
  }

  *(v3 + 200) = 0;
  *(v3 + 224) = 0;
  if (*(a1 + 224) == 1)
  {
    *(v3 + 200) = *(a1 + 200);
    *(v3 + 216) = *(a1 + 216);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = 0;
    *(v3 + 224) = 1;
  }

  *(v3 + 232) = 0;
  *(v3 + 256) = 0;
  if (*(a1 + 256) == 1)
  {
    *(v3 + 232) = *(a1 + 232);
    *(v3 + 248) = *(a1 + 248);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = 0;
    *(v3 + 256) = 1;
  }

  *(v3 + 264) = 1;
}

uint64_t sub_242676174(unint64_t *a1, void (*a2)(uint64_t))
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

void ctb::chatbot::Media::~Media(void **this)
{
  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<ctb::chatbot::MenuL0Content>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(char *))
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v5 = v2[1];
    v6 = **a1;
    if (v5 != v3)
    {
      do
      {
        v8 = v5 - 248;
        a2(v5 - 240);
        v5 = v8;
      }

      while (v8 != v3);
      v6 = **a1;
    }

    v2[1] = v3;

    operator delete(v6);
  }
}

void std::vector<ctb::chatbot::URIEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ctb::chatbot::OrgNameEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_242676360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2426AAD50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (MEMORY[0x277CF2AE8] && v8 == *MEMORY[0x277CF2AE8])
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_2426AB5A0();
    v22 = &v19;
    v10 = *(v9 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v20 = a2;
    v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = (*(v10 + 32))(&v19 - v12, v7, v9);
    v21 = &v19;
    MEMORY[0x28223BE20](v13);
    (*(v10 + 16))(&v19 - v12, &v19 - v12, v9);
    sub_24267A518((&v19 - v12), v20);
    (*(v5 + 8))(a1, v4);
    return (*(v10 + 8))(&v19 - v12, v9);
  }

  else if (MEMORY[0x277CF2AA8] && v8 == *MEMORY[0x277CF2AA8])
  {
    (*(v5 + 96))(v7, v4);
    sub_242679A64(*v7, &v23);
    ctb::bridging::makeMessageVariant(&v23, v24);
    ctb::chatbot::SuggestedChipList::~SuggestedChipList(&v23);
    ctb::bridging::makeOptional(v24, a2);
    std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>::~variant[abi:ne200100](v24);
    return (*(v5 + 8))(a1, v4);
  }

  else
  {
    type metadata accessor for std.__1.optional_std.__1.variant_ctb.chatbot.CardMessage_ ctb.chatbot.CardCarouselMessage_ ctb.chatbot.SuggestedChipList__(0);
    v16 = v15;
    v17 = sub_24267AFB8(&qword_27ECB5798, type metadata accessor for std.__1.optional_std.__1.variant_ctb.chatbot.CardMessage_ ctb.chatbot.CardCarouselMessage_ ctb.chatbot.SuggestedChipList__);
    CxxOptional.init(nilLiteral:)(v16, v17);
    v18 = *(v5 + 8);
    v18(a1, v4);
    return (v18)(v7, v4);
  }
}

BOOL sub_2426766DC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_2426AAE90();
    ++v2;
    sub_24267ADAC();
  }

  while ((sub_2426AB9F0() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_2426767B4@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v73 = a2;
  v3 = sub_2426A9870();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v67 - v12;
  v13 = sub_2426AB2D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AB1D0();
  v17 = (*(v14 + 88))(v16, v13);
  if (MEMORY[0x277CF2D38] && v17 == *MEMORY[0x277CF2D38])
  {
    v72 = 1;
  }

  else if (MEMORY[0x277CF2D40] && v17 == *MEMORY[0x277CF2D40])
  {
    v72 = 2;
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    v72 = 0;
  }

  v18 = v79;
  v19 = sub_2426AB1E0();
  v20 = MEMORY[0x277CF2B90];
  v77 = v3;
  v78 = a1;
  v75 = v8;
  v76 = v4;
  if (v19)
  {
    v21 = v19;
    v22 = sub_2426AAE90();
    v23 = *(v22 - 8);
    v24 = v23[8];
    MEMORY[0x28223BE20](v22);
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
    v26 = v23[13];
    v26(&v67 - v25, *v20, v22);
    v71 = sub_2426766DC(&v67 - v25, v21);
    v27 = v23[1];
    v28 = v27(&v67 - v25, v22);
    MEMORY[0x28223BE20](v28);
    v26(&v67 - v25, *MEMORY[0x277CF2B98], v22);
    LODWORD(v69) = sub_2426766DC(&v67 - v25, v21);
    v29 = v27(&v67 - v25, v22);
    MEMORY[0x28223BE20](v29);
    v26(&v67 - v25, *MEMORY[0x277CF2BA0], v22);
    v30 = sub_2426766DC(&v67 - v25, v21);
    v27(&v67 - v25, v22);
    v31 = 0x10000;
    if (!v30)
    {
      v31 = 0;
    }

    v32 = 256;
    if (!v69)
    {
      v32 = 0;
    }

    v33 = sub_24267AD9C(v32 & 0xFFFFFFFE | v71 & 1 | v31);

    v84 = v33;
    LODWORD(v71) = HIBYTE(v33);
    v3 = v77;
    a1 = v78;
    v8 = v75;
    v4 = v76;
    v18 = v79;
  }

  else
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardTitleStyle_(0);
    v35 = v34;
    v36 = sub_24267AFB8(&qword_27ECB5768, type metadata accessor for std.__1.optional_ctb.chatbot.CardTitleStyle_);
    CxxOptional.init(nilLiteral:)(v35, v36);
    v33 = v84 | (BYTE2(v84) << 16);
    LODWORD(v71) = HIBYTE(v84);
  }

  v37 = sub_2426AB1F0();
  if (v37)
  {
    v38 = v37;
    v67 = v33;
    v39 = sub_2426AAE90();
    v40 = *(v39 - 8);
    v41 = v40[8];
    MEMORY[0x28223BE20](v39);
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
    v44 = v40[13];
    v44(&v67 - v42, *v43, v39);
    v69 = sub_2426766DC(&v67 - v42, v38);
    v45 = v40[1];
    v46 = v45(&v67 - v42, v39);
    MEMORY[0x28223BE20](v46);
    v44(&v67 - v42, *MEMORY[0x277CF2B98], v39);
    v68 = sub_2426766DC(&v67 - v42, v38);
    v47 = v45(&v67 - v42, v39);
    MEMORY[0x28223BE20](v47);
    v44(&v67 - v42, *MEMORY[0x277CF2BA0], v39);
    LOBYTE(v41) = sub_2426766DC(&v67 - v42, v38);
    v45(&v67 - v42, v39);
    v48 = 0x10000;
    if ((v41 & 1) == 0)
    {
      v48 = 0;
    }

    v49 = 256;
    if (!v68)
    {
      v49 = 0;
    }

    v50 = sub_24267AD9C(v49 & 0xFFFFFFFE | v69 | v48);

    v83 = v50;
    v51 = HIBYTE(v50);
    v3 = v77;
    a1 = v78;
    v8 = v75;
    v4 = v76;
    v18 = v79;
    v33 = v67;
  }

  else
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardDescriptionStyle_(0);
    v53 = v52;
    v54 = sub_24267AFB8(&qword_27ECB5760, type metadata accessor for std.__1.optional_ctb.chatbot.CardDescriptionStyle_);
    CxxOptional.init(nilLiteral:)(v53, v54);
    v50 = v83 | (BYTE2(v83) << 16);
    LOBYTE(v51) = HIBYTE(v83);
  }

  sub_2426AB2F0();
  v55 = v74;
  sub_242664250(v18, v74, &qword_27ECB5CE0);
  if ((*(v4 + 48))(v55, 1, v3) == 1)
  {
    sub_2426642B8(v18, &qword_27ECB5CE0);
    memset(v80, 0, sizeof(v80));
    v81 = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.CardStyle_(0);
    v57 = v56;
    v58 = sub_24267AFB8(&qword_27ECB5758, type metadata accessor for std.__1.optional_ctb.chatbot.CardStyle_);
    CxxOptional.init(nilLiteral:)(v57, v58);
    v59 = sub_2426AB300();
    (*(*(v59 - 8) + 8))(a1, v59);
    if (v81 != 1)
    {
      sub_2426642B8(v80, &qword_27ECB5DA8);
    }
  }

  else
  {
    (*(v4 + 32))(v8, v55, v3);
    v60 = v70;
    (*(v4 + 16))(v70, v8, v3);
    v61 = sub_2426A9850();
    sub_24268D30C(v61, v62, &v82);
    v63 = *(v4 + 8);
    v63(v60, v3);
    ctb::bridging::makeOptional(&v82, v80);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v82.__r_.__value_.__l.__data_);
    v63(v8, v3);
    sub_2426642B8(v18, &qword_27ECB5CE0);
    v81 = 0;
    v64 = sub_2426AB300();
    (*(*(v64 - 8) + 8))(a1, v64);
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v82, v80);
    std::optional<std::string>::~optional(v80);
  }

  v65 = v73;
  *v73 = v72;
  *(v65 + 2) = v33;
  *(v65 + 6) = BYTE2(v33);
  *(v65 + 7) = v71;
  *(v65 + 4) = v50;
  *(v65 + 10) = BYTE2(v50);
  *(v65 + 11) = v51;
  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100]((v65 + 4), &v82);
  return std::optional<std::string>::~optional(&v82);
}

uint64_t sub_2426771AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_2426A9870();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AB6B0();
  v11 = sub_2426A9850();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  sub_24268D30C(v11, v13, a2);
  v14 = sub_2426AB650();
  sub_24268D30C(v14, v15, (a2 + 24));
  v16 = sub_2426AB640();
  sub_2426AB630();
  sub_2426836A0(v6, a2 + 56);
  v17 = sub_2426AB680();
  sub_2426835F0(v17, v18, a2 + 88);
  result = sub_2426AB660();
  if (v20)
  {
    type metadata accessor for std.__1.optional_CUnsignedLong_(0);
    v22 = v21;
    v23 = sub_24267AFB8(&qword_27ECB5770, type metadata accessor for std.__1.optional_CUnsignedLong_);
    CxxOptional.init(nilLiteral:)(v22, v23);
    v24 = v37;
    v25 = v38;
  }

  else
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    ctb::bridging::makeOptional(result);
    v24 = v26;
    LOBYTE(v37) = v27 & 1;
    v25 = v27 & 1;
  }

  v28 = sub_2426AB690();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AB6A0();
  v32 = (*(v29 + 88))(v31, v28);
  if (MEMORY[0x277CF2F40] && v32 == *MEMORY[0x277CF2F40])
  {
    v33 = 1;
  }

  else if (MEMORY[0x277CF2F48] && v32 == *MEMORY[0x277CF2F48])
  {
    v33 = 2;
  }

  else if (MEMORY[0x277CF2F38] && v32 == *MEMORY[0x277CF2F38])
  {
    v33 = 3;
  }

  else
  {
    (*(v29 + 8))(v31, v28);
    v33 = 0;
  }

  v34 = sub_2426AB670();
  sub_2426835F0(v34, v35, a2 + 144);
  v36 = sub_2426AB6C0();
  result = (*(*(v36 - 8) + 8))(a1, v36);
  *(a2 + 48) = v16;
  *(a2 + 120) = v24;
  *(a2 + 128) = v25;
  *(a2 + 136) = v33;
  return result;
}

void **sub_242677538@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_2426AB300();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2426AB310();
  sub_2426767B4(v6, v41);
  v7 = sub_2426AB330();
  v8 = *(v7 + 16);
  if (v8)
  {
    v28 = a1;
    v29 = a2;
    v38.n128_u64[0] = MEMORY[0x277D84F90];
    sub_242684C6C(0, v8, 0);
    v9 = v38.n128_u64[0];
    v10 = sub_2426AB320();
    v34 = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 16);
    v11 += 16;
    v35 = v12;
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v27 = v7;
    v14 = v7 + v13;
    v15 = *(v11 + 48);
    v31 = *(v11 + 56);
    v32 = v15;
    v33 = v11;
    v30 = (v11 - 8);
    v16 = v10;
    do
    {
      v37 = &v27;
      v17 = v32;
      MEMORY[0x28223BE20](v10);
      v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = v35;
      v20 = (v35)(v18, v14, v16);
      v36 = &v27;
      MEMORY[0x28223BE20](v20);
      v19(v18, v18, v16);
      sub_242678FC0(v18, MEMORY[0x282214F90], MEMORY[0x282214F98], MEMORY[0x282214F80], MEMORY[0x282214F88], MEMORY[0x282214FA0], v40);
      (*v30)(v18, v16);
      v38.n128_u64[0] = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_242684C6C((v21 > 1), v22 + 1, 1);
        v9 = v38.n128_u64[0];
      }

      *(v9 + 16) = v22 + 1;
      ctb::chatbot::CardCarouselContent::CardCarouselContent(v9 + 280 * v22 + 32, v40);
      ctb::chatbot::CardCarouselContent::~CardCarouselContent(v40);
      v14 += v31;
      --v8;
    }

    while (v8);

    a1 = v28;
    a2 = v29;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v38 = 0uLL;
  v39 = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](&v38);
  v23 = *(v9 + 16);
  if (v23)
  {
    v24 = (v9 + 32);
    do
    {
      ctb::chatbot::CardCarouselContent::CardCarouselContent(v40, v24);
      std::vector<ctb::chatbot::CardCarouselContent>::push_back[abi:ne200100](&v38, v40);
      ctb::chatbot::CardCarouselContent::~CardCarouselContent(v40);
      v24 = (v24 + 280);
      --v23;
    }

    while (v23);
  }

  v25 = sub_2426AB340();
  (*(*(v25 - 8) + 8))(a1, v25);

  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](v40, &v38);
  std::vector<ctb::chatbot::CardCarouselContent>::~vector[abi:ne200100](&v38);
  ctb::chatbot::CardCarouselLayout::CardCarouselLayout(a2, v41);
  ctb::chatbot::CardCarouselLayout::~CardCarouselLayout(v41);
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2 + 3, v40);
  return std::vector<ctb::chatbot::CardCarouselContent>::~vector[abi:ne200100](&v40[0].__r_.__value_.__l.__data_);
}

uint64_t sub_2426778BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v3 = sub_2426A9870();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v67 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v71 = &v62[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v70 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v62[-v11];
  v13 = sub_2426AB220();
  v14 = MEMORY[0x277CF2B90];
  v15 = MEMORY[0x277CF2B98];
  v74 = v3;
  v75 = a1;
  v72 = v12;
  v73 = v4;
  if (v13)
  {
    v16 = v13;
    v17 = sub_2426AAE90();
    v18 = *(v17 - 8);
    v19 = v18[8];
    MEMORY[0x28223BE20](v17);
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    v21 = v18[13];
    v21(&v62[-v20], *v14, v17);
    v68 = sub_2426766DC(&v62[-v20], v16);
    v22 = v18[1];
    v23 = v22(&v62[-v20], v17);
    MEMORY[0x28223BE20](v23);
    v21(&v62[-v20], *MEMORY[0x277CF2B98], v17);
    LODWORD(v66) = sub_2426766DC(&v62[-v20], v16);
    v24 = v22(&v62[-v20], v17);
    MEMORY[0x28223BE20](v24);
    v21(&v62[-v20], *MEMORY[0x277CF2BA0], v17);
    v25 = sub_2426766DC(&v62[-v20], v16);
    v22(&v62[-v20], v17);
    v26 = 0x10000;
    if (!v25)
    {
      v26 = 0;
    }

    v27 = 256;
    if (!v66)
    {
      v27 = 0;
    }

    v28 = sub_24267AD9C(v27 & 0xFFFFFFFE | v68 & 1 | v26);

    v80 = v28;
    LODWORD(v68) = HIBYTE(v28);
    v3 = v74;
    a1 = v75;
    v12 = v72;
    v4 = v73;
    v15 = MEMORY[0x277CF2B98];
    v14 = MEMORY[0x277CF2B90];
  }

  else
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardTitleStyle_(0);
    v30 = v29;
    v31 = sub_24267AFB8(&qword_27ECB5768, type metadata accessor for std.__1.optional_ctb.chatbot.CardTitleStyle_);
    CxxOptional.init(nilLiteral:)(v30, v31);
    v28 = v80 | (BYTE2(v80) << 16);
    LODWORD(v68) = HIBYTE(v80);
  }

  v32 = sub_2426AB1E0();
  if (v32)
  {
    v33 = v32;
    v63 = v28;
    v34 = sub_2426AAE90();
    v65 = v62;
    v35 = *(v34 - 8);
    v36 = v35[8];
    MEMORY[0x28223BE20](v34);
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
    v38 = v35[13];
    v38(&v62[-v37], *v14, v34);
    v66 = sub_2426766DC(&v62[-v37], v33);
    v39 = v35[1];
    v40 = v39(&v62[-v37], v34);
    v64 = v62;
    MEMORY[0x28223BE20](v40);
    v38(&v62[-v37], *v15, v34);
    LODWORD(v65) = sub_2426766DC(&v62[-v37], v33);
    v41 = v39(&v62[-v37], v34);
    MEMORY[0x28223BE20](v41);
    v38(&v62[-v37], *MEMORY[0x277CF2BA0], v34);
    LOBYTE(v36) = sub_2426766DC(&v62[-v37], v33);
    v39(&v62[-v37], v34);
    v42 = 0x10000;
    if ((v36 & 1) == 0)
    {
      v42 = 0;
    }

    v43 = 256;
    if ((v65 & 1) == 0)
    {
      v43 = 0;
    }

    v44 = sub_24267AD9C(v43 & 0xFFFFFFFE | v66 | v42);

    v79 = v44;
    v45 = HIBYTE(v44);
    v3 = v74;
    a1 = v75;
    v12 = v72;
    v4 = v73;
    v46 = v71;
    v28 = v63;
  }

  else
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardDescriptionStyle_(0);
    v48 = v47;
    v49 = sub_24267AFB8(&qword_27ECB5760, type metadata accessor for std.__1.optional_ctb.chatbot.CardDescriptionStyle_);
    CxxOptional.init(nilLiteral:)(v48, v49);
    v44 = v79 | (BYTE2(v79) << 16);
    LOBYTE(v45) = HIBYTE(v79);
    v46 = v71;
  }

  sub_2426AB240();
  v50 = v70;
  sub_242664250(v12, v70, &qword_27ECB5CE0);
  if ((*(v4 + 48))(v50, 1, v3) == 1)
  {
    sub_2426642B8(v12, &qword_27ECB5CE0);
    memset(v76, 0, sizeof(v76));
    v77 = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.CardStyle_(0);
    v52 = v51;
    v53 = sub_24267AFB8(&qword_27ECB5758, type metadata accessor for std.__1.optional_ctb.chatbot.CardStyle_);
    CxxOptional.init(nilLiteral:)(v52, v53);
    v54 = sub_2426AB250();
    (*(*(v54 - 8) + 8))(a1, v54);
    if (v77 != 1)
    {
      sub_2426642B8(v76, &qword_27ECB5DA8);
    }
  }

  else
  {
    (*(v4 + 32))(v46, v50, v3);
    v55 = v67;
    (*(v4 + 16))(v67, v46, v3);
    v56 = sub_2426A9850();
    sub_24268D30C(v56, v57, &v78);
    v58 = *(v4 + 8);
    v58(v55, v3);
    ctb::bridging::makeOptional(&v78, v76);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v78.__r_.__value_.__l.__data_);
    v58(v46, v3);
    sub_2426642B8(v12, &qword_27ECB5CE0);
    v77 = 0;
    v59 = sub_2426AB250();
    (*(*(v59 - 8) + 8))(a1, v59);
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v78, v76);
    std::optional<std::string>::~optional(v76);
  }

  v60 = v69;
  *v69 = 1;
  *(v60 + 4) = v28;
  *(v60 + 10) = BYTE2(v28);
  *(v60 + 11) = v68;
  *(v60 + 6) = v44;
  *(v60 + 14) = BYTE2(v44);
  *(v60 + 15) = v45;
  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100]((v60 + 2), &v78);
  return std::optional<std::string>::~optional(&v78);
}

uint64_t sub_2426781C4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v77 = a2;
  v3 = sub_2426A9870();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v74 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v69[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5CE0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v78 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v83 = &v69[-v12];
  v13 = sub_2426AB1C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2426AB1D0();
  v17 = (*(v14 + 88))(v16, v13);
  if (MEMORY[0x277CF2CE0] && v17 == *MEMORY[0x277CF2CE0])
  {
    v76 = 1;
  }

  else if (MEMORY[0x277CF2CE8] && v17 == *MEMORY[0x277CF2CE8])
  {
    v76 = 2;
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    v76 = 0;
  }

  v18 = v83;
  v19 = sub_2426AB1E0();
  v20 = MEMORY[0x277CF2B90];
  v21 = MEMORY[0x277CF2B98];
  v81 = v3;
  v82 = a1;
  v79 = v8;
  v80 = v4;
  if (v19)
  {
    v22 = v19;
    v23 = sub_2426AAE90();
    v24 = *(v23 - 8);
    v25 = v24[8];
    MEMORY[0x28223BE20](v23);
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    v28 = v24[13];
    v28(&v69[-v26], *v27, v23);
    v75 = sub_2426766DC(&v69[-v26], v22);
    v29 = v24[1];
    v30 = v29(&v69[-v26], v23);
    MEMORY[0x28223BE20](v30);
    v28(&v69[-v26], *MEMORY[0x277CF2B98], v23);
    LODWORD(v73) = sub_2426766DC(&v69[-v26], v22);
    v31 = v29(&v69[-v26], v23);
    MEMORY[0x28223BE20](v31);
    v28(&v69[-v26], *MEMORY[0x277CF2BA0], v23);
    v32 = sub_2426766DC(&v69[-v26], v22);
    v29(&v69[-v26], v23);
    v33 = 0x10000;
    if (!v32)
    {
      v33 = 0;
    }

    v34 = 256;
    if (!v73)
    {
      v34 = 0;
    }

    v35 = sub_24267AD9C(v34 & 0xFFFFFFFE | v75 & 1 | v33);

    v88 = v35;
    LODWORD(v75) = HIBYTE(v35);
    v3 = v81;
    a1 = v82;
    v8 = v79;
    v4 = v80;
    v18 = v83;
    v21 = MEMORY[0x277CF2B98];
    v20 = MEMORY[0x277CF2B90];
  }

  else
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardTitleStyle_(0);
    v37 = v36;
    v38 = sub_24267AFB8(&qword_27ECB5768, type metadata accessor for std.__1.optional_ctb.chatbot.CardTitleStyle_);
    CxxOptional.init(nilLiteral:)(v37, v38);
    v35 = v88 | (BYTE2(v88) << 16);
    LODWORD(v75) = HIBYTE(v88);
  }

  v39 = sub_2426AB1F0();
  if (v39)
  {
    v40 = v39;
    v70 = v35;
    v41 = sub_2426AAE90();
    v72 = v69;
    v42 = *(v41 - 8);
    v43 = v42[8];
    MEMORY[0x28223BE20](v41);
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
    v45 = v42[13];
    v45(&v69[-v44], *v20, v41);
    v73 = sub_2426766DC(&v69[-v44], v40);
    v46 = v42[1];
    v47 = v46(&v69[-v44], v41);
    v71 = v69;
    MEMORY[0x28223BE20](v47);
    v45(&v69[-v44], *v21, v41);
    LODWORD(v72) = sub_2426766DC(&v69[-v44], v40);
    v48 = v46(&v69[-v44], v41);
    MEMORY[0x28223BE20](v48);
    v45(&v69[-v44], *MEMORY[0x277CF2BA0], v41);
    LOBYTE(v43) = sub_2426766DC(&v69[-v44], v40);
    v46(&v69[-v44], v41);
    v49 = 0x10000;
    if ((v43 & 1) == 0)
    {
      v49 = 0;
    }

    v50 = 256;
    if ((v72 & 1) == 0)
    {
      v50 = 0;
    }

    v51 = sub_24267AD9C(v50 & 0xFFFFFFFE | v73 | v49);

    v87 = v51;
    v52 = HIBYTE(v51);
    v3 = v81;
    a1 = v82;
    v8 = v79;
    v4 = v80;
    v18 = v83;
    v35 = v70;
  }

  else
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardDescriptionStyle_(0);
    v54 = v53;
    v55 = sub_24267AFB8(&qword_27ECB5760, type metadata accessor for std.__1.optional_ctb.chatbot.CardDescriptionStyle_);
    CxxOptional.init(nilLiteral:)(v54, v55);
    v51 = v87 | (BYTE2(v87) << 16);
    LOBYTE(v52) = HIBYTE(v87);
  }

  sub_2426AB200();
  v56 = v78;
  sub_242664250(v18, v78, &qword_27ECB5CE0);
  if ((*(v4 + 48))(v56, 1, v3) == 1)
  {
    sub_2426642B8(v18, &qword_27ECB5CE0);
    memset(v84, 0, sizeof(v84));
    v85 = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.CardStyle_(0);
    v58 = v57;
    v59 = sub_24267AFB8(&qword_27ECB5758, type metadata accessor for std.__1.optional_ctb.chatbot.CardStyle_);
    CxxOptional.init(nilLiteral:)(v58, v59);
    v60 = sub_2426AB210();
    (*(*(v60 - 8) + 8))(a1, v60);
    if (v85 != 1)
    {
      sub_2426642B8(v84, &qword_27ECB5DA8);
    }
  }

  else
  {
    (*(v4 + 32))(v8, v56, v3);
    v61 = v74;
    (*(v4 + 16))(v74, v8, v3);
    v62 = sub_2426A9850();
    sub_24268D30C(v62, v63, &v86);
    v64 = *(v4 + 8);
    v64(v61, v3);
    ctb::bridging::makeOptional(&v86, v84);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v86.__r_.__value_.__l.__data_);
    v64(v8, v3);
    sub_2426642B8(v18, &qword_27ECB5CE0);
    v85 = 0;
    v65 = sub_2426AB210();
    (*(*(v65 - 8) + 8))(a1, v65);
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v86, v84);
    std::optional<std::string>::~optional(v84);
  }

  v66 = v77;
  v67 = v76;
  *v77 = 2;
  v66[1] = v67;
  *(v66 + 4) = v35;
  *(v66 + 10) = BYTE2(v35);
  *(v66 + 11) = v75;
  *(v66 + 6) = v51;
  *(v66 + 14) = BYTE2(v51);
  *(v66 + 15) = v52;
  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100]((v66 + 4), &v86);
  return std::optional<std::string>::~optional(&v86);
}

uint64_t sub_242678BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2426AB260();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (MEMORY[0x277CF2D18] && v8 == *MEMORY[0x277CF2D18])
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_2426AB250();
    v19 = &v18;
    v10 = *(v9 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = (*(v10 + 32))(v12, v7, v9);
    v18 = &v18;
    MEMORY[0x28223BE20](v13);
    (*(v10 + 16))(v12, v12, v9);
    sub_2426778BC(v12, a2);
LABEL_7:
    (*(v5 + 8))(a1, v4);
    return (*(v10 + 8))(v12, v9);
  }

  if (MEMORY[0x277CF2D08] && v8 == *MEMORY[0x277CF2D08])
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_2426AB210();
    v19 = &v18;
    v10 = *(v9 - 8);
    v14 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v12 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = (*(v10 + 32))(v12, v7, v9);
    v18 = &v18;
    MEMORY[0x28223BE20](v15);
    (*(v10 + 16))(v12, v12, v9);
    sub_2426781C4(v12, a2);
    goto LABEL_7;
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  ctb::chatbot::CardLayout::CardLayout(a2);
  v17 = *(v5 + 8);
  v17(a1, v4);
  return (v17)(v7, v4);
}

uint64_t sub_242678FC0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v71 = a7;
  v72 = a6;
  v74 = a5;
  v75 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  v14 = a2(v12);
  MEMORY[0x28223BE20](v14);
  sub_242664250(v13, v13, &qword_27ECB5D70);
  v15 = sub_2426AB6C0();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v13, 1, v15);
  if (v17 == 1)
  {
    sub_2426642B8(v13, &qword_27ECB5D70);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    v92 = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.CardMedia_(0);
    v22 = v21;
    v23 = sub_24267AFB8(&qword_27ECB5790, type metadata accessor for std.__1.optional_ctb.chatbot.CardMedia_);
    CxxOptional.init(nilLiteral:)(v22, v23);
    v24 = v76;
    if (v92 != 1)
    {
      sub_2426642B8(&v80, &qword_27ECB5D78);
    }
  }

  else
  {
    v18 = *(v16 + 64);
    MEMORY[0x28223BE20](v17);
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v20 = (*(v16 + 32))(v70 - v19, v13, v15);
    MEMORY[0x28223BE20](v20);
    (*(v16 + 16))(v70 - v19, v70 - v19, v15);
    sub_2426771AC(v70 - v19, v93);
    ctb::bridging::makeOptional(v93, &v80);
    ctb::chatbot::CardMedia::~CardMedia(v93);
    (*(v16 + 8))(v70 - v19, v15);
    sub_2426642B8(v13, &qword_27ECB5D70);
    v92 = 0;
    std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](v93, &v80);
    std::optional<ctb::chatbot::CardMedia>::~optional(&v80);
    v24 = v76;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D80);
  v73 = v70;
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = a3(v27);
  MEMORY[0x28223BE20](v29);
  sub_242664250(v70 - v28, v70 - v28, &qword_27ECB5D80);
  v30 = sub_2426AB6E0();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v70 - v28, 1, v30);
  if (v32 == 1)
  {
    sub_2426642B8(v70 - v28, &qword_27ECB5D80);
    v80 = 0u;
    v81 = 0u;
    LOBYTE(v82) = 1;
  }

  else
  {
    v70[1] = v70;
    v33 = *(v31 + 64);
    MEMORY[0x28223BE20](v32);
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
    v35 = (*(v31 + 32))(v70 - v34, v70 - v28, v30);
    MEMORY[0x28223BE20](v35);
    v36 = (*(v31 + 16))(v70 - v34, v70 - v34, v30);
    v37 = MEMORY[0x245D15670](v36);
    sub_24268D30C(v37, v38, &v79);
    v39 = *(v31 + 8);
    v39(v70 - v34, v30);
    ctb::bridging::makeOptional(&v79, &v80);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v79.__r_.__value_.__l.__data_);
    v39(v70 - v34, v30);
    sub_2426642B8(v70 - v28, &qword_27ECB5D80);
    LOBYTE(v82) = 0;
    v24 = v76;
  }

  if (v82)
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardTitle_(0);
    v41 = v40;
    v42 = sub_24267AFB8(&qword_27ECB5788, type metadata accessor for std.__1.optional_ctb.chatbot.CardTitle_);
    CxxOptional.init(nilLiteral:)(v41, v42);
    if (v82 != 1)
    {
      sub_2426642B8(&v80, &qword_27ECB5D88);
    }
  }

  else
  {
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v79, &v80);
    std::optional<std::string>::~optional(&v80);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5D90);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = v75(v45);
  MEMORY[0x28223BE20](v47);
  sub_242664250(v70 - v46, v70 - v46, &qword_27ECB5D90);
  v48 = sub_2426AB010();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v70 - v46, 1, v48);
  if (v50 == 1)
  {
    sub_2426642B8(v70 - v46, &qword_27ECB5D90);
    v80 = 0u;
    v81 = 0u;
    LOBYTE(v82) = 1;
  }

  else
  {
    v75 = v70;
    v73 = v70;
    v51 = *(v49 + 64);
    MEMORY[0x28223BE20](v50);
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
    v53 = (*(v49 + 32))(v70 - v52, v70 - v46, v48);
    MEMORY[0x28223BE20](v53);
    v54 = (*(v49 + 16))(v70 - v52, v70 - v52, v48);
    v55 = MEMORY[0x245D14FA0](v54);
    sub_24268D30C(v55, v56, &v78);
    v57 = *(v49 + 8);
    v57(v70 - v52, v48);
    ctb::bridging::makeOptional(&v78, &v80);
    ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v78.__r_.__value_.__l.__data_);
    v57(v70 - v52, v48);
    sub_2426642B8(v70 - v46, &qword_27ECB5D90);
    LOBYTE(v82) = 0;
    v24 = v76;
  }

  if (v82)
  {
    type metadata accessor for std.__1.optional_ctb.chatbot.CardDescription_(0);
    v59 = v58;
    v60 = sub_24267AFB8(&qword_27ECB5780, type metadata accessor for std.__1.optional_ctb.chatbot.CardDescription_);
    v61 = CxxOptional.init(nilLiteral:)(v59, v60);
    if (v82 != 1)
    {
      v61 = sub_2426642B8(&v80, &qword_27ECB5D98);
    }
  }

  else
  {
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v78, &v80);
    v61 = std::optional<std::string>::~optional(&v80);
  }

  if (v74(v61))
  {

    sub_242679A64(v62, v77);
    ctb::bridging::makeOptional(v77, &v80);
    ctb::chatbot::SuggestedChipList::~SuggestedChipList(v77);

    v63 = v72(0);
    (*(*(v63 - 8) + 8))(v24, v63);
    LOBYTE(v82) = 0;
    ctb::ClientAuthenticityRequest::Parameter::Parameter(v77, &v80);
    std::optional<ctb::chatbot::SuggestedChipList>::~optional(&v80);
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
    LOBYTE(v82) = 1;
    type metadata accessor for std.__1.optional_ctb.chatbot.SuggestedChipList_(0);
    v65 = v64;
    v66 = sub_24267AFB8(&qword_27ECB5778, type metadata accessor for std.__1.optional_ctb.chatbot.SuggestedChipList_);
    CxxOptional.init(nilLiteral:)(v65, v66);
    v67 = v72(0);
    (*(*(v67 - 8) + 8))(v24, v67);
    if (v82 != 1)
    {
      sub_2426642B8(&v80, &qword_27ECB5DA0);
    }
  }

  v68 = v71;
  std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](v71, v93);
  std::optional<ctb::chatbot::CardMedia>::~optional(v93);
  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](v68 + 184, &v79);
  std::optional<std::string>::~optional(&v79);
  std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](v68 + 216, &v78);
  std::optional<std::string>::~optional(&v78);
  ctb::ClientAuthenticityRequest::Parameter::Parameter(v68 + 248, v77);
  return std::optional<ctb::chatbot::SuggestedChipList>::~optional(v77);
}

uint64_t sub_242679A64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<ctb::ProvisioningConfiguration::AccessControl::Server>::vector[abi:ne200100](a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_2426AAD10();
    v6 = v5;
    v7 = *(v5 - 8);
    v8 = *(v7 + 16);
    v7 += 16;
    v88 = v8;
    v9 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v65[1] = a1;
    v10 = a1 + v9;
    v86 = (v7 + 72);
    v67 = (v7 + 80);
    v11 = MEMORY[0x277CF2A88];
    v12 = *(v7 + 48);
    v82 = *(v7 + 56);
    v83 = (v7 - 8);
    v87 = v7;
    v84 = a2;
    v85 = v12;
    v66 = v5;
    while (1)
    {
      v91 = v65;
      v13 = v85;
      MEMORY[0x28223BE20](v5);
      v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v88;
      v16 = (v88)(v14, v10, v6);
      v90 = v65;
      MEMORY[0x28223BE20](v16);
      v15(v14, v14, v6);
      v17 = (*v86)(v14, v6);
      if (v11)
      {
        if (v17 == *v11)
        {
          break;
        }
      }

      if (!MEMORY[0x277CF2A90] || v17 != *MEMORY[0x277CF2A90])
      {
        v97 = 0;
        memset(v96, 0, sizeof(v96));
        v50 = ctb::chatbot::SuggestedChip::SuggestedChip(v96);
        v51 = *v83;
        (*v83)(v14, v6, v50);
        v51(v14, v6);
LABEL_17:
        v47 = v84;
        goto LABEL_18;
      }

      (*v67)(v14, v6);
      v40 = sub_2426AB440();
      v81 = v65;
      v41 = *(v40 - 8);
      v42 = *(v41 + 64);
      MEMORY[0x28223BE20](v40);
      v89 = v4;
      v43 = v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = (*(v41 + 32))(v43, v14, v40);
      v80 = v65;
      MEMORY[0x28223BE20](v44);
      v79 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = *(v41 + 16);
      v46 = v45(v43, v43, v40);
      v78 = v65;
      MEMORY[0x28223BE20](v46);
      v11 = MEMORY[0x277CF2A88];
      v45(v43, v43, v40);
      v47 = v84;
      sub_2426809F8(v43, &v98);
      ctb::bridging::makeSuggestedChipVariant(&v98, &v96[2]);
      ctb::chatbot::SuggestedAction::~SuggestedAction(&v98);
      v48 = *(v41 + 8);
      v48(v43, v40);
      v49 = v43;
      v4 = v89;
      v48(v49, v40);
      v6 = v66;
      (*v83)(v79, v66);
      v96[0] = 2;
LABEL_18:
      ctb::chatbot::SuggestedChip::SuggestedChip(&v98, v96);
      ctb::chatbot::SuggestedChip::~SuggestedChip(v96);
      std::vector<ctb::chatbot::SuggestedChip>::push_back[abi:ne200100](v47, &v98);
      ctb::chatbot::SuggestedChip::~SuggestedChip(&v98);
      v10 += v82;
      if (!--v4)
      {
      }
    }

    v89 = v4;
    (*v67)(v14, v6);
    v18 = sub_2426AB400();
    v81 = v65;
    v19 = *(v18 - 8);
    v20 = *(v19 + 8);
    MEMORY[0x28223BE20](v18);
    v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
    v22 = (*(v19 + 4))(v65 - v21, v14, v18);
    v77 = v65;
    MEMORY[0x28223BE20](v22);
    v78 = v65 - v21;
    v79 = v19;
    v23 = *(v19 + 2);
    v24 = v23(v65 - v21, v65 - v21, v18);
    v75 = v65;
    MEMORY[0x28223BE20](v24);
    v76 = v65 - v21;
    v80 = v18;
    v23(v76, v76, v18);
    v25 = sub_2426AB0A0();
    v73 = v65;
    v69 = *(v25 - 8);
    v70 = v25;
    MEMORY[0x28223BE20](v25);
    v27 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v65 - v21;
    v28 = sub_2426AB3F0();
    v29 = MEMORY[0x245D15020](v28);
    sub_24268D30C(v29, v30, &v95);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECB5DB8);
    v72 = v65;
    v32 = *(*(v31 - 8) + 64);
    MEMORY[0x28223BE20](v31 - 8);
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = v65 - v33;
    v68 = v27;
    v35 = sub_2426AB090();
    v71 = v65;
    MEMORY[0x28223BE20](v35);
    v36 = v65 - v33;
    sub_242664250(v65 - v33, v65 - v33, &qword_27ECB5DB8);
    v37 = sub_2426AB5C0();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 48))(v65 - v33, 1, v37);
    if (v39 == 1)
    {
      sub_2426642B8(v65 - v33, &qword_27ECB5DB8);
      memset(v92, 0, sizeof(v92));
      v93 = 1;
    }

    else
    {
      v65[2] = v65;
      v52 = *(v38 + 64);
      MEMORY[0x28223BE20](v39);
      v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
      v54 = (*(v38 + 32))(v65 - v53, v36, v37);
      v65[3] = v65;
      MEMORY[0x28223BE20](v54);
      v55 = (*(v38 + 16))(v65 - v53, v65 - v53, v37);
      v56 = MEMORY[0x245D15550](v55);
      sub_24268D30C(v56, v57, &v94);
      v58 = *(v38 + 8);
      v58(v65 - v53, v37);
      ctb::bridging::makeOptional(&v94, v92);
      ctb::SIPConferenceInfo::SubjectExt::~SubjectExt(&v94.__r_.__value_.__l.__data_);
      v58(v65 - v53, v37);
      sub_2426642B8(v34, &qword_27ECB5DB8);
      v93 = 0;
    }

    v6 = v66;
    v4 = v89;
    v11 = MEMORY[0x277CF2A88];
    if (v93)
    {
      type metadata accessor for std.__1.optional_ctb.chatbot.PostbackData_(0);
      v60 = v59;
      v61 = sub_24267AFB8(&qword_27ECB57D8, type metadata accessor for std.__1.optional_ctb.chatbot.PostbackData_);
      CxxOptional.init(nilLiteral:)(v60, v61);
      (*(v69 + 8))(v68, v70);
      if (v93 != 1)
      {
        sub_2426642B8(v92, &qword_27ECB5DC0);
      }
    }

    else
    {
      (*(v69 + 8))(v68, v70);
      std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v94, v92);
      std::optional<std::string>::~optional(v92);
    }

    std::string::basic_string[abi:ne200100](&v98, &v95);
    std::string::~string(&v95);
    std::optional<ctb::chatbot::PostbackData>::optional[abi:ne200100](&v99, &v94);
    std::optional<std::string>::~optional(&v94);
    v62 = v80;
    v63 = *(v79 + 1);
    v63(v74, v80);
    ctb::bridging::makeSuggestedChipVariant(&v98, &v96[2]);
    ctb::chatbot::Media::~Media(&v98);
    v63(v76, v62);
    v63(v78, v62);
    (*v83)(v14, v6);
    v96[0] = 1;
    goto LABEL_17;
  }
}

__n128 ctb::bridging::makeMessageVariant@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  a2[20].n128_u32[2] = 2;
  return result;
}

{
  a2->n128_u64[0] = a1->n128_u64[0];
  a2->n128_u32[2] = a1->n128_u32[2];
  a2[1].n128_u8[0] = 0;
  a2[2].n128_u8[8] = 0;
  if (a1[2].n128_u8[8] == 1)
  {
    a2[1] = a1[1];
    a2[2].n128_u64[0] = a1[2].n128_u64[0];
    a1[1].n128_u64[1] = 0;
    a1[2].n128_u64[0] = 0;
    a1[1].n128_u64[0] = 0;
    a2[2].n128_u8[8] = 1;
  }

  result = a1[3];
  a2[3] = result;
  a2[4].n128_u64[0] = a1[4].n128_u64[0];
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  a1[3].n128_u64[0] = 0;
  a2[20].n128_u32[2] = 1;
  return result;
}

uint64_t sub_24267A518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2426AB5A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (MEMORY[0x277CF2EC0] && v8 == *MEMORY[0x277CF2EC0])
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_2426AB2A0();
    v32 = &v31;
    v10 = *(v9 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v34 = a2;
    v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = (*(v10 + 32))(v12, v7, v9);
    v33 = &v31;
    MEMORY[0x28223BE20](v13);
    (*(v10 + 16))(v12, v12, v9);
    v14 = sub_2426AB260();
    MEMORY[0x28223BE20](v14 - 8);
    v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AB270();
    sub_242678BE8(v16, v35);
    v17 = sub_2426AB280();
    MEMORY[0x28223BE20](v17 - 8);
    v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2426AB290();
    sub_242678FC0(v19, MEMORY[0x282214F50], MEMORY[0x282214F58], MEMORY[0x282214F40], MEMORY[0x282214F48], MEMORY[0x282214F60], &v36);
    v20 = *(v10 + 8);
    v20(v12, v9);
    ctb::bridging::makeMessageVariant(v35, v37);
    ctb::chatbot::CardMessage::~CardMessage(v35);
    ctb::bridging::makeOptional(v37, v34);
    std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>::~variant[abi:ne200100](v37);
    (*(v5 + 8))(a1, v4);
    return (v20)(v12, v9);
  }

  else if (MEMORY[0x277CF2ED0] && v8 == *MEMORY[0x277CF2ED0])
  {
    v33 = a1;
    (*(v5 + 96))(v7, v4);
    v22 = sub_2426AB340();
    v32 = &v31;
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v22);
    v34 = a2;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
    v26 = (*(v23 + 32))(&v31 - v25, v7, v22);
    MEMORY[0x28223BE20](v26);
    (*(v23 + 16))(&v31 - v25, &v31 - v25, v22);
    sub_242677538(&v31 - v25, v35);
    ctb::bridging::makeMessageVariant(v35, v37);
    ctb::chatbot::CardCarouselMessage::~CardCarouselMessage(v35);
    ctb::bridging::makeOptional(v37, v34);
    std::variant<ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>::~variant[abi:ne200100](v37);
    (*(v5 + 8))(v33, v4);
    return (*(v23 + 8))(&v31 - v25, v22);
  }

  else
  {
    type metadata accessor for std.__1.optional_std.__1.variant_ctb.chatbot.CardMessage_ ctb.chatbot.CardCarouselMessage_ ctb.chatbot.SuggestedChipList__(0);
    v28 = v27;
    v29 = sub_24267AFB8(&qword_27ECB5798, type metadata accessor for std.__1.optional_std.__1.variant_ctb.chatbot.CardMessage_ ctb.chatbot.CardCarouselMessage_ ctb.chatbot.SuggestedChipList__);
    CxxOptional.init(nilLiteral:)(v28, v29);
    v30 = *(v5 + 8);
    v30(a1, v4);
    return v30(v7, v4);
  }
}

void ctb::chatbot::CardCarouselMessage::~CardCarouselMessage(void **this)
{
  v2 = this + 6;
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t ctb::bridging::makeMessageVariant@<X0>(ctb::bridging *this@<X0>, uint64_t a2@<X8>)
{
  result = std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>::__union[abi:ne200100]<ctb::chatbot::CardMessage>(a2, this);
  *(result + 328) = 0;
  return result;
}

void ctb::chatbot::CardMessage::~CardMessage(ctb::chatbot::CardMessage *this)
{
  if (*(this + 320) == 1)
  {
    v2 = (this + 296);
    std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 288) == 1 && *(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 256) == 1 && *(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  std::optional<ctb::chatbot::CardMedia>::~optional(this + 48);
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t std::optional<ctb::chatbot::SuggestedChipList>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v3 = a1;
    std::vector<ctb::chatbot::SuggestedChip>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

uint64_t ctb::chatbot::CardLayout::CardLayout(uint64_t this)
{
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 40) = 0;
  *this = 0;
  *(this + 8) = 0;
  return this;
}

unint64_t sub_24267ADAC()
{
  result = qword_27ECB5DB0;
  if (!qword_27ECB5DB0)
  {
    sub_2426AAE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECB5DB0);
  }

  return result;
}

void **std::vector<ctb::chatbot::CardCarouselContent>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<ctb::chatbot::CardCarouselContent>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

__n128 ctb::chatbot::CardCarouselLayout::CardCarouselLayout(uint64_t a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  *(a1 + 8) = a2->n128_u32[2];
  *a1 = v2;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (a2[2].n128_u8[8] == 1)
  {
    result = a2[1];
    *(a1 + 32) = a2[2].n128_u64[0];
    *(a1 + 16) = result;
    a2[1].n128_u64[1] = 0;
    a2[2].n128_u64[0] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 40) = 1;
  }

  return result;
}

void ctb::chatbot::CardCarouselLayout::~CardCarouselLayout(void **this)
{
  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t std::vector<ctb::chatbot::SuggestedChip>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ctb::chatbot::SuggestedChip>::__emplace_back_slow_path<ctb::chatbot::SuggestedChip const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100]((v3 + 2), (a2 + 2));
    result = (v3 + 58);
    *(a1 + 8) = v3 + 58;
  }

  *(a1 + 8) = result;
  return result;
}

double ctb::chatbot::SuggestedChip::SuggestedChip(ctb::chatbot::SuggestedChip *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 212) = 0u;
  return result;
}

_DWORD *ctb::chatbot::SuggestedChip::SuggestedChip(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t sub_24267AFB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ctb::bridging::makeSuggestedChipVariant@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 16) = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (*(result + 48) == 1)
  {
    *(a2 + 24) = *(result + 24);
    *(a2 + 40) = *(result + 40);
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = 0;
    *(a2 + 48) = 1;
  }

  *(a2 + 216) = 1;
  return result;
}

uint64_t ctb::bridging::makeSuggestedChipVariant@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = std::__variant_detail::__alt<0ul,ctb::chatbot::SuggestedAction>::__alt[abi:ne200100]<ctb::chatbot::SuggestedAction>(a2, a1);
  *(result + 216) = 0;
  return result;
}

void ctb::chatbot::SuggestedAction::~SuggestedAction(void **this)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((this + 9));
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,ctb::chatbot::CardMessage,ctb::chatbot::CardCarouselMessage,ctb::chatbot::SuggestedChipList>::__union[abi:ne200100]<ctb::chatbot::CardMessage>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = 1;
  }

  std::optional<ctb::chatbot::CardMedia>::optional[abi:ne200100](a1 + 48, (a2 + 48));
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v5 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v5;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 232) = 0;
    *(a1 + 256) = 1;
  }

  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    v6 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v6;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    *(a2 + 264) = 0;
    *(a1 + 288) = 1;
  }

  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  if (*(a2 + 320) == 1)
  {
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a1 + 320) = 1;
  }

  return a1;
}

uint64_t std::vector<ctb::chatbot::SuggestedChip>::__emplace_back_slow_path<ctb::chatbot::SuggestedChip const&>(uint64_t a1, _DWORD *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ctb::chatbot::SuggestedChip>>(a1, v6);
  }

  v13 = 0;
  v14 = 232 * v2;
  v15 = (232 * v2);
  *v14 = *a2;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](232 * v2 + 8, (a2 + 2));
  *&v15 = v15 + 232;
  v7 = *(a1 + 8);
  v8 = v14 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::SuggestedChip>,ctb::chatbot::SuggestedChip*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ctb::chatbot::SuggestedChip>::~__split_buffer(&v13);
  return v12;
}

void sub_24267B3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ctb::chatbot::SuggestedChip>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ctb::chatbot::SuggestedChip>,ctb::chatbot::SuggestedChip*>(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 8;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 58;
      *(v6 - 8) = v9;
      v6 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v6, (v7 + 2)) + 232;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v5 + 2));
      v5 += 58;
    }
  }
}

uint64_t std::__split_buffer<ctb::chatbot::SuggestedChip>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854FAA60[v5])(&v6, a2);
    *(a1 + 216) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,ctb::chatbot::SuggestedAction,ctb::chatbot::SuggestedReply> &&>(__n128 **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = *(a2 + 16);
  *v2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2[1].n128_u8[8] = 0;
  v2[3].n128_u8[0] = 0;
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 24);
    v2[2].n128_u64[1] = *(a2 + 40);
    *(v2 + 24) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v2[3].n128_u8[0] = 1;
  }

  return result;
}

uint64_t std::__variant_detail::__alt<0ul,ctb::chatbot::SuggestedAction>::__alt[abi:ne200100]<ctb::chatbot::SuggestedAction>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 1;
  }

  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1 + 72, a2 + 72);
  return a1;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 136);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2854FAA70[v5])(&v6, a2);
    *(a1 + 136) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,ctb::chatbot::SuggestedActionOpenUrlInWebView,ctb::chatbot::SuggestedActionOpenUrlInApplication,ctb::chatbot::SuggestedActionComposeText,ctb::chatbot::SuggestedActionComposeAudioRecording,ctb::chatbot::SuggestedActionComposeVideoRecording,ctb::chatbot::SuggestedActionShowLocation,ctb::chatbot::SuggestedActionRequestLocationPush,ctb::chatbot::SuggestedActionCalendar,ctb::chatbot::SuggestedActionDialVideoCall,ctb::chatbot::SuggestedActionDialEnrichedCall,ctb::chatbot::SuggestedActionDialPhoneNumber,ctb::chatbot::SuggestedActionDevice,ctb::chatbot::SuggestedActionSettings> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  result = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  return result;
}