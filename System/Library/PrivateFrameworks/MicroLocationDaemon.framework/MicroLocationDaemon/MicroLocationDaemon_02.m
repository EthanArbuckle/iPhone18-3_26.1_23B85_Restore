uint64_t std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::find<int>(void *a1, int *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

void std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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

void *std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,boost::hash<std::pair<unsigned long,unsigned long>>,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::equal_to<std::pair<unsigned long,unsigned long>>,boost::hash<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v2) ^ ((0xC6A4A7935BD1E995 * v2) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u)) + 3864292196u;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v2) ^ ((0xC6A4A7935BD1E995 * v2) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u)) + 3864292196u;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

float ULEndpointPlacementGenerator::getNegativeLogLikelihood3D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const float *a13, vDSP_Length a14, uint64_t **a15, char a16)
{
  v43[0] = a14;
  v17 = **a15;
  v18 = (*a15)[3];
  v19 = (*a15)[6];
  ULRFGroupGenerator::getRotatedCovarianceElements(v17, v18, v19, a10, a11, a13, a14, *a15 + 9);
  v20 = (*a15)[9];
  MEMORY[0x259CA30C0](a12, 1, a12, 1, v20, 1, a14);
  v21 = (*a15)[12];
  v22 = (*a15)[15];
  v23 = (*a15)[18];
  v24 = (*a15)[21];
  v32 = (*a15)[24];
  ULRFGroupGenerator::getCovarianceInverseElements((*a15)[12], (*a15)[15], (*a15)[18], (*a15)[21], v32, v17, v18, v19, v20, a14, (*a15 + 27));
  v25 = **a15;
  v26 = (*a15)[3];
  v27 = (*a15)[6];
  MEMORY[0x259CA30E0](a7, 1, a4, 1, v25, 1, a14);
  MEMORY[0x259CA30B0](v25, 1, a1, 1, v25, 1, a14);
  MEMORY[0x259CA30E0](a8, 1, a5, 1, v26, 1, a14);
  MEMORY[0x259CA30B0](v26, 1, a2, 1, v26, 1, a14);
  MEMORY[0x259CA30E0](a9, 1, a6, 1, v27, 1, a14);
  MEMORY[0x259CA30B0](v27, 1, a3, 1, v27, 1, a14);
  v28 = (*a15)[9];
  ULRFGroupGenerator::getGaussianExponent((*a15)[9], v21, v22, v23, v24, v25, v26, v27, a14, *a15 + 27);
  v29 = **a15;
  v30 = (*a15)[3];
  if (a16)
  {
    vvlogf(**a15, v32, v43);
    v42 = -1090519040;
    MEMORY[0x259CA30D0](v29, 1, &v42, v29, 1, a14);
  }

  else
  {
    bzero(v29, 4 * a14);
  }

  MEMORY[0x259CA30B0](v28, 1, v29, 1, v30, 1, a14);
  v42 = -1082130432;
  MEMORY[0x259CA30D0](v30, 1, &v42, v30, 1, a14);
  __C = 0.0;
  vDSP_sve(v30, 1, &__C, a14);
  return __C;
}

void ULEndpointPlacementGenerator::parseConstraints(float32x2_t **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v8 = v4[4];
      v7 = v4[5];
      while (v7 != v8)
      {
        v7 -= 2;
        if (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v7))
        {
          v8 = v7 + 2;
          break;
        }
      }

      v9 = v4[7];
      v10 = v4[8];
      if (v9 != v10)
      {
        while (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v9))
        {
          v9 += 2;
          if (v9 == v10)
          {
            v9 = v10;
            break;
          }
        }

        v10 = v4[8];
      }

      v11 = v4[4];
      if (v8 != v11 && v9 != v10)
      {
        *&v20 = v4[4];
        v13 = std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(a3, v11);
        v14 = v8 - 2;
        v15 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v14);
        if (!v15 || (LODWORD(v20) = *(v15 + 8), (v16 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v9)) == 0))
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        DWORD1(v20) = *(v16 + 8);
        *(&v20 + 1) = v4[2];
        v21 = v4[3].f32[0];
        std::vector<ULParticle>::push_back[abi:ne200100](v13 + 48, &v20);
        *&v20 = v4[7];
        v17 = std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(a3, v20);
        v18 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v9);
        if (!v18 || (LODWORD(v20) = *(v18 + 8), (v19 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v14)) == 0))
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        DWORD1(v20) = *(v19 + 8);
        *(&v20 + 1) = vneg_f32(v4[2]);
        v21 = -v4[3].f32[0];
        std::vector<ULParticle>::push_back[abi:ne200100](v17 + 48, &v20);
      }

      v4 += 13;
    }

    while (v4 != v5);
  }
}

float ULEndpointPlacementGenerator::endpointPlacementObjective(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, uint64_t a17, uint64_t a18, const float *a19, vDSP_Length a20, uint64_t **a21, uint64_t **a22)
{
  v26 = a21;
  v27 = a22;
  v29 = a18;
  v28 = a19;
  v30 = a20;
  v51 = a10;
  v52[0] = a9;
  v50 = a11;
  v48 = a13;
  v49 = a12;
  v46 = a15;
  v47 = a14;
  v45 = a16;
  v44 = 0;
  NegativeLogLikelihood3D = ULEndpointPlacementGenerator::getNegativeLogLikelihood3D(v52, &v51, &v50, &v44, &v44, &v44, &v49, &v48, &v47, &v46, &v45, &a17, &a17 + 1, 1uLL, a22, 1);
  v32 = **v26;
  v33 = (*v26)[3];
  v34 = (*v26)[6];
  if (v30)
  {
    v35 = (*v26)[6];
    v36 = (*v26)[3];
    v37 = **v26;
    v38 = v30;
    do
    {
      *v37++ = v52[0];
      *v36++ = v51;
      *v35++ = v50;
      --v38;
    }

    while (v38);
  }

  return (NegativeLogLikelihood3D + ULEndpointPlacementGenerator::getNegativeLogLikelihood3D(v32, v33, v34, a1, a2, a3, a4, a5, a6, a7, a8, v29, v28, v30, v27, 1)) / (v30 + 1);
}

void ULEndpointPlacementGenerator::placeEndpoints(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v168 = *MEMORY[0x277D85DE8];
  v158 = 0;
  v157 = 0;
  v159 = 0;
  if (a1[1] == *a1 || ((v4 = a3, *(a2 + 8) != *a2) ? (v5 = a3[3] == 0) : (v5 = 1), v5))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    ULEndpointPlacementGenerator::parseConstraints(a2, a3, &v155);
    v7 = v155;
    if (v155 != v156)
    {
      v80 = v4;
      do
      {
        v166 = *(v7 + 2);
        v153 = 0;
        v152 = 0;
        v154 = 0;
        std::vector<ULEndpointPlacementGenerator::EndpointConstraint>::__init_with_size[abi:ne200100]<ULEndpointPlacementGenerator::EndpointConstraint*,ULEndpointPlacementGenerator::EndpointConstraint*>(&v152, v7[6], v7[7], 0xCCCCCCCCCCCCCCCDLL * ((v7[7] - v7[6]) >> 2));
        v8 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v4, &v166);
        if (!v8)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v9 = *(v8 + 8);
        v10 = (*a1 + 32 * v9);
        if (*v10 != v9)
        {
          ULEndpointPlacementGenerator::placeEndpoints(&v88);

          abort_report_np();
          __break(1u);
        }

        v11 = v10[1];
        v12 = v10[2];
        v13 = v10[6];
        v14 = v10[7];
        v15 = v10[4];
        v16 = v10[5];
        v17 = v10[3];
        v150 = 0;
        v149 = 0;
        v151 = 0;
        v147 = 0;
        v146 = 0;
        v148 = 0;
        v144 = 0;
        v143 = 0;
        v145 = 0;
        v141 = 0;
        v140 = 0;
        v142 = 0;
        v138 = 0;
        v137 = 0;
        v139 = 0;
        v135 = 0;
        v134 = 0;
        v136 = 0;
        v132 = 0;
        v131 = 0;
        v133 = 0;
        v129 = 0;
        v128 = 0;
        v130 = 0;
        v126 = 0;
        v125 = 0;
        v127 = 0;
        v123 = 0;
        v122 = 0;
        v124 = 0;
        v121 = v11;
        v120 = v12;
        v119 = v17;
        v118 = v15;
        v117 = v16;
        v116 = v13;
        v115 = v14;
        v18 = v153;
        v19 = v152;
        v20 = v153 - v152;
        if (v153 == v152)
        {
          v36 = 0;
          v35 = 0;
          v34 = 0;
          v33 = 0;
          v32 = 0;
          v31 = 0;
          v30 = 0;
          v29 = 0;
          v28 = 0;
          v27 = 0;
          v26 = v17;
          v25 = v12;
          v24 = v11;
        }

        else
        {
          do
          {
            v21 = *v19;
            v112[0] = v19[4];
            v111 = v21;
            v22 = (*a1 + 32 * SDWORD1(v21));
            v23 = v22[1];
            v88 = *v22;
            *v89 = v23;
            std::vector<float>::push_back[abi:ne200100](&v149, &v111 + 2);
            std::vector<float>::push_back[abi:ne200100](&v146, &v111 + 3);
            std::vector<float>::push_back[abi:ne200100](&v143, v112);
            std::vector<float>::push_back[abi:ne200100](&v140, &v88 + 1);
            std::vector<float>::push_back[abi:ne200100](&v137, &v88 + 2);
            std::vector<float>::push_back[abi:ne200100](&v134, &v88 + 3);
            std::vector<float>::push_back[abi:ne200100](&v131, v89);
            std::vector<float>::push_back[abi:ne200100](&v128, v89 + 1);
            std::vector<float>::push_back[abi:ne200100](&v125, &v89[1]);
            std::vector<float>::push_back[abi:ne200100](&v122, &v89[1] + 1);
            v19 += 5;
          }

          while (v19 != v18);
          v24 = v121;
          v25 = v120;
          v26 = v119;
          v15 = v118;
          v16 = v117;
          v13 = v116;
          v14 = v115;
          v27 = v149;
          v28 = v146;
          v29 = v143;
          v30 = v140;
          v31 = v137;
          v32 = v134;
          v33 = v131;
          v34 = v128;
          v35 = v125;
          v36 = v122;
        }

        *&v78 = v34;
        *(&v78 + 1) = v35;
        EndpointMinimizerFunc::EndpointMinimizerFunc(&v111, v24, v25, v26, v15, v16, v13, v14, v27, v28, v29, v30, v31, v32, v33, v78, v36, 0xCCCCCCCCCCCCCCCDLL * (v20 >> 2));
        v105[0] = 6;
        v106 = 0x13727C5ACLL;
        v109 = 0x140000000ALL;
        v110 = xmmword_25921C470;
        v105[1] = HIDWORD(v111);
        v107 = 786163455;
        v108 = v112[0];
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::LBFGSBSolver(&v88, v105);
        v86[0] = 0;
        v86[1] = 0;
        cva::MatrixData<float,0ul,0ul,false>::allocate(v86, 3);
        v87 = 3;
        v37 = v86[0];
        *v86[0] = v11;
        v37[1] = v12;
        v37[2] = v17;
        v38 = v112[1];
        v84[0] = 0;
        v84[1] = 0;
        cva::MatrixData<float,0ul,0ul,false>::allocate(v84, 3);
        v39 = 0;
        v85 = 3;
        v40 = v84[0] + 8;
        do
        {
          v41 = vdupq_n_s64(v39);
          v42 = vorrq_s8(v41, xmmword_25921A970);
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v42)), *v41.i8).u8[0])
          {
            *(v40 - 2) = v38;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v42)), *&v41).i8[2])
          {
            *(v40 - 1) = v38;
          }

          v43 = vorrq_s8(v41, xmmword_25921A960);
          if (vuzp1_s16(*&v43, vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v43))).i32[1])
          {
            *v40 = v38;
          }

          v44 = vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v43));
          if (vuzp1_s16(v44, v44).i8[6])
          {
            v40[1] = v38;
          }

          v39 += 4;
          v40 += 4;
        }

        while (v39 != 4);
        v45 = v112[2];
        v82[0] = 0;
        v82[1] = 0;
        cva::MatrixData<float,0ul,0ul,false>::allocate(v82, 3);
        v46 = 0;
        v83 = 3;
        v47 = v82[0] + 8;
        do
        {
          v48 = vdupq_n_s64(v46);
          v49 = vorrq_s8(v48, xmmword_25921A970);
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v49)), *v48.i8).u8[0])
          {
            *(v47 - 2) = v45;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v49)), *&v48).i8[2])
          {
            *(v47 - 1) = v45;
          }

          v50 = vorrq_s8(v48, xmmword_25921A960);
          if (vuzp1_s16(*&v50, vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v50))).i32[1])
          {
            *v47 = v45;
          }

          v51 = vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), v50));
          v52 = vuzp1_s16(v51, v51);
          if (v52.i8[6])
          {
            v47[1] = v45;
          }

          v46 += 4;
          v47 += 4;
        }

        while (v46 != 4);
        v81 = 0.0;
        v53 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>(&v88, &v111, v86, &v81, v82, v84, *v52.i32);
        if (onceToken_MicroLocation_Default != -1)
        {
          ULEndpointPlacementGenerator::placeEndpoints();
        }

        v54 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          *&buf[4] = v53;
          *&buf[8] = 2048;
          *&buf[10] = v81;
          _os_log_impl(&dword_258FE9000, v54, OS_LOG_TYPE_DEBUG, "#HomeSlam, endpoint minimizer took %u iterations, target function value: %f", buf, 0x12u);
        }

        if (!v87 || (v165 = *v86[0], v87 == 1) || (v164 = *(v86[0] + 1), v87 < 3))
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
        }

        v163 = *(v86[0] + 2);
        v162 = 0;
        v160 = 0;
        std::vector<float>::vector[abi:ne200100](v161, 1uLL);
        std::vector<std::vector<float>>::vector[abi:ne200100](buf, 0xDuLL);
        if (v161[0])
        {
          v161[1] = v161[0];
          operator delete(v161[0]);
        }

        NegativeLogLikelihood3D = ULEndpointPlacementGenerator::getNegativeLogLikelihood3D(&v165, &v164, &v163, &v162, &v162, &v162, &v121, &v120, &v119, &v118, &v117, &v116, &v115, 1uLL, buf, 0);
        v161[0] = buf;
        std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v161);
        if (v87 <= 2)
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
        }

        v57 = *v86[0];
        v56 = *(v86[0] + 1);
        v58 = *(v86[0] + 2);
        *buf = v166;
        v59 = v158;
        v60 = sqrtf(NegativeLogLikelihood3D + NegativeLogLikelihood3D);
        if (v158 >= v159)
        {
          v62 = 0x2E8BA2E8BA2E8BA3 * ((v158 - v157) >> 2);
          v63 = v62 + 1;
          if ((v62 + 1) > 0x5D1745D1745D174)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          if (0x5D1745D1745D1746 * ((v159 - v157) >> 2) > v63)
          {
            v63 = 0x5D1745D1745D1746 * ((v159 - v157) >> 2);
          }

          if ((0x2E8BA2E8BA2E8BA3 * ((v159 - v157) >> 2)) >= 0x2E8BA2E8BA2E8BALL)
          {
            v64 = 0x5D1745D1745D174;
          }

          else
          {
            v64 = v63;
          }

          if (v64)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULFingerprintPlacement>>(&v157, v64);
          }

          v65 = 4 * ((v158 - v157) >> 2);
          *v65 = v57;
          *(v65 + 4) = v56;
          *(v65 + 8) = v58;
          *(v65 + 12) = *buf;
          *(v65 + 28) = 0;
          *(v65 + 32) = 0;
          *(v65 + 36) = v9;
          *(v65 + 40) = v60;
          v61 = 44 * v62 + 44;
          v66 = (v65 - (v158 - v157));
          memcpy(v66, v157, v158 - v157);
          v67 = v157;
          v157 = v66;
          v158 = v61;
          v159 = 0;
          if (v67)
          {
            operator delete(v67);
          }
        }

        else
        {
          *v158 = v57;
          *(v59 + 1) = v56;
          *(v59 + 2) = v58;
          *(v59 + 12) = *buf;
          v59[28] = 0;
          v59[32] = 0;
          *(v59 + 9) = v9;
          *(v59 + 10) = v60;
          v61 = (v59 + 44);
        }

        v158 = v61;
        free(v82[0]);
        free(v84[0]);
        free(v86[0]);
        free(v104);
        free(v103);
        free(v102);
        free(v101);
        free(v100);
        if (v98)
        {
          v99 = v98;
          operator delete(v98);
        }

        free(v97);
        if (v95)
        {
          v96 = v95;
          operator delete(v95);
        }

        free(v94);
        free(v93);
        free(v92);
        free(v91);
        free(v90);
        free(v89[0]);
        *&v88 = &v114;
        std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v88);
        *&v88 = &v113;
        std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v88);
        if (v122)
        {
          v123 = v122;
          operator delete(v122);
        }

        if (v125)
        {
          v126 = v125;
          operator delete(v125);
        }

        if (v128)
        {
          v129 = v128;
          operator delete(v128);
        }

        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        if (v134)
        {
          v135 = v134;
          operator delete(v134);
        }

        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        if (v140)
        {
          v141 = v140;
          operator delete(v140);
        }

        if (v143)
        {
          v144 = v143;
          operator delete(v143);
        }

        if (v146)
        {
          v147 = v146;
          operator delete(v146);
        }

        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        if (v152)
        {
          v153 = v152;
          operator delete(v152);
        }

        v68 = v7[1];
        if (v68)
        {
          do
          {
            v69 = v68;
            v68 = *v68;
          }

          while (v68);
        }

        else
        {
          do
          {
            v69 = v7[2];
            v5 = *v69 == v7;
            v7 = v69;
          }

          while (!v5);
        }

        v7 = v69;
        v4 = v80;
      }

      while (v69 != v156);
    }

    v70 = v157;
    v71 = v158;
    if (v157 == v158)
    {
      v72 = a4;
    }

    else
    {
      v72 = a4;
      while (!ULEndpointPlacementGenerator::placeEndpoints(std::vector<ULRFGroupPlacement> const&,std::vector<ULSegment> const&,std::unordered_map<boost::uuids::uuid,int> const&)::$_0::operator()<ULFingerprintPlacement>(v70))
      {
        v70 += 44;
        if (v70 == v71)
        {
          v70 = v71;
          goto LABEL_96;
        }
      }

      if (v70 != v71)
      {
        for (i = (v70 + 44); i != v71; i = (i + 44))
        {
          if (!ULEndpointPlacementGenerator::placeEndpoints(std::vector<ULRFGroupPlacement> const&,std::vector<ULSegment> const&,std::unordered_map<boost::uuids::uuid,int> const&)::$_0::operator()<ULFingerprintPlacement>(i))
          {
            v76 = *i;
            v77 = i[1];
            *(v70 + 28) = *(i + 28);
            *v70 = v76;
            *(v70 + 1) = v77;
            v70 += 44;
          }
        }
      }
    }

LABEL_96:
    v73 = v158;
    if (v70 != v158)
    {
      v73 = v70;
      v158 = v70;
    }

    *v72 = v157;
    v72[1] = v73;
    v72[2] = v159;
    v159 = 0;
    v158 = 0;
    v157 = 0;
    std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::destroy(&v155, v156[0]);
    if (v157)
    {
      v158 = v157;
      operator delete(v157);
    }
  }

  v74 = *MEMORY[0x277D85DE8];
}

void sub_259018FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45)
{
  free(a36);
  free(a39);
  free(a42);
  LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::~LBFGSBSolver(&a45);
  EndpointMinimizerFunc::~EndpointMinimizerFunc(&STACK[0x2D0]);
  v47 = *(v45 + 664);
  if (v47)
  {
    *(v45 + 672) = v47;
    operator delete(v47);
  }

  v48 = *(v45 + 688);
  if (v48)
  {
    *(v45 + 696) = v48;
    operator delete(v48);
  }

  v49 = *(v45 + 712);
  if (v49)
  {
    *(v45 + 720) = v49;
    operator delete(v49);
  }

  v50 = *(v45 + 736);
  if (v50)
  {
    *(v45 + 744) = v50;
    operator delete(v50);
  }

  v51 = *(v45 + 760);
  if (v51)
  {
    *(v45 + 768) = v51;
    operator delete(v51);
  }

  v52 = *(v45 + 784);
  if (v52)
  {
    *(v45 + 792) = v52;
    operator delete(v52);
  }

  v53 = *(v45 + 808);
  if (v53)
  {
    *(v45 + 816) = v53;
    operator delete(v53);
  }

  v54 = *(v45 + 832);
  if (v54)
  {
    *(v45 + 840) = v54;
    operator delete(v54);
  }

  v55 = *(v45 + 856);
  if (v55)
  {
    *(v45 + 864) = v55;
    operator delete(v55);
  }

  v56 = *(v45 + 880);
  if (v56)
  {
    *(v45 + 888) = v56;
    operator delete(v56);
  }

  v57 = *(v45 + 904);
  if (v57)
  {
    *(v45 + 912) = v57;
    operator delete(v57);
  }

  std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::destroy(&STACK[0x4C0], *(v45 + 936));
  v58 = *(v45 + 952);
  if (v58)
  {
    *(v45 + 960) = v58;
    operator delete(v58);
  }

  _Unwind_Resume(a1);
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
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1, v12);
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

