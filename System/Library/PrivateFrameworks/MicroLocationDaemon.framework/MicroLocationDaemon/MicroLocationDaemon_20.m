double *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*(a2 - 1) >= *a1)
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      ++v6;
    }

    while (*v4 >= v3);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
    }

    while (v5 >= v3);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 < v3);
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      *v4 = v9;
      *a2 = v8;
      do
      {
        v10 = v4[1];
        ++v4;
        v8 = v10;
      }

      while (v10 >= v3);
      do
      {
        v11 = *--a2;
        v12 = v11;
      }

      while (v11 < v3);
      v9 = v12;
    }

    while (v4 < a2);
  }

  if (v4 - 1 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

double *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v5 > v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *--a2;
    }

    while (v9 <= v4);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while (v8 <= v4);
  }

  if (v6 < a2)
  {
    v10 = *a2;
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v5;
      do
      {
        v13 = v11[1];
        ++v11;
        v5 = v13;
      }

      while (v13 > v4);
      do
      {
        v14 = *--v12;
        v15 = v14;
      }

      while (v14 <= v4);
      v10 = v15;
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(double *a1, double *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 > *a1)
      {
        if (v18 <= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v44 = *(a2 - 1);
          if (v44 <= v16)
          {
            return 1;
          }

          a1[1] = v44;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 <= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_67:
      v48 = *a1;
      if (v33 > *a1)
      {
        *a1 = v33;
        a1[1] = v48;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v6 = a1 + 2;
      v7 = a1[2];
      v8 = *a1;
      if (v5 <= *a1)
      {
        if (v7 <= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_57;
        }

        *v4 = v7;
        *v6 = v5;
        v9 = a1;
        v10 = a1 + 1;
        v11 = v7;
        v12 = v8;
        v13 = v5;
        if (v7 <= v8)
        {
          v11 = v8;
          v8 = v7;
          v7 = v5;
LABEL_57:
          v45 = a1[3];
          if (v45 <= v7)
          {
            v7 = a1[3];
          }

          else
          {
            a1[2] = v45;
            a1[3] = v7;
            if (v45 > v8)
            {
              *v4 = v45;
              *v6 = v8;
              if (v45 > v11)
              {
                *a1 = v45;
                a1[1] = v11;
              }
            }
          }

          v46 = *(a2 - 1);
          if (v46 <= v7)
          {
            return 1;
          }

          a1[3] = v46;
          *(a2 - 1) = v7;
          v47 = a1[2];
          v33 = a1[3];
          if (v33 <= v47)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v47;
          v43 = a1[1];
LABEL_65:
          if (v33 <= v43)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v43;
          goto LABEL_67;
        }
      }

      else if (v7 <= v5)
      {
        *a1 = v5;
        a1[1] = v8;
        v9 = a1 + 1;
        v10 = a1 + 2;
        v11 = v5;
        v12 = v7;
        v13 = v8;
        if (v7 <= v8)
        {
          v11 = v5;
          goto LABEL_57;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v7;
      *v10 = v8;
      v8 = v12;
      v7 = v13;
      goto LABEL_57;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 <= *a1)
    {
      if (v28 <= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 <= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 <= v26)
        {
          return 1;
        }

        *v27 = v42;
        *(a2 - 1) = v26;
        v33 = *v27;
        v43 = *v25;
        goto LABEL_65;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 <= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 <= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 > *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v19 = a1 + 2;
  v20 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 > *a1)
  {
    v23 = a1;
    v24 = a1 + 2;
    if (v20 <= v21)
    {
      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
      if (v20 <= v22)
      {
        goto LABEL_29;
      }
    }

LABEL_28:
    *v23 = v20;
    *v24 = v22;
    goto LABEL_29;
  }

  if (v20 > v21)
  {
    a1[1] = v20;
    *v19 = v21;
    v23 = a1;
    v24 = a1 + 1;
    if (v20 > v22)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v19;
    if (*v34 > *v19)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= v37)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v19 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

double *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(double *a1, double *a2, double *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(a1, a4, v8, v11--);
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
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 8) >> 3;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
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
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
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
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
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
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
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
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CLMicroLocationFingerprintPool *a3@<X2>, uuid *a4@<X3>, uint64_t a5@<X8>)
{
  v226 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  if (result)
  {
    *a5 = 0;
    *(a5 + 344) = 0;
LABEL_184:
    v140 = *MEMORY[0x277D85DE8];
    return result;
  }

  v225 = 0uLL;
  *buf = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(buf);
  *&v225 = boost::uuids::random_generator_pure::operator()(buf);
  *(&v225 + 1) = v10;
  boost::uuids::detail::random_provider_base::destroy(buf);
  CLMicroLocationModel::CLMicroLocationModel(&v182);
  v181 = 0;
  v179 = &v180;
  v180 = 0;
  v175 = 0;
  LOBYTE(v176.var0) = 0;
  v177 = 0;
  v172 = 0;
  v173 = 0;
  v171 = 0;
  v174 = 0;
  v178 = -3.4028e38;
  v11 = std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v224, a1);
  CLMicroLocationBlueAtlasAlgorithms::getBlueAtlasScanningData(v11, a2, a4, &v225, v168);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v224);
  v12 = *(a1 + 24);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v12 + 48))(v12) & 1) != 0 || (v170 & 1) == 0)
  {
    *a5 = 0;
    *(a5 + 344) = 0;
LABEL_172:
    if (v170 == 1)
    {
      *buf = &v169;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = v168;
      std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    if (v171)
    {
      v172 = v171;
      operator delete(v171);
    }

    std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(&v179, v180);
    if (v200 < 0)
    {
      operator delete(v199);
    }

    if (v197)
    {
      v198 = v197;
      operator delete(v197);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v196);
    *buf = &v195;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v187 == 1)
    {
      if (v186[0])
      {
        v186[1] = v186[0];
        operator delete(v186[0]);
      }
    }

    result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v185);
    goto LABEL_184;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::__tuple_impl(&v162, v168);
  v13 = v167;
  if (!v167)
  {
LABEL_158:
    v182 = 0x300000005;
    v183 = 1;
    v184 = 1;
    v188 = v13;
    v189 = -1227133513 * ((v163 - v162) >> 5);
    v190 = v189;
    v191 = 0;
    v192 = (v172 - v171) >> 3;
    v194 = 0;
    v193 = 0;
    std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>(v186, &v171);
    *v222.data = 0;
    *&v222.data[8] = 0;
    *buf = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(buf);
    *v222.data = boost::uuids::random_generator_pure::operator()(buf);
    *&v222.data[8] = v133;
    boost::uuids::detail::random_provider_base::destroy(buf);
    v135 = v162;
    for (i = v163; v135 != i; v135 = (v135 + 224))
    {
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(buf, v135);
      CLMicroLocationModel::addFingerprint(&v182, buf, &v222, a3);
      CLMicroLocationModel::addRecording(&v182, &v222, &buf[40]);
      *&v160 = &v212 + 8;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v160);
      if (*&v211[8])
      {
        *&v211[16] = *&v211[8];
        operator delete(*&v211[8]);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v206);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v204);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
    }

    CLMicroLocationBlueAtlasAlgorithms::validateBlueAtlasModelQuality(&v182, v134);
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN5boost5uuids4uuidE20CLMicroLocationModelNS_6vectorI28ULMapLabelDOAndLabelObjectIDNS_9allocatorIS8_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS5_S6_SB_EJEJEJRS5_RS6_RSB_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(buf, &v225, &v182, v164);
    v137 = *&buf[16];
    *a5 = *buf;
    *(a5 + 16) = v137;
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a5 + 32, &buf[32]);
    *(a5 + 72) = *&v204[8];
    *(a5 + 88) = 0;
    *(a5 + 152) = 0;
    if (v210 == 1)
    {
      *(a5 + 88) = v205;
      *(a5 + 104) = v206;
      v206 = 0;
      v205 = 0uLL;
      v138 = v208;
      *(a5 + 112) = v207;
      *(a5 + 128) = v138;
      *(a5 + 144) = v209;
      *(a5 + 152) = 1;
    }

    *(a5 + 160) = *v211;
    *(a5 + 172) = *&v211[12];
    *(a5 + 192) = v212;
    *(a5 + 208) = v213;
    v212 = 0uLL;
    v213 = 0;
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a5 + 216, v214);
    v139 = v216;
    *(a5 + 256) = v214[5];
    *(a5 + 264) = v215;
    *(a5 + 280) = v139;
    v215 = 0uLL;
    *(a5 + 288) = v217;
    *(a5 + 304) = v218;
    v216 = 0;
    v217 = 0uLL;
    v218 = 0;
    *(a5 + 312) = v219;
    *(a5 + 320) = v220;
    *(a5 + 336) = v221;
    v220 = 0uLL;
    v221 = 0;
    *(a5 + 344) = 1;
    *&v160 = &v220;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v160);
    if (SHIBYTE(v218) < 0)
    {
      operator delete(v217);
    }

    if (v215)
    {
      *(&v215 + 1) = v215;
      operator delete(v215);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v214);
    *&v160 = &v212;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v160);
    if (v210 == 1 && v205)
    {
      *(&v205 + 1) = v205;
      operator delete(v205);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf[32]);
    *buf = v164;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = &v162;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_172;
  }

  v14 = v162;
  for (j = v163; v14 != j; v14 = (v14 + 224))
  {
    for (k = *(v14 + 2); k; k = *k)
    {
      if (*(k + 6) == 1)
      {
        if (*(k + 14))
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        *v222.data = k[4];
        v16 = *(k + 7);
        *buf = &v222;
        v17 = std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v179, v222.data);
        v18 = v17;
        v20 = v17[6];
        v19 = v17[7];
        if (v20 >= v19)
        {
          v22 = v17[5];
          v23 = v20 - v22;
          v24 = (v20 - v22) >> 2;
          v25 = v24 + 1;
          if ((v24 + 1) >> 62)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v26 = v19 - v22;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v27 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>((v17 + 5), v27);
          }

          v28 = (v20 - v22) >> 2;
          v29 = (4 * v24);
          v30 = (4 * v24 - 4 * v28);
          *v29 = v16;
          v21 = v29 + 1;
          memcpy(v30, v22, v23);
          v31 = v18[5];
          v18[5] = v30;
          v18[6] = v21;
          v18[7] = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v20 = v16;
          v21 = v20 + 4;
        }

        v18[6] = v21;
      }
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
  }

  v32 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = v181;
    _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, Num unique APs:%{public}lu}", buf, 0x1Cu);
  }

  v33 = +[ULDefaultsSingleton shared];
  v34 = [v33 defaultsDictionary];

  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasAppearanceRateThresholds"];
  v36 = [v34 objectForKey:v35];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v36, buf);
    v222 = *buf;
    v37 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_33BlueAtlasAppearanceRateThresholdsEE12defaultValueE_, 2uLL, buf);
    v37 = *&buf[16];
    v222 = *buf;
  }

  v223 = v37;

  v38 = +[ULDefaultsSingleton shared];
  v39 = [v38 defaultsDictionary];

  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasAppearanceRateScores"];
  v41 = [v39 objectForKey:v40];
  if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v41, buf);
    v144 = *buf;
    v160 = *buf;
    v42 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_29BlueAtlasAppearanceRateScoresEE12defaultValueE_, 2uLL, buf);
    v42 = *&buf[16];
    v144 = *buf;
    v160 = *buf;
  }

  v161 = v42;

  v43 = +[ULDefaultsSingleton shared];
  v44 = [v43 defaultsDictionary];

  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasRssiThresholds"];
  v46 = [v44 objectForKey:v45];
  if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v46, buf);
    v147 = *buf;
    v158 = *buf;
    v47 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_23BlueAtlasRssiThresholdsEE12defaultValueE_, 4uLL, buf);
    v47 = *&buf[16];
    v147 = *buf;
    v158 = *buf;
  }

  v159 = v47;

  v145 = v147;
  v48 = +[ULDefaultsSingleton shared];
  v49 = [v48 defaultsDictionary];

  v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasRssiScores"];
  v51 = [v49 objectForKey:v50];
  if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v51, buf);
    v148 = *buf;
    v156 = *buf;
    v52 = *&buf[16];
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_19BlueAtlasRssiScoresEE12defaultValueE_, 4uLL, buf);
    v52 = *&buf[16];
    v148 = *buf;
    v156 = *buf;
  }

  v157 = v52;

  __src = 0;
  v154 = 0;
  v155 = 0;
  v53 = v179;
  if (v179 == &v180)
  {
    v84 = 0;
    v83 = 0;
  }

  else
  {
    do
    {
      v55 = v53[5];
      v54 = v53[6];
      v56 = v54 - v55;
      if (v54 == v55)
      {
        v59 = 0.0;
      }

      else
      {
        v57 = 0.0;
        do
        {
          v58 = *v55++;
          v57 = v57 + v58;
        }

        while (v55 != v54);
        v59 = v57;
      }

      v60 = (v56 >> 2);
      CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(&v222, &v160, v60 / v167);
      v62 = v61;
      CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(&v158, &v156, v59 / v60);
      v64 = (v62 + v63) * 0.5;
      v65 = v53[4];
      v66 = v154;
      if (v154 >= v155)
      {
        v68 = __src;
        v69 = v154 - __src;
        v70 = (v154 - __src) >> 4;
        v71 = v70 + 1;
        if ((v70 + 1) >> 60)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v72 = v155 - __src;
        if ((v155 - __src) >> 3 > v71)
        {
          v71 = v72 >> 3;
        }

        if (v72 >= 0x7FFFFFFFFFFFFFF0)
        {
          v73 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v73 = v71;
        }

        if (v73)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__src, v73);
        }

        v74 = (v154 - __src) >> 4;
        v75 = 16 * v70;
        *v75 = v65;
        *(v75 + 8) = v64;
        v67 = 16 * v70 + 16;
        v76 = (16 * v70 - 16 * v74);
        memcpy((v75 - 16 * v74), v68, v69);
        v77 = __src;
        __src = v76;
        v154 = v67;
        v155 = 0;
        if (v77)
        {
          operator delete(v77);
        }
      }

      else
      {
        *v154 = v65;
        *(v66 + 1) = v64;
        v67 = (v66 + 16);
      }

      v154 = v67;
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
      }

      v78 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v151.var0 = ULHomeSlamModel::getTrajectoryPointCloud(v53[4]);
        CLMacAddress::toPrettyStr(&v151, &__p);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = p_p;
        *&buf[28] = 2050;
        *&buf[30] = v64;
        _os_log_impl(&dword_258FE9000, v78, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, bssid:%{public, location:escape_only}s, score:%{public}f}", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v80 = v53[1];
      if (v80)
      {
        do
        {
          v81 = v80;
          v80 = *v80;
        }

        while (v80);
      }

      else
      {
        do
        {
          v81 = v53[2];
          v82 = *v81 == v53;
          v53 = v81;
        }

        while (!v82);
      }

      v53 = v81;
    }

    while (v81 != &v180);
    v83 = __src;
    v84 = v154;
  }

  v85 = 126 - 2 * __clz((v84 - v83) >> 4);
  if (v84 == v83)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85;
  }

  std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,false>(v83, v84, v86, 1);
  v87 = +[ULDefaultsSingleton shared];
  v88 = [v87 defaultsDictionary];

  v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelMaxSources"];
  v90 = [v88 objectForKey:v89];
  if (v90 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v91 = [v90 intValue];
  }

  else
  {
    v91 = [&unk_286A724C8 intValue];
  }

  v92 = v91;

  v93 = __src;
  v94 = v154;
  v95 = (v154 - __src) >> 4;
  if (v95 <= v92)
  {
    goto LABEL_95;
  }

  v96 = __src + 16 * v92;
  if (v96 != v154)
  {
    v97 = __src + 16 * v92;
    for (m = &v97[v154 - v96]; m != v94; m += 16)
    {
      *v97 = *m;
      *(v97 + 1) = *(m + 1);
      v97 += 16;
    }

    v154 = v97;
    v95 = (v97 - v93) >> 4;
  }

  if (v95 == v92)
  {
LABEL_95:
    v99 = ULSettings::get<ULSettings::BlueAtlasModelMinSources>();
    if (v99 < (v154 - __src) >> 4)
    {
      v100 = +[ULDefaultsSingleton shared];
      v101 = [v100 defaultsDictionary];

      v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasApSelectionScoreThreshold"];
      v103 = [v101 objectForKey:v102];
      if (!v103)
      {
        goto LABEL_99;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v103 floatValue];
      }

      else
      {
LABEL_99:
        [&unk_286A72F10 floatValue];
      }

      v105 = v104;

      v106 = v154;
      v107 = __src + 16 * v99;
      if (v107 != v154)
      {
        v108 = v105;
        v109 = v107 + 16;
        while (*(v109 - 1) >= v108)
        {
          v82 = v109 == v154;
          v109 += 16;
          if (v82)
          {
            goto LABEL_113;
          }
        }

        v110 = v109 - 16;
        if (v109 - 16 != v154)
        {
          while (v109 != v106)
          {
            v111 = *(v109 + 1);
            if (v111 >= v108)
            {
              *v110 = *v109;
              *(v110 + 1) = v111;
              v110 += 16;
            }

            v109 += 16;
          }
        }

        if (v110 != v106)
        {
          v154 = v110;
        }
      }
    }

