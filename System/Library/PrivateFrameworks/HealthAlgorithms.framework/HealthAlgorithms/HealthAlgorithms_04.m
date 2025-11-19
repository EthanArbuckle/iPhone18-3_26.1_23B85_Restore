void sub_2512C1744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 94;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&a10);
  mimosa::v2::OpticalDecoderV1SubpacketState::~OpticalDecoderV1SubpacketState((v10 + 77));
  mimosa::v2::AccelSubpacketState::~AccelSubpacketState(v11);
  mimosa::v2::OpticalSamplesV2SubpacketState::~OpticalSamplesV2SubpacketState((v10 + 18));
  mimosa::v2::OpticalSamplesV1SubpacketState::~OpticalSamplesV1SubpacketState((v10 + 5));
  _Unwind_Resume(a1);
}

void mimosa::v2::OpticalDecoderV1SubpacketState::~OpticalDecoderV1SubpacketState(mimosa::v2::OpticalDecoderV1SubpacketState *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = (this + 40);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void mimosa::v2::AccelSubpacketState::~AccelSubpacketState(mimosa::v2::AccelSubpacketState *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = (this + 40);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void mimosa::v2::OpticalSamplesV2SubpacketState::~OpticalSamplesV2SubpacketState(mimosa::v2::OpticalSamplesV2SubpacketState *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 64);
  v3 = (this + 40);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void mimosa::v2::OpticalSamplesV1SubpacketState::~OpticalSamplesV1SubpacketState(mimosa::v2::OpticalSamplesV1SubpacketState *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 40);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2512C1948(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

mimosa::v2::PacketState *mimosa::v2::PacketState::PacketState(mimosa::v2::PacketState *this, const mimosa::v2::PacketState *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *this = v4;
  *(this + 1) = v5;
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(this + 9) = *(a2 + 9);
  *(this + 56) = v7;
  *(this + 40) = v6;
  std::unordered_map<unsigned short,mimosa::OpticalSampleV1>::unordered_map(this + 80, a2 + 80);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 1);
  v8 = *(a2 + 9);
  v9 = *(a2 + 10);
  v10 = *(a2 + 22);
  *(this + 23) = 0;
  *(this + 22) = v10;
  *(this + 10) = v9;
  *(this + 9) = v8;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(this + 184, *(a2 + 23), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 23)) >> 3));
  std::unordered_map<unsigned short,mimosa::OpticalSampleV2>::unordered_map(this + 208, a2 + 208);
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 248, *(a2 + 31), *(a2 + 32), *(a2 + 32) - *(a2 + 31));
  *(this + 272) = *(a2 + 272);
  v11 = *(a2 + 296);
  v12 = *(a2 + 39);
  *(this + 280) = *(a2 + 280);
  *(this + 296) = v11;
  *(this + 39) = v12;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__init_with_size[abi:ne200100]<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*>(this + 320, *(a2 + 40), *(a2 + 41), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 41) - *(a2 + 40)) >> 3));
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  std::vector<std::array<int,3ul>>::__init_with_size[abi:ne200100]<std::array<int,3ul>*,std::array<int,3ul>*>(this + 344, *(a2 + 43), *(a2 + 44), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 44) - *(a2 + 43)) >> 2));
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(this + 368, *(a2 + 46), *(a2 + 47), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 47) - *(a2 + 46)) >> 1));
  *(this + 392) = *(a2 + 392);
  v13 = *(a2 + 26);
  *(this + 25) = *(a2 + 25);
  *(this + 26) = v13;
  v14 = *(a2 + 27);
  v15 = *(a2 + 28);
  v16 = *(a2 + 30);
  *(this + 29) = *(a2 + 29);
  *(this + 30) = v16;
  *(this + 27) = v14;
  *(this + 28) = v15;
  v17 = *(a2 + 31);
  v18 = *(a2 + 32);
  v19 = *(a2 + 34);
  *(this + 33) = *(a2 + 33);
  *(this + 34) = v19;
  *(this + 31) = v17;
  *(this + 32) = v18;
  v20 = *(a2 + 35);
  v21 = *(a2 + 36);
  v22 = *(a2 + 37);
  *(this + 608) = *(a2 + 608);
  *(this + 36) = v21;
  *(this + 37) = v22;
  *(this + 35) = v20;
  v23 = *(a2 + 616);
  v24 = *(a2 + 632);
  *(this + 81) = *(a2 + 81);
  *(this + 616) = v23;
  *(this + 632) = v24;
  *(this + 82) = 0;
  *(this + 84) = 0;
  *(this + 83) = 0;
  std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(this + 656, *(a2 + 82), *(a2 + 83), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 83) - *(a2 + 82)) >> 3));
  *(this + 680) = *(a2 + 680);
  *(this + 86) = 0;
  *(this + 88) = 0;
  *(this + 87) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 688, *(a2 + 86), *(a2 + 87), *(a2 + 87) - *(a2 + 86));
  v25 = *(a2 + 712);
  v26 = *(a2 + 728);
  *(this + 93) = *(a2 + 93);
  *(this + 712) = v25;
  *(this + 728) = v26;
  *(this + 94) = 0;
  *(this + 96) = 0;
  *(this + 95) = 0;
  std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(this + 752, *(a2 + 94), *(a2 + 95), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 95) - *(a2 + 94)) >> 3));
  v27 = *(a2 + 97);
  *(this + 784) = *(a2 + 784);
  *(this + 97) = v27;
  *(this + 99) = 0;
  *(this + 101) = 0;
  *(this + 100) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 792, *(a2 + 99), *(a2 + 100), *(a2 + 100) - *(a2 + 99));
  v28 = *(a2 + 52);
  *(this + 51) = *(a2 + 51);
  *(this + 52) = v28;
  v29 = *(a2 + 53);
  v30 = *(a2 + 54);
  v31 = *(a2 + 56);
  *(this + 55) = *(a2 + 55);
  *(this + 56) = v31;
  *(this + 53) = v29;
  *(this + 54) = v30;
  v32 = *(a2 + 57);
  v33 = *(a2 + 58);
  v34 = *(a2 + 59);
  *(this + 240) = *(a2 + 240);
  *(this + 58) = v33;
  *(this + 59) = v34;
  *(this + 57) = v32;
  *(this + 123) = 0;
  *(this + 968) = 0u;
  std::vector<std::array<int,3ul>>::__init_with_size[abi:ne200100]<std::array<int,3ul>*,std::array<int,3ul>*>(this + 968, *(a2 + 121), *(a2 + 122), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 122) - *(a2 + 121)) >> 2));
  v35 = *(a2 + 62);
  v36 = *(a2 + 63);
  *(this + 128) = *(a2 + 128);
  *(this + 62) = v35;
  *(this + 63) = v36;
  std::unordered_map<unsigned char,unsigned char>::unordered_map(this + 1032, a2 + 1032);
  std::unordered_map<unsigned short,unsigned int>::unordered_map(this + 1072, a2 + 1072);
  *(this + 278) = *(a2 + 278);
  *(this + 140) = 0;
  *(this + 142) = 0;
  *(this + 141) = 0;
  std::vector<std::array<unsigned short,9ul>>::__init_with_size[abi:ne200100]<std::array<unsigned short,9ul>*,std::array<unsigned short,9ul>*>(this + 1120, *(a2 + 140), *(a2 + 141), 0x8E38E38E38E38E39 * ((*(a2 + 141) - *(a2 + 140)) >> 1));
  v37 = *(a2 + 1144);
  v38 = *(a2 + 1160);
  *(this + 147) = *(a2 + 147);
  *(this + 1144) = v37;
  *(this + 1160) = v38;
  std::unordered_map<unsigned char,unsigned char>::unordered_map(this + 1184, a2 + 1184);
  std::unordered_map<unsigned short,unsigned int>::unordered_map(this + 1224, a2 + 1224);
  *(this + 316) = *(a2 + 316);
  v39 = *(a2 + 1272);
  v40 = *(a2 + 1304);
  *(this + 1288) = *(a2 + 1288);
  *(this + 1304) = v40;
  *(this + 1272) = v39;
  return this;
}

