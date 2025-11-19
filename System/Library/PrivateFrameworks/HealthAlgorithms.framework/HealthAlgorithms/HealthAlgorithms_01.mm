uint64_t health_algorithms::get_effective_wavelength<mimosa::WavelengthV2Subpacket>(uint64_t a1, int a2)
{
  if (*(a1 + 64))
  {
    goto LABEL_2;
  }

  v4 = (a1 + 20);
  v3 = 48;
  while (*v4 != a2)
  {
    v4 += 4;
    v3 -= 8;
    if (!v3)
    {
      v2 = 0;
      return v3 | v2;
    }
  }

  v5 = *(v4 - 1);
  if (!v5)
  {
LABEL_2:
    v2 = 0;
    v3 = 0;
  }

  else
  {
    *&v6 = vcvtd_n_f64_u32(v5, 7uLL);
    v3 = v6;
    v2 = 0x100000000;
  }

  return v3 | v2;
}

void mimosa::PacketV2::~PacketV2(mimosa::PacketV2 *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

uint64_t health_algorithms::get_effective_wavelength<mimosa::WavelengthV3Subpacket>(uint64_t a1, int a2)
{
  if (*(a1 + 88))
  {
    goto LABEL_2;
  }

  v4 = (a1 + 20);
  v3 = 72;
  while (*v4 != a2)
  {
    v4 += 4;
    v3 -= 8;
    if (!v3)
    {
      v2 = 0;
      return v3 | v2;
    }
  }

  v5 = *(v4 - 1);
  if (!v5)
  {
LABEL_2:
    v2 = 0;
    v3 = 0;
  }

  else
  {
    *&v6 = vcvtd_n_f64_u32(v5, 7uLL);
    v3 = v6;
    v2 = 0x100000000;
  }

  return v3 | v2;
}

void mimosa::PacketV6::~PacketV6(mimosa::PacketV6 *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::PPGOutputSignal>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<health_algorithms::PPGProcessor::compute_accel_output(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 56);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  return std::vector<mimosa::AccelSample>::__init_with_size[abi:ne200100]<mimosa::AccelSample*,mimosa::AccelSample*>(a2 + 16, *(a1 + 72), *(a1 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<health_algorithms::PPGProcessor::AccelOutputSignal>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__shared_ptr_emplace<mimosa::Metadata>::__shared_ptr_emplace[abi:ne200100]<mimosa::Metadata const&,std::allocator<mimosa::Metadata>,0>(void *a1, const mimosa::Metadata *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286352B90;
  mimosa::Metadata::Metadata((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<mimosa::Metadata>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286352B90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25306FDD0);
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,health_algorithms::PPGProcessor::SignalProcessorAndFriends>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

id hws_get_hermit_log()
{
  if (hws_get_hermit_log_onceToken != -1)
  {
    hws_get_hermit_log_cold_1();
  }

  v1 = hws_get_hermit_log_log;

  return v1;
}

uint64_t __hws_get_hermit_log_block_invoke()
{
  hws_get_hermit_log_log = os_log_create("com.apple.HealthAlgorithms", "hermit");

  return MEMORY[0x2821F96F8]();
}

void sub_2512A1D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  v29 = v25;

  v31 = MEMORY[0x277CBEC10];
  HermitNotification::Processor::~Processor(&a14);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<HermitNotification::HSReport>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<HermitNotification::HSReport>>(result, a2);
    }

    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HermitNotification::HSReport>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_2512A1FD4(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    MEMORY[0x25306FDD0](v4, v2);
  }

  _Unwind_Resume(exception_object);
}

void HermitNotification::Processor::~Processor(HermitNotification::Processor *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x25306FDD0](v2, 0xC400A2AC0F1);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x25306FDD0](v2, 0xC400A2AC0F1);
  }
}

void HermitNotification::Processor::Impl::process(uint64_t *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v47 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 16) = 0;
  v5 = a4 - a3;
  if (a4 - a3 == 2592000.0)
  {
    v41 = 0u;
    v42 = 0u;
    v43 = 1065353216;
    __src = 0;
    v39 = 0;
    v40 = 0;
    v7 = *a1;
    v8 = a1[1];
    if (*a1 == v8)
    {
      v26 = 0;
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        v11 = *(v7 + 8);
        v12 = *v7 - a3;
        if (v12 < 0.0 || v12 >= 2592000.0)
        {
          hermit_log = hws_get_hermit_log();
          if (os_log_type_enabled(hermit_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218240;
            *&buf[4] = v10;
            v45 = 2048;
            v46 = v11;
            _os_log_fault_impl(&dword_251282000, hermit_log, OS_LOG_TYPE_FAULT, "Input Hermit Score exceeds analysis window, will be filtered out, Time: %f, Score %f", buf, 0x16u);
          }
        }

        else
        {
          v37 = (v12 / 86400.0);
          v13 = v39;
          if (v39 >= v40)
          {
            v16 = __src;
            v17 = v39 - __src;
            v18 = (v39 - __src) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
            }

            v20 = v40 - __src;
            if ((v40 - __src) >> 1 > v19)
            {
              v19 = v20 >> 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v21 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v21);
            }

            *(4 * v18) = v11;
            v14 = 4 * v18 + 4;
            memcpy(0, v16, v17);
            v22 = __src;
            __src = 0;
            v39 = v14;
            v40 = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v39 = v11;
            v14 = (v13 + 1);
          }

          v39 = v14;
          ++v9;
          if (std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(&v41, &v37))
          {
            *buf = &v37;
            v23 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v41, &v37);
            v24 = *(v23 + 5) + 1;
          }

          else
          {
            *buf = &v37;
            v23 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v41, &v37);
            v24 = 1;
          }

          *(v23 + 5) = v24;
        }

        v7 += 16;
      }

      while (v7 != v8);
      v25 = v42;
      if (v42)
      {
        v26 = 0;
        do
        {
          if (v25[5] > 1)
          {
            ++v26;
          }

          v25 = *v25;
        }

        while (v25);
        if (v26 >= 0xE)
        {
          v27 = __src;
          v28 = 0.0;
          while (v27 != v39)
          {
            v29 = *v27++;
            v28 = v28 + v29;
          }

          v32 = v28 / v9;
          v31 = v32 >= 1.01;
          goto LABEL_40;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    v31 = -9;
    v32 = NAN;
LABEL_40:
    *a2 = v31;
    v33 = 3.4028e38;
    if ((LODWORD(v32) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v33 = v32;
    }

    *(a2 + 4) = v33;
    *(a2 + 8) = v26;
    *(a2 + 12) = v9;
    *(a2 + 16) = 1;
    v34 = hws_get_hermit_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      HermitNotification::Processor::Impl::process(v34, v32);
    }

    v35 = hws_get_hermit_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      HermitNotification::Processor::Impl::process(v31, v35);
    }

    if (__src)
    {
      v39 = __src;
      operator delete(__src);
    }

    std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(&v41);
    goto LABEL_49;
  }

  v30 = hws_get_hermit_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    HermitNotification::Processor::Impl::process(v30, v5);
  }

  *a2 = 2;
LABEL_49:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_2512A2440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
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
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void HermitNotification::Processor::Impl::process(os_log_t log, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2 / 86400.0;
  v5 = 1024;
  v6 = 30;
  _os_log_fault_impl(&dword_251282000, log, OS_LOG_TYPE_FAULT, "Defined analysis window is %f and not equal to the analysis window of size %d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void HermitNotification::Processor::Impl::process(os_log_t log, float a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134545665;
  v4 = a2;
  _os_log_debug_impl(&dword_251282000, log, OS_LOG_TYPE_DEBUG, "Mean Hermit Score: %{sensitive}f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void HermitNotification::Processor::Impl::process(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67436801;
  v3[1] = a1;
  _os_log_debug_impl(&dword_251282000, a2, OS_LOG_TYPE_DEBUG, "Hermit Notification Status : %{sensitive}d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

float CinnAlgs::convertImpedance(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    return 0.0;
  }

  PgaGain = CinnAlgs::getPgaGain(a1[25]);
  v6 = 0.0;
  if (a1[26] == 1)
  {
    v6 = 2.0;
  }

  if (!a1[26])
  {
    v6 = 1.0;
  }

  v7 = PgaGain * v6;
  ZdacFreq = CinnAlgs::getZdacFreq(a1[27]);
  v9 = sqrt((ZdacFreq / 40000.0) * (ZdacFreq / 40000.0) + 1.0);
  return roundf(((sqrtf((*&a1[28 * a2 + 55] * *&a1[28 * a2 + 55]) + (*&a1[28 * a2 + 51] * *&a1[28 * a2 + 51])) / v7) * 0.60797) * v9);
}

float CinnAlgs::getPgaGain(CinnAlgs *this)
{
  result = 0.0;
  if (this <= 6)
  {
    return flt_2512C8264[this];
  }

  return result;
}

float CinnAlgs::getBuffGain(CinnAlgs *this)
{
  result = 0.0;
  if (this == 1)
  {
    result = 2.0;
  }

  if (!this)
  {
    return 1.0;
  }

  return result;
}

float CinnAlgs::getZdacFreq(unsigned int a1)
{
  result = 0.0;
  if (a1 <= 8)
  {
    return flt_2512C8280[a1];
  }

  return result;
}

float CinnAlgs::convertAdcAcVolt(uint64_t a1, unsigned int a2, int a3)
{
  result = 0.0;
  if (a2 <= 0xF)
  {
    v6 = 0.0;
    if (*(a1 + 26) == 1)
    {
      v6 = 2.0;
    }

    if (*(a1 + 26))
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }

    if (a3)
    {
      v7 = CinnAlgs::getPgaGain(*(a1 + 25)) * v7;
      v8 = 0.30398;
    }

    else
    {
      v8 = 0.3117;
    }

    return (v8 * *(a1 + 28 * a2 + 47)) / v7;
  }

  return result;
}

void mimosa::v2::encode_start_of_stream(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<std::byte>::reserve(&__p, 0x80uLL);
  std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte const*,std::byte const*>(&__p, __p, mimosa::v2::encode_start_of_stream(mimosa::Metadata const&,std::function<void ()(std::byte const*,unsigned long)>)::start_sequence, &mimosa::OpREv5::n_dce_led_index_map, 8);
  if ((v11 - __p) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 += 2;
  }

  else
  {
    std::vector<std::byte>::__append(&__p, 2uLL);
  }

  if (*(a1 + 4) == 1)
  {
    mimosa::v2::encode_metadata_kv_pair<unsigned int>(0, a1, &__p);
  }

  if (*(a1 + 12) == 1)
  {
    mimosa::v2::encode_metadata_kv_pair<unsigned int>(1, (a1 + 8), &__p);
  }

  if (*(a1 + 32) == 1)
  {
    mimosa::v2::encode_metadata_kv_pair(2, a1 + 16, &__p);
  }

  if (*(a1 + 49) == 1)
  {
    mimosa::v2::encode_metadata_kv_pair(3, a1 + 33, &__p);
  }

  if (*(a1 + 80) == 1)
  {
    mimosa::v2::encode_metadata_kv_pair(4, a1 + 56, &__p);
  }

  if (*(a1 + 112) == 1)
  {
    mimosa::v2::encode_metadata_kv_pair(5, a1 + 88, &__p);
  }

  if (*(a1 + 144) == 1)
  {
    mimosa::v2::encode_metadata_kv_pair(6, a1 + 120, &__p);
  }

  if (*(a1 + 224) == 1)
  {
    LOBYTE(v13) = 7;
    std::vector<std::byte>::push_back[abi:ne200100](&__p, &v13);
    mimosa::v2::encode((a1 + 152), &v13);
    mimosa::v2::nanite::leb128_encode<std::back_insert_iterator<std::vector<std::byte>>>(v14 - v13, &__p);
    v4 = v13;
    v5 = v14;
    p_p = &__p;
    if (v13 != v14)
    {
      do
      {
        std::back_insert_iterator<std::vector<std::byte>>::operator=[abi:ne200100](&p_p, v4++);
      }

      while (v4 != v5);
      v4 = v13;
    }

    if (v4)
    {
      v14 = v4;
      operator delete(v4);
    }
  }

  if (*(a1 + 2476) == 1)
  {
    LOBYTE(v13) = 8;
    std::vector<std::byte>::push_back[abi:ne200100](&__p, &v13);
    mimosa::v2::encode(a1 + 232);
    mimosa::v2::nanite::leb128_encode<std::back_insert_iterator<std::vector<std::byte>>>(v14 - v13, &__p);
    v6 = v13;
    v7 = v14;
    p_p = &__p;
    if (v13 != v14)
    {
      do
      {
        std::back_insert_iterator<std::vector<std::byte>>::operator=[abi:ne200100](&p_p, v6++);
      }

      while (v6 != v7);
      v6 = v13;
    }

    if (v6)
    {
      v14 = v6;
      operator delete(v6);
    }
  }

  v8 = __p;
  if ((v11 - __p) >= 0x1000A)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "too much metadata to encode");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(__p + 4) = v11 - __p - 10;
  std::function<void ()(std::byte const*,unsigned long)>::operator()(a2, v8, v11 - v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_2512A2DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::byte>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

char *mimosa::v2::encode_metadata_kv_pair<unsigned int>(char a1, int *a2, uint64_t a3)
{
  v6 = a1;
  std::vector<std::byte>::push_back[abi:ne200100](a3, &v6);
  __src = *a2;
  return std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte const*,std::byte const*>(a3, *(a3 + 8), &__src, &v8, 4);
}

void mimosa::v2::encode_metadata_kv_pair(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  std::vector<std::byte>::push_back[abi:ne200100](a3, &v6);
  for (i = 0; i != 16; ++i)
  {
    v7 = *(a2 + i);
    std::vector<std::byte>::push_back[abi:ne200100](a3, &v7);
  }
}

{
  v4 = a2;
  if (*(a2 + 23) < 0 && *(a2 + 8) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "attempt to encode a string of metadata that's longer than 255");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = a1;
  std::vector<std::byte>::push_back[abi:ne200100](a3, &v11);
  LOBYTE(v5) = v4[23];
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  v10 = v5;
  std::vector<std::byte>::push_back[abi:ne200100](a3, &v10);
  v6 = *(v4 + 1);
  if (v4[23] >= 0)
  {
    v7 = v4[23];
  }

  else
  {
    v4 = *v4;
    v7 = v6;
  }

  for (; v7; --v7)
  {
    v8 = *v4++;
    v12 = v8;
    std::vector<std::byte>::push_back[abi:ne200100](a3, &v12);
  }
}

uint64_t std::function<void ()(std::byte const*,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

unsigned __int8 *mimosa::v2::decode_metadata()
{
  v0 = MEMORY[0x28223BE20]();
  v59 = *MEMORY[0x277D85DE8];
  if (v1 < 2 || (v3 = v0, v4 = v0 + 2, v5 = *v0, v33 = v0 + 2, v5 + 2 > v1))
  {
    v6 = 0;
    goto LABEL_79;
  }

  v29 = v2;
  LOBYTE(v35) = 0;
  v7 = &v4[v5];
  v36 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v39[0]) = 0;
  *v40 = 0;
  v42 = 0;
  LOBYTE(v43[0]) = 0;
  v45 = 0;
  LOBYTE(v46[0]) = 0;
  v48 = 0;
  LOBYTE(v49[0]) = 0;
  v51 = 0;
  LOBYTE(v52) = 0;
  v56 = 0;
  LOBYTE(v57[0]) = 0;
  v58 = 0;
  v32[0] = &v33;
  v32[1] = &v4[v5];
  if (v5)
  {
    while (1)
    {
      v8 = v4 + 1;
      v33 = v4 + 1;
      v9 = *v4;
      if (v9 <= 3)
      {
        if (*v4 > 1u)
        {
          if (v9 == 2)
          {
            v39[0] = 0;
            v39[1] = 0;
            v40[0] = 1;
            v12 = v4 + 17;
            if (v12 > v7)
            {
              goto LABEL_81;
            }

            for (i = 0; i != 16; ++i)
            {
              *(v39 + i) = v8[i];
            }
          }

          else
          {
            if (v9 != 3)
            {
              goto LABEL_80;
            }

            *&v40[1] = 0;
            v41 = 0;
            v42 = 1;
            v12 = v4 + 17;
            if (v12 > v7)
            {
LABEL_81:
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "attempt to read beyond metadata buffer region");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            for (j = 0; j != 16; ++j)
            {
              v40[j + 1] = v8[j];
            }
          }
        }

        else if (*v4)
        {
          v37 = 0;
          v38 = 1;
          v12 = v4 + 5;
          if (v12 > v7)
          {
            goto LABEL_81;
          }

          v37 = *v8;
        }

        else
        {
          v35 = 0;
          v36 = 1;
          v12 = v4 + 5;
          if (v12 > v7)
          {
            goto LABEL_81;
          }

          v35 = *v8;
        }

        goto LABEL_59;
      }

      if (*v4 <= 5u)
      {
        break;
      }

      if (v9 != 6)
      {
        if (v9 == 7)
        {
          if (v56 == 1)
          {
            if (__p)
            {
              *(&__p + 1) = __p;
              operator delete(__p);
            }

            if (v53[1])
            {
              v53[2] = v53[1];
              operator delete(v53[1]);
            }

            if (v52)
            {
              *(&v52 + 1) = v52;
              operator delete(v52);
            }
          }

          v55 = 0;
          __p = 0u;
          memset(v53, 0, sizeof(v53));
          v52 = 0u;
          v56 = 1;
          if (v33 == v7)
          {
            goto LABEL_81;
          }

          v10 = mimosa::v2::nanite::leb128_decode<unsigned long long,std::byte const*>(v33, v7);
          v33 = v17;
          mimosa::v2::decode_light_path_semantics(v17, v10, __src);
          if (v52)
          {
            *(&v52 + 1) = v52;
            operator delete(v52);
          }

          v52 = *__src;
          v53[0] = *&__src[16];
          memset(__src, 0, 24);
          if (v53[1])
          {
            v53[2] = v53[1];
            operator delete(v53[1]);
          }

          *&v53[1] = *&__src[24];
          v53[3] = *&__src[40];
          memset(&__src[24], 0, 24);
          v18 = __p;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
            v18 = *&__src[24];
          }

          __p = *&__src[48];
          v55 = *&__src[64];
          memset(&__src[48], 0, 24);
          if (v18)
          {
            *&__src[32] = v18;
            operator delete(v18);
          }

          if (*__src)
          {
            *&__src[8] = *__src;
            operator delete(*__src);
          }
        }

        else
        {
          if (v9 != 8)
          {
            goto LABEL_80;
          }

          bzero(v57, 0x33CuLL);
          v57[560] = 0;
          v58 = 1;
          if (v8 == v7)
          {
            goto LABEL_81;
          }

          v10 = mimosa::v2::nanite::leb128_decode<unsigned long long,std::byte const*>(v8, v7);
          v33 = v11;
          mimosa::v2::decode_opre();
          memcpy(v57, __src, sizeof(v57));
        }

        v12 = &v33[v10];
LABEL_59:
        v33 = v12;
        goto LABEL_60;
      }

      v14 = v49;
      v15 = &v51;
      if (v51 == 1)
      {
        v14 = v49;
        v15 = &v51;
        if (v50 < 0)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v14->__r_.__value_.__r.__words[0] = 0;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      *v15 = 1;
      mimosa::v2::decode_metadata(std::byte const*,unsigned long,std::function<BOOL ()(mimosa::Metadata const&)>)::$_1::operator()(v32, v14);
LABEL_60:
      v4 = v33;
      if (v33 >= v7)
      {
        goto LABEL_61;
      }
    }

    if (v9 == 4)
    {
      v15 = &v45;
      v14 = v43;
      if (v45 != 1)
      {
        goto LABEL_39;
      }

      v15 = &v45;
      v14 = v43;
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v9 != 5)
      {
LABEL_80:
        v23 = *v4;
        v24 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v30, v23);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("metadata dictionary key ", &v30, &v31);
        v25 = std::string::append(&v31, " not recognized", 0xFuLL);
        v26 = *&v25->__r_.__value_.__l.__data_;
        *&__src[16] = *(&v25->__r_.__value_.__l + 2);
        *__src = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x25306FCE0](v24, __src);
        __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = &v48;
      v14 = v46;
      if (v48 != 1)
      {
        goto LABEL_39;
      }

      v15 = &v48;
      v14 = v46;
      if ((v47 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_38:
    operator delete(v14->__r_.__value_.__l.__data_);
    goto LABEL_39;
  }

LABEL_61:
  if (v4 != v7)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "something went wrong while parsing the metadata dictionary");
    __cxa_throw(v28, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v19 = *(v29 + 24);
  if (!v19)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v19 + 48))(v19, &v35);
  v20 = v33;
  if (v56 == 1)
  {
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v53[1])
    {
      v53[2] = v53[1];
      operator delete(v53[1]);
    }

    if (v52)
    {
      *(&v52 + 1) = v52;
      operator delete(v52);
    }
  }

  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46[0]);
  }

  v6 = (v20 - v3);
  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43[0]);
  }