uint64_t LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>(unsigned int **a1, uint64_t a2, unsigned int *a3, float *a4, uint64_t a5, uint64_t a6, float a7)
{
  v7 = a3[4];
  if (*(a5 + 16) != v7 || *(a6 + 16) != v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'lb' and 'ub' must have the same size as 'x'");
    __cxa_throw(exception, off_2798D4070, MEMORY[0x277D82610]);
  }

  v9 = a6;
  v10 = a5;
  LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::force_bounds(a3, a5, a6, a7);
  v13 = **a1;
  *(a1 + 2) = v13;
  *(a1 + 3) = 1065353216;
  *(a1 + 8) = v7;
  *(a1 + 9) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 2), (v13 * v7));
  *(a1 + 14) = v7;
  *(a1 + 15) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 5), (v13 * v7));
  *(a1 + 20) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 8), v13);
  *(a1 + 26) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 11), v13);
  *(a1 + 28) = 0;
  *(a1 + 29) = v13;
  *(a1 + 34) = 2 * v13;
  *(a1 + 35) = 2 * v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 15), (2 * v13 * 2 * v13));
  v14 = *(a1 + 34);
  v15 = *(a1 + 35);
  if (v15 * v14)
  {
    bzero(a1[15], 4 * v15 * v14);
  }

  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v17 = 0;
    v18 = a1[15];
    do
    {
      v18[v17] = 1065353216;
      v17 += v14 + 1;
      --v16;
    }

    while (v16);
  }

  v19 = (a1 + 35);
  *(a1 + 74) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 35), v7);
  *(a1 + 80) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 38), v7);
  *(a1 + 88) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 42), v7);
  v20 = (a1 + 45);
  *(a1 + 94) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 45), v7);
  v21 = (*a1)[3];
  if (v21 >= 1)
  {
    *(a1 + 68) = v21;
    cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 32), v21);
    LODWORD(v21) = (*a1)[3];
  }

  *a4 = EndpointMinimizerFunc::operator()(a2, a3, (a1 + 38));
  v22 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm(a3, (a1 + 38), v10, v9);
  *(a1 + 82) = v22;
  if (v21 >= 1)
  {
    if (!*(a1 + 68))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
    }

    *a1[32] = *a4;
    v22 = *(a1 + 82);
  }

  if (v22 <= *(*a1 + 1))
  {
    return 1;
  }

  v23 = a3[4];
  if (v23)
  {
    v24 = **a3 * **a3;
    if (v23 != 1)
    {
      v25 = 4 * v23;
      v26 = (*a3 + 4);
      v27 = v25 - 4;
      do
      {
        v28 = *v26++;
        v24 = v24 + (v28 * v28);
        v27 -= 4;
      }

      while (v27);
    }
  }

  else
  {
    v24 = 0.0;
  }

  if (v22 <= (*(*a1 + 2) * sqrtf(v24)))
  {
    return 1;
  }

  v189[0] = 0;
  v189[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v189, v7);
  v190 = v7;
  v187[0] = 0;
  v187[1] = 0;
  v188 = 0;
  memset(&v186, 0, sizeof(v186));
  memset(&__p, 0, sizeof(__p));
  LBFGSpp::Cauchy<float>::get_cauchy_point((a1 + 1), a3, (a1 + 38), v10, v9, v189, v187, &v186, &__p);
  v30 = v190;
  if (v190 != a3[4])
  {
    cva::Logger::instance(v29);
    v31 = *MEMORY[0x277CFD380];
    v161 = a3[4];
    cva::Logger::logInCategory();
    v30 = v190;
    if (v190 != a3[4])
    {
      goto LABEL_39;
    }
  }

  if (v30 != *(a1 + 94))
  {
    if (v189[0] == *v20 || *a3 == *v20)
    {
      v191 = 0;
      v192 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v191, v30);
      v43 = v190;
      v44 = v191;
      if (v190)
      {
        v45 = *a3;
        v46 = v189[0];
        v47 = 4 * v190;
        do
        {
          v48 = *v46++;
          v49 = v48;
          v50 = *v45++;
          *v44++ = v49 - v50;
          v47 -= 4;
        }

        while (v47);
        v44 = v191;
      }

      v51 = a1[45];
      v52 = a1[46];
      v53 = v192;
      a1[45] = v44;
      a1[46] = v53;
      v191 = v51;
      v192 = v52;
      *(a1 + 94) = v43;
      v193 = 0;
      free(v51);
      goto LABEL_45;
    }

    *(a1 + 94) = v30;
    cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 45), v30);
    v30 = v190;
    if (*(a1 + 94) != v190)
    {
      cva::Logger::instance(v41);
      v42 = *MEMORY[0x277CFD380];
      v157 = *(a1 + 94);
      cva::Logger::logInCategory();
      v30 = *(a1 + 94);
      if (v30 != v190)
      {
LABEL_39:
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }
  }

  if (v30)
  {
    v32 = *v20;
    v33 = v30;
    v34 = *a3;
    v35 = v189[0];
    v36 = 4 * v33;
    do
    {
      v37 = *v35++;
      v38 = v37;
      v39 = *v34++;
      *v32++ = v38 - v39;
      v36 -= 4;
    }

    while (v36);
  }

LABEL_45:
  cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::normalize<float,void>((a1 + 45));
  v182 = 0;
  v183 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v182, v7);
  v184 = v7;
  v179 = 0;
  v180 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v179, v7);
  v167 = v21;
  v168 = v7;
  v181 = v7;
  for (i = 1; ; ++i)
  {
    v54 = v20;
    if (v19 != a3)
    {
      v55 = a3[4];
      cva::MatrixData<float,0ul,0ul,false>::reserve(v19, v55);
      if (v55)
      {
        memcpy(*v19, *a3, 4 * v55);
      }

      *(a1 + 74) = a3[4];
    }

    v56 = *(a1 + 80);
    cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 42), v56);
    v57 = v10;
    v58 = v9;
    if (v56)
    {
      memcpy(a1[42], a1[38], 4 * v56);
    }

    v59 = v19;
    *(a1 + 88) = *(a1 + 80);
    v60 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a1 + 76, v54);
    v178 = *&v60;
    v62 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::max_step_size(a3, v54, v57, v58);
    v177 = v62;
    if (v178 >= 0.0 || (v63 = *a1, v62 <= *(*a1 + 8)))
    {
      v64 = v190;
      if (v190 != a3[4])
      {
        cva::Logger::instance(v61);
        v65 = *MEMORY[0x277CFD380];
        v162 = a3[4];
        cva::Logger::logInCategory();
        v64 = v190;
        if (v190 != a3[4])
        {
LABEL_154:
          __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }
      }

      if (v64 != *(a1 + 94))
      {
        if (v189[0] == *v54 || *a3 == *v54)
        {
          v191 = 0;
          v192 = 0;
          cva::MatrixData<float,0ul,0ul,false>::allocate(&v191, v64);
          v75 = v190;
          v76 = v191;
          if (v190)
          {
            v77 = *a3;
            v78 = v189[0];
            v79 = 4 * v190;
            do
            {
              v80 = *v78++;
              v81 = v80;
              v82 = *v77++;
              *v76++ = v81 - v82;
              v79 -= 4;
            }

            while (v79);
            v76 = v191;
          }

          v83 = a1[45];
          v84 = a1[46];
          v85 = v192;
          a1[45] = v76;
          a1[46] = v85;
          v191 = v83;
          v192 = v84;
          *(a1 + 94) = v75;
          v193 = 0;
          free(v83);
          goto LABEL_71;
        }

        *(a1 + 94) = v64;
        cva::MatrixData<float,0ul,0ul,false>::reserve(v54, v64);
        v64 = v190;
        if (*(a1 + 94) != v190)
        {
          cva::Logger::instance(v73);
          v74 = *MEMORY[0x277CFD380];
          v158 = *(a1 + 94);
          cva::Logger::logInCategory();
          v64 = *(a1 + 94);
          if (v64 != v190)
          {
            goto LABEL_154;
          }
        }
      }

      if (v64)
      {
        v66 = *v54;
        v67 = *a3;
        v68 = 4 * v64;
        v69 = v189[0];
        do
        {
          v70 = *v69++;
          v71 = v70;
          v72 = *v67++;
          *v66++ = v71 - v72;
          v68 -= 4;
        }

        while (v68);
      }

LABEL_71:
      v86 = **a1;
      *(a1 + 2) = v86;
      *(a1 + 3) = 1065353216;
      *(a1 + 8) = v168;
      *(a1 + 9) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 2), (v86 * v168));
      *(a1 + 14) = v168;
      *(a1 + 15) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 5), (v86 * v168));
      *(a1 + 20) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 8), v86);
      *(a1 + 26) = v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 11), v86);
      *(a1 + 28) = 0;
      *(a1 + 29) = v86;
      *(a1 + 34) = 2 * v86;
      *(a1 + 35) = 2 * v86;
      cva::MatrixData<float,0ul,0ul,false>::reserve((a1 + 15), (2 * v86 * 2 * v86));
      v87 = *(a1 + 34);
      v88 = *(a1 + 35);
      if (v88 * v87)
      {
        bzero(a1[15], 4 * v88 * v87);
      }

      if (v88 >= v87)
      {
        v89 = v87;
      }

      else
      {
        v89 = v88;
      }

      if (v89)
      {
        v90 = 0;
        v91 = a1[15];
        do
        {
          v91[v90] = 1065353216;
          v90 += v87 + 1;
          --v89;
        }

        while (v89);
      }

      v92 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a1 + 76, v54);
      v178 = *&v92;
      v62 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::max_step_size(a3, v54, v57, v58);
      v63 = *a1;
    }

    if (v62 >= *(v63 + 36))
    {
      v62 = *(v63 + 36);
    }

    v177 = v62;
    v176 = fminf(v62, 1.0);
    v19 = v59;
    v20 = v54;
    LBFGSpp::LineSearchMoreThuente<float>::LineSearch<EndpointMinimizerFunc,LBFGSpp::LBFGSBParam<float>>(a2, v63, v59, v54, &v177, &v176, a4, (a1 + 38), &v178, a3);
    v9 = v58;
    v10 = v57;
    v40 = i;
    v94 = LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm(a3, (a1 + 38), v57, v9);
    *(a1 + 82) = v94;
    v95 = *a1;
    if (v94 <= *(*a1 + 1))
    {
      break;
    }

    v96 = a3[4];
    if (v96)
    {
      v97 = **a3 * **a3;
      if (v96 != 1)
      {
        v98 = (*a3 + 4);
        v99 = 4 * v96 - 4;
        do
        {
          v100 = *v98++;
          v97 = v97 + (v100 * v100);
          v99 -= 4;
        }

        while (v99);
      }
    }

    else
    {
      v97 = 0.0;
    }

    if (v94 <= (*(v95 + 8) * sqrtf(v97)))
    {
      break;
    }

    if (v167 >= 1)
    {
      v101 = i % v167;
      if (*(a1 + 68) <= v101)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v102 = a1[32];
      v103 = *a4;
      if (i >= v167)
      {
        v104 = *&v102[v101];
        v105 = vabds_f32(v104, v103);
        v106 = fabsf(v103);
        v107 = fabsf(v104);
        if (v106 >= v107)
        {
          v107 = v106;
        }

        if (v107 < 1.0)
        {
          v107 = 1.0;
        }

        if (v105 <= (*(v95 + 16) * v107))
        {
          break;
        }
      }

      *&v102[v101] = v103;
    }

    v108 = *(v95 + 20);
    if (v108 && i >= v108)
    {
      break;
    }

    if (v96 == *(a1 + 74))
    {
      v109 = a3[4];
    }

    else
    {
      cva::Logger::instance(v93);
      v110 = *MEMORY[0x277CFD380];
      v163 = *(a1 + 74);
      v159 = a3[4];
      v93 = cva::Logger::logInCategory();
      v109 = a3[4];
      if (v109 != *(a1 + 74))
      {
        goto LABEL_152;
      }
    }

    if (v109 == v184)
    {
      goto LABEL_105;
    }

    if (*a3 != v182 && *v19 != v182)
    {
      v184 = v109;
      cva::MatrixData<float,0ul,0ul,false>::reserve(&v182, v109);
      v109 = a3[4];
      if (v184 != v109)
      {
        cva::Logger::instance(v93);
        v118 = *MEMORY[0x277CFD380];
        v164 = a3[4];
        v93 = cva::Logger::logInCategory();
        v109 = v184;
        if (v184 != a3[4])
        {
LABEL_152:
          __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }
      }

LABEL_105:
      if (v109)
      {
        v111 = v182;
        v112 = *v19;
        v113 = 4 * v109;
        v114 = *a3;
        do
        {
          v115 = *v114++;
          v116 = v115;
          v117 = *v112++;
          *v111++ = v116 - v117;
          v113 -= 4;
        }

        while (v113);
      }

      goto LABEL_119;
    }

    v191 = 0;
    v192 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v191, v109);
    v119 = a3[4];
    v120 = v191;
    if (v119)
    {
      v121 = *v19;
      v122 = *a3;
      v123 = 4 * v119;
      do
      {
        v124 = *v122++;
        v125 = v124;
        v126 = *v121++;
        *v120++ = v125 - v126;
        v123 -= 4;
      }

      while (v123);
      v120 = v191;
    }

    v127 = v182;
    v128 = v183;
    v182 = v120;
    v183 = v192;
    v191 = v127;
    v192 = v128;
    v184 = v119;
    v193 = 0;
    free(v127);
LABEL_119:
    v129 = *(a1 + 80);
    if (v129 != *(a1 + 88))
    {
      cva::Logger::instance(v93);
      v130 = *MEMORY[0x277CFD380];
      v165 = *(a1 + 88);
      v160 = *(a1 + 80);
      cva::Logger::logInCategory();
      v129 = *(a1 + 80);
      if (v129 != *(a1 + 88))
      {
LABEL_153:
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    if (v129 == v181)
    {
      goto LABEL_122;
    }

    if (a1[38] != v179 && a1[42] != v179)
    {
      v181 = v129;
      cva::MatrixData<float,0ul,0ul,false>::reserve(&v179, v129);
      v129 = *(a1 + 80);
      if (v181 != v129)
      {
        cva::Logger::instance(v138);
        v139 = *MEMORY[0x277CFD380];
        v166 = *(a1 + 80);
        cva::Logger::logInCategory();
        v129 = v181;
        if (v181 != *(a1 + 80))
        {
          goto LABEL_153;
        }
      }

LABEL_122:
      if (v129)
      {
        v131 = v179;
        v132 = a1[42];
        v133 = 4 * v129;
        v134 = a1[38];
        do
        {
          v135 = *v134++;
          v136 = v135;
          v137 = *v132++;
          *v131++ = v136 - v137;
          v133 -= 4;
        }

        while (v133);
      }

      goto LABEL_136;
    }

    v191 = 0;
    v192 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v191, v129);
    v140 = *(a1 + 80);
    v141 = v191;
    if (v140)
    {
      v142 = a1[42];
      v143 = a1[38];
      v144 = 4 * v140;
      do
      {
        v145 = *v143++;
        v146 = v145;
        v147 = *v142++;
        *v141++ = v146 - v147;
        v144 -= 4;
      }

      while (v144);
      v141 = v191;
    }

    v148 = v179;
    v149 = v180;
    v179 = v141;
    v180 = v192;
    v191 = v148;
    v192 = v149;
    v181 = v140;
    v193 = 0;
    free(v148);
LABEL_136:
    v150 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(&v182, &v179);
    if (v181)
    {
      v151 = *v179 * *v179;
      if (v181 != 1)
      {
        v152 = (v179 + 4);
        v153 = 4 * v181 - 4;
        do
        {
          v154 = *v152++;
          v151 = v151 + (v154 * v154);
          v153 -= 4;
        }

        while (v153);
      }
    }

    else
    {
      v151 = 0.0;
    }

    if (*&v150 > (v151 * 0.00000011921))
    {
      LODWORD(v191) = v184;
      v192 = v182;
      v193 = v184;
      v194 = 0;
      v172 = v181;
      v173 = v179;
      v174 = v181;
      v175 = 0;
      LBFGSpp::BFGSMat<float,true>::add_correction(a1 + 2, &v191, &v172);
    }

    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::force_bounds(a3, v57, v9, *&v150);
    LBFGSpp::Cauchy<float>::get_cauchy_point((a1 + 1), a3, (a1 + 38), v57, v9, v189, v187, &v186, &__p);
    LBFGSpp::SubspaceMin<float>::subspace_minimize(a1 + 2, a3, v189, a1 + 76, v57, v9, v187, &v186, &__p, (*a1)[6], v20);
  }

  free(v179);
  free(v182);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v186.__begin_)
  {
    v186.__end_ = v186.__begin_;
    operator delete(v186.__begin_);
  }

  free(v187[0]);
  free(v189[0]);
  return v40;
}

void sub_25901A0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  free(a26);
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  free(*(v33 - 176));
  free(*(v33 - 152));
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void ULEndpointPlacementGenerator::spatialClusterFingperprintPlacements(void *a1, int16x4_t a2)
{
  v93 = *MEMORY[0x277D85DE8];
  if (a1[1] != *a1)
  {
    v2 = a1;
    CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate<std::vector<ULFingerprintPlacement>,double (*)(ULFingerprintPlacement const&,ULFingerprintPlacement const&)>(&v79, a1, euclideanDistanceBetweenPlacements, a2);
    ULAlgorithms::createLinkageFunction(1, v89);
    std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__value_func[abi:ne200100](v88, v89);
    CLHierarchicalClustering::CLHierarchicalClustering(v78, &v79, v88);
    std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](v88);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    p_superclass = ULRapportMonitor.superclass;
    v4 = +[ULDefaultsSingleton shared];
    v72 = [v4 defaultsDictionary];

    v5 = 0x277CCA000uLL;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSpatialClusterDistanceInMetersVector"];
    v7 = [v72 objectForKey:v6];
    v8 = v7;
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = v7;
      __src[1] = 0;
      v83 = 0;
      __src[0] = 0;
      v71 = v9;
      std::vector<double>::reserve(__src, [v9 count]);
      v69 = v2;
      v70 = v6;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v10 = v71;
      v11 = [v10 countByEnumeratingWithState:&v84 objects:&v90 count:16];
      if (v11)
      {
        v12 = *v85;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v85 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v84 + 1) + 8 * i) doubleValue];
            v15 = __src[1];
            if (__src[1] >= v83)
            {
              v17 = __src[0];
              v18 = __src[1] - __src[0];
              v19 = (__src[1] - __src[0]) >> 3;
              v20 = v19 + 1;
              if ((v19 + 1) >> 61)
              {
                std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
              }

              v21 = v83 - __src[0];
              if ((v83 - __src[0]) >> 2 > v20)
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
                std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(__src, v22);
              }

              *(8 * v19) = v14;
              v16 = (8 * v19 + 8);
              memcpy(0, v17, v18);
              v23 = __src[0];
              __src[0] = 0;
              __src[1] = v16;
              v83 = 0;
              if (v23)
              {
                operator delete(v23);
              }

              v7 = v8;
            }

            else
            {
              *__src[1] = v14;
              v16 = v15 + 8;
            }

            __src[1] = v16;
          }

          v11 = [v10 countByEnumeratingWithState:&v84 objects:&v90 count:16];
        }

        while (v11);
      }

      p_superclass = (ULRapportMonitor + 8);
      v5 = 0x277CCA000;
      v2 = v69;
      v6 = v70;

      *__p = *__src;
      v74 = v83;
    }

    else
    {
      v90 = 0uLL;
      *&v91 = 0;
      std::vector<double>::reserve(&v90, 1uLL);
      v24 = *(&v90 + 1);
      if (*(&v90 + 1) >= v91)
      {
        v26 = v90;
        v27 = *(&v90 + 1) - v90;
        v28 = (*(&v90 + 1) - v90) >> 3;
        v29 = v28 + 1;
        if ((v28 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v30 = v91 - v90;
        if ((v91 - v90) >> 2 > v29)
        {
          v29 = v30 >> 2;
        }

        v31 = v30 >= 0x7FFFFFFFFFFFFFF8;
        v32 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v31)
        {
          v32 = v29;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v90, v32);
        }

        v33 = (8 * v28);
        v34 = &v33[-((*(&v90 + 1) - v90) >> 3)];
        *v33 = 0x4000000000000000;
        v25 = v33 + 1;
        memcpy(v34, v26, v27);
        v35 = v90;
        *&v90 = v34;
        *(&v90 + 1) = v25;
        *&v91 = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        **(&v90 + 1) = 0x4000000000000000;
        v25 = (v24 + 8);
      }

      __p[0] = v90;
      __p[1] = v25;
      v74 = v91;
    }

    v36 = [p_superclass + 269 shared];
    v37 = [v36 defaultsDictionary];

    v38 = [*(v5 + 3240) stringWithUTF8String:"ULHomeSlamSpatialSmallClusterDistanceThreshold"];
    v39 = [v37 objectForKey:v38];
    if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v39 doubleValue];
    }

    else
    {
      [&unk_286A72C10 doubleValue];
    }

    v41 = v40;

    v42 = [p_superclass + 269 shared];
    v43 = [v42 defaultsDictionary];

    v44 = [*(v5 + 3240) stringWithUTF8String:"ULHomeSlamSpatialSmallClusterSize"];
    v45 = [v43 objectForKey:v44];
    if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v46 = [v45 unsignedLongValue];
    }

    else
    {
      v46 = [&unk_286A71568 unsignedLongValue];
    }

    v47 = v46;

    CLHierarchicalClustering::getClusterLabels(v78, &v75, __p, v47, 1uLL, v41);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v90 = 0u;
    v91 = 0u;
    v92 = 1065353216;
    v48 = v75;
    if (v76 != v75)
    {
      v49 = 0;
      v50 = 0;
      do
      {
        if (!std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(&v90, &v48[v49]))
        {
          *&v84 = v75 + v49;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v90, (v75 + v49))[3] = 0;
        }

        *&v84 = v75 + v49;
        v51 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v90, (v75 + v49));
        ++v51[3];
        ++v50;
        v48 = v75;
        v49 += 8;
      }

      while (v50 < (v76 - v75) >> 3);
    }

    v52 = [p_superclass + 269 shared];
    v53 = [v52 defaultsDictionary];

    v54 = [*(v5 + 3240) stringWithUTF8String:"ULHomeSlamSpatialClusterMinimumSize"];
    v55 = [v53 objectForKey:v54];
    if (v55 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v56 = [v55 unsignedLongValue];
    }

    else
    {
      v56 = [&unk_286A71550 unsignedLongValue];
    }

    v57 = v56;

    v58 = v75;
    if (v76 != v75)
    {
      v59 = 0;
      do
      {
        *&v84 = &v58[8 * v59];
        v60 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v90, v84);
        v58 = v75;
        if (v60[3] >= v57)
        {
          v61 = *v2 + 44 * v59;
          v62 = *(v75 + v59);
          if ((*(v61 + 32) & 1) == 0)
          {
            *(v61 + 32) = 1;
          }

          *(v61 + 28) = v62;
        }

        ++v59;
      }

      while (v59 < (v76 - v58) >> 3);
    }

    v84 = 0u;
    v85 = 0u;
    LODWORD(v86) = 1065353216;
    v63 = v2[1];
    if (*v2 != v63)
    {
      v64 = 0;
      v65 = (*v2 + 28);
      do
      {
        if (v65[4] == 1)
        {
          if (std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::find<int>(&v84, v65))
          {
            if ((v65[4] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            __src[0] = v65;
            v66 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v84, v65);
          }

          else
          {
            if ((v65[4] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            __src[0] = v65;
            *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v84, v65) + 5) = v64;
            if ((v65[4] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            __src[0] = v65;
            v66 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v84, v65);
            ++v64;
          }

          *v65 = *(v66 + 5);
          v65[4] = 1;
        }

        v67 = v65 + 16;
        v65 += 44;
      }

      while (v67 != v63);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v84);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v90);
    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](v89);
    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }
  }

  v68 = *MEMORY[0x277D85DE8];
}