LABEL_113:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
    }

    v112 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = (v154 - __src) >> 4;
      _os_log_impl(&dword_258FE9000, v112, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, Num dominant APs:%{public}lu}", buf, 0x1Cu);
    }

    v113 = __src;
    v114 = v154;
    if (__src != v154)
    {
      do
      {
        TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud(*v113);
        v116 = v172;
        if (v172 >= v173)
        {
          v118 = v171;
          v119 = v172 - v171;
          v120 = (v172 - v171) >> 3;
          v121 = v120 + 1;
          if ((v120 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v122 = v173 - v171;
          if ((v173 - v171) >> 2 > v121)
          {
            v121 = v122 >> 2;
          }

          if (v122 >= 0x7FFFFFFFFFFFFFF8)
          {
            v123 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v123 = v121;
          }

          if (v123)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v171, v123);
          }

          *(8 * v120) = TrajectoryPointCloud;
          v117 = 8 * v120 + 8;
          memcpy(0, v118, v119);
          v124 = v171;
          v171 = 0;
          v172 = v117;
          v173 = 0;
          if (v124)
          {
            operator delete(v124);
          }
        }

        else
        {
          *v172 = TrajectoryPointCloud;
          v117 = (v116 + 8);
        }

        v172 = v117;
        v113 += 2;
      }

      while (v113 != v114);
    }

    v125 = +[ULDefaultsSingleton shared];
    v126 = [v125 defaultsDictionary];

    v127 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasAssociatedAccessPointLocalizerEnabled"];
    v128 = [v126 objectForKey:v127];
    if (v128 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v129 = [v128 BOOLValue];
    }

    else
    {
      v129 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v130 = v129;

    if (v130 && v166 == 1)
    {
      if ((v177 & 1) == 0)
      {
        v177 = 1;
      }

      v176.var0 = v164[3];
      v178 = v165;
      v131 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        if ((v177 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        CLMacAddress::toCLStr(&v176, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &__p;
        }

        else
        {
          v132 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289539;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = v132;
        *&buf[28] = 2050;
        *&buf[30] = v178;
        _os_log_impl(&dword_258FE9000, v131, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, updating associated AP, MAC Address:%{private, location:escape_only}s, Rssi:%{public}f}", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (__src)
    {
      v154 = __src;
      operator delete(__src);
    }

    if (v148)
    {
      operator delete(v148);
    }

    if (v145)
    {
      operator delete(v145);
    }

    if (v144)
    {
      operator delete(v144);
    }

    if (*v222.data)
    {
      operator delete(*v222.data);
    }

    v13 = v167;
    goto LABEL_158;
  }

  v141 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
  {
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = (v154 - __src) >> 4;
    *&buf[28] = 1026;
    *&buf[30] = v92;
    *&buf[34] = 2082;
    *&buf[36] = "assert";
    v202 = 2081;
    v203 = "apScores.size() == (size_t)maxSources";
    _os_log_impl(&dword_258FE9000, v141, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected remaining number of sources, remaining APs:%{public}lu, maxSources:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
  }

  v142 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v142))
  {
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = (v154 - __src) >> 4;
    *&buf[28] = 1026;
    *&buf[30] = v92;
    *&buf[34] = 2082;
    *&buf[36] = "assert";
    v202 = 2081;
    v203 = "apScores.size() == (size_t)maxSources";
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v142, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected remaining number of sources", "{msg%{public}.0s:Unexpected remaining number of sources, remaining APs:%{public}lu, maxSources:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
  }

  v143 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
  {
    *buf = 68290051;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = (v154 - __src) >> 4;
    *&buf[28] = 1026;
    *&buf[30] = v92;
    *&buf[34] = 2082;
    *&buf[36] = "assert";
    v202 = 2081;
    v203 = "apScores.size() == (size_t)maxSources";
    _os_log_impl(&dword_258FE9000, v143, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unexpected remaining number of sources, remaining APs:%{public}lu, maxSources:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_25916CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v77 = *(v75 - 208);
  if (v77)
  {
    operator delete(v77);
  }

  std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::~tuple(&a43);
  std::optional<std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>>::~optional(&a53);
  if (a64)
  {
    a65 = a64;
    operator delete(a64);
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(&a72, STACK[0x200]);
  CLMicroLocationModel::~CLMicroLocationModel(&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationBlueAtlasAlgorithms::getBlueAtlasScanningData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uuid *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v107[3] = *MEMORY[0x277D85DE8];
  CLMicroLocationFingerprintConfiguration::getCustomLoiRecordingConfigurationFromSettings(&v58);
  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningRecordingLimit"];
  v11 = [v9 objectForKey:v10];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 unsignedIntValue];
  }

  else
  {
    v12 = [&unk_286A72498 unsignedIntValue];
  }

  v13 = v12;

  v14 = (*(*a2 + 144))(a2);
  v15 = v14;
  __p.var0 = *a3;
  __p.var1.var0.var0.var0[0] = 1;
  if (v14)
  {
    [v14 getScanningEventUUIDsAtLoiGroupId:&__p withScanType:0x10000 startDate:0 endDate:0 onlyScansWithLabels:0 Limit:v13];
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  LOBYTE(v47) = 0;
  v48 = 0;
  *__p.var0.data = 1065353216;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v44, &__p, &__p.var0.data[4], 1uLL);
  v16 = v55;
  v17 = v56;
  if (v55 == v56)
  {
    v27 = v55;
LABEL_84:
    v28 = (v27 - v16) >> 4;
    v59 = v28;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *__p.var0.data = 68289538;
      *&__p.var0.data[8] = 2082;
      *&__p.var0.data[10] = "";
      WORD1(__p.var1.var0.var1.var0) = 2050;
      *(&__p.var1.var0.var1.var0 + 4) = v28;
      WORD2(__p.var1.var0.var1.var1) = 2050;
      *(&__p.var1.var0.var1.var1 + 6) = 0x6DB6DB6DB6DB6DB7 * ((v53 - v52) >> 5);
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:learnBlueAtlasModel, Num recording entries:%{public}lu, Num valid fingerprints:%{public}lu}", __p.var0.data, 0x26u);
    }

    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorI26CLMicroLocationFingerprintNS_9allocatorIS4_EEEENS3_I28ULMapLabelDOAndLabelObjectIDNS5_IS8_EEEENS_8optionalI25AssociatedAccessPointInfoEEmEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS7_SA_SD_mEJEJEJRS7_RSA_RSD_RmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSL_IJDpT2_EEEDpOT3_(&__p, &v52, &v49, &v47, &v59);
    *v34 = __p.var0;
    v30 = v97;
    *(v34 + 16) = __p.var1.var0.var1.var0;
    *&__p.var0.data[8] = 0;
    *__p.var0.data = 0;
    *(v34 + 24) = *&__p.var1.var0.var1.var1;
    *(v34 + 40) = v30;
    memset(&__p.var1, 0, sizeof(__p.var1));
    v97 = 0;
    *(v34 + 48) = v98;
    v31 = v99[1];
    *(v34 + 64) = v99[0];
    *(v34 + 72) = v31;
    *(v34 + 80) = 1;
    *v84.var0.data = &__p.var1.var0.var1.var1;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v84);
    *v84.var0.data = &__p;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v84);
  }

  else
  {
    v35 = 0;
    while (1)
    {
      v18 = *(a1 + 24);
      if (!v18)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v18 + 48))(v18))
      {
        break;
      }

      v19 = (*(*a2 + 144))(a2);
      v84.var0 = *v16;
      memset(&__p, 0, 24);
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v84, &v84.var1, 1uLL);
      if (v19)
      {
        [v19 fetchScanningEventsWithLabelObjectIDsForUUIDs:&__p];
      }

      else
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
      }

      if (*__p.var0.data)
      {
        *&__p.var0.data[8] = *__p.var0.data;
        operator delete(*__p.var0.data);
      }

      if (v42 != v41)
      {
        std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](&__p, v41);
        ULScanningEventDO::ULScanningEventDO(&v84, &__p);
        CLMicroLocationFingerprint::create(&v84, &v58, v77);
        if (v83 == 1)
        {
          v20 = v53;
          if (v53 >= v54)
          {
            v21 = std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint>(&v52, v77);
          }

          else
          {
            std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::construct[abi:ne200100]<CLMicroLocationFingerprint,CLMicroLocationFingerprint,void,0>(&v52, v53, v77);
            v21 = v20 + 224;
          }

          v53 = v21;
        }

        if (v86 != v85)
        {
          v22 = 0;
          v23 = 0;
          do
          {
            v40[0] = 0;
            v40[12] = 0;
            v59 = 0;
            v60 = 0;
            v61 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v59, v44, v45, (v45 - v44) >> 2);
            LOBYTE(v62) = 1;
            LOBYTE(v38[0]) = 0;
            v39 = 0;
            v37 = cl::chrono::CFAbsoluteTimeClock::now();
            ULMapLabelDO::ULMapLabelDO(&v72, v40, &v59, v38, &v37, v85 + v22, a4);
            if (v39 == 1 && v38[0])
            {
              v38[1] = v38[0];
              operator delete(v38[0]);
            }

            if (v62 == 1 && v59)
            {
              v60 = v59;
              operator delete(v59);
            }

            ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(&v59, &v72, *(v107[0] + 8 * v23));
            v24 = v50;
            if (v50 >= v51)
            {
              v26 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(&v49, &v59);
            }

            else
            {
              ULMapLabelDO::ULMapLabelDO(v50, &v59);
              v25 = v71;
              v71 = 0;
              *(v24 + 232) = v25;
              v26 = v24 + 240;
            }

            v50 = v26;

            if (v70 == 1)
            {
              v69 = -1;
            }

            if (v68 < 0)
            {
              operator delete(v67);
            }

            if (v66 == 1 && v64)
            {
              v65 = v64;
              operator delete(v64);
            }

            if (v63 == 1 && v61)
            {
              v62 = v61;
              operator delete(v61);
            }

            if (v76 == 1)
            {
              v75 = -1;
            }

            if (v74 < 0)
            {
              operator delete(v73);
            }

            if (v72.var2.var1 && v72.var2.var0.var1.var0)
            {
              v72.var2.var0.var1.var1 = v72.var2.var0.var1.var0;
              operator delete(v72.var2.var0.var1.var0);
            }

            if (v72.var1.var1 && v72.var1.var0.var1.var0)
            {
              v72.var1.var0.var1.var1 = v72.var1.var0.var1.var0;
              operator delete(v72.var1.var0.var1.var0);
            }

            ++v23;
            v22 += 128;
          }

          while (v23 < (v86 - v85) >> 7);
        }

        if (v94)
        {
          if (v35)
          {
            if (SDWORD2(v93) > SDWORD2(v47))
            {
              *&v47 = v93;
              DWORD2(v47) = DWORD2(v93);
            }

            v35 = 1;
          }

          else
          {
            v47 = v93;
            v35 = 1;
            v48 = 1;
          }
        }

        if (v83 == 1)
        {
          v59 = &v82;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v59);
          if (v80)
          {
            v81 = v80;
            operator delete(v80);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v79);
          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v78);
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v77);
        }

        v59 = &v95;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v59);
        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        if (v89)
        {
          v90 = v89;
          operator delete(v89);
        }

        if (v87)
        {
          v88 = v87;
          operator delete(v87);
        }

        v59 = &v85;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v59);
        if (*(&v84.var1.var0.var1 + 23) < 0)
        {
          operator delete(v84.var1.var0.var1.var0);
        }

        *v84.var0.data = v107;
        std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);
        *v84.var0.data = &v106;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v84);
        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v102)
        {
          v103 = v102;
          operator delete(v102);
        }

        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }

        *v84.var0.data = v99;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v84);
        if (*(&__p.var1.var0.var1 + 23) < 0)
        {
          operator delete(__p.var1.var0.var1.var0);
        }
      }

      *__p.var0.data = &v41;
      std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (++v16 == v17)
      {
        v16 = v55;
        v27 = v56;
        goto LABEL_84;
      }
    }

    *v34 = 0;
    *(v34 + 80) = 0;
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  *__p.var0.data = &v49;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&__p);
  *__p.var0.data = &v52;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v58.var1);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(uint64_t result, uint64_t **a2, double a3)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *a2;
  v6 = a2[1];
  if ((v3 - *result) == (v6 - *a2))
  {
    v7 = a3;
    if (v4 != v3)
    {
      v8 = v4 + 1;
      do
      {
        if (v8 == v3)
        {
          goto LABEL_10;
        }

        v10 = *(v8 - 1);
        v9 = *v8++;
      }

      while (v9 <= v10);
      result = CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>();
      while (v5 != v6)
      {
        if (*v4 < v7)
        {
          v11 = *v5;
          return result;
        }

        ++v4;
        ++v5;
LABEL_10:
        if (v4 == v3)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v12 = CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>();
    return ULSettings::get<ULSettings::BlueAtlasModelMinSources>(v12);
  }

  return result;
}

uint64_t ULSettings::get<ULSettings::BlueAtlasModelMinSources>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelMinSources"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A724B0 intValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1, a2);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = *(a2 + 24);
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
    *(a1 + 24) = v6;
    *(a1 + 64) = 1;
  }

  return a1;
}