LABEL_79:
  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2512A3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v37 & 1) == 0)
    {
LABEL_10:
      mimosa::Metadata::~Metadata(&STACK[0x948]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v36);
  goto LABEL_10;
}

void mimosa::v2::decode_metadata(std::byte const*,unsigned long,std::function<BOOL ()(mimosa::Metadata const&)>)::$_1::operator()(unsigned __int8 ***a1, std::string *this)
{
  v2 = **a1;
  if (v2 == a1[1])
  {
    goto LABEL_13;
  }

  **a1 = v2 + 1;
  std::string::resize(this, *v2, 0);
  v5 = *a1;
  v6 = **a1;
  v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (&v6[size] <= a1[1])
    {
      v9 = this->__r_.__value_.__r.__words[0];
      if (!size)
      {
        goto LABEL_10;
      }

      do
      {
LABEL_8:
        v10 = *v6++;
        v9->__r_.__value_.__s.__data_[0] = v10;
        v9 = (v9 + 1);
        --size;
      }

      while (size);
      LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
      v5 = *a1;
      v6 = **a1;
      goto LABEL_10;
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "attempt to read beyond metadata buffer region");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v9 = this;
  if (&v6[v7] > a1[1])
  {
    goto LABEL_13;
  }

  if (*(&this->__r_.__value_.__s + 23))
  {
    goto LABEL_8;
  }

LABEL_10:
  v7 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = this->__r_.__value_.__l.__size_;
  }

  *v5 = &v6[v7];
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

char *std::vector<std::byte>::__insert_with_size[abi:ne200100]<std::byte const*,std::byte const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

void std::vector<std::byte>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<std::byte>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t mimosa::v2::nanite::leb128_encode<std::back_insert_iterator<std::vector<std::byte>>>(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v8 = a1 | 0x80;
  LOBYTE(v4) = a1;
  if (a1 >= 0x80)
  {
    do
    {
      v4 = v3 >> 7;
      v7 = a2;
      std::back_insert_iterator<std::vector<std::byte>>::operator=[abi:ne200100](&v7, &v8);
      v8 = (v3 >> 7) | 0x80;
      v5 = v3 >> 14;
      v3 >>= 7;
    }

    while (v5);
  }

  v8 = v4 & 0x7F;
  v7 = a2;
  std::back_insert_iterator<std::vector<std::byte>>::operator=[abi:ne200100](&v7, &v8);
  return a2;
}

uint64_t *std::back_insert_iterator<std::vector<std::byte>>::operator=[abi:ne200100](uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = &v5[-*v3];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*v3];
    *v8 = *a2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v3 = 0;
    *(v3 + 8) = v8 + 1;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

uint64_t mimosa::v2::nanite::leb128_decode<unsigned long long,std::byte const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0;
  result = 0;
  while (1)
  {
    if (a1 == a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "no more encoded bytes available");
      v7 = off_2796B3BA8;
      v8 = MEMORY[0x277D825E0];
      goto LABEL_9;
    }

    v5 = *a1;
    result |= (v5 & 0x7F) << v3;
    if (v3 == 63)
    {
      break;
    }

    ++a1;
    v3 += 7;
    if ((v5 & 0x80) == 0)
    {
      return result;
    }
  }

  if (v5 >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid input");
    v7 = MEMORY[0x277D82760];
    v8 = MEMORY[0x277D82600];
LABEL_9:
    __cxa_throw(exception, v7, v8);
  }

  return result;
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t mimosa::v2::encode(uint64_t a1)
{
  v1 = *(a1 + 2240);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_286352BF0[v1])(&v4, a1);
}