void sub_25901AA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  v47 = *(v45 - 240);
  if (v47)
  {
    *(v45 - 232) = v47;
    operator delete(v47);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](&a43);
  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

double euclideanDistanceBetweenPlacements(float *a1, float *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 - v3;
  v5 = a1[2];
  v6 = a2[2];
  v7 = fmaxf(vabds_f32(*a1, *a2), fmaxf(vabds_f32(v2, v3), vabds_f32(v5, v6)));
  if (v7 > 1.8447e19)
  {
    v8 = 360710144;
LABEL_5:
    v9 = *&v8;
    return (sqrtf((((v4 * v9) * (v4 * v9)) + (((*a1 - *a2) * v9) * ((*a1 - *a2) * v9))) + (((v5 - v6) * v9) * ((v5 - v6) * v9))) / v9);
  }

  v9 = 1.0;
  if (v7 < 5.421e-20)
  {
    v8 = 1769996288;
    goto LABEL_5;
  }

  return (sqrtf((((v4 * v9) * (v4 * v9)) + (((*a1 - *a2) * v9) * ((*a1 - *a2) * v9))) + (((v5 - v6) * v9) * ((v5 - v6) * v9))) / v9);
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v2 == v9)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v4)
          {
            v9 %= *&v4;
          }
        }

        else
        {
          v9 &= *&v4 - 1;
        }

        if (v9 != v6)
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

{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v4)
          {
            v9 %= *&v4;
          }
        }

        else
        {
          v9 &= *&v4 - 1;
        }

        if (v9 != v6)
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

uint64_t std::vector<ULEndpointPlacementGenerator::EndpointConstraint>::__init_with_size[abi:ne200100]<ULEndpointPlacementGenerator::EndpointConstraint*,ULEndpointPlacementGenerator::EndpointConstraint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULParticle>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25901ADFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_4()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void EndpointMinimizerFunc::EndpointMinimizerFunc(EndpointMinimizerFunc *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, const float *a9, const float *a10, const float *a11, const float *a12, const float *a13, const float *a14, const float *a15, __int128 a16, const float *a17, unint64_t a18)
{
  v19 = 0;
  *(this + 4) = 1000;
  *this = 0xD00000003;
  *(this + 1) = 0x3D4CCCCD3727C5ACLL;
  *(this + 20) = 0xC2C8000042C80000;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 10) = a5;
  *(this + 11) = a6;
  *(this + 12) = a7;
  *(this + 13) = a8;
  *(this + 7) = a9;
  *(this + 8) = a10;
  *(this + 9) = a11;
  *(this + 10) = a12;
  *(this + 11) = a13;
  *(this + 12) = a14;
  *(this + 13) = a15;
  *(this + 7) = a16;
  *(this + 16) = a17;
  *(this + 17) = a18;
  *(this + 9) = 0u;
  v20 = this + 144;
  v21 = this + 168;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  do
  {
    std::vector<float>::vector[abi:ne200100](&__p, a18);
    std::vector<std::vector<float>>::push_back[abi:ne200100](v20, &__p);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    ++v19;
  }

  while (v19 < *this);
  if (*(this + 1) >= 1)
  {
    v22 = 0;
    do
    {
      std::vector<float>::vector[abi:ne200100](&__p, a18);
      std::vector<std::vector<float>>::push_back[abi:ne200100](v21, &__p);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      ++v22;
    }

    while (v22 < *(this + 1));
  }
}

void sub_25901AF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
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
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
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
    result = std::__split_buffer<std::vector<boost::uuids::uuid>>::~__split_buffer(v16);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25901B1C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25901B2EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULFingerprintPlacement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5D1745D1745D175)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::~LBFGSBSolver(void **a1)
{
  free(a1[45]);
  free(a1[42]);
  free(a1[38]);
  free(a1[35]);
  free(a1[32]);
  LBFGSpp::BFGSMat<float,true>::~BFGSMat((a1 + 1));
  return a1;
}

uint64_t LBFGSpp::BFGSMat<float,true>::~BFGSMat(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  free(*(a1 + 192));
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  free(*(a1 + 144));
  free(*(a1 + 112));
  free(*(a1 + 80));
  free(*(a1 + 56));
  free(*(a1 + 32));
  free(*(a1 + 8));
  return a1;
}

uint64_t LBFGSpp::BKLDLT<float>::~BKLDLT(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  free(*(a1 + 56));
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  free(*(a1 + 8));
  return a1;
}

void EndpointMinimizerFunc::~EndpointMinimizerFunc(EndpointMinimizerFunc *this)
{
  v2 = (this + 168);
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 144);
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

BOOL ULEndpointPlacementGenerator::placeEndpoints(std::vector<ULRFGroupPlacement> const&,std::vector<ULSegment> const&,std::unordered_map<boost::uuids::uuid,int> const&)::$_0::operator()<ULFingerprintPlacement>(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperFingerprintPointLocationMaxCost"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 floatValue];
  }

  else
  {
    [&unk_286A72C20 floatValue];
  }

  v7 = v6;

  return v1 >= v7;
}

void std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3);
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = bswap64(v4[4]);
        if (v6 == v8)
        {
          break;
        }

        v9 = v6;
LABEL_9:
        if (v9 < v8)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_22;
        }
      }

      v9 = bswap64(a3[1]);
      v8 = bswap64(v7[5]);
      if (v9 != v8)
      {
        goto LABEL_9;
      }

LABEL_13:
      v11 = bswap64(v7[4]);
      v12 = bswap64(*a3);
      if (v11 != v12 || (v11 = bswap64(v7[5]), v12 = bswap64(a3[1]), v11 != v12))
      {
        v13 = v11 < v12 ? -1 : 1;
        if (v13 < 0)
        {
          result = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }
      }

      goto LABEL_22;
    }
  }

  v7 = result;
LABEL_22:
  *a2 = v7;
  return result;
}

uint64_t LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::LBFGSBSolver(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 252) = 1;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  LBFGSpp::LBFGSBParam<float>::check_param(a2);
  return a1;
}

void sub_25901B958(_Unwind_Exception *a1)
{
  free(v1[45]);
  free(v1[42]);
  free(v1[38]);
  free(v1[35]);
  free(v1[32]);
  LBFGSpp::BFGSMat<float,true>::~BFGSMat((v1 + 1));
  _Unwind_Resume(a1);
}

float LBFGSpp::LBFGSBParam<float>::check_param(uint64_t a1)
{
  if (*a1 <= 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'m' must be positive");
    goto LABEL_28;
  }

  if (*(a1 + 4) < 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'epsilon' must be non-negative");
    goto LABEL_28;
  }

  if (*(a1 + 8) < 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'epsilon_rel' must be non-negative");
    goto LABEL_28;
  }

  if ((*(a1 + 12) & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'past' must be non-negative");
    goto LABEL_28;
  }

  if (*(a1 + 16) < 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'delta' must be non-negative");
    goto LABEL_28;
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'max_iterations' must be non-negative");
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'max_submin' must be non-negative");
    goto LABEL_28;
  }

  if (*(a1 + 28) <= 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'max_linesearch' must be positive");
    goto LABEL_28;
  }

  v1 = *(a1 + 32);
  if (v1 < 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'min_step' must be positive");
    goto LABEL_28;
  }

  if (*(a1 + 36) < v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'max_step' must be greater than 'min_step'");
    goto LABEL_28;
  }

  v2 = *(a1 + 40);
  if (v2 <= 0.0 || v2 >= 0.5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'ftol' must satisfy 0 < ftol < 0.5");
    goto LABEL_28;
  }

  v3 = *(a1 + 44);
  if (v3 <= v2 || (result = 1.0, v3 >= 1.0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'wolfe' must satisfy ftol < wolfe < 1");
LABEL_28:
    __cxa_throw(exception, off_2798D4070, MEMORY[0x277D82610]);
  }

  return result;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

uint64_t cva::MatrixData<float,0ul,0ul,false>::allocate(void **a1, uint64_t a2)
{
  if (*a1)
  {
    cva::MatrixData<float,0ul,0ul,false>::allocate();
  }

  v3 = (4 * a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  a1[1] = (v3 >> 2);
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v3, 0xE1AC2527uLL);
  v5 = memptr;
  *a1 = memptr;
  if (!v5)
  {
    cva::MatrixData<float,0ul,0ul,false>::allocate();
  }

  return result;
}

float LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::force_bounds(uint64_t a1, uint64_t a2, uint64_t a3, float result)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a2 + 16);
    v7 = *a2;
    v8 = *(a3 + 16);
    v9 = *a3;
    do
    {
      if (!v6)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v10 = *v5;
      if (*v5 < *v7)
      {
        v10 = *v7;
      }

      *v5 = v10;
      if (!v8)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v11 = v9 + 1;
      if (*v9 >= v10)
      {
        v9 = v5;
      }

      result = *v9;
      *v5++ = *v9;
      --v8;
      --v6;
      ++v7;
      v9 = v11;
      --v4;
    }

    while (v4);
  }

  return result;
}

float EndpointMinimizerFunc::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    EndpointMinimizerFunc::operator()();
  }

  v6 = EndpointMinimizerFunc::targetFuncValue(a1, a2);
  v7 = *(a2 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(__dst, v7);
  if (v7)
  {
    memcpy(__dst[0], *a2, 4 * v7);
  }

  v8 = *(a2 + 16);
  v14 = v8;
  if (v8)
  {
    v9 = 0;
    do
    {
      if (v9 >= v8)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      *(__dst[0] + v9) = *(a1 + 8) + *(__dst[0] + v9);
      v10 = EndpointMinimizerFunc::targetFuncValue(a1, __dst);
      if (v9 >= *(a3 + 16) || (*(*a3 + 4 * v9) = (v10 - v6) / *(a1 + 8), v8 = v14, v9 >= v14))
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v11 = __dst[0];
      *(__dst[0] + v9) = *(__dst[0] + v9) - *(a1 + 8);
      ++v9;
    }

    while (v9 < *(a2 + 16));
  }

  else
  {
    v11 = __dst[0];
  }

  free(v11);
  return v6;
}

float LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm(cva::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 4);
  if (v8 != *(a2 + 16))
  {
    cva::Logger::instance(a1);
    v9 = *MEMORY[0x277CFD380];
    v37 = *(a2 + 16);
    v36 = *(a1 + 4);
    cva::Logger::logInCategory();
    v8 = *(a1 + 4);
    if (v8 != *(a2 + 16))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
    }
  }

  v38[0] = 0;
  v38[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v38, v8);
  v10 = *(a1 + 4);
  v39 = v10;
  if (!v10)
  {
    __assert_rtn("max", "matrixfun.h", 2898, "(0 < mat.ref().elements()) || cva::detail::assertMessage(The minimum of no elements is undefined.)");
  }

  v11 = v38[0];
  v12 = *a2;
  v13 = *a1;
  v14 = 4 * v10;
  v15 = 4 * v10;
  do
  {
    v16 = *v13++;
    v17 = v16;
    v18 = *v12++;
    *v11++ = v17 - v18;
    v15 -= 4;
  }

  while (v15);
  v19 = v38[0];
  v20 = *(a3 + 16);
  v21 = *a3;
  v22 = *(a4 + 16);
  v23 = v10;
  v24 = *a4;
  do
  {
    if (!v20)
    {
      goto LABEL_22;
    }

    v25 = *v19;
    if (*v19 < *v21)
    {
      v25 = *v21;
    }

    *v19 = v25;
    if (!v22)
    {
LABEL_22:
      __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
    }

    v26 = v24 + 1;
    if (*v24 >= v25)
    {
      v24 = v19;
    }

    *v19++ = *v24;
    --v22;
    --v20;
    ++v21;
    v24 = v26;
    --v23;
  }

  while (v23);
  v27 = 0;
  v28 = v38[0];
  v29 = *a1;
  do
  {
    v28[v27 / 4] = v28[v27 / 4] - v29[v27 / 4];
    v27 += 4;
  }

  while (v14 != v27);
  v30 = fabsf(*v28);
  if (v10 != 1)
  {
    v31 = v28 + 1;
    v32 = v14 - 4;
    do
    {
      v33 = *v31++;
      v34 = fabsf(v33);
      if (v30 < v34)
      {
        v30 = v34;
      }

      v32 -= 4;
    }

    while (v32);
  }

  free(v28);
  return v30;
}

void LBFGSpp::Cauchy<float>::get_cauchy_point(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::vector<int> *a8, std::vector<int> *a9)
{
  v16 = *(a2 + 16);
  *(a6 + 16) = v16;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a6, v16);
  if (a6 != a2)
  {
    v17 = *(a2 + 16);
    cva::MatrixData<float,0ul,0ul,false>::reserve(a6, v17);
    if (v17)
    {
      memcpy(*a6, *a2, 4 * v17);
    }

    *(a6 + 16) = *(a2 + 16);
  }

  v18 = (2 * *(a1 + 104));
  *(a7 + 16) = v18;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a7, v18);
  v19 = *(a7 + 16);
  if (v19)
  {
    bzero(*a7, 4 * v19);
  }

  a8->__end_ = a8->__begin_;
  std::vector<int>::reserve(a8, v16);
  a9->__end_ = a9->__begin_;
  std::vector<int>::reserve(a9, v16);
  v132[0] = 0;
  v132[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v132, v16);
  v133 = v16;
  v130[0] = 0;
  v130[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v130, v16);
  v131 = v16;
  memset(&v129, 0, sizeof(v129));
  std::vector<int>::reserve(&v129, v16);
  LODWORD(v127[0]) = 0;
  if (v16 >= 1)
  {
    v20 = 0;
    do
    {
      if (*(a4 + 16) <= v20 || *(a5 + 16) <= v20)
      {
LABEL_126:
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v21 = *(*a5 + 4 * v20);
      if (*(*a4 + 4 * v20) == v21)
      {
        if (v133 <= v20)
        {
          goto LABEL_126;
        }

        v22 = 0;
        v23 = (v132[0] + 4 * v20);
        *v23 = 0.0;
      }

      else
      {
        if (*(a3 + 16) <= v20)
        {
          goto LABEL_126;
        }

        v24 = *(*a3 + 4 * v20);
        if (v24 >= 0.0)
        {
          if (v24 <= 0.0)
          {
            if (v133 <= v20)
            {
              goto LABEL_126;
            }

            v23 = (v132[0] + 4 * v20);
            *v23 = INFINITY;
LABEL_37:
            if (*(a3 + 16) <= v20)
            {
LABEL_130:
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            v27 = -*(*a3 + 4 * v20);
            v22 = 1;
            goto LABEL_25;
          }

          if (*(a2 + 16) <= v20)
          {
            goto LABEL_126;
          }

          v25 = v133;
          v21 = *(*a4 + 4 * v20);
        }

        else
        {
          if (*(a2 + 16) <= v20)
          {
            goto LABEL_126;
          }

          v25 = v133;
        }

        if (v25 <= v20)
        {
          goto LABEL_126;
        }

        v23 = (v132[0] + 4 * v20);
        v26 = (*(*a2 + 4 * v20) - v21) / v24;
        *v23 = v26;
        if (v26 != 0.0)
        {
          goto LABEL_37;
        }

        v22 = 0;
      }

      v27 = 0.0;
LABEL_25:
      if (v131 <= v20)
      {
        goto LABEL_130;
      }

      *(v130[0] + v20) = v27;
      v28 = v22 ^ 1;
      if (*v23 == INFINITY)
      {
        v28 = 0;
      }

      if ((v28 & 1) == 0)
      {
        if (*v23 == INFINITY)
        {
          v29 = a9;
        }

        else
        {
          v29 = &v129;
        }

        std::vector<int>::push_back[abi:ne200100](&v29->__begin_, v127);
      }

      v20 = LODWORD(v127[0]) + 1;
      LODWORD(v127[0]) = v20;
    }

    while (v20 < v16);
  }

  v30 = 126 - 2 * __clz(v129.__end_ - v129.__begin_);
  v127[0] = v132[0];
  if (v129.__end_ == v129.__begin_)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  std::__introsort<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,false>(v129.__begin_, v129.__end_, v127, v31, 1);
  begin = v129.__begin_;
  v33 = (v129.__end_ - v129.__begin_) >> 2;
  v34 = a9->__end_ - a9->__begin_;
  v113 = v34 >> 2;
  if ((v34 >> 2) > 0 || v33 >= 1)
  {
    v127[0] = 0;
    v127[1] = 0;
    v128 = 0;
    LBFGSpp::BFGSMat<float,true>::apply_Wtv(a1, v130, v127);
    if (v131)
    {
      v35 = *v130[0] * *v130[0];
      if (v131 != 1)
      {
        v36 = (v130[0] + 4);
        v37 = 4 * v131 - 4;
        do
        {
          v38 = *v36++;
          v35 = v35 + (v38 * v38);
          v37 -= 4;
        }

        while (v37);
      }
    }

    else
    {
      v35 = 0.0;
    }

    v125[0] = 0;
    v125[1] = 0;
    v126 = 0;
    LBFGSpp::BFGSMat<float,true>::apply_Mv(a1, v127, v125);
    v39 = *(a1 + 4);
    v40 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(v127, v125);
    v41 = *&v40;
    if (v33 < 1)
    {
      v43 = INFINITY;
    }

    else
    {
      v42 = *v129.__begin_;
      if (v133 <= v42)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v43 = *(v132[0] + v42);
    }

    v124 = v43;
    v44 = (2 * *(a1 + 104));
    v121 = 0;
    v122 = 0;
    v45 = cva::MatrixData<float,0ul,0ul,false>::allocate(&v121, v44);
    v112 = v34;
    v46 = -v35;
    v47 = -(v41 - (v39 * v35));
    v48 = v35 / v47;
    v123 = v44;
    if ((v35 / v47) >= v43)
    {
      v51 = 0;
      while (1)
      {
        v52 = *(a7 + 16);
        if (v52 != v128)
        {
          cva::Logger::instance(v45);
          v53 = *MEMORY[0x277CFD380];
          v110 = *(a7 + 16);
          cva::Logger::logInCategory();
          v52 = *(a7 + 16);
          if (v52 != v128)
          {
            __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
          }
        }

        if (v52)
        {
          v54 = *a7;
          v55 = v127[0];
          v56 = 4 * v52;
          do
          {
            v57 = *v55++;
            *v54 = (v43 * v57) + *v54;
            ++v54;
            v56 -= 4;
          }

          while (v56);
        }

        v45 = LBFGSpp::Cauchy<float>::search_greater(v132, &v129, &v124, v51);
        v49 = v45;
        if (!v113 && v45 == v33)
        {
          break;
        }

        v46 = v46 + (v43 * v47);
        if (v51 < v45)
        {
          v51 = v51;
          do
          {
            v58 = v129.__begin_[v51];
            v120 = v58;
            if (v131 <= v58 || (*(v130[0] + v58) <= 0.0 ? (v59 = *(a4 + 16), v60 = a4) : (v59 = *(a5 + 16), v60 = a5), v59 <= v58 || *(a6 + 16) <= v58))
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            v61 = *(*v60 + 4 * v58);
            *(*a6 + 4 * v58) = v61;
            if (*(a2 + 16) <= v58)
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            v116 = v46;
            if (*(a3 + 16) <= v58)
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            v115 = v47;
            v62 = *(*a2 + 4 * v58);
            v63 = *(*a3 + 4 * v58);
            LBFGSpp::BFGSMat<float,true>::Wb(a1, v58, &v117);
            v64 = v121;
            v65 = v122;
            v121 = v117;
            v122 = v118;
            v117 = v64;
            v118 = v65;
            v123 = v119;
            v119 = 0;
            free(v64);
            LBFGSpp::BFGSMat<float,true>::apply_Mv(a1, &v121, v125);
            v66 = *(a1 + 4);
            v67 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(v125, a7);
            v68 = *&v67;
            v69 = *(a1 + 4);
            v70 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(v125, v127);
            v71 = *&v70;
            v73 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(v125, &v121);
            v74 = *&v73;
            v75 = v128;
            if (v128 != v123)
            {
              cva::Logger::instance(v72);
              v76 = *MEMORY[0x277CFD380];
              cva::Logger::logInCategory();
              v75 = v128;
              if (v128 != v123)
              {
                __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
              }
            }

            if (v75)
            {
              v77 = v127[0];
              v78 = v121;
              v79 = 4 * v75;
              do
              {
                v80 = *v78++;
                *v77 = (v63 * v80) + *v77;
                ++v77;
                v79 -= 4;
              }

              while (v79);
            }

            if (v131 <= v120)
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            *(v130[0] + v120) = 0;
            std::vector<int>::push_back[abi:ne200100](&a8->__begin_, &v120);
            v46 = v116 + (((v63 * v63) + ((v63 * v66) * (v61 - v62))) - (v63 * v68));
            v47 = v115 - ((((v63 + v63) * v71) + (v69 * (v63 * v63))) + ((v63 * v63) * v74));
            ++v51;
          }

          while (v49 != v51);
        }

        v50 = v124;
        v48 = -v46 / v47;
        if (v49 < v33)
        {
          v81 = v129.__begin_[v49];
          if (v133 <= v81)
          {
            __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
          }

          v124 = *(v132[0] + v81);
          v43 = v124 - v50;
          v51 = v49;
          if (v48 >= (v124 - v50))
          {
            continue;
          }
        }

        goto LABEL_84;
      }

      v105 = v33 - v51;
      if (v33 > v51)
      {
        v106 = v51;
        do
        {
          v107 = v129.__begin_[v106];
          LODWORD(v117) = v107;
          if (v131 <= v107 || (*(v130[0] + v107) <= 0.0 ? (v108 = *(a4 + 16), v109 = a4) : (v108 = *(a5 + 16), v109 = a5), v108 <= v107 || *(a6 + 16) <= v107))
          {
            __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
          }

          *(*a6 + 4 * v107) = *(*v109 + 4 * v107);
          std::vector<int>::push_back[abi:ne200100](&a8->__begin_, &v117);
          ++v106;
          --v105;
        }

        while (v105);
      }
    }

    else
    {
      LODWORD(v49) = 0;
      v50 = 0.0;
LABEL_84:
      if (v47 < 0.00000011921)
      {
        v48 = v46 * -8388600.0;
      }

      if (v48 >= 0.0)
      {
        v82 = v48;
      }

      else
      {
        v82 = 0.0;
      }

      v83 = *(a7 + 16);
      if (v83 != v128)
      {
        cva::Logger::instance(v45);
        v84 = *MEMORY[0x277CFD380];
        v111 = *(a7 + 16);
        cva::Logger::logInCategory();
        v83 = *(a7 + 16);
        if (v83 != v128)
        {
          __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }
      }

      if (v83)
      {
        v85 = *a7;
        v86 = v83;
        v87 = v127[0];
        v88 = 4 * v86;
        do
        {
          v89 = *v87++;
          *v85 = (v82 * v89) + *v85;
          ++v85;
          v88 -= 4;
        }

        while (v88);
      }

      v90 = v50 + v82;
      if (v113 >= 1)
      {
        v91 = a9->__begin_;
        v92 = *(a2 + 16);
        v93 = *a2;
        v94 = v131;
        v95 = v130[0];
        v96 = *a6;
        v97 = (v112 >> 2) & 0x7FFFFFFF;
        if (v131 >= *(a6 + 16))
        {
          v94 = *(a6 + 16);
        }

        do
        {
          v99 = *v91++;
          v98 = v99;
          if (v92 <= v99 || v98 >= v94)
          {
            __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
          }

          v96[v98] = v93[v98] + (v90 * v95[v98]);
          --v97;
        }

        while (v97);
      }

      v101 = v33 - v49;
      if (v33 > v49)
      {
        v102 = v49;
        do
        {
          v103 = v129.__begin_[v102];
          LODWORD(v117) = v103;
          if (*(a2 + 16) <= v103 || (v131 > v103 ? (v104 = *(a6 + 16) > v103) : (v104 = 0), !v104))
          {
            __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
          }

          *(*a6 + 4 * v103) = *(*a2 + 4 * v103) + (v90 * *(v130[0] + v103));
          std::vector<int>::push_back[abi:ne200100](&a9->__begin_, &v117);
          ++v102;
          --v101;
        }

        while (v101);
      }
    }

    free(v121);
    free(v125[0]);
    free(v127[0]);
    begin = v129.__begin_;
  }

  if (begin)
  {
    v129.__end_ = begin;
    operator delete(begin);
  }

  free(v130[0]);
  free(v132[0]);
}

void sub_25901CC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  free(a27);
  free(a30);
  if (__p)
  {
    operator delete(__p);
  }

  free(*(v34 - 200));
  free(*(v34 - 176));
  _Unwind_Resume(a1);
}

