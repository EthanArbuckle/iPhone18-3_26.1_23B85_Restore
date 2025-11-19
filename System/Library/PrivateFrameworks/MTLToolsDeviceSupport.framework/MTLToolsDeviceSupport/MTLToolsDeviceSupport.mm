id MakeMTLTextureDescriptorFromTexture(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v2 setPixelFormat:objc_msgSend(v1, "pixelFormat")];
  [v2 setWidth:{objc_msgSend(v1, "width")}];
  [v2 setHeight:{objc_msgSend(v1, "height")}];
  [v2 setResourceOptions:32];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 device];
    v4 = [v3 supportsFamily:1003];

    if (v4)
    {
      [v2 setSwizzle:{objc_msgSend(v1, "swizzle")}];
    }
  }

  return v2;
}

void sub_257A7E730(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t DYHarvesterInitMetadata(uint64_t result, __int16 a2, int a3)
{
  *result = 0x63617074757265;
  *(result + 8) = 2;
  *(result + 10) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0;
  return result;
}

uint64_t DYHarvesterGetMetadataSize(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 1)
    {
      return *(result + 12) + 16;
    }

    else
    {
      return *(result + 12);
    }
  }

  return result;
}

void *DYHarvesterGetMetadata(void *result)
{
  if (result)
  {
    if (*result != 0x63617074757265)
    {
      return 0;
    }
  }

  return result;
}

uint64_t DYHarvesterGetDataSize(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1 == 0x63617074757265)
  {
    v2 = *(a1 + 12);
    if (*(a1 + 8) == 1)
    {
      v2 += 16;
    }

    a2 -= v2;
  }

  return a2;
}

uint64_t DYHarvesterGetOffset(uint64_t result)
{
  if (result)
  {
    if (*result == 0x63617074757265)
    {
      if (*(result + 8) == 1)
      {
        return *(result + 12) + 16;
      }

      else
      {
        return *(result + 12);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DYHarvesterGetData(uint64_t result)
{
  if (result && *result == 0x63617074757265)
  {
    v1 = *(result + 12);
    if (*(result + 8) == 1)
    {
      v1 += 16;
    }

    result += v1;
  }

  return result;
}

uint64_t DYHarvesterGetTexturePlaneCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 10) == 1)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DYHarvesterGetTexturePlane(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 10) == 1)
    {
      if (*(result + 16) >= a2)
      {
        result += 48 * a2 + 24;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 DYHarvesterAddTexturePlane(uint64_t a1, __int128 *a2)
{
  v2 = a1 + 48 * *(a1 + 16);
  v4 = *a2;
  result = a2[1];
  *(v2 + 56) = a2[2];
  *(v2 + 24) = v4;
  *(v2 + 40) = result;
  ++*(a1 + 16);
  return result;
}

float64_t DYShaderProfilerTiming::Statistics::operator+=(float64x2_t *a1, float64x2_t *a2)
{
  *a1 = vaddq_f64(*a2, *a1);
  result = a2[1].f64[0] + a1[1].f64[0];
  a1[1].f64[0] = result;
  return result;
}

float64_t DYShaderProfilerTiming::Statistics::operator*=(float64x2_t *a1, double a2)
{
  *a1 = vmulq_n_f64(*a1, a2);
  result = a1[1].f64[0] * a2;
  a1[1].f64[0] = result;
  return result;
}

double DYShaderProfilerTiming::Statistics::operator+(double *a1, double *a2)
{
  result = *a1 + *a2;
  v3 = a1[1] + a2[1];
  v4 = a1[2] + a2[2];
  return result;
}

double DYShaderProfilerTiming::Statistics::operator*(double *a1, double a2)
{
  v2 = a1[1] * a2;
  v3 = a1[2] * a2;
  return *a1 * a2;
}

DYShaderProfilerTiming *DYShaderProfilerTiming::SetCycle(DYShaderProfilerTiming *this, double a2, double a3, double a4)
{
  this->_cycle.average = a2;
  this->_cycle.min = a3;
  this->_cycle.max = a4;
  return this;
}

float64x2_t DYShaderProfilerTiming::UpdateDependantVariables(DYShaderProfilerTiming *this, float64x2_t result, double a3)
{
  if (result.f64[0] != 0.0 && a3 != 0.0)
  {
    v3 = a3 / result.f64[0];
    v4 = v3 * this->_cycle.max;
    result = vmulq_n_f64(*&this->_cycle.average, v3);
    *&this->_time.average = result;
    this->_time.max = v4;
  }

  return result;
}

float64_t DYShaderProfilerTiming::operator+=(float64x2_t *a1, float64x2_t *a2)
{
  *a1 = vaddq_f64(*a2, *a1);
  result = a2[1].f64[0] + a1[1].f64[0];
  a1[1].f64[0] = result;
  return result;
}

void sub_257A81988(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_257A82048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__rehash<true>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

BOOL GPUTools::MTL::Utils::DYMTLCounter::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v15 = v7[3];
  v14 = v7 + 3;
  v13 = v15;
  if (v9 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v19 = v6[3];
  v18 = v6 + 3;
  v17 = v19;
  if (v12 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v10) == 0;
}

BOOL GPUTools::MTL::Utils::DYMTLCounterSet::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? v7 + 3 : v7[3];
  v14 = v12 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = v7[6];
  if (v15 != v6[6] || v7[103] != v6[103])
  {
    return 0;
  }

  if (!v15)
  {
    return 1;
  }

  v16 = v7 + 7;
  v17 = v6 + 7;
  v18 = v15 - 1;
  do
  {
    v19 = v18;
    result = GPUTools::MTL::Utils::DYMTLCounter::operator==(v16, v17);
    if (!result)
    {
      break;
    }

    v18 = v19 - 1;
    v17 += 6;
    v16 += 6;
  }

  while (v19);
  return result;
}

void GPUTools::MTL::Utils::MakeAliasResourceList(unint64_t *a1, const void **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = a2[1];
    v6 = 1;
    do
    {
      v7 = a1[v6];
      v8 = a2[2];
      if (v5 >= v8)
      {
        v9 = *a2;
        v10 = v5 - *a2;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v14);
        }

        *(8 * v11) = v7;
        v5 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v5 = v7;
        v5 += 8;
      }

      a2[1] = v5;
    }

    while (v2 > v6++);
  }
}