void *mimosa::v2::decode_opre()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v143 = *MEMORY[0x277D85DE8];
  v6 = *v0;
  if (v6 > 6)
  {
    if (v6 - 7 < 2)
    {
      bzero(__src, 0x650uLL);
      if (!v2)
      {
        mimosa::v2::decode_opre();
      }

      v47 = 0;
      LOBYTE(__src[0]) = v6;
      v48 = v2 - 1;
      v49 = (v3 + 1);
      do
      {
        if (v47 != 16)
        {
          if (v48 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v50 = *v49++;
          *(__src + v47 + 4) = v50;
          v48 -= 4;
        }

        v47 += 4;
      }

      while (v47 != 52);
      for (i = 0; i != 52; i += 4)
      {
        if (i != 16)
        {
          if (v48 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v52 = *v49++;
          *(&__src[3] + i + 8) = v52;
          v48 -= 4;
        }
      }

      for (j = 0; j != 52; j += 4)
      {
        if (j != 16)
        {
          if (v48 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v54 = *v49++;
          *(&__src[6] + j + 12) = v54;
          v48 -= 4;
        }
      }

      for (k = 0; k != 52; k += 4)
      {
        if (k != 16)
        {
          if (v48 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v56 = *v49++;
          *(&__src[10] + k) = v56;
          v48 -= 4;
        }
      }

      v57 = 0;
      v58 = &__src[13] + 4;
      do
      {
        for (m = 0; m != 32; m += 4)
        {
          if (m == 4)
          {
            DWORD2(__src[2 * v57 + 13]) = 1065353216;
          }

          else
          {
            if (v48 <= 3)
            {
              mimosa::v2::decode_opre();
            }

            v60 = *v49++;
            *&v58[m] = v60;
            v48 -= 4;
          }
        }

        ++v57;
        v58 += 32;
      }

      while (v57 != 4);
      for (n = 0; n != 3; ++n)
      {
        if (v48 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        v62 = *v49++;
        *(&__src[81] + n + 1) = v62;
        v48 -= 4;
      }

      v63 = 0;
      v64 = &__src[82] + 4;
      do
      {
        for (ii = 0; ii != 16; ii += 4)
        {
          if (v63 != 4)
          {
            if (v48 <= 3)
            {
              mimosa::v2::decode_opre();
            }

            v66 = *v49++;
            *&v64[ii] = v66;
            v48 -= 4;
          }
        }

        ++v63;
        v64 += 16;
      }

      while (v63 != 13);
      for (jj = 0; jj != 6; ++jj)
      {
        if (v48 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        *(&__src[95] + jj * 4 + 4) = v49[jj];
        v48 -= 4;
      }

      v68 = 0;
      v69 = (v49 + 11);
      do
      {
        if (v48 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        *(&__src[96] + v68 * 4 + 12) = v49[v68 + 6];
        v48 -= 4;
        v69 += 4;
        ++v68;
      }

      while (v68 != 5);
      v70 = 0;
      v71 = v49 + 10;
      v72 = 1;
      do
      {
        if (v48 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        v73 = v72;
        v72 = 0;
        v74 = v71[1];
        ++v71;
        *(&__src[98] + v70 + 1) = v74;
        v48 -= 4;
        v69 += 4;
        v70 = 1;
      }

      while ((v73 & 1) != 0);
      if (v48 <= 3)
      {
        mimosa::v2::decode_opre();
      }

      HIDWORD(__src[99]) = v71[1];
      if (v48 - 4 <= 0xB)
      {
        mimosa::v2::decode_opre();
      }

      v75 = *(v71 + 1);
      DWORD2(__src[100]) = v71[4];
      *&__src[100] = v75;
      if ((v48 & 0xFFFFFFFFFFFFFFFCLL) == 0x10)
      {
        mimosa::v2::decode_opre();
      }

      v76 = v48 + 4;
      HIDWORD(__src[100]) = v71[5];
      bzero(v140, 0x780uLL);
      mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>(v69, v71 + v76, v140, &v140[120]);
      v77 = 0;
      v78 = &__src[21] + 4;
      v79 = v140;
      do
      {
        v80 = 0;
        v81 = v78;
        do
        {
          v82 = 0;
          v83 = v81;
          do
          {
            LOBYTE(v84) = 0;
            v85 = v83;
            v86 = 10;
            do
            {
              v87 = *v79++;
              v84 = v84 + (-(v87 & 1) ^ (v87 >> 1));
              *v85++ = v84;
              --v86;
            }

            while (v86);
            ++v82;
            v83 += 10;
          }

          while (v82 != 8);
          ++v80;
          v81 += 80;
        }

        while (v80 != 4);
        ++v77;
        v78 += 320;
      }

      while (v77 != 3);
      result = memcpy(v5, __src, 0x650uLL);
      v29 = 2;
      goto LABEL_193;
    }

    if (v6 == 9)
    {
      bzero(v140, 0x8C0uLL);
      if (!v2)
      {
        mimosa::v2::decode_opre();
      }

      LOBYTE(v140[0]) = 9;
      v96 = v2 - 1;
      v97 = (v3 + 1);
      for (kk = 4; kk != 56; kk += 4)
      {
        if (kk != 20)
        {
          if (v96 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v99 = *v97++;
          *(v140 + kk) = v99;
          v96 -= 4;
        }
      }

      do
      {
        if (kk != 72)
        {
          if (v96 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v100 = *v97++;
          *(v140 + kk) = v100;
          v96 -= 4;
        }

        kk += 4;
      }

      while (kk != 108);
      do
      {
        if (kk != 124)
        {
          if (v96 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v101 = *v97++;
          *(v140 + kk) = v101;
          v96 -= 4;
        }

        kk += 4;
      }

      while (kk != 160);
      do
      {
        if (kk != 176)
        {
          if (v96 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          v102 = *v97++;
          *(v140 + kk) = v102;
          v96 -= 4;
        }

        kk += 4;
      }

      while (kk != 212);
      v103 = 0;
      v104 = &v140[13] + 4;
      do
      {
        for (mm = 0; mm != 32; mm += 4)
        {
          if (mm == 4)
          {
            DWORD2(v140[2 * v103 + 13]) = 1065353216;
          }

          else
          {
            if (v96 <= 3)
            {
              mimosa::v2::decode_opre();
            }

            v106 = *v97++;
            *&v104[mm] = v106;
            v96 -= 4;
          }
        }

        ++v103;
        v104 += 32;
      }

      while (v103 != 4);
      for (nn = 325; nn != 328; ++nn)
      {
        if (v96 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        v108 = *v97++;
        *(v140 + nn) = v108;
        v96 -= 4;
      }

      v109 = 0;
      v110 = &v140[82] + 4;
      do
      {
        for (i1 = 0; i1 != 32; i1 += 4)
        {
          if (v109 != 4)
          {
            if (v96 <= 3)
            {
              mimosa::v2::decode_opre();
            }

            v112 = *v97++;
            *&v110[i1] = v112;
            v96 -= 4;
          }
        }

        ++v109;
        v110 += 32;
      }

      while (v109 != 13);
      v113 = 0;
      v114 = &v140[108] + 4;
      do
      {
        v115 = 0;
        v116 = v97;
        do
        {
          if (v96 <= 3)
          {
            mimosa::v2::decode_opre();
          }

          *&v114[v115 * 4] = v97[v115];
          v96 -= 4;
          ++v115;
        }

        while (v115 != 8);
        ++v113;
        v114 += 32;
        v97 += 8;
      }

      while (v113 != 4);
      v117 = 0;
      v118 = (v116 + 13);
      do
      {
        if (v96 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        *(&v140[134] + v117 * 4 + 4) = v116[v117 + 8];
        v96 -= 4;
        v118 += 4;
        ++v117;
      }

      while (v117 != 6);
      v119 = v116 + 13;
      for (i2 = 2172; i2 != 2192; i2 += 4)
      {
        if (v96 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        v121 = v119[1];
        ++v119;
        *(v140 + i2) = v121;
        v96 -= 4;
        v118 += 4;
      }

      v122 = 0;
      v123 = 1;
      do
      {
        if (v96 <= 3)
        {
          mimosa::v2::decode_opre();
        }

        v124 = v123;
        v123 = 0;
        v125 = v119[1];
        ++v119;
        *(&v140[137] + v122 + 1) = v125;
        v96 -= 4;
        v118 += 4;
        v122 = 1;
      }

      while ((v124 & 1) != 0);
      if (v96 <= 3)
      {
        mimosa::v2::decode_opre();
      }

      HIDWORD(v140[138]) = v119[1];
      if (v96 - 4 <= 0xB)
      {
        mimosa::v2::decode_opre();
      }

      v126 = *(v119 + 1);
      DWORD2(v140[139]) = v119[4];
      *&v140[139] = v126;
      if ((v96 & 0xFFFFFFFFFFFFFFFCLL) == 0x10)
      {
        mimosa::v2::decode_opre();
      }

      v127 = v96 + 4;
      HIDWORD(v140[139]) = v119[5];
      bzero(__src, 0x780uLL);
      mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>(v118, v119 + v127, __src, v142);
      v128 = 0;
      v129 = &v140[21] + 4;
      v130 = __src;
      do
      {
        v131 = 0;
        v132 = v129;
        do
        {
          v133 = 0;
          v134 = v132;
          do
          {
            LOBYTE(v135) = 0;
            v136 = v134;
            v137 = 10;
            do
            {
              v138 = *v130++;
              v135 = v135 + (-(v138 & 1) ^ (v138 >> 1));
              *v136++ = v135;
              --v137;
            }

            while (v137);
            ++v133;
            v134 += 10;
          }

          while (v133 != 8);
          ++v131;
          v132 += 80;
        }

        while (v131 != 4);
        ++v128;
        v129 += 320;
      }

      while (v128 != 3);
      result = memcpy(v5, v140, 0x8C0uLL);
      v29 = 3;
      goto LABEL_193;
    }

    if (v6 == 64)
    {
      bzero(__src, 0x3D4uLL);
      if (!v2)
      {
        mimosa::v2::decode_opre();
      }

      LOBYTE(__src[0]) = 1;
      if (v2 <= 0x18)
      {
        mimosa::v2::decode_opre();
      }

      *(__src + 4) = *(v3 + 1);
      *(&__src[1] + 4) = *(v3 + 17);
      if (v2 - 25 <= 0x17)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[1] + 12) = *(v3 + 25);
      *(&__src[2] + 12) = *(v3 + 41);
      if (v2 - 49 <= 0x17)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[3] + 4) = *(v3 + 49);
      *(&__src[4] + 4) = *(v3 + 65);
      if (v2 - 73 <= 0x17)
      {
        mimosa::v2::decode_opre();
      }

      v7 = 0;
      *(&__src[4] + 12) = *(v3 + 73);
      *(&__src[5] + 12) = *(v3 + 89);
      v8 = v2 - 97;
      v9 = v3 + 97;
      v10 = &__src[6] + 4;
      do
      {
        for (i3 = 0; i3 != 32; i3 += 4)
        {
          if (i3 == 4)
          {
            DWORD2(__src[2 * v7 + 6]) = 1065353216;
          }

          else
          {
            if (v8 <= 3)
            {
              mimosa::v2::decode_opre();
            }

            v12 = *v9;
            v9 += 4;
            *&v10[i3] = v12;
            v8 -= 4;
          }
        }

        ++v7;
        v10 += 32;
      }

      while (v7 != 4);
      if (v8 <= 7)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[54] + 4) = *v9;
      if (v8 - 8 <= 0x5F)
      {
        mimosa::v2::decode_opre();
      }

      v13 = *(v9 + 24);
      *(&__src[54] + 12) = *(v9 + 8);
      *(&__src[55] + 12) = v13;
      v14 = *(v9 + 40);
      v15 = *(v9 + 56);
      v16 = *(v9 + 88);
      *(&__src[58] + 12) = *(v9 + 72);
      *(&__src[59] + 12) = v16;
      *(&__src[56] + 12) = v14;
      *(&__src[57] + 12) = v15;
      if ((v8 & 0xFFFFFFFFFFFFFFF8) == 0x68)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[60] + 12) = *(v9 + 13);
      bzero(v140, 0x500uLL);
      mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>((v9 + 112), &v9[v8], v140, &v140[80]);
      v17 = 0;
      v18 = v140;
      v19 = 1;
      do
      {
        v20 = 0;
        v21 = v19;
        v22 = &__src[20 * v17];
        do
        {
          v23 = 0;
          v24 = v22;
          do
          {
            LOBYTE(v25) = 0;
            for (i4 = 228; i4 != 238; ++i4)
            {
              v27 = *v18++;
              v25 = v25 + (-(v27 & 1) ^ (v27 >> 1));
              *(v24 + i4) = v25;
            }

            ++v23;
            v24 = (v24 + 10);
          }

          while (v23 != 8);
          ++v20;
          v22 += 5;
        }

        while (v20 != 4);
        v19 = 0;
        v17 = 1;
      }

      while ((v21 & 1) != 0);
      result = memcpy(v5, __src, 0x3D4uLL);
      v29 = 4;
LABEL_193:
      v5[560] = v29;
      goto LABEL_194;
    }

LABEL_256:
    mimosa::v2::decode_opre();
  }

  if (v6 - 4 >= 2)
  {
    if (v6 == 6)
    {
      bzero(__src, 0x554uLL);
      if (!v2)
      {
        mimosa::v2::decode_opre();
      }

      LOBYTE(__src[0]) = 6;
      if (v2 <= 0x34)
      {
        mimosa::v2::decode_opre();
      }

      *(__src + 4) = *(v3 + 1);
      *(&__src[1] + 4) = *(v3 + 17);
      *(&__src[2] + 4) = *(v3 + 33);
      DWORD1(__src[3]) = *(v3 + 49);
      if (v2 - 53 <= 0x33)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[3] + 8) = *(v3 + 53);
      *(&__src[4] + 8) = *(v3 + 69);
      *(&__src[5] + 8) = *(v3 + 85);
      DWORD2(__src[6]) = *(v3 + 101);
      if (v2 - 105 <= 0x33)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[6] + 12) = *(v3 + 105);
      *(&__src[7] + 12) = *(v3 + 121);
      *(&__src[8] + 12) = *(v3 + 137);
      HIDWORD(__src[9]) = *(v3 + 153);
      if (v2 - 157 <= 0x33)
      {
        mimosa::v2::decode_opre();
      }

      __src[10] = *(v3 + 157);
      __src[11] = *(v3 + 173);
      __src[12] = *(v3 + 189);
      LODWORD(__src[13]) = *(v3 + 205);
      if (v2 - 209 <= 0x7F)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[17] + 4) = *(v3 + 273);
      *(&__src[18] + 4) = *(v3 + 289);
      *(&__src[19] + 4) = *(v3 + 305);
      *(&__src[20] + 4) = *(v3 + 321);
      *(&__src[16] + 4) = *(v3 + 257);
      *(&__src[13] + 4) = *(v3 + 209);
      *(&__src[14] + 4) = *(v3 + 225);
      *(&__src[15] + 4) = *(v3 + 241);
      if (v2 - 337 <= 0xF)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[85] + 4) = *(v3 + 337);
      if (v2 - 353 <= 0xCF)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[95] + 4) = *(v3 + 497);
      *(&__src[96] + 4) = *(v3 + 513);
      *(&__src[97] + 4) = *(v3 + 529);
      *(&__src[98] + 4) = *(v3 + 545);
      *(&__src[91] + 4) = *(v3 + 433);
      *(&__src[92] + 4) = *(v3 + 449);
      *(&__src[93] + 4) = *(v3 + 465);
      *(&__src[94] + 4) = *(v3 + 481);
      *(&__src[87] + 4) = *(v3 + 369);
      *(&__src[88] + 4) = *(v3 + 385);
      *(&__src[89] + 4) = *(v3 + 401);
      *(&__src[90] + 4) = *(v3 + 417);
      *(&__src[86] + 4) = *(v3 + 353);
      if (v2 - 561 <= 0x5F)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[101] + 4) = *(v3 + 593);
      *(&__src[102] + 4) = *(v3 + 609);
      *(&__src[103] + 4) = *(v3 + 625);
      *(&__src[104] + 4) = *(v3 + 641);
      *(&__src[99] + 4) = *(v3 + 561);
      *(&__src[100] + 4) = *(v3 + 577);
      if (v2 - 657 <= 3)
      {
        mimosa::v2::decode_opre();
      }

      DWORD1(__src[105]) = *(v3 + 657);
      if (v2 - 661 <= 0xB)
      {
        mimosa::v2::decode_opre();
      }

      *(&__src[105] + 1) = *(v3 + 661);
      LODWORD(__src[106]) = *(v3 + 669);
      if (v2 - 673 <= 3)
      {
        mimosa::v2::decode_opre();
      }

      DWORD1(__src[106]) = *(v3 + 673);
      bzero(v140, 0x800uLL);
      mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>((v3 + 677), &v3[v2], v140, &v140[128]);
      v88 = 0;
      v89 = 0;
      v90 = v140;
      v91 = __src;
      do
      {
        v92 = 0;
        v93 = v91;
        do
        {
          for (i5 = 340; i5 != 372; ++i5)
          {
            v95 = *v90++;
            v89 += -(v95 & 1) ^ (v95 >> 1);
            *(v93 + i5) = v89;
          }

          ++v92;
          v93 += 2;
        }

        while (v92 != 8);
        ++v88;
        v91 += 16;
      }

      while (v88 != 4);
      result = memcpy(v5, __src, 0x6A8uLL);
      v29 = 1;
      goto LABEL_193;
    }

    goto LABEL_256;
  }

  bzero(v140, 0x2F4uLL);
  if (!v2)
  {
    mimosa::v2::decode_opre();
  }

  LOBYTE(v140[0]) = v6;
  if (v2 <= 0x34)
  {
    mimosa::v2::decode_opre();
  }

  *(v140 + 4) = *(v3 + 1);
  *(&v140[1] + 4) = *(v3 + 17);
  *(&v140[2] + 4) = *(v3 + 33);
  DWORD1(v140[3]) = *(v3 + 49);
  if (v2 - 53 <= 0x33)
  {
    mimosa::v2::decode_opre();
  }

  *(&v140[3] + 8) = *(v3 + 53);
  *(&v140[4] + 8) = *(v3 + 69);
  *(&v140[5] + 8) = *(v3 + 85);
  DWORD2(v140[6]) = *(v3 + 101);
  if (v2 - 105 <= 0x33)
  {
    mimosa::v2::decode_opre();
  }

  *(&v140[6] + 12) = *(v3 + 105);
  *(&v140[7] + 12) = *(v3 + 121);
  *(&v140[8] + 12) = *(v3 + 137);
  HIDWORD(v140[9]) = *(v3 + 153);
  if (v2 - 157 <= 0x33)
  {
    mimosa::v2::decode_opre();
  }

  v140[10] = *(v3 + 157);
  v140[11] = *(v3 + 173);
  v140[12] = *(v3 + 189);
  LODWORD(v140[13]) = *(v3 + 205);
  if (v2 - 209 <= 0x7F)
  {
    mimosa::v2::decode_opre();
  }

  *(&v140[17] + 4) = *(v3 + 273);
  *(&v140[18] + 4) = *(v3 + 289);
  *(&v140[19] + 4) = *(v3 + 305);
  *(&v140[20] + 4) = *(v3 + 321);
  *(&v140[16] + 4) = *(v3 + 257);
  *(&v140[13] + 4) = *(v3 + 209);
  *(&v140[14] + 4) = *(v3 + 225);
  *(&v140[15] + 4) = *(v3 + 241);
  if (v2 - 337 <= 0xF)
  {
    mimosa::v2::decode_opre();
  }

  *(&v140[33] + 4) = *(v3 + 337);
  if (v2 - 353 <= 0xCF)
  {
    mimosa::v2::decode_opre();
  }

  v30 = *(v3 + 529);
  v142[10] = *(v3 + 513);
  v142[11] = v30;
  v142[12] = *(v3 + 545);
  v31 = *(v3 + 465);
  v142[6] = *(v3 + 449);
  v142[7] = v31;
  v32 = *(v3 + 481);
  v142[9] = *(v3 + 497);
  v142[8] = v32;
  v33 = *(v3 + 401);
  v142[2] = *(v3 + 385);
  v142[3] = v33;
  v34 = *(v3 + 417);
  v142[5] = *(v3 + 433);
  v142[4] = v34;
  v35 = *(v3 + 353);
  v142[1] = *(v3 + 369);
  v142[0] = v35;
  if (v2 - 561 <= 0x3F)
  {
    mimosa::v2::decode_opre();
  }

  *(&v140[47] + 4) = *(v3 + 561);
  *(&v140[48] + 4) = *(v3 + 577);
  *(&v140[49] + 4) = *(v3 + 593);
  *(&v140[50] + 4) = *(v3 + 609);
  if (v2 - 625 <= 3)
  {
    mimosa::v2::decode_opre();
  }

  DWORD1(v140[51]) = *(v3 + 625);
  if (v2 - 629 <= 3)
  {
    mimosa::v2::decode_opre();
  }

  DWORD2(v140[51]) = *(v3 + 629);
  v36 = mimosa::OpREv5::n_dce_led_index_map;
  for (i6 = 548; i6 != 756; i6 += 16)
  {
    v38 = *v36++;
    *(v140 + i6) = v142[v38];
  }

  memset(__src, 0, 384);
  mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>((v3 + 633), &v3[v2], __src, &__src[24]);
  v39 = 0;
  v40 = 0;
  v41 = &v140[21] + 4;
  v42 = __src;
  do
  {
    v43 = 0;
    v44 = v41;
    do
    {
      for (i7 = 0; i7 != 192; i7 += 48)
      {
        v46 = *v42++;
        v40 += -(v46 & 1) ^ (v46 >> 1);
        v44[i7] = v40;
      }

      ++v43;
      v44 += 6;
    }

    while (v43 != 8);
    ++v39;
    ++v41;
  }

  while (v39 != 6);
  result = memcpy(v5, v140, 0x33CuLL);
  v5[560] = 0;
LABEL_194:
  v139 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mimosa::v2::encode(std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&>@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::byte>::reserve(a2, 0x33CuLL);
  LOBYTE(v58) = *a1;
  std::vector<std::byte>::push_back[abi:ne200100](a2, &v58);
  v4 = 0;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v5 = (a1 + 548);
  do
  {
    v6 = *v5++;
    *(&v58 + mimosa::OpREv5::n_dce_led_index_map[v4++]) = v6;
  }

  while (v4 != 13);
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8 > 0xFFFFFFFFFFFFFFCBLL)
  {
    v9 = &v7[v8 + 52];
    a2[1] = v9;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v7 = *a2;
    v9 = a2[1];
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 20);
  v12 = *(a1 + 36);
  *(v9 - 4) = *(a1 + 52);
  *(v9 - 20) = v12;
  *(v9 - 36) = v11;
  *(v9 - 52) = v10;
  if ((v9 - v7) > 0xFFFFFFFFFFFFFFCBLL)
  {
    v13 = v9 + 52;
    a2[1] = v13;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v7 = *a2;
    v13 = a2[1];
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  *(v13 - 4) = *(a1 + 104);
  *(v13 - 20) = v16;
  *(v13 - 36) = v15;
  *(v13 - 52) = v14;
  if ((v13 - v7) > 0xFFFFFFFFFFFFFFCBLL)
  {
    v17 = (v13 + 52);
    a2[1] = v17;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v7 = *a2;
    v17 = a2[1];
  }

  v18 = *(a1 + 108);
  v19 = *(a1 + 124);
  v20 = *(a1 + 140);
  *(v17 - 1) = *(a1 + 156);
  *(v17 - 20) = v20;
  *(v17 - 36) = v19;
  *(v17 - 52) = v18;
  if ((v17 - v7) > 0xFFFFFFFFFFFFFFCBLL)
  {
    v21 = v17 + 52;
    a2[1] = v21;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v7 = *a2;
    v21 = a2[1];
  }

  v22 = *(a1 + 160);
  v23 = *(a1 + 176);
  v24 = *(a1 + 192);
  *(v21 - 1) = *(a1 + 208);
  *(v21 - 20) = v24;
  *(v21 - 36) = v23;
  *(v21 - 52) = v22;
  if ((v21 - v7) > 0xFFFFFFFFFFFFFF7FLL)
  {
    v25 = v21 + 128;
    a2[1] = v25;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x80uLL);
    v7 = *a2;
    v25 = a2[1];
  }

  v26 = *(a1 + 212);
  v27 = *(a1 + 228);
  v28 = *(a1 + 260);
  *(v25 - 6) = *(a1 + 244);
  *(v25 - 5) = v28;
  *(v25 - 8) = v26;
  *(v25 - 7) = v27;
  v29 = *(a1 + 276);
  v30 = *(a1 + 292);
  v31 = *(a1 + 324);
  *(v25 - 2) = *(a1 + 308);
  *(v25 - 1) = v31;
  *(v25 - 4) = v29;
  *(v25 - 3) = v30;
  if ((v25 - v7) > 0xFFFFFFFFFFFFFFEFLL)
  {
    v33 = v25 + 16;
    a2[1] = v33;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x10uLL);
    v32 = *a2;
    v33 = a2[1];
  }

  *(v33 - 1) = *(a1 + 532);
  v34 = *a2;
  v35 = a2[1] - *a2;
  if (v35 > 0xFFFFFFFFFFFFFF2FLL)
  {
    v36 = &v34[v35 + 208];
    a2[1] = v36;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0xD0uLL);
    v34 = *a2;
    v36 = a2[1];
  }

  *(v36 - 64) = v67;
  *(v36 - 48) = v68;
  *(v36 - 32) = v69;
  *(v36 - 16) = v70;
  *(v36 - 128) = v63;
  *(v36 - 112) = v64;
  *(v36 - 96) = v65;
  *(v36 - 80) = v66;
  *(v36 - 192) = v59;
  *(v36 - 176) = v60;
  *(v36 - 160) = v61;
  *(v36 - 144) = v62;
  *(v36 - 208) = v58;
  if ((v36 - v34) > 0xFFFFFFFFFFFFFFBFLL)
  {
    v37 = v36 + 64;
    a2[1] = v37;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x40uLL);
    v34 = *a2;
    v37 = a2[1];
  }

  v38 = *(a1 + 756);
  v39 = *(a1 + 772);
  v40 = *(a1 + 804);
  *(v37 - 32) = *(a1 + 788);
  *(v37 - 16) = v40;
  *(v37 - 64) = v38;
  *(v37 - 48) = v39;
  if ((v37 - v34) > 0xFFFFFFFFFFFFFFFBLL)
  {
    v42 = (v37 + 4);
    a2[1] = v42;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v41 = *a2;
    v42 = a2[1];
  }

  *(v42 - 1) = *(a1 + 820);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
  {
    *a2;
    v44 = (a2[1] + 4);
    a2[1] = v44;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v43 = *a2;
    v44 = a2[1];
  }

  v45 = 0;
  v46 = 0;
  *(v44 - 4) = *(a1 + 824);
  v54[0] = 1;
  v54[1] = a2;
  v55 = 0;
  v56 = 0;
  v47 = a1 + 340;
  do
  {
    v48 = 0;
    v49 = v47;
    do
    {
      for (i = 0; i != 192; i += 48)
      {
        v51 = *(v49 + i);
        v57 = (2 * (v51 - v46)) ^ ((v51 - v46) >> 15);
        mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(v54, &v57, &v58);
        v46 = v51;
      }

      ++v48;
      v49 += 6;
    }

    while (v48 != 8);
    ++v45;
    ++v47;
  }

  while (v45 != 6);
  result = mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::finalise(v54);
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2512A583C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mimosa::v2::encode(std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&>@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::byte>::reserve(a2, 0x6A8uLL);
  LOBYTE(v64[0]) = *a1;
  std::vector<std::byte>::push_back[abi:ne200100](a2, v64);
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5 > 0xFFFFFFFFFFFFFFCBLL)
  {
    v6 = &v4[v5 + 52];
    a2[1] = v6;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v4 = *a2;
    v6 = a2[1];
  }

  v7 = *(a1 + 4);
  v8 = *(a1 + 20);
  v9 = *(a1 + 36);
  *(v6 - 4) = *(a1 + 52);
  *(v6 - 20) = v9;
  *(v6 - 36) = v8;
  *(v6 - 52) = v7;
  if ((v6 - v4) > 0xFFFFFFFFFFFFFFCBLL)
  {
    v10 = v6 + 52;
    a2[1] = v10;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v4 = *a2;
    v10 = a2[1];
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  *(v10 - 4) = *(a1 + 104);
  *(v10 - 20) = v13;
  *(v10 - 36) = v12;
  *(v10 - 52) = v11;
  if ((v10 - v4) > 0xFFFFFFFFFFFFFFCBLL)
  {
    v14 = (v10 + 52);
    a2[1] = v14;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v4 = *a2;
    v14 = a2[1];
  }

  v15 = *(a1 + 108);
  v16 = *(a1 + 124);
  v17 = *(a1 + 140);
  *(v14 - 1) = *(a1 + 156);
  *(v14 - 20) = v17;
  *(v14 - 36) = v16;
  *(v14 - 52) = v15;
  if ((v14 - v4) > 0xFFFFFFFFFFFFFFCBLL)
  {
    v18 = v14 + 52;
    a2[1] = v18;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x34uLL);
    v4 = *a2;
    v18 = a2[1];
  }

  v19 = *(a1 + 160);
  v20 = *(a1 + 176);
  v21 = *(a1 + 192);
  *(v18 - 1) = *(a1 + 208);
  *(v18 - 20) = v21;
  *(v18 - 36) = v20;
  *(v18 - 52) = v19;
  if ((v18 - v4) > 0xFFFFFFFFFFFFFF7FLL)
  {
    v22 = v18 + 128;
    a2[1] = v22;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x80uLL);
    v4 = *a2;
    v22 = a2[1];
  }

  v23 = *(a1 + 212);
  v24 = *(a1 + 228);
  v25 = *(a1 + 260);
  *(v22 - 6) = *(a1 + 244);
  *(v22 - 5) = v25;
  *(v22 - 8) = v23;
  *(v22 - 7) = v24;
  v26 = *(a1 + 276);
  v27 = *(a1 + 292);
  v28 = *(a1 + 324);
  *(v22 - 2) = *(a1 + 308);
  *(v22 - 1) = v28;
  *(v22 - 4) = v26;
  *(v22 - 3) = v27;
  if ((v22 - v4) > 0xFFFFFFFFFFFFFFEFLL)
  {
    v30 = v22 + 16;
    a2[1] = v30;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x10uLL);
    v29 = *a2;
    v30 = a2[1];
  }

  *(v30 - 1) = *(a1 + 1364);
  v31 = *a2;
  v32 = a2[1] - *a2;
  if (v32 > 0xFFFFFFFFFFFFFF2FLL)
  {
    v33 = &v31[v32 + 208];
    a2[1] = v33;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0xD0uLL);
    v31 = *a2;
    v33 = a2[1];
  }

  *(v33 - 208) = *(a1 + 1380);
  v34 = *(a1 + 1396);
  v35 = *(a1 + 1412);
  v36 = *(a1 + 1444);
  *(v33 - 160) = *(a1 + 1428);
  *(v33 - 144) = v36;
  *(v33 - 192) = v34;
  *(v33 - 176) = v35;
  v37 = *(a1 + 1460);
  v38 = *(a1 + 1476);
  v39 = *(a1 + 1508);
  *(v33 - 96) = *(a1 + 1492);
  *(v33 - 80) = v39;
  *(v33 - 128) = v37;
  *(v33 - 112) = v38;
  v40 = *(a1 + 1524);
  v41 = *(a1 + 1540);
  v42 = *(a1 + 1572);
  *(v33 - 32) = *(a1 + 1556);
  *(v33 - 16) = v42;
  *(v33 - 64) = v40;
  *(v33 - 48) = v41;
  if ((v33 - v31) > 0xFFFFFFFFFFFFFF9FLL)
  {
    v43 = v33 + 96;
    a2[1] = v43;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x60uLL);
    v31 = *a2;
    v43 = a2[1];
  }

  v44 = *(a1 + 1604);
  *(v43 - 96) = *(a1 + 1588);
  *(v43 - 80) = v44;
  v45 = *(a1 + 1620);
  v46 = *(a1 + 1636);
  v47 = *(a1 + 1668);
  *(v43 - 32) = *(a1 + 1652);
  *(v43 - 16) = v47;
  *(v43 - 64) = v45;
  *(v43 - 48) = v46;
  if ((v43 - v31) > 0xFFFFFFFFFFFFFFFBLL)
  {
    v49 = (v43 + 4);
    a2[1] = v49;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v48 = *a2;
    v49 = a2[1];
  }

  *(v49 - 1) = *(a1 + 1684);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFF3)
  {
    *a2;
    v51 = (a2[1] + 12);
    a2[1] = v51;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0xCuLL);
    v50 = *a2;
    v51 = a2[1];
  }

  v52 = v51;
  v53 = *(a1 + 1688);
  *(v52 - 4) = *(a1 + 1696);
  *(v52 - 12) = v53;
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
  {
    *a2;
    v55 = (a2[1] + 4);
    a2[1] = v55;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v54 = *a2;
    v55 = a2[1];
  }

  v56 = 0;
  v57 = 0;
  *(v55 - 4) = *(a1 + 1700);
  v64[0] = 1;
  v64[1] = a2;
  v65 = 0;
  v66 = 0;
  v58 = a1 + 340;
  do
  {
    v59 = 0;
    v60 = v58;
    do
    {
      for (i = 0; i != 32; ++i)
      {
        v62 = *(v60 + i);
        v67 = (2 * (v62 - v57)) ^ ((v62 - v57) >> 15);
        mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(v64, &v67, &v68);
        v57 = v62;
      }

      ++v59;
      v60 += 32;
    }

    while (v59 != 8);
    ++v56;
    v58 += 256;
  }

  while (v56 != 4);
  return mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::finalise(v64);
}