uint64_t cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::normalize<float,void>(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = 4 * v1;
    v4 = **result * **result;
    if (v1 != 1)
    {
      v5 = v2 + 1;
      v6 = v3 - 4;
      do
      {
        v7 = *v5++;
        v4 = v4 + (v7 * v7);
        v6 -= 4;
      }

      while (v6);
    }

    v8 = 1.0 / sqrtf(v4);
    do
    {
      *v2 = v8 * *v2;
      ++v2;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

double cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(unsigned int *a1, _DWORD *a2)
{
  v2 = a1[4];
  if (v2 != a2[4])
  {
    cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>();
  }

  if (!v2)
  {
    return 0.0;
  }

  *&result = **a1 * **a2;
  if (v2 != 1)
  {
    v4 = 4 * v2;
    v5 = (*a1 + 4);
    v6 = v4 - 4;
    v7 = (*a2 + 4);
    do
    {
      v8 = *v5++;
      v9 = v8;
      v10 = *v7++;
      *&result = *&result + (v9 * v10);
      v6 -= 4;
    }

    while (v6);
  }

  return result;
}

float LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::max_step_size(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    result = INFINITY;
    while (1)
    {
      if (*(a2 + 16) == v5)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v7 = *(*a2 + 4 * v5);
      if (v7 > 0.0)
      {
        break;
      }

      if (v7 < 0.0)
      {
        v8 = *a3;
        if (v5 >= *(a3 + 4))
        {
          LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
        }

        goto LABEL_9;
      }

LABEL_11:
      if (v4 == ++v5)
      {
        return result;
      }
    }

    v8 = *a4;
    if (v5 >= *(a4 + 4))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
    }

LABEL_9:
    v9 = (*(v8 + 4 * v5) - *(*a1 + 4 * v5)) / v7;
    if (v9 < result)
    {
      result = v9;
    }

    goto LABEL_11;
  }

  return INFINITY;
}

void LBFGSpp::LineSearchMoreThuente<float>::LineSearch<EndpointMinimizerFunc,LBFGSpp::LBFGSBParam<float>>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, float *a5, float *a6, float *a7, uint64_t a8, float *a9, uint64_t a10)
{
  if (*a6 <= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'step' must be positive");
LABEL_161:
    v114 = off_2798D4070;
    v115 = MEMORY[0x277D82610];
    goto LABEL_163;
  }

  if (*a6 > *a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "'step' exceeds 'step_max'");
    goto LABEL_161;
  }

  v11 = *a9;
  if (*a9 >= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "the moving direction does not decrease the objective function value");
    v114 = MEMORY[0x277D82750];
    v115 = MEMORY[0x277D825D8];
LABEL_163:
    __cxa_throw(exception, v114, v115);
  }

  v18 = *a7;
  v19 = *(a2 + 40);
  v20 = *(a2 + 44);
  v138 = INFINITY;
  v139 = 0.0;
  v136 = 2139095040;
  v137 = 0.0;
  v135 = v11 * (1.0 - v19);
  v134 = 2139095040;
  v21 = *(a3 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(__dst, v21);
  if (v21)
  {
    memcpy(__dst[0], *a3, 4 * v21);
  }

  v133 = *(a3 + 16);
  v22 = *(a8 + 16);
  v130[0] = 0;
  v130[1] = 0;
  v23 = cva::MatrixData<float,0ul,0ul,false>::allocate(v130, v22);
  if (v22)
  {
    v23 = memcpy(v130[0], *a8, 4 * v22);
  }

  v131 = *(a8 + 16);
  __src[0] = 0;
  __src[1] = 0;
  v129 = 0;
  v24 = *a6;
  v25 = *(a3 + 16);
  if (v25 != a4[4])
  {
    cva::Logger::instance(v23);
    v26 = *MEMORY[0x277CFD380];
    v121 = a4[4];
    v117 = *(a3 + 16);
    cva::Logger::logInCategory();
    v25 = *(a3 + 16);
    if (v25 != a4[4])
    {
      goto LABEL_19;
    }
  }

  if (v25 == *(a10 + 16))
  {
    goto LABEL_11;
  }

  if (*a3 != *a10 && *a4 != *a10)
  {
    *(a10 + 16) = v25;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v25);
    v25 = *(a3 + 16);
    if (*(a10 + 16) == v25 || (cva::Logger::instance(v35), v36 = *MEMORY[0x277CFD380], v122 = *(a3 + 16), v118 = *(a10 + 16), cva::Logger::logInCategory(), v25 = *(a10 + 16), v25 == *(a3 + 16)))
    {
LABEL_11:
      if (v25)
      {
        v27 = *a10;
        v28 = v25;
        v29 = *a4;
        v30 = *a3;
        v31 = 4 * v28;
        do
        {
          v32 = *v30++;
          v33 = v32;
          v34 = *v29++;
          *v27++ = v33 + (v24 * v34);
          v31 -= 4;
        }

        while (v31);
      }

      goto LABEL_25;
    }

LABEL_19:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v140 = 0;
  v141 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v140, v25);
  v37 = *(a3 + 16);
  v38 = v140;
  if (v37)
  {
    v39 = *a4;
    v40 = *a3;
    v41 = 4 * v37;
    do
    {
      v42 = *v40++;
      v43 = v42;
      v44 = *v39++;
      *v38++ = v43 + (v24 * v44);
      v41 -= 4;
    }

    while (v41);
    v38 = v140;
  }

  v45 = *a10;
  v46 = *(a10 + 8);
  v47 = v141;
  *a10 = v38;
  *(a10 + 8) = v47;
  v140 = v45;
  v141 = v46;
  *(a10 + 16) = v37;
  v142 = 0;
  free(v45);
LABEL_25:
  *a7 = EndpointMinimizerFunc::operator()(a1, a10, a8);
  v48 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a8, a4);
  v49 = v11 * v19;
  v50 = -(v20 * v11);
  *a9 = *&v48;
  v51 = *a7;
  v52 = *a6;
  v53 = fabsf(*&v48);
  if (*a7 <= (v18 + (*a6 * (v11 * v19))) && v53 <= v50)
  {
    goto LABEL_154;
  }

  if (*(a2 + 28) >= 1)
  {
    v55 = 0;
    v56 = v18;
    v57 = v11;
    while (1)
    {
      v58 = (v51 - v18) - (v52 * v49);
      v59 = *&v48 - (*(a2 + 40) * v11);
      v126 = v59;
      v127 = v58;
      if (v58 <= v137)
      {
        break;
      }

      v61 = LBFGSpp::LineSearchMoreThuente<float>::step_selection(&v139, &v138, a6, &v137, &v136, &v127, &v135, &v134, &v126);
      v62 = *a6;
      if (v61 <= *(a2 + 32))
      {
        v63 = (v139 + *a6) * 0.5;
      }

      else
      {
        v63 = v61;
      }

      v138 = *a6;
      v136 = LODWORD(v127);
      v134 = LODWORD(v126);
LABEL_80:
      if (*a6 == *a5 && v63 >= *a5)
      {
        v106 = v133;
        cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v133);
        if (v106)
        {
          memcpy(__src[0], __dst[0], 4 * v106);
        }

        v129 = v133;
        if (__dst != a10)
        {
          v107 = *(a10 + 16);
          cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v107);
          if (v107)
          {
            memcpy(__dst[0], *a10, 4 * v107);
          }

          v133 = *(a10 + 16);
        }

        if (__src != a10)
        {
          v108 = v129;
          cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v129);
          if (v108)
          {
            memcpy(*a10, __src[0], 4 * v108);
          }

          *(a10 + 16) = v129;
        }

        v109 = v131;
        cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v131);
        if (v109)
        {
          memcpy(__src[0], v130[0], 4 * v109);
        }

        v129 = v131;
        if (v130 != a8)
        {
          v110 = *(a8 + 16);
          cva::MatrixData<float,0ul,0ul,false>::reserve(v130, v110);
          if (v110)
          {
            memcpy(v130[0], *a8, 4 * v110);
          }

          v131 = *(a8 + 16);
        }

        if (__src != a8)
        {
          goto LABEL_151;
        }

        goto LABEL_154;
      }

      *a6 = v63;
      if (v63 < *(a2 + 32))
      {
        v112 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x259CA1C30](v112, "the line search step became smaller than the minimum value allowed");
        goto LABEL_157;
      }

      if (v63 > *(a2 + 36))
      {
        v112 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x259CA1C30](v112, "the line search step became larger than the maximum value allowed");
LABEL_157:
        __cxa_throw(v112, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v77 = *(a3 + 16);
      if (v77 != a4[4])
      {
        cva::Logger::instance(v60);
        v78 = *MEMORY[0x277CFD380];
        v123 = a4[4];
        v119 = *(a3 + 16);
        cva::Logger::logInCategory();
        v77 = *(a3 + 16);
        if (v77 != a4[4])
        {
LABEL_158:
          __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }
      }

      if (v77 == *(a10 + 16))
      {
        goto LABEL_90;
      }

      if (*a3 != *a10 && *a4 != *a10)
      {
        *(a10 + 16) = v77;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v77);
        v77 = *(a3 + 16);
        if (*(a10 + 16) != v77)
        {
          cva::Logger::instance(v86);
          v87 = *MEMORY[0x277CFD380];
          v124 = *(a3 + 16);
          v120 = *(a10 + 16);
          cva::Logger::logInCategory();
          v77 = *(a10 + 16);
          if (v77 != *(a3 + 16))
          {
            goto LABEL_158;
          }
        }

LABEL_90:
        if (v77)
        {
          v79 = *a10;
          v80 = *a4;
          v81 = 4 * v77;
          v82 = *a3;
          do
          {
            v83 = *v82++;
            v84 = v83;
            v85 = *v80++;
            *v79++ = v84 + (v63 * v85);
            v81 -= 4;
          }

          while (v81);
        }

        goto LABEL_104;
      }

      v140 = 0;
      v141 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v140, v77);
      v88 = *(a3 + 16);
      v89 = v140;
      if (v88)
      {
        v90 = *a4;
        v91 = *a3;
        v92 = 4 * v88;
        do
        {
          v93 = *v91++;
          v94 = v93;
          v95 = *v90++;
          *v89++ = v94 + (v63 * v95);
          v92 -= 4;
        }

        while (v92);
        v89 = v140;
      }

      v96 = *a10;
      v97 = *(a10 + 8);
      v98 = v141;
      *a10 = v89;
      *(a10 + 8) = v98;
      v140 = v96;
      v141 = v97;
      *(a10 + 16) = v88;
      v142 = 0;
      free(v96);
LABEL_104:
      *a7 = EndpointMinimizerFunc::operator()(a1, a10, a8);
      v48 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a8, a4);
      *a9 = *&v48;
      v51 = *a7;
      v52 = *a6;
      v99 = fabsf(*&v48);
      v100 = *a7 > (v18 + (*a6 * v49)) || v99 > v50;
      if (!v100 || v52 >= *a5 && ((v51 - v18) - (v52 * v49)) <= v137)
      {
        goto LABEL_154;
      }

      if (++v55 >= *(a2 + 28))
      {
        goto LABEL_114;
      }
    }

    if ((v59 * (v139 - v52)) <= 0.0)
    {
      v63 = LBFGSpp::LineSearchMoreThuente<float>::step_selection(&v139, &v138, a6, &v137, &v136, &v127, &v135, &v134, &v126);
      v69 = *a6;
      v138 = v139;
      v139 = v69;
      v136 = LODWORD(v137);
      v137 = v127;
      v134 = LODWORD(v135);
      v135 = v126;
      v70 = v133;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v133);
      if (v70)
      {
        memcpy(__src[0], __dst[0], 4 * v70);
      }

      v129 = v133;
      if (__dst != a10)
      {
        v71 = *(a10 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v71);
        if (v71)
        {
          memcpy(__dst[0], *a10, 4 * v71);
        }

        v133 = *(a10 + 16);
      }

      if (__src != a10)
      {
        v72 = v129;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v129);
        if (v72)
        {
          memcpy(*a10, __src[0], 4 * v72);
        }

        *(a10 + 16) = v129;
      }

      v73 = v131;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v131);
      if (v73)
      {
        v60 = memcpy(__src[0], v130[0], 4 * v73);
      }

      v129 = v131;
      if (v130 != a8)
      {
        v74 = *(a8 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(v130, v74);
        if (v74)
        {
          v60 = memcpy(v130[0], *a8, 4 * v74);
        }

        v131 = *(a8 + 16);
      }

      if (__src == a8)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if ((v52 + ((v52 - v139) * 1.1)) >= *a5)
      {
        v63 = *a5;
      }

      else
      {
        v63 = v52 + ((v52 - v139) * 1.1);
      }

      v139 = v52;
      v137 = v58;
      v135 = v59;
      v64 = v133;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v133);
      if (v64)
      {
        memcpy(__src[0], __dst[0], 4 * v64);
      }

      v129 = v133;
      if (__dst != a10)
      {
        v65 = *(a10 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v65);
        if (v65)
        {
          memcpy(__dst[0], *a10, 4 * v65);
        }

        v133 = *(a10 + 16);
      }

      if (__src != a10)
      {
        v66 = v129;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v129);
        if (v66)
        {
          memcpy(*a10, __src[0], 4 * v66);
        }

        *(a10 + 16) = v129;
      }

      v67 = v131;
      cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v131);
      if (v67)
      {
        v60 = memcpy(__src[0], v130[0], 4 * v67);
      }

      v129 = v131;
      if (v130 != a8)
      {
        v68 = *(a8 + 16);
        cva::MatrixData<float,0ul,0ul,false>::reserve(v130, v68);
        if (v68)
        {
          v60 = memcpy(v130[0], *a8, 4 * v68);
        }

        v131 = *(a8 + 16);
      }

      if (__src == a8)
      {
        goto LABEL_79;
      }
    }

    v75 = v129;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a8, v129);
    if (v75)
    {
      v60 = memcpy(*a8, __src[0], 4 * v75);
    }

    *(a8 + 16) = v129;
LABEL_79:
    v56 = *a7;
    v57 = *a9;
    goto LABEL_80;
  }

  v57 = v11;
  v56 = v18;
LABEL_114:
  if (((v51 - v18) - (v52 * v49)) > v137)
  {
    if (v139 <= 0.0)
    {
      v116 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x259CA1C30](v116, "the line search routine is unable to sufficiently decrease the function value");
      __cxa_throw(v116, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a6 = v139;
    *a7 = v56;
    *a9 = v57;
    v101 = v133;
    cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v133);
    if (v101)
    {
      memcpy(__src[0], __dst[0], 4 * v101);
    }

    v129 = v133;
    if (__dst != a10)
    {
      v102 = *(a10 + 16);
      cva::MatrixData<float,0ul,0ul,false>::reserve(__dst, v102);
      if (v102)
      {
        memcpy(__dst[0], *a10, 4 * v102);
      }

      v133 = *(a10 + 16);
    }

    if (__src != a10)
    {
      v103 = v129;
      cva::MatrixData<float,0ul,0ul,false>::reserve(a10, v129);
      if (v103)
      {
        memcpy(*a10, __src[0], 4 * v103);
      }

      *(a10 + 16) = v129;
    }

    v104 = v131;
    cva::MatrixData<float,0ul,0ul,false>::reserve(__src, v131);
    if (v104)
    {
      memcpy(__src[0], v130[0], 4 * v104);
    }

    v129 = v131;
    if (v130 != a8)
    {
      v105 = *(a8 + 16);
      cva::MatrixData<float,0ul,0ul,false>::reserve(v130, v105);
      if (v105)
      {
        memcpy(v130[0], *a8, 4 * v105);
      }

      v131 = *(a8 + 16);
    }

    if (__src != a8)
    {
LABEL_151:
      v111 = v129;
      cva::MatrixData<float,0ul,0ul,false>::reserve(a8, v129);
      if (v111)
      {
        memcpy(*a8, __src[0], 4 * v111);
      }

      *(a8 + 16) = v129;
    }
  }

LABEL_154:
  free(__src[0]);
  free(v130[0]);
  free(__dst[0]);
}

void sub_25901DB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  __cxa_free_exception(v23);
  free(a17);
  free(a20);
  free(a23);
  _Unwind_Resume(a1);
}