void sub_2512C1D40(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(v1 + 1184);
  v9 = *v7;
  if (*v7)
  {
    *(v1 + 1128) = v9;
    operator delete(v9);
  }

  mimosa::v2::WavelengthV2SubpacketState::~WavelengthV2SubpacketState(v6);
  mimosa::v2::OpticalDecoderV2SubpacketState::~OpticalDecoderV2SubpacketState(v5);
  mimosa::v2::OpticalDecoderV1SubpacketState::~OpticalDecoderV1SubpacketState(v4);
  mimosa::v2::AccelSubpacketState::~AccelSubpacketState(v3);
  mimosa::v2::OpticalSamplesV2SubpacketState::~OpticalSamplesV2SubpacketState((v2 - 40));
  mimosa::v2::OpticalSamplesV1SubpacketState::~OpticalSamplesV1SubpacketState((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_2512C1DD4(uint64_t a1, ...)
{
  va_start(va, a1);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x2512C1DACLL);
}

void sub_2512C1DF0(uint64_t a1, ...)
{
  va_start(va, a1);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x2512C1DB4);
}

void sub_2512C1E0C(uint64_t a1, ...)
{
  va_start(va, a1);
  v2 = *(v1 + 344);
  if (v2)
  {
    *(v1 + 352) = v2;
    operator delete(v2);
  }

  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x2512C1DBCLL);
}