void sub_2512A5C98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mimosa::v2::encode(std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&>@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::byte>::reserve(a2, 0x6A8uLL);
  LOBYTE(v58[0]) = *a1;
  std::vector<std::byte>::push_back[abi:ne200100](a2, v58);
  for (i = 0; i != 52; i += 4)
  {
    if (i != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v6 = (a2[1] + 4);
        a2[1] = v6;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v5 = *a2;
        v6 = a2[1];
      }

      *(v6 - 4) = *(a1 + 4 + i);
    }
  }

  for (j = 0; j != 52; j += 4)
  {
    if (j != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v9 = (a2[1] + 4);
        a2[1] = v9;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v8 = *a2;
        v9 = a2[1];
      }

      *(v9 - 4) = *(a1 + 56 + j);
    }
  }

  for (k = 0; k != 52; k += 4)
  {
    if (k != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v12 = (a2[1] + 4);
        a2[1] = v12;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v11 = *a2;
        v12 = a2[1];
      }

      *(v12 - 4) = *(a1 + 108 + k);
    }
  }

  for (m = 0; m != 52; m += 4)
  {
    if (m != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v15 = (a2[1] + 4);
        a2[1] = v15;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v14 = *a2;
        v15 = a2[1];
      }

      *(v15 - 4) = *(a1 + 160 + m);
    }
  }

  v16 = 0;
  v17 = a1 + 212;
  do
  {
    for (n = 0; n != 32; n += 4)
    {
      if (n != 4)
      {
        if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
        {
          *a2;
          v20 = (a2[1] + 4);
          a2[1] = v20;
        }

        else
        {
          std::vector<std::byte>::__append(a2, 4uLL);
          v19 = *a2;
          v20 = a2[1];
        }

        *(v20 - 4) = *(v17 + n);
      }
    }

    ++v16;
    v17 += 32;
  }

  while (v16 != 4);
  for (ii = 0; ii != 12; ii += 4)
  {
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v23 = (a2[1] + 4);
      a2[1] = v23;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v22 = *a2;
      v23 = a2[1];
    }

    *(v23 - 4) = *(a1 + 1300 + ii);
  }

  v24 = 0;
  v25 = a1 + 1316;
  do
  {
    if (v24 != 4)
    {
      for (jj = 0; jj != 16; jj += 4)
      {
        if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
        {
          *a2;
          v28 = (a2[1] + 4);
          a2[1] = v28;
        }

        else
        {
          std::vector<std::byte>::__append(a2, 4uLL);
          v27 = *a2;
          v28 = a2[1];
        }

        *(v28 - 4) = *(v25 + jj);
      }
    }

    ++v24;
    v25 += 16;
  }

  while (v24 != 13);
  for (kk = 0; kk != 24; kk += 4)
  {
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v31 = (a2[1] + 4);
      a2[1] = v31;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v30 = *a2;
      v31 = a2[1];
    }

    *(v31 - 4) = *(a1 + 1524 + kk);
  }

  for (mm = 0; mm != 20; mm += 4)
  {
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v34 = (a2[1] + 4);
      a2[1] = v34;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v33 = *a2;
      v34 = a2[1];
    }

    *(v34 - 4) = *(a1 + 1548 + mm);
  }

  v35 = 0;
  v36 = 1;
  do
  {
    v37 = v36;
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v39 = (a2[1] + 4);
      a2[1] = v39;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v38 = *a2;
      v39 = a2[1];
    }

    v36 = 0;
    *(v39 - 4) = *(a1 + 1572 + 4 * v35);
    v35 = 1;
  }

  while ((v37 & 1) != 0);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
  {
    *a2;
    v41 = (a2[1] + 4);
    a2[1] = v41;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v40 = *a2;
    v41 = a2[1];
  }

  *(v41 - 4) = *(a1 + 1596);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFF3)
  {
    *a2;
    v43 = (a2[1] + 12);
    a2[1] = v43;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0xCuLL);
    v42 = *a2;
    v43 = a2[1];
  }

  v44 = v43;
  v45 = *(a1 + 1600);
  *(v44 - 4) = *(a1 + 1608);
  *(v44 - 12) = v45;
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
  {
    *a2;
    v47 = (a2[1] + 4);
    a2[1] = v47;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v46 = *a2;
    v47 = a2[1];
  }

  v48 = 0;
  *(v47 - 4) = *(a1 + 1612);
  v58[0] = 1;
  v58[1] = a2;
  v59 = 0;
  v60 = 0;
  v49 = a1 + 340;
  do
  {
    v50 = 0;
    v51 = v49;
    do
    {
      v52 = 0;
      v53 = v51;
      do
      {
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = *(v53 + v54);
          v61 = (2 * (v56 - v55)) ^ ((v56 - v55) >> 15);
          mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(v58, &v61, &v62);
          v55 = v56;
          ++v54;
        }

        while (v54 != 10);
        ++v52;
        v53 += 10;
      }

      while (v52 != 8);
      ++v50;
      v51 += 80;
    }

    while (v50 != 4);
    ++v48;
    v49 += 320;
  }

  while (v48 != 3);
  return mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::finalise(v58);
}

void sub_2512A624C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mimosa::v2::encode(std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&>@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::byte>::reserve(a2, 0x918uLL);
  LOBYTE(v63[0]) = *a1;
  std::vector<std::byte>::push_back[abi:ne200100](a2, v63);
  for (i = 0; i != 52; i += 4)
  {
    if (i != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v6 = (a2[1] + 4);
        a2[1] = v6;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v5 = *a2;
        v6 = a2[1];
      }

      *(v6 - 4) = *(a1 + 4 + i);
    }
  }

  for (j = 0; j != 52; j += 4)
  {
    if (j != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v9 = (a2[1] + 4);
        a2[1] = v9;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v8 = *a2;
        v9 = a2[1];
      }

      *(v9 - 4) = *(a1 + 56 + j);
    }
  }

  for (k = 0; k != 52; k += 4)
  {
    if (k != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v12 = (a2[1] + 4);
        a2[1] = v12;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v11 = *a2;
        v12 = a2[1];
      }

      *(v12 - 4) = *(a1 + 108 + k);
    }
  }

  for (m = 0; m != 52; m += 4)
  {
    if (m != 16)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v15 = (a2[1] + 4);
        a2[1] = v15;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v14 = *a2;
        v15 = a2[1];
      }

      *(v15 - 4) = *(a1 + 160 + m);
    }
  }

  v16 = 0;
  v17 = a1 + 212;
  do
  {
    for (n = 0; n != 32; n += 4)
    {
      if (n != 4)
      {
        if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
        {
          *a2;
          v20 = (a2[1] + 4);
          a2[1] = v20;
        }

        else
        {
          std::vector<std::byte>::__append(a2, 4uLL);
          v19 = *a2;
          v20 = a2[1];
        }

        *(v20 - 4) = *(v17 + n);
      }
    }

    ++v16;
    v17 += 32;
  }

  while (v16 != 4);
  for (ii = 0; ii != 12; ii += 4)
  {
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v23 = (a2[1] + 4);
      a2[1] = v23;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v22 = *a2;
      v23 = a2[1];
    }

    *(v23 - 4) = *(a1 + 1300 + ii);
  }

  v24 = 0;
  v25 = a1 + 1316;
  do
  {
    if (v24 != 4)
    {
      for (jj = 0; jj != 32; jj += 4)
      {
        if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
        {
          *a2;
          v28 = (a2[1] + 4);
          a2[1] = v28;
        }

        else
        {
          std::vector<std::byte>::__append(a2, 4uLL);
          v27 = *a2;
          v28 = a2[1];
        }

        *(v28 - 4) = *(v25 + jj);
      }
    }

    ++v24;
    v25 += 32;
  }

  while (v24 != 13);
  v29 = 0;
  v30 = a1 + 1732;
  do
  {
    for (kk = 0; kk != 32; kk += 4)
    {
      if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
      {
        *a2;
        v33 = (a2[1] + 4);
        a2[1] = v33;
      }

      else
      {
        std::vector<std::byte>::__append(a2, 4uLL);
        v32 = *a2;
        v33 = a2[1];
      }

      *(v33 - 4) = *(v30 + kk);
    }

    ++v29;
    v30 += 32;
  }

  while (v29 != 4);
  for (mm = 0; mm != 24; mm += 4)
  {
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v36 = (a2[1] + 4);
      a2[1] = v36;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v35 = *a2;
      v36 = a2[1];
    }

    *(v36 - 4) = *(a1 + 2148 + mm);
  }

  for (nn = 0; nn != 20; nn += 4)
  {
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v39 = (a2[1] + 4);
      a2[1] = v39;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v38 = *a2;
      v39 = a2[1];
    }

    *(v39 - 4) = *(a1 + 2172 + nn);
  }

  v40 = 0;
  v41 = 1;
  do
  {
    v42 = v41;
    if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
    {
      *a2;
      v44 = (a2[1] + 4);
      a2[1] = v44;
    }

    else
    {
      std::vector<std::byte>::__append(a2, 4uLL);
      v43 = *a2;
      v44 = a2[1];
    }

    v41 = 0;
    *(v44 - 4) = *(a1 + 2196 + 4 * v40);
    v40 = 1;
  }

  while ((v42 & 1) != 0);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
  {
    *a2;
    v46 = (a2[1] + 4);
    a2[1] = v46;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v45 = *a2;
    v46 = a2[1];
  }

  *(v46 - 4) = *(a1 + 2220);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFF3)
  {
    *a2;
    v48 = (a2[1] + 12);
    a2[1] = v48;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0xCuLL);
    v47 = *a2;
    v48 = a2[1];
  }

  v49 = v48;
  v50 = *(a1 + 2224);
  *(v49 - 4) = *(a1 + 2232);
  *(v49 - 12) = v50;
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
  {
    *a2;
    v52 = (a2[1] + 4);
    a2[1] = v52;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 4uLL);
    v51 = *a2;
    v52 = a2[1];
  }

  v53 = 0;
  *(v52 - 4) = *(a1 + 2236);
  v63[0] = 1;
  v63[1] = a2;
  v64 = 0;
  v65 = 0;
  v54 = a1 + 340;
  do
  {
    v55 = 0;
    v56 = v54;
    do
    {
      v57 = 0;
      v58 = v56;
      do
      {
        v59 = 0;
        v60 = 0;
        do
        {
          v61 = *(v58 + v59);
          v66 = (2 * (v61 - v60)) ^ ((v61 - v60) >> 15);
          mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(v63, &v66, &v67);
          v60 = v61;
          ++v59;
        }

        while (v59 != 10);
        ++v57;
        v58 += 10;
      }

      while (v57 != 8);
      ++v55;
      v56 += 80;
    }

    while (v55 != 4);
    ++v53;
    v54 += 320;
  }

  while (v53 != 3);
  return mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::finalise(v63);
}

void sub_2512A6890(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mimosa::v2::encode(std::variant<mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,mimosa::OpREv5,mimosa::OpREv6,mimosa::OpREv7,mimosa::OpREv9,mimosa::OpRTv1> const&>@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::byte>::reserve(a2, 0x590uLL);
  LOBYTE(v44[0]) = *a1 + 63;
  std::vector<std::byte>::push_back[abi:ne200100](a2, v44);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFE7)
  {
    *a2;
    v5 = (a2[1] + 24);
    a2[1] = v5;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x18uLL);
    v4 = *a2;
    v5 = a2[1];
  }

  v6 = *(a1 + 4);
  *(v5 - 8) = *(a1 + 20);
  *(v5 - 24) = v6;
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFE7)
  {
    *a2;
    v8 = (a2[1] + 24);
    a2[1] = v8;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x18uLL);
    v7 = *a2;
    v8 = a2[1];
  }

  v9 = *(a1 + 28);
  *(v8 - 8) = *(a1 + 44);
  *(v8 - 24) = v9;
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFE7)
  {
    *a2;
    v11 = (a2[1] + 24);
    a2[1] = v11;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x18uLL);
    v10 = *a2;
    v11 = a2[1];
  }

  v12 = *(a1 + 52);
  *(v11 - 8) = *(a1 + 68);
  *(v11 - 24) = v12;
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFE7)
  {
    *a2;
    v14 = (a2[1] + 24);
    a2[1] = v14;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x18uLL);
    v13 = *a2;
    v14 = a2[1];
  }

  v15 = 0;
  v16 = *(a1 + 76);
  *(v14 - 8) = *(a1 + 92);
  *(v14 - 24) = v16;
  v17 = a1 + 100;
  do
  {
    for (i = 0; i != 32; i += 4)
    {
      if (i != 4)
      {
        if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFFBLL)
        {
          *a2;
          v20 = (a2[1] + 4);
          a2[1] = v20;
        }

        else
        {
          std::vector<std::byte>::__append(a2, 4uLL);
          v19 = *a2;
          v20 = a2[1];
        }

        *(v20 - 4) = *(v17 + i);
      }
    }

    ++v15;
    v17 += 32;
  }

  while (v15 != 4);
  if ((a2[1] - *a2) > 0xFFFFFFFFFFFFFFF7)
  {
    *a2;
    v22 = (a2[1] + 8);
    a2[1] = v22;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 8uLL);
    v21 = *a2;
    v22 = a2[1];
  }

  *(v22 - 8) = *(a1 + 868);
  v23 = *a2;
  v24 = a2[1] - *a2;
  if (v24 > 0xFFFFFFFFFFFFFF9FLL)
  {
    v25 = &v23[v24 + 96];
    a2[1] = v25;
  }

  else
  {
    std::vector<std::byte>::__append(a2, 0x60uLL);
    v23 = *a2;
    v25 = a2[1];
  }

  v26 = *(a1 + 892);
  *(v25 - 96) = *(a1 + 876);
  *(v25 - 80) = v26;
  v27 = *(a1 + 908);
  v28 = *(a1 + 924);
  v29 = *(a1 + 956);
  *(v25 - 32) = *(a1 + 940);
  *(v25 - 16) = v29;
  *(v25 - 64) = v27;
  *(v25 - 48) = v28;
  if ((v25 - v23) > 0xFFFFFFFFFFFFFFF7)
  {
    v31 = v25 + 8;
    a2[1] = (v25 + 8);
  }

  else
  {
    std::vector<std::byte>::__append(a2, 8uLL);
    v30 = *a2;
    v31 = a2[1];
  }

  v32 = 0;
  *(v31 - 8) = *(a1 + 972);
  v33 = 1;
  v44[0] = 1;
  v44[1] = a2;
  v45 = 0;
  v46 = 0;
  v34 = a1 + 228;
  do
  {
    v35 = 0;
    v36 = v33;
    v37 = v34 + 320 * v32;
    do
    {
      v38 = 0;
      v39 = v37;
      do
      {
        v40 = 0;
        v41 = 0;
        do
        {
          v42 = *(v39 + v40);
          v47 = (2 * (v42 - v41)) ^ ((v42 - v41) >> 15);
          mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(v44, &v47, &v48);
          v41 = v42;
          ++v40;
        }

        while (v40 != 10);
        ++v38;
        v39 += 10;
      }

      while (v38 != 8);
      ++v35;
      v37 += 80;
    }

    while (v35 != 4);
    v33 = 0;
    v32 = 1;
  }

  while ((v36 & 1) != 0);
  return mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::finalise(v44);
}

void sub_2512A6C60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::finalise(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 16) = 1;
    v2 = *a1;
    if (*a1)
    {
      do
      {
        mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, v2, 0xCu);
        v3 = *a1;
        v2 = *a1 >> 12;
        *a1 = v2;
      }

      while (v3 > 0xFFF);
    }

    v4 = *(a1 + 18);
    if (v4 <= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = 13;
    }

    v6 = v5 - v4;
    mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, 0, (v5 - v4));
    mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, v6, 3u);
  }

  return *(a1 + 8);
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (*(a1 + 16) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "encode called after instance has been finalised");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  for (i = *a1; a2 != a3; i = v19 | ((i / v18) << 12))
  {
    v8 = *a2++;
    v7 = v8;
    if (v8 >= 0xF8)
    {
      if (v7 < 0x1F8)
      {
        v10 = 248;
      }

      else
      {
        v10 = 249;
      }

      v11 = (0x101010101010101uLL >> (-8 * v10) << 8) | 0xF8;
      if (v7 < 0x1F8)
      {
        v11 = 248;
      }

      v12 = v10 + 8;
      v13 = v7 - v11;
      do
      {
        if (i >= 0x10000)
        {
          v14 = i >> 12;
          mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
          i = v14;
        }

        v15 = 16 * v13;
        v16 = v13 == 0;
        v13 >>= 8;
        if (v16)
        {
          v15 = 0;
        }

        i = v15 & 0xF000000000000FF0 | i & 0xF | (((i >> 4) & 0xFFFFFFFFFFFFLL) << 12);
        v16 = v12-- == 0;
      }

      while (!v16);
      v9 = 0;
      v7 = v10;
    }

    else
    {
      v9 = v7 == 0;
    }

    v17 = i >> 12;
    v18 = mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::scaled_probabilities[v7];
    if (i >> 12 >= v18)
    {
      mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
      i = v17;
    }

    v19 = i % v18;
    if (!v9)
    {
      v19 += mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::cumulative_scaled_probabilities[(v7 - 1)];
    }
  }

  *a1 = i;
  return *(a1 + 8);
}

void mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = *(a1 + 18);
    v6 = a3 - 1;
    do
    {
      v7 = (a2 >> v6) & 1 | (2 * *(a1 + 17));
      *(a1 + 17) = (a2 >> v6) & 1 | (2 * *(a1 + 17));
      *(a1 + 18) = ++v5;
      if (v5 == 8)
      {
        v8 = v7;
        std::vector<std::byte>::push_back[abi:ne200100](*(a1 + 8), &v8);
        v5 = 0;
        *(a1 + 18) = 0;
      }

      --v6;
    }

    while (v6 != -1);
  }
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (*(a1 + 16) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "encode called after instance has been finalised");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  for (i = *a1; a2 != a3; i = v19 | ((i / v18) << 12))
  {
    v8 = *a2++;
    v7 = v8;
    if (v8 >= 0xF8)
    {
      if (v7 < 0x1F8)
      {
        v10 = 248;
      }

      else
      {
        v10 = 249;
      }

      v11 = (0x101010101010101uLL >> (-8 * v10) << 8) | 0xF8;
      if (v7 < 0x1F8)
      {
        v11 = 248;
      }

      v12 = v10 + 8;
      v13 = v7 - v11;
      do
      {
        if (i >= 0x10000)
        {
          v14 = i >> 12;
          mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
          i = v14;
        }

        v15 = 16 * v13;
        v16 = v13 == 0;
        v13 >>= 8;
        if (v16)
        {
          v15 = 0;
        }

        i = v15 & 0xF000000000000FF0 | i & 0xF | (((i >> 4) & 0xFFFFFFFFFFFFLL) << 12);
        v16 = v12-- == 0;
      }

      while (!v16);
      v9 = 0;
      v7 = v10;
    }

    else
    {
      v9 = v7 == 0;
    }

    v17 = i >> 12;
    v18 = mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::scaled_probabilities[v7];
    if (i >> 12 >= v18)
    {
      mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
      i = v17;
    }

    v19 = i % v18;
    if (!v9)
    {
      v19 += mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::cumulative_scaled_probabilities[(v7 - 1)];
    }
  }

  *a1 = i;
  return *(a1 + 8);
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (*(a1 + 16) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "encode called after instance has been finalised");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  for (i = *a1; a2 != a3; i = v19 | ((i / v18) << 12))
  {
    v8 = *a2++;
    v7 = v8;
    if (v8 >= 0xF8)
    {
      if (v7 < 0x1F8)
      {
        v10 = 248;
      }

      else
      {
        v10 = 249;
      }

      v11 = (0x101010101010101uLL >> (-8 * v10) << 8) | 0xF8;
      if (v7 < 0x1F8)
      {
        v11 = 248;
      }

      v12 = v10 + 8;
      v13 = v7 - v11;
      do
      {
        if (i >= 0x10000)
        {
          v14 = i >> 12;
          mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
          i = v14;
        }

        v15 = 16 * v13;
        v16 = v13 == 0;
        v13 >>= 8;
        if (v16)
        {
          v15 = 0;
        }

        i = v15 & 0xF000000000000FF0 | i & 0xF | (((i >> 4) & 0xFFFFFFFFFFFFLL) << 12);
        v16 = v12-- == 0;
      }

      while (!v16);
      v9 = 0;
      v7 = v10;
    }

    else
    {
      v9 = v7 == 0;
    }

    v17 = i >> 12;
    v18 = mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::scaled_probabilities[v7];
    if (i >> 12 >= v18)
    {
      mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
      i = v17;
    }

    v19 = i % v18;
    if (!v9)
    {
      v19 += mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::cumulative_scaled_probabilities[(v7 - 1)];
    }
  }

  *a1 = i;
  return *(a1 + 8);
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (*(a1 + 16) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "encode called after instance has been finalised");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  for (i = *a1; a2 != a3; i = v19 | ((i / v18) << 12))
  {
    v8 = *a2++;
    v7 = v8;
    if (v8 >= 0xF8)
    {
      if (v7 < 0x1F8)
      {
        v10 = 248;
      }

      else
      {
        v10 = 249;
      }

      v11 = (0x101010101010101uLL >> (-8 * v10) << 8) | 0xF8;
      if (v7 < 0x1F8)
      {
        v11 = 248;
      }

      v12 = v10 + 8;
      v13 = v7 - v11;
      do
      {
        if (i >= 0x10000)
        {
          v14 = i >> 12;
          mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
          i = v14;
        }

        v15 = 16 * v13;
        v16 = v13 == 0;
        v13 >>= 8;
        if (v16)
        {
          v15 = 0;
        }

        i = v15 & 0xF000000000000FF0 | i & 0xF | (((i >> 4) & 0xFFFFFFFFFFFFLL) << 12);
        v16 = v12-- == 0;
      }

      while (!v16);
      v9 = 0;
      v7 = v10;
    }

    else
    {
      v9 = v7 == 0;
    }

    v17 = i >> 12;
    v18 = mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::scaled_probabilities[v7];
    if (i >> 12 >= v18)
    {
      mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
      i = v17;
    }

    v19 = i % v18;
    if (!v9)
    {
      v19 += mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::cumulative_scaled_probabilities[(v7 - 1)];
    }
  }

  *a1 = i;
  return *(a1 + 8);
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::encode<unsigned short const*>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (*(a1 + 16) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "encode called after instance has been finalised");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  for (i = *a1; a2 != a3; i = v19 | ((i / v18) << 12))
  {
    v8 = *a2++;
    v7 = v8;
    if (v8 >= 0xF8)
    {
      if (v7 < 0x1F8)
      {
        v10 = 248;
      }

      else
      {
        v10 = 249;
      }

      v11 = (0x101010101010101uLL >> (-8 * v10) << 8) | 0xF8;
      if (v7 < 0x1F8)
      {
        v11 = 248;
      }

      v12 = v10 + 8;
      v13 = v7 - v11;
      do
      {
        if (i >= 0x10000)
        {
          v14 = i >> 12;
          mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
          i = v14;
        }

        v15 = 16 * v13;
        v16 = v13 == 0;
        v13 >>= 8;
        if (v16)
        {
          v15 = 0;
        }

        i = v15 & 0xF000000000000FF0 | i & 0xF | (((i >> 4) & 0xFFFFFFFFFFFFLL) << 12);
        v16 = v12-- == 0;
      }

      while (!v16);
      v9 = 0;
      v7 = v10;
    }

    else
    {
      v9 = v7 == 0;
    }

    v17 = i >> 12;
    v18 = mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::scaled_probabilities[v7];
    if (i >> 12 >= v18)
    {
      mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::Encoder<std::back_insert_iterator<std::vector<std::byte>>>::write_bits(a1, i, 0xCu);
      i = v17;
    }

    v19 = i % v18;
    if (!v9)
    {
      v19 += mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::cumulative_scaled_probabilities[(v7 - 1)];
    }
  }

  *a1 = i;
  return *(a1 + 8);
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 3;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
LABEL_57:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "no more encoded bytes available");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v8 = *--a2;
      v5 = v8;
      v4 = 8;
    }

    *(&v9 + 1) = v5;
    *&v9 = v6;
    v6 = v9 >> 1;
    v5 >>= 1;
    --v4;
    --v7;
  }

  while (v7);
  v10 = v6 >> 61;
  if (v10)
  {
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v11 = *--a2;
        v5 = v11;
        v4 = 8;
      }

      v5 >>= 1;
      --v4;
      LODWORD(v10) = v10 - 1;
    }

    while (v10);
  }

  v12 = 0;
  v13 = 12;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
        goto LABEL_57;
      }

      v14 = *--a2;
      v5 = v14;
      v4 = 8;
    }

    *(&v15 + 1) = v5;
    *&v15 = v12;
    v12 = v15 >> 1;
    v5 >>= 1;
    --v4;
    --v13;
  }

  while (v13);
  v16 = v12 >> 52;
  if (v4 || a2 != result)
  {
    v17 = 0;
    v18 = 12;
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v19 = *--a2;
        v5 = v19;
        v4 = 8;
      }

      *(&v20 + 1) = v5;
      *&v20 = v17;
      v17 = v20 >> 1;
      v5 >>= 1;
      --v4;
      --v18;
    }

    while (v18);
    *(&v21 + 1) = v16;
    *&v21 = v17;
    v16 = v21 >> 52;
  }

  else
  {
    v4 = 0;
  }

  if (a4 != a3)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v16 & 0xFFF;
      v26 = v16 >> 12;
      if (v24)
      {
        v27 = v16 >> 4;
        v22 = v27 | (v22 << 8);
        v16 = 16 * v26 + (v25 - 16 * v27);
        if (!--v24)
        {
          v24 = 0;
          *(a4 - 2) = v22 + v23;
          a4 -= 2;
          v22 = 0;
        }

        goto LABEL_45;
      }

      v28 = mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::decode_table[v16 & 0xFFF];
      if (v28)
      {
        v25 -= mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::cumulative_scaled_probabilities[(v28 - 1)];
        if (v28 >= 0xF8)
        {
          if (v28 == 248)
          {
            v29 = 248;
          }

          else
          {
            v29 = v28;
          }

          if (v28 == 248)
          {
            v24 = 1;
          }

          else
          {
            v24 = v28 + 9;
          }

          if (v28 == 248)
          {
            v23 = 248;
          }

          else
          {
            v23 = ((0x101010101010101uLL >> (-8 * v28)) << 8) | 0xF8;
          }

          goto LABEL_44;
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v24 = 0;
      *(a4 - 2) = v28;
      a4 -= 2;
LABEL_44:
      v16 = v26 * mimosa::v2::nanite::Codec<unsigned short,24690ull,4458ull,2833ull,17ull,2ull,1ull,1ull>::scaled_probabilities[v29] + v25;
LABEL_45:
      if (v16 <= 0xFFF)
      {
        if (v4 || a2 != result)
        {
          v30 = 0;
          v31 = 12;
          do
          {
            if (!v4)
            {
              if (a2 == result)
              {
                goto LABEL_57;
              }

              v32 = *--a2;
              v5 = v32;
              v4 = 8;
            }

            *(&v33 + 1) = v5;
            *&v33 = v30;
            v30 = v33 >> 1;
            v5 >>= 1;
            --v4;
            --v31;
          }

          while (v31);
          *(&v34 + 1) = v16;
          *&v34 = v30;
          v16 = v34 >> 52;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    while (a4 != a3);
  }

  return result;
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 3;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
LABEL_57:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "no more encoded bytes available");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v8 = *--a2;
      v5 = v8;
      v4 = 8;
    }

    *(&v9 + 1) = v5;
    *&v9 = v6;
    v6 = v9 >> 1;
    v5 >>= 1;
    --v4;
    --v7;
  }

  while (v7);
  v10 = v6 >> 61;
  if (v10)
  {
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v11 = *--a2;
        v5 = v11;
        v4 = 8;
      }

      v5 >>= 1;
      --v4;
      LODWORD(v10) = v10 - 1;
    }

    while (v10);
  }

  v12 = 0;
  v13 = 12;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
        goto LABEL_57;
      }

      v14 = *--a2;
      v5 = v14;
      v4 = 8;
    }

    *(&v15 + 1) = v5;
    *&v15 = v12;
    v12 = v15 >> 1;
    v5 >>= 1;
    --v4;
    --v13;
  }

  while (v13);
  v16 = v12 >> 52;
  if (v4 || a2 != result)
  {
    v17 = 0;
    v18 = 12;
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v19 = *--a2;
        v5 = v19;
        v4 = 8;
      }

      *(&v20 + 1) = v5;
      *&v20 = v17;
      v17 = v20 >> 1;
      v5 >>= 1;
      --v4;
      --v18;
    }

    while (v18);
    *(&v21 + 1) = v16;
    *&v21 = v17;
    v16 = v21 >> 52;
  }

  else
  {
    v4 = 0;
  }

  if (a4 != a3)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v16 & 0xFFF;
      v26 = v16 >> 12;
      if (v24)
      {
        v27 = v16 >> 4;
        v22 = v27 | (v22 << 8);
        v16 = 16 * v26 + (v25 - 16 * v27);
        if (!--v24)
        {
          v24 = 0;
          *(a4 - 2) = v22 + v23;
          a4 -= 2;
          v22 = 0;
        }

        goto LABEL_45;
      }

      v28 = mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::decode_table[v16 & 0xFFF];
      if (v28)
      {
        v25 -= mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::cumulative_scaled_probabilities[(v28 - 1)];
        if (v28 >= 0xF8)
        {
          if (v28 == 248)
          {
            v29 = 248;
          }

          else
          {
            v29 = v28;
          }

          if (v28 == 248)
          {
            v24 = 1;
          }

          else
          {
            v24 = v28 + 9;
          }

          if (v28 == 248)
          {
            v23 = 248;
          }

          else
          {
            v23 = ((0x101010101010101uLL >> (-8 * v28)) << 8) | 0xF8;
          }

          goto LABEL_44;
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v24 = 0;
      *(a4 - 2) = v28;
      a4 -= 2;
LABEL_44:
      v16 = v26 * mimosa::v2::nanite::Codec<unsigned short,9040ull,1230ull,2050ull,130ull,350ull,30ull,130ull,50ull,60ull,10ull,50ull,20ull,50ull,40ull,30ull,30ull,20ull,40ull,1ull,10ull,1ull,40ull,1ull,10ull,1ull,10ull,1ull,1ull,1ull,10ull,1ull,1ull>::scaled_probabilities[v29] + v25;
LABEL_45:
      if (v16 <= 0xFFF)
      {
        if (v4 || a2 != result)
        {
          v30 = 0;
          v31 = 12;
          do
          {
            if (!v4)
            {
              if (a2 == result)
              {
                goto LABEL_57;
              }

              v32 = *--a2;
              v5 = v32;
              v4 = 8;
            }

            *(&v33 + 1) = v5;
            *&v33 = v30;
            v30 = v33 >> 1;
            v5 >>= 1;
            --v4;
            --v31;
          }

          while (v31);
          *(&v34 + 1) = v16;
          *&v34 = v30;
          v16 = v34 >> 52;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    while (a4 != a3);
  }

  return result;
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 3;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
LABEL_57:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "no more encoded bytes available");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v8 = *--a2;
      v5 = v8;
      v4 = 8;
    }

    *(&v9 + 1) = v5;
    *&v9 = v6;
    v6 = v9 >> 1;
    v5 >>= 1;
    --v4;
    --v7;
  }

  while (v7);
  v10 = v6 >> 61;
  if (v10)
  {
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v11 = *--a2;
        v5 = v11;
        v4 = 8;
      }

      v5 >>= 1;
      --v4;
      LODWORD(v10) = v10 - 1;
    }

    while (v10);
  }

  v12 = 0;
  v13 = 12;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
        goto LABEL_57;
      }

      v14 = *--a2;
      v5 = v14;
      v4 = 8;
    }

    *(&v15 + 1) = v5;
    *&v15 = v12;
    v12 = v15 >> 1;
    v5 >>= 1;
    --v4;
    --v13;
  }

  while (v13);
  v16 = v12 >> 52;
  if (v4 || a2 != result)
  {
    v17 = 0;
    v18 = 12;
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v19 = *--a2;
        v5 = v19;
        v4 = 8;
      }

      *(&v20 + 1) = v5;
      *&v20 = v17;
      v17 = v20 >> 1;
      v5 >>= 1;
      --v4;
      --v18;
    }

    while (v18);
    *(&v21 + 1) = v16;
    *&v21 = v17;
    v16 = v21 >> 52;
  }

  else
  {
    v4 = 0;
  }

  if (a4 != a3)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v16 & 0xFFF;
      v26 = v16 >> 12;
      if (v24)
      {
        v27 = v16 >> 4;
        v22 = v27 | (v22 << 8);
        v16 = 16 * v26 + (v25 - 16 * v27);
        if (!--v24)
        {
          v24 = 0;
          *(a4 - 2) = v22 + v23;
          a4 -= 2;
          v22 = 0;
        }

        goto LABEL_45;
      }

      v28 = mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::decode_table[v16 & 0xFFF];
      if (v28)
      {
        v25 -= mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::cumulative_scaled_probabilities[(v28 - 1)];
        if (v28 >= 0xF8)
        {
          if (v28 == 248)
          {
            v29 = 248;
          }

          else
          {
            v29 = v28;
          }

          if (v28 == 248)
          {
            v24 = 1;
          }

          else
          {
            v24 = v28 + 9;
          }

          if (v28 == 248)
          {
            v23 = 248;
          }

          else
          {
            v23 = ((0x101010101010101uLL >> (-8 * v28)) << 8) | 0xF8;
          }

          goto LABEL_44;
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v24 = 0;
      *(a4 - 2) = v28;
      a4 -= 2;
LABEL_44:
      v16 = v26 * mimosa::v2::nanite::Codec<unsigned short,32860ull,510ull,6330ull,100ull,50ull,180ull,1ull,220ull,1ull,300ull,1ull,290ull,1ull,110ull,1ull,10ull,1ull,1ull>::scaled_probabilities[v29] + v25;
LABEL_45:
      if (v16 <= 0xFFF)
      {
        if (v4 || a2 != result)
        {
          v30 = 0;
          v31 = 12;
          do
          {
            if (!v4)
            {
              if (a2 == result)
              {
                goto LABEL_57;
              }

              v32 = *--a2;
              v5 = v32;
              v4 = 8;
            }

            *(&v33 + 1) = v5;
            *&v33 = v30;
            v30 = v33 >> 1;
            v5 >>= 1;
            --v4;
            --v31;
          }

          while (v31);
          *(&v34 + 1) = v16;
          *&v34 = v30;
          v16 = v34 >> 52;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    while (a4 != a3);
  }

  return result;
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 3;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
LABEL_57:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "no more encoded bytes available");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v8 = *--a2;
      v5 = v8;
      v4 = 8;
    }

    *(&v9 + 1) = v5;
    *&v9 = v6;
    v6 = v9 >> 1;
    v5 >>= 1;
    --v4;
    --v7;
  }

  while (v7);
  v10 = v6 >> 61;
  if (v10)
  {
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v11 = *--a2;
        v5 = v11;
        v4 = 8;
      }

      v5 >>= 1;
      --v4;
      LODWORD(v10) = v10 - 1;
    }

    while (v10);
  }

  v12 = 0;
  v13 = 12;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
        goto LABEL_57;
      }

      v14 = *--a2;
      v5 = v14;
      v4 = 8;
    }

    *(&v15 + 1) = v5;
    *&v15 = v12;
    v12 = v15 >> 1;
    v5 >>= 1;
    --v4;
    --v13;
  }

  while (v13);
  v16 = v12 >> 52;
  if (v4 || a2 != result)
  {
    v17 = 0;
    v18 = 12;
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v19 = *--a2;
        v5 = v19;
        v4 = 8;
      }

      *(&v20 + 1) = v5;
      *&v20 = v17;
      v17 = v20 >> 1;
      v5 >>= 1;
      --v4;
      --v18;
    }

    while (v18);
    *(&v21 + 1) = v16;
    *&v21 = v17;
    v16 = v21 >> 52;
  }

  else
  {
    v4 = 0;
  }

  if (a4 != a3)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v16 & 0xFFF;
      v26 = v16 >> 12;
      if (v24)
      {
        v27 = v16 >> 4;
        v22 = v27 | (v22 << 8);
        v16 = 16 * v26 + (v25 - 16 * v27);
        if (!--v24)
        {
          v24 = 0;
          *(a4 - 2) = v22 + v23;
          a4 -= 2;
          v22 = 0;
        }

        goto LABEL_45;
      }

      v28 = mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::decode_table[v16 & 0xFFF];
      if (v28)
      {
        v25 -= mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::cumulative_scaled_probabilities[(v28 - 1)];
        if (v28 >= 0xF8)
        {
          if (v28 == 248)
          {
            v29 = 248;
          }

          else
          {
            v29 = v28;
          }

          if (v28 == 248)
          {
            v24 = 1;
          }

          else
          {
            v24 = v28 + 9;
          }

          if (v28 == 248)
          {
            v23 = 248;
          }

          else
          {
            v23 = ((0x101010101010101uLL >> (-8 * v28)) << 8) | 0xF8;
          }

          goto LABEL_44;
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v24 = 0;
      *(a4 - 2) = v28;
      a4 -= 2;
LABEL_44:
      v16 = v26 * mimosa::v2::nanite::Codec<unsigned short,7032ull,2263ull,269ull,36ull>::scaled_probabilities[v29] + v25;
LABEL_45:
      if (v16 <= 0xFFF)
      {
        if (v4 || a2 != result)
        {
          v30 = 0;
          v31 = 12;
          do
          {
            if (!v4)
            {
              if (a2 == result)
              {
                goto LABEL_57;
              }

              v32 = *--a2;
              v5 = v32;
              v4 = 8;
            }

            *(&v33 + 1) = v5;
            *&v33 = v30;
            v30 = v33 >> 1;
            v5 >>= 1;
            --v4;
            --v31;
          }

          while (v31);
          *(&v34 + 1) = v16;
          *&v34 = v30;
          v16 = v34 >> 52;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    while (a4 != a3);
  }

  return result;
}

uint64_t mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::decode<std::__wrap_iter<std::byte const*>,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 3;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
LABEL_57:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "no more encoded bytes available");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v8 = *--a2;
      v5 = v8;
      v4 = 8;
    }

    *(&v9 + 1) = v5;
    *&v9 = v6;
    v6 = v9 >> 1;
    v5 >>= 1;
    --v4;
    --v7;
  }

  while (v7);
  v10 = v6 >> 61;
  if (v10)
  {
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v11 = *--a2;
        v5 = v11;
        v4 = 8;
      }

      v5 >>= 1;
      --v4;
      LODWORD(v10) = v10 - 1;
    }

    while (v10);
  }

  v12 = 0;
  v13 = 12;
  do
  {
    if (!v4)
    {
      if (a2 == result)
      {
        goto LABEL_57;
      }

      v14 = *--a2;
      v5 = v14;
      v4 = 8;
    }

    *(&v15 + 1) = v5;
    *&v15 = v12;
    v12 = v15 >> 1;
    v5 >>= 1;
    --v4;
    --v13;
  }

  while (v13);
  v16 = v12 >> 52;
  if (v4 || a2 != result)
  {
    v17 = 0;
    v18 = 12;
    do
    {
      if (!v4)
      {
        if (a2 == result)
        {
          goto LABEL_57;
        }

        v19 = *--a2;
        v5 = v19;
        v4 = 8;
      }

      *(&v20 + 1) = v5;
      *&v20 = v17;
      v17 = v20 >> 1;
      v5 >>= 1;
      --v4;
      --v18;
    }

    while (v18);
    *(&v21 + 1) = v16;
    *&v21 = v17;
    v16 = v21 >> 52;
  }

  else
  {
    v4 = 0;
  }

  if (a4 != a3)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v16 & 0xFFF;
      v26 = v16 >> 12;
      if (v24)
      {
        v27 = v16 >> 4;
        v22 = v27 | (v22 << 8);
        v16 = 16 * v26 + (v25 - 16 * v27);
        if (!--v24)
        {
          v24 = 0;
          *(a4 - 2) = v22 + v23;
          a4 -= 2;
          v22 = 0;
        }

        goto LABEL_45;
      }

      v28 = mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::decode_table[v16 & 0xFFF];
      if (v28)
      {
        v25 -= mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::cumulative_scaled_probabilities[(v28 - 1)];
        if (v28 >= 0xF8)
        {
          if (v28 == 248)
          {
            v29 = 248;
          }

          else
          {
            v29 = v28;
          }

          if (v28 == 248)
          {
            v24 = 1;
          }

          else
          {
            v24 = v28 + 9;
          }

          if (v28 == 248)
          {
            v23 = 248;
          }

          else
          {
            v23 = ((0x101010101010101uLL >> (-8 * v28)) << 8) | 0xF8;
          }

          goto LABEL_44;
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v24 = 0;
      *(a4 - 2) = v28;
      a4 -= 2;
LABEL_44:
      v16 = v26 * mimosa::v2::nanite::Codec<unsigned short,20364ull,3828ull,4447ull,62ull,99ull,1ull,1ull>::scaled_probabilities[v29] + v25;
LABEL_45:
      if (v16 <= 0xFFF)
      {
        if (v4 || a2 != result)
        {
          v30 = 0;
          v31 = 12;
          do
          {
            if (!v4)
            {
              if (a2 == result)
              {
                goto LABEL_57;
              }

              v32 = *--a2;
              v5 = v32;
              v4 = 8;
            }

            *(&v33 + 1) = v5;
            *&v33 = v30;
            v30 = v33 >> 1;
            v5 >>= 1;
            --v4;
            --v31;
          }

          while (v31);
          *(&v34 + 1) = v16;
          *&v34 = v30;
          v16 = v34 >> 52;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    while (a4 != a3);
  }

  return result;
}

void mimosa::v2::decode_opre()
{
  __assert_rtn("operator()", "opre_coding.cpp", 659, "sizeof(destination) <= bytes.size()");
}

{
  __assert_rtn("operator()", "opre_coding.cpp", 557, "sizeof(destination) <= bytes.size()");
}

{
  __assert_rtn("operator()", "opre_coding.cpp", 502, "sizeof(destination) <= bytes.size()");
}

{
  __assert_rtn("operator()", "opre_coding.cpp", 439, "sizeof(destination) <= bytes.size()");
}

{
  __assert_rtn("operator()", "opre_coding.cpp", 767, "sizeof(destination) <= bytes.size()");
}

{
  __assert_rtn("decode_opre", "opre_coding.cpp", 856, "false");
}

uint64_t mimosa::v2::SubpacketHeaderState::update(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 8) == 1)
  {
    v3 = 2 * *(a1 + 16) - *a1;
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v3 = *(a1 + 16);
      goto LABEL_7;
    }

    v3 = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 16) = v3;