void GPUTools::MTL::Utils::EnumerateValidAttachmentsForType(void *a1, char a2, void *a3)
{
  v5 = a3;
  v8 = 0;
  if (a2)
  {
    v6 = 0;
    v7 = a1 + 2;
    while (1)
    {
      if (*v7)
      {
        v5[2](v5, v7, 1, v6, &v8);
        if (v8)
        {
          break;
        }
      }

      ++v6;
      v7 += 18;
      if (v6 == 8)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if ((a2 & 2) != 0 && a1[146])
    {
      v5[2](v5, a1 + 146, 2, 0, &v8);
      if (a2 & 4) == 0 || (v8)
      {
        goto LABEL_14;
      }
    }

    else if ((a2 & 4) == 0)
    {
      goto LABEL_14;
    }

    if (a1[164])
    {
      v5[2](v5, a1 + 164, 4, 0, &v8);
    }
  }

LABEL_14:
}

void **GPUTools::MTL::Utils::MakeDYMTLRenderPassDescriptor(uint64_t a1, void *a2)
{
  v4 = *a1;
  bzero(__src, 0x63BuLL);
  for (i = 0; i != 72; i += 9)
  {
    v6 = &__src[i];
    v6[3] = 0uLL;
    v6[4] = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    *(v6 + 10) = 0;
    *(v6 + 11) = 1;
    v6[6] = 0uLL;
    v6[7] = 0uLL;
    *(v6 + 16) = 0x3FF0000000000000;
    *(v6 + 18) = 0;
    *(v6 + 19) = 0;
  }

  memset(&__src[73], 0, 72);
  *(&__src[77] + 1) = 1;
  memset(&__src[78], 0, 32);
  *&__src[80] = 0x3FF0000000000000;
  memset(&__src[81], 0, 88);
  *(&__src[86] + 1) = 1;
  memset(&__src[87], 0, 32);
  *&__src[89] = 0x3FF0000000000000;
  __src[90] = 0u;
  memcpy(a2, __src, 0x63BuLL);
  *a2 = *(a1 + 8);
  v26 = (a1 + 24);
  for (j = *(a1 + 16); j != -1; ++v26)
  {
    GPUTools::MTL::Utils::MakeDYMTLRenderPassAttachmentDescriptor(&v26, &a2[18 * j + 2], v4);
    j = *v26;
  }

  GPUTools::MTL::Utils::MakeDYMTLRenderPassAttachmentDescriptor(&v26, (a2 + 146), v4);
  if (v4 <= 4)
  {
    result = GPUTools::MTL::Utils::MakeDYMTLRenderPassAttachmentDescriptor(&v26, (a2 + 164), v4);
LABEL_27:
    v20 = 0;
    v21 = 198;
    goto LABEL_28;
  }

  v8 = *v26++;
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  a2[162] = v9;
  result = GPUTools::MTL::Utils::MakeDYMTLRenderPassAttachmentDescriptor(&v26, (a2 + 164), v4);
  if (v4 < 7)
  {
    goto LABEL_27;
  }

  v11 = v26;
  v12 = *v26++;
  v13 = v12 == -1 ? 0 : v12;
  a2[1] = v13;
  if (v4 < 0xD)
  {
    goto LABEL_27;
  }

  a2[182] = v11[1];
  a2[183] = v11[2];
  a2[184] = v11[3];
  a2[185] = v11[4];
  a2[186] = v11[5];
  a2[187] = v11[6];
  a2[188] = v11[7];
  a2[198] = 0;
  if (v4 == 13)
  {
    return result;
  }

  v14 = v11 + 9;
  v26 = v11 + 9;
  v15 = v11[8];
  if (v15)
  {
    a2[198] = v15;
    v16 = a2 + 381;
    do
    {
      *(v16 - 1) = *v14;
      v17 = v14 + 2;
      *v16 = *(v14 + 2);
      v16 += 2;
      v14 += 2;
      --v15;
    }

    while (v15);
    v26 = v17;
    v14 = v17;
  }

  if (v4 >= 0x14)
  {
    v18 = *v14;
    v26 = v14 + 1;
    v19 = v18 == -1 ? 0 : v18;
    a2[181] = v19;
    if (v4 >= 0x18)
    {
      v26 = v14 + 2;
      *(a2 + 1592) = v14[1] != 0;
      if (v4 >= 0x21)
      {
        v26 = v14 + 3;
        v20 = v14[2];
        v21 = 189;
LABEL_28:
        a2[v21] = v20;
      }
    }
  }

  if ((v4 & 0xFFFFFFFE) == 0x22)
  {
    v22 = v26 - 3;
    do
    {
      v23 = v22[3];
      v22 += 4;
    }

    while (v23 != -1);
    v26 = v22;
  }

  if (v4 >= 0x27)
  {
    v24 = v26;
    *(a2 + 1593) = *v26 != 0;
    if (v4 >= 0x43)
    {
      *(a2 + 1594) = v24[1] != 0;
    }
  }

  return result;
}

void **GPUTools::MTL::Utils::MakeDYMTLRenderPassAttachmentDescriptor(void **result, uint64_t a2, unsigned int a3)
{
  v3 = *result;
  *a2 = **result;
  *(a2 + 8) = v3[1];
  *(a2 + 16) = v3[2];
  v4 = v3[3];
  *result = v3 + 3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3[4];
  *(a2 + 40) = v3[5];
  *(a2 + 48) = v3[6];
  *(a2 + 56) = v3[7];
  *(a2 + 64) = *(v3 + 4);
  if (a3 < 0x13)
  {
    v5 = v3 + 10;
  }

  else
  {
    v5 = v3 + 11;
    *(a2 + 80) = v3[10];
  }

  v6 = *v5;
  *result = v5 + 1;
  *(a2 + 88) = v6;
  v7 = *(*result)++;
  *(a2 + 96) = v7;
  v8 = *(*result)++;
  *(a2 + 104) = v8;
  v9 = *(*result)++;
  *(a2 + 112) = v9;
  if (a3 >= 0x27)
  {
    v10 = *(*result)++;
    *(a2 + 120) = v10 != 0;
  }

  return result;
}

double GPUTools::MTL::Utils::MakeDYMTLRenderPipelineDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 1560);
  v5 = *a1;
  bzero(&v34, 0x617uLL);
  bzero(&v36[192], 0x250uLL);
  for (i = 0; i != 72; i += 9)
  {
    v7 = &v34 + i * 8;
    *(v7 + 197) = 1;
    *(v7 + 99) = 0uLL;
    *(v7 + 200) = 1;
    *&v36[i + 198] = 0uLL;
    *&v36[i + 200] = xmmword_257AB6FB0;
    v7[1640] = 0;
  }

  memset(&v36[266], 0, 25);
  bzero(&v36[270], 0x211uLL);
  memset(&v36[337], 0, 56);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v34;
  *(a2 + 16) = v35;
  memcpy((a2 + 24), v36, 0xAC0uLL);
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  if (v5 >= 0x1A)
  {
    v8 = (a1 + 32);
    v9 = *(a1 + 24);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = (a1 + 24);
    v9 = 31;
  }

  v10 = (a2 + 64);
  v11 = v8;
  do
  {
    *(v10 - 1) = *v11;
    *(v10 - 2) = *(v11 + 1);
    v8 = v11 + 6;
    *v10 = *(v11 + 2);
    v10 += 3;
    v11 += 6;
    --v9;
  }

  while (v9);
  if (v5 >= 0x1A)
  {
LABEL_12:
    v13 = *v8;
    v8 += 2;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v12 = 31;
LABEL_13:
  v14 = (a2 + 808);
  do
  {
    v15 = *v8;
    *(v14 - 2) = *(v8 + 1);
    v16 = v8 + 6;
    *(v14 - 1) = *(v8 + 2);
    *v14 = v15;
    v14 += 3;
    v8 += 6;
    --v12;
  }

  while (v12);
  v8 = v16;
LABEL_16:
  *(a2 + 1536) = *v8;
  *(a2 + 1544) = *(v8 + 1);
  *(a2 + 1552) = v8[4];
  *(a2 + 1556) = v8[6] != 0;
  *(a2 + 1557) = v8[8] != 0;
  *(a2 + 1558) = v8[10] != 0;
  *v4 = *(v8 + 3);
  v17 = v8[16];
  v18 = (v8 + 18);
  if (v17)
  {
    v19 = 0;
    v20 = 72 * v17;
    do
    {
      v21 = a2 + v19;
      *(v21 + 1640) = *&v18[v19] != 0;
      *(a2 + v19 + 1576) = *&v18[v19 + 8];
      *(v21 + 1592) = *&v18[v19 + 24];
      *(v21 + 1608) = *&v18[v19 + 40];
      *(v21 + 1624) = *&v18[v19 + 56];
      v19 += 72;
    }

    while (v20 != v19);
    v18 += v19;
  }

  v22 = strlen(v18);
  MEMORY[0x259C6C110](a2, v18);
  if (v5 <= 6 || (v23 = &v18[v22 & 0xFFFFFFFFFFFFFFF8], *(a2 + 2152) = *(v23 + 1), v5 <= 8))
  {
    *(a2 + 2160) = xmmword_257AB6FC0;
    *(a2 + 2176) = 0;
    *(a2 + 2184) = 0;
    *(a2 + 2192) = xmmword_257AB6FD0;
    *(a2 + 2208) = 1;
    goto LABEL_26;
  }

  *(a2 + 2160) = *(v23 + 1);
  *(a2 + 2176) = *(v23 + 8) != 0;
  v4[39] = *(v23 + 40);
  v24 = *(v23 + 56);
  v4[40] = v24;
  if (v5 <= 0x11)
  {
LABEL_26:
    *&v24 = 0;
    *(a2 + 2680) = 0u;
    *(a2 + 2696) = 0u;
    *(a2 + 2648) = 0u;
    *(a2 + 2664) = 0u;
    *(a2 + 2616) = 0u;
    *(a2 + 2632) = 0u;
    *(a2 + 2584) = 0u;
    *(a2 + 2600) = 0u;
    *(a2 + 2552) = 0u;
    *(a2 + 2568) = 0u;
    *(a2 + 2520) = 0u;
    *(a2 + 2536) = 0u;
    *(a2 + 2488) = 0u;
    *(a2 + 2504) = 0u;
    *(a2 + 2456) = 0u;
    *(a2 + 2472) = 0u;
    *(a2 + 2424) = 0u;
    *(a2 + 2440) = 0u;
    *(a2 + 2392) = 0u;
    *(a2 + 2408) = 0u;
    *(a2 + 2360) = 0u;
    *(a2 + 2376) = 0u;
    *(a2 + 2328) = 0u;
    *(a2 + 2344) = 0u;
    *(a2 + 2296) = 0u;
    *(a2 + 2312) = 0u;
    *(a2 + 2264) = 0u;
    *(a2 + 2280) = 0u;
    *(a2 + 2232) = 0u;
    *(a2 + 2248) = 0u;
    *(a2 + 2216) = 0u;
LABEL_27:
    *(a2 + 2728) = -1;
    return *&v24;
  }

  if (v5 >= 0x1A)
  {
    v25 = v23 + 80;
    LODWORD(v26) = *(v23 + 18);
    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v25 = v23 + 72;
    LODWORD(v26) = 31;
  }

  v27 = (a2 + 2216);
  v26 = v26;
  do
  {
    v28 = *v25;
    v25 += 8;
    *v27++ = v28;
    --v26;
  }

  while (v26);
  if (v5 >= 0x1A)
  {
LABEL_34:
    v30 = *v25;
    v25 += 8;
    LODWORD(v29) = v30;
    if (!v30)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  LODWORD(v29) = 31;
LABEL_35:
  v31 = (a2 + 2464);
  v29 = v29;
  do
  {
    v32 = *v25;
    v25 += 8;
    *v31++ = v32;
    --v29;
  }

  while (v29);
  if (v5 < 0x17)
  {
    goto LABEL_27;
  }

LABEL_38:
  *(a2 + 2712) = *v25 == 0;
  if (v5 <= 0x1F)
  {
    goto LABEL_27;
  }

  v24 = *(v25 + 8);
  *(a2 + 2720) = v24;
  if (v5 >= 0x27)
  {
    *(a2 + 2736) = *(v25 + 4);
    *(a2 + 2744) = *(v25 + 5);
    *(a2 + 2752) = *(v25 + 6);
    *(a2 + 2760) = *(v25 + 7);
    *&v24 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*(v25 + 4)), vceqzq_s64(*(v25 + 5))), vuzp1q_s32(vceqzq_s64(*(v25 + 6)), vceqzq_s64(*(v25 + 7)))))), 0x101010101010101);
    *(a2 + 2768) = v24;
  }

  return *&v24;
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLTileRenderPipelineDescriptor(char *__s, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = __s + 8;
  v4 = *__s;
  v5 = 0uLL;
  memset(&v18[7], 0, 248);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v5 = 0uLL;
  }

  *(a2 + 89) = v5;
  *(a2 + 64) = v5;
  *(a2 + 80) = v5;
  *(a2 + 32) = v5;
  *(a2 + 48) = v5;
  *a2 = v5;
  *(a2 + 16) = v5;
  *(a2 + 233) = *&v18[128];
  *(a2 + 249) = *&v18[144];
  *(a2 + 169) = *&v18[64];
  *(a2 + 185) = *&v18[80];
  *(a2 + 201) = *&v18[96];
  *(a2 + 217) = *&v18[112];
  *(a2 + 105) = *v18;
  *(a2 + 121) = *&v18[16];
  *(a2 + 137) = *&v18[32];
  *(a2 + 153) = *&v18[48];
  *(a2 + 297) = *&v18[192];
  *(a2 + 313) = *&v18[208];
  *(a2 + 329) = *&v18[224];
  *(a2 + 344) = *&v18[239];
  *(a2 + 265) = *&v18[160];
  *(a2 + 281) = *&v18[176];
  v6 = &v3[strlen(v3) & 0xFFFFFFFFFFFFFFF8];
  result = MEMORY[0x259C6C110](a2, v3);
  *(a2 + 24) = *(v6 + 1);
  *(a2 + 32) = *(v6 + 2);
  v8 = (v6 + 32);
  v9 = *(v6 + 6);
  if (v9)
  {
    v10 = (a2 + 40);
    do
    {
      v11 = *v8++;
      *v10++ = v11;
      --v9;
    }

    while (v9);
  }

  v12 = v8 + 1;
  *(a2 + 104) = *v8 != 0;
  if (v4 <= 0x11)
  {
    *(a2 + 352) = 0;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 112) = 0u;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v4 < 0x1A)
  {
    LODWORD(v13) = 31;
    goto LABEL_12;
  }

  LODWORD(v13) = *(v8 + 2);
  if (v13)
  {
    v12 = v8 + 2;
LABEL_12:
    v15 = (a2 + 112);
    v13 = v13;
    do
    {
      v16 = *v12++;
      *v15++ = v16;
      --v13;
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLDeviceDescriptor(int *a1, uint64_t a2)
{
  v4 = *a1;
  *a2 = 0;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  v5 = *(a2 + 160);
  v6 = 0uLL;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a2 + 101) = 0;
  if (v5)
  {
    *(a2 + 168) = v5;
    operator delete(v5);
    v6 = 0uLL;
  }

  *(a2 + 240) = v6;
  *(a2 + 256) = v6;
  *(a2 + 208) = v6;
  *(a2 + 224) = v6;
  *(a2 + 176) = v6;
  *(a2 + 192) = v6;
  *(a2 + 160) = v6;
  *a2 = v4;
  *(a2 + 112) = *(a1 + 1);
  v7 = a1 + (strlen(a1 + 16) & 0xFFFFFFFFFFFFFFF8) + 16;
  result = MEMORY[0x259C6C110](a2 + 8, a1 + 4);
  *(a2 + 120) = *(v7 + 8);
  *(a2 + 128) = *(v7 + 16);
  *(a2 + 136) = *(v7 + 24);
  v9 = v7 + 40;
  *(a2 + 104) = *(v7 + 32);
  if (!*(a2 + 112))
  {
    v10 = (v9 + (strlen((v7 + 40)) & 0xFFFFFFFFFFFFFFF8) + 8);
    MEMORY[0x259C6C110](a2 + 32, v7 + 40);
    v11 = &v10[(strlen(v10) & 0xFFFFFFFFFFFFFFF8) + 8];
    MEMORY[0x259C6C110](a2 + 56, v10);
    v12 = &v11[strlen(v11) & 0xFFFFFFFFFFFFFFF8];
    result = MEMORY[0x259C6C110](a2 + 80, v11);
    *(a2 + 105) = v12[8];
    v9 = (v12 + 24);
    *(a2 + 106) = v12[16];
  }

  v13 = *a2;
  if (*a2 < 0xCu || (*(a2 + 144) = *v9, *(a2 + 152) = *(v9 + 8), v13 <= 0xE))
  {
    *&v17 = -1;
    *(&v17 + 1) = -1;
    *(a2 + 248) = v17;
    *(a2 + 232) = v17;
    *(a2 + 216) = v17;
    *(a2 + 200) = v17;
    *(a2 + 184) = v17;
  }

  else
  {
    *(a2 + 107) = *(v9 + 16);
    *&v14 = -1;
    *(&v14 + 1) = -1;
    *(a2 + 184) = v14;
    *(a2 + 200) = v14;
    *(a2 + 216) = v14;
    *(a2 + 232) = v14;
    *(a2 + 248) = v14;
    if (v13 >= 0x19)
    {
      v15 = *(v9 + 24);
      *(a2 + 184) = v15;
      if (v15 == -1)
      {
        v16 = (v9 + 32);
      }

      else
      {
        *(a2 + 192) = *(v9 + 32);
        *(a2 + 200) = *(v9 + 40);
        *(a2 + 208) = *(v9 + 48);
        *(a2 + 216) = *(v9 + 56);
        *(a2 + 224) = *(v9 + 64);
        *(a2 + 232) = *(v9 + 72);
        *(a2 + 240) = *(v9 + 80);
        *(a2 + 248) = *(v9 + 88);
        v16 = (v9 + 104);
        *(a2 + 256) = *(v9 + 96);
      }

      if (v13 >= 0x1C)
      {
        *(a2 + 264) = *v16;
        if (v13 != 28)
        {
          *(a2 + 108) = v16[1] != 0;
        }
      }
    }
  }

  return result;
}

void *GPUTools::MTL::Utils::MakeDYMTLComputePipelineDescriptor(uint64_t a1, char *a2)
{
  v4 = *a1;
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }

  v5 = a2 + 1544;
  bzero(a2, 0x702uLL);
  *(a2 + 3) = *(a1 + 8);
  v6 = a1 + 24;
  a2[1792] = *(a1 + 16) != 0;
  v7 = strlen((a1 + 24));
  result = MEMORY[0x259C6C110](a2, v6);
  if (v4 < 0xB)
  {
    goto LABEL_21;
  }

  v9 = v6 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v10 = (v9 + 8);
  v11 = *(v9 + 8);
  if (v11 == -1)
  {
    v10 = v9;
    goto LABEL_18;
  }

  if (v4 >= 0x1A)
  {
    v10 = (v9 + 16);
    v12 = v11;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 31;
  }

  v13 = &v23[1];
  v14 = v10;
  do
  {
    v13[-1] = vextq_s8(*v14, *v14, 8uLL);
    v10 = (v14 + 24);
    v13->i64[0] = v14[1].i64[0];
    v13 = (v13 + 24);
    v14 = (v14 + 24);
    --v12;
  }

  while (v12);
  if (v4 < 0x1A)
  {
    v15 = 31;
    goto LABEL_14;
  }

LABEL_13:
  v16 = v10->i32[0];
  v10 = (v10 + 8);
  v15 = v16;
  if (v16)
  {
LABEL_14:
    v17 = &v23[47] + 1;
    do
    {
      v18 = v10->i64[0];
      *(v17 - 2) = v10->i64[1];
      v19 = (v10 + 24);
      *(v17 - 1) = v10[1].i64[0];
      *v17 = v18;
      v17 += 3;
      v10 = (v10 + 24);
      --v15;
    }

    while (v15);
    v10 = v19;
  }

  v23[93] = *v10;
  result = memcpy(a2 + 40, v23, 0x5E0uLL);
LABEL_18:
  if (v4 <= 0x11)
  {
LABEL_21:
    *(a2 + 223) = 0;
    *(a2 + 1752) = 0u;
    *(a2 + 1768) = 0u;
    *(a2 + 1720) = 0u;
    *(a2 + 1736) = 0u;
    *(a2 + 1688) = 0u;
    *(a2 + 1704) = 0u;
    *(a2 + 1656) = 0u;
    *(a2 + 1672) = 0u;
    *(a2 + 1624) = 0u;
    *(a2 + 1640) = 0u;
    *(a2 + 1592) = 0u;
    *(a2 + 1608) = 0u;
    *(a2 + 1560) = 0u;
    *(a2 + 1576) = 0u;
    *v5 = 0u;
    return result;
  }

  if (v4 >= 0x1A)
  {
    v20 = (v10 + 24);
    LODWORD(v21) = v10[1].i32[0];
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = v10 + 1;
    LODWORD(v21) = 31;
  }

  v21 = v21;
  do
  {
    v22 = v20->i64[0];
    v20 = (v20 + 8);
    *v5 = v22;
    v5 = (v5 + 8);
    --v21;
  }

  while (v21);
LABEL_26:
  if (v4 >= 0x1B)
  {
    a2[1793] = v20->i32[0] == 0;
    if (v4 >= 0x25)
    {
      *(a2 + 4) = v20->i64[1];
    }
  }

  return result;
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLMotionEstimationPipelineDescriptor(uint64_t result, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  *a2 = *(result + 8);
  a2[1] = *(result + 16);
  return result;
}

void GPUTools::MTL::Utils::MakeDYMTLDepthStencilDescriptor(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  if (v4)
  {
    MEMORY[0x259C6C150](v4, 0x1000C400A747E1ELL);
  }

  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  if (v5)
  {
    MEMORY[0x259C6C150](v5, 0x1000C400A747E1ELL);
  }

  *(a2 + 24) = *(a1 + 8);
  *(a2 + 48) = *(a1 + 16) != 0;
  strlen((a1 + 24));
  MEMORY[0x259C6C110](a2, a1 + 24);
  operator new();
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLSamplerDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *(a2 + 100) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0u;
  v5 = (a2 + 136);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 24) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 40);
  *(a2 + 72) = *(a1 + 56);
  *(a2 + 96) = *(a1 + 64) != 0;
  *(a2 + 88) = *(a1 + 72);
  v6 = a1 + 88;
  *(a2 + 92) = *(a1 + 80);
  v7 = strlen((a1 + 88));
  result = MEMORY[0x259C6C110](a2, v6);
  if (v4 <= 1)
  {
    *(a2 + 100) = -1;
LABEL_17:
    *(a2 + 104) = 0;
    goto LABEL_18;
  }

  v9 = v6 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  if (v10 == -1)
  {
    v10 = 0;
  }

  *(a2 + 100) = v10;
  if (v4 <= 7)
  {
    goto LABEL_17;
  }

  *(a2 + 104) = *(v9 + 16);
  if (v4 <= 9)
  {
LABEL_18:
    *(a2 + 80) = 0;
LABEL_19:
    *(a2 + 112) = 0;
LABEL_20:
    *v5 = 0;
    return result;
  }

  LODWORD(v11) = *(v9 + 24);
  if (v11 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v11;
  }

  *(a2 + 80) = v11;
  if (v4 <= 0x10)
  {
    goto LABEL_19;
  }

  *(a2 + 112) = (*(v9 + 32) - 1) < 0xFFFFFFFE;
  if (v4 < 0x16)
  {
    goto LABEL_20;
  }

  *(a2 + 120) = *(v9 + 40);
  *(a2 + 128) = *(v9 + 48) != 0;
  if (v4 <= 0x1B)
  {
    goto LABEL_20;
  }

  *v5 = *(v9 + 56);
  if (v4 >= 0x27)
  {
    *(a2 + 144) = *(v9 + 64);
    *(a2 + 152) = *(v9 + 72);
    *(a2 + 156) = *(v9 + 80);
    *(a2 + 160) = *(v9 + 88);
    *(a2 + 164) = *(v9 + 96);
    *(a2 + 168) = *(v9 + 104) != 0;
  }

  return result;
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLTextureDescriptor(uint64_t result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 104) = xmmword_257AB6FE0;
  *(a2 + 120) = xmmword_257AB6FF0;
  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 24);
  *(a2 + 24) = *(result + 32);
  *(a2 + 32) = *(result + 40);
  *(a2 + 40) = *(result + 48);
  *(a2 + 48) = *(result + 56);
  *(a2 + 56) = *(result + 64);
  v3 = 72;
  if (v2 < 3)
  {
    v3 = 80;
  }

  v4 = result + v3;
  *(a2 + 141) = *v4 != 0;
  *(a2 + 140) = *(v4 + 8) != 0;
  if (!v2)
  {
LABEL_13:
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    return result;
  }

  *(a2 + 72) = *(v4 + 16);
  if (v2 <= 3)
  {
    if (v2 == 3)
    {
      *(a2 + 80) = *(v4 + 24);
      return result;
    }

    goto LABEL_13;
  }

  *(a2 + 64) = *(v4 + 24);
  *(a2 + 80) = *(v4 + 32);
  if (v2 >= 0x15)
  {
    v5 = *(v4 + 56);
    *(a2 + 142) = *(v4 + 48) != 0;
    *(a2 + 96) = v5;
    if (v2 != 21)
    {
      *(a2 + 144) = *(v4 + 64);
      *(a2 + 152) = *(v4 + 72) != 0;
      if (v2 >= 0x23)
      {
        v6 = *(v4 + 96);
        *(a2 + 104) = *(v4 + 80);
        *(a2 + 120) = v6;
        if (v2 >= 0x27)
        {
          *(a2 + 136) = *(v4 + 112);
        }
      }
    }
  }

  return result;
}

void GPUTools::MTL::Utils::MakeDYMTLFunctionConstantValues(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    do
    {
      v5 = (v3 + 1);
      __p = 0uLL;
      v18 = 0;
      v14 = 0;
      v15 = v2;
      v6 = strlen(v5);
      MEMORY[0x259C6C110](&__p, v5);
      v7 = &v5[v6 & 0xFFFFFFFFFFFFFFF8];
      v8 = *(v7 + 1);
      v16 = *(v7 + 4) != 0;
      v9 = v18;
      v17 = v8;
      v18 = 0;

      v3 = v7 + 32;
      v10 = *(v7 + 3);
      if (v10)
      {
        v11 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:v10];
        v3 = (v3 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8));
        v12 = v18;
        v18 = v11;
      }

      std::vector<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::push_back[abi:ne200100](a2, &__p);

      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p);
      }

      v2 = *v3;
    }

    while (*v3 != -1);
  }
}

void sub_257A84E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::MTL::Utils::DYMTLFunctionConstantValue::~DYMTLFunctionConstantValue(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::__emplace_back_slow_path<GPUTools::MTL::Utils::DYMTLFunctionConstantValue const&>(a1, a2);
  }

  else
  {
    std::vector<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::__construct_one_at_end[abi:ne200100]<GPUTools::MTL::Utils::DYMTLFunctionConstantValue const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void GPUTools::MTL::Utils::MakeDYMTLCompileOptions(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v10 = a1 + 2;
  v4 = *a2;
  *a2 = 0;

  *(a2 + 8) = 0;
  *(a2 + 16) = 0x10000;
  v6 = GPUTools::ReadDynamicBufferObject(&v10, v5);
  v7 = *a2;
  *a2 = v6;

  v8 = v10;
  *(a2 + 8) = *v10 != 0;
  *(a2 + 9) = v8[2] != 0;
  if (v3 > 0xF)
  {
    v9 = v8 + 4;
  }

  else
  {
    if (v3 < 6)
    {
      return;
    }

    v9 = v8 + 10;
  }

  *(a2 + 16) = *v9;
}

id GPUTools::ReadDynamicBufferObject(GPUTools *this, const void **a2)
{
  *this += 8 + ((**this + 7) & 0xFFFFFFFFFFFFFFF8);
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
  v3 = MEMORY[0x277D0AFD8];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v13 = 0;
  v11 = [v3 unarchivedObjectOfClasses:v10 fromData:v2 error:&v13];

  return v11;
}

__n128 GPUTools::MTL::Utils::MakeDYMTLHeapDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  result = *(a1 + 8);
  *a2 = result;
  *(a2 + 16) = *(a1 + 24);
  if (v2 >= 0x1D)
  {
    *(a2 + 24) = *(a1 + 32);
    if (v2 >= 0x1F)
    {
      *(a2 + 32) = *(a1 + 40) != 0;
      result = *(a1 + 48);
      *(a2 + 40) = result;
    }
  }

  return result;
}