void sub_2512C1E40(uint64_t a1, ...)
{
  va_start(va, a1);
  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(v1 + 208);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x2512C1DC4);
}

uint64_t std::unordered_map<unsigned short,mimosa::OpticalSampleV1>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,mimosa::OpticalSampleV1> const&>(a1, i + 8);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV1>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,mimosa::OpticalSampleV1> const&>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<unsigned short>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2512C2198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<unsigned short>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned short>>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*,std::vector<unsigned short>*,std::vector<unsigned short>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v4, *v6, v6[1], (v6[1] - *v6) >> 1);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::unordered_map<unsigned short,mimosa::OpticalSampleV2>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,mimosa::OpticalSampleV2> const&>(a1, i + 8);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,mimosa::OpticalSampleV2>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,mimosa::OpticalSampleV2> const&>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__init_with_size[abi:ne200100]<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2512C265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 1));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::array<int,3ul>>::__init_with_size[abi:ne200100]<std::array<int,3ul>*,std::array<int,3ul>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::array<int,3ul>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2512C2878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::array<int,3ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned short,6ul>>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2512C2940(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<unsigned char,unsigned char>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,unsigned char> const&>(a1, i + 16);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,unsigned char> const&>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<unsigned short,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,unsigned int> const&>(a1, i + 8);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short const,unsigned int> const&>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::vector<std::array<unsigned short,9ul>>::__init_with_size[abi:ne200100]<std::array<unsigned short,9ul>*,std::array<unsigned short,9ul>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::array<unsigned short,9ul>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2512C2F14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::array<unsigned short,9ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E39)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned short,9ul>>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void mimosa::v2::WavelengthV2SubpacketState::~WavelengthV2SubpacketState(mimosa::v2::WavelengthV2SubpacketState *this)
{
  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(this + 64);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void mimosa::v2::OpticalDecoderV2SubpacketState::~OpticalDecoderV2SubpacketState(mimosa::v2::OpticalDecoderV2SubpacketState *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = (this + 40);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::__function::__func<mimosa::v2::Decoder::Decoder(std::function<BOOL ()(mimosa::Metadata const&)>,std::function<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>)::$_0,std::allocator<mimosa::v2::Decoder::Decoder(std::function<BOOL ()(mimosa::Metadata const&)>,std::function<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>)::$_0>,BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286352EA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mimosa::v2::Decoder::Decoder(std::function<BOOL ()(mimosa::Metadata const&)>,std::function<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>)::$_0,std::allocator<mimosa::v2::Decoder::Decoder(std::function<BOOL ()(mimosa::Metadata const&)>,std::function<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)>)::$_0>,BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mimosa::v2::Decoder::Decoder(mimosa::v2::Decoder&&)::$_0,std::allocator<mimosa::v2::Decoder&&>,BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,std::variant::PatchV2,std::variant::PatchV3,std::variant::PatchV4,std::variant::PatchV5,std::variant::PatchV6,std::variant::PatchV7,std::variant::PatchV8,std::variant::PatchV9,std::variant::PatchV10,std::variant::PatchV11,std::variant::PatchV12> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286352F38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mimosa::v2::Decoder::Decoder(mimosa::v2::Decoder&&)::$_0,std::allocator<mimosa::v2::Decoder&&>,BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,std::variant::PatchV2,std::variant::PatchV3,std::variant::PatchV4,std::variant::PatchV5,std::variant::PatchV6,std::variant::PatchV7,std::variant::PatchV8,std::variant::PatchV9,std::variant::PatchV10,std::variant::PatchV11,std::variant::PatchV12> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 mimosa::v2::AlgsResponseV1SubpacketState::update@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = mimosa::v2::SubpacketHeaderState::update(a1, a2);
  *(a3 + 8) = v6;
  if (*(a2 + 26) == 1)
  {
    *(a1 + 40) = *(a2 + 24);
  }

  if (*(a2 + 29) == 1)
  {
    *(a1 + 42) = *(a2 + 28);
  }

  if (*(a2 + 31) == 1)
  {
    *(a1 + 43) = *(a2 + 30);
  }

  if (*(a2 + 33) == 1)
  {
    *(a1 + 44) = *(a2 + 32);
  }

  if (*(a2 + 35) == 1)
  {
    *(a1 + 45) = *(a2 + 34);
  }

  if (*(a2 + 40) == 1)
  {
    *(a1 + 48) = *(a2 + 36);
  }

  if (*(a2 + 48) == 1)
  {
    *(a1 + 52) = *(a2 + 44);
  }

  if (*(a2 + 56) == 1)
  {
    *(a1 + 56) = *(a2 + 52);
  }

  if (*(a2 + 64) == 1)
  {
    *(a1 + 60) = *(a2 + 60);
  }

  if (*(a2 + 70) == 1)
  {
    *(a1 + 64) = *(a2 + 68);
  }

  if (*(a2 + 74) == 1)
  {
    *(a1 + 66) = *(a2 + 72);
  }

  if (*(a2 + 77))
  {
    v7 = *(a2 + 76);
    *(a1 + 68) = v7;
  }

  else
  {
    v7 = *(a1 + 68);
  }

  *(a3 + 16) = *(a1 + 40);
  *(a3 + 18) = *(a1 + 42);
  result = *(a1 + 48);
  *(a3 + 24) = result;
  *(a3 + 40) = *(a1 + 64);
  *(a3 + 44) = v7;
  return result;
}