void LBFGSpp::BFGSMat<float,true>::add_correction(int *a1, unsigned int *a2, unsigned int *a3)
{
  v136 = *MEMORY[0x277D85DE8];
  v3 = a1[27] % *a1;
  if (a1[7] <= v3)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v6 = *(a1 + 1);
  LODWORD(v132) = a1[6];
  v133 = (v6 + 4 * v132 * v3);
  LODWORD(v134) = v132;
  HIDWORD(v134) = v132 * v3;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float const,0u,1u,false>>(&v132, a2);
  if (a1[13] <= v3)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v7 = *(a1 + 4);
  LODWORD(v132) = a1[12];
  v133 = (v7 + 4 * v132 * v3);
  LODWORD(v134) = v132;
  HIDWORD(v134) = v132 * v3;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float const,0u,1u,false>>(&v132, a3);
  if (a1[7] <= v3)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v8 = *(a1 + 1);
  LODWORD(v132) = a1[6];
  v133 = (v8 + 4 * v132 * v3);
  LODWORD(v134) = v132;
  HIDWORD(v134) = v132 * v3;
  if (a1[13] <= v3)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v9 = *(a1 + 4);
  LODWORD(v128) = a1[12];
  v129 = v9 + 4 * v128 * v3;
  v130 = v128;
  v131 = v128 * v3;
  v10 = cva::MatrixMixin<cva::MatrixRef<float,0u,1u,false>,float,0u,1u>::dot<cva::MatrixRef<float const,0u,1u,false>>(&v132, &v128);
  if (a1[18] <= v3)
  {
    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
  }

  *(*(a1 + 7) + 4 * v3) = LODWORD(v10);
  if (a1[13] <= v3)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v11 = a1[12];
  if (v11)
  {
    v12 = (*(a1 + 4) + 4 * v11 * v3);
    v13 = *v12 * *v12;
    if (v11 != 1)
    {
      v14 = 4 * v11;
      v15 = v12 + 1;
      v16 = v14 - 4;
      do
      {
        v17 = *v15++;
        v13 = v13 + (v17 * v17);
        v16 -= 4;
      }

      while (v16);
    }
  }

  else
  {
    v13 = 0.0;
  }

  *(a1 + 1) = v13 / *&v10;
  v18 = a1[26];
  if (v18 < *a1)
  {
    a1[26] = ++v18;
  }

  v19 = v3 + 1;
  a1[27] = v3 + 1;
  v20 = a1[32];
  if (v20 <= v3 || v3 >= a1[33])
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  *(*(a1 + 14) + 4 * (v3 + v3 * v20)) = -*&v10;
  v21 = a1[7];
  if (v18 > v21)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v22 = a1[6];
  v23 = *(a1 + 1);
  v123 = __PAIR64__(v18, v22);
  v124 = v23;
  v125 = v22;
  v126 = 0;
  v127 = &v123;
  if (v21 <= v3)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  if (v19 > v21)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v119 = v22;
  v120 = v23 + 4 * v22 * v3;
  v121 = v22;
  v122 = v22 * v3;
  v128 = 0;
  v129 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v128, v18);
  v130 = *(v127 + 1);
  v133 = &v127;
  v134 = &v119;
  if (*v127 != v119)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v135 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,0u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v128, &v132);
  v123 = &v128;
  v25 = *a1;
  v26 = *a1 + v3;
  v27 = a1[32];
  if (v26 + 1 > v27 || (v28 = a1[26], v28 + v25 > a1[33]))
  {
    v44 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    v101 = 2252;
    v45 = "matrixmixin.h";
    v24 = "assert_in_bounds";
    goto LABEL_135;
  }

  if (!v27)
  {
    v44 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
    v101 = 428;
    v45 = "matrixref.h";
    v24 = "MatrixRef";
    goto LABEL_135;
  }

  v29 = v26 + v27 * v25;
  v30 = *(a1 + 14);
  v31 = &v30[4 * v29];
  if (v128 == v30)
  {
    v132 = 0;
    v133 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v132, v28);
    LODWORD(v134) = 1;
    HIDWORD(v134) = v28;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,1u,false>>>(&v132, &v123);
    if (__PAIR64__(v28, 1) != v134)
    {
      cva::Logger::instance(v33);
      v34 = *MEMORY[0x277CFD380];
      cva::Logger::logInCategory();
      if (__PAIR64__(v28, 1) != v134)
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    if (v28)
    {
      v35 = v31;
    }

    else
    {
      v35 = 0;
    }

    v36 = &v31[4 * v27 * v28];
    if (!v28)
    {
      v36 = 0;
    }

    v37 = v132;
    if (v35 != v36)
    {
      v38 = v132;
      do
      {
        v39 = *v38++;
        *v35 = v39;
        v35 += 4 * v27;
      }

      while (v35 != v36);
    }

    free(v37);
  }

  else
  {
    if (v28 == v130)
    {
      v32 = &v128;
    }

    else
    {
      cva::Logger::instance(v24);
      v40 = *MEMORY[0x277CFD380];
      v118 = *(v123 + 4);
      v24 = cva::Logger::logInCategory();
      v32 = v123;
      if (v28 != *(v123 + 4))
      {
        v44 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)";
        v101 = 163;
        v45 = "matrixfun.h";
        v24 = "assert_equal_size";
        goto LABEL_135;
      }
    }

    if (v28)
    {
      v41 = v31;
    }

    else
    {
      v41 = 0;
    }

    v42 = &v31[4 * v27 * v28];
    if (!v28)
    {
      v42 = 0;
    }

    if (v41 != v42)
    {
      v43 = 0;
      v44 = "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
      v45 = "matrixmixin.h";
      v24 = "assert_in_bounds";
      while (v43 < v28)
      {
        *v41 = *(*v32 + v43);
        v43 = (v43 + 1);
        v41 += 4 * v27;
        if (v41 == v42)
        {
          goto LABEL_48;
        }
      }

      v101 = 2269;
LABEL_135:
      __assert_rtn(v24, v45, v101, v44);
    }
  }

LABEL_48:
  v46 = *a1;
  v47 = a1[26];
  v48 = a1[32];
  if (v47 + *a1 > v48 || v46 + v3 + 1 > a1[33])
  {
    v102 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    v103 = 2252;
    v104 = "matrixmixin.h";
    v105 = "assert_in_bounds";
    goto LABEL_159;
  }

  if (v48 < v47)
  {
    v102 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
    v103 = 428;
    v104 = "matrixref.h";
    v105 = "MatrixRef";
    goto LABEL_159;
  }

  v49 = *(a1 + 14);
  if (v47 != v130)
  {
    cva::Logger::instance(v24);
    v50 = *MEMORY[0x277CFD380];
    cva::Logger::logInCategory();
    if (v47 != v130)
    {
      v102 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)";
      v103 = 163;
      v104 = "matrixfun.h";
      v105 = "assert_equal_size";
LABEL_159:
      __assert_rtn(v105, v104, v103, v102);
    }
  }

  v51 = v46 + v48 * (v46 + v3);
  v52 = v49 + 4 * v51;
  if (v47)
  {
    v53 = (v49 + 4 * v51);
  }

  else
  {
    v53 = 0;
  }

  v54 = (v52 + 4 * v48);
  if (!v47)
  {
    v54 = 0;
  }

  if (v53 != v54)
  {
    v55 = 0;
    v56 = v128;
    do
    {
      v57 = *v56++;
      *v53 = v57;
      if (v55 + 1 >= v47)
      {
        v58 = v48 - v47;
      }

      else
      {
        v58 = 0;
      }

      v53 += v58 + 1;
      if (v55 + 1 < v47)
      {
        ++v55;
      }

      else
      {
        v55 = 0;
      }
    }

    while (v53 != v54);
  }

  v59 = a1[26];
  v60 = *a1;
  if (v59 >= *a1)
  {
    v61 = a1[32];
    if (v61 < 2 * v60 || v19 > a1[33])
    {
      v114 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
      v115 = 2252;
      v116 = "matrixmixin.h";
      v117 = "assert_in_bounds";
    }

    else
    {
      if (v61 >= v60)
      {
        v62 = *(a1 + 14);
        v63 = v62 + 4 * (v60 + v61 * v3);
        if (v60)
        {
          v64 = (v62 + 4 * (v60 + v61 * v3));
        }

        else
        {
          v64 = 0;
        }

        v65 = (v63 + 4 * v61);
        if (!v60)
        {
          v65 = 0;
        }

        if (v64 != v65)
        {
          v66 = 0;
          v67 = v61 - v60;
          do
          {
            *v64 = 0;
            if (v66 + 1 >= v60)
            {
              v68 = v67;
            }

            else
            {
              v68 = 0;
            }

            v64 += v68 + 1;
            if (v66 + 1 < v60)
            {
              ++v66;
            }

            else
            {
              v66 = 0;
            }
          }

          while (v64 != v65);
        }

        goto LABEL_85;
      }

      v114 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
      v115 = 428;
      v116 = "matrixref.h";
      v117 = "MatrixRef";
    }

    __assert_rtn(v117, v116, v115, v114);
  }

LABEL_85:
  if (v59 >= 2)
  {
    v69 = "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)";
    v70 = (v3 + v60 - 1) % v60;
    v71 = v59 - 1;
    v72 = "column";
    while (1)
    {
      v73 = a1[7];
      if (v73 <= v3)
      {
        break;
      }

      if (v19 > v73)
      {
        v100 = 2252;
        v72 = "assert_in_bounds";
        v69 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
        goto LABEL_133;
      }

      v74 = *(a1 + 1);
      LODWORD(v132) = a1[6];
      v133 = (v74 + 4 * v132 * v3);
      LODWORD(v134) = v132;
      HIDWORD(v134) = v132 * v3;
      if (a1[13] <= v70)
      {
        v99 = 1091;
LABEL_131:
        __assert_rtn(v72, "matrixmixin.h", v99, v69);
      }

      v75 = *(a1 + 4);
      LODWORD(v123) = a1[12];
      v124 = v75 + 4 * v123 * v70;
      v125 = v123;
      v126 = v123 * v70;
      v76 = cva::MatrixMixin<cva::MatrixRef<float,0u,1u,false>,float,0u,1u>::dot<cva::MatrixRef<float const,0u,1u,false>>(&v132, &v123);
      v60 = *a1;
      v77 = *a1 + v3;
      v78 = a1[32];
      if (v78 <= v77 || v70 >= a1[33])
      {
        v99 = 2269;
        v72 = "assert_in_bounds";
        v69 = "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
        goto LABEL_131;
      }

      *(*(a1 + 14) + 4 * (v77 + v78 * v70)) = LODWORD(v76);
      v70 = (v70 + v60 - 1) % v60;
      if (!--v71)
      {
        goto LABEL_93;
      }
    }

    v100 = 1091;
LABEL_133:
    __assert_rtn(v72, "matrixmixin.h", v100, v69);
  }

LABEL_93:
  v79 = a1[32];
  if (2 * v60 > v79 || (v80 = a1[33], 2 * v60 > v80))
  {
    v106 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    v107 = 2252;
    v108 = "matrixmixin.h";
    v109 = "assert_in_bounds";
    goto LABEL_155;
  }

  if (v79 < v60)
  {
    v106 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
    v107 = 428;
    v108 = "matrixref.h";
    v109 = "MatrixRef";
LABEL_155:
    __assert_rtn(v109, v108, v107, v106);
  }

  v81 = *(a1 + 14);
  v82 = v79 * v60;
  if (v60 * v60)
  {
    v83 = v81 + v82 + v60;
  }

  else
  {
    v83 = 0;
  }

  v84 = v81 + 4 * v82 + 4 * v60 + 4 * v82;
  if (!(v60 * v60))
  {
    v84 = 0;
  }

  if (v83 != v84)
  {
    v85 = 0;
    v86 = *(a1 + 1);
    do
    {
      *v83 = v86 * *v83;
      if (v85 + 1 >= v60)
      {
        v87 = v79 - v60;
      }

      else
      {
        v87 = 0;
      }

      v83 += v87 + 1;
      if (v85 + 1 < v60)
      {
        ++v85;
      }

      else
      {
        v85 = 0;
      }
    }

    while (v83 != v84);
  }

  v132 = __PAIR64__(v80, v79);
  v133 = v81;
  v134 = v79;
  LODWORD(v123) = 0;
  LBFGSpp::BKLDLT<float>::compute((a1 + 34), &v132, 1, &v123);
  v88 = *a1;
  v89 = 2 * *a1;
  v90 = a1[32];
  if (v89 > v90 || v89 > a1[33])
  {
    v110 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    v111 = 2252;
    v112 = "matrixmixin.h";
    v113 = "assert_in_bounds";
    goto LABEL_157;
  }

  v91 = v90 - v88;
  if (v90 < v88)
  {
    v110 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
    v111 = 428;
    v112 = "matrixref.h";
    v113 = "MatrixRef";
LABEL_157:
    __assert_rtn(v113, v112, v111, v110);
  }

  v92 = v90 * v88;
  if (v88 * v88)
  {
    v93 = (*(a1 + 14) + 4 * (v92 + v88));
  }

  else
  {
    v93 = 0;
  }

  v94 = *(a1 + 14) + 4 * (v92 + v88) + 4 * v92;
  if (!(v88 * v88))
  {
    v94 = 0;
  }

  if (v93 != v94)
  {
    v95 = 0;
    v96 = *(a1 + 1);
    do
    {
      *v93 = *v93 / v96;
      if (v95 + 1 >= v88)
      {
        v97 = v91;
      }

      else
      {
        v97 = 0;
      }

      v93 += v97 + 1;
      if (v95 + 1 < v88)
      {
        ++v95;
      }

      else
      {
        v95 = 0;
      }
    }

    while (v93 != v94);
  }

  free(v128);
  v98 = *MEMORY[0x277D85DE8];
}

void sub_25901E610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  free(a23);
  free(a20);
  _Unwind_Resume(a1);
}

void LBFGSpp::SubspaceMin<float>::subspace_minimize(float *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, unsigned int **a8, uint64_t a9, int a10, uint64_t a11)
{
  v18 = *(a3 + 16);
  if (v18 != *(a2 + 16))
  {
    cva::Logger::instance(a1);
    v19 = *MEMORY[0x277CFD380];
    v148 = *(a2 + 16);
    v146 = *(a3 + 16);
    cva::Logger::logInCategory();
    v18 = *(a3 + 16);
    if (v18 != *(a2 + 16))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
    }
  }

  if (v18 == *(a11 + 16))
  {
    goto LABEL_4;
  }

  if (*a3 != *a11 && *a2 != *a11)
  {
    *(a11 + 16) = v18;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a11, v18);
    v18 = *(a3 + 16);
    if (*(a11 + 16) != v18)
    {
      cva::Logger::instance(v144);
      v145 = *MEMORY[0x277CFD380];
      v149 = *(a3 + 16);
      v147 = *(a11 + 16);
      cva::Logger::logInCategory();
      v18 = *(a11 + 16);
      if (v18 != *(a3 + 16))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

LABEL_4:
    if (v18)
    {
      v20 = *a11;
      v21 = v18;
      v22 = *a2;
      v23 = *a3;
      v24 = 4 * v21;
      do
      {
        v25 = *v23++;
        v26 = v25;
        v27 = *v22++;
        *v20++ = v26 - v27;
        v24 -= 4;
      }

      while (v24);
    }

    goto LABEL_17;
  }

  v184 = 0;
  v185 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v184, v18);
  v29 = *(a3 + 16);
  v30 = v184;
  if (v29)
  {
    v31 = *a2;
    v32 = *a3;
    v33 = 4 * v29;
    v34 = v184;
    do
    {
      v35 = *v32++;
      v36 = v35;
      v37 = *v31++;
      *v34++ = v36 - v37;
      v33 -= 4;
    }

    while (v33);
  }

  v38 = *a11;
  v39 = *(a11 + 8);
  v40 = v185;
  *a11 = v30;
  *(a11 + 8) = v40;
  v184 = v38;
  v185 = v39;
  *(a11 + 16) = v29;
  v186 = 0;
  free(v38);