void GPUTools::MTL::Utils::MakeDYMTLPostVertexDump(uint64_t a1, void *a2, uint64_t *a3)
{
  *a2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = (a1 + 24);
    do
    {
      v17 = 0uLL;
      v18 = 0;
      __p[1] = 0;
      v21 = 0;
      __p[0] = 0;
      v7 = strlen(v6);
      MEMORY[0x259C6C110](&v17, v6);
      v8 = &v6[v7 & 0xFFFFFFFFFFFFFFF8];
      v9 = v8 + 16;
      v19 = *(v8 + 1);
      v10 = strlen(v8 + 16);
      MEMORY[0x259C6C110](__p, v9);
      v11 = &v9[v10 & 0xFFFFFFFFFFFFFFF8];
      v12 = *(v11 + 1);
      v22 = v12;
      if (v12 == 8)
      {
        v13 = 24;
      }

      else
      {
        if (v12 != 12)
        {
          v14 = 0;
          goto LABEL_9;
        }

        v13 = 28;
      }

      v14 = *a2 == v13;
LABEL_9:
      if (v21 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if (*v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = !v14;
      }

      if (!v16)
      {
        MEMORY[0x259C6C110](&v17, "air.position");
        MEMORY[0x259C6C110](__p, "return");
        v19 = 6;
      }

      std::vector<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::push_back[abi:ne200100](a3, &v17);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17);
      }

      v6 = v11 + 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t std::vector<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::__emplace_back_slow_path<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput const&>(a1, a2);
  }

  else
  {
    std::vector<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::__construct_one_at_end[abi:ne200100]<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput const&>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput::~DYMTLPostVertexDumpOutput(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void GPUTools::MTL::Utils::MakeDYMTLPostMeshDumpOutput(uint64_t a1, void *a2, uint64_t *a3)
{
  *a2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 24);
    do
    {
      v16 = 0uLL;
      v17 = 0;
      __p[1] = 0;
      v20 = 0;
      __p[0] = 0;
      v6 = strlen(v5);
      MEMORY[0x259C6C110](&v16, v5);
      v7 = &v5[v6 & 0xFFFFFFFFFFFFFFF8];
      v8 = v7 + 16;
      v18 = *(v7 + 1);
      v9 = strlen(v7 + 16);
      MEMORY[0x259C6C110](__p, v8);
      v10 = &v8[v9 & 0xFFFFFFFFFFFFFFF8];
      v21 = *(v10 + 1);
      if (v20 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (!*v11)
      {
        if (SHIBYTE(v17) < 0)
        {
          if (*(&v16 + 1) == 12)
          {
            v12 = v16;
LABEL_18:
            v13 = *v12;
            v14 = *(v12 + 2);
            if (v13 == 0x69736F702E726961 && v14 == 1852795252)
            {
              MEMORY[0x259C6C110](__p, "return");
            }
          }
        }

        else if (SHIBYTE(v17) == 12)
        {
          v12 = &v16;
          goto LABEL_18;
        }
      }

      std::vector<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::push_back[abi:ne200100](a3, &v16);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16);
      }

      v5 = v10 + 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLMutableBufferAncestorMaps(uint64_t result, uint64_t a2)
{
  v11 = *(result + 8);
  if (v11)
  {
    v2 = 0;
    v3 = (result + 16);
    do
    {
      v13 = v2;
      memset(v19, 0, sizeof(v19));
      v20 = 1065353216;
      v5 = *v3++;
      v4 = v5;
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = *v3;
          v8 = v3[1];
          v3 += 2;
          v18 = v7;
          v15 = 0u;
          v16 = 0u;
          for (i = 1065353216; v8; --v8)
          {
            v14 = *v3;
            v9 = v3[1];
            v21 = &v14;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v15, &v14)[3] = v9;
            v3 += 2;
          }

          v21 = &v18;
          v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v19, &v18);
          if (v10 + 3 != &v15)
          {
            *(v10 + 14) = i;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long long>,void *> *>>(v10 + 3, v16, 0);
          }

          std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::~__hash_table(&v15);
          ++v6;
        }

        while (v6 != v4);
      }

      std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::push_back[abi:ne200100](a2, v19);
      result = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::~__hash_table(v19);
      v2 = v13 + 1;
    }

    while (v13 + 1 != v11);
  }

  return result;
}

void sub_257A855C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::__emplace_back_slow_path<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>(a1, a2);
  }

  else
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__hash_table(v3, a2) + 40;
  }

  *(a1 + 8) = result;
  return result;
}

void GPUTools::MTL::Utils::MakeDYMTLIndirectArgumentBufferInfos(uint64_t a1, uint64_t a2)
{
  v18 = *(a1 + 8);
  if (v18)
  {
    v2 = 0;
    v3 = (a1 + 16);
    do
    {
      __src = 0;
      v22 = 0;
      v23 = 0;
      v5 = *v3++;
      v4 = v5;
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = *v3;
          v8 = v3[2];
          v9 = *(v3 + 3);
          if (v6 >= v23)
          {
            v20 = *(v3 + 3);
            v10 = __src;
            v11 = v6 - __src;
            v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - __src) >> 3);
            v13 = v12 + 1;
            if (v12 + 1 > 0x666666666666666)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            if (0x999999999999999ALL * ((v23 - __src) >> 3) > v13)
            {
              v13 = 0x999999999999999ALL * ((v23 - __src) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v23 - __src) >> 3) >= 0x333333333333333)
            {
              v14 = 0x666666666666666;
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>(&__src, v14);
            }

            v15 = 40 * v12;
            *v15 = v7;
            *(v15 + 16) = v20;
            *(v15 + 32) = v8;
            v6 = 40 * v12 + 40;
            v16 = (v15 - v11);
            memcpy((v15 - v11), v10, v11);
            v17 = __src;
            __src = v16;
            v22 = v6;
            v23 = 0;
            if (v17)
            {
              operator delete(v17);
            }
          }

          else
          {
            *v6 = v7;
            *(v6 + 16) = v9;
            *(v6 + 32) = v8;
            v6 += 40;
          }

          v22 = v6;
          v3 += 5;
          --v4;
        }

        while (v4);
      }

      std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::push_back[abi:ne200100](a2, &__src);
      if (__src)
      {
        v22 = __src;
        operator delete(__src);
      }

      ++v2;
    }

    while (v2 != v18);
  }
}

void sub_257A857C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLIndirectCommandBufferDescriptor(uint64_t result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = *(result + 8);
  *(a2 + 9) = *(result + 16) != 0;
  *(a2 + 8) = *(result + 24) != 0;
  *(a2 + 16) = *(result + 32);
  *(a2 + 24) = *(result + 40);
  if (v2 >= 0x1B)
  {
    *(a2 + 48) = *(result + 48);
    *(a2 + 64) = *(result + 56);
  }

  return result;
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLCommandQueueDescriptor(uint64_t result, uint64_t a2)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *(result + 8);
  *(a2 + 8) = *(result + 16);
  *(a2 + 16) = *(result + 24) != 0;
  if (v2 >= 0x27)
  {
    *(a2 + 17) = *(result + 32) != 0;
  }

  return result;
}

uint64_t GPUTools::MTL::Utils::MakeDYMTLCounterSampleBufferDescriptor(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  GPUTools::MTL::Utils::DYMTLCounterSet::DYMTLCounterSet(v15);
  v22 = 0;
  v21 = 0u;
  __p = 0u;
  GPUTools::MTL::Utils::DYMTLCounterSampleBufferDescriptor::operator=(a2, v15);
  if (SBYTE7(v21) < 0)
  {
    operator delete(__p);
  }

  v4 = 96;
  do
  {
    v5 = &v15[v4];
    if (v19[v4 * 8] < 0)
    {
      operator delete(v5[4]);
    }

    if (*(v5 + 31) < 0)
    {
      operator delete(v5[1]);
    }

    v4 -= 6;
  }

  while (v4 * 8);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v6 = &v3[(strlen(v3) & 0xFFFFFFFFFFFFFFF8) + 8];
  MEMORY[0x259C6C110](a2, v3);
  v7 = &v6[strlen(v6) & 0xFFFFFFFFFFFFFFF8];
  MEMORY[0x259C6C110](a2 + 3, v6);
  a2[103] = *(v7 + 1);
  v8 = v7 + 24;
  v9 = *(v7 + 2);
  a2[6] = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a2 + 7;
    do
    {
      v12 = &v8[(strlen(v8) & 0xFFFFFFFFFFFFFFF8) + 8];
      MEMORY[0x259C6C110](v11, v8);
      v8 = &v12[(strlen(v12) & 0xFFFFFFFFFFFFFFF8) + 8];
      MEMORY[0x259C6C110](v11 + 3, v12);
      ++v10;
      v11 += 6;
    }

    while (v10 < *(a2 + 12));
  }

  v13 = &v8[strlen(v8) & 0xFFFFFFFFFFFFFFF8];
  result = MEMORY[0x259C6C110](a2 + 104, v8);
  a2[107] = *(v13 + 1);
  a2[108] = *(v13 + 2);
  return result;
}

uint64_t GPUTools::MTL::Utils::DYMTLCounterSampleBufferDescriptor::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = 0;
  v6 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v6;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 6);
  do
  {
    v7 = a1 + v5 * 16;
    if (*(a1 + v5 * 16 + 79) < 0)
    {
      operator delete(*(v7 + 56));
    }

    v8 = &a2[v5];
    v9 = *(&a2[v5 + 3] + 8);
    *(v7 + 72) = *(&a2[v5 + 4] + 1);
    *(v7 + 56) = v9;
    *(v8 + 79) = 0;
    *(v8 + 56) = 0;
    if (*(v7 + 103) < 0)
    {
      operator delete(*(v7 + 80));
    }

    v10 = &a2[v5];
    v11 = a2[v5 + 5];
    *(v7 + 96) = *&a2[v5 + 6];
    *(v7 + 80) = v11;
    *(v10 + 103) = 0;
    *(v10 + 80) = 0;
    v5 += 3;
  }

  while (v5 != 48);
  *(a1 + 824) = *(a2 + 103);
  v12 = (a1 + 832);
  if (*(a1 + 855) < 0)
  {
    operator delete(*v12);
  }

  v13 = a2[52];
  *(a1 + 848) = *(a2 + 106);
  *v12 = v13;
  *(a2 + 855) = 0;
  *(a2 + 832) = 0;
  *(a1 + 856) = *(a2 + 856);
  return a1;
}

void GPUTools::MTL::Utils::MakeDYMTLRasterizationRateMapDescriptor(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v17 = 0;
  v16 = 0u;
  *__p = 0u;
  memset(v15, 0, sizeof(v15));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  BYTE7(v15[0]) = 0;
  LOBYTE(__p[0]) = 0;
  *(a2 + 24) = *(v15 + 8);
  *(a2 + 40) = *(&v15[1] + 1);
  std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::__vdeallocate((a2 + 48));
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (SBYTE7(v15[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = &v3[strlen(v3) & 0xFFFFFFFFFFFFFFF8];
  MEMORY[0x259C6C110](a2, v3);
  *(a2 + 24) = *(v4 + 1);
  *(a2 + 32) = *(v4 + 2);
  *(a2 + 40) = *(v4 + 3);
  v5 = *(v4 + 4);
  std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::resize((a2 + 48), v5);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    do
    {
      v8 = (*(a2 + 48) + 56 * v6);
      v10 = *v7;
      v9 = v7[1];
      v11 = v7 + 3;
      v8[6] = v7[2];
      std::vector<float>::reserve(v8, v10);
      for (; v10; --v10)
      {
        v12 = *v11++;
        LODWORD(__p[0]) = v12;
        std::vector<float>::push_back[abi:ne200100](v8, __p);
      }

      std::vector<float>::reserve(v8 + 3, v9);
      for (; v9; --v9)
      {
        v13 = *v11++;
        LODWORD(__p[0]) = v13;
        std::vector<float>::push_back[abi:ne200100](v8 + 3, __p);
      }

      ++v6;
      v7 = v11;
    }

    while (v6 != v5);
  }
}

void std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 56;
      std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::destroy[abi:ne200100](a1, v3);
    }

    a1[1] = v7;
  }
}

void GPUTools::MTL::Utils::DYMTLFunctionConstantValue::~DYMTLFunctionConstantValue(id *this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

GPUTools::MTL::Utils::DYMTLCounterSet *GPUTools::MTL::Utils::DYMTLCounterSet::DYMTLCounterSet(GPUTools::MTL::Utils::DYMTLCounterSet *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, "");
  std::string::basic_string[abi:ne200100]<0>(v2 + 24, "");
  bzero(this + 48, 0x308uLL);
  return this;
}

void sub_257A85FB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id std::vector<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::__construct_one_at_end[abi:ne200100]<GPUTools::MTL::Utils::DYMTLFunctionConstantValue const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 24);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 24) = v6;
  result = *(a2 + 6);
  *(v4 + 48) = result;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::__emplace_back_slow_path<GPUTools::MTL::Utils::DYMTLFunctionConstantValue const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>>(a1, v6);
  }

  v7 = 56 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v11;
  *(v7 + 48) = *(a2 + 6);
  *&v20 = v10 + 56;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>,GPUTools::MTL::Utils::DYMTLFunctionConstantValue*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::~__split_buffer(&v18);
  return v17;
}

void sub_257A866A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::~__split_buffer(va);
  _Unwind_Resume(a1);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>,GPUTools::MTL::Utils::DYMTLFunctionConstantValue*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      v10 = *(v7 + 48);
      *(v7 + 48) = 0;
      *(a4 + 48) = v10;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>,GPUTools::MTL::Utils::DYMTLFunctionConstantValue*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>,GPUTools::MTL::Utils::DYMTLFunctionConstantValue*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>,GPUTools::MTL::Utils::DYMTLFunctionConstantValue*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>,GPUTools::MTL::Utils::DYMTLFunctionConstantValue*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::~__split_buffer(void **a1)
{
  std::__split_buffer<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<GPUTools::MTL::Utils::DYMTLFunctionConstantValue>::destroy[abi:ne200100](v4, i - 56);
  }
}

void std::vector<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::__construct_one_at_end[abi:ne200100]<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v6 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 32) = v6;
  }

  *(v4 + 56) = *(a2 + 7);
  *(a1 + 8) = v4 + 64;
}

void sub_257A86A7C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::__emplace_back_slow_path<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>>(a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v8;
  v19 = v8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
  }

  *(v8 + 24) = *(a2 + 3);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v10 = a2[2];
    *(v8 + 48) = *(a2 + 6);
    *(v8 + 32) = v10;
  }

  *(v8 + 56) = *(a2 + 7);
  *&v19 = v19 + 64;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>,GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::~__split_buffer(&v17);
  return v16;
}

void sub_257A86BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>,GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      *(a4 + 56) = *(v7 + 56);
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::destroy[abi:ne200100](a1, v5);
      v5 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>,GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>,GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>,GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>,GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 64;
      std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::~__split_buffer(void **a1)
{
  std::__split_buffer<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    std::allocator<GPUTools::MTL::Utils::DYMTLPostVertexDumpOutput>::destroy[abi:ne200100](v4, i - 64);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_257A87334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long long>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_multi<std::pair<unsigned long long const,unsigned long long> const&>();
  }
}

void sub_257A87428(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__rehash<false>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::vector<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::__emplace_back_slow_path<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__hash_table(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = *(a1 + 8);
  v8 = 40 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::~__split_buffer(&v13);
  return v12;
}

void sub_257A87AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>,std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>>::__hash_table(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::~__hash_table(v6);
      v6 += 40;
    }
  }
}

uint64_t std::__split_buffer<std::unordered_map<unsigned long long,std::unordered_map<unsigned long long,unsigned long long>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<GPUTools::MTL::Utils::DYMTLIndirectArgumentBufferInfo>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>>(a1, v9);
    }

    v16 = 0;
    v17 = 56 * v6;
    v11 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero((56 * v6), v11);
    v18 = 56 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (56 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>,GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::~__split_buffer(&v16);
  }
}

void sub_257A87F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>,GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      v8 = *(v7 + 48);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      a4[6] = v8;
      v7 += 56;
      a4 += 7;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>,GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>,GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>,GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>,GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::~__split_buffer(void **a1)
{
  std::__split_buffer<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<GPUTools::MTL::Utils::DYMTLRasterizationRateLayerDescriptor>::destroy[abi:ne200100](v4, i - 56);
  }
}

id DYGetMTLGuestAppClient()
{
  v1 = _guestAppClientMTL;
  if (!_guestAppClientMTL)
  {
    DYGetMTLGuestAppClient_cold_1();
  }

  return v1;
}