uint64_t mimosa::v2::AlgsResponseV1SubpacketState::update@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  *(a3 + 26) = 0;
  *(a3 + 28) = 0;
  v6 = (a3 + 28);
  *(a3 + 40) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 70) = 0;
  *(a3 + 72) = 0;
  *(a3 + 74) = 0;
  *(a3 + 76) = 0;
  *(a3 + 36) = 0;
  result = mimosa::v2::SubpacketHeaderState::update(a1, a2, &v20);
  *a3 = v20;
  *(a3 + 16) = v21;
  v8 = *(a2 + 16);
  if (*(a1 + 40) != v8)
  {
    *(a1 + 40) = v8;
    *(a3 + 24) = v8;
    *(a3 + 26) = 1;
  }

  v9 = *(a2 + 18);
  if (*(a1 + 42) != v9)
  {
    *(a1 + 42) = v9;
    *v6 = v9 | 0x100;
  }

  v10 = *(a2 + 19);
  if (*(a1 + 43) != v10)
  {
    *(a1 + 43) = v10;
    *(a3 + 30) = v10 | 0x100;
  }

  v11 = *(a2 + 20);
  if (*(a1 + 44) != v11)
  {
    *(a1 + 44) = v11;
    *(a3 + 32) = v11 | 0x100;
  }

  v12 = *(a2 + 21);
  if (*(a1 + 45) != v12)
  {
    *(a1 + 45) = v12;
    *(a3 + 34) = v12 | 0x100;
  }

  v13 = *(a2 + 24);
  if (*(a1 + 48) != v13)
  {
    *(a1 + 48) = v13;
    *(a3 + 36) = v13;
    *(a3 + 40) = 1;
  }

  v14 = *(a2 + 28);
  if (*(a1 + 52) != v14)
  {
    *(a1 + 52) = v14;
    *(a3 + 44) = v14;
    *(a3 + 48) = 1;
  }

  v15 = *(a2 + 32);
  if (*(a1 + 56) != v15)
  {
    *(a1 + 56) = v15;
    *(a3 + 52) = v15;
    *(a3 + 56) = 1;
  }

  v16 = *(a2 + 36);
  if (*(a1 + 60) != v16)
  {
    *(a1 + 60) = v16;
    *(a3 + 60) = v16;
    *(a3 + 64) = 1;
  }

  v17 = *(a2 + 40);
  if (*(a1 + 64) != v17)
  {
    *(a1 + 64) = v17;
    *(a3 + 68) = v17;
    *(a3 + 70) = 1;
  }

  v18 = *(a2 + 42);
  if (*(a1 + 66) != v18)
  {
    *(a1 + 66) = v18;
    *(a3 + 72) = v18;
    *(a3 + 74) = 1;
  }

  v19 = *(a2 + 44);
  if (*(a1 + 68) != v19)
  {
    *(a1 + 68) = v19;
    *(a3 + 76) = v19 | 0x100;
  }

  return result;
}