LABEL_7:
  *a1 = v8;
  *(a1 + 8) = v9;
  v4 = *(a1 + 32);
  v5 = v3 + *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4 + *(a2 + 8) + 1;
  v6 = (a2 + 16);
  if (!*(a2 + 17))
  {
    v6 = (a1 + 36);
  }

  *(a1 + 36) = *v6;
  return v5;
}

uint64_t mimosa::v2::SubpacketHeaderState::predict(uint64_t this)
{
  v1 = *(this + 16);
  if (*(this + 8) == 1)
  {
    v2 = 2 * *(this + 16) - *this;
LABEL_5:
    *(this + 16) = v2;
    goto LABEL_6;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v2 = 0;
    *(this + 24) = 1;
    goto LABEL_5;
  }

LABEL_6:
  *this = v3;
  *(this + 8) = v4;
  ++*(this + 32);
  return this;
}

uint64_t mimosa::v2::SubpacketHeaderState::update@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v3 = *(result + 16);
  if (*(result + 8) == 1)
  {
    v4 = 2 * *(result + 16) - *result;
  }

  else
  {
    if (*(result + 24) == 1)
    {
      v4 = *(result + 16);
      goto LABEL_7;
    }

    v4 = 0;
  }

  *(result + 16) = v4;
LABEL_7:
  *result = v9;
  *(result + 8) = v10;
  v5 = (*(result + 32) + 1);
  v6 = *a2 - v4;
  *(result + 16) = *a2;
  *(result + 24) = 1;
  v7 = *(a2 + 8);
  *a3 = v6;
  *(a3 + 8) = v7 - v5;
  *(result + 32) = v7;
  v8 = *(a2 + 12);
  if (v8 != *(result + 36))
  {
    *(result + 36) = v8;
    *(a3 + 16) = v8 | 0x100;
  }

  return result;
}

__n128 mimosa::v2::AlgsResponseV4SubpacketState::update@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[2].n128_u64[1] = 0;
  a3->n128_u64[0] = mimosa::v2::SubpacketHeaderState::update(a1, a2);
  a3->n128_u64[1] = v6;
  if (*(a2 + 32) == 1)
  {
    *(a1 + 40) = *(a2 + 24);
  }

  if (*(a2 + 48) == 1)
  {
    *(a1 + 48) = *(a2 + 40);
  }

  if (*(a2 + 64) == 1)
  {
    *(a1 + 56) = *(a2 + 56);
  }

  if (*(a2 + 73))
  {
    v7 = *(a2 + 72);
    *(a1 + 64) = v7;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  result = *(a1 + 40);
  a3[1] = result;
  a3[2].n128_u64[0] = *(a1 + 56);
  a3[2].n128_u8[8] = v7;
  return result;
}

uint64_t mimosa::v2::AlgsResponseV4SubpacketState::update@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  result = mimosa::v2::SubpacketHeaderState::update(a1, a2, &v11);
  *a3 = v11;
  *(a3 + 16) = v12;
  v7 = *(a2 + 16);
  if (*(a1 + 40) != v7)
  {
    *(a1 + 40) = v7;
    *(a3 + 24) = v7;
    *(a3 + 32) = 1;
  }

  v8 = *(a2 + 24);
  if (*(a1 + 48) != v8)
  {
    *(a1 + 48) = v8;
    *(a3 + 40) = v8;
    *(a3 + 48) = 1;
  }

  v9 = *(a2 + 32);
  if (*(a1 + 56) != v9)
  {
    *(a1 + 56) = v9;
    *(a3 + 56) = v9;
    *(a3 + 64) = 1;
  }

  v10 = *(a2 + 40);
  if (*(a1 + 64) != v10)
  {
    *(a1 + 64) = v10;
    *(a3 + 72) = v10 | 0x100;
  }

  return result;
}

uint64_t mimosa::v2::OpticalDecoderV4SubpacketState::update@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  result = mimosa::v2::SubpacketHeaderState::update(a1, a2);
  *a3 = result;
  *(a3 + 8) = v7;
  v8 = a1[41];
  v9 = (a1[40] + 1) % v8;
  a1[40] = v9;
  if (a2[27] == 1)
  {
    v8 = a2[26];
    a1[41] = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "num_beats is 0");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    LOBYTE(v9) = 0;
    a1[40] = 0;
  }

  if (a2[25] == 1)
  {
    LOBYTE(v9) = a2[24];
    a1[40] = v9;
  }

  if (a2[29] == 1)
  {
    a1[42] = a2[28];
  }

  if (a2[31])
  {
    v10 = a2[30];
    a1[43] = v10;
  }

  else
  {
    v10 = a1[43];
  }

  *(a3 + 16) = v9;
  *(a3 + 17) = v8;
  *(a3 + 18) = a1[42];
  *(a3 + 19) = v10;
  return result;
}

uint64_t mimosa::v2::OpticalDecoderV4SubpacketState::update@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2[17])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "number of beats is 0 (should be at least 1)");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a2[16] >= a2[17])
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v22, a2[16]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("beat index ", &v22, &v23);
    v15 = std::string::append(&v23, " is invalid given a beat count of ", 0x22uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v21, a2[17]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v21;
    }

    else
    {
      v17 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v26 = v19->__r_.__value_.__r.__words[2];
    v25 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x25306FCE0](v14, &v25);
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a3 + 24) = 0;
  result = mimosa::v2::SubpacketHeaderState::update(a1, a2, &v25);
  *a3 = v25;
  *(a3 + 16) = v26;
  v7 = a1[41];
  v8 = (a1[40] + 1) % v7;
  a1[40] = v8;
  v9 = a2[17];
  if (v9 != v7)
  {
    LOBYTE(v8) = 0;
    *(a3 + 26) = v9 | 0x100;
    a1[41] = v9;
    a1[40] = 0;
  }

  v10 = a2[16];
  if (v10 != v8)
  {
    a1[40] = v10;
    *(a3 + 24) = v10 | 0x100;
  }

  v11 = a2[18];
  if (v11 != a1[42])
  {
    a1[42] = v11;
    *(a3 + 28) = v11 | 0x100;
  }

  v12 = a2[19];
  if (v12 != a1[43])
  {
    a1[43] = v12;
    *(a3 + 30) = v12 | 0x100;
  }

  return result;
}

void sub_2512A8DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t **mimosa::v2::WavelengthV2SubpacketState::update@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 16) = 0u;
  v6 = mimosa::v2::SubpacketHeaderState::update(a1 + 24, a2);
  v7 = *(a1 + 147);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a1 + 146) = v7;
  v28 = (a1 + 147);
  v9 = *(std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a1 + 64), (a1 + 147)) + 17);
  *(a1 + 147) = v9;
  if (*(a2 + 94))
  {
    v10 = *(a2 + 92);
    *(a1 + 144) = v10;
  }

  else
  {
    v10 = *(a1 + 144);
  }

  *(a3 + 64) = v10;
  if (*(a2 + 88) == 1)
  {
    v11 = (a2 + 72);
    v12 = *(a2 + 84);
    if (v12 != 1)
    {
      if (v12)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      LOBYTE(v13) = mimosa::v2::ItemCoder<std::array<unsigned short,6ul>>::encode(a1, *(a2 + 72), *(a2 + 80));
      v14 = 0;
      *(a1 + 147) = v13;
      v15 = (a3 + 20);
      do
      {
        *v15 = *&v11[v14];
        v15 += 4;
        v14 += 2;
      }

      while (v14 != 12);
      goto LABEL_17;
    }

    v13 = *v11;
    *(a1 + 147) = v13;
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2) > v13)
    {
      v20 = 0;
      v21 = *a1 + 12 * v13;
      v22 = *v21;
      LODWORD(v21) = *(v21 + 8);
      v28 = v22;
      v29 = v21;
      v23 = (a3 + 20);
      do
      {
        *v23 = *(&v28 + v20);
        v23 += 4;
        v20 += 2;
      }

      while (v20 != 12);
LABEL_17:
      v28 = (a1 + 146);
      *(std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a1 + 64), (a1 + 146)) + 17) = v13;
      goto LABEL_18;
    }

LABEL_21:
    std::vector<std::array<unsigned short,6ul>>::__throw_out_of_range[abi:ne200100]();
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2) <= v9)
  {
    goto LABEL_21;
  }

  v16 = 0;
  v17 = *a1 + 12 * v9;
  v18 = *v17;
  LODWORD(v17) = *(v17 + 8);
  v28 = v18;
  v29 = v17;
  v19 = (a3 + 20);
  do
  {
    *v19 = *(&v28 + v16);
    v19 += 4;
    v16 += 2;
  }

  while (v16 != 12);
LABEL_18:
  v24 = 0;
  v25 = (a3 + 20);
  do
  {
    v28 = v25;
    result = std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 104), v25);
    v27 = *(result + 5) + *(a2 + 24 + v24);
    *(result + 5) = v27;
    *(v25 - 1) = v27;
    v25 += 4;
    v24 += 8;
  }

  while (v24 != 48);
  return result;
}

{
  *(a3 + 24) = 0u;
  v6 = a3 + 24;
  *(a3 + 72) = 0;
  v7 = a3 + 72;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0;
  *(a3 + 94) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  mimosa::v2::SubpacketHeaderState::update(a1 + 24, a2, &v19);
  *a3 = v19;
  v9 = (a1 + 147);
  v8 = *(a1 + 147);
  *(a3 + 16) = v20;
  *(a1 + 146) = v8;
  *&v19 = a1 + 147;
  *(a1 + 147) = *(std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a1 + 64), (a1 + 147)) + 17);
  v10 = *(a2 + 64);
  if (*(a1 + 144) != v10)
  {
    *(a3 + 92) = v10;
    *(a3 + 94) = 1;
    *(a1 + 144) = v10;
  }

  v11 = 0;
  DWORD2(v19) = 0;
  *&v19 = 0;
  v12 = &v19;
  do
  {
    *v12 = *(a2 + 20 + v11);
    v12 = (v12 + 2);
    v11 += 8;
  }

  while (v11 != 48);
  v13 = mimosa::v2::ItemCoder<std::array<unsigned short,6ul>>::encode(a1, v19, DWORD2(v19));
  if ((v13 & 0x100) != 0)
  {
    v14 = 0;
    *v7 = v19;
    *(v7 + 8) = DWORD2(v19);
    goto LABEL_9;
  }

  if (*v9 != v13)
  {
    *v7 = v13;
    v14 = 1;
LABEL_9:
    *(a3 + 84) = v14;
    *(a3 + 88) = 1;
    *v9 = v13;
    v21 = (a1 + 146);
    *(std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a1 + 64), (a1 + 146)) + 17) = v13;
  }

  v15 = 0;
  v16 = (a2 + 20);
  do
  {
    v21 = v16;
    result = std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 104), v16);
    v18 = *(v16 - 1);
    *(v6 + v15) = v18 - *(result + 5);
    *(result + 5) = v18;
    v16 += 4;
    v15 += 8;
  }

  while (v15 != 48);
  return result;
}

uint64_t **mimosa::v2::WavelengthV2SubpacketState::predict(mimosa::v2::WavelengthV2SubpacketState *this)
{
  v1 = this + 147;
  *(this + 146) = *(this + 147);
  result = std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(this + 8, this + 147);
  *v1 = *(result + 17);
  return result;
}

uint64_t mimosa::v2::ItemCoder<std::array<unsigned short,6ul>>::encode(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *a1;
    v7 = *a1;
    while (*v7 != a2 || *(v7 + 2) != a3)
    {
      v7 += 12;
      v6 += 12;
      if (v7 == v4)
      {
        v6 = *(a1 + 8);
        break;
      }
    }
  }

  if (v4 == v6)
  {
    if (v4 - v5 == 3072)
    {
      v10 = v4 - (v5 + 12);
      if (v4 != v5 + 12)
      {
        memmove(*a1, v5 + 12, v4 - (v5 + 12));
      }

      v4 = &v5[v10];
      *(a1 + 8) = &v5[v10];
    }

    v11 = *(a1 + 16);
    if (v4 >= v11)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 2);
      v14 = v13 + 1;
      if (v13 + 1 > 0x1555555555555555)
      {
        std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a1) >> 2);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = 0x1555555555555555;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned short,6ul>>>(a1, v16);
      }

      v17 = 12 * v13;
      *v17 = a2;
      *(v17 + 8) = a3;
      v12 = 12 * v13 + 12;
      v18 = *(a1 + 8) - *a1;
      v19 = 12 * v13 - v18;
      memcpy((v17 - v18), *a1, v18);
      v20 = *a1;
      *a1 = v19;
      *(a1 + 8) = v12;
      *(a1 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v4 = a2;
      *(v4 + 2) = a3;
      v12 = (v4 + 12);
    }

    *(a1 + 8) = v12;
    LODWORD(v6) = -85 * ((v12 - *a1) >> 2) - 1;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    LOBYTE(v6) = -85 * ((v6 - v5) >> 2);
  }

  return v6 | (v9 << 8);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned short,6ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,unsigned char>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned char>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned char>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
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

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 *a2)
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

unint64_t mimosa::v2::varint::encode(unint64_t this)
{
  if (this >= 0x80)
  {
    if (HIBYTE(this))
    {
      v2 = 9;
    }

    else
    {
      v2 = 8;
    }

    if (this >> 49)
    {
      v3 = v2;
    }

    else
    {
      v3 = 7;
    }

    if (this >> 42)
    {
      v4 = v3;
    }

    else
    {
      v4 = 6;
    }

    if (this >> 35)
    {
      v5 = v4;
    }

    else
    {
      v5 = 5;
    }

    if (this >> 28)
    {
      v6 = v5;
    }

    else
    {
      v6 = 4;
    }

    if (this >= 0x200000)
    {
      v7 = v6;
    }

    else
    {
      v7 = 3;
    }

    if (this >= 0x4000)
    {
      v1 = v7;
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  v8 = vdupq_n_s64(this);
  v9 = vshlq_u64(v8, xmmword_2512CE6E0);
  v10 = vandq_s8(vshlq_u64(v8, xmmword_2512CE6F0), xmmword_2512CE700);
  v11 = vandq_s8(v9, xmmword_2512CE710);
  v12 = 0x8080808080808080 >> ((72 - 8 * v1) & 0xF8);
  if ((v1 & 0xFE) == 0)
  {
    v12 = 0;
  }

  v13 = vorrq_s8(v11, v10);
  return *&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | (2 * this) & 0x7F00 | (this << 6) & 0x7F000000000000 | this & 0x7F | v12 & 0x80FFFFFFFFFFFFFFLL | (((this >> 49) & 0x7F) << 56);
}

unint64_t mimosa::v2::varint::decode(uint64_t a1)
{
  v2 = (((*a1 & 0x8080808080808080) - 0x101010101010101) ^ *a1 & 0x8080808080808080) + 1;
  v3 = v2 | (2 * v2);
  v4 = *a1 & ~v3;
  v5 = v4 & 0x7F | (((v4 >> 8) & 0x7F) << 7) | (v4 >> 2) & 0x1FC000 | (v4 >> 3) & 0xFE00000 | (v4 >> 4) & 0x7F0000000 | (v4 >> 5) & 0x3F800000000 | (v4 >> 6) & 0x1FC0000000000 | (v4 >> 7) & 0xFE000000000000;
  if (((v4 & 0x8000000000000000) != 0) != v1)
  {
    return v5 | (*(a1 + 8) << 56);
  }

  v7 = ~v3;
  std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(&v7, 0, 0x40uLL);
  return v5;
}

uint64_t mimosa::v2::ContainerHeaderState::update(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 8) == 1)
  {
    v3 = 2 * *(a1 + 16) - *a1;
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      v3 = *(a1 + 16);
      goto LABEL_7;
    }

    v3 = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 16) = v3;
LABEL_7:
  *a1 = v8;
  *(a1 + 8) = v9;
  v4 = *(a1 + 32);
  v5 = v3 + *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4 + *(a2 + 8) + 1;
  v6 = (a2 + 16);
  if (!*(a2 + 17))
  {
    v6 = (a1 + 36);
  }

  *(a1 + 36) = *v6;
  return v5;
}

uint64_t mimosa::v2::ContainerHeaderState::predict(uint64_t this)
{
  v1 = *(this + 16);
  if (*(this + 8) == 1)
  {
    v2 = 2 * *(this + 16) - *this;
LABEL_5:
    *(this + 16) = v2;
    goto LABEL_6;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v2 = 0;
    *(this + 24) = 1;
    goto LABEL_5;
  }

LABEL_6:
  *this = v3;
  *(this + 8) = v4;
  ++*(this + 32);
  return this;
}

uint64_t mimosa::v2::ContainerHeaderState::update@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v3 = *(result + 16);
  if (*(result + 8) == 1)
  {
    v4 = 2 * *(result + 16) - *result;
  }

  else
  {
    if (*(result + 24) == 1)
    {
      v4 = *(result + 16);
      goto LABEL_7;
    }

    v4 = 0;
  }

  *(result + 16) = v4;
LABEL_7:
  *result = v9;
  *(result + 8) = v10;
  v5 = (*(result + 32) + 1);
  v6 = *a2 - v4;
  *(result + 16) = *a2;
  *(result + 24) = 1;
  v7 = *(a2 + 8);
  *a3 = v6;
  *(a3 + 8) = v7 - v5;
  *(result + 32) = v7;
  v8 = *(a2 + 12);
  if (v8 != *(result + 36))
  {
    *(result + 36) = v8;
    *(a3 + 16) = v8 | 0x100;
  }

  return result;
}

double mimosa::v2::AlgsResponseV2SubpacketState::update@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = mimosa::v2::SubpacketHeaderState::update(a1, a2);
  *(a3 + 8) = v6;
  if (*(a2 + 32) == 1)
  {
    *(a1 + 40) = *(a2 + 24);
  }

  if (*(a2 + 48) == 1)
  {
    *(a1 + 48) = *(a2 + 40);
  }

  if (*(a2 + 60) == 1)
  {
    *(a1 + 56) = *(a2 + 56);
  }

  if (*(a2 + 68) == 1)
  {
    *(a1 + 60) = *(a2 + 64);
  }

  if (*(a2 + 74) == 1)
  {
    *(a1 + 64) = *(a2 + 72);
  }

  if (*(a2 + 77))
  {
    v7 = *(a2 + 76);
    *(a1 + 66) = v7;
  }

  else
  {
    v7 = *(a1 + 66);
  }

  *(a3 + 16) = *(a1 + 40);
  result = *(a1 + 56);
  *(a3 + 32) = result;
  *(a3 + 40) = *(a1 + 64);
  *(a3 + 42) = v7;
  return result;
}