void CLMicroLocationBlueAtlasAlgorithms::validateBlueAtlasModelQuality(CLMicroLocationBlueAtlasAlgorithms *this, CLMicroLocationModel *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  __p = 0;
  v65 = 0;
  v66 = 0;
  if (*(this + 136) == 1 && *(this + 120) == 1)
  {
    v3 = *(this + 32);
    v4 = +[ULDefaultsSingleton shared];
    v5 = [v4 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasStrongAssociatedAccessPointThreshold"];
    v7 = [v5 objectForKey:v6];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v7 floatValue];
    }

    else
    {
      [&unk_286A72F20 floatValue];
    }

    v9 = v8;

    v55 = v3 >= v9;
  }

  else
  {
    v55 = 0;
  }

  v10 = *(this + 37);
  v11 = ULSettings::get<ULSettings::BlueAtlasModelMinRecordings>();
  v12 = 3;
  if (v10 < v11)
  {
    *buf = 3;
    std::vector<int>::push_back[abi:ne200100](&__p, buf);
    if (v55)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  v56 = v12;
  if (*(this + 136))
  {
    v13 = (*(this + 10) - *(this + 9)) >> 3;
  }

  else
  {
    v13 = 0;
  }

  v53 = v13;
  if (v13 < ULSettings::get<ULSettings::BlueAtlasModelMinSources>())
  {
    *buf = 1;
    std::vector<int>::push_back[abi:ne200100](&__p, buf);
    if (v56 == 3)
    {
      v14 = 2;
    }

    else
    {
      v14 = v56;
    }

    if (!v55)
    {
      v14 = 1;
    }

    v56 = v14;
  }

  v63[0] = 0;
  v63[1] = 0;
  v61 = 0;
  v62 = v63;
  v59 = &v60;
  v60 = 0;
  v15 = *(this + 22);
  for (i = *(this + 23); v15 != i; v15 += 32)
  {
    for (j = *(*v15 + 16); j; j = *j)
    {
      if (*(j + 6) == 1)
      {
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v58, (j + 8));
        if (*(this + 136))
        {
          v17 = *(this + 9);
          v18 = *(this + 10);
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](buf, v58);
          if (v17 != v18)
          {
            while (1)
            {
              if (HIDWORD(v71))
              {
                std::__throw_bad_variant_access[abi:ne200100]();
              }

              v19 = *buf;
              if (v19 == CLMacAddress::toUint64(v17))
              {
                break;
              }

              if (++v17 == v18)
              {
                v17 = v18;
                break;
              }
            }
          }

          v20 = *(this + 10);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v58);
          if (v17 != v20)
          {
            *buf = j + 8;
            v21 = std::__tree<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::__map_value_compare<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::less<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(&v62, (j + 8));
            ++*(v21 + 64);
            v22 = j[7];
            v23 = +[ULDefaultsSingleton shared];
            v24 = [v23 defaultsDictionary];

            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelValidationMinRssi"];
            v26 = [v24 objectForKey:v25];
            if (!v26)
            {
              goto LABEL_37;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v26 intValue];
            }

            else
            {
LABEL_37:
              v27 = [&unk_286A724E0 intValue];
            }

            v28 = v27;

            if (v22 > v28)
            {
              std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>(&v59, (j + 8));
            }
          }
        }

        else
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v58);
        }
      }
    }
  }

  v29 = +[ULDefaultsSingleton shared];
  v30 = [v29 defaultsDictionary];

  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelValidationMinAppearanceRate"];
  v32 = [v30 objectForKey:v31];
  if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v32 floatValue];
  }

  else
  {
    [&unk_286A72F00 floatValue];
  }

  v34 = v33;

  v35 = v62;
  if (v62 == v63)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0;
    do
    {
      if ((v34 * *(this + 37)) <= v35[8])
      {
        ++v36;
      }

      v37 = v35[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v35[2];
          v39 = *v38 == v35;
          v35 = v38;
        }

        while (!v39);
      }

      v35 = v38;
    }

    while (v38 != v63);
  }

  v40 = +[ULDefaultsSingleton shared];
  v41 = [v40 defaultsDictionary];

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelValidationMinNumberOfValidAps"];
  v43 = [v41 objectForKey:v42];
  if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = [v43 intValue];
  }

  else
  {
    v44 = [&unk_286A72480 intValue];
  }

  v45 = v44;

  if (v61 < v45 || v36 < v45)
  {
    *buf = 8;
    std::vector<int>::push_back[abi:ne200100](&__p, buf);
    if (v55)
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    if (v56 >= v47)
    {
      v46 = v47;
    }

    else
    {
      v46 = v56;
    }
  }

  else
  {
    v46 = v56;
  }

  v48 = v46;
  CLMicroLocationModel::setQualityIndicator(this, v46);
  CLMicroLocationModel::setCandidateQualityIndicator(this, v48);
  CLMicroLocationModel::setCandidateQualityReasons(this, &__p);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel();
  }

  v49 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(this + 37);
    v51 = ULSettings::get<ULSettings::BlueAtlasModelMinRecordings>();
    *buf = 68290562;
    *&buf[4] = 0;
    v68 = 2082;
    v69 = "";
    v70 = 2050;
    v71 = v50;
    v72 = 1026;
    v73 = v51;
    v74 = 2050;
    v75 = v54;
    v76 = 2050;
    v77 = v61;
    v78 = 2050;
    v79 = v36;
    v80 = 2050;
    v81 = v48;
    _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:validateBlueAtlasModelQuality, Num input fingerprints:%{public}lu, Minimal num fingerprints:%{public}d, Num WiFi APs:%{public}lu, Num APs with valid RSSI:%{public}lu, Num APs with valid appearance rate:%{public}lu, Model Quality:%{public}lu}", buf, 0x4Au);
  }

  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v59, v60);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v62, v63[0]);
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_25916E278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::~tuple(void **a1)
{
  v3 = a1 + 3;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t ULSettings::get<ULSettings::BlueAtlasModelMinRecordings>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasModelMinRecordings"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A72468 intValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 5));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(a1 + 24, *(a2 + 24), *(a2 + 32), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 32) - *(a2 + 24)) >> 4));
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_25916E5CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationFingerprint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25916E64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 208) == 1)
  {
    *(a2 + 200) = -1;
  }

  if (*(a2 + 183) < 0)
  {
    operator delete(*(a2 + 160));
  }

  if (*(a2 + 72) == 1)
  {
    v3 = *(a2 + 48);
    if (v3)
    {
      *(a2 + 56) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(a2 + 24) = v4;

      operator delete(v4);
    }
  }
}