void mimosa::v2::AccelSubpacketState::update(mimosa::v2::AccelSubpacketState *this@<X0>, const mimosa::v2::AccelSubpacketState::Patch *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = mimosa::v2::SubpacketHeaderState::update(this, a2);
  *(a3 + 8) = v7;
  if (*(a2 + 80) == 1)
  {
    v8 = (a2 + 48);
    v9 = *(a2 + 18);
    if (v9)
    {
      if (v9 != 1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v10 = *v8;
      *(this + 112) = v10;
      mimosa::v2::ItemCoder<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::decode(this + 5, v10, &v43);
      v11 = *(this + 11);
      if (v11)
      {
        *(this + 12) = v11;
        operator delete(v11);
        *(this + 11) = 0;
        *(this + 12) = 0;
        *(this + 13) = 0;
      }

      *(this + 88) = v43;
      *(this + 13) = v44;
    }

    else
    {
      if ((this + 88) != v8)
      {
        std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__assign_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(this + 11, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 1));
      }

      __p = 0;
      v41 = 0;
      v42 = 0;
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(&__p, *(this + 11), *(this + 12), 0xAAAAAAAAAAAAAAABLL * ((*(this + 12) - *(this + 11)) >> 1));
      *(this + 112) = mimosa::v2::ItemCoder<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::encode(this + 5, &__p);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }
    }
  }

  std::vector<mimosa::AccelSample>::reserve(v6, 0xAAAAAAAAAAAAAAABLL * ((*(this + 12) - *(this + 11)) >> 1));
  v39 = a2;
  v12 = *(this + 11);
  v13 = *(this + 12);
  if (v12 != v13)
  {
    v14 = *(a3 + 24);
    do
    {
      v15 = *(a3 + 32);
      if (v14 >= v15)
      {
        v16 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v6) >> 2);
        v17 = v16 + 1;
        if (v16 + 1 > 0xCCCCCCCCCCCCCCCLL)
        {
          std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
        }

        v18 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v6) >> 2);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x666666666666666)
        {
          v19 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::AccelSample>>(v6, v19);
        }

        v20 = 4 * ((v14 - *v6) >> 2);
        *v20 = 0;
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        v14 = 20 * v16 + 20;
        v21 = *(a3 + 16);
        v22 = *(a3 + 24) - v21;
        v23 = 20 * v16 - v22;
        memcpy((v20 - v22), v21, v22);
        v24 = *(a3 + 16);
        *(a3 + 16) = v23;
        *(a3 + 24) = v14;
        *(a3 + 32) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        v14 += 20;
      }

      *(a3 + 24) = v14;
      *(v14 - 4) = *(v12 + 4);
      v25 = *v12;
      v12 = (v12 + 6);
      *(v14 - 8) = v25;
    }

    while (v12 != v13);
  }

  std::vector<std::array<int,3ul>>::resize(this + 8, 0xAAAAAAAAAAAAAAABLL * ((*(v39 + 4) - *(v39 + 3)) >> 3));
  v26 = *(a3 + 16);
  v27 = *(a3 + 24);
  v28 = v27 - v26;
  if (v27 != v26)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0xCCCCCCCCCCCCCCCDLL * (v28 >> 2);
    v32 = *(this + 11);
    v33 = *(v39 + 3);
    v34 = *(a3 + 16);
    do
    {
      if (*(v32 + 6 * v29 + 5) == 1)
      {
        v35 = v26 + 20 * v29;
        *v35 = 0;
        *(v35 + 8) = 0;
      }

      else
      {
        v36 = 0;
        v37 = *(this + 8) + 12 * v30;
        do
        {
          v38 = *(v37 + 4 * v36) + *(v33 + 24 * v30 + 8 * v36);
          *(v37 + 4 * v36) = v38;
          *(v34 + 4 * v36++) = v38;
        }

        while (v36 != 3);
        ++v30;
      }

      ++v29;
      v34 += 20;
    }

    while (v31 > v29);
  }
}