uint64_t mimosa::v2::AlgsResponseV2SubpacketState::update@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 74) = 0;
  *(a3 + 76) = 0;
  result = mimosa::v2::SubpacketHeaderState::update(a1, a2, &v13);
  *a3 = v13;
  *(a3 + 16) = v14;
  v7 = *(a2 + 16);
  if (*(a1 + 40) != v7)
  {
    *(a1 + 40) = v7;
    *(a3 + 24) = v7;
    *(a3 + 32) = 1;
  }

  v8 = *(a2 + 24);
  if (*(a1 + 48) != v8)
  {
    *(a1 + 48) = v8;
    *(a3 + 40) = v8;
    *(a3 + 48) = 1;
  }

  v9 = *(a2 + 32);
  if (*(a1 + 56) != v9)
  {
    *(a1 + 56) = v9;
    *(a3 + 56) = v9;
    *(a3 + 60) = 1;
  }

  v10 = *(a2 + 36);
  if (*(a1 + 60) != v10)
  {
    *(a1 + 60) = v10;
    *(a3 + 64) = v10;
    *(a3 + 68) = 1;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 64) != v11)
  {
    *(a1 + 64) = v11;
    *(a3 + 72) = v11;
    *(a3 + 74) = 1;
  }

  v12 = *(a2 + 42);
  if (*(a1 + 66) != v12)
  {
    *(a1 + 66) = v12;
    *(a3 + 76) = v12 | 0x100;
  }

  return result;
}

_DWORD *mimosa::v2::PatchDecoder::PatchDecoder(_DWORD *a1, uint64_t a2)
{
  *a1 = 0;
  std::__function::__value_func<BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12> const&)>::__value_func[abi:ne200100]((a1 + 2), a2);
  return a1;
}

{
  *a1 = 0;
  std::__function::__value_func<BOOL ()(std::variant<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12> const&)>::__value_func[abi:ne200100]((a1 + 2), a2);
  return a1;
}

uint64_t mimosa::v2::PatchDecoder::extract_patch@<X0>(mimosa::v2::PatchDecoder *this@<X0>, const byte *a2@<X1>, const byte *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 552) = 0;
  v8 = mimosa::v2::parse_varint(a2, a3, a3);
  v9 = v8;
  v11 = &a2[v10];
  if ((v8 & 0x10000000) != 0)
  {
    v13 = *v11++;
    v12 = v13;
    *this = v13;
    if ((v13 - 1) >= 0xA && (v12 - 15) >= 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v22, *this);
      v17 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("invalid subpacket combination code: ", &v22, &v20);
      MEMORY[0x25306FCE0](exception, &v20, v17);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    v12 = *this;
  }

  switch(v12)
  {
    case 0:
      v19 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v19, "first patch did not contain a subpacket combination update");
      __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 1:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      v14 = 0;
      v15 = 0uLL;
      *(a4 + 240) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 32) = 0u;
      goto LABEL_18;
    case 2:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      *(a4 + 352) = 0;
      v15 = 0uLL;
      *(a4 + 320) = 0u;
      *(a4 + 336) = 0u;
      *(a4 + 288) = 0u;
      *(a4 + 304) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 272) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 240) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      v14 = 2;
      goto LABEL_18;
    case 3:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      bzero(a4, 0x208uLL);
      v14 = 4;
      goto LABEL_19;
    case 4:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      bzero(a4, 0x208uLL);
      v14 = 5;
      goto LABEL_19;
    case 5:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      bzero(a4, 0x228uLL);
      v14 = 6;
      goto LABEL_19;
    case 6:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      bzero(a4, 0x228uLL);
      v14 = 7;
      goto LABEL_19;
    case 7:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      *(a4 + 368) = 0;
      v15 = 0uLL;
      *(a4 + 336) = 0u;
      *(a4 + 352) = 0u;
      *(a4 + 304) = 0u;
      *(a4 + 320) = 0u;
      *(a4 + 272) = 0u;
      *(a4 + 288) = 0u;
      *(a4 + 240) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 32) = 0u;
      v14 = 8;
      goto LABEL_18;
    case 8:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      *(a4 + 496) = 0;
      v15 = 0uLL;
      *(a4 + 464) = 0u;
      *(a4 + 480) = 0u;
      *(a4 + 432) = 0u;
      *(a4 + 448) = 0u;
      *(a4 + 400) = 0u;
      *(a4 + 416) = 0u;
      *(a4 + 368) = 0u;
      *(a4 + 384) = 0u;
      *(a4 + 336) = 0u;
      *(a4 + 352) = 0u;
      *(a4 + 304) = 0u;
      *(a4 + 320) = 0u;
      *(a4 + 272) = 0u;
      *(a4 + 288) = 0u;
      *(a4 + 240) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 32) = 0u;
      v14 = 9;
      goto LABEL_18;
    case 9:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      bzero(a4, 0x218uLL);
      v14 = 10;
      goto LABEL_19;
    case 10:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      bzero(a4, 0x218uLL);
      v14 = 11;
      goto LABEL_19;
    case 15:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      *(a4 + 464) = 0;
      v15 = 0uLL;
      *(a4 + 432) = 0u;
      *(a4 + 448) = 0u;
      *(a4 + 400) = 0u;
      *(a4 + 416) = 0u;
      *(a4 + 368) = 0u;
      *(a4 + 384) = 0u;
      *(a4 + 336) = 0u;
      *(a4 + 352) = 0u;
      *(a4 + 304) = 0u;
      *(a4 + 320) = 0u;
      *(a4 + 272) = 0u;
      *(a4 + 288) = 0u;
      *(a4 + 240) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 32) = 0u;
      v14 = 1;
      goto LABEL_18;
    case 16:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
      *(a4 + 480) = 0;
      v15 = 0uLL;
      *(a4 + 448) = 0u;
      *(a4 + 464) = 0u;
      *(a4 + 416) = 0u;
      *(a4 + 432) = 0u;
      *(a4 + 384) = 0u;
      *(a4 + 400) = 0u;
      *(a4 + 352) = 0u;
      *(a4 + 368) = 0u;
      *(a4 + 320) = 0u;
      *(a4 + 336) = 0u;
      *(a4 + 288) = 0u;
      *(a4 + 304) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 272) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 240) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      v14 = 3;
LABEL_18:
      *a4 = v15;
      *(a4 + 16) = v15;
LABEL_19:
      *(a4 + 552) = v14;
      v20.__r_.__value_.__r.__words[0] = this;
      v20.__r_.__value_.__l.__size_ = v9;
      v20.__r_.__value_.__r.__words[2] = v11;
      v21 = a3;
      break;
    default:
      v14 = *(a4 + 552);
      v20.__r_.__value_.__r.__words[0] = this;
      v20.__r_.__value_.__l.__size_ = v8;
      v20.__r_.__value_.__r.__words[2] = v11;
      v21 = a3;
      if (v14 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return result;
  }

  v22.__r_.__value_.__r.__words[0] = &v20;
  return (off_286352C98[v14])(&v22, a4);
}

void sub_2512AA3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t mimosa::v2::PatchDecoder::decode(mimosa::v2::PatchDecoder *this, const byte *a2, const byte *a3)
{
  v6 = mimosa::v2::parse_varint(a2, &a3[a2], a3);
  if (!v7)
  {
    return 0;
  }

  if (v6 < 8 || v6 == 109)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "corruption detected");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v6 - (v6 > 0x6D) - 8;
  if (v8 + v7 > a3)
  {
    return 0;
  }

  v10 = &a2[v7 + v8];
  mimosa::v2::PatchDecoder::extract_patch(this, &a2[v7], v10, v14);
  v11 = *(this + 4);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, v14);
  v9 = v10 - a2;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v14);
  return v9;
}

unint64_t mimosa::v2::parse_varint(const byte *this, const byte *a2, const byte *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (this >= a2)
  {
    result = 0;
  }

  else
  {
    v7 = 0;
    __dst = 0;
    if ((a2 - this) >= 9)
    {
      v3 = 9;
    }

    else
    {
      v3 = a2 - this;
    }

    memcpy(&__dst, this, v3);
    result = mimosa::v2::varint::decode(&__dst);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<mimosa::v2::PacketState::PatchV1,mimosa::v2::PacketState::PatchV2,mimosa::v2::PacketState::PatchV3,mimosa::v2::PacketState::PatchV4,mimosa::v2::PacketState::PatchV5,mimosa::v2::PacketState::PatchV6,mimosa::v2::PacketState::PatchV7,mimosa::v2::PacketState::PatchV8,mimosa::v2::PacketState::PatchV9,mimosa::v2::PacketState::PatchV10,mimosa::v2::PacketState::PatchV11,mimosa::v2::PacketState::PatchV12>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 552);
  if (v2 != -1)
  {
    result = (off_286352C18[v2])(&v3, result);
  }

  *(v1 + 552) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 184) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
  }

  v3 = *(a2 + 128);
  if (v3)
  {
    *(a2 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 80);
  if (v4)
  {
    *(a2 + 88) = v4;
    operator delete(v4);
  }

  if (*(a2 + 72) == 1)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      *(a2 + 56) = v5;

      operator delete(v5);
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 328) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
  }

  if (*(a2 + 184) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
  }

  v3 = *(a2 + 128);
  if (v3)
  {
    *(a2 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 80);
  if (v4)
  {
    *(a2 + 88) = v4;
    operator delete(v4);
  }

  if (*(a2 + 72) == 1)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      *(a2 + 56) = v5;

      operator delete(v5);
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 328) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
  }

  if (*(a2 + 184) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
  }

  v3 = *(a2 + 128);
  if (v3)
  {
    *(a2 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 80);
  if (v4)
  {
    *(a2 + 88) = v4;
    operator delete(v4);
  }

  if (*(a2 + 72) == 1)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      *(a2 + 56) = v5;

      operator delete(v5);
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 328) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
  }

  if (*(a2 + 184) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
  }

  v3 = *(a2 + 128);
  if (v3)
  {
    *(a2 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 80);
  if (v4)
  {
    *(a2 + 88) = v4;
    operator delete(v4);
  }

  if (*(a2 + 72) == 1)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      *(a2 + 56) = v5;

      operator delete(v5);
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 328) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
  }

  if (*(a2 + 184) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
  }

  v3 = *(a2 + 128);
  if (v3)
  {
    *(a2 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 80);
  if (v4)
  {
    *(a2 + 88) = v4;
    operator delete(v4);
  }

  if (*(a2 + 72) == 1)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      *(a2 + 56) = v5;

      operator delete(v5);
    }
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
  }

  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    *(a2 + 128) = v4;
    operator delete(v4);
  }

  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }
  }

  if (*(a2 + 80) == 1)
  {

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
  }

  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    *(a2 + 128) = v4;
    operator delete(v4);
  }

  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }
  }

  if (*(a2 + 80) == 1)
  {

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
  }

  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    *(a2 + 128) = v4;
    operator delete(v4);
  }

  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }
  }

  if (*(a2 + 80) == 1)
  {

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
  }

  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    *(a2 + 128) = v4;
    operator delete(v4);
  }

  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }
  }

  if (*(a2 + 80) == 1)
  {

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
  }

  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    *(a2 + 128) = v4;
    operator delete(v4);
  }

  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }
  }

  if (*(a2 + 80) == 1)
  {

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
  }

  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    *(a2 + 128) = v4;
    operator delete(v4);
  }

  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }
  }

  if (*(a2 + 80) == 1)
  {

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN6mimosa2v211PacketState7PatchV1ENSA_7PatchV2ENSA_7PatchV3ENSA_7PatchV4ENSA_7PatchV5ENSA_7PatchV6ENSA_7PatchV7ENSA_7PatchV8ENSA_7PatchV9ENSA_8PatchV10ENSA_8PatchV11ENSA_8PatchV12EEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSO_1EJSB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 224) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 192);
  }

  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 120);
  if (v4)
  {
    *(a2 + 128) = v4;
    operator delete(v4);
  }

  if (*(a2 + 112) == 1)
  {
    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }
  }

  if (*(a2 + 80) == 1)
  {

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 48);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_286352C78[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIN6mimosa2v219AccelSubpacketState12SampleHeaderENS_9allocatorISC_EEEEhEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSF_hEEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_286352C88[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorItNS_9allocatorItEEEEhEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSB_hEEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV1>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 104);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 104) = v10;
LABEL_18:
  *(a2 + 104) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 120) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 112) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 192);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 192) = v23;
LABEL_25:
  *(a2 + 192) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 208) = v32 | 0x100;
    if ((a3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 200) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 8) == 0)
  {
LABEL_28:
    v29 = a1[2];
    goto LABEL_32;
  }

LABEL_31:
  v33 = *v6++;
  v29 = v33;
  a1[2] = v33;
LABEL_32:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 80), v29);
  if ((a3 & 0x2000) != 0)
  {
    v35 = *v6++;
    v34 = v35;
    a1[3] = v35;
  }

  else
  {
    v34 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 128), v34);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 48, a1 + 2);
    v37 = *(a2 + 48);
    v38 = *(a2 + 56);
    if (v37 != v38)
    {
      while (1)
      {
        v39 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v39 & 2) != 0)
        {
          goto LABEL_41;
        }