void std::vector<ULMapLabelDOAndLabelObjectID>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(a1, i))
  {
    i -= 240;
  }

  *(a1 + 8) = a2;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_120()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_25916E980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_25916EAEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double *std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,false>(double *result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = v8[1];
        if (v82 > v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v84;
          v8[1] = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = v8 + 3;
      v90 = v8[3];
      v91 = v8 + 1;
      v92 = v8[1];
      v93 = v8[5];
      if (v90 <= v92)
      {
        if (v93 > v90)
        {
          v140 = *(v8 + 2);
          v141 = *(v8 + 4);
          *(v8 + 2) = v141;
          *(v8 + 4) = v140;
          v8[3] = v93;
          v8[5] = v90;
          if (v93 > v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 2) = v142;
            goto LABEL_188;
          }

LABEL_189:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = v8[4];
          *(v8 + 4) = v94;
          goto LABEL_187;
        }

        *v8 = v8[2];
        *(v8 + 2) = v94;
        v8[1] = v90;
        v8[3] = v92;
        if (v93 > v92)
        {
          v8[2] = v8[4];
          *(v8 + 4) = v94;
          v91 = v8 + 3;
LABEL_187:
          v89 = v8 + 5;
          v90 = v92;
LABEL_188:
          *v91 = v93;
          *v89 = v92;
          goto LABEL_189;
        }
      }

      v151 = *(a2 - 1);
      if (v151 <= v93)
      {
        return result;
      }

      v152 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v152;
      v8[5] = v151;
      *(a2 - 1) = v93;
      v137 = v8[5];
      v153 = v8[3];
      if (v137 <= v153)
      {
        return result;
      }

      v154 = *(v8 + 2);
      v155 = *(v8 + 4);
      *(v8 + 2) = v155;
      *(v8 + 4) = v154;
      v8[3] = v137;
      v8[5] = v153;
      v138 = v8[1];
      if (v137 <= v138)
      {
        return result;
      }

      v156 = *v8;
      *v8 = v155;
      *(v8 + 2) = v156;
LABEL_194:
      v8[1] = v137;
      v8[3] = v138;
      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,0>(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 2;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = v99[3];
            v101 = v99[1];
            v99 = v95;
            if (v100 > v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = (v8 + v103);
                v104[2] = *(v8 + v103);
                v104[3] = *(v8 + v103 + 8);
                if (!v103)
                {
                  break;
                }

                v103 -= 16;
                if (v100 <= *(v104 - 1))
                {
                  v105 = v8 + v103 + 16;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 8) = v100;
            }

            v95 = v99 + 2;
            v98 += 16;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v97)
      {
        v143 = v8 + 3;
        do
        {
          v144 = v7[3];
          v145 = v7[1];
          v7 = v95;
          if (v144 > v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 1) = *(v147 - 3);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 > *(v148 - 4));
            *(v147 - 1) = v146;
            *v147 = v144;
          }

          v95 = v7 + 2;
          v143 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v107 = v106;
      do
      {
        v108 = v107;
        if (v106 >= v107)
        {
          v109 = (2 * v107) | 1;
          v110 = &v8[2 * v109];
          if (2 * v108 + 2 < v9 && v110[1] > v110[3])
          {
            v110 += 2;
            v109 = 2 * v108 + 2;
          }

          v111 = &v8[2 * v108];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 <= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v106 < v109)
              {
                break;
              }

              v116 = 2 * v109;
              v109 = (2 * v109) | 1;
              v110 = &v8[2 * v109];
              v117 = v116 + 2;
              if (v117 < v9 && v110[1] > v110[3])
              {
                v110 += 2;
                v109 = v117;
              }

              v112 = v110[1];
            }

            while (v112 <= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v107 = v108 - 1;
      }

      while (v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v122 = &v121[2 * v118];
          v123 = v122 + 2;
          v124 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 >= v9)
          {
            v118 = v124;
          }

          else
          {
            v125 = v122[3];
            v126 = v122[5];
            v127 = v122 + 4;
            if (v125 <= v126)
            {
              v118 = v124;
            }

            else
            {
              v123 = v127;
            }
          }

          *v121 = *v123;
          v121[1] = v123[1];
          v121 = v123;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v123 != a2 - 2)
        {
          *v123 = *(a2 - 2);
          v123[1] = *(a2 - 1);
          *(a2 - 2) = v119;
          *(a2 - 1) = v120;
          v128 = (v123 - v8 + 16) >> 4;
          v129 = v128 < 2;
          v130 = v128 - 2;
          if (!v129)
          {
            v131 = v130 >> 1;
            v132 = &v8[2 * v131];
            v133 = v132[1];
            v120 = v123[1];
            if (v133 > v120)
            {
              v134 = *v123;
              do
              {
                v135 = v123;
                v123 = v132;
                *v135 = *v132;
                v135[1] = v133;
                if (!v131)
                {
                  break;
                }

                v131 = (v131 - 1) >> 1;
                v132 = &v8[2 * v131];
                v133 = v132[1];
              }

              while (v133 > v120);
              *v123 = v134;
LABEL_164:
              v123[1] = v120;
            }
          }

          a2 -= 2;
          v129 = v9-- <= 2;
          if (v129)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v123 = v119;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 > v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 > v34)
          {
            v35 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 > v28)
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        v8[2] = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 > v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10[3];
      v39 = v8[5];
      v40 = *(a2 - 5);
      if (v38 <= v39)
      {
        if (v40 > v38)
        {
          v42 = *(v10 + 2);
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[3] = v40;
          *(a2 - 5) = v38;
          v43 = v10[3];
          v44 = v8[5];
          if (v43 > v44)
          {
            v45 = *(v8 + 4);
            v8[4] = v10[2];
            *(v10 + 2) = v45;
            v8[5] = v43;
            v10[3] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 4);
        if (v40 > v38)
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v41;
          v8[5] = v40;
          goto LABEL_48;
        }

        v8[4] = v10[2];
        *(v10 + 2) = v41;
        v8[5] = v38;
        v10[3] = v39;
        v46 = *(a2 - 5);
        if (v46 > v39)
        {
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v41;
          v10[3] = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = v10[1];
      v48 = *(v10 - 1);
      v49 = v10[3];
      if (v47 <= v48)
      {
        v50 = *v10;
        if (v49 <= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = v10[2];
          *v10 = v51;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v47;
          if (v49 <= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 1) = v49;
            v10[1] = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 > v47)
        {
          *v27 = v10[2];
          v10[2] = v50;
          *(v10 - 1) = v49;
          v10[3] = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 1) = v47;
        v10[1] = v48;
        if (v49 > v48)
        {
          v70 = v10[2];
          *v10 = v70;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v48;
          v48 = v49;
          v50 = v70;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 1);
      v8[1] = v48;
      *(v10 + 1) = v53;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 > v16)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = v8[1];
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v8[v56 + 3];
        v56 += 2;
      }

      while (v57 > v55);
      v58 = &v8[v56];
      v59 = a2;
      if (v56 == 2)
      {
        v62 = a2;
        while (v58 < v62)
        {
          v60 = v62 - 2;
          v63 = *(v62 - 1);
          v62 -= 2;
          if (v63 > v55)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 2;
          v61 = *(v59 - 1);
          v59 -= 2;
        }

        while (v61 <= v55);
      }

LABEL_70:
      v8 = v58;
      if (v58 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 1);
          v8[1] = v64[1];
          *(v64 + 1) = v66;
          do
          {
            v67 = v8[3];
            v8 += 2;
          }

          while (v67 > v55);
          do
          {
            v68 = *(v64 - 1);
            v64 -= 2;
          }

          while (v68 <= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
      if (v58 < v60)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *>(v7, v8 - 2);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v69)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v69)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,false>(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = v8[1];
      v54 = *v8;
      if (*(v8 - 1) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(a2 - 1))
      {
        v73 = v8 + 2;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = v73[1];
          v73 += 2;
        }

        while (v55 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 2;
          v72 = v71[3];
          v71 += 2;
        }

        while (v55 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 2;
          v77 = *(v76 - 1);
          v76 -= 2;
        }

        while (v55 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 1);
        v8[1] = v75[1];
        *(v75 + 1) = v79;
        do
        {
          v80 = v8[3];
          v8 += 2;
        }

        while (v55 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 2;
        }

        while (v55 > v81);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
    }
  }

  v85 = v8[3];
  v86 = v8[1];
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 <= v85)
    {
      return result;
    }

    v136 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v136;
    v8[3] = v87;
    *(a2 - 1) = v85;
    v137 = v8[3];
    v138 = v8[1];
    if (v137 <= v138)
    {
      return result;
    }

    v139 = *v8;
    *v8 = v8[2];
    v8[2] = v139;
    goto LABEL_194;
  }

  v88 = *v8;
  if (v87 <= v85)
  {
    *v8 = v8[2];
    v8[2] = v88;
    v8[1] = v85;
    v8[3] = v86;
    v150 = *(a2 - 1);
    if (v150 <= v86)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[3] = v150;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[1] = v87;
  }

  *(a2 - 1) = v86;
  return result;
}

double *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,0>(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *>(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 > v7)
      {
        v9 = *a1;
        if (v8 <= v6)
        {
          *a1 = a1[2];
          a1[2] = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 <= v7)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 <= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 <= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(std::function<BOOL ()(void)>,ULDatabaseStoreInterface &,CLMicroLocationFingerprintPool &,boost::uuids::uuid const&)::$_0 &,std::pair<unsigned long long,double> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 <= v19)
    {
      if (v20 <= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 <= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      a1[2] = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 <= v17)
      {
        *a1 = a1[2];
        a1[2] = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 <= v19)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 <= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 <= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 <= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    a1[2] = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 > v12)
  {
    v15 = *a1;
    if (v14 <= v10)
    {
      *a1 = a1[2];
      a1[2] = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 <= v12)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v15;
    }

    goto LABEL_33;
  }

  if (v14 > v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 > v12)
    {
      v28 = *a1;
      *a1 = v27;
      a1[2] = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 > v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = (a1 + v39);
        v40[6] = *(a1 + v39 + 32);
        v40[7] = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 <= v40[3])
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN5boost5uuids4uuidE20CLMicroLocationModelNS_6vectorI28ULMapLabelDOAndLabelObjectIDNS_9allocatorIS8_EEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS5_S6_SB_EJEJEJRS5_RS6_RSB_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(uint64_t a1, _OWORD *a2, CLMicroLocationModel *a3, uint64_t *a4)
{
  *a1 = *a2;
  CLMicroLocationModel::CLMicroLocationModel((a1 + 16), a3);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(a1 + 320, *a4, a4[1], 0xEEEEEEEEEEEEEEEFLL * ((a4[1] - *a4) >> 4));
  return a1;
}

void CLMicroLocationModel::CLMicroLocationModel(CLMicroLocationModel *this, const CLMicroLocationModel *a2)
{
  *this = *a2;
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(this + 16, a2 + 16);
  *(this + 56) = *(a2 + 56);
  std::__optional_copy_base<CLMicroLocationModel::BlueAtlasData,false>::__optional_copy_base[abi:ne200100](this + 72, a2 + 72);
  v4 = *(a2 + 9);
  v5 = *(a2 + 156);
  *(this + 22) = 0;
  *(this + 156) = v5;
  *(this + 9) = v4;
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>(this + 176, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 5);
  std::unordered_map<boost::uuids::uuid,std::vector<boost::uuids::uuid>>::unordered_map(this + 200, a2 + 200);
  v6 = *(a2 + 30);
  *(this + 31) = 0;
  *(this + 30) = v6;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum*,CLMicroLocationProto::ServiceQualityReasonEnum*>(this + 248, *(a2 + 31), *(a2 + 32), (*(a2 + 32) - *(a2 + 31)) >> 2);
  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v7 = *(a2 + 17);
    *(this + 36) = *(a2 + 36);
    *(this + 17) = v7;
  }

  *(this + 296) = *(a2 + 296);
}