void sub_2512C3878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v13 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mimosa::v2::ItemCoder<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::decode@<X0>(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    std::vector<std::array<unsigned short,6ul>>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = (*a1 + 24 * a2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *v4;
  v6 = v4[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 1);

  return std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(a3, v5, v6, v7);
}

uint64_t mimosa::v2::ItemCoder<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::encode(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (*a1 == v5)
  {
LABEL_14:
    if (v6 != v5)
    {
      v10 = 0;
      LOBYTE(v6) = -85 * ((v6 - v4) >> 3);
      return v6 | (v10 << 8);
    }
  }

  else
  {
    v6 = *a1;
    do
    {
      v8 = *v6;
      v7 = v6[1];
      if (v7 - *v6 == a2[1] - *a2)
      {
        if (v8 == v7)
        {
          goto LABEL_14;
        }

        v9 = *a2;
        while (*v8 == *v9 && v8[1] == v9[1] && *(v8 + 4) == *(v9 + 4) && *(v8 + 5) == *(v9 + 5))
        {
          v8 += 3;
          v9 += 3;
          if (v8 == v7)
          {
            goto LABEL_14;
          }
        }
      }

      v6 += 3;
    }

    while (v6 != v5);
  }

  if (v5 - v4 == 6144)
  {
    if (v4 + 24 != v5)
    {
      do
      {
        v11 = v4 + 24;
        std::vector<unsigned short>::__move_assign(v4, (v4 + 24));
        v12 = v4 + 48;
        v4 += 24;
      }

      while (v12 != v5);
      v5 = a1[1];
      v4 = v11;
    }

    if (v5 != v4)
    {
      v13 = v5;
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v5 - 16) = v14;
          operator delete(v14);
        }

        v5 = v13;
      }

      while (v13 != v4);
    }

    a1[1] = v4;
  }

  std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::push_back[abi:ne200100](a1, a2);
  LODWORD(v6) = -85 * ((*(a1 + 2) - *a1) >> 3) - 1;
  v10 = 1;
  return v6 | (v10 << 8);
}