void DYMTLSetObjectRemappingBlock(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (g_interpose_api_once != -1)
  {
    DYMTLSetObjectRemappingBlock_cold_1();
  }

  DYSetBlockPointer();
  DYSetBlockPointer();
}

uint64_t init_interpose_api(void *a1)
{
  v1 = DYGetInterposeDylibHandle();
  if (!v1)
  {
    init_interpose_api();
LABEL_8:
    init_interpose_api();
  }

  v2 = v1;
  g_interpose_api = dlsym(v1, "gDYMTLObjectRemappingBlock");
  if (!g_interpose_api)
  {
    goto LABEL_8;
  }

  g_interpose_api = dlsym(v2, "gDYMTLObjectUnmappingBlock");
  if (!g_interpose_api)
  {
    init_interpose_api();
  }

  return dlclose(v2);
}

GPUTools::MTL::CaptureHelper *GPUTools::MTL::CaptureHelper::CaptureHelper(GPUTools::MTL::CaptureHelper *this)
{
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 3) = 850045863;
  *(this + 17) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  if (GPUTools::MTL::onceToken != -1)
  {
    GPUTools::MTL::CaptureHelper::CaptureHelper();
  }

  v2 = dispatch_semaphore_create(1);
  v3 = *(this + 17);
  *(this + 17) = v2;

  return this;
}

uint64_t ___ZN8GPUTools3MTL13CaptureHelperC2Ev_block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = GPUTools::MTL::_gPointerSemaphore;
  GPUTools::MTL::_gPointerSemaphore = v0;

  GPUTools::MTL::_gStrongPointersArray = [MEMORY[0x277CCAC18] strongObjectsPointerArray];

  return MEMORY[0x2821F96F8]();
}

void GPUTools::MTL::CaptureHelper::SaveString(GPUTools::MTL::CaptureHelper *this, const char *__s, uint64_t a3)
{
  v6 = strlen(__s) + 1;

  GPUTools::MTL::CaptureHelper::SaveClientMemory(this, __s, v6, a3, 0);
}

void GPUTools::MTL::CaptureHelper::SaveClientMemory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  pthread_mutex_lock((a1 + 24));
  operator new();
}