void sub_25916FDBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 256) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v2 + 200);
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 136) == 1)
  {
    v6 = *(v2 + 72);
    if (v6)
    {
      *(v2 + 80) = v6;
      operator delete(v6);
    }
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v2 + 16);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_copy_base<CLMicroLocationModel::BlueAtlasData,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<CLMacAddress>::__init_with_size[abi:ne200100]<CLMacAddress*,CLMacAddress*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_25916FEAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1)
  {
    std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25916FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v5 = *(a2 + 8);
      *v4 = *a2;
      *(v4 + 8) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      *(v4 + 16) = *(a2 + 16);
      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

uint64_t std::unordered_map<boost::uuids::uuid,std::vector<boost::uuids::uuid>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,std::vector<boost::uuids::uuid>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,std::vector<boost::uuids::uuid>> const&>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
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
  if (!v7 || (result = *v7) == 0)
  {
LABEL_24:
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__construct_node_hash<std::pair<boost::uuids::uuid const,std::vector<boost::uuids::uuid>> const&>();
  }

  while (1)
  {
    v9 = result[1];
    if (v9 == v2)
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
      goto LABEL_24;
    }

LABEL_23:
    result = *result;
    if (!result)
    {
      goto LABEL_24;
    }
  }

  if (result[2] != *a2 || result[3] != a2[1])
  {
    goto LABEL_23;
  }

  return result;
}

void sub_25917039C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259170454(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum*,CLMicroLocationProto::ServiceQualityReasonEnum*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259170534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>::~tuple(uint64_t a1)
{
  v5 = (a1 + 320);
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v2 = *(a1 + 264);
  if (v2)
  {
    *(a1 + 272) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(a1 + 216);
  v5 = (a1 + 192);
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 96) = v3;
      operator delete(v3);
    }
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 32);
  return a1;
}

uint64_t std::optional<std::tuple<std::vector<CLMicroLocationFingerprint>,std::vector<ULMapLabelDOAndLabelObjectID>,std::optional<AssociatedAccessPointInfo>,unsigned long>>::~optional(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 24);
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a1;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(uint64_t a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(a1, v6);
  }

  v15 = 0;
  v16 = 240 * v2;
  v17 = 240 * v2;
  v7 = ULMapLabelDO::ULMapLabelDO();
  v8 = *(a2 + 232);
  *(a2 + 232) = 0;
  *(v7 + 232) = v8;
  *&v17 = v17 + 240;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(&v15);
  return v14;
}

void sub_259170764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(uint64_t a1, ULMapLabelDO *a2, ULMapLabelDO *a3, ULMapLabelDO *this)
{
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = this;
    v6 = a2;
    v8 = a2;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v4, v8);
      *&v4[2].var2.var1 = *&v8[2].var2.var1;
      v8 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v8 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(a1, v6);
      v6 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULMapLabelDOAndLabelObjectID>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 240;
    std::allocator_traits<std::allocator<ULMapLabelDOAndLabelObjectID>>::destroy[abi:ne200100]<ULMapLabelDOAndLabelObjectID,void,0>(v5, v4 - 240);
  }
}

void ULMapLabelDOAndLabelObjectID::~ULMapLabelDOAndLabelObjectID(id *this)
{
  if (*(this + 208) == 1)
  {
    *(this + 50) = -1;
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 72) == 1)
  {
    v2 = this[6];
    if (v2)
    {
      this[7] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 40) == 1)
  {
    v3 = this[2];
    if (v3)
    {
      this[3] = v3;
      operator delete(v3);
    }
  }
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_6vectorI26CLMicroLocationFingerprintNS_9allocatorIS4_EEEENS3_I28ULMapLabelDOAndLabelObjectIDNS5_IS8_EEEENS_8optionalI25AssociatedAccessPointInfoEEmEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS7_SA_SD_mEJEJEJRS7_RSA_RSD_RmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSL_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(a1 + 24, *a3, a3[1], 0xEEEEEEEEEEEEEEEFLL * ((a3[1] - *a3) >> 4));
  v9 = *a4;
  *(a1 + 64) = *(a4 + 2);
  *(a1 + 48) = v9;
  *(a1 + 72) = *a5;
  return a1;
}

void sub_259170A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long long,std::vector<float>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<float>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<float>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t std::__tree<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::__map_value_compare<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::less<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__find_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::__map_value_compare<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>,std::less<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,unsigned long>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>();
  }

  return v2;
}

void CLMicroLocationClientUtils::getClientIdAndServiceUuid(const void **a1)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  v3 = __p;
  std::string::basic_string[abi:ne200100](__p, v2 + 2);
  if (v6 < 0)
  {
    v3 = __p[0];
  }

  if (v2)
  {
    if (*(a1 + 23) >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, "--");
  operator new();
}

void sub_259170DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationClientUtils::getClientIdFromClientIdAndServiceUuid(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  v4 = __p;
  std::string::basic_string[abi:ne200100]<0>(__p, "--");
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v4 = __p[0];
    v7 = __p[1];
  }

  if (v7)
  {
    if (size >= v7)
    {
      v9 = &size[v6];
      v10 = *v4;
      v11 = v6;
      do
      {
        v12 = &size[-v7];
        if (v12 == -1)
        {
          break;
        }

        v13 = memchr(v11, v10, (v12 + 1));
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (!memcmp(v13, v4, v7))
        {
          if (v14 != v9)
          {
            v8 = &v14[-v6];
            if (&v14[-v6] != -1)
            {
              goto LABEL_13;
            }
          }

          break;
        }

        v11 = v14 + 1;
        size = (v9 - (v14 + 1));
      }

      while (size >= v7);
    }

    std::string::operator=(a2, a1);
  }

  else
  {
    v8 = 0;
LABEL_13:
    std::string::basic_string(&v15, a1, 0, v8, &v18);
    *a2 = v15;
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259170F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationClusterRFDistance::evaluateRFClusterDistances(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLearning"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 unsignedIntValue];
  }

  else
  {
    v10 = [&unk_286A724F8 unsignedIntValue];
  }

  v11 = v10;

  v12 = ULSettings::getFingerprintDistanceFunctionParamsForType(v11);
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(&v31, a2 + 16);
  v34 = *(a2 + 56);
  v35 = 1;
  ULAlgorithms::createLearnFingerprintDistanceFunction(v11, v12, a1 + 8, &v31, v37);
  if (v35 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v31);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](v36, v37);
  CLMicroLocationModel::getClusterPairwiseDistances(a2, v36, &v31);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v36);
  v13 = v32;
  if (v31)
  {
    v14 = 0;
    v15 = 0.0;
    v16 = 3.4028e38;
    v17 = 1.1755e-38;
    v18 = 0.0;
    v19 = 3.4028e38;
    v20 = 1.1755e-38;
    do
    {
      v21 = (v14 + 1);
      v22 = *(v32 + (((v14 + 1) * v14) >> 1) + v14);
      v23 = v22;
      if (v22 > v17)
      {
        v17 = v22;
      }

      if (v22 < v16)
      {
        v16 = v22;
      }

      v24 = (v14 + 1);
      if (v21 < v31)
      {
        do
        {
          if (v14 <= v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v14;
          }

          if (v14 >= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v14;
          }

          v27 = *(v32 + ((v25 + v25 * v25) >> 1) + v26);
          v28 = v27;
          v18 = v18 + v28;
          if (v27 > v20)
          {
            v20 = v27;
          }

          if (v27 < v19)
          {
            v19 = v27;
          }

          ++v24;
        }

        while (v31 != v24);
      }

      ++v14;
      v15 = (v15 + v23) / v31;
    }

    while (v21 != v31);
  }

  else
  {
    v18 = 0.0;
    v19 = 3.4028e38;
    v20 = 1.1755e-38;
    v15 = 0.0;
    v16 = 3.4028e38;
    v17 = 1.1755e-38;
  }

  v29 = (((v31 - 1) * v31) >> 1);
  *a3 = v16;
  a3[1] = v17;
  a3[2] = v15;
  a3[3] = v19;
  a3[4] = v20;
  a3[5] = v18 / v29;
  if (v13)
  {
    v33 = v13;
    operator delete(v13);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v37);

  v30 = *MEMORY[0x277D85DE8];
}

id CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(int a1, int a2, const std::string *a3)
{
  if (a1)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = MEMORY[0x277CCACA8];
    CLMicroLocationProtobufHelper::ModelTypeToDomain(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = [v6 stringWithUTF8String:p_p];
    [v5 setObject:v8 forKeyedSubscript:@"domain"];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cancelled"];
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"valid"];
    if (a3[1].__r_.__value_.__s.__data_[0] == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      CLMicroLocationClientUtils::getClientIdFromClientIdAndServiceUuid(a3, &__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v11 = [v9 stringWithUTF8String:v10];
      [v5 setObject:v11 forKeyedSubscript:@"clientIdentifier"];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_25917140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(void *a1, uint64_t *a2, uint64_t *a3, char a4, double a5)
{
  v72 = a5;
  v8 = a1;
  if (v8)
  {
    v69 = 0u;
    v70 = 0u;
    v71 = 1065353216;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5);
    if (a4)
    {
      v9 += 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    [v8 setObject:v10 forKeyedSubscript:@"numFingerprints"];

    if (5 * (v9 / 5) >= 0x1F4)
    {
      v11 = 500;
    }

    else
    {
      v11 = 5 * (v9 / 5);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    [v8 setObject:v12 forKeyedSubscript:@"numFingerprintsBounded"];

    if (v9)
    {
      v67 = 1.79769313e308;
      v68 = -1.79769313e308;
      v65 = 1.79769313e308;
      v66 = -1.79769313e308;
      v63[1] = 0;
      v64 = 0.0;
      v62 = v63;
      v63[0] = 0;
      v61[0] = 0;
      v61[1] = 0;
      v59[1] = 0;
      v60 = v61;
      v58 = v59;
      v59[0] = 0;
      v56 = -1;
      v57 = 0;
      v55 = 0;
      v54[0] = &v72;
      v54[1] = &v69;
      v54[2] = &v68;
      v54[3] = &v67;
      v54[4] = &v66;
      v54[5] = &v65;
      v54[6] = &v64;
      v54[7] = &v62;
      v54[8] = &v60;
      v54[9] = &v58;
      v54[10] = &v57;
      v54[11] = &v56;
      v54[12] = &v55;
      CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(NSMutableDictionary *,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::vector<CLMicroLocationFingerprint> const&,std::optional<std::reference_wrapper<std::vector<CLMicroLocationFingerprint> const>>)::$_3::operator()(v54, a2);
      if (a4)
      {
        CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(NSMutableDictionary *,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::vector<CLMicroLocationFingerprint> const&,std::optional<std::reference_wrapper<std::vector<CLMicroLocationFingerprint> const>>)::$_3::operator()(v54, a3);
      }

      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
      [v8 setObject:v13 forKeyedSubscript:@"ageOfOldestFingerprint"];

      v14 = [MEMORY[0x277CCABB0] numberWithInt:v68];
      [v8 setObject:v14 forKeyedSubscript:@"ageOfOldestFingerprintBounded"];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
      [v8 setObject:v15 forKeyedSubscript:@"ageOfNewestFingerprint"];

      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v66];
      [v8 setObject:v16 forKeyedSubscript:@"maxFingerprintDuration"];

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
      [v8 setObject:v17 forKeyedSubscript:@"minFingerprintDuration"];

      v18 = v9;
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v64 / v9];
      [v8 setObject:v19 forKeyedSubscript:@"avgFingerprintDuration"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v57];
      [v8 setObject:v20 forKeyedSubscript:@"maxFingerprintSize"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v56];
      [v8 setObject:v21 forKeyedSubscript:@"minFingerprintSize"];

      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v55 / v9];
      [v8 setObject:v22 forKeyedSubscript:@"avgFingerprintSize"];

      v23 = v59[0];
      if (v59[0])
      {
        v24 = v59;
        v25 = v59[0];
        do
        {
          if (v25[8] >= 1)
          {
            v24 = v25;
          }

          v25 = *&v25[2 * (v25[8] < 1)];
        }

        while (v25);
        if (v24 != v59 && v24[8] <= 1)
        {
          v53 = 1;
          v73 = &v53;
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v62, &v53)[5]}];
          [v8 setObject:v26 forKeyedSubscript:@"maxWifiFingerprintSize"];

          v53 = 1;
          v73 = &v53;
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v60, &v53)[5]}];
          [v8 setObject:v27 forKeyedSubscript:@"minWifiFingerprintSize"];

          v53 = 1;
          v73 = &v53;
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v58, &v53)[5] / v18}];
          [v8 setObject:v28 forKeyedSubscript:@"avgWifiFingerprintSize"];

          v23 = v59[0];
        }

        if (v23)
        {
          v29 = v59;
          v30 = v23;
          do
          {
            if (v30[8] >= 5)
            {
              v29 = v30;
            }

            v30 = *&v30[2 * (v30[8] < 5)];
          }

          while (v30);
          if (v29 != v59 && v29[8] <= 5)
          {
            v53 = 5;
            v73 = &v53;
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v62, &v53)[5]}];
            [v8 setObject:v31 forKeyedSubscript:@"maxBleFingerprintSize"];

            v53 = 5;
            v73 = &v53;
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v60, &v53)[5]}];
            [v8 setObject:v32 forKeyedSubscript:@"minBleFingerprintSize"];

            v53 = 5;
            v73 = &v53;
            v33 = [MEMORY[0x277CCABB0] numberWithDouble:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v58, &v53)[5] / v18}];
            [v8 setObject:v33 forKeyedSubscript:@"avgBleFingerprintSize"];

            v23 = v59[0];
          }

          if (v23)
          {
            v34 = v59;
            do
            {
              if (v23[8] >= 6)
              {
                v34 = v23;
              }

              v23 = *&v23[2 * (v23[8] < 6)];
            }

            while (v23);
            if (v34 != v59 && v34[8] <= 6)
            {
              v53 = 6;
              v73 = &v53;
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v62, &v53)[5]}];
              [v8 setObject:v35 forKeyedSubscript:@"maxUwbFingerprintSize"];

              v53 = 6;
              v73 = &v53;
              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v60, &v53)[5]}];
              [v8 setObject:v36 forKeyedSubscript:@"minUwbFingerprintSize"];

              v53 = 6;
              v73 = &v53;
              v37 = [MEMORY[0x277CCABB0] numberWithDouble:{std::__tree<std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::__map_value_compare<CLMicroLocationProto::DataType, std::__value_type<CLMicroLocationProto::DataType, unsigned long>, std::less<CLMicroLocationProto::DataType>, true>, std::allocator<std::__value_type<CLMicroLocationProto::DataType, unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType, std::piecewise_construct_t const&, std::tuple<CLMicroLocationProto::DataType const&>, std::tuple<>>(&v58, &v53)[5] / v18}];
              [v8 setObject:v37 forKeyedSubscript:@"avgUwbFingerprintSize"];
            }
          }
        }
      }

      v38 = v70;
      if (v70)
      {
        v39 = 0;
        do
        {
          if (*(v38 + 6) == 1)
          {
            ++v39;
          }

          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        v39 = 0;
      }

      v40 = [MEMORY[0x277CCABB0] numberWithLong:v39];
      [v8 setObject:v40 forKeyedSubscript:@"numSourcesWifi"];

      if (5 * (v39 / 5) >= 100)
      {
        v41 = 100;
      }

      else
      {
        v41 = 5 * (v39 / 5);
      }

      v42 = [MEMORY[0x277CCABB0] numberWithLong:v41];
      [v8 setObject:v42 forKeyedSubscript:@"numSourcesWifiBounded"];

      v43 = v70;
      if (v70)
      {
        v44 = 0;
        do
        {
          if (*(v43 + 6) == 5)
          {
            ++v44;
          }

          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        v44 = 0;
      }

      v45 = [MEMORY[0x277CCABB0] numberWithLong:v44];
      [v8 setObject:v45 forKeyedSubscript:@"numSourcesBle"];

      if (v44 >= 15)
      {
        v46 = 15;
      }

      else
      {
        v46 = v44;
      }

      v47 = [MEMORY[0x277CCABB0] numberWithLong:v46];
      [v8 setObject:v47 forKeyedSubscript:@"numSourcesBleBounded"];

      v48 = v70;
      if (v70)
      {
        v49 = 0;
        do
        {
          if (*(v48 + 6) == 6)
          {
            ++v49;
          }

          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        v49 = 0;
      }

      v50 = [MEMORY[0x277CCABB0] numberWithLong:v49];
      [v8 setObject:v50 forKeyedSubscript:@"numSourcesUwb"];

      if (v49 >= 15)
      {
        v51 = 15;
      }

      else
      {
        v51 = v49;
      }

      v52 = [MEMORY[0x277CCABB0] numberWithLong:v51];
      [v8 setObject:v52 forKeyedSubscript:@"numSourcesUwbBounded"];

      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v58, v59[0]);
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v60, v61[0]);
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v62, v63[0]);
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v69);
  }
}