void std::vector<std::array<int,3ul>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::array<int,3ul>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void mimosa::v2::AccelSubpacketState::update(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 24) = 0;
  v6 = (a3 + 24);
  *(a3 + 48) = 0;
  v53 = (a3 + 48);
  *(a3 + 80) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  mimosa::v2::SubpacketHeaderState::update(a1, a2, &v60);
  *a3 = v60;
  *(a3 + 16) = v61;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(a1 + 88);
  v56 = (a1 + 88);
  v10 = *(a1 + 96);
  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 2);
  if (v11 == 0xAAAAAAAAAAAAAAABLL * (v10 - v9))
  {
    if (v7 == v8 || v9 == v10)
    {
      v12 = *(a1 + 88);
LABEL_25:
      if (v7 == v8 && v12 == v10)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v12 = *(a1 + 88);
      while (1)
      {
        if (*(v7 + 12))
        {
          v13 = 0;
          do
          {
            v14 = *(v7 + v13);
            if (v14)
            {
              v15 = 1;
            }

            else
            {
              v15 = v13 == 8;
            }

            v13 += 4;
          }

          while (!v15);
          v16 = v14 == 0;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(v7 + 16) == *(v12 + 4) && *(v7 + 12) == *v12;
        if (!v17 || *(v7 + 14) != v12[1] || v16 != *(v12 + 5))
        {
          break;
        }

        v7 += 20;
        v12 += 3;
        if (v7 == v8 || v12 == v10)
        {
          goto LABEL_25;
        }
      }
    }
  }

  v55 = v6;
  *(a1 + 96) = v9;
  std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::reserve(v56, v11);
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v54 = v3;
  if (v18 == v19)
  {
    v26 = *(a1 + 96);
  }

  else
  {
    do
    {
      v20 = *(v18 + 12);
      if (v20)
      {
        v21 = (*(v18 + 4) | *v18 | *(v18 + 8)) == 0;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v18 + 14);
      v23 = *(v18 + 16);
      v24 = *(a1 + 96);
      v25 = *(a1 + 104);
      if (v24 >= v25)
      {
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v56) >> 1);
        v28 = v27 + 1;
        if (v27 + 1 > 0x2AAAAAAAAAAAAAAALL)
        {
          std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
        }

        v29 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v56) >> 1);
        if (2 * v29 > v28)
        {
          v28 = 2 * v29;
        }

        if (v29 >= 0x1555555555555555)
        {
          v30 = 0x2AAAAAAAAAAAAAAALL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::AccelSubpacketState::SampleHeader>>(v56, v30);
        }

        v31 = 6 * v27;
        *v31 = v20;
        *(v31 + 2) = v22;
        *(v31 + 4) = v23;
        *(v31 + 5) = v21;
        v26 = 6 * v27 + 6;
        v32 = *(a1 + 88);
        v33 = *(a1 + 96) - v32;
        v34 = (6 * v27 - v33);
        memcpy(v34, v32, v33);
        v35 = *(a1 + 88);
        *(a1 + 88) = v34;
        *(a1 + 96) = v26;
        *(a1 + 104) = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v24 = v20;
        *(v24 + 2) = v22;
        *(v24 + 4) = v23;
        v26 = v24 + 6;
        *(v24 + 5) = v21;
      }

      *(a1 + 96) = v26;
      v18 += 20;
    }

    while (v18 != v19);
  }

  __p = 0;
  v58 = 0;
  v59 = 0;
  std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(&__p, *v56, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - *v56) >> 1));
  v3 = v54;
  v6 = v55;
  v36 = mimosa::v2::ItemCoder<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::encode((a1 + 40), &__p);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if ((v36 & 0x100) != 0)
  {
    std::optional<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>>::operator=[abi:ne200100]<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&,void>(v53, v56);
    v37 = (a1 + 112);
  }

  else
  {
    v37 = (a1 + 112);
    if (*(a1 + 112) == v36)
    {
      goto LABEL_57;
    }

    if (*(a3 + 80) == 1)
    {
      if (*(a3 + 72) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v53);
        *(a3 + 72) = 1;
      }

      *v53 = v36;
    }

    else
    {
      *(a3 + 48) = v36;
      *(a3 + 72) = 1;
      *(a3 + 80) = 1;
    }
  }

  *v37 = v36;
LABEL_57:
  v38 = *(a1 + 88);
  v39 = *(a1 + 96);
  if (v38 == v39)
  {
    v41 = 0;
  }

  else
  {
    v40 = 0;
    do
    {
      v40 += *(v38 + 5) ^ 1;
      v38 += 6;
    }

    while (v38 != v39);
    v41 = v40;
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize(v6, v41);
  std::vector<std::array<int,3ul>>::resize((a1 + 64), v41);
  v42 = *(v3 + 16);
  v43 = *(v3 + 24);
  v44 = v43 - v42;
  if (v43 != v42)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0xCCCCCCCCCCCCCCCDLL * (v44 >> 2);
    v48 = *v56;
    v49 = *v6;
    do
    {
      if ((*(v48 + 6 * v45 + 5) & 1) == 0)
      {
        v50 = 0;
        v51 = *(a1 + 64) + 12 * v46;
        do
        {
          v52 = *(v42 + 4 * v50);
          *(v49 + 24 * v46 + 8 * v50) = v52 - *(v51 + 4 * v50);
          *(v51 + 4 * v50++) = v52;
        }

        while (v50 != 3);
        ++v46;
      }

      ++v45;
      v42 += 20;
    }

    while (v47 > v45);
  }
}

void sub_2512C3F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, mimosa::v2::AccelSubpacketState::Patch *a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  mimosa::v2::AccelSubpacketState::Patch::~Patch(a13);
  _Unwind_Resume(a1);
}

void *std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 1) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::AccelSubpacketState::SampleHeader>>(result, a2);
    }

    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::optional<std::variant<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>>::operator=[abi:ne200100]<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 32) == 1)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>>::__assign_alt[abi:ne200100]<0ul,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&>(a1, a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
  }

  return a1;
}