LABEL_17:
  v41 = *(a9 + 8) - *a9;
  v42 = v41 >> 2;
  if ((v41 >> 2) >= 1)
  {
    LBFGSpp::BFGSMat<float,true>::Wb(a1, a9, &v184);
    v43 = (v41 >> 2) & 0x7FFFFFFF;
    v182[0] = 0;
    v182[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v182, v43);
    v183 = v42;
    LBFGSpp::BFGSMat<float,true>::compute_FtBAb(a1, &v184, a9, a8, a7, a11, v182);
    v180[0] = 0;
    v180[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v180, v43);
    v181 = v42;
    v178[0] = 0;
    v178[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v178, v43);
    v179 = v42;
    v44 = *a9;
    v45 = *(a5 + 4);
    v46 = *a5;
    v47 = *(a2 + 16);
    v48 = *a2;
    v49 = v181;
    v50 = v180[0];
    v51 = *(a6 + 4);
    v52 = *a6;
    v53 = v178[0];
    v54 = a4[4];
    v55 = v183;
    v56 = *a4;
    v57 = v43;
    v58 = v182[0];
    do
    {
      v60 = *v44++;
      v59 = v60;
      if (v45 <= v60 || (v47 > v59 ? (v61 = v49 == 0) : (v61 = 1), v61 || (*v50 = *(v46 + 4 * v59) - v48[v59], v51 <= v59) || ((*v53 = *(v52 + 4 * v59) - v48[v59], v54 > v59) ? (v62 = v55 == 0) : (v62 = 1), v62)))
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      *v58 = *(v56 + 4 * v59) + *v58;
      ++v58;
      --v55;
      --v49;
      ++v50;
      ++v53;
      --v57;
    }

    while (v57);
    v176[0] = 0;
    v176[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v176, v43);
    v177 = v42;
    v173 = 0;
    v174 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v173, v183);
    v175 = v183;
    if (v183)
    {
      v63 = v173;
      v64 = v182[0];
      v65 = 4 * v183;
      do
      {
        v66 = *v64++;
        *v63++ = -v66;
        v65 -= 4;
      }

      while (v65);
    }

    LBFGSpp::BFGSMat<float,true>::solve_PtBP(a1, &v184, &v173, v176);
    free(v173);
    if (LBFGSpp::SubspaceMin<float>::in_bounds(v176, v180, v178))
    {
      LBFGSpp::SubspaceMin<float>::subvec_assign(a11, a9, v176);
    }

    else
    {
      v67 = v177;
      v173 = 0;
      v174 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v173, v177);
      if (v67)
      {
        memcpy(v173, v176[0], 4 * v67);
      }

      v175 = v177;
      v171[0] = 0;
      v171[1] = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(v171, v43);
      v172 = v42;
      bzero(v171[0], 4 * v43);
      v169[0] = 0;
      v169[1] = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(v169, v43);
      v170 = v42;
      bzero(v169[0], 4 * v43);
      memset(&v168, 0, sizeof(v168));
      memset(&v167, 0, sizeof(v167));
      memset(&v166, 0, sizeof(v166));
      memset(&v165, 0, sizeof(v165));
      memset(&v164, 0, sizeof(v164));
      memset(&v163, 0, sizeof(v163));
      std::vector<int>::reserve(&v168, v42 / 3uLL);
      std::vector<int>::reserve(&v165, v42 / 3uLL);
      std::vector<int>::reserve(&v167, v42 / 3uLL);
      std::vector<int>::reserve(&v164, v42 / 3uLL);
      std::vector<int>::reserve(&v166, v43);
      std::vector<int>::reserve(&v163, v43);
      if (a10 < 1)
      {
LABEL_106:
        v126 = v177;
        if (v177)
        {
          v127 = v176[0];
          v128 = v181;
          v129 = v180[0];
          v130 = v179;
          v131 = v178[0];
          do
          {
            if (!v128)
            {
              goto LABEL_149;
            }

            v132 = *v127;
            if (*v127 < *v129)
            {
              v132 = *v129;
            }

            *v127 = v132;
            if (!v130)
            {
LABEL_149:
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            v133 = v131 + 1;
            if (*v131 >= v132)
            {
              v131 = v127;
            }

            *v127++ = *v131;
            --v130;
            --v128;
            ++v129;
            v131 = v133;
            --v126;
          }

          while (v126);
        }

        LBFGSpp::SubspaceMin<float>::subvec_assign(a11, a9, v176);
        v134 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a11, a4);
        if (*&v134 > -0.00000011921)
        {
          v135 = v177;
          if (v177)
          {
            v136 = v176[0];
            v137 = v181;
            v138 = v180[0];
            v139 = v179;
            v140 = v178[0];
            do
            {
              if (!v137)
              {
                goto LABEL_150;
              }

              v141 = *v136;
              if (*v136 < *v138)
              {
                v141 = *v138;
              }

              *v136 = v141;
              if (!v139)
              {
LABEL_150:
                __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
              }

              v142 = v140 + 1;
              if (*v140 >= v141)
              {
                v140 = v136;
              }

              *v136++ = *v140;
              --v139;
              --v137;
              ++v138;
              v140 = v142;
              --v135;
            }

            while (v135);
          }

          LBFGSpp::SubspaceMin<float>::subvec_assign(a11, a9, v176);
          v143 = cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>(a11, a4);
          if (*&v143 > -0.00000011921)
          {
            LBFGSpp::SubspaceMin<float>::subvec_assign(a11, a9, &v173);
          }
        }
      }

      else
      {
        v68 = 0;
        while (1)
        {
          v69 = 0;
          v168.__end_ = v168.__begin_;
          v167.__end_ = v167.__begin_;
          v166.__end_ = v166.__begin_;
          v165.__end_ = v165.__begin_;
          v164.__end_ = v164.__begin_;
          v163.__end_ = v163.__begin_;
          LODWORD(v162[0]) = 0;
          do
          {
            LODWORD(v160[0]) = *(*a9 + 4 * v69);
            if (v181 <= v69)
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            if (v179 <= v69 || v177 <= v69)
            {
LABEL_146:
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            v70 = *(v180[0] + v69);
            v71 = *(v176[0] + v69);
            if (v71 < v70)
            {
              goto LABEL_54;
            }

            v72 = *(v178[0] + v69);
            if (v71 != v70)
            {
              goto LABEL_50;
            }

            if (v172 <= v69)
            {
              goto LABEL_146;
            }

            if (*(v171[0] + v69) >= 0.0)
            {
LABEL_54:
              std::vector<int>::push_back[abi:ne200100](&v168.__begin_, v160);
              std::vector<int>::push_back[abi:ne200100](&v165.__begin_, v162);
              v73 = LODWORD(v162[0]);
              if (v177 <= LODWORD(v162[0]))
              {
                goto LABEL_146;
              }

              *(v176[0] + LODWORD(v162[0])) = v70;
              if (v170 <= v73)
              {
                goto LABEL_146;
              }

              v75 = v169[0] + 4 * v73;
            }

            else
            {
LABEL_50:
              if (v71 > v72)
              {
                goto LABEL_57;
              }

              if (v71 != v72)
              {
                goto LABEL_51;
              }

              if (v170 <= v69)
              {
                goto LABEL_146;
              }

              if (*(v169[0] + v69) >= 0.0)
              {
LABEL_57:
                std::vector<int>::push_back[abi:ne200100](&v167.__begin_, v160);
                std::vector<int>::push_back[abi:ne200100](&v164.__begin_, v162);
                v73 = LODWORD(v162[0]);
                if (v177 <= LODWORD(v162[0]))
                {
                  goto LABEL_146;
                }

                *(v176[0] + LODWORD(v162[0])) = v72;
                if (v172 <= v73)
                {
                  goto LABEL_146;
                }

                v74 = v171[0];
              }

              else
              {
LABEL_51:
                std::vector<int>::push_back[abi:ne200100](&v166.__begin_, v160);
                std::vector<int>::push_back[abi:ne200100](&v163.__begin_, v162);
                v73 = LODWORD(v162[0]);
                if (v172 <= LODWORD(v162[0]))
                {
                  goto LABEL_146;
                }

                *(v171[0] + LODWORD(v162[0])) = 0;
                if (v170 <= v73)
                {
                  goto LABEL_146;
                }

                v74 = v169[0];
              }

              v75 = &v74[4 * v73];
            }

            *v75 = 0;
            v69 = v73 + 1;
            LODWORD(v162[0]) = v69;
          }

          while (v69 < v42);
          LBFGSpp::BFGSMat<float,true>::Wb(a1, &v166.__begin_, v162);
          v76 = v166.__end_ - v166.__begin_;
          v77 = (v166.__end_ - v166.__begin_) >> 2;
          if (v77 >= 1)
          {
            LBFGSpp::SubspaceMin<float>::subvec(v182, &v163, v160);
            LBFGSpp::SubspaceMin<float>::subvec(v180, &v165, &v157);
            LBFGSpp::SubspaceMin<float>::subvec(v178, &v164, v155);
            v153[0] = 0;
            v153[1] = 0;
            cva::MatrixData<float,0ul,0ul,false>::allocate(v153, (v76 >> 2) & 0x7FFFFFFF);
            v154 = v77;
            v78 = LBFGSpp::BFGSMat<float,true>::apply_PtBQv(a1, v162, &v168, &v157, v153, 1);
            if (v78)
            {
              v79 = v161;
              if (v161 != v154)
              {
                cva::Logger::instance(v78);
                v80 = *MEMORY[0x277CFD380];
                cva::Logger::logInCategory();
                v79 = v161;
                if (v161 != v154)
                {
LABEL_152:
                  __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
                }
              }

              if (v79)
              {
                v81 = v160[0];
                v82 = v153[0];
                v83 = 4 * v79;
                do
                {
                  v84 = *v82++;
                  *v81 = v84 + *v81;
                  ++v81;
                  v83 -= 4;
                }

                while (v83);
              }
            }

            v85 = LBFGSpp::BFGSMat<float,true>::apply_PtBQv(a1, v162, &v167, v155, v153, 1);
            v86 = v161;
            if (v85)
            {
              if (v161 != v154)
              {
                cva::Logger::instance(v85);
                v87 = *MEMORY[0x277CFD380];
                cva::Logger::logInCategory();
                v86 = v161;
                if (v161 != v154)
                {
                  goto LABEL_152;
                }
              }

              if (v86)
              {
                v88 = v160[0];
                v89 = v153[0];
                v90 = 4 * v86;
                do
                {
                  v91 = *v89++;
                  *v88 = v91 + *v88;
                  ++v88;
                  v90 -= 4;
                }

                while (v90);
              }
            }

            v151[0] = 0;
            v151[1] = 0;
            cva::MatrixData<float,0ul,0ul,false>::allocate(v151, v86);
            v152 = v161;
            if (v161)
            {
              v92 = v151[0];
              v93 = v160[0];
              v94 = 4 * v161;
              do
              {
                v95 = *v93++;
                *v92++ = -v95;
                v94 -= 4;
              }

              while (v94);
            }

            LBFGSpp::BFGSMat<float,true>::solve_PtBP(a1, v162, v151, v153);
            free(v151[0]);
            LBFGSpp::SubspaceMin<float>::subvec_assign(v176, &v163, v153);
            free(v153[0]);
            free(v155[0]);
            free(v157);
            free(v160[0]);
          }

          v96 = (v168.__end_ - v168.__begin_) >> 2;
          v97 = (v167.__end_ - v167.__begin_) >> 2;
          v160[0] = 0;
          v160[1] = 0;
          v161 = 0;
          if (v96 > 0 || v97 >= 1)
          {
            LBFGSpp::BFGSMat<float,true>::apply_WtPv(a1, a9, v176, v160, 0);
            if (v96 >= 1)
            {
              v157 = 0;
              v158 = 0;
              v159 = 0;
              LODWORD(v155[0]) = -1082130432;
              LBFGSpp::BFGSMat<float,true>::apply_PtWMv(a1, &v168.__begin_, v160, &v157, v155);
              LBFGSpp::SubspaceMin<float>::subvec(v182, &v165, v155);
              v98 = a1[1];
              LBFGSpp::SubspaceMin<float>::subvec(v176, &v165, v153);
              v100 = v156;
              if (v156 != v154)
              {
                cva::Logger::instance(v99);
                v101 = *MEMORY[0x277CFD380];
                v99 = cva::Logger::logInCategory();
                v100 = v156;
                if (v156 != v154)
                {
                  goto LABEL_151;
                }
              }

              if (v159 != v100)
              {
                cva::Logger::instance(v99);
                v102 = *MEMORY[0x277CFD380];
                cva::Logger::logInCategory();
                v100 = v159;
                if (v159 != v156)
                {
LABEL_151:
                  __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
                }
              }

              if (v100)
              {
                v103 = v157;
                v104 = v153[0];
                v105 = 4 * v100;
                v106 = v155[0];
                do
                {
                  v107 = *v106++;
                  v108 = v107;
                  v109 = *v104++;
                  *v103 = *v103 + (v108 + (v98 * v109));
                  ++v103;
                  v105 -= 4;
                }

                while (v105);
              }

              free(v153[0]);
              free(v155[0]);
              LBFGSpp::SubspaceMin<float>::subvec_assign(v171, &v165, &v157);
              free(v157);
            }

            if (v97 >= 1)
            {
              v157 = 0;
              v158 = 0;
              v159 = 0;
              LODWORD(v155[0]) = -1082130432;
              LBFGSpp::BFGSMat<float,true>::apply_PtWMv(a1, &v167.__begin_, v160, &v157, v155);
              LBFGSpp::SubspaceMin<float>::subvec(v182, &v164, v155);
              v110 = a1[1];
              LBFGSpp::SubspaceMin<float>::subvec(v176, &v164, v153);
              v112 = v156;
              if (v156 != v154)
              {
                cva::Logger::instance(v111);
                v113 = *MEMORY[0x277CFD380];
                v111 = cva::Logger::logInCategory();
                v112 = v156;
                if (v156 != v154)
                {
                  goto LABEL_153;
                }
              }

              if (v159 != v112)
              {
                cva::Logger::instance(v111);
                v114 = *MEMORY[0x277CFD380];
                cva::Logger::logInCategory();
                v112 = v159;
                if (v159 != v156)
                {
LABEL_153:
                  __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
                }
              }

              if (v112)
              {
                v115 = v157;
                v116 = v153[0];
                v117 = 4 * v112;
                v118 = v155[0];
                do
                {
                  v119 = *v118++;
                  v120 = v119;
                  v121 = *v116++;
                  *v115 = *v115 + (v120 + (v110 * v121));
                  ++v115;
                  v117 -= 4;
                }

                while (v117);
              }

              free(v153[0]);
              free(v155[0]);
              v155[0] = 0;
              v155[1] = 0;
              cva::MatrixData<float,0ul,0ul,false>::allocate(v155, v159);
              v156 = v159;
              if (v159)
              {
                v122 = v155[0];
                v123 = v157;
                v124 = 4 * v159;
                do
                {
                  v125 = *v123++;
                  *v122++ = -v125;
                  v124 -= 4;
                }

                while (v124);
              }

              LBFGSpp::SubspaceMin<float>::subvec_assign(v169, &v164, v155);
              free(v155[0]);
              free(v157);
            }
          }

          if (LBFGSpp::SubspaceMin<float>::L_converged(&v165, v171) && LBFGSpp::SubspaceMin<float>::L_converged(&v164, v169) && LBFGSpp::SubspaceMin<float>::P_converged(&v163, v176, v180, v178))
          {
            break;
          }

          free(v160[0]);
          free(v162[0]);
          if (++v68 == a10)
          {
            goto LABEL_106;
          }
        }

        free(v160[0]);
        free(v162[0]);
        LBFGSpp::SubspaceMin<float>::subvec_assign(a11, a9, v176);
      }

      if (v163.__begin_)
      {
        v163.__end_ = v163.__begin_;
        operator delete(v163.__begin_);
      }

      if (v164.__begin_)
      {
        v164.__end_ = v164.__begin_;
        operator delete(v164.__begin_);
      }

      if (v165.__begin_)
      {
        v165.__end_ = v165.__begin_;
        operator delete(v165.__begin_);
      }

      if (v166.__begin_)
      {
        v166.__end_ = v166.__begin_;
        operator delete(v166.__begin_);
      }

      if (v167.__begin_)
      {
        v167.__end_ = v167.__begin_;
        operator delete(v167.__begin_);
      }

      if (v168.__begin_)
      {
        v168.__end_ = v168.__begin_;
        operator delete(v168.__begin_);
      }

      free(v169[0]);
      free(v171[0]);
      free(v173);
    }

    free(v176[0]);
    free(v178[0]);
    free(v180[0]);
    free(v182[0]);
    free(v184);
  }
}

void sub_25901F57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a47)
  {
    operator delete(a47);
  }

  free(a50);
  free(a53);
  free(*(v53 - 248));
  free(*(v53 - 224));
  free(*(v53 - 200));
  free(*(v53 - 176));
  free(*(v53 - 152));
  free(*(v53 - 128));
  _Unwind_Resume(a1);
}

void cva::MatrixData<float,0ul,0ul,false>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      *a1 = 0;

      cva::MatrixData<float,0ul,0ul,false>::allocate(a1, a2);
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

float EndpointMinimizerFunc::targetFuncValue(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    EndpointMinimizerFunc::targetFuncValue();
  }

  return ULEndpointPlacementGenerator::endpointPlacementObjective(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), **a2, *(*a2 + 4), *(*a2 + 8), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 120), *(a1 + 128), *(a1 + 136), (a1 + 144), (a1 + 168));
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(this, __n);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1, v12);
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

void LBFGSpp::BFGSMat<float,true>::apply_Wtv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = (2 * *(a1 + 104));
  *(a3 + 16) = v6;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a3, v6);
  v7 = *(a1 + 104);
  if (v7 > *(a1 + 52))
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v8 = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = v7;
  v24 = v8;
  v25 = v22;
  v26 = 0;
  v27 = &v22;
  if (v22 != *(a2 + 16))
  {
    LBFGSpp::BFGSMat<float,true>::apply_Wtv();
  }

  v9 = *(a3 + 16);
  if (v9 < v7)
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v10 = *a3;
  v18 = v7;
  v19 = v10;
  v20 = v9;
  v21 = 0;
  v29 = &v27;
  v30 = a2;
  v31 = 1065353216;
  cva::assign<false,false,cva::MatrixRef<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::Matrix<float,0u,1u,false>>(&v18, v28);
  v11 = *(a1 + 104);
  if (v11 > *(a1 + 28))
  {
    LBFGSpp::BFGSMat<float,true>::add_correction();
  }

  v12 = *(a1 + 8);
  v22 = *(a1 + 24);
  v23 = v11;
  v24 = v12;
  v25 = v22;
  v26 = 0;
  v27 = &v22;
  v13 = *(a1 + 4);
  v29 = &v27;
  v30 = a2;
  if (v22 != *(a2 + 16))
  {
    LBFGSpp::BFGSMat<float,true>::apply_Wtv();
  }

  v31 = v13;
  v14 = *(a3 + 16);
  v18 = v11;
  v15 = v14 >= v11;
  v16 = v14 - v11;
  v19 = *a3 + 4 * v16;
  v20 = v14;
  v21 = v16;
  if (!v15)
  {
    LBFGSpp::BFGSMat<float,true>::apply_Wtv();
  }

  cva::assign<false,false,cva::MatrixRef<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::Matrix<float,0u,1u,false>>(&v18, v28);
  v17 = *MEMORY[0x277D85DE8];
}

void LBFGSpp::BFGSMat<float,true>::apply_Mv(unsigned int *a1, char **a2, uint64_t a3)
{
  v6 = 2 * a1[26];
  *(a3 + 16) = v6;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a3, v6);
  if (a1[26] < 1)
  {
    return;
  }

  v7 = *a1;
  v8 = 2 * *a1;
  v40[0] = 0;
  v40[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v40, v8);
  v41 = 2 * v7;
  v9 = v40[0];
  if (v7)
  {
    bzero(v40[0], 4 * v8);
  }

  v10 = a1[26];
  v11 = *(a2 + 4);
  if (v11 < v10)
  {
    __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
  }

  v12 = *a2;
  v36 = a1[26];
  v37 = v12;
  v38 = v11;
  v39 = 0;
  if (v8 < v10)
  {
    __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
  }

  v32 = v10;
  v33 = v9;
  v34 = v8;
  v35 = 0;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float const,0u,1u,false>>(&v32, &v36);
  v13 = a1[26];
  v14 = *(a2 + 4);
  v36 = v13;
  v37 = &(*a2)[4 * (v14 - v13)];
  v38 = v14;
  v39 = v14 - v13;
  if (v14 < v13)
  {
    __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
  }

  v15 = *a1;
  if (v15 + v13 > v41)
  {
    v24 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    v25 = 2252;
    v26 = "matrixmixin.h";
    v27 = "assert_in_bounds";
    goto LABEL_22;
  }

  v32 = v13;
  v33 = v40[0] + 4 * v15;
  v34 = v41;
  v35 = v15;
  if (v13 > v41)
  {
    v24 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
    v25 = 428;
    v26 = "matrixref.h";
    v27 = "MatrixRef";
LABEL_22:
    __assert_rtn(v27, v26, v25, v24);
  }

  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float const,0u,1u,false>>(&v32, &v36);
  v36 = v41;
  v37 = v40[0];
  v38 = v41;
  v39 = 0;
  LBFGSpp::BKLDLT<float>::solve_inplace((a1 + 34), &v36);
  v16 = a1[26];
  if (v41 < v16)
  {
    __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
  }

  v36 = a1[26];
  v37 = v40[0];
  v38 = v41;
  v39 = 0;
  v17 = *(a3 + 16);
  if (v17 < v16)
  {
    __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
  }

  v18 = *a3;
  v32 = v16;
  v33 = v18;
  v34 = v17;
  v35 = 0;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(&v32, &v36);
  v19 = *a1;
  v20 = a1[26];
  if (v20 + v19 > v41)
  {
    v28 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    v29 = 2252;
    v30 = "matrixmixin.h";
    v31 = "assert_in_bounds";
    goto LABEL_27;
  }

  v36 = a1[26];
  v37 = v40[0] + 4 * v19;
  v38 = v41;
  v39 = v19;
  if (v20 > v41)
  {
    v28 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
    v29 = 428;
    v30 = "matrixref.h";
    v31 = "MatrixRef";
LABEL_27:
    __assert_rtn(v31, v30, v29, v28);
  }

  v21 = *(a3 + 16);
  v32 = v20;
  v22 = v21 >= v20;
  v23 = v21 - v20;
  v33 = (*a3 + 4 * v23);
  v34 = v21;
  v35 = v23;
  if (!v22)
  {
    __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
  }

  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(&v32, &v36);
  free(v40[0]);
}

uint64_t LBFGSpp::Cauchy<float>::search_greater(uint64_t a1, void *a2, float *a3, uint64_t a4)
{
  v4 = (a2[1] - *a2) >> 2;
  if (v4 > a4)
  {
    v5 = (*a2 + 4 * a4);
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      if (*(a1 + 16) <= v7)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      if (*(*a1 + 4 * v6) > *a3)
      {
        break;
      }

      a4 = (a4 + 1);
      if (v4 == a4)
      {
        return (a2[1] - *a2) >> 2;
      }
    }
  }

  return a4;
}

uint64_t LBFGSpp::BFGSMat<float,true>::Wb@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (2 * *(a1 + 104));
  *a3 = 0;
  *(a3 + 8) = 0;
  result = cva::MatrixData<float,0ul,0ul,false>::allocate(a3, v6);
  *(a3 + 16) = v6;
  v8 = *(a1 + 104);
  if (v8 >= 1)
  {
    v9 = *(a1 + 48);
    if (v9 <= a2)
    {
      v14 = "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
LABEL_21:
      v20 = 2269;
    }

    else
    {
      v10 = 0;
      v11 = *a3;
      v12 = *(a1 + 52);
      if (v6 >= v8)
      {
        v13 = (v6 - v8);
      }

      else
      {
        v13 = 0;
      }

      v14 = "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
      v15 = a2;
      while (1)
      {
        if (v12 == v10)
        {
          goto LABEL_21;
        }

        if (v6 == v10)
        {
          break;
        }

        v11[v10] = *(*(a1 + 32) + 4 * v15);
        v16 = *(a1 + 24);
        if (v16 <= a2 || v10 >= *(a1 + 28))
        {
          goto LABEL_21;
        }

        if (v13 == v10)
        {
          break;
        }

        result = *(a1 + 8);
        v11[v8 + v10] = *(result + 4 * (a2 + v16 * v10));
        ++v10;
        v15 += v9;
        if (v8 == v10)
        {
          goto LABEL_13;
        }
      }

      v20 = 2283;
      v14 = "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)";
    }

    __assert_rtn("assert_in_bounds", "matrixmixin.h", v20, v14);
  }

LABEL_13:
  if (v6 < v8)
  {
    __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
  }

  if (v8)
  {
    v17 = *(a1 + 4);
    v18 = (*a3 + 4 * (v6 - v8));
    v19 = 4 * v8;
    do
    {
      *v18 = v17 * *v18;
      ++v18;
      v19 -= 4;
    }

    while (v19);
  }

  return result;
}

int *std::__introsort<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,false>(int *result, int *a2, uint64_t *a3, uint64_t a4, char a5)
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
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v63 = *v9;
        if (*(*a3 + 4 * v70) >= *(*a3 + 4 * v63))
        {
          return result;
        }

        *v9 = v70;