void sub_259171DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a27, v35[1]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a30, v35[4]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a33, v35[7]);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v36 - 160);

  _Unwind_Resume(a1);
}

uint64_t *CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(NSMutableDictionary *,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::vector<CLMicroLocationFingerprint> const&,std::optional<std::reference_wrapper<std::vector<CLMicroLocationFingerprint> const>>)::$_3::operator()(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        v6 = v4[1];
        do
        {
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(v6, (v5 + 2));
          v5 = *v5;
        }

        while (v5);
      }

      v7 = v4[2];
      v8 = *v4;
      v9 = **v4 - *(v2 + 144);
      if (*v7 >= v9)
      {
        v9 = *v7;
      }

      *v7 = v9;
      v10 = v4[3];
      v11 = *v8 - *(v2 + 144);
      if (v11 >= *v10)
      {
        v11 = *v10;
      }

      *v10 = v11;
      v12 = v4[4];
      LODWORD(v51) = 1;
      v13 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((v2 + 104), &v51);
      v14 = 0.0;
      v15 = 0.0;
      if (v13)
      {
        v15 = *(v13 + 4) - *(v13 + 3);
      }

      if (*v12 >= v15)
      {
        v15 = *v12;
      }

      *v4[4] = v15;
      v16 = v4[5];
      LODWORD(v51) = 1;
      v17 = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((v2 + 104), &v51);
      if (v17)
      {
        v14 = *(v17 + 4) - *(v17 + 3);
      }

      v18 = *v16;
      if (v14 < *v16)
      {
        v18 = v14;
      }

      *v4[5] = v18;
      LODWORD(v51) = 1;
      result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::find<CLMicroLocationProto::DataType>((v2 + 104), &v51);
      if (result)
      {
        v19 = *(result + 4) - *(result + 3);
      }

      else
      {
        v19 = 0.0;
      }

      *v4[6] = v19 + *v4[6];
      v20 = v4[10];
      v21 = *(v2 + 24);
      if (*v20 > v21)
      {
        v21 = *v20;
      }

      *v20 = v21;
      v22 = v4[11];
      v23 = *(v2 + 24);
      if (v23 >= *v22)
      {
        v23 = *v22;
      }

      *v22 = v23;
      *v4[12] += *(v2 + 24);
      for (i = *(v2 + 80); i; i = *i)
      {
        v25 = i + 4;
        v26 = v4[7];
        v27 = *(v26 + 8);
        if (!v27)
        {
          goto LABEL_33;
        }

        v28 = *v25;
        v29 = v26 + 8;
        do
        {
          if (*(v27 + 32) >= v28)
          {
            v29 = v27;
          }

          v27 = *(v27 + 8 * (*(v27 + 32) < v28));
        }

        while (v27);
        if (v29 == v26 + 8 || v28 < *(v29 + 32))
        {
LABEL_33:
          v51 = (i + 4);
          std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v26, i + 4)[5] = 0;
          v26 = v4[7];
        }

        v51 = (i + 4);
        v30 = std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v26, i + 4);
        v31 = *(v2 + 16);
        if (v31)
        {
          v32 = 0;
          do
          {
            if (*(v31 + 6) == *v25)
            {
              ++v32;
            }

            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          v32 = 0;
        }

        if (v30[5] <= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v30[5];
        }

        v34 = v4[7];
        v51 = (i + 4);
        std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v34, i + 4)[5] = v33;
        v35 = v4[8];
        v36 = *(v35 + 8);
        if (!v36)
        {
          goto LABEL_51;
        }

        v37 = *v25;
        v38 = v35 + 8;
        do
        {
          if (*(v36 + 32) >= v37)
          {
            v38 = v36;
          }

          v36 = *(v36 + 8 * (*(v36 + 32) < v37));
        }

        while (v36);
        if (v38 == v35 + 8 || v37 < *(v38 + 32))
        {
LABEL_51:
          v38 = v35 + 8;
        }

        if (v38 == v4[7] + 8)
        {
          v51 = (i + 4);
          std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v35, i + 4)[5] = -1;
          v35 = v4[8];
        }

        v51 = (i + 4);
        v39 = std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v35, i + 4);
        v40 = *(v2 + 16);
        if (v40)
        {
          v41 = 0;
          do
          {
            if (*(v40 + 6) == *v25)
            {
              ++v41;
            }

            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          v41 = 0;
        }

        if (v41 >= v39[5])
        {
          v42 = v39[5];
        }

        else
        {
          v42 = v41;
        }

        v43 = v4[8];
        v51 = (i + 4);
        std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v43, i + 4)[5] = v42;
        v44 = v4[9];
        v45 = *(v44 + 8);
        if (!v45)
        {
          goto LABEL_71;
        }

        v46 = *v25;
        v47 = v44 + 8;
        do
        {
          if (*(v45 + 32) >= v46)
          {
            v47 = v45;
          }

          v45 = *(v45 + 8 * (*(v45 + 32) < v46));
        }

        while (v45);
        if (v47 == v44 + 8 || v46 < *(v47 + 32))
        {
LABEL_71:
          v51 = (i + 4);
          std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v44, i + 4)[5] = 0;
          v46 = *v25;
        }

        v48 = *(v2 + 16);
        if (v48)
        {
          v49 = 0;
          do
          {
            if (*(v48 + 6) == v46)
            {
              ++v49;
            }

            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          v49 = 0;
        }

        v50 = v4[9];
        v51 = (i + 4);
        result = std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(v50, i + 4);
        result[5] += v49;
      }

      v2 += 224;
    }

    while (v2 != v3);
  }

  return result;
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
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

  v47[0] = &stru_286A60C80;
  v47[1] = CLMicroLocationUtils::createEnabledTechnologies(1, 1, 1, 1);
  v48 = v10;
  v49 = @"Wifi";
  EnabledTechnologies = CLMicroLocationUtils::createEnabledTechnologies(1, 0, 0, 0);
  v51 = v10;
  v52 = @"Ble";
  v53 = CLMicroLocationUtils::createEnabledTechnologies(0, 1, 0, 0);
  v54 = v10;
  v55 = @"Uwb";
  v56 = CLMicroLocationUtils::createEnabledTechnologies(0, 0, 1, 0);
  v57 = v10;
  v58 = @"PhotoFeatures";
  v11 = 0;
  v59 = CLMicroLocationUtils::createEnabledTechnologies(0, 0, 0, 1);
  v60 = v10;
  do
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    CLMicroLocationClusterRFDistance::evaluateRFClusterDistances(&v47[v11], a2, &v36);
    LODWORD(v12) = v36;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"minClusterRfSize", v47[v11]];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v13 forKeyedSubscript:v14];

    LODWORD(v15) = HIDWORD(v36);
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"maxClusterRfSize", v47[v11]];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v16 forKeyedSubscript:v17];

    LODWORD(v18) = v37;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"avgClusterRfSize", v47[v11]];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v19 forKeyedSubscript:v20];

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics();
    }

    v21 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v22 = v47[v11];
      *buf = 138413058;
      v40 = v22;
      v41 = 2048;
      v42 = *&v36;
      v43 = 2048;
      v44 = *(&v36 + 1);
      v45 = 2048;
      v46 = *&v37;
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEBUG, "Model cluster RF sizes %@: %f (min), %f(max), %f (mean)", buf, 0x2Au);
    }

    if (CLMicroLocationModel::numClusters(a2) >= 2)
    {
      LODWORD(v23) = HIDWORD(v37);
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"minClusterRfDistance", v47[v11]];
      [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v24 forKeyedSubscript:v25];

      LODWORD(v26) = v38;
      v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"maxClusterRfDistance", v47[v11]];
      [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v27 forKeyedSubscript:v28];

      LODWORD(v29) = HIDWORD(v38);
      v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"avgClusterRfDistance", v47[v11]];
      [(CLMicroLocationCoreAnalyticsPublishHelper *)v4 setObject:v30 forKeyedSubscript:v31];

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics();
      }

      v32 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        v33 = v47[v11];
        *buf = 138413058;
        v40 = v33;
        v41 = 2048;
        v42 = *(&v37 + 1);
        v43 = 2048;
        v44 = *&v38;
        v45 = 2048;
        v46 = *(&v38 + 1);
        _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_DEBUG, "Model cluster RF distances %@: %f (min), %f(max), %f (mean)", buf, 0x2Au);
      }
    }

    v11 += 3;
  }

  while (v11 != 15);
  for (i = 12; i != -3; i -= 3)
  {
  }

  v35 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateLearnEventSummary(void *a1, CLMicroLocationModel *a2, const CLMicroLocationModel *a3, double a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277CBEC28];
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"cancelled"];
    if (CLMicroLocationModel::isValid(a2))
    {
      v10 = MEMORY[0x277CBEC38];
    }

    else
    {
      v10 = v9;
    }

    [v8 setObject:v10 forKeyedSubscript:@"valid"];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:cl::chrono::CFAbsoluteTimeClock::now() - a4];
    [v8 setObject:v11 forKeyedSubscript:@"runTime"];

    v12 = [v8 objectForKeyedSubscript:@"learnCounter"];
    v13 = [v12 integerValue];

    if (v13)
    {
      if (v13 >= 100)
      {
        v14 = 100;
      }

      else
      {
        v14 = v13;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      [v8 setObject:v15 forKeyedSubscript:@"learnCounter"];
    }

    if (CLMicroLocationModel::isValid(a2))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CLMicroLocationModel::numClusters(a2)];
      [v8 setObject:v16 forKeyedSubscript:@"numClusters"];

      CLMicroLocationCoreAnalyticsPublishHelper::updateModelSizeMetrics(v8, a2, a3, v17);
      CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics(v8, a2, v18);
      v19 = MEMORY[0x277CCABB0];
      CLMicroLocationModel::representativeFPsRatio(a2);
      v20 = [v19 numberWithDouble:?];
      [v8 setObject:v20 forKeyedSubscript:@"representativeFPsRatio"];

      __src = 0;
      v57 = 0;
      v58 = 0;
      v21 = *(a2 + 27);
      if (v21)
      {
        v22 = 0;
        do
        {
          v23 = (v21[5] - v21[4]) >> 4;
          if (v22 >= v58)
          {
            v24 = __src;
            v25 = v22 - __src;
            v26 = (v22 - __src) >> 3;
            v27 = v26 + 1;
            if ((v26 + 1) >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v28 = v58 - __src;
            if ((v58 - __src) >> 2 > v27)
            {
              v27 = v28 >> 2;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v29);
            }

            v30 = v26;
            v31 = (8 * v26);
            v32 = &v31[-v30];
            *v31 = v23;
            v22 = (v31 + 1);
            memcpy(v32, v24, v25);
            v33 = __src;
            __src = v32;
            v57 = v22;
            v58 = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            *v22++ = v23;
          }

          v57 = v22;
          v21 = *v21;
        }

        while (v21);
        v34 = __src;
      }

      else
      {
        v22 = 0;
        v34 = 0;
      }

      v35 = 126 - 2 * __clz(v22 - v34);
      if (v22 == v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v34, v22, __p, v36, 1);
      v37 = +[ULDefaultsSingleton shared];
      v38 = [v37 defaultsDictionary];

      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfClustersForLearningAnalytics"];
      v40 = [v38 objectForKey:v39];
      if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v41 = [v40 unsignedLongValue];
      }

      else
      {
        v41 = [&unk_286A72528 unsignedLongValue];
      }

      v42 = v41;

      v44 = __src;
      v43 = v57;
      if (v57 != __src)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          if (v45 >= v42)
          {
            v46 += v44[v45];
          }

          else
          {
            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v44[v45]];
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"numFingerprintsInCluster%zu", v45];
            [v8 setObject:v47 forKeyedSubscript:v48];

            v44 = __src;
            v43 = v57;
          }

          ++v45;
        }

        while (v45 < v43 - v44);
        if (v46)
        {
          v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v46];
          [v8 setObject:v49 forKeyedSubscript:@"numFingerprintsInRemainingClusters"];

          v43 = v57;
        }
      }

      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v43 - 1)];
      [v8 setObject:v50 forKeyedSubscript:@"numFingerprintsInSmallestCluster"];

      CLMicroLocationCoreAnalyticsPublishHelper::generationAlgorithmToString(*a2, __p);
      if (v55 >= 0)
      {
        v51 = __p;
      }

      else
      {
        v51 = __p[0];
      }

      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:v51];
      [v8 setObject:v52 forKeyedSubscript:@"generationAlgorithm"];

      CLMicroLocationCoreAnalyticsPublishHelper::updateModelQualityMetrics(v8, a2, v53);
      if (v55 < 0)
      {
        operator delete(__p[0]);
      }

      if (__src)
      {
        v57 = __src;
        operator delete(__src);
      }
    }
  }
}