void *std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__assign_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 1) < a4)
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

    if (a4 <= 0x2AAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 1);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1555555555555555)
      {
        v11 = 0x2AAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 1) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<std::array<int,3ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned short,6ul>>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>>::__assign_alt[abi:ne200100]<0ul,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6[0] = a1;
    v6[1] = a3;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>>::__assign_alt[abi:ne200100]<0ul,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&>(std::__variant_detail::__alt<0ul,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>> &,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&)::{unnamed type#1}::operator()(v6);
  }

  else if (a2 != a3)
  {
    v5 = *a3;
    v4 = *(a3 + 8);

    std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__assign_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(a2, v5, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 1));
  }
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>>::__assign_alt[abi:ne200100]<0ul,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&>(std::__variant_detail::__alt<0ul,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>> &,std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v5 = 0;
  v4 = 0uLL;
  std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(&v4, *v1, v1[1], 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 1));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  result = *&v4;
  *v2 = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = 0;
  return result;
}

void mimosa::v2::AccelSubpacketState::Patch::~Patch(mimosa::v2::AccelSubpacketState::Patch *this)
{
  if (*(this + 80) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 48);
  }

  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__emplace_back_slow_path<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__construct_one_at_end[abi:ne200100]<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__construct_one_at_end[abi:ne200100]<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 1));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>::__emplace_back_slow_path<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__init_with_size[abi:ne200100]<mimosa::v2::AccelSubpacketState::SampleHeader*,mimosa::v2::AccelSubpacketState::SampleHeader*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 1));
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
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(&v14);
  return v8;
}

void sub_2512C4694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void HAFacialMetricsGenerateHashForTimestamp_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 8;
  _os_log_fault_impl(&dword_251282000, log, OS_LOG_TYPE_FAULT, "size of hashValue returned by SecSHA1DigestCreate less than %lu", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void hal9000::SignalProcessor::find_watch_category(char *a1, void *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 136446210;
  v6 = v3;
  _os_log_error_impl(&dword_251282000, log, OS_LOG_TYPE_ERROR, "Unexpected hardware model: %{public}s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

void hal9000::SignalProcessor::get_opre_gain()
{
  __assert_rtn("get_rx_from_pd", "SignalProcessor.cpp", 1188, "false");
}

{
  __assert_rtn("get_opre_gain", "SignalProcessor.cpp", 1149, "metadata_.calibration.tia_dcs.has_value()");
}

{
  __assert_rtn("get_opre_gain", "SignalProcessor.cpp", 1143, "metadata_.calibration.tia_dcs.has_value()");
}

{
  __assert_rtn("get_opre_gain", "SignalProcessor.cpp", 1144, "metadata_.calibration.mdm.has_value()");
}

void hal9000::SignalProcessor::get_blank_idc()
{
  __assert_rtn("get_blank_idc", "SignalProcessor.cpp", 906, "metadata_.generation != Generation::carnelian");
}

{
  __assert_rtn("get_blank_idc", "SignalProcessor.cpp", 897, "!metadata_.carnelian_bghr");
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_251282000, v0, v1, "invalid packet length: after the header expected a multiple of %zu, received a total of %zu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 26);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected >= %zu, received %zu", v4);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 27);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected >= %zu, received %zu", v4);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<-[HAWristTemperatureSession parsePacket:]::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,PackedWristTemperatureHeaderV0,PackedWristTemperatureHeaderV1,PackedWristTemperatureHeaderV2> &>(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 31);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected >= %zu, received %zu", v4);
}

void health_algorithms::PPGProcessor::make_processor()
{
  __assert_rtn("make_processor", "PPGProcessor.cpp", 927, "metadata_->hardware_model.has_value()");
}

{
  __assert_rtn("make_processor", "PPGProcessor.cpp", 945, "metadata_->opre.has_value()");
}

void health_algorithms::led_to_wavelength_index()
{
  __assert_rtn("led_to_wavelength_index", "PPGProcessor.cpp", 102, "led < static_cast<uint8_t>(OpticalTransmitIndex::SIZE)");
}

{
  __assert_rtn("led_to_wavelength_index", "PPGProcessor.cpp", 96, "led < 6");
}

{
  __assert_rtn("led_to_wavelength_index", "PPGProcessor.cpp", 107, "led < 13");
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}