LABEL_42:
        if ((v39 & 4) != 0)
        {
          v43 = *v6;
          v6 += 2;
          *(v37 + 8) = v43;
          *(v37 + 10) = 1;
          if ((v39 & 8) == 0)
          {
LABEL_44:
            if ((v39 & 0x10) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_57;
          }
        }

        else if ((v39 & 8) == 0)
        {
          goto LABEL_44;
        }

        v44 = *v6;
        v6 += 2;
        *(v37 + 12) = v44;
        *(v37 + 14) = 1;
        if ((v39 & 0x10) == 0)
        {
LABEL_45:
          if ((v39 & 0x20) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }

LABEL_57:
        v45 = *v6;
        v6 += 2;
        *(v37 + 16) = v45;
        *(v37 + 18) = 1;
        if ((v39 & 0x20) == 0)
        {
LABEL_46:
          if ((v39 & 0x40) == 0)
          {
            goto LABEL_47;
          }

          goto LABEL_59;
        }

LABEL_58:
        v46 = *v6;
        v6 += 2;
        *(v37 + 20) = v46;
        *(v37 + 22) = 1;
        if ((v39 & 0x40) == 0)
        {
LABEL_47:
          if ((v39 & 0x80) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_60;
        }

LABEL_59:
        v47 = *v6++;
        *(v37 + 24) = v47 | 0x100;
        if ((v39 & 0x80) == 0)
        {
LABEL_48:
          if ((v39 & 0x100) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_61;
        }

LABEL_60:
        v48 = *v6++;
        *(v37 + 26) = v48 | 0x100;
        if ((v39 & 0x100) == 0)
        {
LABEL_49:
          if ((v39 & 0x200) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_62;
        }

LABEL_61:
        v49 = *v6++;
        *(v37 + 28) = v49 | 0x100;
        if ((v39 & 0x200) == 0)
        {
LABEL_50:
          if ((v39 & 0x400) != 0)
          {
            goto LABEL_63;
          }

          goto LABEL_51;
        }

LABEL_62:
        v50 = *v6++;
        *(v37 + 30) = v50 | 0x100;
        if ((v39 & 0x400) != 0)
        {
LABEL_63:
          v51 = *v6++;
          *(v37 + 32) = v51 | 0x100;
          if ((v39 & 0x800) == 0)
          {
            goto LABEL_53;
          }

LABEL_52:
          v42 = *v6++;
          *(v37 + 34) = v42 | 0x100;
          goto LABEL_53;
        }

LABEL_51:
        if ((v39 & 0x800) != 0)
        {
          goto LABEL_52;
        }

LABEL_53:
        v37 += 36;
        if (v37 == v38)
        {
          goto LABEL_65;
        }
      }

      v40 = *(v6 + 1);
      v6 += 4;
      *(v37 + 4) = v40;
      *(v37 + 6) = 1;
      if ((v39 & 2) == 0)
      {
        goto LABEL_42;
      }

LABEL_41:
      v41 = *v6;
      v6 += 2;
      *v37 = v41;
      *(v37 + 2) = 1;
      goto LABEL_42;
    }

LABEL_65:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v52 = *(a2 + 48);
        v53 = *(v52 + 4);
        if ((v53 & 0x10000) != 0)
        {
          for (i = *(a2 + 56); v52 != i; v52 += 36)
          {
            *(v52 + 4) = v53;
            *(v52 + 6) = 1;
          }
        }
      }
    }
  }

  v55 = *(a2 + 80);
  v56 = *(a2 + 88);
  if (v55 != v56)
  {
    v57 = v55 + 2;
    do
    {
      v58 = mimosa::v2::parse_varint(v6, a5, v36);
      v60 = v59;
      *(v57 - 2) = mimosa::v2::varint::sign_transform(v58);
      v61 = v57 - 2;
      v62 = &v6[v60];
      v64 = mimosa::v2::parse_varint(v62, a5, v63);
      v6 = &v62[v65];
      *(v57 - 1) = mimosa::v2::varint::sign_transform(v64);
      if ((a1[1] & 1) == 0)
      {
        v66 = mimosa::v2::parse_varint(v6, a5, v36);
        v6 += v67;
        *v57 = mimosa::v2::varint::sign_transform(v66);
      }

      v57 += 3;
    }

    while (v61 + 3 != v56);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v97, *v6);
      if (*(a2 + 184) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
      }

      v94 = v97;
      *(a2 + 152) = v97;
      *(a2 + 168) = v98;
      *(a2 + 176) = 0;
      *(a2 + 184) = 1;
      v95 = v94;
      ++v6;
      while (v95 != *(&v94 + 1))
      {
        *v95 = *v6;
        *(v95 + 2) = *(v6 + 1);
        *(v95 + 4) = v6[4];
        *(v95 + 5) = v6[5] != 0;
        v95 += 6;
        v6 += 6;
      }
    }

    else
    {
      v82 = *v6++;
      v81 = v82;
      if (*(a2 + 184) == 1)
      {
        if (*(a2 + 176) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
          *(a2 + 176) = 1;
        }

        *(a2 + 152) = v81;
      }

      else
      {
        *(a2 + 152) = v81;
        *(a2 + 176) = 1;
        *(a2 + 184) = 1;
      }
    }
  }

  v68 = *(a2 + 128);
  v69 = *(a2 + 136);
  while (v68 != v69)
  {
    v70 = mimosa::v2::parse_varint(v6, a5, v36);
    v72 = &v6[v71];
    *v68 = mimosa::v2::varint::sign_transform(v70);
    v74 = mimosa::v2::parse_varint(v72, a5, v73);
    v76 = &v72[v75];
    v68[1] = mimosa::v2::varint::sign_transform(v74);
    v78 = mimosa::v2::parse_varint(v76, a5, v77);
    v6 = &v76[v79];
    v68[2] = mimosa::v2::varint::sign_transform(v78);
    v68 += 3;
  }

  if ((a3 & 0x2000000000) != 0)
  {
    v83 = *v6;
    v6 += 2;
    *(a2 + 216) = v83;
    *(a2 + 218) = 1;
    if ((a3 & 0x4000000000) == 0)
    {
LABEL_81:
      if ((a3 & 4) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_101;
    }
  }

  else if ((a3 & 0x4000000000) == 0)
  {
    goto LABEL_81;
  }

  v84 = *v6++;
  *(a2 + 220) = v84 | 0x100;
  if ((a3 & 4) == 0)
  {
LABEL_82:
    if ((a3 & 0x8000000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_102;
  }

LABEL_101:
  v85 = *v6++;
  *(a2 + 222) = v85 | 0x100;
  if ((a3 & 0x8000000000) == 0)
  {
LABEL_83:
    if ((a3 & 0x10000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_103;
  }

LABEL_102:
  v86 = *v6++;
  *(a2 + 224) = v86 | 0x100;
  if ((a3 & 0x10000000000) == 0)
  {
LABEL_84:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_104;
  }

LABEL_103:
  v87 = *v6++;
  *(a2 + 226) = v87 | 0x100;
  if ((a3 & 0x4000) == 0)
  {
LABEL_85:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_105;
  }

LABEL_104:
  v88 = *v6;
  v6 += 4;
  *(a2 + 228) = v88;
  *(a2 + 232) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_86:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_106;
  }

LABEL_105:
  v89 = *v6;
  v6 += 4;
  *(a2 + 236) = v89;
  *(a2 + 240) = 1;
  if ((a3 & 0x400) == 0)
  {
LABEL_87:
    if ((a3 & 0x80000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_107;
  }

LABEL_106:
  v90 = *v6;
  v6 += 4;
  *(a2 + 244) = v90;
  *(a2 + 248) = 1;
  if ((a3 & 0x80000000000) == 0)
  {
LABEL_88:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_108;
  }

LABEL_107:
  v91 = *v6;
  v6 += 4;
  *(a2 + 252) = v91;
  *(a2 + 256) = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_89:
    if ((a3 & 0x20000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_109;
  }

LABEL_108:
  v92 = *v6;
  v6 += 2;
  *(a2 + 260) = v92;
  *(a2 + 262) = 1;
  if ((a3 & 0x20000000000) == 0)
  {
LABEL_90:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_109:
  v93 = *v6;
  v6 += 2;
  *(a2 + 264) = v93;
  *(a2 + 266) = 1;
  if ((a3 & 0x40000000) != 0)
  {
LABEL_91:
    v80 = *v6++;
    *(a2 + 268) = v80 | 0x100;
  }

LABEL_92:
  if (v6 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void *std::optional<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  result = std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>::vector[abi:ne200100](a1, *a2);
  *(a1 + 24) = 1;
  return result;
}

void std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
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

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2512AB8D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2512ABA20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::AccelSubpacketState::SampleHeader>>(a1, a2);
  }

  std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mimosa::v2::AccelSubpacketState::SampleHeader>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t mimosa::v2::PatchDecoder::extract_patch<mimosa::v2::PacketState::PatchV2>(_BYTE *a1, uint64_t a2, const byte *a3, const byte *this, byte *a5)
{
  v6 = this;
  if ((a3 & 0x20) != 0)
  {
    a1[1] ^= 1u;
    if ((a3 & 0x10) != 0)
    {
LABEL_3:
      if ((a3 & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x10) != 0)
  {
    goto LABEL_3;
  }

  v11 = mimosa::v2::parse_varint(this, a5, a3);
  v6 += v12;
  *a2 = mimosa::v2::varint::sign_transform(v11);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_4:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v14;
  *(a2 + 8) = mimosa::v2::varint::sign_transform(v13);
  if ((a3 & 0x20000000) == 0)
  {
LABEL_5:
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v15 = *v6++;
  *(a2 + 16) = v15 | 0x100;
  if (a3)
  {
LABEL_6:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v17;
  *(a2 + 24) = mimosa::v2::varint::sign_transform(v16);
  if ((a3 & 0x8000) == 0)
  {
LABEL_7:
    if ((a3 & 0x100000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v20 = *v6++;
    *(a2 + 40) = v20 | 0x100;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v18 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v19;
  *(a2 + 32) = mimosa::v2::varint::sign_transform(v18);
  if ((a3 & 0x100000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x80000000) == 0)
  {
LABEL_9:
    v10 = *(a2 + 104);
    goto LABEL_18;
  }

LABEL_17:
  v21 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v22;
  v10 = mimosa::v2::varint::sign_transform(v21);
  *(a2 + 104) = v10;
LABEL_18:
  *(a2 + 104) = v10 + *(a2 + 24);
  if ((a3 & 0x80000) == 0)
  {
    if ((a3 & 0x200000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v26 = *v6++;
    *(a2 + 120) = v26 | 0x100;
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v24 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v25;
  *(a2 + 112) = mimosa::v2::varint::sign_transform(v24);
  if ((a3 & 0x200000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((a3 & 0x100000000) == 0)
  {
LABEL_21:
    v23 = *(a2 + 192);
    goto LABEL_25;
  }

LABEL_24:
  v27 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v28;
  v23 = mimosa::v2::varint::sign_transform(v27);
  *(a2 + 192) = v23;
LABEL_25:
  *(a2 + 192) = v23 + *(a2 + 24);
  if ((a3 & 0x40000) == 0)
  {
    if ((a3 & 0x400000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v32 = *v6++;
    *(a2 + 208) = v32 | 0x100;
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v31;
  *(a2 + 200) = mimosa::v2::varint::sign_transform(v30);
  if ((a3 & 0x400000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((a3 & 0x200000000) == 0)
  {
LABEL_28:
    v29 = *(a2 + 272);
    goto LABEL_32;
  }

LABEL_31:
  v33 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v34;
  v29 = mimosa::v2::varint::sign_transform(v33);
  *(a2 + 272) = v29;
LABEL_32:
  *(a2 + 272) = v29 + *(a2 + 24);
  if ((a3 & 0x100000) == 0)
  {
    if ((a3 & 0x800000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v38 = *v6++;
    *(a2 + 288) = v38 | 0x100;
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v36 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v37;
  *(a2 + 280) = mimosa::v2::varint::sign_transform(v36);
  if ((a3 & 0x800000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if ((a3 & 0x400000000) == 0)
  {
LABEL_35:
    v35 = *(a2 + 344);
    goto LABEL_39;
  }

LABEL_38:
  v39 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v40;
  v35 = mimosa::v2::varint::sign_transform(v39);
  *(a2 + 344) = v35;
LABEL_39:
  *(a2 + 344) = v35 + *(a2 + 24);
  if ((a3 & 0x800000000) == 0)
  {
    if ((a3 & 0x1000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v44 = *v6++;
    *(a2 + 360) = v44 | 0x100;
    if ((a3 & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v42 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v43;
  *(a2 + 352) = mimosa::v2::varint::sign_transform(v42);
  if ((a3 & 0x1000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if ((a3 & 0x1000000000) == 0)
  {
LABEL_42:
    v41 = *(a2 + 376);
    goto LABEL_46;
  }

LABEL_45:
  v45 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v46;
  v41 = mimosa::v2::varint::sign_transform(v45);
  *(a2 + 376) = v41;
LABEL_46:
  *(a2 + 376) = v41 + *(a2 + 24);
  if ((a3 & 0x400000) == 0)
  {
    if ((a3 & 0x2000000000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    v50 = *v6++;
    *(a2 + 392) = v50 | 0x100;
    if ((a3 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v48 = mimosa::v2::parse_varint(v6, a5, a3);
  v6 += v49;
  *(a2 + 384) = mimosa::v2::varint::sign_transform(v48);
  if ((a3 & 0x2000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if ((a3 & 8) == 0)
  {
LABEL_49:
    v47 = a1[2];
    goto LABEL_53;
  }

LABEL_52:
  v51 = *v6++;
  v47 = v51;
  a1[2] = v51;
LABEL_53:
  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 80), v47);
  if ((a3 & 0x2000) != 0)
  {
    v53 = *v6++;
    v52 = v53;
    a1[3] = v53;
  }

  else
  {
    v52 = a1[3];
  }

  std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::ADCDelta>::resize((a2 + 128), v52);
  if ((a3 & 0x80) != 0)
  {
    std::optional<std::vector<mimosa::v2::OpticalSamplesV1SubpacketState::Patch::Sample>>::emplace[abi:ne200100]<unsigned char &,void>(a2 + 48, a1 + 2);
    v55 = *(a2 + 48);
    v56 = *(a2 + 56);
    if (v55 != v56)
    {
      while (1)
      {
        v57 = *v6;
        if (*v6)
        {
          break;
        }

        v6 += 2;
        if ((v57 & 2) != 0)
        {
          goto LABEL_62;
        }

LABEL_63:
        if ((v57 & 4) != 0)
        {
          v61 = *v6;
          v6 += 2;
          *(v55 + 8) = v61;
          *(v55 + 10) = 1;
          if ((v57 & 8) == 0)
          {
LABEL_65:
            if ((v57 & 0x10) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_78;
          }
        }

        else if ((v57 & 8) == 0)
        {
          goto LABEL_65;
        }

        v62 = *v6;
        v6 += 2;
        *(v55 + 12) = v62;
        *(v55 + 14) = 1;
        if ((v57 & 0x10) == 0)
        {
LABEL_66:
          if ((v57 & 0x20) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_79;
        }

LABEL_78:
        v63 = *v6;
        v6 += 2;
        *(v55 + 16) = v63;
        *(v55 + 18) = 1;
        if ((v57 & 0x20) == 0)
        {
LABEL_67:
          if ((v57 & 0x40) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_80;
        }

LABEL_79:
        v64 = *v6;
        v6 += 2;
        *(v55 + 20) = v64;
        *(v55 + 22) = 1;
        if ((v57 & 0x40) == 0)
        {
LABEL_68:
          if ((v57 & 0x80) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_81;
        }

LABEL_80:
        v65 = *v6++;
        *(v55 + 24) = v65 | 0x100;
        if ((v57 & 0x80) == 0)
        {
LABEL_69:
          if ((v57 & 0x100) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_82;
        }

LABEL_81:
        v66 = *v6++;
        *(v55 + 26) = v66 | 0x100;
        if ((v57 & 0x100) == 0)
        {
LABEL_70:
          if ((v57 & 0x200) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_83;
        }

LABEL_82:
        v67 = *v6++;
        *(v55 + 28) = v67 | 0x100;
        if ((v57 & 0x200) == 0)
        {
LABEL_71:
          if ((v57 & 0x400) != 0)
          {
            goto LABEL_84;
          }

          goto LABEL_72;
        }

LABEL_83:
        v68 = *v6++;
        *(v55 + 30) = v68 | 0x100;
        if ((v57 & 0x400) != 0)
        {
LABEL_84:
          v69 = *v6++;
          *(v55 + 32) = v69 | 0x100;
          if ((v57 & 0x800) == 0)
          {
            goto LABEL_74;
          }

LABEL_73:
          v60 = *v6++;
          *(v55 + 34) = v60 | 0x100;
          goto LABEL_74;
        }

LABEL_72:
        if ((v57 & 0x800) != 0)
        {
          goto LABEL_73;
        }

LABEL_74:
        v55 += 36;
        if (v55 == v56)
        {
          goto LABEL_86;
        }
      }

      v58 = *(v6 + 1);
      v6 += 4;
      *(v55 + 4) = v58;
      *(v55 + 6) = 1;
      if ((v57 & 2) == 0)
      {
        goto LABEL_63;
      }

LABEL_62:
      v59 = *v6;
      v6 += 2;
      *v55 = v59;
      *(v55 + 2) = 1;
      goto LABEL_63;
    }

LABEL_86:
    if ((a3 & 0x100) == 0)
    {
      if (a1[2])
      {
        v70 = *(a2 + 48);
        v71 = *(v70 + 4);
        if ((v71 & 0x10000) != 0)
        {
          for (i = *(a2 + 56); v70 != i; v70 += 36)
          {
            *(v70 + 4) = v71;
            *(v70 + 6) = 1;
          }
        }
      }
    }
  }

  v73 = *(a2 + 80);
  v74 = *(a2 + 88);
  if (v73 != v74)
  {
    v75 = v73 + 2;
    do
    {
      v76 = mimosa::v2::parse_varint(v6, a5, v54);
      v78 = v77;
      *(v75 - 2) = mimosa::v2::varint::sign_transform(v76);
      v79 = v75 - 2;
      v80 = &v6[v78];
      v82 = mimosa::v2::parse_varint(v80, a5, v81);
      v6 = &v80[v83];
      *(v75 - 1) = mimosa::v2::varint::sign_transform(v82);
      if ((a1[1] & 1) == 0)
      {
        v84 = mimosa::v2::parse_varint(v6, a5, v54);
        v6 += v85;
        *v75 = mimosa::v2::varint::sign_transform(v84);
      }

      v75 += 3;
    }

    while (v79 + 3 != v74);
  }

  if ((a3 & 0x800) != 0)
  {
    if ((a3 & 0x2000000) != 0)
    {
      std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>::vector[abi:ne200100](&v141, *v6);
      if (*(a2 + 184) == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
      }

      v114 = v141;
      *(a2 + 152) = v141;
      *(a2 + 168) = v142;
      *(a2 + 176) = 0;
      *(a2 + 184) = 1;
      v115 = v114;
      ++v6;
      while (v115 != *(&v114 + 1))
      {
        *v115 = *v6;
        *(v115 + 2) = *(v6 + 1);
        *(v115 + 4) = v6[4];
        *(v115 + 5) = v6[5] != 0;
        v115 += 6;
        v6 += 6;
      }
    }

    else
    {
      v99 = *v6++;
      v98 = v99;
      if (*(a2 + 184) == 1)
      {
        if (*(a2 + 176) != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<mimosa::v2::AccelSubpacketState::SampleHeader>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 152);
          *(a2 + 176) = 1;
        }

        *(a2 + 152) = v98;
      }

      else
      {
        *(a2 + 152) = v98;
        *(a2 + 176) = 1;
        *(a2 + 184) = 1;
      }
    }
  }

  v86 = *(a2 + 128);
  v87 = *(a2 + 136);
  while (v86 != v87)
  {
    v88 = mimosa::v2::parse_varint(v6, a5, v54);
    v90 = &v6[v89];
    *v86 = mimosa::v2::varint::sign_transform(v88);
    v92 = mimosa::v2::parse_varint(v90, a5, v91);
    v94 = &v90[v93];
    v86[1] = mimosa::v2::varint::sign_transform(v92);
    v96 = mimosa::v2::parse_varint(v94, a5, v95);
    v6 = &v94[v97];
    v86[2] = mimosa::v2::varint::sign_transform(v96);
    v86 += 3;
  }

  if ((a3 & 0x2000000000) != 0)
  {
    v100 = *v6;
    v6 += 2;
    *(a2 + 216) = v100;
    *(a2 + 218) = 1;
    if ((a3 & 0x4000000000) == 0)
    {
LABEL_102:
      if ((a3 & 4) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_121;
    }
  }

  else if ((a3 & 0x4000000000) == 0)
  {
    goto LABEL_102;
  }

  v101 = *v6++;
  *(a2 + 220) = v101 | 0x100;
  if ((a3 & 4) == 0)
  {
LABEL_103:
    if ((a3 & 0x8000000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_122;
  }

LABEL_121:
  v102 = *v6++;
  *(a2 + 222) = v102 | 0x100;
  if ((a3 & 0x8000000000) == 0)
  {
LABEL_104:
    if ((a3 & 0x10000000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_123;
  }

LABEL_122:
  v103 = *v6++;
  *(a2 + 224) = v103 | 0x100;
  if ((a3 & 0x10000000000) == 0)
  {
LABEL_105:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_124;
  }

LABEL_123:
  v104 = *v6++;
  *(a2 + 226) = v104 | 0x100;
  if ((a3 & 0x4000) == 0)
  {
LABEL_106:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

LABEL_124:
  v105 = *v6;
  v6 += 4;
  *(a2 + 228) = v105;
  *(a2 + 232) = 1;
  if ((a3 & 0x200000) == 0)
  {
LABEL_107:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_126;
  }

LABEL_125:
  v106 = *v6;
  v6 += 4;
  *(a2 + 236) = v106;
  *(a2 + 240) = 1;
  if ((a3 & 0x400) == 0)
  {
LABEL_108:
    if ((a3 & 0x80000000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_127;
  }

LABEL_126:
  v107 = *v6;
  v6 += 4;
  *(a2 + 244) = v107;
  *(a2 + 248) = 1;
  if ((a3 & 0x80000000000) == 0)
  {
LABEL_109:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_128;
  }

LABEL_127:
  v108 = *v6;
  v6 += 4;
  *(a2 + 252) = v108;
  *(a2 + 256) = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_110:
    if ((a3 & 0x20000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_129;
  }

LABEL_128:
  v109 = *v6;
  v6 += 2;
  *(a2 + 260) = v109;
  *(a2 + 262) = 1;
  if ((a3 & 0x20000000000) == 0)
  {
LABEL_111:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_130;
  }

LABEL_129:
  v110 = *v6;
  v6 += 2;
  *(a2 + 264) = v110;
  *(a2 + 266) = 1;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_112:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_131;
  }

LABEL_130:
  v111 = *v6++;
  *(a2 + 268) = v111 | 0x100;
  if ((a3 & 0x200) == 0)
  {
    goto LABEL_148;
  }

LABEL_131:
  if ((a3 & 0x800000) != 0)
  {
    std::vector<unsigned short>::vector[abi:ne200100](&v141, a1[2]);
    if (*(a2 + 328) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
    }

    v116 = v141;
    *(a2 + 296) = v141;
    *(a2 + 312) = v142;
    *(a2 + 320) = 0;
    *(a2 + 328) = 1;
    for (j = v116; j != *(&v116 + 1); ++j)
    {
      v118 = *v6;
      v6 += 2;
      *j = v118;
    }
  }

  else
  {
    v113 = *v6++;
    v112 = v113;
    if (*(a2 + 328) == 1)
    {
      if (*(a2 + 320) != 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned short>,unsigned char>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 296);
        *(a2 + 320) = 1;
      }

      *(a2 + 296) = v112;
    }

    else
    {
      *(a2 + 296) = v112;
      *(a2 + 320) = 1;
      *(a2 + 328) = 1;
    }
  }

LABEL_148:
  if ((a3 & 0x4000000) != 0)
  {
    v119 = *v6++;
    *(a2 + 336) = v119 | 0x100;
  }

  if ((a3 & 0x20000) != 0)
  {
    v120 = *v6++;
    *(a2 + 338) = v120 | 0x100;
  }

  v121 = &v6[(a3 & 0x4000000000) >> 38];
  if ((a3 & 0x40000000000) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_154;
    }

LABEL_157:
    v123 = mimosa::v2::parse_varint(v121, a5, v54);
    v121 += v124;
    *(a2 + 372) = mimosa::v2::varint::sign_transform(v123);
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_158;
  }

  v122 = *v121;
  v121 += 2;
  *(a2 + 368) = v122;
  *(a2 + 370) = 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_157;
  }

LABEL_154:
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_166;
  }

LABEL_158:
  if ((a3 & 0x1000000) != 0)
  {
    v127 = (a2 + 448);
    *(a2 + 448) = 0;
    *(a2 + 456) = 0;
    *(a2 + 464) = 1;
    v128 = 12;
    do
    {
      v129 = *v121;
      v121 += 2;
      *v127++ = v129;
      v128 -= 2;
    }

    while (v128);
LABEL_166:
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_167;
    }

    goto LABEL_168;
  }

  v126 = *v121++;
  v125 = v126;
  if (*(a2 + 464) != 1)
  {
    *(a2 + 448) = v125;
    *(a2 + 460) = 1;
    *(a2 + 464) = 1;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  if (*(a2 + 460) != 1)
  {
    *(a2 + 460) = 1;
  }

  *(a2 + 448) = v125;
  if ((a3 & 0x40) != 0)
  {
LABEL_167:
    v130 = *v121;
    v121 += 2;
    *(a2 + 468) = v130;
    *(a2 + 470) = 1;
  }

LABEL_168:
  result = mimosa::v2::parse_varint(v121, a5, v54);
  v133 = result;
  v134 = 0;
  v136 = &v121[v135];
  v137 = a2 + 400;
  do
  {
    if (v133)
    {
      v138 = mimosa::v2::parse_varint(v136, a5, v132);
      v136 += v139;
      result = mimosa::v2::varint::sign_transform(v138);
      *(v137 + v134) = result;
    }

    v133 >>= 1;
    v134 += 8;
  }

  while (v134 != 48);
  if (v136 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "something went wrong during patch decoding");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}