void sub_259172E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelSizeMetrics(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3, const CLMicroLocationProto::Model *a4)
{
  v23 = this;
  if (v23)
  {
    isa = a2[22].super.super.isa;
    v6 = a2[23].super.super.isa;
    v8 = (v6 - isa) >> 5;
    if (v6 == isa)
    {
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(*isa + 16);
        if (v13)
        {
          v14 = 0;
          v15 = *(*isa + 16);
          do
          {
            if (*(v15 + 24) == 1)
            {
              ++v14;
            }

            v15 = *v15;
          }

          while (v15);
          v16 = *(*isa + 16);
          do
          {
            if (*(v16 + 24) == 5)
            {
              ++v15;
            }

            v16 = *v16;
          }

          while (v16);
          do
          {
            if (*(v13 + 6) == 6)
            {
              ++v16;
            }

            v13 = *v13;
          }

          while (v13);
          v10 += v14;
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        v9 += *(*isa + 24);
        v12 += v15;
        v11 += v16;
        isa = (isa + 32);
      }

      while (isa != v6);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v17 forKeyedSubscript:@"modelSizeNumFingerprints"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v18 forKeyedSubscript:@"modelSizeNumMeasurements"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v19 forKeyedSubscript:@"modelSizeNumWiFiMeasurements"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v12];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v20 forKeyedSubscript:@"modelSizeNumBleMeasurements"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v21 forKeyedSubscript:@"modelSizeNumUwbMeasurements"];

    v22 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a3 + 72))(a3)];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v23 setObject:v22 forKeyedSubscript:@"modelLoadedByteSize"];
  }
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelQualityMetrics(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3)
{
  v26 = this;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CLMicroLocationModel::getQualityIndicator(a2)];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v26 setObject:v4 forKeyedSubscript:@"modelQuality"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CLMicroLocationModel::getQualityIndicator(a2)];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v26 setObject:v5 forKeyedSubscript:@"modelQualityBounded"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CLMicroLocationModel::getCandidateQualityIndicator(a2)];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v26 setObject:v6 forKeyedSubscript:@"candidateModelQuality"];

  CandidateQualityReasons = CLMicroLocationModel::getCandidateQualityReasons(a2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum*,CLMicroLocationProto::ServiceQualityReasonEnum*>(&v30, *CandidateQualityReasons, CandidateQualityReasons[1], (CandidateQualityReasons[1] - *CandidateQualityReasons) >> 2);
  v8 = 126 - 2 * __clz((v31 - v30) >> 2);
  if (v31 == v30)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,false>(v30, v31, &v35, v9, 1);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v10 = v30;
  v11 = v31;
  if (v30 != v31)
  {
    do
    {
      CLMicroLocationProtobufHelper::serviceQualityReasonToString(*v10, __p);
      v12 = v28;
      if (v28 >= v29)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v29 - v27) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((v29 - v27) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v29 - v27) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        v35.__end_cap_.__value_ = &v27;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v27, v16);
        }

        v17 = 8 * ((v28 - v27) >> 3);
        v18 = *__p;
        *(v17 + 16) = v34;
        *v17 = v18;
        __p[1] = 0;
        v34 = 0;
        __p[0] = 0;
        v19 = 24 * v14 + 24;
        v20 = (24 * v14 - (v28 - v27));
        memcpy((v17 - (v28 - v27)), v27, v28 - v27);
        v21 = v27;
        v22 = v29;
        v27 = v20;
        v28 = v19;
        v29 = 0;
        v35.__end_ = v21;
        v35.__end_cap_.__value_ = v22;
        v35.__first_ = v21;
        v35.__begin_ = v21;
        std::__split_buffer<std::string>::~__split_buffer(&v35);
        v28 = v19;
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v13 = *__p;
        *(v28 + 2) = v34;
        *v12 = v13;
        v28 = v12 + 24;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  boost::algorithm::join<std::vector<std::string>,char [2]>(" ", &v27, &v35);
  if (SHIBYTE(v35.__end_) >= 0)
  {
    first = &v35;
  }

  else
  {
    first = v35.__first_;
  }

  v24 = v26;
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{first, v26}];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v24 setObject:v25 forKeyedSubscript:@"qualityReasons"];

  if (SHIBYTE(v35.__end_) < 0)
  {
    operator delete(v35.__first_);
  }

  v35.__first_ = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_25917351C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  *(v28 - 88) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 88));
  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentOldModelMetrics(void *a1, CLMicroLocationModel *a2, CLMicroLocationModel *a3, uint64_t a4, char a5, double a6)
{
  v11 = a1;
  if (v11)
  {
    if (a5)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:a6 - *&a4];
      [v11 setObject:v12 forKeyedSubscript:@"ageOfOldModel"];
    }

    if (CLMicroLocationModel::isValid(a2))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CLMicroLocationModel::numClusters(a3)];
      [v11 setObject:v13 forKeyedSubscript:@"numOldClusters"];

      v14 = MEMORY[0x277CCABB0];
      v15 = CLMicroLocationModel::numClusters(a2);
      v16 = [v14 numberWithInt:v15 - CLMicroLocationModel::numClusters(a3)];
      [v11 setObject:v16 forKeyedSubscript:@"numClustersDiff"];

      CLMicroLocationModel::getIdentifiers(a2, &v28);
      CLMicroLocationModel::getIdentifiers(a3, &v26);
      v17 = v28;
      if (v28 == v29)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          if (&v27 != std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v26, (v17 + 25)))
          {
            ++v18;
          }

          v19 = v17[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v17[2];
              v21 = *v20 == v17;
              v17 = v20;
            }

            while (!v21);
          }

          v17 = v20;
        }

        while (v20 != v29);
      }

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v18];
      [v11 setObject:v22 forKeyedSubscript:@"numMatchingClustersInt"];

      if (CLMicroLocationModel::numClusters(a3))
      {
        v23 = MEMORY[0x277CCABB0];
        *&v24 = v18 / CLMicroLocationModel::numClusters(a3);
        v25 = [v23 numberWithFloat:v24];
        [v11 setObject:v25 forKeyedSubscript:@"portionMatchingClusters"];
      }

      else
      {
        [v11 setObject:&unk_286A72F30 forKeyedSubscript:@"portionMatchingClusters"];
      }

      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v26, v27);
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v28, v29[0]);
    }
  }
}

void sub_25917381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a9, a10);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a12, a13);

  _Unwind_Resume(a1);
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedFingerprints(void *a1, uint64_t *a2, unsigned int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (v5)
  {
    if (a3)
    {
      v6 = (a2[1] - *a2) >> 3;
      if (v6 >= a3)
      {
        v11 = a3;
        if (v6 > a3)
        {
          v12 = a3 - 1;
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(*a2 + 8 * v12) - *(*a2 + 8 * a3)];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"numFingerprintsPrunedInIteration%u", v12];
          [v5 setObject:v13 forKeyedSubscript:v14];

          v16 = *a2;
          v17 = (a2[1] - *a2) >> 3;
          if (v17 > v12)
          {
            v18 = *(v16 + 8 * v12);
            if (!v18)
            {
              goto LABEL_17;
            }

            if (v17 > v11)
            {
              *&v15 = 1.0 - (*(v16 + 8 * v11) / v18);
              v19 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"portionFingerprintsPrunedInIteration%u", v12];
              [v5 setObject:v19 forKeyedSubscript:v20];

              goto LABEL_17;
            }
          }
        }

        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedFingerprints();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v8 = (a2[1] - *a2) >> 3;
      *buf = 68289538;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = a3;
      v28 = 2050;
      v29 = v8;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:updateMagicalMomentsNumPrunedFingerprints called incorrectly, iteration:%{public}lu, numFingerprintsPerIteration size:%{public}lu}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationCoreAnalyticsPublishHelper::updateClusterRfDistanceCharacteristics();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v10 = (a2[1] - *a2) >> 3;
      *buf = 68289538;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2050;
      v27 = a3;
      v28 = 2050;
      v29 = v10;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "updateMagicalMomentsNumPrunedFingerprints called incorrectly", "{msg%{public}.0s:updateMagicalMomentsNumPrunedFingerprints called incorrectly, iteration:%{public}lu, numFingerprintsPerIteration size:%{public}lu}", buf, 0x26u);
    }
  }

LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedClusters(CLMicroLocationCoreAnalyticsPublishHelper *this, NSMutableDictionary *a2, const CLMicroLocationModel *a3, uint64_t a4)
{
  v13 = this;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3 - CLMicroLocationModel::numClusters(a2)];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"numClustersPrunedIteration%u", a4];
  [(CLMicroLocationCoreAnalyticsPublishHelper *)v13 setObject:v7 forKeyedSubscript:v8];

  if (a3)
  {
    v9 = MEMORY[0x277CCABB0];
    *&v10 = 1.0 - (CLMicroLocationModel::numClusters(a2) / a3);
    v11 = [v9 numberWithFloat:v10];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"portionClustersPrunedIteration%u", a4];
    [(CLMicroLocationCoreAnalyticsPublishHelper *)v13 setObject:v11 forKeyedSubscript:v12];
  }
}

void CLMicroLocationCoreAnalyticsPublishHelper::updateModelStabilityMetrics(void *a1, unsigned int *a2, _BYTE *a3)
{
  v10 = a1;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2[3]];
  [v10 setObject:v5 forKeyedSubscript:@"DaysWithRecordings"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:CLMicroLocationModel::getQualityIndicator(a2) == 3];
  [v10 setObject:v6 forKeyedSubscript:@"IsHighQualityModel"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:CLMicroLocationModel::isStable(a2)];
  [v10 setObject:v7 forKeyedSubscript:@"WasInHighQualityBefore"];

  if (a3[1])
  {
    if (CLMicroLocationModel::isStable(a2))
    {
      if (*a3)
      {
        v8 = 0;
      }

      else
      {
        v8 = a3[1];
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v10 setObject:v9 forKeyedSubscript:@"IsBecomingHighQualityModelForTheFirstTime"];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:CLMicroLocationModel::isStable(a2)];
    [v10 setObject:v9 forKeyedSubscript:@"IsBecomingHighQualityModelForTheFirstTime"];
  }
}

uint64_t *std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_121()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(unint64_t *result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v58 = v9[1];
          v59 = *(a2 - 1);
          if (v58 <= v59)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = v9[1];
          }

          if (v58 >= v59)
          {
            v58 = *(a2 - 1);
          }

          *(a2 - 1) = v58;
          v9[1] = v60;
          v61 = *(a2 - 1);
          if (v61 <= *v9)
          {
            v62 = *v9;
          }

          else
          {
            v62 = *(a2 - 1);
          }

          if (v61 >= *v9)
          {
            v61 = *v9;
          }

          *(a2 - 1) = v61;
          v64 = *v9;
          v63 = v9[1];
          if (v62 <= v63)
          {
            v64 = v9[1];
          }

          if (v62 < v63)
          {
            v63 = v62;
          }

          *v9 = v64;
          v9[1] = v63;
          return result;
        case 4:
          v88 = v9[1];
          v87 = v9[2];
          if (*v9 <= v87)
          {
            v89 = v9[2];
          }

          else
          {
            v89 = *v9;
          }

          if (*v9 < v87)
          {
            v87 = *v9;
          }

          v9[2] = v87;
          *v9 = v89;
          v90 = *(a2 - 1);
          if (v88 <= v90)
          {
            v91 = *(a2 - 1);
          }

          else
          {
            v91 = v88;
          }

          if (v88 < v90)
          {
            v90 = v88;
          }

          *(a2 - 1) = v90;
          v92 = *v9;
          if (*v9 <= v91)
          {
            v93 = v91;
          }

          else
          {
            v93 = *v9;
          }

          if (*v9 >= v91)
          {
            v92 = v91;
          }

          *v9 = v93;
          v9[1] = v92;
          v94 = v9[2];
          v95 = *(a2 - 1);
          if (v94 <= v95)
          {
            v96 = *(a2 - 1);
          }

          else
          {
            v96 = v9[2];
          }

          if (v94 >= v95)
          {
            v94 = *(a2 - 1);
          }

          *(a2 - 1) = v94;
          v97 = v9[1];
          if (v97 <= v96)
          {
            v98 = v96;
          }

          else
          {
            v98 = v9[1];
          }

          if (v97 >= v96)
          {
            v97 = v96;
          }

          v9[1] = v98;
          v9[2] = v97;
          return result;
        case 5:
          v65 = *v9;
          v66 = v9[1];
          if (*v9 <= v66)
          {
            v67 = v9[1];
          }

          else
          {
            v67 = *v9;
          }

          if (*v9 >= v66)
          {
            v65 = v9[1];
          }

          *v9 = v67;
          v9[1] = v65;
          v68 = v9[3];
          v69 = *(a2 - 1);
          if (v68 <= v69)
          {
            v70 = *(a2 - 1);
          }

          else
          {
            v70 = v9[3];
          }

          if (v68 >= v69)
          {
            v68 = *(a2 - 1);
          }

          *(a2 - 1) = v68;
          v9[3] = v70;
          v71 = *(a2 - 1);
          v72 = v9[2];
          if (v71 <= v72)
          {
            v73 = v9[2];
          }

          else
          {
            v73 = *(a2 - 1);
          }

          if (v71 >= v72)
          {
            v71 = v9[2];
          }

          *(a2 - 1) = v71;
          v75 = v9[2];
          v74 = v9[3];
          v76 = v9[1];
          if (v73 <= v74)
          {
            v75 = v9[3];
          }

          if (v73 < v74)
          {
            v74 = v73;
          }

          v9[2] = v75;
          v9[3] = v74;
          v77 = *(a2 - 1);
          if (v76 <= v77)
          {
            v78 = *(a2 - 1);
          }

          else
          {
            v78 = v76;
          }

          if (v76 < v77)
          {
            v77 = v76;
          }

          *(a2 - 1) = v77;
          v79 = *v9;
          v81 = v9[2];
          v80 = v9[3];
          if (v80 <= *v9)
          {
            v82 = *v9;
          }

          else
          {
            v82 = v9[3];
          }

          if (v80 >= *v9)
          {
            v80 = *v9;
          }

          if (v82 <= v81)
          {
            v79 = v9[2];
          }

          if (v82 < v81)
          {
            v81 = v82;
          }

          if (v80 <= v78)
          {
            v83 = v78;
          }

          else
          {
            v83 = v80;
          }

          if (v80 >= v78)
          {
            v80 = v78;
          }

          if (v83 <= v81)
          {
            v78 = v81;
          }

          *v9 = v79;
          v9[1] = v78;
          if (v83 >= v81)
          {
            v84 = v81;
          }

          else
          {
            v84 = v83;
          }

          v9[2] = v84;
          v9[3] = v80;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v85 = *(a2 - 1);
        v86 = *v9;
        if (v85 > *v9)
        {
          *v9 = v85;
          *(a2 - 1) = v86;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v47 = *v9;
      if (*v9 <= v14)
      {
        v48 = *(a2 - 1);
      }

      else
      {
        v48 = *v9;
      }

      if (*v9 >= v14)
      {
        v47 = *(a2 - 1);
      }

      *(a2 - 1) = v47;
      *v9 = v48;
      v49 = *(a2 - 1);
      v50 = v9[v13];
      if (v49 <= v50)
      {
        v51 = v9[v13];
      }

      else
      {
        v51 = *(a2 - 1);
      }

      if (v49 >= v50)
      {
        v49 = v9[v13];
      }

      *(a2 - 1) = v49;
      v52 = *v9;
      v53 = v51 > *v9;
      if (v51 > *v9)
      {
        v52 = v9[v13];
      }

      v9[v13] = v52;
      v54 = *v9;
      if (!v53)
      {
        v54 = v51;
      }

      *v9 = v54;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (*v15 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 > *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v23 = *(v15 - 1);
      v22 = *v15;
      if (!v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = v23;
      }

      if (v23 < v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 > v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (!v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 > v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (!v39)
      {
        v40 = v37;
      }

      v42 = *(v15 - 1);
      if (v41 <= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      if (v40 <= v42)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v42)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v42 <= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v42;
      }

      if (v42 > v43)
      {
        v44 = v43;
      }

      *(v15 - 1) = v45;
      *v15 = v44;
      v46 = *v9;
      *v9 = v44;
      *v15 = v46;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(v9, a2);
      v9 = result;
      goto LABEL_94;
    }

LABEL_89:
    v55 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(v9, a2);
    if ((v56 & 1) == 0)
    {
      goto LABEL_92;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(v9, v55);
    v9 = v55 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(v55 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v55;
      if (v57)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v57)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v8, v55, a3, -v11, a5 & 1);
      v9 = v55 + 1;
LABEL_94:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v99 = v9 + 1;
  v101 = v9 == a2 || v99 == a2;
  if (a5)
  {
    if (!v101)
    {
      v102 = 0;
      v103 = v9;
      do
      {
        v105 = *v103;
        v104 = v103[1];
        v103 = v99;
        if (v104 > v105)
        {
          v106 = v102;
          while (1)
          {
            *(v9 + v106 + 8) = v105;
            if (!v106)
            {
              break;
            }

            v105 = *(v9 + v106 - 8);
            v106 -= 8;
            if (v104 <= v105)
            {
              v107 = (v9 + v106 + 8);
              goto LABEL_199;
            }
          }

          v107 = v9;
LABEL_199:
          *v107 = v104;
        }

        v99 = v103 + 1;
        v102 += 8;
      }

      while (v103 + 1 != a2);
    }
  }

  else if (!v101)
  {
    do
    {
      v109 = *v8;
      v108 = v8[1];
      v8 = v99;
      if (v108 > v109)
      {
        do
        {
          *v99 = v109;
          v109 = *(v99 - 2);
          --v99;
        }

        while (v108 > v109);
        *v99 = v108;
      }

      v99 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<unsigned long> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_25921A970;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(v13, *(v7 + v12)), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    v20 = xmmword_25921A970;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v9[v19], *&v9[v19], 8uLL), v13), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 2;
    }

    while (v19 != -65);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 = (v9 + v25);
  }

  while (v9 - v7 > 1008);
  v26 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
    goto LABEL_37;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v27 >= 1)
    {
      v32 = 0;
      v11 = 0;
      v33 = v9;
      do
      {
        v34 = *v33--;
        v11 |= (v34 > v2) << v32++;
      }

      while (v27 != v32);
      goto LABEL_46;
    }

    if (v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v29;
    }

    v38 = &v7[v42];
LABEL_62:
    if (v12)
    {
      v9 -= v27;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v27 < 1)
  {
    v12 = 0;
  }

  else
  {
    v31 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v31] <= v2) << v31;
      ++v31;
    }

    while (v27 != v31);
  }

  v29 = v27;
  v27 = v28;
  if (v24)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-__clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v43 = __clz(v12) ^ 0x3F;
      v44 = &v38[v43];
      if (v9 != v44)
      {
        v45 = *v44;
        *v44 = *v9;
        *v9 = v45;
      }

      v12 &= ~(-1 << v43);
      --v9;
    }

    while (v12);
    v38 = v9 + 1;
  }

  else
  {
    do
    {
      v39 = __clz(v11) ^ 0x3F;
      v40 = &v9[-v39];
      if (v38 != v40)
      {
        v41 = *v40;
        *v40 = *v38;
        *v38 = v41;
      }

      v11 &= ~(-1 << v39);
      ++v38;
    }

    while (v11);
  }

LABEL_68:
  v46 = v38 - 1;
  if (v38 - 1 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v38 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,unsigned long *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(a1, a4, v8, v11--);
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
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 > v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 8 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
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
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

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
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= v62)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            LODWORD(v59) = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        LODWORD(v59) = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= v51)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          LODWORD(v51) = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          LODWORD(v51) = v49;
          LODWORD(v49) = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          LODWORD(v51) = result;
          LODWORD(v49) = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        LODWORD(v49) = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 4) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 4);
                v72 -= 4;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 4);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 4;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,CLMicroLocationProto::ServiceQualityReasonEnum *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = (v13 - 1);
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = (v13 + 1);
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationProto::ServiceQualityReasonEnum *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *,CLMicroLocationProto::ServiceQualityReasonEnum *>(int *a1, int *a2, int *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(a1, a4, v8, v11--);
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
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CLMicroLocationProto::ServiceQualityReasonEnum *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 < v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 < *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 < v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}