void sub_257A88838(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void GPUTools::MTL::CaptureHelper::SaveObject(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  dispatch_semaphore_wait(*(a1 + 136), 0xFFFFFFFFFFFFFFFFLL);
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10 != *a1)
  {
    *(a1 + 8) = v9;
    v10 = v9;
  }

  v11 = v10 - v9;
  if ((v10 - v9) > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = v10 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v9 = *a1;
  }

  *&v9[v11] = 82;
  v12 = [v7 textureType];
  v13 = *a1;
  v14 = *(a1 + 8) - *a1;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v13[v14 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v13 = *a1;
  }

  *&v13[v14] = v12;
  v15 = [v7 pixelFormat];
  v16 = *a1;
  v17 = *(a1 + 8) - *a1;
  if (v17 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v16[v17 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v16 = *a1;
  }

  *&v16[v17] = v15;
  v18 = [v7 width];
  v19 = *a1;
  v20 = *(a1 + 8) - *a1;
  if (v20 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v19[v20 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v19 = *a1;
  }

  *&v19[v20] = v18;
  v21 = [v7 height];
  v22 = *a1;
  v23 = *(a1 + 8) - *a1;
  if (v23 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v22[v23 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v22 = *a1;
  }

  *&v22[v23] = v21;
  v24 = [v7 depth];
  v25 = *a1;
  v26 = *(a1 + 8) - *a1;
  if (v26 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v25[v26 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v25 = *a1;
  }

  *&v25[v26] = v24;
  v27 = [v7 mipmapLevelCount];
  v28 = *a1;
  v29 = *(a1 + 8) - *a1;
  if (v29 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v28[v29 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v28 = *a1;
  }

  *&v28[v29] = v27;
  v30 = [v7 sampleCount];
  v31 = *a1;
  v32 = *(a1 + 8) - *a1;
  if (v32 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v31[v32 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v31 = *a1;
  }

  *&v31[v32] = v30;
  v33 = [v7 arrayLength];
  v34 = *a1;
  v35 = *(a1 + 8) - *a1;
  if (v35 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v34[v35 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v34 = *a1;
  }

  *&v34[v35] = v33;
  v36 = [v7 framebufferOnly];
  v37 = *a1;
  v38 = *(a1 + 8) - *a1;
  if (v38 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v37[v38 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v37 = *a1;
  }

  *&v37[v38] = v36;
  v39 = [v7 isDrawable];
  v40 = *a1;
  v41 = *(a1 + 8) - *a1;
  if (v41 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v40[v41 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v40 = *a1;
  }

  *&v40[v41] = v39;
  v42 = [v7 usage];
  v43 = *a1;
  v44 = *(a1 + 8) - *a1;
  if (v44 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v43[v44 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v43 = *a1;
  }

  *&v43[v44] = v42;
  v45 = [v7 rotation];
  v46 = *a1;
  v47 = *(a1 + 8) - *a1;
  if (v47 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v46[v47 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v46 = *a1;
  }

  *&v46[v47] = v45;
  v48 = [v7 storageMode];
  v49 = *a1;
  v50 = *(a1 + 8) - *a1;
  if (v50 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v49[v50 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v49 = *a1;
  }

  *&v49[v50] = v48;
  v51 = [v7 cpuCacheMode];
  v52 = *a1;
  v53 = *(a1 + 8) - *a1;
  if (v53 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v52[v53 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v52 = *a1;
  }

  *&v52[v53] = v51;
  if (objc_opt_respondsToSelector())
  {
    v54 = [v7 allowGPUOptimizedContents];
    v55 = *a1;
    v56 = *(a1 + 8) - *a1;
    if (v56 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v55[v56 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v55 = *a1;
    }

    *&v55[v56] = v54;
  }

  else
  {
    v57 = *a1;
    v58 = *(a1 + 8) - *a1;
    if (v58 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v57[v58 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v57 = *a1;
    }

    *&v57[v58] = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v59 = [v7 compressionMode];
    v60 = *a1;
    v61 = *(a1 + 8) - *a1;
    if (v61 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v60[v61 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v60 = *a1;
    }

    *&v60[v61] = v59;
  }

  else
  {
    v62 = *a1;
    v63 = *(a1 + 8) - *a1;
    if (v63 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v62[v63 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v62 = *a1;
    }

    *&v62[v63] = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v64 = [v7 resourceIndex];
    v65 = *a1;
    v66 = *(a1 + 8) - *a1;
    if (v66 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v65[v66 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v65 = *a1;
    }

    *&v65[v66] = v64;
    v71 = [v7 forceResourceIndex];
    v72 = *a1;
    v73 = *(a1 + 8) - *a1;
    if (v73 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v72[v73 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v72 = *a1;
    }

    *&v72[v73] = v71;
  }

  else
  {
    v67 = *a1;
    v68 = *(a1 + 8) - *a1;
    if (v68 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v67[v68 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v67 = *a1;
    }

    *&v67[v68] = -1;
    v69 = *a1;
    v70 = *(a1 + 8) - *a1;
    if (v70 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v69[v70 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v69 = *a1;
    }

    *&v69[v70] = -1;
  }

  if (objc_opt_respondsToSelector())
  {
    v74 = [v7 swizzle];
    v75 = *a1;
    v76 = *(a1 + 8) - *a1;
    if (v76 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v75[v76 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v75 = *a1;
    }

    v75[v76] = v74;
    v85 = [v7 swizzle];
    v86 = *a1;
    v87 = *(a1 + 8) - *a1;
    if (v87 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v86[v87 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v86 = *a1;
    }

    v86[v87] = BYTE1(v85);
    v88 = [v7 swizzle];
    v89 = *a1;
    v90 = *(a1 + 8) - *a1;
    if (v90 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v89[v90 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v89 = *a1;
    }

    v89[v90] = BYTE2(v88);
    v91 = [v7 swizzle];
    v92 = *a1;
    v93 = *(a1 + 8) - *a1;
    if (v93 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v92[v93 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v92 = *a1;
    }

    v92[v93] = HIBYTE(v91);
  }

  else
  {
    v77 = *a1;
    v78 = *(a1 + 8) - *a1;
    if (v78 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v77[v78 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v77 = *a1;
    }

    *&v77[v78] = 2;
    v79 = *a1;
    v80 = *(a1 + 8) - *a1;
    if (v80 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v79[v80 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v79 = *a1;
    }

    *&v79[v80] = 3;
    v81 = *a1;
    v82 = *(a1 + 8) - *a1;
    if (v82 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v81[v82 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v81 = *a1;
    }

    *&v81[v82] = 4;
    v83 = *a1;
    v84 = *(a1 + 8) - *a1;
    if (v84 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v83[v84 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v83 = *a1;
    }

    *&v83[v84] = 5;
  }

  GPUTools::MTL::CaptureHelper::SaveClientMemory(a1, *a1, *(a1 + 8) - *a1, a3, v8);
}

{
  v7 = a2;
  v8 = a4;
  dispatch_semaphore_wait(*(a1 + 136), 0xFFFFFFFFFFFFFFFFLL);
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10 != *a1)
  {
    *(a1 + 8) = v9;
    v10 = v9;
  }

  v11 = v10 - v9;
  if ((v10 - v9) > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = v10 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v9 = *a1;
  }

  *&v9[v11] = 82;
  v12 = [v7 vertexFunction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 originalObject];
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = *a1;
  v16 = *(a1 + 8) - *a1;
  if (v16 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v15[v16 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v15 = *a1;
  }

  *&v15[v16] = v14;

  v17 = [v7 fragmentFunction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 originalObject];
  }

  else
  {
    v18 = v17;
  }

  v19 = v18;

  v20 = *a1;
  v21 = *(a1 + 8) - *a1;
  if (v21 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v20[v21 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v20 = *a1;
  }

  *&v20[v21] = v19;

  v22 = [v7 vertexDescriptor];
  GPUTools::MTL::CaptureHelper::_SaveObject(a1, v22);

  if (objc_opt_respondsToSelector())
  {
    v23 = [v7 rasterSampleCount];
    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    if (v25 <= 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v23 = [v7 sampleCount];
    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    if (v25 <= 0xFFFFFFFFFFFFFFF7)
    {
LABEL_22:
      std::vector<unsigned char>::__append(a1, 8uLL);
      v24 = *a1;
      goto LABEL_24;
    }
  }

  *(a1 + 8) = &v24[v25 + 8];
LABEL_24:
  *&v24[v25] = v23;
  v26 = [v7 sampleMask];
  v27 = *a1;
  v28 = *(a1 + 8) - *a1;
  if (v28 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v27[v28 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v27 = *a1;
  }

  *&v27[v28] = v26;
  [v7 sampleCoverage];
  v30 = v29;
  v31 = *a1;
  v32 = *(a1 + 8) - *a1;
  if (v32 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v31[v32 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v31 = *a1;
  }

  *&v31[v32] = v30;
  v33 = [v7 isAlphaToCoverageEnabled];
  v34 = *a1;
  v35 = *(a1 + 8) - *a1;
  if (v35 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v34[v35 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v34 = *a1;
  }

  *&v34[v35] = v33;
  v36 = [v7 isAlphaToOneEnabled];
  v37 = *a1;
  v38 = *(a1 + 8) - *a1;
  if (v38 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v37[v38 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v37 = *a1;
  }

  *&v37[v38] = v36;
  v39 = [v7 isRasterizationEnabled];
  v40 = *a1;
  v41 = *(a1 + 8) - *a1;
  if (v41 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v40[v41 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v40 = *a1;
  }

  *&v40[v41] = v39;
  v42 = [v7 depthAttachmentPixelFormat];
  v43 = *a1;
  v44 = *(a1 + 8) - *a1;
  if (v44 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v43[v44 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v43 = *a1;
  }

  *&v43[v44] = v42;
  v45 = [v7 stencilAttachmentPixelFormat];
  v46 = *a1;
  v47 = *(a1 + 8) - *a1;
  if (v47 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v46[v47 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v46 = *a1;
  }

  *&v46[v47] = v45;
  v48 = *a1;
  v49 = *(a1 + 8) - *a1;
  if (v49 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v48[v49 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v48 = *a1;
  }

  v50 = 0;
  *&v48[v49] = 8;
  do
  {
    v51 = [v7 colorAttachments];
    v52 = [v51 objectAtIndexedSubscript:v50];
    GPUTools::MTL::CaptureHelper::_SaveObject(a1, v52);

    ++v50;
  }

  while (v50 != 8);
  v53 = [v7 label];
  GPUTools::DynamicBuffer::Append(a1, [v53 UTF8String]);

  if (objc_opt_respondsToSelector())
  {
    v54 = [v7 inputPrimitiveTopology];
    v55 = *a1;
    v56 = *(a1 + 8) - *a1;
    if (v56 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v55[v56 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v55 = *a1;
    }

    *&v55[v56] = v54;
  }

  else
  {
    v57 = *a1;
    v58 = *(a1 + 8) - *a1;
    if (v58 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v57[v58 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v57 = *a1;
    }

    *&v57[v58] = -1;
  }

  v59 = [v7 tessellationPartitionMode];
  v60 = *a1;
  v61 = *(a1 + 8) - *a1;
  if (v61 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v60[v61 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v60 = *a1;
  }

  *&v60[v61] = v59;
  v62 = [v7 maxTessellationFactor];
  v63 = *a1;
  v64 = *(a1 + 8) - *a1;
  if (v64 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v63[v64 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v63 = *a1;
  }

  *&v63[v64] = v62;
  v65 = [v7 isTessellationFactorScaleEnabled];
  v66 = *a1;
  v67 = *(a1 + 8) - *a1;
  if (v67 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v66[v67 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v66 = *a1;
  }

  *&v66[v67] = v65;
  v68 = [v7 tessellationFactorFormat];
  v69 = *a1;
  v70 = *(a1 + 8) - *a1;
  if (v70 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v69[v70 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v69 = *a1;
  }

  *&v69[v70] = v68;
  v71 = [v7 tessellationControlPointIndexType];
  v72 = *a1;
  v73 = *(a1 + 8) - *a1;
  if (v73 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v72[v73 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v72 = *a1;
  }

  *&v72[v73] = v71;
  v74 = [v7 tessellationFactorStepFunction];
  v75 = *a1;
  v76 = *(a1 + 8) - *a1;
  if (v76 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v75[v76 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v75 = *a1;
  }

  *&v75[v76] = v74;
  v77 = [v7 tessellationOutputWindingOrder];
  v78 = *a1;
  v79 = *(a1 + 8) - *a1;
  if (v79 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v78[v79 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v78 = *a1;
  }

  *&v78[v79] = v77;
  v80 = *a1;
  v81 = *(a1 + 8) - *a1;
  if (v81 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v80[v81 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v80 = *a1;
  }

  *&v80[v81] = 31;
  if (objc_opt_respondsToSelector())
  {
    for (i = 0; i != 31; ++i)
    {
      v83 = [v7 vertexBuffers];
      v84 = [v83 objectAtIndexedSubscript:i];

      v85 = [v84 mutability];
      v86 = *a1;
      v87 = *(a1 + 8) - *a1;
      if (v87 > 0xFFFFFFFFFFFFFFF7)
      {
        *(a1 + 8) = &v86[v87 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(a1, 8uLL);
        v86 = *a1;
      }

      *&v86[v87] = v85;
    }
  }

  else
  {
    v88 = 31;
    do
    {
      v89 = *a1;
      v90 = *(a1 + 8) - *a1;
      if (v90 > 0xFFFFFFFFFFFFFFF7)
      {
        *(a1 + 8) = &v89[v90 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(a1, 8uLL);
        v89 = *a1;
      }

      *&v89[v90] = 0;
      --v88;
    }

    while (v88);
  }

  v91 = *a1;
  v92 = *(a1 + 8) - *a1;
  if (v92 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v91[v92 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v91 = *a1;
  }

  *&v91[v92] = 31;
  if (objc_opt_respondsToSelector())
  {
    for (j = 0; j != 31; ++j)
    {
      v94 = [v7 fragmentBuffers];
      v95 = [v94 objectAtIndexedSubscript:j];

      v96 = [v95 mutability];
      v97 = *a1;
      v98 = *(a1 + 8) - *a1;
      if (v98 > 0xFFFFFFFFFFFFFFF7)
      {
        *(a1 + 8) = &v97[v98 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(a1, 8uLL);
        v97 = *a1;
      }

      *&v97[v98] = v96;
    }
  }

  else
  {
    v99 = 31;
    do
    {
      v100 = *a1;
      v101 = *(a1 + 8) - *a1;
      if (v101 > 0xFFFFFFFFFFFFFFF7)
      {
        *(a1 + 8) = &v100[v101 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(a1, 8uLL);
        v100 = *a1;
      }

      *&v100[v101] = 0;
      --v99;
    }

    while (v99);
  }

  if (objc_opt_respondsToSelector())
  {
    v102 = [v7 supportIndirectCommandBuffers];
    v103 = *a1;
    v104 = *(a1 + 8) - *a1;
    if (v104 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v103[v104 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v103 = *a1;
    }

    *&v103[v104] = v102;
  }

  else
  {
    v105 = *a1;
    v106 = *(a1 + 8) - *a1;
    if (v106 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v105[v106 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v105 = *a1;
    }

    *&v105[v106] = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v107 = [v7 vertexAmplificationMode];
    v108 = *a1;
    v109 = *(a1 + 8) - *a1;
    if (v109 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v108[v109 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v108 = *a1;
    }

    *&v108[v109] = v107;
  }

  else
  {
    v110 = *a1;
    v111 = *(a1 + 8) - *a1;
    if (v111 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v110[v111 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v110 = *a1;
    }

    *&v110[v111] = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v112 = [v7 maxVertexAmplificationCount];
    v113 = *a1;
    v114 = *(a1 + 8) - *a1;
    if (v114 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v113[v114 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v113 = *a1;
    }

    *&v113[v114] = v112;
  }

  else
  {
    v115 = *a1;
    v116 = *(a1 + 8) - *a1;
    if (v116 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v115[v116 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v115 = *a1;
    }

    *&v115[v116] = -1;
  }

  GPUTools::MTL::CaptureHelper::SaveClientMemory(a1, *a1, *(a1 + 8) - *a1, a3, v8);
}

void sub_257A890F4(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v3);

  _Unwind_Resume(a1);
}

void GPUTools::MTL::CaptureHelper::SaveObject(GPUTools::MTL::CaptureHelper *this, MTLSamplerDescriptor *a2, GPUTools::DynamicBuffer *a3)
{
  v68 = this;
  isa = a2->super.isa;
  v5 = a2[1].super.isa;
  if (v5 != a2->super.isa)
  {
    a2[1].super.isa = isa;
    v5 = isa;
  }

  v6 = v5 - isa;
  if ((v5 - isa) > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v5 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    isa = a2->super.isa;
  }

  *(isa + v6) = 82;
  v7 = [(GPUTools::MTL::CaptureHelper *)v68 minFilter];
  v8 = a2->super.isa;
  v9 = a2[1].super.isa - a2->super.isa;
  if (v9 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v8 + v9 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v8 = a2->super.isa;
  }

  *(v8 + v9) = v7;
  v10 = [(GPUTools::MTL::CaptureHelper *)v68 magFilter];
  v11 = a2->super.isa;
  v12 = a2[1].super.isa - a2->super.isa;
  if (v12 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v11 + v12 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v11 = a2->super.isa;
  }

  *(v11 + v12) = v10;
  v13 = [(GPUTools::MTL::CaptureHelper *)v68 mipFilter];
  v14 = a2->super.isa;
  v15 = a2[1].super.isa - a2->super.isa;
  if (v15 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v14 + v15 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v14 = a2->super.isa;
  }

  *(v14 + v15) = v13;
  v16 = [(GPUTools::MTL::CaptureHelper *)v68 maxAnisotropy];
  v17 = a2->super.isa;
  v18 = a2[1].super.isa - a2->super.isa;
  if (v18 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v17 + v18 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v17 = a2->super.isa;
  }

  *(v17 + v18) = v16;
  v19 = [(GPUTools::MTL::CaptureHelper *)v68 sAddressMode];
  v20 = a2->super.isa;
  v21 = a2[1].super.isa - a2->super.isa;
  if (v21 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v20 + v21 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v20 = a2->super.isa;
  }

  *(v20 + v21) = v19;
  v22 = [(GPUTools::MTL::CaptureHelper *)v68 tAddressMode];
  v23 = a2->super.isa;
  v24 = a2[1].super.isa - a2->super.isa;
  if (v24 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v23 + v24 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v23 = a2->super.isa;
  }

  *(v23 + v24) = v22;
  v25 = [(GPUTools::MTL::CaptureHelper *)v68 rAddressMode];
  v26 = a2->super.isa;
  v27 = a2[1].super.isa - a2->super.isa;
  if (v27 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v26 + v27 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v26 = a2->super.isa;
  }

  *(v26 + v27) = v25;
  v28 = [(GPUTools::MTL::CaptureHelper *)v68 normalizedCoordinates];
  v29 = a2->super.isa;
  v30 = a2[1].super.isa - a2->super.isa;
  if (v30 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v29 + v30 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v29 = a2->super.isa;
  }

  *(v29 + v30) = v28;
  [(GPUTools::MTL::CaptureHelper *)v68 lodMinClamp];
  v32 = v31;
  v33 = a2->super.isa;
  v34 = a2[1].super.isa - a2->super.isa;
  if (v34 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v33 + v34 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v33 = a2->super.isa;
  }

  *(v33 + v34) = v32;
  [(GPUTools::MTL::CaptureHelper *)v68 lodMaxClamp];
  v36 = v35;
  v37 = a2->super.isa;
  v38 = a2[1].super.isa - a2->super.isa;
  if (v38 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v37 + v38 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v37 = a2->super.isa;
  }

  *(v37 + v38) = v36;
  v39 = [(GPUTools::MTL::CaptureHelper *)v68 label];
  GPUTools::DynamicBuffer::Append(a2, [v39 UTF8String]);

  v40 = [(GPUTools::MTL::CaptureHelper *)v68 lodAverage];
  v41 = a2->super.isa;
  v42 = a2[1].super.isa - a2->super.isa;
  if (v42 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v41 + v42 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v41 = a2->super.isa;
  }

  *(v41 + v42) = v40;
  v43 = [(GPUTools::MTL::CaptureHelper *)v68 compareFunction];
  v44 = a2->super.isa;
  v45 = a2[1].super.isa - a2->super.isa;
  if (v45 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v44 + v45 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v44 = a2->super.isa;
  }

  *(v44 + v45) = v43;
  v46 = a2->super.isa;
  v47 = a2[1].super.isa - a2->super.isa;
  if (v47 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1].super.isa = (v46 + v47 + 8);
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v46 = a2->super.isa;
  }

  *(v46 + v47) = -1;
  if (objc_opt_respondsToSelector())
  {
    v48 = [(GPUTools::MTL::CaptureHelper *)v68 supportArgumentBuffers];
    v49 = a2->super.isa;
    v50 = a2[1].super.isa - a2->super.isa;
    if (v50 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v49 + v50 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v49 = a2->super.isa;
    }

    *(v49 + v50) = v48;
  }

  else
  {
    v51 = a2->super.isa;
    v52 = a2[1].super.isa - a2->super.isa;
    if (v52 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v51 + v52 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v51 = a2->super.isa;
    }

    *(v51 + v52) = -1;
  }

  if (objc_opt_respondsToSelector())
  {
    v53 = [(GPUTools::MTL::CaptureHelper *)v68 resourceIndex];
    v54 = a2->super.isa;
    v55 = a2[1].super.isa - a2->super.isa;
    if (v55 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v54 + v55 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v54 = a2->super.isa;
    }

    *(v54 + v55) = v53;
    v60 = [(GPUTools::MTL::CaptureHelper *)v68 forceResourceIndex];
    v61 = a2->super.isa;
    v62 = a2[1].super.isa - a2->super.isa;
    if (v62 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v61 + v62 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v61 = a2->super.isa;
    }

    *(v61 + v62) = v60;
  }

  else
  {
    v56 = a2->super.isa;
    v57 = a2[1].super.isa - a2->super.isa;
    if (v57 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v56 + v57 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v56 = a2->super.isa;
    }

    *(v56 + v57) = -1;
    v58 = a2->super.isa;
    v59 = a2[1].super.isa - a2->super.isa;
    if (v59 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v58 + v59 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v58 = a2->super.isa;
    }

    *(v58 + v59) = -1;
  }

  if (objc_opt_respondsToSelector())
  {
    v63 = [(GPUTools::MTL::CaptureHelper *)v68 reductionMode];
    v64 = a2->super.isa;
    v65 = a2[1].super.isa - a2->super.isa;
    if (v65 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v64 + v65 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v64 = a2->super.isa;
    }

    *(v64 + v65) = v63;
  }

  else
  {
    v66 = a2->super.isa;
    v67 = a2[1].super.isa - a2->super.isa;
    if (v67 > 0xFFFFFFFFFFFFFFF7)
    {
      a2[1].super.isa = (v66 + v67 + 8);
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 8uLL);
      v66 = a2->super.isa;
    }

    *(v66 + v67) = 0;
  }
}

void *GPUTools::DynamicBuffer::Append(GPUTools::DynamicBuffer *this, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "";
  }

  v4 = *this;
  v5 = *(this + 1) - *this;
  v6 = strlen(v3);
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 >= v7 + v5)
  {
    if (v5 > v7 + v5)
    {
      *(this + 1) = v4 + v7 + v5;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this, v7);
    v4 = *this;
  }

  return memcpy((v4 + v5), v3, v6 + 1);
}

void GPUTools::MTL::CaptureHelper::SaveObject(MTLSamplerDescriptor *this, MTLSamplerDescriptor *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_semaphore_wait(this[17].super.isa, 0xFFFFFFFFFFFFFFFFLL);
  GPUTools::MTL::CaptureHelper::SaveObject(v5, this, v6);
  GPUTools::MTL::CaptureHelper::SaveClientMemory(this, this->super.isa, this[1].super.isa - this->super.isa, a3, 0);
}

void sub_257A89944(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v2);

  _Unwind_Resume(a1);
}

void GPUTools::MTL::CaptureHelper::_SaveObject(GPUTools::MTL::CaptureHelper *this, MTLStencilDescriptor *a2)
{
  v23 = a2;
  v3 = *this;
  v4 = *(this + 1) - *this;
  if (v4 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v3 + v4 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v3 = *this;
  }

  *(v3 + v4) = v23;
  v5 = [(MTLStencilDescriptor *)v23 stencilCompareFunction];
  v6 = *this;
  v7 = *(this + 1) - *this;
  if (v7 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v6 + v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v6 = *this;
  }

  *(v6 + v7) = v5;
  v8 = [(MTLStencilDescriptor *)v23 stencilFailureOperation];
  v9 = *this;
  v10 = *(this + 1) - *this;
  if (v10 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v9 + v10 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v9 = *this;
  }

  *(v9 + v10) = v8;
  v11 = [(MTLStencilDescriptor *)v23 depthFailureOperation];
  v12 = *this;
  v13 = *(this + 1) - *this;
  if (v13 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v12 + v13 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v12 = *this;
  }

  *(v12 + v13) = v11;
  v14 = [(MTLStencilDescriptor *)v23 depthStencilPassOperation];
  v15 = *this;
  v16 = *(this + 1) - *this;
  if (v16 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v15 + v16 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v15 = *this;
  }

  *(v15 + v16) = v14;
  v17 = [(MTLStencilDescriptor *)v23 readMask];
  v18 = *this;
  v19 = *(this + 1) - *this;
  if (v19 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v18 + v19 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v18 = *this;
  }

  *(v18 + v19) = v17;
  v20 = [(MTLStencilDescriptor *)v23 writeMask];
  v21 = *this;
  v22 = *(this + 1) - *this;
  if (v22 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v21 + v22 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v21 = *this;
  }

  *(v21 + v22) = v20;
}

void GPUTools::MTL::CaptureHelper::SaveObject(id *this, MTLDepthStencilDescriptor *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_semaphore_wait(this[17], 0xFFFFFFFFFFFFFFFFLL);
  v6 = *this;
  v7 = this[1];
  if (v7 != *this)
  {
    this[1] = v6;
    v7 = v6;
  }

  v8 = v7 - v6;
  if ((v7 - v6) > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v6 = *this;
  }

  *&v6[v8] = 82;
  v9 = [(MTLDepthStencilDescriptor *)v5 depthCompareFunction];
  v10 = *this;
  v11 = this[1] - *this;
  if (v11 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v10[v11 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v10 = *this;
  }

  *&v10[v11] = v9;
  v12 = [(MTLDepthStencilDescriptor *)v5 isDepthWriteEnabled];
  v13 = *this;
  v14 = this[1] - *this;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v13[v14 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v13 = *this;
  }

  *&v13[v14] = v12;
  v15 = [(MTLDepthStencilDescriptor *)v5 label];
  GPUTools::DynamicBuffer::Append(this, [v15 UTF8String]);

  v16 = [(MTLDepthStencilDescriptor *)v5 frontFaceStencil];
  GPUTools::MTL::CaptureHelper::_SaveObject(this, v16);

  v17 = [(MTLDepthStencilDescriptor *)v5 backFaceStencil];
  GPUTools::MTL::CaptureHelper::_SaveObject(this, v17);

  GPUTools::MTL::CaptureHelper::SaveClientMemory(this, *this, this[1] - *this, a3, 0);
}

void sub_257A89D3C(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v2);

  _Unwind_Resume(a1);
}

uint64_t GPUTools::MTL::CaptureHelper::SaveObject(id *this, MTLCompileOptions *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    dispatch_semaphore_wait(this[17], 0xFFFFFFFFFFFFFFFFLL);
    v6 = *this;
    v7 = this[1];
    if (v7 != *this)
    {
      this[1] = v6;
      v7 = v6;
    }

    v8 = v7 - v6;
    if ((v7 - v6) > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = v7 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v6 = *this;
    }

    *&v6[v8] = 82;
    v9 = [(MTLCompileOptions *)v5 preprocessorMacros];
    GPUTools::DynamicBuffer::AppendObject(this, v9);

    v10 = [(MTLCompileOptions *)v5 fastMathEnabled];
    v11 = *this;
    v12 = this[1] - *this;
    if (v12 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v11[v12 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v11 = *this;
    }

    *&v11[v12] = v10;
    v13 = [(MTLCompileOptions *)v5 debuggingEnabled];
    v14 = *this;
    v15 = this[1] - *this;
    if (v15 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v14[v15 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v14 = *this;
    }

    *&v14[v15] = v13;
    v16 = [(MTLCompileOptions *)v5 languageVersion];
    v17 = *this;
    v18 = this[1] - *this;
    if (v18 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v17[v18 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v17 = *this;
    }

    *&v17[v18] = v16;
    GPUTools::MTL::CaptureHelper::SaveClientMemory(this, *this, this[1] - *this, a3, 0);
  }

  return 0;
}

void sub_257A89F28(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v2);

  _Unwind_Resume(a1);
}

void GPUTools::DynamicBuffer::AppendObject(GPUTools::DynamicBuffer *this, objc_object *a2)
{
  v4 = objc_autoreleasePoolPush();
  v7 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v7];
  v6 = v7;
  GPUTools::DynamicBuffer::Append(this, [v5 bytes], objc_msgSend(v5, "length"));

  objc_autoreleasePoolPop(v4);
}

void GPUTools::MTL::CaptureHelper::_SaveObject(GPUTools::MTL::CaptureHelper *this, MTLRenderPipelineColorAttachmentDescriptor *a2)
{
  v30 = a2;
  v3 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 isBlendingEnabled];
  v4 = *this;
  v5 = *(this + 1) - *this;
  if (v5 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v4 + v5 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v4 = *this;
  }

  *(v4 + v5) = v3;
  v6 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 sourceRGBBlendFactor];
  v7 = *this;
  v8 = *(this + 1) - *this;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v7 + v8 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v7 = *this;
  }

  *(v7 + v8) = v6;
  v9 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 destinationRGBBlendFactor];
  v10 = *this;
  v11 = *(this + 1) - *this;
  if (v11 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v10 + v11 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v10 = *this;
  }

  *(v10 + v11) = v9;
  v12 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 rgbBlendOperation];
  v13 = *this;
  v14 = *(this + 1) - *this;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v13 + v14 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v13 = *this;
  }

  *(v13 + v14) = v12;
  v15 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 sourceAlphaBlendFactor];
  v16 = *this;
  v17 = *(this + 1) - *this;
  if (v17 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v16 + v17 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v16 = *this;
  }

  *(v16 + v17) = v15;
  v18 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 destinationAlphaBlendFactor];
  v19 = *this;
  v20 = *(this + 1) - *this;
  if (v20 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v19 + v20 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v19 = *this;
  }

  *(v19 + v20) = v18;
  v21 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 alphaBlendOperation];
  v22 = *this;
  v23 = *(this + 1) - *this;
  if (v23 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v22 + v23 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v22 = *this;
  }

  *(v22 + v23) = v21;
  v24 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 writeMask];
  v25 = *this;
  v26 = *(this + 1) - *this;
  if (v26 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v25 + v26 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v25 = *this;
  }

  *(v25 + v26) = v24;
  v27 = [(MTLRenderPipelineColorAttachmentDescriptor *)v30 pixelFormat];
  v28 = *this;
  v29 = *(this + 1) - *this;
  if (v29 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v28 + v29 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v28 = *this;
  }

  *(v28 + v29) = v27;
}

void GPUTools::MTL::CaptureHelper::_SaveObject(GPUTools::MTL::CaptureHelper *this, MTLRenderPassAttachmentDescriptor *a2, const MTLClearColor *a3)
{
  v52 = a2;
  v5 = [(MTLRenderPassAttachmentDescriptor *)v52 texture];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 originalObject];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  v8 = *this;
  v9 = *(this + 1) - *this;
  if (v9 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v8 + v9 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v8 = *this;
  }

  *(v8 + v9) = v7;

  v10 = [(MTLRenderPassAttachmentDescriptor *)v52 level];
  v11 = *this;
  v12 = *(this + 1) - *this;
  if (v12 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v11 + v12 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v11 = *this;
  }

  *(v11 + v12) = v10;
  v13 = [(MTLRenderPassAttachmentDescriptor *)v52 slice];
  v14 = *this;
  v15 = *(this + 1) - *this;
  if (v15 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v14 + v15 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v14 = *this;
  }

  *(v14 + v15) = v13;
  v16 = [(MTLRenderPassAttachmentDescriptor *)v52 depthPlane];
  v17 = *this;
  v18 = *(this + 1) - *this;
  if (v18 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v17 + v18 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v17 = *this;
  }

  *(v17 + v18) = v16;
  v19 = [(MTLRenderPassAttachmentDescriptor *)v52 resolveTexture];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 originalObject];
  }

  else
  {
    v20 = v19;
  }

  v21 = v20;

  v22 = *this;
  v23 = *(this + 1) - *this;
  if (v23 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v22 + v23 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v22 = *this;
  }

  *(v22 + v23) = v21;

  v24 = [(MTLRenderPassAttachmentDescriptor *)v52 resolveLevel];
  v25 = *this;
  v26 = *(this + 1) - *this;
  if (v26 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v25 + v26 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v25 = *this;
  }

  *(v25 + v26) = v24;
  v27 = [(MTLRenderPassAttachmentDescriptor *)v52 resolveSlice];
  v28 = *this;
  v29 = *(this + 1) - *this;
  if (v29 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v28 + v29 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v28 = *this;
  }

  *(v28 + v29) = v27;
  v30 = [(MTLRenderPassAttachmentDescriptor *)v52 resolveDepthPlane];
  v31 = *this;
  v32 = *(this + 1) - *this;
  if (v32 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v31 + v32 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v31 = *this;
  }

  *(v31 + v32) = v30;
  v33 = [(MTLRenderPassAttachmentDescriptor *)v52 loadAction];
  v34 = *this;
  v35 = *(this + 1) - *this;
  if (v35 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v34 + v35 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v34 = *this;
  }

  *(v34 + v35) = v33;
  v36 = [(MTLRenderPassAttachmentDescriptor *)v52 storeAction];
  v37 = *this;
  v38 = *(this + 1) - *this;
  if (v38 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v37 + v38 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v37 = *this;
  }

  *(v37 + v38) = v36;
  if (objc_opt_respondsToSelector())
  {
    v39 = [(MTLRenderPassAttachmentDescriptor *)v52 storeActionOptions];
    v40 = *this;
    v41 = *(this + 1) - *this;
    if (v41 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v40 + v41 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v40 = *this;
    }

    *(v40 + v41) = v39;
  }

  else
  {
    v42 = *this;
    v43 = *(this + 1) - *this;
    if (v43 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v42 + v43 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v42 = *this;
    }

    *(v42 + v43) = 0;
  }

  v44 = *this;
  v45 = *(this + 1) - *this;
  if (v45 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v44 + v45 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v44 = *this;
  }

  *(v44 + v45) = a3->red;
  v46 = *this;
  v47 = *(this + 1) - *this;
  if (v47 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v46 + v47 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v46 = *this;
  }

  *(v46 + v47) = a3->green;
  v48 = *this;
  v49 = *(this + 1) - *this;
  if (v49 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v48 + v49 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v48 = *this;
  }

  *(v48 + v49) = a3->blue;
  v50 = *this;
  v51 = *(this + 1) - *this;
  if (v51 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v50 + v51 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v50 = *this;
  }

  *(v50 + v51) = a3->alpha;
}

void GPUTools::MTL::CaptureHelper::SaveObject(id *this, MTLRenderPassDescriptor *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_semaphore_wait(this[17], 0xFFFFFFFFFFFFFFFFLL);
  v6 = *this;
  v7 = this[1];
  if (v7 != *this)
  {
    this[1] = v6;
    v7 = v6;
  }

  v8 = v7 - v6;
  if ((v7 - v6) > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v6 = *this;
  }

  *&v6[v8] = 82;
  v9 = [(MTLRenderPassDescriptor *)v5 visibilityResultBuffer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 originalObject];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = *this;
  v13 = this[1] - *this;
  if (v13 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v12[v13 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v12 = *this;
  }

  *&v12[v13] = v11;

  v14 = 0;
  while (1)
  {
    v15 = [(MTLRenderPassDescriptor *)v5 colorAttachments];
    v16 = [v15 objectAtIndexedSubscript:v14];

    v17 = [(MTLRenderPassAttachmentDescriptor *)v16 texture];

    if (v17)
    {
      v18 = *this;
      v19 = this[1] - *this;
      if (v19 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v18[v19 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v18 = *this;
      }

      *&v18[v19] = v14;
      [(MTLRenderPassAttachmentDescriptor *)v16 clearColor];
      __p.red = v20;
      __p.green = v21;
      __p.blue = v22;
      __p.alpha = v23;
      GPUTools::MTL::CaptureHelper::_SaveObject(this, v16, &__p);
    }

    if (++v14 == 8)
    {
      v24 = *this;
      v25 = this[1] - *this;
      if (v25 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v24[v25 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v24 = *this;
      }

      *&v24[v25] = -1;
      v26 = [(MTLRenderPassDescriptor *)v5 depthAttachment];
      v27 = [(MTLRenderPassDescriptor *)v5 depthAttachment];
      [v27 clearDepth];
      __p.red = v28;
      memset(&__p.green, 0, 24);
      GPUTools::MTL::CaptureHelper::_SaveObject(this, v26, &__p);

      v29 = [(MTLRenderPassDescriptor *)v5 depthAttachment];
      LOBYTE(v27) = objc_opt_respondsToSelector();

      if (v27)
      {
        v30 = [(MTLRenderPassDescriptor *)v5 depthAttachment];
        v31 = [v30 depthResolveFilter];
        v32 = *this;
        v33 = this[1] - *this;
        if (v33 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v32[v33 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v32 = *this;
        }

        *&v32[v33] = v31;
      }

      else
      {
        v34 = *this;
        v35 = this[1] - *this;
        if (v35 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v34[v35 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v34 = *this;
        }

        *&v34[v35] = -1;
      }

      v36 = [(MTLRenderPassDescriptor *)v5 stencilAttachment];
      v37 = [(MTLRenderPassDescriptor *)v5 stencilAttachment];
      __p.red = [v37 clearStencil];
      memset(&__p.green, 0, 24);
      GPUTools::MTL::CaptureHelper::_SaveObject(this, v36, &__p);

      if (objc_opt_respondsToSelector())
      {
        v38 = [(MTLRenderPassDescriptor *)v5 renderTargetArrayLength];
        v39 = *this;
        v40 = this[1] - *this;
        if (v40 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v39[v40 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v39 = *this;
        }

        *&v39[v40] = v38;
      }

      else
      {
        v41 = *this;
        v42 = this[1] - *this;
        if (v42 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v41[v42 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v41 = *this;
        }

        *&v41[v42] = -1;
      }

      if (objc_opt_respondsToSelector())
      {
        v43 = [(MTLRenderPassDescriptor *)v5 imageblockSampleLength];
        v44 = *this;
        v45 = this[1] - *this;
        if (v45 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v44[v45 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v44 = *this;
        }

        *&v44[v45] = v43;
        v54 = [(MTLRenderPassDescriptor *)v5 threadgroupMemoryLength];
        v55 = *this;
        v56 = this[1] - *this;
        if (v56 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v55[v56 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v55 = *this;
        }

        *&v55[v56] = v54;
        v57 = [(MTLRenderPassDescriptor *)v5 tileWidth];
        v58 = *this;
        v59 = this[1] - *this;
        if (v59 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v58[v59 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v58 = *this;
        }

        *&v58[v59] = v57;
        v60 = [(MTLRenderPassDescriptor *)v5 tileHeight];
        v61 = *this;
        v62 = this[1] - *this;
        if (v62 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v61[v62 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v61 = *this;
        }

        *&v61[v62] = v60;
      }

      else
      {
        v46 = *this;
        v47 = this[1] - *this;
        if (v47 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v46[v47 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v46 = *this;
        }

        *&v46[v47] = -1;
        v48 = *this;
        v49 = this[1] - *this;
        if (v49 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v48[v49 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v48 = *this;
        }

        *&v48[v49] = -1;
        v50 = *this;
        v51 = this[1] - *this;
        if (v51 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v50[v51 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v50 = *this;
        }

        *&v50[v51] = -1;
        v52 = *this;
        v53 = this[1] - *this;
        if (v53 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v52[v53 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v52 = *this;
        }

        *&v52[v53] = -1;
      }

      if (objc_opt_respondsToSelector())
      {
        v63 = [(MTLRenderPassDescriptor *)v5 renderTargetWidth];
        v64 = *this;
        v65 = this[1] - *this;
        if (v65 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v64[v65 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v64 = *this;
        }

        *&v64[v65] = v63;
        v70 = [(MTLRenderPassDescriptor *)v5 renderTargetHeight];
        v71 = *this;
        v72 = this[1] - *this;
        if (v72 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v71[v72 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v71 = *this;
        }

        *&v71[v72] = v70;
      }

      else
      {
        v66 = *this;
        v67 = this[1] - *this;
        if (v67 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v66[v67 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v66 = *this;
        }

        *&v66[v67] = -1;
        v68 = *this;
        v69 = this[1] - *this;
        if (v69 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v68[v69 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v68 = *this;
        }

        *&v68[v69] = -1;
      }

      if (objc_opt_respondsToSelector())
      {
        v73 = [(MTLRenderPassDescriptor *)v5 defaultRasterSampleCount];
        v74 = *this;
        v75 = this[1] - *this;
        if (v75 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v74[v75 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v74 = *this;
        }

        *&v74[v75] = v73;
      }

      else
      {
        v76 = *this;
        v77 = this[1] - *this;
        if (v77 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v76[v77 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v76 = *this;
        }

        *&v76[v77] = -1;
      }

      if (objc_opt_respondsToSelector())
      {
        v78 = [(MTLRenderPassDescriptor *)v5 getSamplePositions:0 count:0];
        v79 = *this;
        v80 = this[1] - *this;
        if (v80 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v79[v80 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v79 = *this;
        }

        *&v79[v80] = v78;
        if (v78)
        {
          std::vector<MTLSamplePosition>::vector[abi:ne200100](&__p, v78);
          [(MTLRenderPassDescriptor *)v5 getSamplePositions:*&__p.red count:v78];
          v83 = 0;
          do
          {
            v84 = *(*&__p.red + v83);
            v85 = *this;
            v86 = this[1] - *this;
            if (v86 > 0xFFFFFFFFFFFFFFF7)
            {
              this[1] = &v85[v86 + 8];
            }

            else
            {
              std::vector<unsigned char>::__append(this, 8uLL);
              v85 = *this;
            }

            *&v85[v86] = v84;
            v87 = *(*&__p.red + v83 + 4);
            v88 = *this;
            v89 = this[1] - *this;
            if (v89 > 0xFFFFFFFFFFFFFFF7)
            {
              this[1] = &v88[v89 + 8];
            }

            else
            {
              std::vector<unsigned char>::__append(this, 8uLL);
              v88 = *this;
            }

            *&v88[v89] = v87;
            v83 += 8;
            --v78;
          }

          while (v78);
          if (*&__p.red)
          {
            __p.green = __p.red;
            operator delete(*&__p.red);
          }
        }
      }

      else
      {
        v81 = *this;
        v82 = this[1] - *this;
        if (v82 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v81[v82 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v81 = *this;
        }

        *&v81[v82] = 0;
      }

      v90 = [(MTLRenderPassDescriptor *)v5 stencilAttachment];
      v91 = objc_opt_respondsToSelector();

      if (v91)
      {
        v92 = [(MTLRenderPassDescriptor *)v5 stencilAttachment];
        v93 = [v92 stencilResolveFilter];
        v94 = *this;
        v95 = this[1] - *this;
        if (v95 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v94[v95 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v94 = *this;
        }

        *&v94[v95] = v93;
      }

      else
      {
        v96 = *this;
        v97 = this[1] - *this;
        if (v97 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v96[v97 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v96 = *this;
        }

        *&v96[v97] = -1;
      }

      if (objc_opt_respondsToSelector())
      {
        v98 = [(MTLRenderPassDescriptor *)v5 openGLModeEnabled];
        v99 = *this;
        v100 = this[1] - *this;
        if (v100 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v99[v100 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v99 = *this;
        }

        *&v99[v100] = v98;
      }

      else
      {
        v101 = *this;
        v102 = this[1] - *this;
        if (v102 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v101[v102 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v101 = *this;
        }

        *&v101[v102] = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v103 = [(MTLRenderPassDescriptor *)v5 rasterizationRateMap];
        v104 = *this;
        v105 = this[1] - *this;
        if (v105 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v104[v105 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v104 = *this;
        }

        *&v104[v105] = v103;
      }

      else
      {
        v106 = *this;
        v107 = this[1] - *this;
        if (v107 > 0xFFFFFFFFFFFFFFF7)
        {
          this[1] = &v106[v107 + 8];
        }

        else
        {
          std::vector<unsigned char>::__append(this, 8uLL);
          v106 = *this;
        }

        *&v106[v107] = 0;
      }

      GPUTools::MTL::CaptureHelper::SaveClientMemory(this, *this, this[1] - *this, a3, 0);
    }
  }
}

void sub_257A8B2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  dispatch_semaphore_signal(v11);

  _Unwind_Resume(a1);
}

void GPUTools::MTL::CaptureHelper::SaveObject(id *this, MTLComputePipelineDescriptor *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_semaphore_wait(this[17], 0xFFFFFFFFFFFFFFFFLL);
  v6 = *this;
  v7 = this[1];
  if (v7 != *this)
  {
    this[1] = v6;
    v7 = v6;
  }

  v8 = v7 - v6;
  if ((v7 - v6) > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v6 = *this;
  }

  *&v6[v8] = 82;
  v9 = [(MTLComputePipelineDescriptor *)v5 computeFunction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 originalObject];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = *this;
  v13 = this[1] - *this;
  if (v13 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v12[v13 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v12 = *this;
  }

  *&v12[v13] = v11;

  v14 = [(MTLComputePipelineDescriptor *)v5 threadGroupSizeIsMultipleOfThreadExecutionWidth];
  v15 = *this;
  v16 = this[1] - *this;
  if (v16 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v15[v16 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v15 = *this;
  }

  *&v15[v16] = v14;
  v17 = [(MTLComputePipelineDescriptor *)v5 label];
  GPUTools::DynamicBuffer::Append(this, [v17 UTF8String]);

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(MTLComputePipelineDescriptor *)v5 stageInputDescriptor], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = *this;
    v20 = this[1] - *this;
    if (v20 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v19[v20 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v19 = *this;
    }

    v23 = 0;
    *&v19[v20] = 31;
    do
    {
      v24 = [v18 layouts];
      v25 = [v24 objectAtIndexedSubscript:v23];
      v26 = [v25 stride];
      v27 = *this;
      v28 = this[1] - *this;
      if (v28 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v27[v28 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v27 = *this;
      }

      *&v27[v28] = v26;

      v29 = [v18 layouts];
      v30 = [v29 objectAtIndexedSubscript:v23];
      v31 = [v30 stepRate];
      v32 = *this;
      v33 = this[1] - *this;
      if (v33 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v32[v33 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v32 = *this;
      }

      *&v32[v33] = v31;

      v34 = [v18 layouts];
      v35 = [v34 objectAtIndexedSubscript:v23];
      v36 = [v35 stepFunction];
      v37 = *this;
      v38 = this[1] - *this;
      if (v38 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v37[v38 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v37 = *this;
      }

      *&v37[v38] = v36;

      ++v23;
    }

    while (v23 != 31);
    v39 = *this;
    v40 = this[1] - *this;
    if (v40 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v39[v40 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v39 = *this;
    }

    v41 = 0;
    *&v39[v40] = 31;
    do
    {
      v42 = [v18 attributes];
      v43 = [v42 objectAtIndexedSubscript:v41];
      v44 = [v43 format];
      v45 = *this;
      v46 = this[1] - *this;
      if (v46 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v45[v46 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v45 = *this;
      }

      *&v45[v46] = v44;

      v47 = [v18 attributes];
      v48 = [v47 objectAtIndexedSubscript:v41];
      v49 = [v48 offset];
      v50 = *this;
      v51 = this[1] - *this;
      if (v51 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v50[v51 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v50 = *this;
      }

      *&v50[v51] = v49;

      v52 = [v18 attributes];
      v53 = [v52 objectAtIndexedSubscript:v41];
      v54 = [v53 bufferIndex];
      v55 = *this;
      v56 = this[1] - *this;
      if (v56 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v55[v56 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v55 = *this;
      }

      *&v55[v56] = v54;

      ++v41;
    }

    while (v41 != 31);
    v57 = [v18 indexType];
    v58 = *this;
    v59 = this[1] - *this;
    if (v59 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v58[v59 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v58 = *this;
    }

    *&v58[v59] = v57;
    v60 = [v18 indexBufferIndex];
    v61 = *this;
    v62 = this[1] - *this;
    if (v62 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v61[v62 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v61 = *this;
    }

    *&v61[v62] = v60;
  }

  else
  {
    v21 = *this;
    v22 = this[1] - *this;
    if (v22 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v21[v22 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v21 = *this;
    }

    *&v21[v22] = -1;
  }

  v63 = *this;
  v64 = this[1] - *this;
  if (v64 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v63[v64 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v63 = *this;
  }

  *&v63[v64] = 31;
  if (objc_opt_respondsToSelector())
  {
    for (i = 0; i != 31; ++i)
    {
      v66 = [(MTLComputePipelineDescriptor *)v5 buffers];
      v67 = [v66 objectAtIndexedSubscript:i];

      v68 = [v67 mutability];
      v69 = *this;
      v70 = this[1] - *this;
      if (v70 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v69[v70 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v69 = *this;
      }

      *&v69[v70] = v68;
    }
  }

  else
  {
    v71 = 31;
    do
    {
      v72 = *this;
      v73 = this[1] - *this;
      if (v73 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v72[v73 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v72 = *this;
      }

      *&v72[v73] = 0;
      --v71;
    }

    while (v71);
  }

  if (objc_opt_respondsToSelector())
  {
    v74 = [(MTLComputePipelineDescriptor *)v5 supportIndirectCommandBuffers];
    v75 = *this;
    v76 = this[1] - *this;
    if (v76 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v75[v76 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v75 = *this;
    }

    *&v75[v76] = v74;
  }

  else
  {
    v77 = *this;
    v78 = this[1] - *this;
    if (v78 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v77[v78 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v77 = *this;
    }

    *&v77[v78] = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v79 = [(MTLComputePipelineDescriptor *)v5 maxTotalThreadsPerThreadgroup];
    v80 = *this;
    v81 = this[1] - *this;
    if (v81 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v80[v81 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v80 = *this;
    }

    *&v80[v81] = v79;
  }

  else
  {
    v82 = *this;
    v83 = this[1] - *this;
    if (v83 > 0xFFFFFFFFFFFFFFF7)
    {
      this[1] = &v82[v83 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v82 = *this;
    }

    *&v82[v83] = 0;
  }

  GPUTools::MTL::CaptureHelper::SaveClientMemory(this, *this, this[1] - *this, a3, 0);
}

void sub_257A8BBA8(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v2);

  _Unwind_Resume(a1);
}

void GPUTools::MTL::CaptureHelper::SaveObject(uint64_t a1, dispatch_data_t data, uint64_t a3)
{
  v5 = 0;
  size_ptr = 0;
  dispatch_data_create_map(data, &v5, &size_ptr);
  GPUTools::MTL::CaptureHelper::SaveClientMemory(a1, v5, size_ptr, a3, 0);
}

void GPUTools::MTL::CaptureHelper::_SaveObject(GPUTools::MTL::CaptureHelper *this, MTLTileRenderPipelineColorAttachmentDescriptor *a2)
{
  v6 = a2;
  v3 = [(MTLTileRenderPipelineColorAttachmentDescriptor *)v6 pixelFormat];
  v4 = *this;
  v5 = *(this + 1) - *this;
  if (v5 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v4 + v5 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v4 = *this;
  }

  *(v4 + v5) = v3;
}

void GPUTools::MTL::CaptureHelper::_SaveObject(GPUTools::MTL::CaptureHelper *this, MTLVertexDescriptor *a2)
{
  v39 = a2;
  v3 = *this;
  v4 = *(this + 1) - *this;
  if (v4 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v3 + v4 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v3 = *this;
  }

  v5 = 0;
  *(v3 + v4) = 31;
  do
  {
    v6 = [(MTLVertexDescriptor *)v39 layouts];
    v7 = [v6 objectAtIndexedSubscript:v5];
    v8 = [v7 stride];
    v9 = *this;
    v10 = *(this + 1) - *this;
    if (v10 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v9 + v10 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v9 = *this;
    }

    *(v9 + v10) = v8;

    v11 = [(MTLVertexDescriptor *)v39 layouts];
    v12 = [v11 objectAtIndexedSubscript:v5];
    v13 = [v12 stepRate];
    v14 = *this;
    v15 = *(this + 1) - *this;
    if (v15 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v14 + v15 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v14 = *this;
    }

    *(v14 + v15) = v13;

    v16 = [(MTLVertexDescriptor *)v39 layouts];
    v17 = [v16 objectAtIndexedSubscript:v5];
    v18 = [v17 stepFunction];
    v19 = *this;
    v20 = *(this + 1) - *this;
    if (v20 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v19 + v20 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v19 = *this;
    }

    *(v19 + v20) = v18;

    ++v5;
  }

  while (v5 != 31);
  v21 = *this;
  v22 = *(this + 1) - *this;
  if (v22 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v21 + v22 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v21 = *this;
  }

  v23 = 0;
  *(v21 + v22) = 31;
  do
  {
    v24 = [(MTLVertexDescriptor *)v39 attributes];
    v25 = [v24 objectAtIndexedSubscript:v23];
    v26 = [v25 format];
    v27 = *this;
    v28 = *(this + 1) - *this;
    if (v28 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v27 + v28 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v27 = *this;
    }

    *(v27 + v28) = v26;

    v29 = [(MTLVertexDescriptor *)v39 attributes];
    v30 = [v29 objectAtIndexedSubscript:v23];
    v31 = [v30 offset];
    v32 = *this;
    v33 = *(this + 1) - *this;
    if (v33 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v32 + v33 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v32 = *this;
    }

    *(v32 + v33) = v31;

    v34 = [(MTLVertexDescriptor *)v39 attributes];
    v35 = [v34 objectAtIndexedSubscript:v23];
    v36 = [v35 bufferIndex];
    v37 = *this;
    v38 = *(this + 1) - *this;
    if (v38 > 0xFFFFFFFFFFFFFFF7)
    {
      *(this + 1) = v37 + v38 + 8;
    }

    else
    {
      std::vector<unsigned char>::__append(this, 8uLL);
      v37 = *this;
    }

    *(v37 + v38) = v36;

    ++v23;
  }

  while (v23 != 31);
}

void sub_257A8CC68(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v3);

  _Unwind_Resume(a1);
}

void GPUTools::MTL::CaptureHelper::SaveObject(id *this, MTLTileRenderPipelineDescriptor *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_semaphore_wait(this[17], 0xFFFFFFFFFFFFFFFFLL);
  v6 = *this;
  v7 = this[1];
  if (v7 != *this)
  {
    this[1] = v6;
    v7 = v6;
  }

  v8 = v7 - v6;
  if ((v7 - v6) > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v6 = *this;
  }

  *&v6[v8] = 82;
  v9 = [(MTLTileRenderPipelineDescriptor *)v5 label];
  GPUTools::DynamicBuffer::Append(this, [v9 UTF8String]);

  v10 = [(MTLTileRenderPipelineDescriptor *)v5 tileFunction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 originalObject];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  v13 = *this;
  v14 = this[1] - *this;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v13[v14 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v13 = *this;
  }

  *&v13[v14] = v12;

  if (objc_opt_respondsToSelector())
  {
    v15 = [(MTLTileRenderPipelineDescriptor *)v5 rasterSampleCount];
    v16 = *this;
    v17 = this[1] - *this;
    if (v17 <= 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = [(MTLTileRenderPipelineDescriptor *)v5 sampleCount];
    v16 = *this;
    v17 = this[1] - *this;
    if (v17 <= 0xFFFFFFFFFFFFFFF7)
    {
LABEL_16:
      std::vector<unsigned char>::__append(this, 8uLL);
      v16 = *this;
      goto LABEL_18;
    }
  }

  this[1] = &v16[v17 + 8];
LABEL_18:
  *&v16[v17] = v15;
  v18 = *this;
  v19 = this[1] - *this;
  if (v19 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v18[v19 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v18 = *this;
  }

  v20 = 0;
  *&v18[v19] = 8;
  do
  {
    v21 = [(MTLTileRenderPipelineDescriptor *)v5 colorAttachments];
    v22 = [v21 objectAtIndexedSubscript:v20];
    GPUTools::MTL::CaptureHelper::_SaveObject(this, v22);

    ++v20;
  }

  while (v20 != 8);
  v23 = [(MTLTileRenderPipelineDescriptor *)v5 threadgroupSizeMatchesTileSize];
  v24 = *this;
  v25 = this[1] - *this;
  if (v25 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v24[v25 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v24 = *this;
  }

  *&v24[v25] = v23;
  v26 = *this;
  v27 = this[1] - *this;
  if (v27 > 0xFFFFFFFFFFFFFFF7)
  {
    this[1] = &v26[v27 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v26 = *this;
  }

  *&v26[v27] = 31;
  if (objc_opt_respondsToSelector())
  {
    for (i = 0; i != 31; ++i)
    {
      v29 = [(MTLTileRenderPipelineDescriptor *)v5 tileBuffers];
      v30 = [v29 objectAtIndexedSubscript:i];

      v31 = [v30 mutability];
      v32 = *this;
      v33 = this[1] - *this;
      if (v33 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v32[v33 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v32 = *this;
      }

      *&v32[v33] = v31;
    }
  }

  else
  {
    v34 = 31;
    do
    {
      v35 = *this;
      v36 = this[1] - *this;
      if (v36 > 0xFFFFFFFFFFFFFFF7)
      {
        this[1] = &v35[v36 + 8];
      }

      else
      {
        std::vector<unsigned char>::__append(this, 8uLL);
        v35 = *this;
      }

      *&v35[v36] = 0;
      --v34;
    }

    while (v34);
  }

  GPUTools::MTL::CaptureHelper::SaveClientMemory(this, *this, this[1] - *this, a3, 0);
}

void sub_257A8D134(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v2);

  _Unwind_Resume(a1);
}

void GPUTools::MTL::CaptureHelper::SaveObject(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_semaphore_wait(*(a1 + 136), 0xFFFFFFFFFFFFFFFFLL);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7 != *a1)
  {
    *(a1 + 8) = v6;
    v7 = v6;
  }

  v8 = v7 - v6;
  if ((v7 - v6) > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v6 = *a1;
  }

  *&v6[v8] = 82;
  v9 = *a1;
  v10 = *(a1 + 8) - *a1;
  if (v10 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v9[v10 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v9 = *a1;
  }

  *&v9[v10] = 1;
  v11 = [v5 name];
  GPUTools::DynamicBuffer::Append(a1, [v11 UTF8String]);

  if (v5)
  {
    [v5 maxThreadsPerThreadgroup];
    v12 = v49;
  }

  else
  {
    v12 = 0;
    v50 = 0;
    v51 = 0;
  }

  v13 = *a1;
  v14 = *(a1 + 8) - *a1;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v13[v14 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v13 = *a1;
  }

  *&v13[v14] = v12;
  if (v5)
  {
    [v5 maxThreadsPerThreadgroup];
    v15 = v50;
  }

  else
  {
    v15 = 0;
    v51 = 0;
  }

  v16 = *a1;
  v17 = *(a1 + 8) - *a1;
  if (v17 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v16[v17 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v16 = *a1;
  }

  *&v16[v17] = v15;
  if (v5)
  {
    [v5 maxThreadsPerThreadgroup];
    v18 = v51;
  }

  else
  {
    v18 = 0;
  }

  v19 = *a1;
  v20 = *(a1 + 8) - *a1;
  if (v20 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v19[v20 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v19 = *a1;
  }

  *&v19[v20] = v18;
  v21 = *a1;
  v22 = *(a1 + 8) - *a1;
  if (v22 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v21[v22 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v21 = *a1;
  }

  v21[v22] = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v5;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  if (v24 && (NSSelectorFromString(&cfstr_Sharedmemorysi.isa), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v25 = [v24 valueForKey:@"sharedMemorySize"];
    v26 = [v25 unsignedLongValue];
    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    if (v28 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v27[v28 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v27 = *a1;
    }

    *&v27[v28] = v26;
  }

  else
  {
    v29 = *a1;
    v30 = *(a1 + 8) - *a1;
    if (v30 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v29[v30 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v29 = *a1;
    }

    *&v29[v30] = 0;
    if (!v24)
    {
      goto LABEL_47;
    }
  }

  NSSelectorFromString(&cfstr_Dedicatedmemor.isa);
  if (objc_opt_respondsToSelector())
  {
    v31 = [v24 valueForKey:@"dedicatedMemorySize"];
    v32 = [v31 unsignedLongValue];
    v33 = *a1;
    v34 = *(a1 + 8) - *a1;
    if (v34 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v33[v34 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v33 = *a1;
    }

    *&v33[v34] = v32;

    goto LABEL_53;
  }

LABEL_47:
  v35 = *a1;
  v36 = *(a1 + 8) - *a1;
  if (v36 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v35[v36 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v35 = *a1;
  }

  *&v35[v36] = 0;
LABEL_53:
  v37 = *a1;
  v38 = *(a1 + 8) - *a1;
  if (v38 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v37[v38 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v37 = *a1;
  }

  v37[v38] = 0;
  v39 = *a1;
  v40 = *(a1 + 8) - *a1;
  if (v40 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v39[v40 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v39 = *a1;
  }

  *&v39[v40] = -1;
  if (objc_opt_respondsToSelector())
  {
    v41 = [v5 samplerReductionModeSupport];
    v42 = *a1;
    v43 = *(a1 + 8) - *a1;
    if (v43 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v42[v43 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v42 = *a1;
    }

    *&v42[v43] = v41;
  }

  else
  {
    v44 = *a1;
    v45 = *(a1 + 8) - *a1;
    if (v45 > 0xFFFFFFFFFFFFFFF7)
    {
      *(a1 + 8) = &v44[v45 + 8];
    }

    else
    {
      std::vector<unsigned char>::__append(a1, 8uLL);
      v44 = *a1;
    }

    *&v44[v45] = 0;
  }

  v46 = objc_opt_respondsToSelector();
  v47 = *a1;
  v48 = *(a1 + 8) - *a1;
  if (v46)
  {
    if (v48 <= 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_72;
    }
  }

  else if (v48 <= 0xFFFFFFFFFFFFFFF7)
  {
LABEL_72:
    std::vector<unsigned char>::__append(a1, 8uLL);
    v47 = *a1;
    goto LABEL_74;
  }

  *(a1 + 8) = &v47[v48 + 8];
LABEL_74:
  *&v47[v48] = 0;
  GPUTools::MTL::CaptureHelper::SaveClientMemory(a1, *a1, *(a1 + 8) - *a1, a3, 0);
}

void sub_257A8D714(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v2);

  _Unwind_Resume(a1);
}

uint64_t GPUTools::MTL::GetClientMemorySize(void *a1, void *a2, uint64_t *a3, unint64_t a4, unint64_t a5, unint64_t *a6, uint64_t *a7)
{
  v11 = a1;
  v12 = a2;
  v30 = v11;
  v13 = [v12 pixelFormat];
  v14 = [v12 sampleCount];
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (*a3 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = *a3;
  }

  if (a3[1] <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3[1];
  }

  MTLPixelFormatGetInfoForDevice();
  if (v13 == 260)
  {
    v18 = 5;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 * v15;
  v20 = v19 * v16;
  if (a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = v19 * v16;
  }

  if (a5)
  {
    v22 = a5;
  }

  else
  {
    v22 = v21 * v17;
  }

  if (a6)
  {
    *a6 = v21;
  }

  if (a7)
  {
    *a7 = v22;
  }

  v23 = v12;
  v24 = [v23 iosurface];
  if (v24 && DYGetHostInfo())
  {
    *a6 = IOSurfaceGetBytesPerRowOfPlane(v24, [v23 iosurfacePlane]);
    *a7 = *a6 * IOSurfaceGetHeightOfPlane(v24, [v23 iosurfacePlane]);
    if ([v23 isFramebufferOnly])
    {
      v25 = *a6 * v17;
    }

    else
    {
      v25 = *a7;
    }
  }

  else
  {
    v26 = a3[2];
    if (v26 <= 1)
    {
      v26 = 1;
    }

    v27 = v26 - 1;
    if (v17 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v17;
    }

    v25 = v20 + v21 * (v28 - 1) + v27 * v22;
  }

  if ((v13 & 0xFFFFFFFFFFFFFFFELL) == 0x226)
  {
    v25 = 5 * v16 * v17;
    if (v21 < 4 * v16)
    {
      if (a6)
      {
        *a6 = 4 * v16;
      }

      if (a7)
      {
        *a7 = 4 * v16 * v17;
      }
    }
  }

  return v25;
}

void GPUTools::MTL::CaptureHelper::EncodeChainedRenderPipelineStateInfo(GPUTools::MTL::CaptureHelper *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v82[10] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v51 = a5;
  v52 = v9;
  if (!v9 || !v10)
  {
    v35 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v35 originalObject];
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      v36 = v35;
    }

    operator new();
  }

  v48 = [(MTLRenderPipelineReflection *)v10 performanceStatistics];
  v11 = [v48 count];
  v12 = [(MTLRenderPipelineReflection *)v10 vertexBuiltInArguments];
  v47 = [v12 count];

  v13 = [(MTLRenderPipelineReflection *)v10 vertexBindings];
  v50 = [v13 count];

  v14 = [(MTLRenderPipelineReflection *)v10 fragmentBindings];
  v15 = [v14 count];

  v16 = [(MTLRenderPipelineReflection *)v10 tileBindings];
  v17 = [v16 count];

  v18 = GPUTools::MTL::CaptureHelper::_EncodeImageBlockDataReturn(a1, v10);
  v46 = a1;
  v49 = v11;
  v79[0] = 0;
  v79[1] = v79;
  v45 = (v11 == 0) << 13;
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = (v11 == 0) << 13;
  }

  v79[2] = 0x2020000000;
  v80 = 0;
  v20 = [(MTLRenderPipelineReflection *)v10 vertexBuiltInArguments];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke;
  v73[3] = &unk_27984EAE8;
  if (v50 | v15 | v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v75 = v79;
  v76 = v47;
  v78 = v21;
  v77 = a2;
  v22 = v52;
  v74 = v22;
  [v20 enumerateObjectsUsingBlock:v73];

  v23 = [(MTLRenderPipelineReflection *)v10 vertexBindings];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke_2;
  v67[3] = &unk_27984EAE8;
  if (v15 | v17)
  {
    v24 = 0;
  }

  else
  {
    v24 = v19;
  }

  v69 = v79;
  v70 = v50;
  v71 = a2;
  v72 = v24;
  v25 = v22;
  v68 = v25;
  [v23 enumerateObjectsUsingBlock:v67];

  v26 = [(MTLRenderPipelineReflection *)v10 fragmentBindings];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke_3;
  v61[3] = &unk_27984EAE8;
  if (v17)
  {
    v27 = 0;
  }

  else
  {
    v27 = v19;
  }

  v63 = v79;
  v64 = v15;
  v66 = v27;
  v65 = a2;
  v28 = v25;
  v62 = v28;
  [v26 enumerateObjectsUsingBlock:v61];

  v29 = [(MTLRenderPipelineReflection *)v10 tileBindings];
  if (v49)
  {
    v30 = 1;
  }

  else
  {
    v30 = v18;
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke_4;
  v53[3] = &unk_27984EB10;
  v56 = v79;
  v57 = v46;
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0x2000;
  }

  v58 = v17;
  v60 = v31;
  v32 = v10;
  v54 = v32;
  v59 = a2;
  v33 = v28;
  v55 = v33;
  [v29 enumerateObjectsUsingBlock:v53];

  if (v18)
  {
    if (v47 || v50 || v15)
    {
      v34 = [(MTLRenderPipelineReflection *)v32 imageBlockDataReturn];
      Encode(a2, v34, 104, v45, v33);
    }

    else
    {
      v34 = [(MTLRenderPipelineReflection *)v32 imageBlockDataReturn];
      Encode(a2, v34, 121, v45, v33);
    }
  }

  if (v49)
  {
    v37 = v48;
    v38 = v33;
    v39 = v51;
    v82[0] = 0;
    v40 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v37 requiringSecureCoding:1 error:v82];
    v41 = v82[0];
    v81 = 0;
    v42 = DYGetMTLGuestAppClient();
    [v40 length];
    v43 = v40;
    [v40 bytes];
    GPUTools::Interpose::DYSavePointer();

    operator new();
  }

  _Block_object_dispose(v79, 8);
  v44 = *MEMORY[0x277D85DE8];
}

void sub_257A8E190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  _Block_object_dispose((v57 - 232), 8);

  _Unwind_Resume(a1);
}

void GPUTools::FB::Encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = &a9;
  GPUTools::FB::VAListArgumentProvider::VAListArgumentProvider(v9, &a9);
  GPUTools::FB::Encode();
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(v9);
}

void sub_257A8E37C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  GPUTools::FB::VAListArgumentProvider::~VAListArgumentProvider(va);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::MTL::CaptureHelper::_EncodeImageBlockDataReturn(GPUTools::MTL::CaptureHelper *this, MTLRenderPipelineReflection *a2)
{
  v3 = a2;
  v4 = [(MTLRenderPipelineReflection *)v3 imageBlockDataReturn];
  v5 = v4;
  if (!v4 || !GPUTools::MTL::CaptureHelper::_IsArgumentExplicitImageBlock(v4, v4))
  {
    v9 = 0;
    goto LABEL_10;
  }

  v6 = [(MTLRenderPipelineReflection *)v3 vertexBuiltInArguments];
  if ([v6 count])
  {
    goto LABEL_6;
  }

  v7 = [(MTLRenderPipelineReflection *)v3 vertexBindings];
  if ([v7 count])
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = [(MTLRenderPipelineReflection *)v3 fragmentBindings];
  v12 = [v11 count];

  if (!v12)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v8 = [(MTLRenderPipelineReflection *)v3 tileBindings];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN8GPUTools3MTL13CaptureHelper27_EncodeImageBlockDataReturnEP27MTLRenderPipelineReflection_block_invoke_2;
    v13[3] = &unk_27984EB38;
    v13[4] = &v15;
    v13[5] = this;
    [v8 enumerateObjectsUsingBlock:v13];
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(MTLRenderPipelineReflection *)v3 fragmentBindings];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZN8GPUTools3MTL13CaptureHelper27_EncodeImageBlockDataReturnEP27MTLRenderPipelineReflection_block_invoke;
  v14[3] = &unk_27984EB38;
  v14[4] = &v15;
  v14[5] = this;
  [v8 enumerateObjectsUsingBlock:v14];
LABEL_8:

  v9 = *(v16 + 24) ^ 1;
  _Block_object_dispose(&v15, 8);
LABEL_10:

  return v9 & 1;
}

void sub_257A8E578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 48) - 1 == a3)
  {
    v6 = *(a1 + 64);
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  v7 = v5;
  Encode(*(a1 + 56), v5, 102, *(*(*(a1 + 40) + 8) + 24), *(a1 + 32));
}

void Encode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v6 = a5;
  v7 = [v8 type];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      operator new();
    }

    if (v7 == 16)
    {
      operator new();
    }

    if (v7 == 17 && [v8 imageBlockKind])
    {
      operator new();
    }
  }

  else
  {
    switch(v7)
    {
      case 0:
        if (objc_opt_respondsToSelector())
        {
          [v8 isVertexDescriptorBuffer];
        }

        operator new();
      case 1:
        if (objc_opt_respondsToSelector())
        {
          [v8 dataTypeDescription];
          objc_claimAutoreleasedReturnValue();
        }

        operator new();
      case 2:
        operator new();
    }
  }
}

void ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 48) - 1 == a3)
  {
    v6 = *(a1 + 64);
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  v7 = v5;
  Encode(*(a1 + 56), v5, 103, *(*(*(a1 + 40) + 8) + 24), *(a1 + 32));
}

void ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 48) - 1 == a3)
  {
    v6 = *(a1 + 64);
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  v7 = v5;
  Encode(*(a1 + 56), v5, 104, *(*(*(a1 + 40) + 8) + 24), *(a1 + 32));
}

void ___ZN8GPUTools3MTL13CaptureHelper36EncodeChainedRenderPipelineStateInfoEPNSt3__16vectorIPNS_2FB4FbufENS2_9allocatorIS6_EEEEPU33objcproto22MTLRenderPipelineState11objc_objectP27MTLRenderPipelineReflectionP18DYTransportMessage_block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (*(a1 + 64) - 1 == a3)
  {
    v5 = *(a1 + 80);
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
  v6 = [*(a1 + 32) imageBlockDataReturn];
  v7 = v6;
  if (v6 && (IsArgumentExplicitImageBlock = GPUTools::MTL::CaptureHelper::_IsArgumentExplicitImageBlock(v6, v11), v7, IsArgumentExplicitImageBlock))
  {
    v9 = *(a1 + 72);
    v10 = [*(a1 + 32) imageBlockDataReturn];
    Encode(v9, v10, 121, *(*(*(a1 + 48) + 8) + 24), *(a1 + 40));
  }

  else
  {
    Encode(*(a1 + 72), v11, 121, *(*(*(a1 + 48) + 8) + 24), *(a1 + 40));
  }
}

BOOL GPUTools::MTL::CaptureHelper::_IsArgumentExplicitImageBlock(GPUTools::MTL::CaptureHelper *this, MTLArgument *a2)
{
  v2 = a2;
  v3 = [(MTLArgument *)v2 type];
  if (v3 == 16)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 17 && [(MTLArgument *)v2 imageBlockKind]== 1;
  }

  return v4;
}

BOOL ___ZN8GPUTools3MTL13CaptureHelper27_EncodeImageBlockDataReturnEP27MTLRenderPipelineReflection_block_invoke(GPUTools::MTL::CaptureHelper *a1, MTLArgument *a2)
{
  result = GPUTools::MTL::CaptureHelper::_IsArgumentExplicitImageBlock(a1, a2);
  if (result)
  {
    *(*(*(a1 + 4) + 8) + 24) = 1;
  }

  return result;
}

BOOL ___ZN8GPUTools3MTL13CaptureHelper27_EncodeImageBlockDataReturnEP27MTLRenderPipelineReflection_block_invoke_2(GPUTools::MTL::CaptureHelper *a1, MTLArgument *a2)
{
  result = GPUTools::MTL::CaptureHelper::_IsArgumentExplicitImageBlock(a1, a2);
  if (result)
  {
    *(*(*(a1 + 4) + 8) + 24) = 1;
  }

  return result;
}

uint64_t GPUTools::MTL::CaptureHelper::SaveObject(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 136);
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10 != *a1)
  {
    *(a1 + 8) = v9;
    v10 = v9;
  }

  v11 = v10 - v9;
  if ((v10 - v9) > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = v10 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v9 = *a1;
  }

  *&v9[v11] = 82;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  if (v13 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v12[v13 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v12 = *a1;
  }

  *&v12[v13] = a2;
  v14 = [v7 count];
  v15 = *a1;
  v16 = *(a1 + 8) - *a1;
  if (v16 > 0xFFFFFFFFFFFFFFF7)
  {
    *(a1 + 8) = &v15[v16 + 8];
  }

  else
  {
    std::vector<unsigned char>::__append(a1, 8uLL);
    v15 = *a1;
  }

  *&v15[v16] = v14;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___ZN8GPUTools3MTL13CaptureHelper10SaveObjectEmP7NSArrayIP23MTLPostVertexDumpOutputEPv_block_invoke;
  v19[3] = &__block_descriptor_40_e40_v32__0__MTLPostVertexDumpOutput_8Q16_B24l;
  v19[4] = a1;
  [v7 enumerateObjectsUsingBlock:v19];
  memcpy(a4, *a1, *(a1 + 8) - *a1);
  v17 = *(a1 + 8) - *a1;
  dispatch_semaphore_signal(v8);

  return v17;
}

void sub_257A8F8D8(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(v2);

  _Unwind_Resume(a1);
}

void ___ZN8GPUTools3MTL13CaptureHelper10SaveObjectEmP7NSArrayIP23MTLPostVertexDumpOutputEPv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 airMDType];
  GPUTools::DynamicBuffer::Append(v4, [v5 UTF8String]);

  v6 = [v13 dataType];
  v7 = *v4;
  v8 = *(v4 + 1) - *v4;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    *(v4 + 1) = v7 + v8 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(v4, 8uLL);
    v7 = *v4;
  }

  *(v7 + v8) = v6;
  v9 = [v13 name];
  GPUTools::DynamicBuffer::Append(v4, [v9 UTF8String]);

  v10 = [v13 offset];
  v11 = *v4;
  v12 = *(v4 + 1) - *v4;
  if (v12 > 0xFFFFFFFFFFFFFFF7)
  {
    *(v4 + 1) = v11 + v12 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(v4, 8uLL);
    v11 = *v4;
  }

  *(v11 + v12) = v10;
}

void GPUTools::MTL::CaptureHelper::SaveFileContents(GPUTools::MTL::CaptureHelper *this, NSString *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a2];
  GPUTools::MTL::CaptureHelper::SaveClientMemory(this, [v5 bytes], objc_msgSend(v5, "length"), a3, 0);
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

void std::vector<unsigned char>::__append(char **a1, size_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

void GPUTools::DynamicBuffer::Append(GPUTools::DynamicBuffer *this, const void *a2, size_t a3)
{
  v6 = *this;
  v7 = *(this + 1) - *this;
  if (v7 > 0xFFFFFFFFFFFFFFF7)
  {
    *(this + 1) = v6 + v7 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(this, 8uLL);
    v6 = *this;
  }

  *(v6 + v7) = a3;
  if (a3)
  {
    v8 = *this;
    v9 = *(this + 1) - *this;
    v10 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v9 >= v9 + v10)
    {
      if (v9 > v9 + v10)
      {
        *(this + 1) = v8 + v9 + v10;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(this, v10);
      v8 = *this;
    }

    memcpy((v8 + v9), a2, a3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::FB::Fbuf *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Encode(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  a2;
  a4;
  operator new();
}

{
  v5 = a2;
  a4;
  if (objc_opt_respondsToSelector())
  {
    [v5 argumentIndexStride];
  }

  operator new();
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

void *std::vector<MTLSamplePosition>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTLSamplePosition>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_257A90BB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLSamplePosition>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void DYInterposeArchiveFlushStream(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  if (!streams)
  {
    v7 = objc_opt_new();
    v8 = streams;
    streams = v7;
  }

  v9 = *(a2 + 32);
  v10 = [streams objectForKey:v9];

  if (v10)
  {
    v11 = [streams objectForKeyedSubscript:v9];
    [v11 appendBytes:a3 length:a4];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:a3 length:a4];
    [streams setObject:v11 forKeyedSubscript:v9];
  }
}

void DYInterposeArchiveStorePointer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  v6 = DYGetMTLGuestAppClient();
  v7 = [v6 localActiveArchive];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  [v7 addFileWithName:v8 data:v9 options:0 error:0 waitUntilDone:1];
}

void sub_257A90E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void DYInterposeArchiveFlush(void)
{
  if (streams)
  {
    [streams removeObjectForKey:*MEMORY[0x277D0B188]];
    [streams enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1];
    v0 = streams;
    streams = 0;
  }
}

void ___Z23DYInterposeArchiveFlushv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  v5 = DYGetMTLGuestAppClient();
  v6 = [v5 localActiveArchive];
  [v6 addFileWithName:v7 data:v4 options:0 error:0 waitUntilDone:1];
}

void sub_257A90F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t DYDerivedCounterInfo::DYDerivedCounterInfo(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v42 = a3;
  v39 = a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  location = (a1 + 160);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1065353216;
  v8 = v7;
  *(a1 + 208) = v8;
  v36 = *MEMORY[0x277D0B148];
  v37 = v8;
  v9 = [v8 objectForKeyedSubscript:?];
  v10 = [v9 mutableCopy];

  if (v39 && ([v39 containsString:@"AGX"] & 1) == 0)
  {
    v11 = [v37 objectForKeyedSubscript:@"Instruments"];
    if (v11)
    {
      v34 = v11;
      v35 = [v11 objectForKeyedSubscript:@"Profiles"];
      if (v35)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v35 allKeys];
          v13 = v12;
          if (v12)
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            obj = v12;
            v14 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
            if (v14)
            {
              v32 = *v59;
              do
              {
                v33 = 0;
                do
                {
                  if (*v59 != v32)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v15 = [v35 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * v33)];
                  if (v15)
                  {
                    v31 = v15;
                    v16 = [v15 objectForKeyedSubscript:v36];
                    v56 = 0u;
                    v57 = 0u;
                    v54 = 0u;
                    v55 = 0u;
                    v40 = v16;
                    v17 = [v40 countByEnumeratingWithState:&v54 objects:v64 count:16];
                    if (v17)
                    {
                      v41 = *v55;
                      do
                      {
                        v18 = 0;
                        do
                        {
                          if (*v55 != v41)
                          {
                            objc_enumerationMutation(v40);
                          }

                          v19 = [*(*(&v54 + 1) + 8 * v18) allValues];
                          v53 = 0u;
                          v51 = 0u;
                          v52 = 0u;
                          v50 = 0u;
                          v20 = v19;
                          v21 = [v20 countByEnumeratingWithState:&v50 objects:v63 count:16];
                          if (v21)
                          {
                            v22 = *v51;
                            do
                            {
                              v23 = 0;
                              do
                              {
                                if (*v51 != v22)
                                {
                                  objc_enumerationMutation(v20);
                                }

                                [v10 removeObjectForKey:*(*(&v50 + 1) + 8 * v23++)];
                              }

                              while (v21 != v23);
                              v21 = [v20 countByEnumeratingWithState:&v50 objects:v63 count:16];
                            }

                            while (v21);
                          }

                          ++v18;
                        }

                        while (v18 != v17);
                        v17 = [v40 countByEnumeratingWithState:&v54 objects:v64 count:16];
                      }

                      while (v17);
                    }

                    v15 = v31;
                  }

                  ++v33;
                }

                while (v33 != v14);
                v14 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
              }

              while (v14);
            }
          }
        }
      }

      v11 = v34;
    }
  }

  objc_storeStrong(location, v10);
  if (v42)
  {
    v24 = v42;
  }

  else
  {
    v24 = [*location allKeys];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v43 = v24;
  v25 = [v43 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v25)
  {
    v26 = *v47;
    do
    {
      v27 = 0;
      do
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v43);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v46 + 1) + 8 * v27) UTF8String]);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>((a1 + 168), __p);
        if (v45 < 0)
        {
          operator delete(__p[0]);
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v43 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v25);
  }

  v28 = *MEMORY[0x277D85DE8];
  return a1;
}