LABEL_102:
        *(a2 - 1) = v63;
        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v71 = v9 + 1;
      v72 = v9[1];
      v73 = v9 + 2;
      v74 = v9[2];
      v75 = *v9;
      v76 = *a3;
      v77 = *(*a3 + 4 * v72);
      v78 = *(*a3 + 4 * *v9);
      v79 = v74;
      v80 = *(*a3 + 4 * v74);
      if (v77 >= v78)
      {
        if (v80 < v77)
        {
          v81 = v72;
          *v71 = v74;
          *v73 = v72;
          v82 = v9;
          v83 = v9 + 1;
          v79 = v72;
          if (v80 < v78)
          {
            goto LABEL_104;
          }

LABEL_106:
          v87 = *(a2 - 1);
          if (*(v76 + 4 * v87) < *(v76 + 4 * v79))
          {
            *v73 = v87;
            *(a2 - 1) = v72;
            v88 = *v73;
            v89 = *v71;
            v90 = *(v76 + 4 * v88);
            if (v90 < *(v76 + 4 * v89))
            {
              v9[1] = v88;
              v9[2] = v89;
              v91 = *v9;
              if (v90 < *(v76 + 4 * v91))
              {
                *v9 = v88;
                v9[1] = v91;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v81 = v75;
        if (v80 < v77)
        {
          v82 = v9;
          v83 = v9 + 2;
          v72 = *v9;
          goto LABEL_104;
        }

        *v9 = v72;
        v9[1] = v75;
        v82 = v9 + 1;
        v83 = v9 + 2;
        v72 = v75;
        if (v80 < v78)
        {
LABEL_104:
          *v82 = v74;
          *v83 = v75;
          v79 = v81;
          goto LABEL_106;
        }
      }

      v72 = v74;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * v18);
      v21 = *(v15 + 4 * v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) < *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) < v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v9[1];
      v34 = *(v15 + 4 * v32);
      v35 = *(v15 + 4 * v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) < *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) < v35)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v9[2];
      v46 = *(v15 + 4 * v44);
      v47 = *(v15 + 4 * v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) < *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) < v47)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 4 * v53);
      v56 = *(v15 + 4 * v54);
      v57 = *v42;
      v58 = *(v15 + 4 * v57);
      if (v55 >= v56)
      {
        if (v58 < v55)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          LODWORD(v53) = v54;
          if (v58 < v56)
          {
            goto LABEL_59;
          }

          LODWORD(v53) = v57;
        }
      }

      else
      {
        if (v58 >= v55)
        {
          *v31 = v53;
          *v14 = v54;
          v31 = v14;
          LODWORD(v53) = v57;
          if (v58 >= v56)
          {
            LODWORD(v53) = v54;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v54;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v15 + 4 * v22);
    v25 = *(v15 + 4 * v23);
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) < v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) >= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) >= *(v15 + 4 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,LBFGSpp::ArgSort<float> &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,LBFGSpp::ArgSort<float> &>(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(v9, v60, a3);
    v9 = v60 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = v9[1];
  v65 = *a3;
  v66 = *(*a3 + 4 * v64);
  v67 = *(*a3 + 4 * v63);
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v66 < v67)
  {
    if (v69 >= v66)
    {
      *v9 = v64;
      v9[1] = v63;
      v86 = *(a2 - 1);
      if (*(v65 + 4 * v86) >= v67)
      {
        return result;
      }

      v9[1] = v86;
    }

    else
    {
      *v9 = v68;
    }

    goto LABEL_102;
  }

  if (v69 < v66)
  {
    v9[1] = v68;
    *(a2 - 1) = v64;
    v85 = *v9;
    v84 = v9[1];
    if (*(v65 + 4 * v84) < *(v65 + 4 * v85))
    {
      *v9 = v84;
      v9[1] = v85;
    }
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * *a2);
  v10 = *(*a6 + 4 * *result);
  v11 = *a3;
  v12 = *(*a6 + 4 * *a3);
  if (v9 >= v10)
  {
    if (v12 >= v9)
    {
      v13 = v11;
      goto LABEL_13;
    }

    *a2 = v11;
    *a3 = v6;
    v14 = *a2;
    v15 = *result;
    if (*(v8 + 4 * v14) >= *(v8 + 4 * v15))
    {
      v13 = v6;
      v11 = v6;
      goto LABEL_13;
    }

    *result = v14;
    *a2 = v15;
    v11 = *a3;
    goto LABEL_11;
  }

  v13 = v7;
  if (v12 >= v9)
  {
    *result = v6;
    *a2 = v7;
    v11 = *a3;
    if (*(v8 + 4 * *a3) < v10)
    {
      *a2 = v11;
      goto LABEL_9;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_13;
  }

  *result = v11;
LABEL_9:
  *a3 = v7;
  v11 = v7;
LABEL_13:
  v16 = *a4;
  if (*(v8 + 4 * v16) < *(v8 + 4 * v13))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) < *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) < *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) < *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) < *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) < *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) < *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 < *(v5 + 4 * v8))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 4) = v8;
            if (!v10)
            {
              break;
            }

            v8 = *(result + v10 - 4);
            v10 -= 4;
            if (v9 >= *(v5 + 4 * v8))
            {
              v11 = (result + v10 + 4);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 < *(v4 + 4 * v6))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 < *(v4 + 4 * v6));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,LBFGSpp::ArgSort<float> &>(int *a1, int *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 >= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,LBFGSpp::ArgSort<float> &>(int *a1, int *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * v4);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = v7;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v12;
      *v15 = v13;
      do
      {
        v16 = v14[1];
        ++v14;
        v13 = v16;
      }

      while (*(v5 + 4 * v16) < v6);
      do
      {
        v17 = *--v15;
        v12 = v17;
      }

      while (*(v5 + 4 * v17) >= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 4 * v6);
      v9 = *(*a3 + 4 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 4 * v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 4 * v35) < *(v7 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 4 * v46) < v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 4 * v23);
    v29 = *(*a3 + 4 * *a1);
    v30 = v25;
    v31 = *(*a3 + 4 * v25);
    if (v28 >= v29)
    {
      if (v31 < v28)
      {
        v32 = v23;
        *v22 = v25;
        *v24 = v23;
        v33 = a1;
        v34 = a1 + 1;
        v30 = v23;
        if (v31 >= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = v26;
      if (v31 < v28)
      {
        v33 = a1;
        v34 = a1 + 2;
        v23 = *a1;
LABEL_44:
        *v33 = v25;
        *v34 = v26;
        v30 = v32;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 4 * v47) < *(v27 + 4 * v30))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 4 * v48);
          if (v50 < *(v27 + 4 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 < *(v27 + 4 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v23 = v26;
      if (v31 < v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 4 * v14);
  v17 = *a1;
  v18 = *(*a3 + 4 * v17);
  v19 = *(*a3 + 4 * v12);
  if (v16 < v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 >= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 >= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 < v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 < v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v15 + 4 * v40);
    if (v42 < *(v15 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 >= *(v15 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *,int *>(int *a1, int *a2, int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) < *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v18 = v20 + 1;
          v21 = 2 * v15;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) < *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 + 1;
      v7 = (result + 4 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) >= v12)
      {
        do
        {
          v13 = v7;
          *a4 = v10;
          if (v4 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v10 = *v7;
          a4 = v13;
        }

        while (*(v9 + 4 * v10) >= v12);
        *v13 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LBFGSpp::ArgSort<float> &,int *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v6 = *v5;
    v9 = *(a2 - 4);
    v7 = (a2 - 4);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 4 * v9);
    if (*(*a3 + 4 * v6) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * v6) < v11);
      *v12 = v8;
    }
  }

  return result;
}

void cva::assign<false,false,cva::MatrixRef<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::Matrix<float,0u,1u,false>>(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 1) - 4 * a1[5];
  v5 = **(a2 + 8);
  if (*(v5 + 8) - 4 * *(v5 + 20) == v4 || **(a2 + 16) == v4)
  {
    v14 = *(v5 + 4);
    v27[0] = 0;
    v27[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v27, v14);
    v28 = *(**(a2 + 8) + 4);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::Matrix<float,0u,1u,false>>(v27, a2);
    v16 = *a1;
    if (*a1 != v28)
    {
      cva::Logger::instance(v15);
      v17 = *MEMORY[0x277CFD380];
      v25 = *a1;
      cva::Logger::logInCategory();
      v16 = *a1;
      if (*a1 != v28)
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v18 = v27[0];
    if (v16)
    {
      v19 = *(a1 + 1);
      v20 = 4 * v16;
      v21 = v27[0];
      do
      {
        v22 = *v21++;
        *v19++ = v22;
        v20 -= 4;
      }

      while (v20);
    }

    free(v18);
  }

  else
  {
    v6 = *a1;
    if (*a1 != *(v5 + 4))
    {
      cva::Logger::instance(a1);
      v7 = *MEMORY[0x277CFD380];
      v26 = *(**(a2 + 8) + 4);
      v24 = *a1;
      cva::Logger::logInCategory();
      v6 = *a1;
      v5 = **(a2 + 8);
      if (*a1 != *(v5 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    if (*v5 * v6)
    {
      v8 = *(a2 + 16);
      if (*(v8 + 4))
      {
        v9 = *(a2 + 24);
        v10 = *(v5 + 8);
        v11 = *(v5 + 16);
        v12 = *v8;
        v13 = *(a1 + 1);
        cva::VecLib<float>::gemv();
      }
    }

    if (v6)
    {
      v23 = *(a1 + 1);

      bzero(v23, 4 * v6);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::Matrix<float,0u,1u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = **(a2 + 8);
  if (*(v4 + 8) - 4 * *(v4 + 20) == *a1 || **(a2 + 16) == *a1)
  {
    v13 = *(v4 + 4);
    v20 = 0;
    v21 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v20, v13);
    v22 = *(**(a2 + 8) + 4);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::Matrix<float,0u,1u,false>>(&v20, a2);
    v14 = *a1;
    v15 = a1[1];
    v16 = v21;
    *a1 = v20;
    a1[1] = v16;
    v20 = v14;
    v21 = v15;
    *(a1 + 4) = v22;
    v22 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 4))
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v19 = *(**(a2 + 8) + 4);
      v18 = *(a1 + 4);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = **(a2 + 8);
      if (v5 != *(v4 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    if (*v4 * v5)
    {
      v7 = *(a2 + 16);
      if (*(v7 + 4))
      {
        v8 = *(a2 + 24);
        v9 = *(v4 + 8);
        v10 = *(v4 + 16);
        v11 = *v7;
        v12 = *a1;
        cva::VecLib<float>::gemv();
      }
    }

    if (v5)
    {
      v17 = *a1;

      bzero(v17, 4 * v5);
    }
  }
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float const,0u,1u,false>>(unsigned int *a1, unsigned int *a2)
{
  v4 = *(a1 + 1);
  if ((*(a2 + 1) - 4 * a2[5]) != &v4[-a1[5]])
  {
    v5 = *a1;
    if (*a1 != *a2)
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v27 = *a2;
      v25 = *a1;
      cva::Logger::logInCategory();
      v5 = *a1;
      if (*a1 != *a2)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v5)
    {
      v7 = v5;
      v8 = *(a2 + 1);
      v9 = 4 * v7;
      do
      {
        v10 = *v8++;
        *v4++ = v10;
        v9 -= 4;
      }

      while (v9);
    }

    return a1;
  }

  v11 = *a1;
  v29[0] = 0;
  v29[1] = 0;
  v12 = cva::MatrixData<float,0ul,0ul,false>::allocate(v29, v11);
  v30 = v11;
  if (v11 != *a2)
  {
    cva::Logger::instance(v12);
    v13 = *MEMORY[0x277CFD380];
    v28 = *a2;
    cva::Logger::logInCategory();
    v11 = v30;
    if (v30 != *a2)
    {
      goto LABEL_22;
    }
  }

  v14 = v29[0];
  if (v11)
  {
    v15 = *(a2 + 1);
    v16 = 4 * v11;
    v17 = v29[0];
    do
    {
      v18 = *v15++;
      *v17 = v18;
      v17 = (v17 + 4);
      v16 -= 4;
    }

    while (v16);
  }

  if (*a1 == v11)
  {
    goto LABEL_17;
  }

  cva::Logger::instance(v14);
  v19 = *MEMORY[0x277CFD380];
  v26 = *a1;
  cva::Logger::logInCategory();
  v11 = *a1;
  if (v11 != v30)
  {
LABEL_22:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v14 = v29[0];
LABEL_17:
  if (v11)
  {
    v20 = *(a1 + 1);
    v21 = 4 * v11;
    v22 = v14;
    do
    {
      v23 = *v22;
      v22 = (v22 + 4);
      *v20++ = v23;
      v21 -= 4;
    }

    while (v21);
  }

  free(v14);
  return a1;
}

void LBFGSpp::BKLDLT<float>::solve_inplace(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 104) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "BKLDLT: need to call compute() first");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v3 = *(a2 + 8);
  v4 = *a1;
  v5 = *(a1 + 80);
  v6 = (*(a1 + 88) - v5) >> 4;
  if (v6 >= 1)
  {
    v7 = (v5 + 8);
    v8 = v6;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v3 + 4 * v9);
      *(v3 + 4 * v9) = *(v3 + 4 * *v7);
      *(v3 + 4 * v10) = v11;
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = *(a1 + 72);
  if (v12 <= v4 - 1)
  {
    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
  }

  v13 = -3;
  if (*(*(a1 + 56) + 8 * (v4 - 1)) >= 0)
  {
    v13 = -2;
  }

  v14 = v13 + v4;
  if (v13 + v4 < 0)
  {
    v23 = v4;
  }

  else
  {
    v46 = v6;
    v15 = 0;
    do
    {
      if (*(a1 + 72) <= v15)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v16 = *a1 + ~v15;
      if ((*(*(a1 + 56) + 8 * v15) & 0x8000000000000000) != 0)
      {
        v18 = v16 - 1;
        v19 = *(a1 + 32);
        v20 = *(v19 + 8 * v15) + 8;
        v21 = *(v19 + 8 * (v15 + 1)) + 4;
        v61 = v18;
        v62 = v20;
        v63 = v18;
        v64 = 0;
        LODWORD(v20) = *(v3 + 4 * v15);
        v58 = &v61;
        v60 = 0;
        v59 = v20;
        LODWORD(v51) = v18;
        v52 = v21;
        v53 = v18;
        v54 = 0;
        LODWORD(v21) = *(v3 + 4 * (v15 + 1));
        v55 = &v51;
        v57 = 0;
        v56 = v21;
        v65 = &v58;
        v66 = &v55;
        if (v18 + v15 + 2 > v4)
        {
          LBFGSpp::BFGSMat<float,true>::add_correction();
        }

        v47 = v18;
        v48 = v3 + 4 * (v15 + 2);
        v49 = v4;
        v50 = v15 + 2;
        if (v18 > v4)
        {
          LBFGSpp::BFGSMat<float,true>::apply_Wtv();
        }

        cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::MatrixRef<float const,0u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::MatrixRef<float const,0u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,cva::detail::AssignSubOp<float,float const>>(&v47, &v65);
        ++v15;
      }

      else
      {
        v17 = *(*(a1 + 32) + 8 * v15) + 4;
        LODWORD(v65) = *a1 + ~v15;
        v66 = v17;
        v67 = v16;
        v68 = 0;
        LODWORD(v17) = *(v3 + 4 * v15);
        v51 = &v65;
        BYTE4(v52) = 0;
        LODWORD(v52) = v17;
        if (v15 + 1 + v16 > v4)
        {
          LBFGSpp::BFGSMat<float,true>::add_correction();
        }

        v61 = v16;
        v62 = v3 + 4 * (v15 + 1);
        v63 = v4;
        v64 = v15 + 1;
        if (v16 > v4)
        {
          LBFGSpp::BFGSMat<float,true>::apply_Wtv();
        }

        cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixScalarExpr<cva::MatrixRef<float const,0u,1u,false>,cva::detail::MulOp>,cva::detail::AssignSubOp<float,float const>>(&v61, &v51);
      }

      v22 = v15++ < v14;
    }

    while (v22);
    v23 = *a1;
    v12 = *(a1 + 72);
    v6 = v46;
  }

  if (v23 >= 1)
  {
    v24 = 0;
    v25 = *(a1 + 32);
    do
    {
      if (v12 <= v24)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v26 = *(v25 + 8 * v24);
      v27 = *v26;
      if ((*(*(a1 + 56) + 8 * v24) & 0x8000000000000000) != 0)
      {
        v28 = v26[1];
        v29 = *(v3 + 4 * v24);
        v30 = *(v3 + 4 * (v24 + 1));
        *(v3 + 4 * (v24 + 1)) = (**(v25 + 8 * (v24 + 1)) * v30) + (v29 * v28);
        *(v3 + 4 * v24++) = (v28 * v30) + (v29 * v27);
      }

      else
      {
        *(v3 + 4 * v24) = v27 * *(v3 + 4 * v24);
      }

      ++v24;
    }

    while (v24 < v23);
  }

  if (v12 <= v23 - 1)
  {
    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
  }

  v31 = -3;
  if (*(*(a1 + 56) + 8 * (v23 - 1)) >= 0)
  {
    v31 = -2;
  }

  v32 = v31 + v23;
  if (v31 + v23 >= 0)
  {
    do
    {
      v33 = *a1 + ~v32;
      v34 = v32 + 1;
      if (v32 + 1 + v33 > v4)
      {
        LBFGSpp::BFGSMat<float,true>::add_correction();
      }

      v35 = *(*(a1 + 32) + 8 * v32);
      LODWORD(v65) = *a1 + ~v32;
      v66 = (v3 + 4 * v34);
      v67 = v4;
      v68 = v32 + 1;
      if (v33 > v4)
      {
        LBFGSpp::BFGSMat<float,true>::apply_Wtv();
      }

      v61 = v33;
      v62 = v35 + 4;
      v63 = v33;
      v64 = 0;
      v36 = cva::MatrixMixin<cva::MatrixRef<float,0u,1u,false>,float,0u,1u>::dot<cva::MatrixRef<float const,0u,1u,false>>(&v65, &v61);
      *(v3 + 4 * v32) = *(v3 + 4 * v32) - *&v36;
      if (*(a1 + 72) <= v32)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      if ((*(*(a1 + 56) + 8 * v32) & 0x8000000000000000) != 0)
      {
        --v32;
        v37 = *(*(a1 + 32) + 8 * v32) + 8;
        LODWORD(v65) = v33;
        v66 = (v3 + 4 * v34);
        v67 = v4;
        v68 = v34;
        v61 = v33;
        v62 = v37;
        v63 = v33;
        v64 = 0;
        v38 = cva::MatrixMixin<cva::MatrixRef<float,0u,1u,false>,float,0u,1u>::dot<cva::MatrixRef<float const,0u,1u,false>>(&v65, &v61);
        *(v3 + 4 * v32) = *(v3 + 4 * v32) - *&v38;
      }

      v22 = v32-- <= 0;
    }

    while (!v22);
  }

  if (v6 >= 1)
  {
    v39 = v6 + 1;
    v40 = (*(a1 + 80) + 16 * v6 - 8);
    do
    {
      v41 = *(v40 - 1);
      v42 = *v40;
      v43 = *(v3 + 4 * v41);
      *(v3 + 4 * v41) = *(v3 + 4 * *v40);
      *(v3 + 4 * v42) = v43;
      --v39;
      v40 -= 2;
    }

    while (v39 > 1);
  }

  v44 = *MEMORY[0x277D85DE8];
}

double cva::MatrixMixin<cva::MatrixRef<float,0u,1u,false>,float,0u,1u>::dot<cva::MatrixRef<float const,0u,1u,false>>(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    cva::MatrixMixin<cva::Matrix<float,0u,1u,false>,float,0u,1u>::dot<cva::Matrix<float,0u,1u,false>>();
  }

  if (!v2)
  {
    return 0.0;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 8);
  *&result = *v3 * *v4;
  if (v2 != 1)
  {
    v6 = 4 * v2;
    v7 = v3 + 1;
    v8 = v6 - 4;
    v9 = v4 + 1;
    do
    {
      v10 = *v7++;
      v11 = v10;
      v12 = *v9++;
      *&result = *&result + (v11 * v12);
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

void cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixScalarExpr<cva::MatrixRef<float const,0u,1u,false>,cva::detail::MulOp>,cva::detail::AssignSubOp<float,float const>>(unsigned int *a1, float *a2)
{
  v4 = *(a1 + 1);
  v5 = *a2;
  if ((*(*a2 + 8) - 4 * *(*a2 + 20)) == &v4[-a1[5]])
  {
    v11 = *v5;
    v27[0] = 0;
    v27[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v27, v11);
    v12 = *a2;
    v13 = **a2;
    v28 = v13;
    v14 = v27[0];
    if (v13)
    {
      v15 = *(v12 + 1);
      v16 = 4 * v13;
      v17 = v27[0];
      do
      {
        v18 = *v15++;
        *v17++ = v18 * a2[2];
        v16 -= 4;
      }

      while (v16);
    }

    if (*a1 != v13)
    {
      cva::Logger::instance(v14);
      v19 = *MEMORY[0x277CFD380];
      v25 = *a1;
      cva::Logger::logInCategory();
      v13 = *a1;
      if (v13 != v28)
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v14 = v27[0];
    }

    if (v13)
    {
      v20 = *(a1 + 1);
      v21 = 4 * v13;
      v22 = v14;
      do
      {
        v23 = *v22++;
        *v20 = *v20 - v23;
        ++v20;
        v21 -= 4;
      }

      while (v21);
    }

    free(v14);
  }

  else
  {
    v6 = *a1;
    if (*a1 != *v5)
    {
      cva::Logger::instance(a1);
      v7 = *MEMORY[0x277CFD380];
      v26 = **a2;
      v24 = *a1;
      cva::Logger::logInCategory();
      v6 = *a1;
      v5 = *a2;
      if (*a1 != **a2)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v6)
    {
      v8 = *(v5 + 1);
      v9 = 4 * v6;
      do
      {
        v10 = *v8++;
        *v4 = *v4 - (v10 * a2[2]);
        ++v4;
        v9 -= 4;
      }

      while (v9);
    }
  }
}

void cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::MatrixRef<float const,0u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::MatrixRef<float const,0u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,cva::detail::AssignSubOp<float,float const>>(unsigned int *a1, float **a2)
{
  v4 = *(a1 + 1);
  v5 = &v4[-a1[5]];
  v6 = *a2;
  v7 = **a2;
  if ((*(v7 + 1) - 4 * v7[5]) == v5 || (*(*a2[1] + 8) - 4 * *(*a2[1] + 20)) == v5)
  {
    v18 = *v7;
    v39[0] = 0;
    v39[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v39, v18);
    v19 = *a2;
    v20 = **a2;
    v21 = *v20;
    v40 = v21;
    v22 = v39[0];
    if (v21)
    {
      v23 = a2[1];
      v24 = *(*v23 + 8);
      v25 = *(v20 + 1);
      v26 = 4 * v21;
      v27 = v39[0];
      do
      {
        v28 = *v25++;
        v29 = v28 * v19[2];
        v30 = *v24++;
        *v27++ = v29 + (v30 * v23[2]);
        v26 -= 4;
      }

      while (v26);
    }

    if (*a1 != v21)
    {
      cva::Logger::instance(v22);
      v31 = *MEMORY[0x277CFD380];
      v37 = *a1;
      cva::Logger::logInCategory();
      v21 = *a1;
      if (v21 != v40)
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v22 = v39[0];
    }

    if (v21)
    {
      v32 = *(a1 + 1);
      v33 = 4 * v21;
      v34 = v22;
      do
      {
        v35 = *v34++;
        *v32 = *v32 - v35;
        ++v32;
        v33 -= 4;
      }

      while (v33);
    }

    free(v22);
  }

  else
  {
    v8 = *a1;
    if (*a1 != *v7)
    {
      cva::Logger::instance(a1);
      v9 = *MEMORY[0x277CFD380];
      v38 = ***a2;
      v36 = *a1;
      cva::Logger::logInCategory();
      v8 = *a1;
      v6 = *a2;
      v7 = **a2;
      if (*a1 != *v7)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v8)
    {
      v10 = v8;
      v11 = a2[1];
      v12 = *(*v11 + 8);
      v13 = *(v7 + 1);
      v14 = 4 * v10;
      do
      {
        v15 = *v13++;
        v16 = v15 * v6[2];
        v17 = *v12++;
        *v4 = *v4 - (v16 + (v17 * v11[2]));
        ++v4;
        v14 -= 4;
      }

      while (v14);
    }
  }
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(unsigned int *a1, unsigned int *a2)
{
  v4 = *(a1 + 1);
  if ((*(a2 + 1) - 4 * a2[5]) != &v4[-a1[5]])
  {
    v5 = *a1;
    if (*a1 != *a2)
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v27 = *a2;
      v25 = *a1;
      cva::Logger::logInCategory();
      v5 = *a1;
      if (*a1 != *a2)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v5)
    {
      v7 = v5;
      v8 = *(a2 + 1);
      v9 = 4 * v7;
      do
      {
        v10 = *v8++;
        *v4++ = v10;
        v9 -= 4;
      }

      while (v9);
    }

    return a1;
  }

  v11 = *a1;
  v29[0] = 0;
  v29[1] = 0;
  v12 = cva::MatrixData<float,0ul,0ul,false>::allocate(v29, v11);
  v30 = v11;
  if (v11 != *a2)
  {
    cva::Logger::instance(v12);
    v13 = *MEMORY[0x277CFD380];
    v28 = *a2;
    cva::Logger::logInCategory();
    v11 = v30;
    if (v30 != *a2)
    {
      goto LABEL_22;
    }
  }

  v14 = v29[0];
  if (v11)
  {
    v15 = *(a2 + 1);
    v16 = 4 * v11;
    v17 = v29[0];
    do
    {
      v18 = *v15++;
      *v17 = v18;
      v17 = (v17 + 4);
      v16 -= 4;
    }

    while (v16);
  }

  if (*a1 == v11)
  {
    goto LABEL_17;
  }

  cva::Logger::instance(v14);
  v19 = *MEMORY[0x277CFD380];
  v26 = *a1;
  cva::Logger::logInCategory();
  v11 = *a1;
  if (v11 != v30)
  {
LABEL_22:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v14 = v29[0];
LABEL_17:
  if (v11)
  {
    v20 = *(a1 + 1);
    v21 = 4 * v11;
    v22 = v14;
    do
    {
      v23 = *v22;
      v22 = (v22 + 4);
      *v20++ = v23;
      v21 -= 4;
    }

    while (v21);
  }

  free(v14);
  return a1;
}

float LBFGSpp::LineSearchMoreThuente<float>::step_selection(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9)
{
  v11 = *a1;
  if (*a1 != *a2)
  {
    v38 = v9;
    v39 = v10;
    if ((*a6 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*a9 & 0x7FFFFFFFu) < 0x7F800000)
    {
      v37 = 0;
      v21 = LBFGSpp::LineSearchMoreThuente<float>::cubic_minimizer(a1, a3, a4, a6, a7, a9, &v37);
      v22 = *a3;
      v23 = *a1;
      v24 = *a3 - *a1;
      v25 = *a7;
      if (*a6 <= *a4)
      {
        v28 = v23 + ((v25 / (v25 - *a9)) * v24);
        if ((v25 * *a9) >= 0.0)
        {
          if (fabsf(*a9) >= fabsf(v25))
          {
            if ((*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF || (*a5 & 0x7FFFFFFFu) > 0x7F7FFFFF || (*a8 & 0x7FFFFFFFu) >= 0x7F800000)
            {
              return v22 + (v24 * 1.1);
            }

            v34 = 0;
            v32 = LBFGSpp::LineSearchMoreThuente<float>::cubic_minimizer(a3, a2, a6, a5, a9, a8, &v34);
            v36 = v32;
            v33 = *a3 + ((*a2 - *a3) * 0.66);
            if (*a3 <= *a1)
            {
              v35 = *a3 + ((*a2 - *a3) * 0.66);
              v30 = v33 < v32;
            }

            else
            {
              v35 = *a3 + ((*a2 - *a3) * 0.66);
              v30 = v32 < v33;
            }
          }

          else
          {
            if (!v37 || ((v21 - v22) * v24) <= 0.0 || fabsf(v21 - v22) >= vabds_f32(v28, v22))
            {
              v21 = v23 + ((v25 / (v25 - *a9)) * v24);
            }

            v36 = v21;
            v29 = v22 + ((*a2 - v22) * 0.66);
            v35 = v29;
            if (v22 <= v23)
            {
              v30 = v29 < v21;
            }

            else
            {
              v30 = v21 < v29;
            }
          }

          v31 = &v35;
          if (v30)
          {
            v31 = &v36;
          }

          return *v31;
        }

        else if (vabds_f32(v21, v22) < vabds_f32(v28, v22))
        {
          return v23 + ((v25 / (v25 - *a9)) * v24);
        }

        else
        {
          return v21;
        }
      }

      else
      {
        v11 = v23 + (((v25 * (v24 * 0.5)) / ((*a4 - *a6) + (v24 * v25))) * v24);
        if (v37)
        {
          v26 = vabds_f32(v21, v23);
          v27 = vabds_f32(v11, v23);
          v11 = (v21 + v11) * 0.5;
          if (v26 < v27)
          {
            return v21;
          }
        }
      }
    }

    else
    {
      return (v11 + *a3) * 0.5;
    }
  }

  return v11;
}

float LBFGSpp::LineSearchMoreThuente<float>::cubic_minimizer(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6, BOOL *a7)
{
  result = *a2;
  v8 = *a1 + *a2;
  v9 = *a2 - *a1;
  v10 = *a4 - *a3;
  v11 = (v10 * -2.0) + ((*a6 + *a5) * v9);
  v12 = (((v8 * -3.0) * v11) + ((*a6 - *a5) * (v9 * v9))) * 0.5;
  v13 = ((v10 * (v9 * v9)) - (v8 * v12)) - (((result * result) + (*a1 * v8)) * v11);
  v14 = fabsf(v11);
  if (v14 >= (fabsf(v12) * 0.00000011921) && v14 >= (fabsf(v13) * 0.00000011921))
  {
    v16 = v12 / (v11 * 3.0);
    v17 = v13 / v12;
    *a7 = (v17 / v16) <= 1.0;
    if ((v17 / v16) <= 1.0)
    {
      v18 = fabsf(v16);
      v19 = fabsf(v17);
      v20 = v18 < v19;
      v21 = (sqrtf(v18) * sqrtf(v19)) * sqrtf(1.0 - (v16 / v17));
      v22 = -v16 - v21;
      result = v21 - v16;
      v23 = sqrtf(1.0 - (v17 / v16)) + 1.0;
      v24 = -(v16 * v23);
      v25 = -v17 / v23;
      if (v20)
      {
        v26 = v22;
      }

      else
      {
        v26 = v24;
      }

      if (!v20)
      {
        result = v25;
      }

      v27 = result < v26;
      if ((v9 * v11) > 0.0)
      {
        v27 = v26 < result;
      }

      if (!v27)
      {
        return v26;
      }
    }
  }

  else
  {
    v15 = v9 * v12;
    *a7 = v15 > 0.0;
    if (v15 > 0.0)
    {
      return (v13 * -0.5) / v12;
    }
  }

  return result;
}

void LBFGSpp::BKLDLT<float>::compute(uint64_t a1, unsigned int *a2, int a3, float *a4)
{
  v5 = *a2;
  v6 = a2[1];
  *a1 = v5;
  if (v5 != v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BKLDLT: matrix must be square");
    __cxa_throw(exception, off_2798D4070, MEMORY[0x277D82610]);
  }

  *(a1 + 72) = v5;
  cva::MatrixData<long,0ul,0ul,false>::reserve(a1 + 56, v5);
  v10 = *a1;
  if (*a1 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 72);
    do
    {
      if (v12 == v11)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      *(*(a1 + 56) + 8 * v11) = v11;
      ++v11;
      v10 = *a1;
    }

    while (*a1 > v11);
  }

  *(a1 + 88) = *(a1 + 80);
  v13 = (v10 + v10 * v10) / 2;
  *(a1 + 24) = v13;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 8, v13);
  LBFGSpp::BKLDLT<float>::compute_pointer(a1);
  LBFGSpp::BKLDLT<float>::copy_data(a1, a2, a3, a4);
  v20 = 1059319931;
  v14 = *a1;
  if (*a1 <= 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if (LBFGSpp::BKLDLT<float>::permutate_mat(a1, v15, &v20))
      {
        v16 = LBFGSpp::BKLDLT<float>::gaussian_elimination_1x1(a1, v15);
        *(a1 + 108) = v16;
      }

      else
      {
        v16 = LBFGSpp::BKLDLT<float>::gaussian_elimination_2x2(a1, v15);
        *(a1 + 108) = v16;
        ++v15;
      }

      v14 = *a1;
      if (v16)
      {
        break;
      }

      ++v15;
    }

    while (v15 < (v14 - 1));
  }

  if (v15 == v14 - 1)
  {
    v17 = *(*(a1 + 32) + 8 * v15);
    v18 = *v17;
    if (*v17 == 0.0)
    {
      *(a1 + 108) = 2;
    }

    *v17 = 1.0 / v18;
  }

  LBFGSpp::BKLDLT<float>::compress_permutation(a1);
  *(a1 + 104) = 1;
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,0u,false>>,cva::MatrixRef<float,0u,1u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = **(a2 + 8);
  if (*(v4 + 8) - 4 * *(v4 + 20) == *a1 || *(*(a2 + 16) + 8) - 4 * *(*(a2 + 16) + 20) == *a1)
  {
    v13 = *(v4 + 4);
    v20 = 0;
    v21 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v20, v13);
    v22 = *(**(a2 + 8) + 4);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,0u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v20, a2);
    v14 = *a1;
    v15 = a1[1];
    v16 = v21;
    *a1 = v20;
    a1[1] = v16;
    v20 = v14;
    v21 = v15;
    *(a1 + 4) = v22;
    v22 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 4))
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v19 = *(**(a2 + 8) + 4);
      v18 = *(a1 + 4);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = **(a2 + 8);
      if (v5 != *(v4 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    if (*v4 * v5)
    {
      v7 = *(a2 + 16);
      if (*v7)
      {
        v8 = *(v4 + 8);
        v9 = *(v4 + 16);
        v10 = *(v7 + 8);
        v11 = *(a2 + 24);
        v12 = *a1;
        cva::VecLib<float>::gemv();
      }
    }

    if (v5)
    {
      v17 = *a1;

      bzero(v17, 4 * v5);
    }
  }
}

float cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,1u,false>>>(unsigned int *a1, uint64_t **a2)
{
  if (a1[4] != 1 || (v4 = *a2, v5 = a1[5], v5 != *(*a2 + 4)))
  {
    cva::Logger::instance(a1);
    v6 = *MEMORY[0x277CFD380];
    v14 = *(*a2 + 4);
    v12 = a1[4];
    v13 = a1[5];
    cva::Logger::logInCategory();
    if (a1[4] != 1 || (v4 = *a2, v5 = a1[5], v5 != *(*a2 + 4)))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
    }
  }

  if (v5)
  {
    v8 = 0;
    v9 = *a1;
    v10 = *v4;
    v11 = 4 * v5;
    do
    {
      if (v8 >= v5)
      {
        LBFGSpp::BFGSMat<float,true>::add_correction();
      }

      result = *(v10 + 4 * v8);
      *v9++ = result;
      v8 = (v8 + 1);
      v11 -= 4;
    }

    while (v11);
  }

  return result;
}

void LBFGSpp::BKLDLT<float>::compute_pointer(unint64_t *a1)
{
  v2 = a1 + 4;
  a1[5] = a1[4];
  std::vector<float *>::reserve(a1 + 4, *a1);
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1[1];
    v6 = a1[5];
    do
    {
      v7 = a1[6];
      if (v6 >= v7)
      {
        v8 = (v6 - *v2) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v9 = v7 - *v2;
        v10 = v9 >> 2;
        if (v9 >> 2 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(v2, v11);
        }

        *(8 * v8) = v5;
        v6 = (8 * v8 + 8);
        v12 = a1[4];
        v13 = a1[5] - v12;
        v14 = (8 * v8 - v13);
        memcpy(v14, v12, v13);
        v15 = a1[4];
        a1[4] = v14;
        a1[5] = v6;
        a1[6] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v6++ = v5;
      }

      a1[5] = v6;
      v5 += 4 * (v3 + *a1);
      ++v4;
      --v3;
    }

    while (v4 < *a1);
  }
}

float LBFGSpp::BKLDLT<float>::copy_data(uint64_t *a1, uint64_t a2, int a3, float *a4)
{
  v7 = *a1;
  if (a3 == 1)
  {
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (*a2 <= v9 || *(a2 + 4) <= v9)
        {
          LBFGSpp::BFGSMat<float,true>::add_correction();
        }

        memmove(*(a1[4] + 8 * v9), (*(a2 + 8) + 4 * (v9 + v9 * *(a2 + 16))), 4 * (v7 + v8));
        v11 = *(a1[4] + 8 * v9);
        result = *v11 - *a4;
        *v11 = result;
        ++v9;
        v7 = *a1;
        --v8;
      }

      while (v9 < *a1);
    }
  }

  else if (v7 >= 1)
  {
    v13 = 0;
    v14 = *a2;
    v15 = a1[1];
    do
    {
      if (v14 <= v13)
      {
LABEL_19:
        LBFGSpp::BFGSMat<float,true>::add_correction();
      }

      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      v18 = v13 + v13 * v17;
      v19 = v13;
      do
      {
        if (*(a2 + 4) <= v19)
        {
          goto LABEL_19;
        }

        *v15++ = *(v16 + 4 * v18);
        ++v19;
        v18 += v17;
      }

      while (v7 != v19);
      v20 = *(a1[4] + 8 * v13);
      result = *v20 - *a4;
      *v20 = result;
      ++v13;
    }

    while (v13 != (v7 & ~(v7 >> 63)));
  }

  return result;
}

uint64_t LBFGSpp::BKLDLT<float>::permutate_mat(void *a1, uint64_t a2, float *a3)
{
  v4 = a2;
  v30 = a2;
  v6 = a1[4];
  v7 = *(v6 + 8 * a2);
  v8 = a2 + 1;
  v9 = *(v6 + 8 * (a2 + 1));
  v10 = fabsf(v7[1]);
  if ((v7 + 2) >= v9)
  {
    v12 = a2 + 1;
  }

  else
  {
    v11 = 2;
    v12 = a2 + 1;
    do
    {
      v13 = fabsf(v7[v11]);
      if (v10 < v13)
      {
        v12 = a2 + ((v11 * 4) >> 2);
        v10 = v13;
      }

      ++v11;
    }

    while (&v7[v11] < v9);
  }

  if (v10 <= 0.0)
  {
    return 1;
  }

  v14 = fabsf(*v7);
  if (v14 >= (v10 * *a3))
  {
    return 1;
  }

  LBFGSpp::BKLDLT<float>::find_sigma(a1, a2, v12, &v30);
  if ((v14 * v15) >= (v10 * (v10 * *a3)))
  {
    return 1;
  }

  if (v14 >= (v15 * *a3))
  {
    LBFGSpp::BKLDLT<float>::pivoting_1x1(a1, v4, v12);
    result = 1;
    if (v4 >= 1 && v12 != v4)
    {
      v26 = a1[4];
      v27 = 4 * v12;
      do
      {
        v28 = *v26++;
        v29 = *(v28 + 4 * v4);
        *(v28 + 4 * v4) = *(v28 + v27);
        *(v28 + v27) = v29;
        v27 -= 4;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v30 = v4;
    LBFGSpp::BKLDLT<float>::pivoting_2x2(a1, v4, v12, v4);
    if (v4 >= 1 && v30 != v4)
    {
      v17 = a1[4];
      v18 = 4 * v30;
      v19 = v4;
      do
      {
        v20 = *v17++;
        v21 = *(v20 + 4 * v19);
        *(v20 + 4 * v19) = *(v20 + v18);
        *(v20 + v18) = v21;
        v18 -= 4;
        --v19;
      }

      while (v19);
    }

    result = 0;
    if (v4 >= 1 && v8 != v12)
    {
      v22 = a1[4];
      v23 = 4 * v12;
      do
      {
        result = 0;
        v24 = *v22++;
        v25 = *(v24 + 4 * v8);
        *(v24 + 4 * v8) = *(v24 + v23);
        *(v24 + v23) = v25;
        --v8;
        v23 -= 4;
      }

      while (v8 != 1);
    }
  }

  return result;
}

uint64_t LBFGSpp::BKLDLT<float>::gaussian_elimination_1x1(void *a1, uint64_t a2)
{
  v2 = *(a1[4] + 8 * a2);
  v3 = *v2;
  if (*v2 == 0.0)
  {
    return 2;
  }

  *v2 = 1.0 / v3;
  v6 = v2 + 1;
  v7 = *a1 + ~a2;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 8 * a2 + 8;
    v10 = *a1 + ~a2;
    do
    {
      v11 = v6[v8];
      v18 = v10;
      v19 = &v6[v8];
      v20 = v7;
      v21 = v8;
      if (v10 > v7)
      {
        LBFGSpp::BFGSMat<float,true>::apply_Wtv();
      }

      v22 = &v18;
      v24 = 0;
      v23 = v11 / v3;
      v12 = *(a1[4] + v9 + 8 * v8);
      v14 = v10;
      v15 = v12;
      v16 = v10;
      v17 = 0;
      cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::detail::AssignSubOp<float,float const>>(&v14, &v22);
      ++v8;
      LODWORD(v10) = v10 - 1;
    }

    while (v7 != v8);
  }

  if (v7)
  {
    v13 = 4 * v7;
    do
    {
      *v6 = *v6 / v3;
      ++v6;
      v13 -= 4;
    }

    while (v13);
  }

  return 0;
}

uint64_t LBFGSpp::BKLDLT<float>::gaussian_elimination_2x2(uint64_t *a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = a1[4] + 8 * a2;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = **v2;
  v6 = (v5 * *v3) - (*(*v2 + 4) * *(*v2 + 4));
  if (v6 == 0.0)
  {
    result = 2;
  }

  else
  {
    *v4 = *v3;
    *v3 = v5;
    *v4 = *v4 / v6;
    *v3 = *v3 / v6;
    v10 = v3 + 1;
    v4[1] = -v4[1] / v6;
    v11 = *a1;
    v12 = *a1 - a2;
    v13 = v12 - 2;
    v47[0] = 0;
    v47[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v47, 2 * ((v12 - 2) & 0x7FFFFFFF));
    v48 = v12 - 2;
    v40 = v12 - 2;
    v41 = v4 + 2;
    v42 = v12 - 2;
    v43 = 0;
    v14 = *v4;
    v44 = &v40;
    v46 = 0;
    v45 = v14;
    v33 = v12 - 2;
    v34 = (v3 + 1);
    v35 = v12 - 2;
    v36 = 0;
    v15 = v4[1];
    v37 = &v33;
    v39 = 0;
    v38 = v15;
    v49 = &v44;
    v50 = &v37;
    v29 = v12 - 2;
    v30 = v47[0];
    v31 = v12 - 2;
    v32 = 0;
    cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>>(&v29, &v49);
    v40 = v12 - 2;
    v41 = v4 + 2;
    v42 = v12 - 2;
    v43 = 0;
    v16 = v4[1];
    v44 = &v40;
    v46 = 0;
    v45 = v16;
    v33 = v12 - 2;
    v34 = (v3 + 1);
    v35 = v12 - 2;
    v36 = 0;
    v17 = *v3;
    v37 = &v33;
    v39 = 0;
    v38 = v17;
    v49 = &v44;
    v50 = &v37;
    v29 = v48;
    v30 = v47[0] + 4 * v48;
    v31 = v48;
    v32 = v48;
    v18 = cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>>(&v29, &v49);
    if (v12 >= 3)
    {
      v19 = 0;
      v20 = v11 - a2 - 2;
      v21 = a2 - v11 + 2;
      do
      {
        v40 = v20;
        v41 = (v47[0] + 4 * v21 + 4 * v19 + 4 * v48);
        v42 = v48;
        v43 = v21 + v19 + v48;
        if (v48 < v20)
        {
          __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
        }

        v22 = v4[v19 + 2];
        v44 = &v40;
        v46 = 0;
        v45 = v22;
        v33 = v20;
        v34 = v47[0] + 8 * v48 + 4 * v21 + 4 * v19;
        v35 = v48;
        v36 = v21 + v19 + 2 * v48;
        v23 = v10[v19];
        v37 = &v33;
        v39 = 0;
        v38 = v23;
        if (v20 != v40)
        {
          cva::Logger::instance(v18);
          v24 = *MEMORY[0x277CFD380];
          v28 = *v37;
          v27 = *v44;
          cva::Logger::logInCategory();
          if (*v44 != *v37)
          {
            __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
          }
        }

        v49 = &v44;
        v50 = &v37;
        v25 = *(a1[4] + 8 * a2 + 16 + 8 * v19);
        v29 = v20;
        v30 = v25;
        v31 = v20;
        v32 = 0;
        cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,cva::detail::AssignSubOp<float,float const>>(&v29, &v49);
        ++v19;
        --v20;
      }

      while (v13 != v19);
    }

    LODWORD(v49) = v48;
    v50 = v47[0];
    v51 = v48;
    v52 = 0;
    v40 = v13;
    v41 = v4 + 2;
    v42 = v13;
    v43 = 0;
    cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(&v40, &v49);
    LODWORD(v49) = v48;
    v50 = (v47[0] + 4 * v48);
    v51 = v48;
    v52 = v48;
    v40 = v13;
    v41 = v10;
    v42 = v13;
    v43 = 0;
    cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(&v40, &v49);
    free(v47[0]);
    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}