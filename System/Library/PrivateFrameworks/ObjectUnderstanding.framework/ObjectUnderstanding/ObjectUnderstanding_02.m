float *_ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLi0EEEvT1_SM_SM_SM_SM_SF_(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_SM_SF_(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 8);
        if (v6 < *v4)
        {
          v7 = *(v4 + 12);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 8);
            v8 -= 8;
            if (v9 <= v6)
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 4) = v7;
        }

        v2 = v5 + 8;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 8 != a2);
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo *,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::{lambda(std::_ClassicAlgPolicy const&,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo * const&)#1} &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*(a2 - 2) <= COERCE_FLOAT(*a1))
  {
    v5 = a1 + 2;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 2;
    }

    while (*v3 <= *&v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[2];
      v3 += 2;
    }

    while (v4 <= *&v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 2);
      a2 -= 2;
    }

    while (v6 > *&v2);
  }

  while (v3 < a2)
  {
    v7 = *v3;
    *v3 = *a2;
    *a2 = v7;
    do
    {
      v8 = v3[2];
      v3 += 2;
    }

    while (v8 <= *&v2);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 > *&v2);
  }

  if (v3 - 2 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo *,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::{lambda(std::_ClassicAlgPolicy const&,BOOL ou3dor::OU3DOROfflineEspressoV2::SetContextFeaturesAndPadding<float>(int,std::vector<OUBox3d> const&)::DistanceInfo * const&)#1} &>(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[v2 + 2];
    v2 += 2;
  }

  while (v4 < *&v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v8 >= *&v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v7 >= *&v3);
  }

  if (v5 < a2)
  {
    v9 = &a1[v2];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        v12 = v9[2];
        v9 += 2;
      }

      while (v12 < *&v3);
      do
      {
        v13 = *(v10 - 2);
        v10 -= 2;
      }

      while (v13 >= *&v3);
    }

    while (v9 < v10);
    v6 = v9 - 2;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEbT1_SM_SF_(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoLi0EEEvT1_SM_SM_SM_SM_SF_(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

float *_ZNSt3__119__partial_sort_implB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoSL_EET1_SM_SM_T2_OSF_(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_OSF_NS_15iterator_traitsISM_E15difference_typeESM_(a1, a4, v8, v11);
        v11 -= 2;
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
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_OSF_NS_15iterator_traitsISM_E15difference_typeESM_(a1, a4, v8, a1);
        }

        v12 += 2;
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
          v18 = &v16[2 * v14];
          v16 = v18 + 2;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[4];
            v21 = v18 + 4;
            if (*(v21 - 2) < v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v16 == v6)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v6;
          *v6 = v15;
          _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_SM_OSF_NS_15iterator_traitsISM_E15difference_typeE(a1, (v16 + 2), a4, ((v16 + 2) - a1) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_OSF_NS_15iterator_traitsISM_E15difference_typeESM_(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
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
      if (v9 < a3 && *v8 < v8[2])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = *a4;
      if (*v8 >= *a4)
      {
        v11 = *(a4 + 1);
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && *v8 < v8[2])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (*v8 >= v10);
        *a4 = v10;
        *(a4 + 1) = v11;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN6ou3dor23OU3DOROfflineEspressoV228SetContextFeaturesAndPaddingIfEEbiRKNS_6vectorI7OUBox3dNS_9allocatorIS6_EEEEEUlRKT_RKT0_E_PZNS4_IfEEbiSB_E12DistanceInfoEEvT1_SM_OSF_NS_15iterator_traitsISM_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    if (*v6 < v8)
    {
      v9 = *(a2 - 4);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 1) = v9;
    }
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>(void *a1, const void **a2)
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
    if (v12 == v6)
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

const void **std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void _GLOBAL__sub_I_OU3DOROfflineEspressoV2_mm()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = @"Cabinet";
  *&v16 = v1;
  *(&v16 + 1) = @"Refrigerator";
  *&v17 = @"Shelf";
  *(&v17 + 1) = @"Stove";
  v2 = @"Bed";
  *&v18 = v2;
  *(&v18 + 1) = @"Sink";
  *&v19 = @"Washer";
  *(&v19 + 1) = @"Toilet";
  v3 = @"Bathtub";
  *&v20 = v3;
  *(&v20 + 1) = @"Oven";
  v21[0] = @"Dishwasher";
  v21[1] = @"Fireplace";
  v21[2] = @"Stool";
  v21[3] = @"Chair";
  v4 = @"Table";
  v21[4] = v4;
  v21[5] = @"Screen";
  v5 = @"Sofa";
  v21[6] = v5;
  v21[7] = @"Stairs";
  v21[8] = @"Window";
  v21[9] = @"Door";
  v21[10] = @"BuildInCabinet";
  qword_28155A930 = 0;
  unk_28155A938 = 0;
  ou3dod::kObjectTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kObjectTypesLUT, &v16, &v22, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kObjectTypesLUT, &dword_25D1DB000);
  v7 = v1;
  *&v16 = v7;
  qword_28155A770 = 0;
  unk_28155A778 = 0;
  ou3dod::kAFClassIdToObjectTypeOffline = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kAFClassIdToObjectTypeOffline, &v16, &v16 + 8, 1uLL);

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kAFClassIdToObjectTypeOffline, &dword_25D1DB000);
  v8 = v7;
  *&v16 = v8;
  v9 = v2;
  *(&v16 + 1) = v9;
  v10 = v3;
  *&v17 = v10;
  v11 = v4;
  *(&v17 + 1) = v11;
  v12 = v5;
  *&v18 = v12;
  qword_28155A898 = 0;
  unk_28155A8A0 = 0;
  ou3dod::kOfflineSsdTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kOfflineSsdTypesLUT, &v16, &v18 + 8, 5uLL);
  for (j = 32; j != -8; j -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kOfflineSsdTypesLUT, &dword_25D1DB000);
  v18 = xmmword_25D277F00;
  v19 = unk_25D277F10;
  v20 = xmmword_25D277F20;
  v16 = xmmword_25D277EE0;
  v17 = unk_25D277EF0;
  qword_28155A808 = 0;
  unk_28155A810 = 0;
  ou3dod::kOfflineSSDAnchorSizeList = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&ou3dod::kOfflineSSDAnchorSizeList, &v16, v21, 5uLL);
  __cxa_atexit(_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEED1B8ne200100Ev, &ou3dod::kOfflineSSDAnchorSizeList, &dword_25D1DB000);
  *&v16 = v8;
  DWORD2(v16) = 1055286886;
  *&v17 = v9;
  DWORD2(v17) = 1039516303;
  *&v18 = v10;
  DWORD2(v18) = 1045220557;
  *&v19 = v11;
  DWORD2(v19) = 1050253722;
  *&v20 = v12;
  DWORD2(v20) = 1047904911;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](ou3dod::kOfflineSSD3dConfThresholdMap, &v16, 5);
  for (k = 64; k != -16; k -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], ou3dod::kOfflineSSD3dConfThresholdMap, &dword_25D1DB000);
  objc_autoreleasePoolPop(v0);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_25D1F9E9C(_Unwind_Exception *a1)
{
  for (i = 64; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void sub_25D1FB044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a23)
  {
    operator delete(a23);
  }

  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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
}

void _ZL6selectIDv3_fENSt3__16vectorIT_NS1_9allocatorIS3_EEEEPKS3_mPKm(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a4, a2);
  if (a2)
  {
    v8 = a4[1];
    v9 = 8 * a2;
    do
    {
      v10 = a4[2];
      if (v8 >= v10)
      {
        v11 = (v8 - *a4) >> 4;
        if ((v11 + 1) >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v12 = v10 - *a4;
        v13 = v12 >> 3;
        if (v12 >> 3 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v14);
        }

        *(16 * v11) = *(a1 + 16 * *a3);
        v8 = (16 * v11 + 16);
        v15 = a4[1] - *a4;
        v16 = (16 * v11 - v15);
        memcpy(v16, *a4, v15);
        v17 = *a4;
        *a4 = v16;
        a4[1] = v8;
        a4[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = *(a1 + 16 * *a3);
        v8 += 16;
      }

      a4[1] = v8;
      ++a3;
      v9 -= 8;
    }

    while (v9);
  }
}

void sub_25D1FB66C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D1FBA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id OUKeyframeToDictionary(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "count")}];
  [v2 setObject:v3 forKeyedSubscript:@"count"];

  [v1 cameraPose];
  v74[0] = v4;
  v74[1] = v5;
  v74[2] = v6;
  v74[3] = v7;
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:v74 length:64];
  [v2 setObject:v8 forKeyedSubscript:@"cameraPose"];

  v9 = [v1 points];
  v10 = [v1 points];
  v11 = [v1 count];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v71, v9, v10 + 16 * v11, (v10 + 16 * v11 - v9) >> 4);
  std::vector<float>::vector[abi:ne200100](&v69, ((v72 - v71) >> 3) + ((v72 - v71) >> 4));
  v12 = v71;
  if (v72 != v71)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v69 + v13;
      v17 = &v12[v14];
      v18 = *v17;
      *(v16 + 2) = *(v17 + 2);
      *v16 = v18;
      ++v15;
      v12 = v71;
      v14 += 16;
      v13 += 12;
    }

    while (v15 < (v72 - v71) >> 4);
  }

  if (v70 == v69)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v69 length:v70 - v69];
  }

  v20 = v19;
  [v2 setObject:v19 forKeyedSubscript:@"points"];

  v21 = [v1 pointsToWorld];
  v22 = [v1 pointsToWorld];
  v23 = [v1 count];
  v66 = 0;
  v67 = 0;
  v68 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v66, v21, v22 + 16 * v23, (v22 + 16 * v23 - v21) >> 4);
  std::vector<float>::vector[abi:ne200100](&v64, ((v67 - v66) >> 3) + ((v67 - v66) >> 4));
  v24 = v66;
  if (v67 != v66)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v64 + v25;
      v29 = &v24[v26];
      v30 = *v29;
      *(v28 + 2) = *(v29 + 2);
      *v28 = v30;
      ++v27;
      v24 = v66;
      v26 += 16;
      v25 += 12;
    }

    while (v27 < (v67 - v66) >> 4);
  }

  if (v65 == v64)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v31 = [MEMORY[0x277CBEA90] dataWithBytes:v64 length:v65 - v64];
  }

  v32 = v31;
  [v2 setObject:v31 forKeyedSubscript:@"pointsToWorld"];

  v33 = [v1 semanticLabels];
  v34 = [v1 count];
  if (v33 && v34)
  {
    v35 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:4 * v34];
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v36 = v35;
  [v2 setObject:v35 forKeyedSubscript:@"semanticLabels"];

  v37 = [v1 semanticVotes];
  v38 = [v1 count];
  if (v37 && v38)
  {
    v39 = [MEMORY[0x277CBEA90] dataWithBytes:v37 length:8 * v38];
  }

  else
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v40 = v39;
  [v2 setObject:v39 forKeyedSubscript:@"semanticVotes"];

  v41 = [v1 identifier];
  v42 = [v41 UUIDString];

  [v2 setObject:v42 forKeyedSubscript:@"identifier"];
  v43 = [v1 colors];
  v44 = [v1 colors];
  v45 = [v1 count];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v61, v43, v44 + 16 * v45, (v44 + 16 * v45 - v43) >> 4);
  std::vector<float>::vector[abi:ne200100](&__p, ((v62 - v61) >> 3) + ((v62 - v61) >> 4));
  v46 = v61;
  if (v62 != v61)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = __p + v47;
      v51 = &v46[v48];
      v52 = *v51;
      *(v50 + 2) = *(v51 + 2);
      *v50 = v52;
      ++v49;
      v46 = v61;
      v48 += 16;
      v47 += 12;
    }

    while (v49 < (v62 - v61) >> 4);
  }

  if (v60 == __p)
  {
    v53 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v53 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v60 - __p];
  }

  v54 = v53;
  [v2 setObject:v53 forKeyedSubscript:@"colors"];

  v55 = MEMORY[0x277CCABB0];
  [v1 timestamp];
  v56 = [v55 numberWithDouble:?];
  [v2 setObject:v56 forKeyedSubscript:@"timestamp"];

  v57 = v2;
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  return v57;
}

void sub_25D1FC12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  v29 = v28;

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

OUKeyframeExtended *OUKeyframeFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [[OUKeyframeExtended alloc] initWithDictionary:v1];

  return v2;
}

id OUKeyframeSequenceToDictionary(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:v7];
        v9 = OUKeyframeToDictionary(v8);
        v10 = [v7 UUIDString];
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

id OUKeyframeSequenceFromDictionary(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [v1 allKeys];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = *v17;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v16 + 1) + 8 * i);
        v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
        v7 = [OUKeyframeExtended alloc];
        v8 = [v1 objectForKeyedSubscript:v5];
        v9 = [(OUKeyframeExtended *)v7 initWithDictionary:v8];

        if (v6)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          [v14 setObject:v9 forKeyedSubscript:v6];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v2);
  }

  v11 = [v14 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id OUKeyframeSequenceFromDictionaryWithId(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v17 allKeys];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
        v8 = [OUKeyframeExtended alloc];
        v9 = [v17 objectForKeyedSubscript:v6];
        v10 = [(OUKeyframeExtended *)v8 initWithDictionary:v9 withGroupId:a2];

        if (v7)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          [v15 setObject:v10 forKeyedSubscript:v7];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  v12 = [v15 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *_ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_25D1FCCCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
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

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D1FD108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_25D1FD2B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *_ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D1FD4AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<half>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 2;
        *v15 = v16;
        v15 += 2;
        v14 += 2;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *_ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_25D1FD650(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D1FD7A0(_Unwind_Exception *a1)
{
  MEMORY[0x25F894DE0](v2, 0x1092C4055567BECLL);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void OU3DORIDTree::Node::Print(OU3DORIDTree::Node *this)
{
  if (*(this + 52) == 1)
  {
    std::to_string(&v8, *(this + 12));
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "unknown");
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v8;
  }

  else
  {
    v2 = v8.__r_.__value_.__r.__words[0];
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v4 = this;
  if (*(this + 23) < 0)
  {
    v4 = *this;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  NSLog(&cfstr_NodeNameIdOfTh.isa, v5, v3);
  v7 = *(this + 3);
  v6 = *(this + 4);
  while (v7 != v6)
  {
    OU3DORIDTree::Node::Print(*v7++);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_25D1FD8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t OU3DORIDTree::FindNodeInternal(uint64_t a1, const void **a2, const void **a3)
{
  v4 = a2;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = *(a3 + 23);
  v9 = v8;
  if (v8 < 0)
  {
    v8 = a3[1];
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = a2) : (v10 = *a2), (v11 = *a3, v9 >= 0) ? (v12 = a3) : (v12 = *a3), memcmp(v10, v12, v7)))
  {
    v13 = v4[3];
    v14 = v4[4];
    while (1)
    {
      if (v13 == v14)
      {
        return 0;
      }

      NodeInternal = OU3DORIDTree::FindNodeInternal(a1, *v13, a3);
      if (NodeInternal)
      {
        break;
      }

      ++v13;
    }

    return NodeInternal;
  }

  return v4;
}

void OU3DORIDTree::AddNode(uint64_t a1, uint64_t a2, const void **a3)
{
  NodeInternal = OU3DORIDTree::FindNodeInternal(a1, *(a1 + 24), a3);
  if (NodeInternal)
  {
    v5 = NodeInternal;
    v7 = NodeInternal[4];
    v6 = NodeInternal[5];
    if (v7 >= v6)
    {
      v9 = NodeInternal[3];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject *>>((NodeInternal + 3), v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v8 = 8 * v10 + 8;
      v15 = NodeInternal[3];
      v16 = NodeInternal[4] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = v5[3];
      v5[3] = v17;
      v5[4] = v8;
      v5[5] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    v5[4] = v8;
  }
}

unint64_t OU3DORIDTree::FindRange(uint64_t a1, const void **a2)
{
  NodeInternal = OU3DORIDTree::FindNodeInternal(a1, *(a1 + 24), a2);

  return OU3DORIDTree::Node::IDRange(NodeInternal);
}

unint64_t OU3DORIDTree::Node::IDRange(OU3DORIDTree::Node *this)
{
  if ((*(this + 52) & 1) != 0 || (v2 = *(this + 3), *(this + 4) == v2))
  {
    v4 = *(this + 12);
    v5 = v4;
  }

  else
  {
    v3 = OU3DORIDTree::Node::IDRange(*v2);
    v4 = v3;
    v5 = HIDWORD(v3);
    v7 = *(this + 3);
    v6 = *(this + 4);
    while (v7 != v6)
    {
      v8 = *v7++;
      v9 = OU3DORIDTree::Node::IDRange(v8);
      if (v4 >= v9)
      {
        v4 = v9;
      }

      if (v5 <= SHIDWORD(v9))
      {
        v5 = HIDWORD(v9);
      }

      else
      {
        v5 = v5;
      }
    }
  }

  return v4 | (v5 << 32);
}

OU3DORIDTree::Node *OU3DORIDTree::FindNodeBasedOnIDInternal(uint64_t a1, OU3DORIDTree::Node *a2, int a3, void ***a4)
{
  if (!a2)
  {
LABEL_16:
    if (a4)
    {
      std::vector<std::string>::clear[abi:ne200100](a4);
    }

    return 0;
  }

  v6 = a2;
LABEL_3:
  if (*(v6 + 52) != 1 || *(v6 + 12) != a3)
  {
    v7 = *(v6 + 3);
    v8 = *(v6 + 4);
    while (v7 != v8)
    {
      v9 = *v7;
      v10 = OU3DORIDTree::Node::IDRange(*v7);
      if (v10 <= a3 && SHIDWORD(v10) >= a3)
      {
        if (a4)
        {
          std::vector<std::string>::push_back[abi:ne200100](a4, v6);
        }

        v6 = v9;
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v7;
    }

    goto LABEL_16;
  }

  if (a4)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4, v6);
  }

  return v6;
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

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void OU3DORIDTree::GetRootToNodePath(OU3DORIDTree::Node **this@<X0>, int a2@<W1>, std::string::value_type a3@<W2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  OU3DORIDTree::FindNodeBasedOnIDInternal(this, this[3], a2, &v17);
  v6 = v17;
  if (0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3) >= 2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = &v6[v7];
      v12 = v9[3];
      v10 = v9 + 3;
      v11 = v12;
      v13 = *(v10 + 23);
      if (v13 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      if (v13 >= 0)
      {
        v15 = *(v10 + 23);
      }

      else
      {
        v15 = v10[1];
      }

      std::string::append(a4, v14, v15);
      v6 = v17;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3);
      if (v16 - 1 > v8)
      {
        std::string::push_back(a4, a3);
        v6 = v17;
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3);
      }

      ++v8;
      v7 += 3;
    }

    while (v16 > v8);
  }

  v20 = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
}

void sub_25D1FDDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
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

id objc_cast<NSArray>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id OUCameraToDictionary(void *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v42 = a1;
  v43 = [MEMORY[0x277CBEB38] dictionary];
  [v42 intrinsics];
  v39 = v2;
  v40 = v1;
  v41 = v3;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:*&v3];
  v38 = v48;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:*&v40];
  v37 = v49;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:*&v39];
  v50 = v36;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:3];
  v44.columns[0].i64[0] = v35;
  HIDWORD(v4) = DWORD1(v41);
  LODWORD(v4) = DWORD1(v41);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v47[0] = v5;
  HIDWORD(v6) = DWORD1(v40);
  LODWORD(v6) = DWORD1(v40);
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v47[1] = v7;
  HIDWORD(v8) = DWORD1(v39);
  LODWORD(v8) = DWORD1(v39);
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v47[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v44.columns[0].i64[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v41), DWORD2(v41)))}];
  v46[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v40), DWORD2(v40)))}];
  v46[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v39), DWORD2(v39)))}];
  v46[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v44.columns[1].i64[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:3];

  [v43 setObject:v15 forKeyedSubscript:@"intrinsic"];
  v16 = MEMORY[0x277CCABB0];
  [v42 imageResolution];
  v17 = [v16 numberWithDouble:?];
  v45[0] = v17;
  v18 = MEMORY[0x277CCABB0];
  [v42 imageResolution];
  v20 = [v18 numberWithDouble:v19];
  v45[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v43 setObject:v21 forKeyedSubscript:@"image_resolution"];

  [v42 pose];
  v44.columns[0] = v22;
  v44.columns[1] = v23;
  v44.columns[2] = v24;
  v44.columns[3] = v25;
  v26 = float4x4ToNSArray(&v44, *v22.i64);
  [v43 setObject:v26 forKeyedSubscript:@"pose"];

  [v42 transform];
  v44.columns[0] = v27;
  v44.columns[1] = v28;
  v44.columns[2] = v29;
  v44.columns[3] = v30;
  v31 = float4x4ToNSArray(&v44, *v27.i64);
  [v43 setObject:v31 forKeyedSubscript:@"transform"];

  v32 = [v43 copy];
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

_OUCamera *OUCameraFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [[_OUCamera alloc] initWithDictionary:v1];

  return v2;
}

void *VECV::ConnectedComponent::ConnectedComponent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[8] = 0;
  a1[7] = a1 + 8;
  v69 = (a1 + 7);
  a1[9] = 0;
  a1[11] = 0;
  v68 = a1 + 11;
  a1[10] = a1 + 11;
  v70 = (a1 + 10);
  a1[12] = 0;
  a1[5] = a3 + 2;
  a1[6] = a4 + 2;
  a1[4] = malloc_type_calloc((a4 + 2) * (a3 + 2), 2uLL, 0x1000040BDFB0063uLL);
  v73[0] = 0;
  v73[1] = 0;
  v72 = v73;
  v74 = 0;
  v75 = &v74;
  v8 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v72, &v74);
  *(v8 + 20) = 0;
  v8[6] = 0;
  if (a6 == 1)
  {
    if (!a4)
    {
      goto LABEL_87;
    }

    v9 = 0;
    v10 = 0;
    v66 = 2;
    v67 = 0;
    do
    {
      if (a3)
      {
        v11 = 0;
        v12 = 2;
        do
        {
          if (*(*a1 + v9 * a1[3] + v11))
          {
            v13 = a1[4];
            v14 = a1[5];
            v15 = (v13 + v67 * v14 + v12);
            v16 = *v15;
            if (*v15)
            {
              v17 = *v15;
            }

            else
            {
              v17 = -1;
            }

            v18 = v13 + v66 * v14;
            v19 = *(v18 + v12 - 2);
            if (v19 >= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 = *(v18 + v12 - 2);
            }

            if (!*(v18 + v12 - 2))
            {
              v20 = v17;
            }

            v21 = v20;
            v22 = *(v15 - 1);
            if (v22 < v20)
            {
              v21 = *(v15 - 1);
            }

            if (*(v15 - 1))
            {
              v20 = v21;
            }

            v23 = v15[1];
            if (v23 >= v20)
            {
              v24 = v20;
            }

            else
            {
              v24 = v15[1];
            }

            if (v15[1])
            {
              v25 = v24;
            }

            else
            {
              v25 = v20;
            }

            if (v25 == 0xFFFF)
            {
              *(v18 + v12) = ++v10;
              v74 = v10;
              v75 = &v74;
              v26 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v72, &v74);
              *(v26 + 20) = v10;
              v26[6] = 0;
            }

            else
            {
              *(v18 + v12) = v25;
              if (v16 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v16, v25);
              }

              if (v19 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v19, v25);
              }

              if (v22 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v22, v25);
              }

              if (v23 > v25)
              {
                UnionFind<unsigned short>::Union(&v72, v23, v24);
              }
            }
          }

          ++v11;
          v12 += 2;
        }

        while (a3 != v11);
      }

      ++v9;
      v66 += 2;
      v67 += 2;
    }

    while (v9 != a4);
  }

  else
  {
    if (!a4)
    {
      goto LABEL_87;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 2;
    do
    {
      if (a3)
      {
        v31 = 0;
        do
        {
          if (*(*a1 + v28 * a1[3] + v31))
          {
            v32 = a1[4];
            v33 = a1[5];
            v34 = v32 + v27 * v33 + 2 * v31;
            v35 = *(v34 + 2);
            if (*(v34 + 2))
            {
              v36 = *(v34 + 2);
            }

            else
            {
              v36 = -1;
            }

            v37 = v32 + v30 * v33;
            v38 = *(v37 + 2 * v31);
            if (v38 >= v36)
            {
              v39 = v36;
            }

            else
            {
              v39 = *(v37 + 2 * v31);
            }

            if (*(v37 + 2 * v31))
            {
              v40 = v39;
            }

            else
            {
              v40 = v36;
            }

            if (v40 == 0xFFFF)
            {
              *(v37 + 2 * v31 + 2) = ++v29;
              v74 = v29;
              v75 = &v74;
              v41 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v72, &v74);
              *(v41 + 20) = v29;
              v41[6] = 0;
            }

            else
            {
              *(v37 + 2 * v31 + 2) = v40;
              if (v35 > v40)
              {
                UnionFind<unsigned short>::Union(&v72, v35, v40);
              }

              if (v38 > v40)
              {
                UnionFind<unsigned short>::Union(&v72, v38, v39);
              }
            }
          }

          ++v31;
        }

        while (a3 != v31);
      }

      ++v28;
      v27 += 2;
      v30 += 2;
    }

    while (v28 != a4);
  }

  v42 = 0;
  do
  {
    v43 = v42 + 1;
    if (a3)
    {
      v44 = 0;
      do
      {
        v45 = UnionFind<unsigned short>::Find(&v72, *(a1[4] + 2 * a1[5] * v43 + 2 * v44 + 2));
        *(a1[4] + 2 * a1[5] * v43 + 2 * v44 + 2) = v45;
        v74 = v45;
        v75 = &v74;
        v46 = std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v69, &v74);
        ++v46[5];
        v47 = *v68;
        if (!*v68)
        {
          goto LABEL_71;
        }

        v48 = v68;
        do
        {
          v49 = *(v47 + 32);
          v50 = v49 >= v74;
          v51 = v49 < v74;
          if (v50)
          {
            v48 = v47;
          }

          v47 = *(v47 + 8 * v51);
        }

        while (v47);
        if (v48 != v68 && v74 >= *(v48 + 16))
        {
          v75 = &v74;
          v54 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74)[5];
          v75 = &v74;
          v55 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74);
          if (v54 >= v44)
          {
            v56 = v44;
          }

          else
          {
            v56 = v54;
          }

          v55[5] = v56;
          v75 = &v74;
          v57 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74)[6];
          v75 = &v74;
          v58 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74);
          if (v57 <= v44)
          {
            v59 = v44;
          }

          else
          {
            v59 = v57;
          }

          v58[6] = v59;
          v75 = &v74;
          v60 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74)[7];
          v75 = &v74;
          v61 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74);
          if (v60 >= v42)
          {
            v62 = v42;
          }

          else
          {
            v62 = v60;
          }

          v61[7] = v62;
          v75 = &v74;
          v63 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74)[8];
          v75 = &v74;
          v52 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74);
          if (v63 <= v42)
          {
            v53 = v42;
          }

          else
          {
            v53 = v63;
          }
        }

        else
        {
LABEL_71:
          v75 = &v74;
          v52 = std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v70, &v74);
          v52[5] = v44;
          v52[6] = v44;
          v53 = v42;
          v52[7] = v42;
        }

        v52[8] = v53;
        ++v44;
      }

      while (v44 != a3);
    }

    ++v42;
  }

  while (v43 != a4);
LABEL_87:
  std::__tree<int>::destroy(&v72, v73[0]);
  return a1;
}

void sub_25D1FF784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19)
{
  std::__tree<int>::destroy(&a18, a19);
  std::__tree<int>::destroy(a16, *a14);
  std::__tree<int>::destroy(a15, *a10);
  _Unwind_Resume(a1);
}

uint64_t *UnionFind<unsigned short>::Union(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v19 = a2;
  v18 = a3;
  if (a2 >= a3)
  {
    v4 = &v19;
  }

  else
  {
    v4 = &v18;
  }

  v20 = v4;
  v5 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v4) + 5;
  do
  {
    v6 = v5;
    v5 = v5[1];
  }

  while (v5);
  v7 = *v6;
  if (v18 >= v19)
  {
    v8 = &v19;
  }

  else
  {
    v8 = &v18;
  }

  v20 = v8;
  result = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v8);
  v10 = result + 5;
  do
  {
    v11 = v10;
    v10 = v10[1];
  }

  while (v10);
  if (v7 != *v11)
  {
    if (v18 >= v19)
    {
      v12 = &v19;
    }

    else
    {
      v12 = &v18;
    }

    v20 = v12;
    v13 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v12) + 5;
    do
    {
      v14 = v13;
      v13 = v13[1];
    }

    while (v13);
    if (v19 >= v18)
    {
      v15 = &v19;
    }

    else
    {
      v15 = &v18;
    }

    v20 = v15;
    v16 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v15) + 5;
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
    v20 = v17;
    result = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, v17);
    result[6] = v14;
  }

  return result;
}

uint64_t UnionFind<unsigned short>::Find(uint64_t a1, unsigned __int16 a2)
{
  v5 = a2;
  v6 = &v5;
  v2 = std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1, &v5) + 5;
  do
  {
    v3 = v2;
    v2 = v2[1];
  }

  while (v2);
  return *v3;
}

void VECV::ConnectedComponent::~ConnectedComponent(void **this)
{
  free(this[4]);
  std::__tree<int>::destroy((this + 10), this[11]);
  std::__tree<int>::destroy((this + 7), this[8]);
}

uint64_t *std::__tree<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,UnionFind<unsigned short>::UFNode>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned long>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned long>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned long>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned short,VECV::CCStat>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,VECV::CCStat>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,VECV::CCStat>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

void ou3dod::OU3DAnchorFreeDetector::createForOnline(ou3dod::OU3DAnchorFreeDetector *this, const OU3DSSDConfig *a2)
{
  v2 = *(this + 64);
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_25D1FFDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    ou3dod::OU3DAnchorFreeDetector::createForOnline(__p);
  }

  MEMORY[0x25F894DE0](v16, 0x10B1C4009F42ACALL);

  _Unwind_Resume(a1);
}

void ou3dod::OU3DAnchorFreeDetector::createForOffline(ou3dod::OU3DAnchorFreeDetector *this, const OU3DSSDConfig *a2)
{
  v2 = *(this + 64);
  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_25D1FFF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    ou3dod::OU3DAnchorFreeDetector::createForOnline(__p);
  }

  MEMORY[0x25F894DE0](v16, 0x10B1C4009F42ACALL);

  _Unwind_Resume(a1);
}

uint64_t ou3dod::OU3DAnchorFreeDetector::OU3DAnchorFreeDetector(uint64_t a1, uint64_t *a2, __int128 *a3, int a4, int a5, char a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = ou3dod::OU3DODInterface::OU3DODInterface(a1, a2);
  *v11 = &unk_286EBBD38;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  v16 = *a3;
  v15 = a3[1];
  *(v11 + 21) = 0u;
  v17 = (v11 + 21);
  *(v11 + 3) = v16;
  *(v11 + 7) = v14;
  *(v11 + 6) = v13;
  *(v11 + 5) = v12;
  *(v11 + 4) = v15;
  *(v11 + 128) = a6;
  *(v11 + 33) = a4;
  *(v11 + 34) = a5;
  v11[18] = 0;
  v11[19] = 0;
  *(v11 + 40) = 0;
  *(v11 + 23) = 0u;
  *(v11 + 25) = 0u;
  v18 = *(v11 + 4) * HIDWORD(v11[8]) * v11[9];
  *(v11 + 35) = v18;
  std::vector<int>::vector[abi:ne200100](buf, v18);
  begin = v17->__begin_;
  if (v17->__begin_)
  {
    *(a1 + 176) = begin;
    operator delete(begin);
    v17->__begin_ = 0;
    v17->__end_ = 0;
    v17->__end_cap_.__value_ = 0;
  }

  *(a1 + 168) = *buf;
  *(a1 + 184) = *&buf[16];
  if (*(a1 + 128) == 1)
  {
    std::vector<float>::resize(v17 + 1, *(a1 + 136));
  }

  v20 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 140);
    *buf = 136315394;
    *&buf[4] = "OU3DAnchorFreeDetector";
    *&buf[12] = 1024;
    *&buf[14] = v21;
    _os_log_impl(&dword_25D1DB000, v20, OS_LOG_TYPE_INFO, "[3DOD][%s] Loading AF Espresso V2 version succeeded, with %d voxels.", buf, 0x12u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25D2001E4(_Unwind_Exception *a1)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 25) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 22) = v5;
    operator delete(v5);
  }

  ou3dod::OU3DODInterface::~OU3DODInterface(v1);
  _Unwind_Resume(a1);
}

void ou3dod::OU3DODInterface::~OU3DODInterface(ou3dod::OU3DODInterface *this)
{
  *this = &unk_286EBBD90;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 8);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void ou3dod::OU3DAnchorFreeDetector::Preprocess(ou3dod::OU3DAnchorFreeDetector *this, OUPointCloudCpp *a2)
{
  if (OUPointCloudCpp::IsValid(a2))
  {
    v3 = *(this + 4);
    std::string::basic_string[abi:ne200100]<0>(&__p, "x");
    OUDnnInferenceInterface::GetInputSpan<half,void>();
  }

  v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ou3dod::OU3DAnchorFreeDetector::Preprocess(v4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, &unk_25D2878C2);
  __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
}

BOOL OUPointCloudCpp::IsValid(OUPointCloudCpp *this)
{
  v1 = *(this + 1) - *this;
  if (v1 == *(this + 4) - *(this + 3) && (v2 = v1 >> 4, v2 == (*(this + 7) - *(this + 6)) >> 2))
  {
    return v2 == (*(this + 10) - *(this + 9)) >> 3;
  }

  else
  {
    return 0;
  }
}

void ou3dod::OU3DAnchorFreeDetector::ParseNetOutput(ou3dod::OU3DAnchorFreeDetector *this)
{
  *(this + 128);
  v1 = *(this + 35);
  v2 = *(this + 33);
  *(this + 128);
  v3 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(&v4, "centerness");
  OUDnnInferenceInterface::GetOutputSpan<half,void>();
}

void sub_25D20058C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void ou3dod::OU3DAnchorFreeDetector::~OU3DAnchorFreeDetector(ou3dod::OU3DAnchorFreeDetector *this)
{
  *this = &unk_286EBBD38;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  ou3dod::OU3DODInterface::~OU3DODInterface(this);
}

{
  *this = &unk_286EBBD38;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  ou3dod::OU3DODInterface::~OU3DODInterface(this);

  JUMPOUT(0x25F894DE0);
}

void std::vector<OUBox3d>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {

      v4 = *(v3 - 40);
      if (v4)
      {
        operator delete(v4);
      }

      v5 = *(v3 - 64);
      if (v5)
      {
        *(v3 - 56) = v5;
        operator delete(v5);
      }

      v3 -= 224;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void _GLOBAL__sub_I_OU3DAnchorFreeDetector_mm()
{
  v76 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = @"Cabinet";
  *&v39 = v1;
  v2 = @"Refrigerator";
  *(&v39 + 1) = v2;
  v38 = @"Shelf";
  *&v40 = v38;
  v37 = @"Stove";
  *(&v40 + 1) = v37;
  v3 = @"Bed";
  *&v41 = v3;
  v36 = @"Sink";
  *(&v41 + 1) = v36;
  v35 = @"Washer";
  *&v42 = v35;
  v34 = @"Toilet";
  *(&v42 + 1) = v34;
  v4 = @"Bathtub";
  *&v43 = v4;
  v33 = @"Oven";
  *(&v43 + 1) = v33;
  v32 = @"Dishwasher";
  v44 = v32;
  v31 = @"Fireplace";
  v45 = v31;
  v30 = @"Stool";
  v46 = v30;
  v29 = @"Chair";
  v47 = v29;
  v5 = @"Table";
  v48 = v5;
  v28 = @"Screen";
  v49 = v28;
  v6 = @"Sofa";
  v50 = v6;
  v27 = @"Stairs";
  v51 = v27;
  v26 = @"Window";
  v52 = v26;
  v25 = @"Door";
  v53 = v25;
  v24 = @"BuildInCabinet";
  v54 = v24;
  qword_28155A948 = 0;
  unk_28155A950 = 0;
  ou3dod::kObjectTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kObjectTypesLUT, &v39, &v55, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kObjectTypesLUT, &dword_25D1DB000);
  v8 = v1;
  *&v39 = v8;
  qword_28155A788 = 0;
  unk_28155A790 = 0;
  ou3dod::kAFClassIdToObjectTypeOffline = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kAFClassIdToObjectTypeOffline, &v39, &v39 + 8, 1uLL);

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kAFClassIdToObjectTypeOffline, &dword_25D1DB000);
  v9 = v8;
  *&v39 = v9;
  v10 = v3;
  *(&v39 + 1) = v10;
  v11 = v4;
  *&v40 = v11;
  v12 = v5;
  *(&v40 + 1) = v12;
  v13 = v6;
  *&v41 = v13;
  qword_28155A8B0 = 0;
  unk_28155A8B8 = 0;
  ou3dod::kOfflineSsdTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kOfflineSsdTypesLUT, &v39, &v41 + 8, 5uLL);
  for (j = 32; j != -8; j -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kOfflineSsdTypesLUT, &dword_25D1DB000);
  v41 = xmmword_25D277F80;
  v42 = unk_25D277F90;
  v43 = xmmword_25D277FA0;
  v39 = xmmword_25D277F60;
  v40 = unk_25D277F70;
  qword_28155A820 = 0;
  unk_28155A828 = 0;
  ou3dod::kOfflineSSDAnchorSizeList = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&ou3dod::kOfflineSSDAnchorSizeList, &v39, &v44, 5uLL);
  __cxa_atexit(_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEED1B8ne200100Ev, &ou3dod::kOfflineSSDAnchorSizeList, &dword_25D1DB000);
  v15 = v9;
  *&v39 = v15;
  DWORD2(v39) = 1055286886;
  v16 = v10;
  *&v40 = v16;
  DWORD2(v40) = 1039516303;
  v17 = v11;
  *&v41 = v17;
  DWORD2(v41) = 1045220557;
  v18 = v12;
  *&v42 = v18;
  DWORD2(v42) = 1050253722;
  v19 = v13;
  *&v43 = v19;
  DWORD2(v43) = 1047904911;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](ou3dod::kOfflineSSD3dConfThresholdMap, &v39, 5);
  for (k = 64; k != -16; k -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], ou3dod::kOfflineSSD3dConfThresholdMap, &dword_25D1DB000);
  v21 = v15;
  *&v39 = v21;
  DWORD2(v39) = 1050253722;
  *&v40 = v2;
  DWORD2(v40) = 1052602532;
  *&v41 = v38;
  DWORD2(v41) = 1051260355;
  *&v42 = v37;
  DWORD2(v42) = 1043878380;
  *&v43 = v16;
  DWORD2(v43) = 1053273620;
  v44 = v36;
  LODWORD(v45) = 1046562734;
  v46 = v35;
  LODWORD(v47) = 1051260355;
  v48 = v34;
  LODWORD(v49) = 1052266988;
  v50 = v17;
  LODWORD(v51) = 1053609165;
  v52 = v33;
  LODWORD(v53) = 1050924810;
  v54 = v32;
  v55 = 1052266988;
  v56 = v31;
  v57 = 1050253722;
  v58 = v30;
  v59 = 1092616192;
  v60 = v29;
  v61 = 1049582633;
  v62 = v18;
  v63 = 1050253722;
  v64 = v28;
  v65 = 1054951342;
  v66 = v19;
  v67 = 1052602532;
  v68 = v27;
  v69 = 1049582633;
  v70 = v26;
  v71 = 1092616192;
  v72 = v25;
  v73 = 1092616192;
  v74 = v24;
  v75 = 1092616192;
  for (m = 320; m != -16; m -= 16)
  {
  }

  *&v39 = v21;
  DWORD2(v39) = 1048576000;

  objc_autoreleasePoolPop(v0);
  v23 = *MEMORY[0x277D85DE8];
}

BOOL float3FromNSArray(void *a1, _OWORD *a2)
{
  v3 = a1;
  v4 = [v3 count];
  if (v4 == 3)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v14 = v6;
    v7 = [v3 objectAtIndexedSubscript:1];
    [v7 floatValue];
    v13 = v8;
    v9 = [v3 objectAtIndexedSubscript:2];
    [v9 floatValue];
    v10 = v14;
    DWORD1(v10) = v13;
    DWORD2(v10) = v11;
    *a2 = v10;
  }

  return v4 == 3;
}

uint64_t box3dFromNSArray(NSArray *a1, box3d *a2)
{
  v3 = a1;
  if ([(NSArray *)v3 count]== 8)
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSArray *)v3 objectAtIndexedSubscript:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v7 = [(NSArray *)v3 objectAtIndexedSubscript:v4];
      v8 = float3FromNSArray(v7, a2);

      if (!v8)
      {
        break;
      }

      ++v4;
      a2 = (a2 + 16);
      if (v4 == 8)
      {
        v9 = 1;
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

uint64_t isValidType(NSString *a1)
{
  v1 = a1;
  {
    isValidType(NSString *)::validTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"Cabinet", @"Refrigerator", @"Shelf", @"Stove", @"Bed", @"Sink", @"Washer", 0x286EBD000, @"Bathtub", @"Oven", @"Dishwasher", @"Table", @"Sofa", @"Chair", @"Fireplace", @"Stool", @"Screen", @"Door", @"Window", @"Cuboid", @"Stairs", @"BuildInCabinet", @"Storage", 0}];
  }

  v2 = [isValidType(NSString *)::validTypes containsObject:v1];

  return v2;
}

void sub_25D20227C(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t isValidODSourceType(NSString *a1)
{
  v1 = a1;
  {
    isValidODSourceType(NSString *)::validTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"unknown", @"online", @"offline", 0}];
  }

  v2 = [isValidODSourceType(NSString *)::validTypes containsObject:v1];

  return v2;
}

void sub_25D20234C(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_25D202D4C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

id objc_cast<NSString>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id objc_cast<NSNumber>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id objc_cast<NSArray<NSNumber *>>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id objc_cast<NSArray<NSArray*<NSNumber *>>>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void float4FromNSArray(void *a1, _OWORD *a2)
{
  v15 = a1;
  if ([v15 count] == 4)
  {
    v3 = [v15 objectAtIndexedSubscript:0];
    [v3 floatValue];
    v14 = v4;
    v5 = [v15 objectAtIndexedSubscript:1];
    [v5 floatValue];
    v13 = v6;
    v7 = [v15 objectAtIndexedSubscript:2];
    [v7 floatValue];
    v12 = v8;
    v9 = [v15 objectAtIndexedSubscript:3];
    [v9 floatValue];
    *&v10 = __PAIR64__(v13, v14);
    *(&v10 + 1) = __PAIR64__(v11, v12);
    *a2 = v10;
  }
}

id objc_cast<NSMutableDictionary>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isValidGroupType(NSString *a1)
{
  v1 = a1;
  {
    isValidGroupType(NSString *)::validTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"ChairGroup", @"LShapeGroup", @"UShapeGroup", @"FloorPlan", 0}];
  }

  v2 = [isValidGroupType(NSString *)::validTypes containsObject:v1];

  return v2;
}

void sub_25D2039F4(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id float3ToNSArray(__n128 a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v9[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v9[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

{
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v9[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v9[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

{
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v9[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v9[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

{
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v9[0] = v1;
  HIDWORD(v2) = a1.n128_u32[1];
  LODWORD(v2) = a1.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v9[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void SampleSemantics(uint64_t *a1@<X0>, void *a2@<X1>, __CVBuffer *a3@<X2>, __CVBuffer *a4@<X3>, void *a5@<X8>, simd_float4 a6@<Q0>, simd_float4 a7@<Q1>, simd_float4 a8@<Q2>, simd_float4 a9@<Q3>)
{
  v47.columns[2] = a8;
  v47.columns[3] = a9;
  v47.columns[0] = a6;
  v47.columns[1] = a7;
  v13 = a2;
  [v13 intrinsics];
  v45 = v15;
  v46 = v14;
  v44 = v16;
  v56 = __invert_f4(v47);
  v17 = 0;
  pixelBuffer = v47;
  do
  {
    v55.columns[v17] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56.columns[0], COERCE_FLOAT(*&pixelBuffer.columns[v17])), v56.columns[1], *pixelBuffer.columns[v17].f32, 1), v56.columns[2], pixelBuffer.columns[v17], 2), v56.columns[3], pixelBuffer.columns[v17], 3);
    ++v17;
  }

  while (v17 != 4);
  v18 = 0;
  v20 = v45;
  v19 = v46;
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v21 = v44;
  v21.i32[3] = 0;
  pixelBuffer = v55;
  do
  {
    v55.columns[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*&pixelBuffer.columns[v18])), v20, *pixelBuffer.columns[v18].f32, 1), v21, pixelBuffer.columns[v18], 2), xmmword_25D277B90, pixelBuffer.columns[v18], 3);
    ++v18;
  }

  while (v18 != 4);
  v50 = v55.columns[1];
  v51 = v55.columns[0];
  v48 = v55.columns[3];
  v49 = v55.columns[2];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  [v13 imageResolution];
  v25 = v24;
  [v13 imageResolution];
  v27 = v26;
  PixelBufferSampler<unsigned char>::PixelBufferSampler(&v55, a3);
  PixelBufferSampler<unsigned char>::PixelBufferSampler(&pixelBuffer, a4);
  v29 = *a1;
  v28 = a1[1];
  v30 = (v28 - *a1) >> 4;
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEEC2B8ne200100Em(v53, v30);
  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v30);
  if (v28 != v29)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = Width;
    LODWORD(v34) = 1120403456;
    if (v30 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v30;
    }

    v35 = Height / v27;
    v37.f32[1] = v35;
    do
    {
      v38 = vaddq_f32(v48, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(*a1 + v32))), v50, *(*a1 + v32), 1), v49, *(*a1 + v32), 2));
      v37.f32[0] = Width / v25;
      v39 = vcvt_s32_f32(vrndm_f32(vmul_f32(vdiv_f32(*v38.i8, *&vdupq_laneq_s32(v38, 2)), v37)));
      v40 = v39.i32[0];
      v41 = 0.0;
      v42 = 0;
      if ((v39.i32[0] & 0x80000000) == 0)
      {
        v43 = v39.u32[1];
        if (v55.columns[0].i32[2] > v39.i32[0] && (v39.i32[1] & 0x80000000) == 0 && v55.columns[0].i32[3] > v39.i32[1])
        {
          v42 = *(v55.columns[1].i64[1] + v55.columns[1].i64[0] * v39.u32[1] + v39.u32[0]);
        }

        v39 = vcgt_s32(*&pixelBuffer.columns[0].u32[2], v39);
        if (v39.i8[0] & 1) != 0 && (v43 & 0x80000000) == 0 && (v39.i8[4])
        {
          v41 = *(pixelBuffer.columns[1].i64[1] + pixelBuffer.columns[1].i64[0] * v43 + 4 * v40);
        }
      }

      *(v53[0] + v31) = v42;
      v39.i32[0] = *(v53[0] + v31);
      *(v53[0] + v31) = vuzp1_s8(vmovl_u8(v39).u16[0], *&v34).u32[0];
      *(__p[0] + v31) = (v41 * 100.0);
      *(__p[0] + v33) = vand_s8(*(__p[0] + 8 * v33), 0xFFFF00000000FFFFLL);
      *(__p[0] + v31 + 3) = ((1.0 - v41) * 100.0);
      ++v33;
      v32 += 16;
      v31 += 4;
      --v36;
    }

    while (v36);
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIDv4_hNS_9allocatorIS4_EEEENS3_IDv4_tNS5_IS8_EEEEEEC2B8ne200100IJLm0ELm1EEJS7_SA_EJEJEJRS7_RSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(a5, v53, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer.columns[0].i64[0], 1uLL);
  CVPixelBufferUnlockBaseAddress(v55.columns[0].i64[0], 1uLL);
}

void sub_25D2048CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, CVPixelBufferRef a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  PixelBufferSampler<float>::~PixelBufferSampler(&a29);
  PixelBufferSampler<unsigned char>::~PixelBufferSampler((v30 - 160));

  _Unwind_Resume(a1);
}

void WorldPCFromARFrameSceneCamera(_OUFrame *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v16 = a1;
  [(_OUFrame *)v16 GetSceneCameraPoseInVisionWorld];
  v14 = v7;
  v15 = v6;
  v12 = v9;
  v13 = v8;
  CameraPCFromARFrameSceneCamera(v16, a2, a3);
  v10 = *a3;
  v11 = *(a3 + 8);
  if (*a3 != v11)
  {
    do
    {
      *v10->f32 = vaddq_f32(v12, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*v10->f32)), v14, *v10, 1), v13, *v10->f32, 2));
      v10 += 2;
    }

    while (v10 != v11);
  }
}

void CameraPCFromARFrameSceneCamera(void *a1@<X0>, unsigned int a2@<W1>, const void **a3@<X8>)
{
  v5 = a1;
  v6 = [v5 sceneDepthBuffer];
  v7 = [v5 sceneDepthConfidenceBuffer];
  v8 = [v5 sceneCamera];
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  if (Width && Height && (!v7 || (v10 = CVPixelBufferGetWidth(v7), v11 = CVPixelBufferGetHeight(v7), v10) && v11))
  {
    [v8 intrinsics];
    v48.columns[0].i32[3] = 0;
    v48.columns[1].i32[3] = 0;
    v48.columns[2].i32[3] = 0;
    v48.columns[3] = xmmword_25D277B90;
    v49 = __invert_f4(v48);
    v41 = v49.columns[1];
    v42 = v49.columns[0];
    v39 = v49.columns[3];
    v40 = v49.columns[2];
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a3, Height / a2 * (Width / a2));
    PixelBufferSampler<unsigned char>::PixelBufferSampler(&pixelBuffer, v6);
    if (v7)
    {
      operator new();
    }

    v37 = v5;
    [v8 imageResolution];
    v13 = v12;
    [v8 imageResolution];
    v14 = 0;
    v15 = v13 / Width;
    *&v16 = v16 / Height;
    v17 = *&v16;
    v18 = v15;
    do
    {
      v19 = 0;
      v20 = v14;
      do
      {
        v22 = v19;
        v23 = 0.0;
        if ((v22 & 0x80000000) == 0 && v44 > v22 && (v20 & 0x80000000) == 0 && v45 > v20)
        {
          v23 = *(v47 + v46 * v20 + 4 * v22);
        }

        v24 = (v19 + 0.5) * v18;
        v21 = (v14 + 0.5) * v17;
        v25 = vaddq_f32(v39, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, v23 * v24), v41, v23 * v21), v40, v23));
        v27 = a3[1];
        v26 = a3[2];
        if (v27 >= v26)
        {
          v29 = (v27 - *a3) >> 4;
          if ((v29 + 1) >> 60)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v30 = v26 - *a3;
          v31 = v30 >> 3;
          if (v30 >> 3 <= (v29 + 1))
          {
            v31 = v29 + 1;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFF0)
          {
            v32 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v31;
          }

          if (v32)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v32);
          }

          *(16 * v29) = v25;
          v28 = 16 * v29 + 16;
          v33 = a3[1] - *a3;
          v34 = (16 * v29 - v33);
          memcpy(v34, *a3, v33);
          v35 = *a3;
          *a3 = v34;
          a3[1] = v28;
          a3[2] = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v27 = v25;
          v28 = &v27[1];
        }

        a3[1] = v28;
        v19 += a2;
      }

      while (v19 < Width);
      v14 += a2;
    }

    while (v14 < Height);
    v5 = v37;
    if (a3[1] == *a3)
    {
      v36 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        CameraPCFromARFrameSceneCamera(v36);
      }
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_25D204DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x25F894DE0](v19, 0x1070C4075EB0837);
  PixelBufferSampler<float>::~PixelBufferSampler(va);
  v21 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIDv4_hNS_9allocatorIS4_EEEENS3_IDv4_tNS5_IS8_EEEEEEC2B8ne200100IJLm0ELm1EEJS7_SA_EJEJEJRS7_RSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

void sub_25D204EB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D204F30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D204FAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferSampler<unsigned char>::PixelBufferSampler(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  *a1 = pixelBuffer;
  *(a1 + 8) = CVPixelBufferGetWidth(pixelBuffer);
  *(a1 + 12) = CVPixelBufferGetHeight(*a1);
  *(a1 + 16) = CVPixelBufferGetBytesPerRow(*a1);
  CVPixelBufferLockBaseAddress(*a1, 1uLL);
  *(a1 + 24) = CVPixelBufferGetBaseAddress(*a1);
  return a1;
}

void sub_25D2055C0(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25D205910(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void float3FromNSArray(void *a1, _OWORD *a2)
{
  v12 = a1;
  if ([v12 count] == 3)
  {
    v3 = [v12 objectAtIndexedSubscript:0];
    [v3 floatValue];
    v11 = v4;
    v5 = [v12 objectAtIndexedSubscript:1];
    [v5 floatValue];
    v10 = v6;
    v7 = [v12 objectAtIndexedSubscript:2];
    [v7 floatValue];
    v8 = v11;
    DWORD1(v8) = v10;
    DWORD2(v8) = v9;
    *a2 = v8;
  }
}

int *utils::RotateInPlace<int,void>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3 * a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unexpected input size.");
    goto LABEL_40;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 <= 179)
  {
    if (!a4)
    {
      return result;
    }

    if (a4 == 90)
    {
      v4 = 0;
      v5 = 4 * a3;
      v6 = result;
      v7 = a3;
      do
      {
        v8 = v6;
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = *v8;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + v5);
          --v10;
        }

        while (v10);
        ++v4;
        --v7;
        v6 += a3 + 1;
      }

      while (v4 != a3);
      for (i = 0; i != a3; ++i)
      {
        if (a3 != 1)
        {
          v13 = 0;
          v14 = a3 - 1;
          do
          {
            v15 = result[v13];
            result[v13] = result[v14];
            result[v14] = v15;
            ++v13;
            --v14;
          }

          while (v13 < v14);
        }

        result = (result + v5);
      }

      return result;
    }

    goto LABEL_41;
  }

  if (a4 == 180)
  {
    v28 = (a3 - 1) * a3;
    if (v28 >= 1)
    {
      v29 = &result[v28];
      v30 = result;
      do
      {
        for (j = 0; j != a3; ++j)
        {
          v32 = v30[j];
          v30[j] = v29[j];
          v29[j] = v32;
        }

        v30 += a3;
        v29 -= a3;
      }

      while (v30 < v29);
    }

    for (k = 0; k != a3; ++k)
    {
      if (a3 != 1)
      {
        v34 = 0;
        v35 = a3 - 1;
        do
        {
          v36 = result[v34];
          result[v34] = result[v35];
          result[v35] = v36;
          ++v34;
          --v35;
        }

        while (v34 < v35);
      }

      result += a3;
    }
  }

  else
  {
    if (a4 != 270)
    {
LABEL_41:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "In-place rotation only support rotation angle 0, 90, 180, or 270 degrees.");
LABEL_40:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

    v16 = 0;
    v17 = 4 * a3;
    v18 = result;
    do
    {
      if (a3 != 1)
      {
        v19 = 0;
        v20 = a3 - 1;
        do
        {
          v21 = v18[v19];
          v18[v19] = v18[v20];
          v18[v20] = v21;
          ++v19;
          --v20;
        }

        while (v19 < v20);
      }

      ++v16;
      v18 = (v18 + v17);
    }

    while (v16 != a3);
    v22 = 0;
    v23 = a3;
    do
    {
      v24 = result;
      v25 = result;
      v26 = v23;
      do
      {
        v27 = *v24;
        *v24++ = *v25;
        *v25 = v27;
        v25 = (v25 + v17);
        --v26;
      }

      while (v26);
      ++v22;
      --v23;
      result = (result + v17 + 4);
    }

    while (v22 != a3);
  }

  return result;
}

int *utils::RotateInPlace<float,void>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3 * a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unexpected input size.");
    goto LABEL_40;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 <= 179)
  {
    if (!a4)
    {
      return result;
    }

    if (a4 == 90)
    {
      v4 = 0;
      v5 = 4 * a3;
      v6 = result;
      v7 = a3;
      do
      {
        v8 = v6;
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = *v8;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + v5);
          --v10;
        }

        while (v10);
        ++v4;
        --v7;
        v6 += a3 + 1;
      }

      while (v4 != a3);
      for (i = 0; i != a3; ++i)
      {
        if (a3 != 1)
        {
          v13 = 0;
          v14 = a3 - 1;
          do
          {
            v15 = result[v13];
            result[v13] = result[v14];
            result[v14] = v15;
            ++v13;
            --v14;
          }

          while (v13 < v14);
        }

        result = (result + v5);
      }

      return result;
    }

    goto LABEL_41;
  }

  if (a4 == 180)
  {
    v28 = (a3 - 1) * a3;
    if (v28 >= 1)
    {
      v29 = &result[v28];
      v30 = result;
      do
      {
        for (j = 0; j != a3; ++j)
        {
          v32 = v30[j];
          v30[j] = v29[j];
          v29[j] = v32;
        }

        v30 += a3;
        v29 -= a3;
      }

      while (v30 < v29);
    }

    for (k = 0; k != a3; ++k)
    {
      if (a3 != 1)
      {
        v34 = 0;
        v35 = a3 - 1;
        do
        {
          v36 = result[v34];
          result[v34] = result[v35];
          result[v35] = v36;
          ++v34;
          --v35;
        }

        while (v34 < v35);
      }

      result += a3;
    }
  }

  else
  {
    if (a4 != 270)
    {
LABEL_41:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "In-place rotation only support rotation angle 0, 90, 180, or 270 degrees.");
LABEL_40:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

    v16 = 0;
    v17 = 4 * a3;
    v18 = result;
    do
    {
      if (a3 != 1)
      {
        v19 = 0;
        v20 = a3 - 1;
        do
        {
          v21 = v18[v19];
          v18[v19] = v18[v20];
          v18[v20] = v21;
          ++v19;
          --v20;
        }

        while (v19 < v20);
      }

      ++v16;
      v18 = (v18 + v17);
    }

    while (v16 != a3);
    v22 = 0;
    v23 = a3;
    do
    {
      v24 = result;
      v25 = result;
      v26 = v23;
      do
      {
        v27 = *v24;
        *v24++ = *v25;
        *v25 = v27;
        v25 = (v25 + v17);
        --v26;
      }

      while (v26);
      ++v22;
      --v23;
      result = (result + v17 + 4);
    }

    while (v22 != a3);
  }

  return result;
}

__int16 *utils::RotateInPlace<half,void>(__int16 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3 * a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unexpected input size.");
    goto LABEL_40;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 <= 179)
  {
    if (!a4)
    {
      return result;
    }

    if (a4 == 90)
    {
      v4 = 0;
      v5 = 2 * a3;
      v6 = result;
      v7 = a3;
      do
      {
        v8 = v6;
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = *v8;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + v5);
          --v10;
        }

        while (v10);
        ++v4;
        --v7;
        v6 += a3 + 1;
      }

      while (v4 != a3);
      for (i = 0; i != a3; ++i)
      {
        if (a3 != 1)
        {
          v13 = 0;
          v14 = a3 - 1;
          do
          {
            v15 = result[v13];
            result[v13] = result[v14];
            result[v14] = v15;
            ++v13;
            --v14;
          }

          while (v13 < v14);
        }

        result = (result + v5);
      }

      return result;
    }

    goto LABEL_41;
  }

  if (a4 == 180)
  {
    v28 = (a3 - 1) * a3;
    if (v28 >= 1)
    {
      v29 = &result[v28];
      v30 = result;
      do
      {
        for (j = 0; j != a3; ++j)
        {
          v32 = v30[j];
          v30[j] = v29[j];
          v29[j] = v32;
        }

        v30 += a3;
        v29 -= a3;
      }

      while (v30 < v29);
    }

    for (k = 0; k != a3; ++k)
    {
      if (a3 != 1)
      {
        v34 = 0;
        v35 = a3 - 1;
        do
        {
          v36 = result[v34];
          result[v34] = result[v35];
          result[v35] = v36;
          ++v34;
          --v35;
        }

        while (v34 < v35);
      }

      result += a3;
    }
  }

  else
  {
    if (a4 != 270)
    {
LABEL_41:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "In-place rotation only support rotation angle 0, 90, 180, or 270 degrees.");
LABEL_40:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

    v16 = 0;
    v17 = 2 * a3;
    v18 = result;
    do
    {
      if (a3 != 1)
      {
        v19 = 0;
        v20 = a3 - 1;
        do
        {
          v21 = v18[v19];
          v18[v19] = v18[v20];
          v18[v20] = v21;
          ++v19;
          --v20;
        }

        while (v19 < v20);
      }

      ++v16;
      v18 = (v18 + v17);
    }

    while (v16 != a3);
    v22 = 0;
    v23 = a3;
    do
    {
      v24 = result;
      v25 = result;
      v26 = v23;
      do
      {
        v27 = *v24;
        *v24++ = *v25;
        *v25 = v27;
        v25 = (v25 + v17);
        --v26;
      }

      while (v26);
      ++v22;
      --v23;
      result = (result + v17 + 2);
    }

    while (v22 != a3);
  }

  return result;
}

void utils::Resample(utils *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (this <= a2)
  {
    std::vector<unsigned long>::vector[abi:ne200100](a3, this);
    v21 = *a3;
    v22 = a3[1];
    if (*a3 != v22)
    {
      v23 = 0;
      v24 = (v22 - v21 - 8) >> 3;
      v25 = vdupq_n_s64(v24);
      v26 = (v24 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v27 = xmmword_25D277E60;
      v28 = vdupq_n_s64(2uLL);
      do
      {
        v29 = vmovn_s64(vcgeq_u64(v25, v27));
        if (v29.i8[0])
        {
          v21[v23] = v23;
        }

        if (v29.i8[4])
        {
          v21[v23 + 1] = v23 + 1;
        }

        v23 += 2;
        v27 = vaddq_s64(v27, v28);
      }

      while (v26 != v23);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<unsigned long>::reserve(a3, a2);
    if (this >= 1)
    {
      v6 = 0;
      v7 = a2 / this;
      v8 = this & 0x7FFFFFFF;
      v9 = -1;
      do
      {
        v10 = (v7 * v6);
        if (v9 < v10)
        {
          v12 = a3[1];
          v11 = a3[2];
          if (v12 >= v11)
          {
            v14 = *a3;
            v15 = v12 - *a3;
            v16 = v15 >> 3;
            v17 = (v15 >> 3) + 1;
            if (v17 >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v18 = v11 - v14;
            if (v18 >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v19);
            }

            *(8 * v16) = v6;
            v13 = 8 * v16 + 8;
            memcpy(0, v14, v15);
            v20 = *a3;
            *a3 = 0;
            a3[1] = v13;
            a3[2] = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          else
          {
            *v12 = v6;
            v13 = (v12 + 1);
          }

          a3[1] = v13;
        }

        ++v6;
        v9 = v10;
      }

      while (v8 != v6);
    }
  }
}

void sub_25D206584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::vector<int>>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void sub_25D207E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void CountPointsNearPlane(void *a1@<X0>, float32x4_t **a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = a1;
  v9 = a3;
  v10 = v9;
  if (a2[1] - *a2 == 64)
  {
    v11 = [v9 points];
    v12 = [v10 semanticLabels];
    v48 = a4;
    v13 = [v10 semanticVotes];
    v50 = 0;
    v49 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = **a2;
    v18 = (*a2)[1];
    v19 = vsubq_f32(v18, v17);
    v20 = vmulq_f32(v19, v19);
    *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
    v22 = vrsqrte_f32(v21);
    v23 = vmul_f32(v22, vrsqrts_f32(v21, vmul_f32(v22, v22)));
    v24 = vmulq_n_f32(v19, vmul_f32(v23, vrsqrts_f32(v21, vmul_f32(v23, v23))).f32[0]);
    v25 = (*a2)[3];
    v26 = vsubq_f32(v25, v17);
    v27 = vmulq_f32(v26, v26);
    v20.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v20.u32[0]);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v20.u32[0], vmul_f32(*v27.f32, *v27.f32)));
    v54 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v20.u32[0], vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    v55 = v24;
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vnegq_f32(v24)), v54, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
    v51 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
    v29 = vsubq_f32(v17, v18);
    v30 = vmulq_f32(v29, v29);
    v31 = vsubq_f32(v17, v25);
    v32 = vmulq_f32(v31, v31);
    v33 = vadd_f32(vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v30.f32), vzip2_s32(*v32.i8, *v30.f32)))), 0x3F0000003F000000), vdup_lane_s32(*&a5, 0));
    v30.i64[0] = 0x3F0000003F000000;
    v30.i64[1] = 0x3F0000003F000000;
    v53 = vmulq_f32(vaddq_f32(v17, (*a2)[2]), v30);
    while (1)
    {
      if (v16 >= [v10 count])
      {
        *v48 = v50;
        v48[1] = v49;
        v48[2] = v14;
        v48[3] = v15;
        v48[4] = HIDWORD(v50);
        goto LABEL_34;
      }

      v34 = vsubq_f32(*v11, v53);
      v35 = vmulq_f32(v55, v34);
      v36 = vmulq_f32(v54, v34);
      v37 = vmvn_s8(vcge_f32(v33, vabs_f32(vadd_f32(*&vzip2q_s32(v36, v35), vadd_f32(vzip1_s32(*v36.i8, *v35.i8), vzip2_s32(*v36.i8, *v35.i8))))));
      if ((v37.i8[4] & 1) == 0 && (v37.i8[0] & 1) == 0)
      {
        v38 = vmulq_f32(v51, v34);
        v39 = v38.f32[2] + vaddv_f32(*v38.f32);
        if (fabsf(v39) <= *&a5)
        {
          break;
        }
      }

LABEL_30:
      ++v16;
      ++v11;
      ++v12;
    }

    v40 = *(v13 + 8 * v16);
    v41 = vmax_u16(v40.u32[0], vzip2_s32(v40, 0)).u32[0];
    if (HIWORD(v41) > v41)
    {
      LOWORD(v41) = HIWORD(v41);
    }

    if (v40.u16[0] == v41)
    {
      v42 = 0;
    }

    else if (v40.u16[1] == v41)
    {
      v42 = 1;
    }

    else if (v40.u16[2] == v41)
    {
      v42 = 2;
    }

    else
    {
      if (v40.u16[3] != v41)
      {
        v43 = *v12;
        goto LABEL_18;
      }

      v42 = 3;
    }

    v40.i32[0] = *v12;
    v56 = vzip1_s8(v40, v40);
    v43 = *(&v56 | (2 * v42));
LABEL_18:
    v57 = v43;
    v44 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(kSemanticsODLabelMap, &v57);
    if (!v44)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v45 = v44[3];
    if (v39 >= 0.0)
    {
      if ([v8 isEqualToString:v45])
      {
        LODWORD(v50) = v50 + 1;
        *([v10 colors] + 16 * v16) = xmmword_25D278070;
      }

      ++v14;
    }

    else
    {
      if ([v8 isEqualToString:v45])
      {
        ++v49;
        *([v10 colors] + 16 * v16) = xmmword_25D277BA0;
      }

      else
      {
        v46.i32[0] = *v12;
        v47 = HIDWORD(v50);
        if ((vmovl_u8(v46).u8[0] - 1) < 3u)
        {
          v47 = HIDWORD(v50) + 1;
        }

        HIDWORD(v50) = v47;
      }

      ++v15;
    }

    goto LABEL_30;
  }

  *a4 = -1;
  *(a4 + 8) = -1;
  *(a4 + 16) = -1;
LABEL_34:
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D208338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int> const*,std::vector<int> const*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
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

void _GLOBAL__sub_I_OUObjectCompleteness_mm()
{
  v93 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v27 = 3212836864;
  RW_VW = xmmword_25D277BA0;
  unk_28155B1C0 = xmmword_25D277BD0;
  *(&v28 + 1) = 0x3F80000000000000;
  xmmword_28155B1D0 = xmmword_25D277BB0;
  unk_28155B1E0 = xmmword_25D277B90;
  *VW_RW = __invert_f4(*_PromotedConst_0);
  RC_VC = xmmword_25D277BA0;
  *algn_28155AC70 = xmmword_25D277BE0;
  xmmword_28155AC80 = xmmword_25D277BD0;
  unk_28155AC90 = xmmword_25D277B90;
  *VC_RC = __invert_f4(*_PromotedConst_26);
  ARKit_VW_RW = xmmword_25D277BE0;
  *algn_28155B090 = xmmword_25D277BC0;
  xmmword_28155B0A0 = xmmword_25D277BF0;
  unk_28155B0B0 = xmmword_25D277B90;
  LODWORD(v29) = 0;
  *(&v29 + 1) = @"Unknown";
  LODWORD(v30) = 1;
  *(&v30 + 1) = *(&v29 + 1);
  LODWORD(v31) = 2;
  *(&v31 + 1) = *(&v30 + 1);
  LODWORD(v32) = 3;
  *(&v32 + 1) = *(&v31 + 1);
  LODWORD(v33) = 4;
  *(&v33 + 1) = *(&v32 + 1);
  LODWORD(v34) = 5;
  *(&v34 + 1) = *(&v33 + 1);
  LODWORD(v35) = 6;
  *&v28 = @"Door";
  *(&v35 + 1) = v28;
  LODWORD(v36) = 7;
  v26 = @"Window";
  *(&v36 + 1) = v26;
  LODWORD(v37) = 8;
  *(&v37 + 1) = *(&v34 + 1);
  LODWORD(v38) = 9;
  v24 = @"Fireplace";
  *(&v38 + 1) = v24;
  LODWORD(v39) = 10;
  *(&v39 + 1) = *(&v37 + 1);
  LODWORD(v40) = 11;
  *(&v40 + 1) = *(&v39 + 1);
  LODWORD(v41) = 12;
  v25 = @"Stairs";
  *(&v41 + 1) = v25;
  LODWORD(v42) = 13;
  v20 = @"Bed";
  *(&v42 + 1) = v20;
  LODWORD(v43) = 14;
  v44 = @"Cabinet";
  LODWORD(v45) = 15;
  v23 = @"Chair";
  v46 = v23;
  LODWORD(v47) = 16;
  v48 = v44;
  LODWORD(v49) = 17;
  v50 = v48;
  v51 = 18;
  v22 = @"Sofa";
  v52 = v22;
  v53 = 19;
  v21 = @"Table";
  v54 = v21;
  v55 = 20;
  v19 = @"Toilet";
  v56 = v19;
  v57 = 21;
  v0 = @"Sink";
  v58 = v0;
  v59 = 22;
  v18 = @"Bathtub";
  v60 = v18;
  v61 = 23;
  v62 = *(&v40 + 1);
  v63 = 24;
  v1 = @"Refrigerator";
  v64 = v1;
  v65 = 25;
  v2 = @"Stove";
  v66 = v2;
  v67 = 26;
  v3 = @"Washer";
  v68 = v3;
  v69 = 27;
  v4 = @"Oven";
  v70 = v4;
  v71 = 28;
  v5 = @"Dishwasher";
  v72 = v5;
  v73 = 29;
  v74 = v62;
  v75 = 30;
  v6 = v50;
  v76 = v6;
  v77 = 31;
  v78 = v74;
  v79 = 32;
  v7 = @"Screen";
  v80 = v7;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(kSemanticsODLabelMap, &v29, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], kSemanticsODLabelMap, &dword_25D1DB000);
  v39 = xmmword_25D2781D0;
  v40 = unk_25D2781E0;
  v41 = xmmword_25D2781F0;
  v42 = unk_25D278200;
  v35 = xmmword_25D278190;
  v36 = unk_25D2781A0;
  v37 = xmmword_25D2781B0;
  v38 = unk_25D2781C0;
  v31 = xmmword_25D278150;
  v32 = unk_25D278160;
  v33 = xmmword_25D278170;
  v34 = unk_25D278180;
  v29 = xmmword_25D278130;
  v30 = unk_25D278140;
  v43 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v29, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v29) = 0;
  *(&v29 + 1) = v6;
  LODWORD(v30) = 1;
  *(&v30 + 1) = v1;
  LODWORD(v31) = 2;
  *(&v31 + 1) = @"Shelf";
  LODWORD(v32) = 3;
  *(&v32 + 1) = v2;
  LODWORD(v33) = 4;
  *(&v33 + 1) = v20;
  LODWORD(v34) = 5;
  *(&v34 + 1) = v0;
  LODWORD(v35) = 6;
  *(&v35 + 1) = v3;
  LODWORD(v36) = 7;
  *(&v36 + 1) = v19;
  LODWORD(v37) = 8;
  *(&v37 + 1) = v18;
  LODWORD(v38) = 9;
  *(&v38 + 1) = v4;
  LODWORD(v39) = 10;
  *(&v39 + 1) = v5;
  LODWORD(v40) = 11;
  *(&v40 + 1) = v24;
  LODWORD(v41) = 12;
  *(&v41 + 1) = @"Stool";
  LODWORD(v42) = 13;
  *(&v42 + 1) = v23;
  LODWORD(v43) = 14;
  v44 = v21;
  LODWORD(v45) = 15;
  v46 = v7;
  LODWORD(v47) = 16;
  v48 = v22;
  LODWORD(v49) = 17;
  v50 = v25;
  v51 = 18;
  v52 = v26;
  v53 = 19;
  v54 = v28;
  v55 = 20;
  v56 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v29, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  v28 = xmmword_25D278080;
  v86 = xmmword_25D278080;
  *&v30 = 0;
  v29 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v29, &v86, &v87, 4uLL);
  v85 = xmmword_25D278090;
  v31 = 0uLL;
  *(&v30 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v30 + 8, &v85, &v86, 4uLL);
  v84 = xmmword_25D2780A0;
  *&v33 = 0;
  v32 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v32, &v84, &v85, 4uLL);
  v83 = xmmword_25D2780B0;
  v34 = 0uLL;
  *(&v33 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v33 + 8, &v83, &v84, 4uLL);
  v82 = xmmword_25D2780C0;
  *&v36 = 0;
  v35 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v35, &v82, &v83, 4uLL);
  v81 = xmmword_25D2780D0;
  v37 = 0uLL;
  *(&v36 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v36 + 8, &v81, &v82, 4uLL);
  kFaceCornerIndicesMap = 0;
  unk_28155B000 = 0;
  qword_28155B008 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&kFaceCornerIndicesMap, &v29, &v38, 6uLL);
  for (k = 0; k != -144; k -= 24)
  {
    v11 = *(&v36 + k + 8);
    if (v11)
    {
      *(&v37 + k) = v11;
      operator delete(v11);
    }
  }

  __cxa_atexit(std::vector<std::vector<int>>::~vector[abi:ne200100], &kFaceCornerIndicesMap, &dword_25D1DB000);
  v86 = v28;
  *&v30 = 0;
  v29 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v29, &v86, &v87, 4uLL);
  v85 = xmmword_25D2780E0;
  v31 = 0uLL;
  *(&v30 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v30 + 8, &v85, &v86, 4uLL);
  v84 = xmmword_25D2780F0;
  *&v33 = 0;
  v32 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v32, &v84, &v85, 4uLL);
  v83 = xmmword_25D278100;
  v34 = 0uLL;
  *(&v33 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v33 + 8, &v83, &v84, 4uLL);
  v82 = xmmword_25D278110;
  *&v36 = 0;
  v35 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v35, &v82, &v83, 4uLL);
  v81 = xmmword_25D278120;
  v37 = 0uLL;
  *(&v36 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v36 + 8, &v81, &v82, 4uLL);
  kFaceEdgeIndicesMap = 0;
  *algn_28155B018 = 0;
  qword_28155B020 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&kFaceEdgeIndicesMap, &v29, &v38, 6uLL);
  for (m = 0; m != -144; m -= 24)
  {
    v13 = *(&v36 + m + 8);
    if (v13)
    {
      *(&v37 + m) = v13;
      operator delete(v13);
    }
  }

  __cxa_atexit(std::vector<std::vector<int>>::~vector[abi:ne200100], &kFaceEdgeIndicesMap, &dword_25D1DB000);
  *&v86 = 0x100000000;
  *&v30 = 0;
  v29 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v29, &v86, &v86 + 8, 2uLL);
  *&v85 = 0x200000000;
  v31 = 0uLL;
  *(&v30 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v30 + 8, &v85, &v85 + 8, 2uLL);
  *&v84 = 0x300000000;
  *&v33 = 0;
  v32 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v32, &v84, &v84 + 8, 2uLL);
  *&v83 = 0x400000000;
  v34 = 0uLL;
  *(&v33 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v33 + 8, &v83, &v83 + 8, 2uLL);
  *&v82 = 0x100000004;
  *&v36 = 0;
  v35 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v35, &v82, &v82 + 8, 2uLL);
  *&v81 = 0x200000001;
  v37 = 0uLL;
  *(&v36 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v36 + 8, &v81, &v81 + 8, 2uLL);
  v92 = 0x300000002;
  *&v39 = 0;
  v38 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v38, &v92, &v93, 2uLL);
  v91 = 0x400000003;
  v40 = 0uLL;
  *(&v39 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v39 + 8, &v91, &v92, 2uLL);
  v90 = 0x500000001;
  *&v42 = 0;
  v41 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v41, &v90, &v91, 2uLL);
  v89 = 0x500000002;
  v43 = 0;
  v44 = 0;
  *(&v42 + 1) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v42 + 8, &v89, &v90, 2uLL);
  v88 = 0x500000003;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v45, &v88, &v89, 2uLL);
  v87 = 0x500000004;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v48, &v87, &v88, 2uLL);
  kEdgeFaceIndicesMap = 0;
  unk_28155B030 = 0;
  qword_28155B038 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&kEdgeFaceIndicesMap, &v29, &v51, 0xCuLL);
  v14 = 288;
  do
  {
    v15 = *(&v27 + v14);
    if (v15)
    {
      *(&v28 + v14) = v15;
      operator delete(v15);
    }

    v14 -= 24;
  }

  while (v14);
  __cxa_atexit(std::vector<std::vector<int>>::~vector[abi:ne200100], &kEdgeFaceIndicesMap, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_25D209280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v27 = (v25 + 272);
  v28 = -288;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 3;
    v28 += 24;
    if (!v28)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t OUEspressoInference::OUEspressoInference(uint64_t a1, void *a2, __int128 *a3, int a4, int a5)
{
  v9 = a2;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *a1 = &unk_286EBBDC0;
  v10 = v9;
  *(a1 + 88) = v10;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 112) = *(a3 + 2);
    *(a1 + 96) = v11;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__init_with_size[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>(a1 + 120, *(a3 + 3), *(a3 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 4) - *(a3 + 3)) >> 4));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__init_with_size[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>(a1 + 144, *(a3 + 6), *(a3 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 7) - *(a3 + 6)) >> 4));
  *(a1 + 208) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0;
  if (!*(a1 + 88))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": invalid bundle.", "OUEspressoInference", &v14.__r_.__value_.__l.__data_);
    std::logic_error::logic_error(exception, &v14);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  OUEspressoInference::LoadModel(a1);
  OUEspressoInference::TryBuildEspressoPlan(a1);

  return a1;
}

void sub_25D209650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  OUDnnInferenceInterface::~OUDnnInferenceInterface(v15);

  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void OUEspressoInference::LoadModel(OUEspressoInference *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (this + 96);
  if (*(this + 119) < 0)
  {
    v2 = *v2;
  }

  v3 = *(this + 11);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v5 = [v3 pathForResource:v4 ofType:0];

  v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(v15.__r_.__value_.__l.__data_) = 138412290;
    *(v15.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOD] Loading network path: %@", &v15, 0xCu);
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": unable to locate the network files.", "OUEspressoInference", &v15.__r_.__value_.__l.__data_);
    std::logic_error::logic_error(exception, &v15);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v7 = *(this + 50);
  *(this + 21) = espresso_create_context();
  v8 = *(this + 50);
  if (v8 && v8 != 10007)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(v15.__r_.__value_.__l.__data_) = 136315394;
      *(v15.__r_.__value_.__r.__words + 4) = "OUEspressoInference";
      WORD2(v15.__r_.__value_.__r.__words[1]) = 1024;
      *(&v15.__r_.__value_.__r.__words[1] + 6) = v8;
      _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[%s] Untested engine type: %d.", &v15, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v9, &unk_25D2878C2);
    v9->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v9, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  *(this + 22) = espresso_create_plan();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(v15.__r_.__value_.__l.__data_) = 136315138;
    *(v15.__r_.__value_.__r.__words + 4) = "OUEspressoInference";
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[%s] Adding network to plan. If the program crashes at this line, it is likely b/c the network requires too much memory.", &v15, 0xCu);
  }

  v10 = *(this + 22);
  v11 = v5;
  [v5 UTF8String];
  if (espresso_plan_add_network())
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": failed to add network.", "OUEspressoInference", &v15.__r_.__value_.__l.__data_);
    MEMORY[0x25F894AE0](v14, &v15);
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  OUEspressoInference::InitializeIOBuffers(this, this + 15, 1);
  OUEspressoInference::InitializeIOBuffers(this, this + 18, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOD] Done loading model.", &v15, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_25D209B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v15);

  _Unwind_Resume(a1);
}

void OUEspressoInference::TryBuildEspressoPlan(OUEspressoInference *this)
{
  v2 = *(this + 22);
  if (espresso_plan_get_phase() != 1)
  {
    v3 = *(this + 22);
    if (espresso_plan_build())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "[3DOD] failed to build espresso plan.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v5 = this;
    OUEspressoInference::TryBuildEspressoPlan(void)::$_0::operator()(&v5, this + 208);
    OUEspressoInference::TryBuildEspressoPlan(void)::$_0::operator()(&v5, this + 248);
  }
}

void OUEspressoInference::~OUEspressoInference(OUEspressoInference *this)
{
  *this = &unk_286EBBDC0;
  if (*(this + 22))
  {
    espresso_plan_destroy();
  }

  if (*(this + 21))
  {
    espresso_context_destroy();
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 248);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 208);
  v2 = (this + 144);
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 120);
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  OUDnnInferenceInterface::~OUDnnInferenceInterface(this);
}

{
  OUEspressoInference::~OUEspressoInference(this);

  JUMPOUT(0x25F894DE0);
}

uint64_t OUEspressoInference::Infer(OUEspressoInference *this)
{
  OUEspressoInference::TryReshapeNetwork(this);
  OUEspressoInference::TryBuildEspressoPlan(this);
  v2 = this + 224;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (v2[39] < 0)
    {
      v3 = *(v2 + 2);
    }

    v4 = *(this + 23);
    v5 = *(this + 24);
    if (espresso_network_bind_buffer())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v7 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("] failed to bind input buffer.", &v18, &v19);
      MEMORY[0x25F894AE0](exception, &v19, v7);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v8 = this + 264;
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (v8[39] < 0)
    {
      v9 = *(v8 + 2);
    }

    v10 = *(this + 23);
    v11 = *(this + 24);
    if (espresso_network_bind_buffer())
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v13 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("] failed to bind output buffer.", &v18, &v19);
      MEMORY[0x25F894AE0](v12, &v19, v13);
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v14 = *(this + 22);
  result = espresso_plan_execute_sync();
  if (result)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v17 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("] failed to run inference.", &v18, &v19);
    MEMORY[0x25F894AE0](v16, &v19, v17);
    __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_25D209F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

void OUEspressoInference::TryReshapeNetwork(OUEspressoInference *this)
{
  if (*(this + 288) != 1)
  {
    return;
  }

  v2 = *(this + 4);
  v25[0] = 0;
  std::vector<char const*>::vector[abi:ne200100](v26, v2);
  std::vector<int>::vector[abi:ne200100](&__p, v2);
  std::vector<std::vector<int>>::vector[abi:ne200100](v25, 5uLL);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  std::vector<int>::vector[abi:ne200100](&__p, v2);
  v3 = *(this + 3);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v3 + 2;
      if (*(v3 + 39) < 0)
      {
        v5 = *v5;
      }

      *(v26[0] + v4) = v5;
      v7 = v3[12];
      v6 = v3[13];
      if (v6 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = v25[0];
        do
        {
          v11 = *(v6 - 4);
          v6 -= 4;
          v10 = v11;
          v12 = *v9;
          v9 += 3;
          *(v12 + 4 * v4) = v10;
          ++v8;
        }

        while (v6 != v7);
      }

      *(__p + v4++) = v8;
      v3 = *v3;
    }

    while (v3);
  }

  v13 = *(this + 22);
  if (espresso_plan_get_phase())
  {
    v14 = *(this + 22);
    if (espresso_plan_build_clean())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x25F894AD0](exception, "[3DOD] failed to clean espresso plan.");
LABEL_24:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v15 = *(this + 23);
  v16 = *(this + 24);
  v17 = *v25[0];
  v18 = *(v25[0] + 24);
  v19 = *(v25[0] + 48);
  v20 = *(v25[0] + 72);
  v22 = *(v25[0] + 96);
  if (espresso_network_change_input_blob_shapes_seq_rank())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](exception, "[3DOD] failed to reshape network.");
    goto LABEL_24;
  }

  *(this + 288) = 0;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  __p = v25;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

void sub_25D20A1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, char *a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void OUEspressoInference::InitializeIOBuffers(uint64_t a1, std::string::size_type *a2, int a3)
{
  if (a3)
  {
    v3 = MEMORY[0x277D079A8];
  }

  else
  {
    v3 = MEMORY[0x277D079B0];
  }

  if (a3)
  {
    v4 = 8;
  }

  else
  {
    v4 = 48;
  }

  if (a3)
  {
    v5 = 208;
  }

  else
  {
    v5 = 248;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v10 = v6;
      if (*(v6 + 23) < 0)
      {
        v10 = *v6;
      }

      if (v3(*(a1 + 184), *(a1 + 192), v10))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": fail to declare network IO.", "OUEspressoInference", &v35);
        MEMORY[0x25F894AE0](exception, &v35);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v34 = 0;
      v31 = 0;
      std::vector<unsigned long>::vector[abi:ne200100](&v35, 0xAuLL);
      if (*(v6 + 23) < 0)
      {
        v11 = *v6;
      }

      v12 = *(a1 + 184);
      v13 = *(a1 + 192);
      espresso_network_query_blob_shape();
      std::vector<unsigned long>::resize(&v35, v34);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v31, v35, v36, (v36 - v35) >> 3);
      LODWORD(v37) = -1;
      std::vector<int>::vector[abi:ne200100](&__p, v34);
      v14 = *(v6 + 24);
      v15 = *(v6 + 32);
      v16 = (v15 - v14) >> 2;
      if (v16 == v34)
      {
        if (v15 != v14)
        {
          v17 = 0;
          v18 = v31;
          v19 = __p;
          do
          {
            v20 = *(v14 + 4 * v17);
            if (v20 >= 1)
            {
              v18[v17] = v20;
              v19[v17] = v20;
              *(a1 + 288) = 1;
              v16 = v34;
            }

            ++v17;
          }

          while (v17 < v16);
        }
      }

      else if (v15 != v14)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v28, "[3DOD] capacity and shape must have the same size.");
        goto LABEL_49;
      }

      v21 = *(a1 + 204);
      if (v21 <= 131079)
      {
        if (v21 == 65552)
        {
          v22 = 1278226536;
        }

        else
        {
          if (v21 != 65568)
          {
LABEL_48:
            v28 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v28, "Invalid espresso storage types.");
LABEL_49:
            v28->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v28, off_2799C3FC0, MEMORY[0x277D82610]);
          }

          v22 = 1278226534;
        }
      }

      else
      {
        v22 = 1278226488;
        if (v21 != 131080)
        {
          if (v21 == 131104)
          {
            v22 = 1111970369;
          }

          else if (v21 != 262152)
          {
            goto LABEL_48;
          }
        }
      }

      OUDnnInferenceInterface::CreateIOBuffer(a1, v6, &v31, v22, a3);
      v23 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + v4), v6);
      v24 = v23;
      if (!v23)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v25 = v23 + 12;
      if (v24 + 12 != &__p)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v25, __p, v30, (v30 - __p) >> 2);
      }

      v37 = v6;
      v26 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + v5), v6);
      v26[5] = v24[7];
      *(v26 + 50) = *(a1 + 204);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      v6 += 48;
    }

    while (v6 != v7);
  }
}

void sub_25D20A644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v21);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void OUEspressoInference::SetInputBufferShape(uint64_t a1, const void **a2, char **a3)
{
  if (a3[1] == *a3)
  {
    v16 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18[0] = 0;
      _os_log_impl(&dword_25D1DB000, v16, OS_LOG_TYPE_INFO, "[3DOD] empty shape, skipping.", v18, 2u);
    }
  }

  else
  {
    v5 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((a1 + 8), a2);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v6 = *a3;
    v7 = a3[1];
    v8 = (v7 - *a3) >> 2;
    v9 = v5[9];
    if (v8 != (v5[10] - v9) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] shape must has the same size as the blob shape's size.");
      goto LABEL_18;
    }

    if (v7 != v6)
    {
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v7 - *a3) >> 2;
      }

      v11 = *a3;
      while (1)
      {
        v13 = *v11;
        v11 += 4;
        v12 = v13;
        v14 = *v9;
        v9 += 2;
        if (v12 > v14)
        {
          break;
        }

        if (!--v10)
        {
          goto LABEL_11;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] shape exceeds capacity.");
LABEL_18:
      __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
    }

LABEL_11:
    v15 = (v5 + 12);
    if (v15 != a3)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v15, v6, v7, v8);
    }

    *(a1 + 288) = 1;
  }
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

void OUEspressoInference::TryBuildEspressoPlan(void)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *a1;
    do
    {
      v9 = 0;
      std::vector<unsigned long>::vector[abi:ne200100](__p, 0xAuLL);
      if (*(v2 + 39) < 0)
      {
        v4 = v2[2];
      }

      v5 = *(v3 + 184);
      v6 = *(v3 + 192);
      espresso_network_query_blob_shape();
      std::vector<unsigned long>::resize(__p, v9);
      if (espresso_buffer_pack_tensor_shape())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25F894AD0](exception, "[3DOD] fail to pack buffer.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_25D20A968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__init_with_size[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D20AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>,OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*,OUEspressoInference::ModelInfo::BlobInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      v12 = a4 + v7 + 24;
      *(v12 + 16) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *(a2 + v7 + 24), *(a2 + v7 + 32), (*(a2 + v7 + 32) - *(a2 + v7 + 24)) >> 2);
      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_25D20AB70(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void OUEspressoInference::ModelInfo::~ModelInfo(void **this)
{
  v2 = this + 6;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_25D20AE38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D20AFE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D20B0BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::vector<int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25D20B46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25D20B560(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,__CVBuffer *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t OUEspressoV2Inference::OUEspressoV2Inference(uint64_t a1, void *a2, __int128 *a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *a1 = &unk_286EBBE10;
  v8 = v7;
  v9 = v8;
  *(a1 + 88) = v8;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a3, *(a3 + 1));
    v11 = *(a1 + 88);
  }

  else
  {
    v10 = *a3;
    *(a1 + 112) = *(a3 + 2);
    *(a1 + 96) = v10;
    v11 = v8;
  }

  *(a1 + 144) = 0u;
  *(a1 + 136) = a4;
  *(a1 + 160) = 0u;
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("] invalid bundle.", &v19, &buf);
    std::logic_error::logic_error(exception, &buf);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (a4)
  {
    if (e5rt_e5_compiler_create())
    {
      last_error_message = e5rt_get_last_error_message();
      v13 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = last_error_message;
        _os_log_impl(&dword_25D1DB000, v13, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }

    if (e5rt_e5_compiler_options_create())
    {
      v14 = e5rt_get_last_error_message();
      v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v14;
        _os_log_impl(&dword_25D1DB000, v15, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }
  }

  OUEspressoV2Inference::LoadModel(a1);

  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25D20B7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      if (*(v21 + 119) < 0)
      {
        operator delete(*(v21 + 96));
      }

      OUDnnInferenceInterface::~OUDnnInferenceInterface(v21);
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

void OUEspressoV2Inference::LoadModel(OUEspressoV2Inference *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (this + 96);
  v3 = this + 96;
  if (*(this + 119) < 0)
  {
    v3 = *v2;
  }

  v4 = *(this + 11);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v6 = [v4 pathForResource:v5 ofType:0];

  v7 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "OUEspressoV2Inference";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
    _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[%s] Loading network path: %@", &buf, 0x16u);
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": unable to locate the network files.", "OUEspressoV2Inference", &buf.__r_.__value_.__l.__data_);
    std::logic_error::logic_error(exception, &buf);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  if (*(this + 136) == 1)
  {
    v8 = *(this + 18);
    v9 = v6;
    [v6 UTF8String];
    v10 = *(this + 19);
    if (e5rt_e5_compiler_compile())
    {
      last_error_message = e5rt_get_last_error_message();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = last_error_message;
        _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }

    v12 = *(this + 20);
    if (e5rt_program_library_get_num_functions())
    {
      v13 = e5rt_get_last_error_message();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v13;
        _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      OUEspressoV2Inference::LoadModel(0, v7);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F894AD0](v23, &unk_25D2878C2);
    __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(this + 119) < 0)
  {
    v14 = *v2;
  }

  v15 = v6;
  [v6 UTF8String];
  if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
  {
    v16 = e5rt_get_last_error_message();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v16;
      _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
    }
  }

  OUEspressoV2Inference::InitializeIOBuffers(this, 1);
  OUEspressoV2Inference::InitializeIOBuffers(this, 0);
  if (e5rt_execution_stream_create())
  {
    v17 = e5rt_get_last_error_message();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v17;
      _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
    }
  }

  v18 = *(this + 15);
  v19 = *(this + 16);
  if (e5rt_execution_stream_encode_operation())
  {
    v20 = e5rt_get_last_error_message();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v20;
      _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "OUEspressoV2Inference";
    _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[%s] Done loading model.", &buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_25D20BF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

void OUEspressoV2Inference::~OUEspressoV2Inference(OUEspressoV2Inference *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = &unk_286EBBE10;
  if (e5rt_execution_stream_operation_release())
  {
    last_error_message = e5rt_get_last_error_message();
    v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = last_error_message;
      _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &v7, 0xCu);
    }
  }

  if (e5rt_execution_stream_release())
  {
    v4 = e5rt_get_last_error_message();
    v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = v4;
      _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &v7, 0xCu);
    }
  }

  if (*(this + 21))
  {
    e5rt_program_function_release();
  }

  if (*(this + 20))
  {
    e5rt_program_library_release();
  }

  if (*(this + 19))
  {
    e5rt_e5_compiler_options_release();
  }

  if (*(this + 18))
  {
    e5rt_e5_compiler_release();
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  OUDnnInferenceInterface::~OUDnnInferenceInterface(this);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUEspressoV2Inference::~OUEspressoV2Inference(this);

  JUMPOUT(0x25F894DE0);
}

void sub_25D20C184(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void OUEspressoV2Inference::Infer(OUEspressoV2Inference *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(this + 15);
  if (e5rt_execution_stream_execute_sync())
  {
    last_error_message = e5rt_get_last_error_message();
    v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = last_error_message;
      _os_log_impl(&dword_25D1DB000, v3, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void OUEspressoV2Inference::InitializeIOBuffers(OUEspressoV2Inference *this, int a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D078A0];
  if (a2)
  {
    v4 = MEMORY[0x277D07898];
  }

  v43 = v4;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 48;
  }

  if (a2)
  {
    v6 = MEMORY[0x277D07878];
  }

  else
  {
    v6 = MEMORY[0x277D07880];
  }

  if (a2)
  {
    v7 = MEMORY[0x277D07870];
  }

  else
  {
    v7 = MEMORY[0x277D07888];
  }

  v59 = 0;
  v8 = (this + 128);
  v6(*(this + 16), &v59);
  std::vector<char const*>::vector[abi:ne200100](&v57, v59);
  v7(*v8, v59, v57);
  v9 = v57;
  v10 = v58;
  if (v57 != v58)
  {
    do
    {
      v11 = *v9;
      v55 = 0;
      v56 = 0;
      if (v43(*(this + 16), v11, &v56))
      {
        last_error_message = e5rt_get_last_error_message();
        v13 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = last_error_message;
          _os_log_impl(&dword_25D1DB000, v13, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_io_port_retain_tensor_desc())
      {
        v14 = e5rt_get_last_error_message();
        v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v14;
          _os_log_impl(&dword_25D1DB000, v15, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      v53 = 0;
      v54 = 0;
      if (e5rt_tensor_desc_get_shape())
      {
        v16 = e5rt_get_last_error_message();
        v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v16;
          _os_log_impl(&dword_25D1DB000, v17, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      v51 = 0;
      v52 = 0;
      if (e5rt_tensor_desc_get_strides())
      {
        v18 = e5rt_get_last_error_message();
        v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v18;
          _os_log_impl(&dword_25D1DB000, v19, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
      std::vector<unsigned long>::__insert_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v48, 0, v53, &v53[8 * v54], v54);
      *(v49 - 1) = *(v51 + 8 * v52 - 16) / *(v51 + 8 * v52 - 8);
      v47 = 0;
      v46 = 0;
      if (e5rt_tensor_desc_retain_dtype())
      {
        v20 = e5rt_get_last_error_message();
        v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v20;
          _os_log_impl(&dword_25D1DB000, v21, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_tensor_desc_dtype_get_component_pack())
      {
        v22 = e5rt_get_last_error_message();
        v23 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v22;
          _os_log_impl(&dword_25D1DB000, v23, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v11);
      v24 = 1278226488;
      if (v46)
      {
        if (v46 == 6)
        {
          v24 = 1278226534;
        }

        else
        {
          if (v46 != 3)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::operator+<char>();
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("] unsupported component types.", &v60, &buf);
            std::logic_error::logic_error(exception, &buf);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
          }

          v24 = 1278226536;
        }
      }

      OUDnnInferenceInterface::CreateIOBuffer(this, __p, &v48, v24, a2);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      if (e5rt_tensor_desc_dtype_release())
      {
        v25 = e5rt_get_last_error_message();
        v26 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v25;
          _os_log_impl(&dword_25D1DB000, v26, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&buf, v11);
      v27 = std::__hash_table<std::__hash_value_type<std::string,__CVBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,__CVBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,__CVBuffer *>>>::find<std::string>((this + v5), &buf.__r_.__value_.__l.__data_);
      if (!v27)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      LODWORD(v60.__r_.__value_.__l.__data_) = -1;
      std::vector<int>::vector[abi:ne200100](&buf, v54);
      v28 = v27[12];
      if (v28)
      {
        v27[13] = v28;
        operator delete(v28);
        v27[12] = 0;
        v27[13] = 0;
        v27[14] = 0;
      }

      *(v27 + 4) = buf;
      if (!CVPixelBufferGetIOSurface(v27[5]))
      {
        v40 = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v41 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("] failed to get io surface", &v60, &buf);
        MEMORY[0x25F894AE0](v40, &buf, v41);
        __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v60.__r_.__value_.__r.__words[0] = 0;
      if (e5rt_buffer_object_create_from_iosurface())
      {
        v29 = e5rt_get_last_error_message();
        v30 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v29;
          _os_log_impl(&dword_25D1DB000, v30, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_io_port_bind_buffer_object())
      {
        v31 = e5rt_get_last_error_message();
        v32 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v31;
          _os_log_impl(&dword_25D1DB000, v32, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_buffer_object_release())
      {
        v33 = e5rt_get_last_error_message();
        v34 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v33;
          _os_log_impl(&dword_25D1DB000, v34, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_tensor_desc_release())
      {
        v35 = e5rt_get_last_error_message();
        v36 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v35;
          _os_log_impl(&dword_25D1DB000, v36, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (e5rt_io_port_release())
      {
        v37 = e5rt_get_last_error_message();
        v38 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v37;
          _os_log_impl(&dword_25D1DB000, v38, OS_LOG_TYPE_INFO, "[3DOD] E5RT operation failed with message = %s", &buf, 0xCu);
        }
      }

      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }

      ++v9;
    }

    while (v9 != v10);
    v9 = v57;
  }

  if (v9)
  {
    v58 = v9;
    operator delete(v9);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_25D20CAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OUEspressoV2Inference::SetInputBufferShape()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v1 = std::string::append(&v3, "] dynamic inference not implemented.", 0x24uLL);
  v2 = *&v1->__r_.__value_.__l.__data_;
  v4.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v4.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  std::logic_error::logic_error(exception, &v4);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
}

void sub_25D20CCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_25D20CDA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned long>::__insert_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t ou3dod::IsObjectBelongToType(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v4 = *a2 + 8;
  do
  {
    result = [*(a1 + 128) isEqualToString:*(v4 - 8)];
    if (result)
    {
      break;
    }

    v6 = v4 == v2;
    v4 += 8;
  }

  while (!v6);
  return result;
}

uint64_t ou3dod::ShouldForceExtendCorner(id *this, const OUBox3d *a2, const OUBox3d *a3)
{
  v4 = [this[18] UUIDString];
  v14 = [v4 UTF8String];
  v5 = [a2[1].var5.var2 UUIDString];
  v13 = [v5 UTF8String];
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(v15, &v14, &v13);

  v7 = ou3dod::HistoryMergeInfo::Get(v6);
  v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v7 + 5, v15);
  if (v8 || (v9 = v16, v10 = *v15, *v15 = *__p, v16 = v18, *__p = v10, v18 = v9, (v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v7 + 5, v15)) != 0))
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v11 & 1;
}

void sub_25D20D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ou3dod::SetForceExtendCornerFlag(id *this, const OUBox3d *a2, const OUBox3d *a3)
{
  v3 = a3;
  v6 = ou3dod::HistoryMergeInfo::Get(this);
  v7 = [a2[1].var5.var2 UUIDString];
  v17[0] = [v7 UTF8String];
  v8 = [this[18] UUIDString];
  v12 = [v8 UTF8String];
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(v13, v17, &v12);

  v9 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v6 + 5, v13);
  if (v9)
  {
    std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::remove(v6 + 5, v9, v17);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](v17);
  }

  v10 = v14;
  v11 = *v13;
  *v13 = *__p;
  v14 = v16;
  *__p = v11;
  v16 = v10;
  v17[0] = v13;
  *(std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,std::string> const&>,std::tuple<>>(v6 + 5, v13) + 64) = v3;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

uint64_t ou3dod::ShouldForceMerge(ou3dod *this, float32x4_t *a2, const OUBox3d *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = ou3dod::HistoryMergeInfo::Get(this);
  v6 = [*(this + 18) UUIDString];
  v27.i64[0] = [v6 UTF8String];
  v7 = [a2[9].i64[0] UUIDString];
  v26[0].i64[0] = [v7 UTF8String];
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(&v35, &v27, v26);

  v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v5 + 5, &v35);
  if (v8 || (v9 = v35, v35 = v37, v10 = v36, v37 = v9, v36 = v38, v38 = v10, (v8 = std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::find<std::pair<std::string,std::string>>(v5 + 5, &v35)) != 0))
  {
    v40 = @"Table";
    *&v28 = 0;
    v27 = 0uLL;
    std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v27, &v40, &v41, 1uLL);
    v12 = v27.i64[1];
    v11 = v27.i64[0];
    v13 = 0.2;
    if (v27.i64[0] != v27.i64[1])
    {
      while (![*(this + 16) isEqualToString:*v11])
      {
        if (++v11 == v12)
        {
          goto LABEL_8;
        }
      }

      v13 = 0.4;
    }

LABEL_8:
    v26[0].i64[0] = &v27;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v26);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    box3dEnlarge(this, 1053609165, v13, 0.0, &v27);
    memset(v26, 0, sizeof(v26));
    box3dEnlarge(a2, 1053609165, v13, 0.0, v26);
    memset(v25, 0, sizeof(v25));
    box3dIou(&v27, v26, 0, v25);
    if (*v25 >= 0.01)
    {
      v14 = vsubq_f32(*this, *(this + 1));
      v15 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v14, v14)));
      v16 = vrsqrte_f32(v15);
      v17 = vmul_f32(v16, vrsqrts_f32(v15.u32[0], vmul_f32(v16, v16)));
      *v14.f32 = vmul_n_f32(*v14.f32, vmul_f32(v17, vrsqrts_f32(v15.u32[0], vmul_f32(v17, v17))).f32[0]);
      v18 = vsubq_f32(*a2, a2[1]);
      v19 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v18, v18)));
      v20 = vrsqrte_f32(v19);
      v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
      if (fabsf(vaddv_f32(vmul_f32(*v14.f32, vmul_n_f32(*v18.f32, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0])))) < 0.173)
      {
        v22 = 1;
        goto LABEL_13;
      }
    }

    std::__hash_table<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::__unordered_map_hasher<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,ou3dod::pair_hash,std::equal_to<std::pair<std::string,std::string>>,true>,std::__unordered_map_equal<std::pair<std::string,std::string>,std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,std::equal_to<std::pair<std::string,std::string>>,ou3dod::pair_hash,true>,std::allocator<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>>>::remove(v5 + 5, v8, v39);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,std::string>,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](v39);
  }

  v22 = 0;
LABEL_13:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

float32x2_t ou3dod::ComputeHeadingDirection(float32x4_t *this, const box3d *a2)
{
  v2 = vsubq_f32(*this, this[1]);
  v3 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v2, v2)));
  v4 = vrsqrte_f32(v3);
  v5 = vmul_f32(v4, vrsqrts_f32(v3.u32[0], vmul_f32(v4, v4)));
  return vmul_n_f32(*v2.f32, vmul_f32(v5, vrsqrts_f32(v3.u32[0], vmul_f32(v5, v5))).f32[0]);
}

float ou3dod::Compute2DOverlapRatio(ou3dod *this, const box3d *a2, const box3d *a3, const box3d *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *this;
  *(&v4 + 1) = *(this + 2);
  v5 = *(this + 2);
  *(&v5 + 1) = *(this + 6);
  v35[0] = v4;
  v35[1] = v5;
  v6 = *a2;
  *(&v6 + 1) = *(a2 + 2);
  v7 = *(a2 + 2);
  *(&v7 + 1) = *(a2 + 6);
  v34[0] = v6;
  v34[1] = v7;
  v8 = *a3;
  *(&v8 + 1) = *(a3 + 2);
  v9 = *(a3 + 2);
  v10 = *(a3 + 3);
  *(&v9 + 1) = *(a3 + 6);
  v33[0] = v8;
  v33[1] = v9;
  OU::Polygon::Polygon(v32, v35, 4);
  OU::Polygon::Polygon(v31, v34, 4);
  OU::Polygon::Polygon(v30, v33, 4);
  OU::clip(v32, v30, v29);
  OU::clip(v31, v30, v28);
  OU::clip(v32, v31, __p);
  if (OU::area(__p, v11) > 0.001)
  {
    OU::clip(v30, __p, &v22);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v22;
    v26 = v23;
    v27 = v24;
  }

  v13 = OU::area(v29, v12);
  v15 = OU::area(v28, v14);
  v17 = OU::area(__p, v16);
  v19 = OU::area(v30, v18);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return ((v13 + v15) - v17) / v19;
}

void sub_25D20D898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a36)
  {
    operator delete(a36);
  }

  v39 = *(v37 - 192);
  if (v39)
  {
    *(v37 - 184) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void ou3dod::extractClassPoints(void *a1@<X0>, float32x4_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a3;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v54 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v8)
    {
      v56 = *v66;
      v59 = v6;
      do
      {
        v9 = 0;
        v58 = v8;
        do
        {
          if (*v66 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v65 + 1) + 8 * v9);
          v11 = [v10 points];
          v12 = [v10 semanticLabels];
          v13 = [v10 semanticVotes];
          v14 = 0;
          v15 = vsubq_f32(*a2, a2[3]);
          v16 = vmulq_f32(v15, v15);
          v16.f32[0] = v16.f32[2] + vaddv_f32(*v16.f32);
          v17 = vrsqrte_f32(v16.u32[0]);
          v18 = vmul_f32(v17, vrsqrts_f32(v16.u32[0], vmul_f32(v17, v17)));
          v63 = vmulq_n_f32(v15, vmul_f32(v18, vrsqrts_f32(v16.u32[0], vmul_f32(v18, v18))).f32[0]);
          v19 = vsubq_f32(*a2, a2[1]);
          v20 = vmulq_f32(v19, v19);
          v20.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
          v21 = vrsqrte_f32(v20.u32[0]);
          v22 = vmul_f32(v21, vrsqrts_f32(v20.u32[0], vmul_f32(v21, v21)));
          LODWORD(v23) = vmul_f32(v22, vrsqrts_f32(v20.u32[0], vmul_f32(v22, v22))).u32[0];
          v24 = vsubq_f32(*a2, a2[4]);
          v25 = vmulq_f32(v24, v24);
          v25.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
          v62 = vmulq_n_f32(v19, v23);
          *v19.f32 = vrsqrte_f32(v25.u32[0]);
          *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v25.u32[0], vmul_f32(*v19.f32, *v19.f32)));
          v26 = vmulq_n_f32(v24, vmul_f32(*v19.f32, vrsqrts_f32(v25.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]);
          v27 = sqrtf(v16.f32[0]) * 0.5;
          v28 = sqrtf(v20.f32[0]) * 0.5;
          v29 = sqrtf(v25.f32[0]) * 0.5;
          v19.i64[0] = 0x3F0000003F000000;
          v19.i64[1] = 0x3F0000003F000000;
          v60 = vmulq_f32(vaddq_f32(*a2, a2[6]), v19);
          v61 = v26;
          while (v14 < [v10 count])
          {
            v64 = *v11;
            v30 = vsubq_f32(*v11, v60);
            v31 = vmulq_f32(v63, v30);
            v32 = vmulq_f32(v62, v30);
            v33 = fabsf(v32.f32[2] + vaddv_f32(*v32.f32));
            v34 = vmulq_f32(v61, v30);
            v35 = fabsf(v34.f32[2] + vaddv_f32(*v34.f32));
            if (fabsf(v31.f32[2] + vaddv_f32(*v31.f32)) <= v27 && v33 <= v28 && v35 <= v29)
            {
              v38 = *(v13 + 8 * v14);
              v39 = vmovl_u16(v38);
              v40 = vaddw_u16(vextq_s8(v39, v39, 8uLL), v38);
              if (v40.i16[0] + v40.i16[2])
              {
                v40.i32[0] = *(v12 + 4 * v14);
                v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:vmovl_u8(*v40.i8).u8[0]];
                v42 = [v6 containsObject:v41];

                if (v42)
                {
                  v44 = *(a4 + 8);
                  v43 = *(a4 + 16);
                  if (v44 >= v43)
                  {
                    v46 = (v44 - *a4) >> 4;
                    if ((v46 + 1) >> 60)
                    {
                      std::vector<float>::__throw_length_error[abi:ne200100]();
                    }

                    v47 = v43 - *a4;
                    v48 = v47 >> 3;
                    if (v47 >> 3 <= (v46 + 1))
                    {
                      v48 = v46 + 1;
                    }

                    if (v47 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v49 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v49 = v48;
                    }

                    if (v49)
                    {
                      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v49);
                    }

                    *(16 * v46) = v64;
                    v45 = 16 * v46 + 16;
                    v50 = *(a4 + 8) - *a4;
                    v51 = (16 * v46 - v50);
                    memcpy(v51, *a4, v50);
                    v52 = *a4;
                    *a4 = v51;
                    *(a4 + 8) = v45;
                    *(a4 + 16) = 0;
                    if (v52)
                    {
                      operator delete(v52);
                    }

                    v6 = v59;
                  }

                  else
                  {
                    *v44 = v64;
                    v45 = &v44[1];
                  }

                  *(a4 + 8) = v45;
                }
              }
            }

            ++v14;
            ++v11;
          }

          ++v9;
        }

        while (v9 != v58);
        v8 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v8);
    }

    v7 = v54;
  }

  v53 = *MEMORY[0x277D85DE8];
}

void sub_25D20DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void ou3dod::PrintBoxCorner(ou3dod *this, const box3d *a2)
{
  v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    ou3dod::PrintBoxCorner(this, v3);
  }
}

double ou3dod::FindIntersect(float32x4_t a1, int32x4_t a2, float32x4_t a3, int32x4_t a4)
{
  a1.i32[2] = 1.0;
  a2.i32[2] = 1.0;
  a3.i32[2] = 1.0;
  a4.i32[2] = 1.0;
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(a1)), a2, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vnegq_f32(a3)), a4, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vnegq_f32(v5)), v7, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  if (fabsf(*&v8.i32[1]) >= 0.000001)
  {
    *&result = vdivq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vdupq_lane_s32(*v8.i8, 1)).u64[0];
  }

  else
  {
    v9.i64[0] = 0x80000000800000;
    v9.i64[1] = 0x80000000800000;
    *&result = vnegq_f32(v9).u64[0];
  }

  return result;
}

float32x4_t *ou3dod::MaybeReorderBackObjectCorner(float32x4_t *result, float32x2_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = vsubq_f32(*result, result[1]);
    v4 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v3, v3)));
    v5 = vrsqrte_f32(v4);
    v6 = vmul_f32(v5, vrsqrts_f32(v4.u32[0], vmul_f32(v5, v5)));
    *v3.f32 = vsub_f32(a2, vmul_n_f32(*v3.f32, vmul_f32(v6, vrsqrts_f32(v4.u32[0], vmul_f32(v6, v6))).f32[0]));
    if (sqrtf(vaddv_f32(vmul_f32(*v3.f32, *v3.f32))) < 0.01)
    {
      break;
    }

    v7 = result;
    for (j = 1; j != 5; ++j)
    {
      *v7 = result[(j & 3) + 4].i64[0];
      v7 += 2;
    }

    v9 = result + 4;
    v10 = 4;
    do
    {
      v9->i64[0] = v9[-4].i64[0];
      ++v9;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t ou3dod::ShiftBoxCorner(uint64_t this, box3d *a2)
{
  for (i = 0; i != 64; i += 16)
  {
    *(this + i) = *(this + 16 * (a2 & 3 | 4u));
    LODWORD(a2) = a2 + 1;
  }

  v3 = (this + 64);
  v4 = 4;
  do
  {
    *v3 = *(v3 - 8);
    v3 += 2;
    --v4;
  }

  while (v4);
  return this;
}

BOOL ou3dod::IsBoxSurfaceAttached(float32x4_t *this, const box3d *a2, const box3d *a3)
{
  v3 = 0;
  v4 = 0;
  do
  {
    for (i = 0; i != 64; i += 16)
    {
      v6 = vsubq_f32(this[v3], *(a2 + i));
      if (sqrtf(vaddv_f32(*&vmulq_f32(v6, v6))) < 0.01)
      {
        ++v4;
      }
    }

    ++v3;
  }

  while (v3 != 4);
  return v4 > 1;
}

void ou3dod::MaybeReorderObjectCorner(id *this, OUBox3d *a2)
{
  if (this)
  {
    v3 = [this[16] isEqualToString:{@"Cabinet", COERCE_DOUBLE(box3dToCentroidSizeAngle(this, __p))}];
    v4 = __p[0];
    if (v3)
    {
      v6 = *(__p[0] + 3);
      v5 = *(__p[0] + 4);
      v7 = v5 <= 1.0 || v5 <= v6;
      if (!v7 && (v5 / v6) > 1.5)
      {
        v8 = 1;
        v9 = this;
        do
        {
          *v9 = this[2 * (v8 & 3) + 8];
          v9 += 2;
          ++v8;
        }

        while (v8 != 5);
        v10 = this + 8;
        v11 = 4;
        do
        {
          *v10 = *(v10 - 8);
          v10 += 2;
          --v11;
        }

        while (v11);
        goto LABEL_19;
      }
    }

    else
    {
      v12 = *(__p[0] + 3);
      v13 = *(__p[0] + 4);
      if (v12 <= v13 && (v13 / v12) > 1.5)
      {
        v14 = 1;
        v15 = this;
        do
        {
          *v15 = this[2 * (v14 & 3) + 8];
          v15 += 2;
          ++v14;
        }

        while (v14 != 5);
        v16 = this + 8;
        v17 = 4;
        do
        {
          *v16 = *(v16 - 8);
          v16 += 2;
          --v17;
        }

        while (v17);
LABEL_19:
        if (!v4)
        {
          return;
        }
      }
    }

    __p[1] = v4;
    operator delete(v4);
  }
}

void sub_25D20E128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dod::AdjustBoxCornerOrder(float32x4_t *this, float32x4_t *a2, box3d *a3)
{
  box3dToCentroidSizeAngle(this, v40);
  box3dToCentroidSizeAngle(a2, __p);
  v5 = 0;
  v6 = *v40[0];
  v7 = *__p[0];
  v8 = vsub_f32(*this->f32, *__p[0]);
  v9 = sqrtf(vaddv_f32(vmul_f32(v8, v8)));
  v10 = 1;
  for (i = 1; i != 4; ++i)
  {
    v12 = vsub_f32(*this[i].f32, v7);
    v13 = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
    if (v13 < v9)
    {
      v9 = v13;
      v5 = v10;
    }

    ++v10;
  }

  if (v5 == 3 || v5 == 0)
  {
    v15 = 0;
    v16 = this;
    do
    {
      v16->i64[0] = this[v15 ^ 6].i64[0];
      ++v16;
      ++v15;
    }

    while (v15 != 4);
    v17 = this + 4;
    v18 = 4;
    do
    {
      v17->i64[0] = v17[-4].i64[0];
      ++v17;
      --v18;
    }

    while (v18);
    v5 ^= 2u;
  }

  v19 = 0;
  v20 = vsub_f32(*a2->f32, v6);
  v21 = sqrtf(vaddv_f32(vmul_f32(v20, v20)));
  v22 = 1;
  for (j = 1; j != 4; ++j)
  {
    v24 = vsub_f32(*a2[j].f32, v6);
    v25 = sqrtf(vaddv_f32(vmul_f32(v24, v24)));
    if (v25 < v21)
    {
      v19 = v22;
      v21 = v25;
    }

    ++v22;
  }

  if (v19)
  {
    v26 = v19 == 3;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = 0;
    v28 = a2;
    do
    {
      v28->i64[0] = a2[v27 ^ 6].i64[0];
      ++v28;
      ++v27;
    }

    while (v27 != 4);
    v29 = a2 + 4;
    v30 = 4;
    do
    {
      v29->i64[0] = v29[-4].i64[0];
      ++v29;
      --v30;
    }

    while (v30);
    if (v19)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }
  }

  if (v19 + v5 != 3)
  {
    goto LABEL_37;
  }

  v31 = *this[v5].f32;
  v32 = *a2[v19].f32;
  if (vaddv_f32(vmul_f32(vsub_f32(v31, v6), vsub_f32(v32, v6))) < 0.0 && vaddv_f32(vmul_f32(vsub_f32(v31, v7), vsub_f32(v32, v7))) < 0.0)
  {
    v33 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      ou3dod::AdjustBoxCornerOrder();
    }

LABEL_37:
    v34 = 0;
    goto LABEL_41;
  }

  v35 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    ou3dod::AdjustBoxCornerOrder(v5, v19, v35);
  }

  ou3dod::PrintBoxCorner(this, v36);
  ou3dod::PrintBoxCorner(a2, v37);
  v34 = 1;
LABEL_41:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  return v34;
}

void sub_25D20E3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dod::MaybeClipExtendLShapeObjects(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, void *a7, int a8)
{
  v375 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = *a6;
  v16 = a6[1];
  v294 = a3;
  v295 = a2;
  v17 = *a6 + 224 * a2;
  v18 = *(v17 + 80);
  v19 = *a6 + 224 * a3;
  v363 = *(v17 + 64);
  v364 = v18;
  v20 = *(v17 + 112);
  v365 = *(v17 + 96);
  v366 = v20;
  v21 = *(v17 + 16);
  v359 = *v17;
  v360 = v21;
  v22 = *(v17 + 48);
  v361 = *(v17 + 32);
  v362 = v22;
  v23 = *(v19 + 80);
  v355 = *(v19 + 64);
  v356 = v23;
  v24 = *(v19 + 112);
  v357 = *(v19 + 96);
  v358 = v24;
  v25 = *(v19 + 16);
  v351 = *v19;
  v352 = v25;
  v26 = *(v19 + 48);
  v353 = *(v19 + 32);
  v354 = v26;
  if ((ou3dod::AdjustBoxCornerOrder(v17, v19, v27) & 1) == 0)
  {
    ou3dod::SetForceExtendCornerFlag(v17, (v15 + 224 * a3), 0);
    v65 = 1;
    goto LABEL_170;
  }

  v28 = *(v17 + 16);
  v28.i32[2] = 1.0;
  v29 = *(v17 + 32);
  v29.i32[2] = 1.0;
  v30 = *(v19 + 16);
  v30.i32[2] = 1.0;
  v31 = *(v19 + 32);
  v31.i32[2] = 1.0;
  v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v28)), v29, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
  v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
  v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), vnegq_f32(v30)), v31, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
  v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  v36 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
  v37 = vextq_s8(v32, v32, 0xCuLL);
  v38 = vnegq_f32(v33);
  v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v38), v35, v36);
  v35.i64[0] = 0x80000000800000;
  v35.i64[1] = 0x80000000800000;
  v40 = vnegq_f32(v35);
  v289 = v40;
  if (fabsf(*&v39.i32[1]) >= 0.000001)
  {
    v40 = vdivq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vdupq_lane_s32(*v39.i8, 1));
  }

  v41 = *v17;
  v285 = v40;
  v42 = v40;
  v42.i32[2] = *(v17 + 8);
  v43 = vsubq_f32(v42, *(v17 + 32));
  v44 = vmulq_f32(v43, v43);
  v45 = vsubq_f32(v42, *(v19 + 16));
  v46 = vmulq_f32(v45, v45);
  v47 = vsubq_f32(v42, *(v17 + 16));
  v48 = vmulq_f32(v47, v47);
  *v46.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v46, v46, 8uLL)), vadd_f32(vzip1_s32(*v44.i8, *v46.i8), vzip2_s32(*v44.i8, *v46.i8))));
  v292 = v42;
  v49 = vsubq_f32(v42, *(v19 + 32));
  v50 = vmulq_f32(v49, v49);
  *v50.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v50, v50, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v50.i8), vzip2_s32(*v48.i8, *v50.i8))));
  *v50.i8 = vadd_f32(vzip1_s32(*v50.i8, *v46.i8), vzip2_s32(*v50.i8, *v46.i8));
  v51 = vextq_s8(v37, v32, 8uLL);
  if (vcgt_f32(vdup_lane_s32(*v50.i8, 1), *v50.i8).u8[0])
  {
    v52 = 0x100000000;
  }

  else
  {
    v52 = 1;
  }

  v53 = *(v17 + 48);
  v54 = *v19;
  v41.i32[2] = 1.0;
  v53.i32[2] = 1.0;
  v55 = *(v19 + 48);
  v54.i32[2] = 1.0;
  v55.i32[2] = 1.0;
  v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v41)), v53, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
  v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
  v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v54)), v55, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
  v59 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
  v60 = vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL);
  v61 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), vnegq_f32(v57)), v59, vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL));
  if (fabsf(*&v61.i32[1]) >= 0.000001)
  {
    v289 = vdivq_f32(vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), vdupq_lane_s32(*v61.i8, 1));
  }

  v62 = vmlaq_f32(vmulq_f32(v60, v38), v59, v51);
  if (fabsf(*&v62.i32[1]) >= 0.000001)
  {
    v64 = vdivq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), vdupq_lane_s32(*v62.i8, 1));
  }

  else
  {
    v63.i64[0] = 0x80000000800000;
    v63.i64[1] = 0x80000000800000;
    v64 = vnegq_f32(v63);
  }

  v284 = v64;
  v66 = *(v17 + 80);
  v347 = *(v17 + 64);
  v348 = v66;
  v67 = *(v17 + 112);
  v349 = *(v17 + 96);
  v350 = v67;
  v68 = *(v17 + 16);
  v343 = *v17;
  v344 = v68;
  v69 = *(v17 + 48);
  v345 = *(v17 + 32);
  v346 = v69;
  v288 = v14;
  box3dToCentroidSizeAngle(v17, v342);
  box3dToCentroidSizeAngle(v19, v341);
  *v70.i64 = rotationZMatrix(*(v342[0] + 6));
  v290 = a8;
  v72 = 0;
  v283 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v15) >> 5);
  v73.i64[0] = *v342[0];
  v73.i32[2] = *(v342[0] + 2);
  v75 = vzip1q_s32(v70, v74);
  v76 = vzip2q_s32(v70, v74);
  v78 = vdupq_laneq_s32(v77, 2);
  v79 = vzip1q_s32(v70, v77);
  v79.i32[2] = v74.i32[0];
  v80 = vzip1q_s32(v75, v77);
  v81 = vzip2q_s32(v75, vdupq_lane_s32(*v77.i8, 1));
  v82 = vzip2q_s32(v70, v77);
  v82.i32[2] = v74.i32[2];
  v83 = vzip1q_s32(v76, v78);
  v84 = vdupq_lane_s32(*v74.i8, 1);
  v85 = vtrn2q_s32(v80, v81);
  v85.i32[2] = v83.i32[1];
  do
  {
    v86 = v80;
    v86.i32[3] = v71;
    v87 = v83;
    v87.i32[3] = v78.i32[3];
    v78 = vsubq_f32(*(&v343 + v72), v73);
    *(&v343 + v72) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v86, v87), v81), v78.f32[0]), v85, *v78.f32, 1), vzip1q_s32(vzip2q_s32(v86, v87), v84), v78, 2);
    v72 += 16;
    v78.i32[3] = v87.i32[3];
    v71 = v86.i32[3];
  }

  while (v72 != 128);
  v88 = 0;
  v89 = vsubq_f32(v292, v73);
  v90 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v80, v83), v81), v89.f32[0]), v85, *v89.f32, 1), vzip1q_s32(vzip2q_s32(v80, v83), v84), v89, 2).u32[0];
  v91 = v52 & 1;
  do
  {
    v92 = (&v343 + ou3dod::MaybeClipExtendLShapeObjects(std::vector<OUBox3d> const&,std::pair<unsigned long,unsigned long>,NSArray<OUPointCloud *> *,BOOL,std::vector<OUBox3d>*,std::vector<BOOL> *,BOOL)::indices[4 * (v52 & 1) + v88]);
    v93 = *v92;
    LODWORD(v94) = v90;
    HIDWORD(v94) = HIDWORD(*v92);
    *(v92 | 8) = *(v92 + 8);
    *v92 = v94;
    ++v88;
  }

  while (v88 != 4);
  v95 = 0;
  v337 = v347;
  v338 = v348;
  v339 = v349;
  v340 = v350;
  v333 = v343;
  v334 = v344;
  v335 = v345;
  v336 = v346;
  do
  {
    *(&v333 + v95 * 4) = vaddq_f32(v73, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&v333 + v95 * 4))), v81, *&v333.f32[v95], 1), v82, *(&v333 + v95 * 4), 2));
    v95 += 4;
  }

  while (v95 != 32);
  v82.i64[0] = *v341[0];
  v82.i32[2] = *(v341[0] + 2);
  v286 = v82;
  v96 = *(v19 + 80);
  v329 = *(v19 + 64);
  v330 = v96;
  v97 = *(v19 + 112);
  v331 = *(v19 + 96);
  v332 = v97;
  v98 = *(v19 + 16);
  v325 = *v19;
  v326 = v98;
  v99 = *(v19 + 48);
  v327 = *(v19 + 32);
  v328 = v99;
  *v100.i64 = rotationZMatrix(*(v341[0] + 6));
  v102 = 0;
  v104 = vzip1q_s32(v100, v103);
  v105 = vzip2q_s32(v100, v103);
  v107 = vdupq_laneq_s32(v106, 2);
  v108 = vzip1q_s32(v100, v106);
  v108.i32[2] = v103.i32[0];
  v109 = vzip1q_s32(v104, v106);
  v110 = vzip2q_s32(v104, vdupq_lane_s32(*v106.i8, 1));
  v111 = vzip2q_s32(v100, v106);
  v111.i32[2] = v103.i32[2];
  v112 = vzip1q_s32(v105, v107);
  v113 = vdupq_lane_s32(*v103.i8, 1);
  v114 = vtrn2q_s32(v109, v110);
  v114.i32[2] = v112.i32[1];
  do
  {
    v115 = v109;
    v115.i32[3] = v101;
    v116 = v112;
    v116.i32[3] = v107.i32[3];
    v107 = vsubq_f32(*(&v325 + v102), v286);
    *(&v325 + v102) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v115, v116), v110), v107.f32[0]), v114, *v107.f32, 1), vzip1q_s32(vzip2q_s32(v115, v116), v113), v107, 2);
    v102 += 16;
    v107.i32[3] = v116.i32[3];
    v101 = v115.i32[3];
  }

  while (v102 != 128);
  v117 = 0;
  v118 = vsubq_f32(v292, v286);
  v119 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v109, v112), v110), v118.f32[0]), v114, *v118.f32, 1), vzip1q_s32(vzip2q_s32(v109, v112), v113), v118, 2).u32[0];
  do
  {
    v120 = (&v325 + *(ou3dod::MaybeClipExtendLShapeObjects(std::vector<OUBox3d> const&,std::pair<unsigned long,unsigned long>,NSArray<OUPointCloud *> *,BOOL,std::vector<OUBox3d>*,std::vector<BOOL> *,BOOL)::indices + ((v52 >> 28) & 0x10) + v117));
    v121 = *v120;
    LODWORD(v122) = v119;
    HIDWORD(v122) = HIDWORD(*v120);
    *(v120 | 8) = *(v120 + 8);
    *v120 = v122;
    v117 += 4;
  }

  while (v117 != 16);
  v123 = 0;
  v321 = v329;
  v322 = v330;
  v323 = v331;
  v324 = v332;
  v317 = v325;
  v318 = v326;
  v319 = v327;
  v320 = v328;
  do
  {
    *(&v317 + v123 * 4) = vaddq_f32(v286, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, COERCE_FLOAT(*(&v317 + v123 * 4))), v110, *&v317.f32[v123], 1), v111, *(&v317 + v123 * 4), 2));
    v123 += 4;
  }

  while (v123 != 32);
  if ((a8 & 1) != 0 || (box3dIou(&v333, &v317, 0, &v309), v309.f32[0] <= 0.02))
  {
    v293 = a6;
    v287 = a7;
    v125 = v333;
    v126 = v334;
    v127 = v336;
    *(v17 + 32) = v335;
    *(v17 + 48) = v127;
    *v17 = v125;
    *(v17 + 16) = v126;
    v128 = v337;
    v129 = v338;
    v130 = v340;
    *(v17 + 96) = v339;
    *(v17 + 112) = v130;
    *(v17 + 64) = v128;
    *(v17 + 80) = v129;
    v131 = v324;
    v133 = v321;
    v132 = v322;
    *(v19 + 96) = v323;
    *(v19 + 112) = v131;
    *(v19 + 64) = v133;
    *(v19 + 80) = v132;
    v134 = v317;
    v135 = v318;
    v136 = v320;
    *(v19 + 32) = v319;
    *(v19 + 48) = v136;
    *v19 = v134;
    *(v19 + 16) = v135;
    v137 = *v17;
    v138 = *v19;
    if (v52)
    {
      v139 = v17;
    }

    else
    {
      v139 = v19;
    }

    v140 = *(v139 + 48);
    if (*&v138.i32[2] >= *&v137.i32[2])
    {
      v118.i32[0] = DWORD2(*(v17 + 8));
    }

    else
    {
      v118.i32[0] = DWORD2(*(v19 + 8));
    }

    v141 = *(v17 + 72);
    v142 = *(v19 + 72);
    if (v141 >= v142)
    {
      v143 = *(v17 + 72);
    }

    else
    {
      v143 = *(v19 + 72);
    }

    v144 = vabds_f32(v141 - *&v137.i32[2], v142 - *&v138.i32[2]);
    if (v144 >= 0.15 && a5)
    {
      v277 = *v19;
      v278 = *v17;
      v279 = v118;
      v280 = v143;
      v281 = *(v139 + 48);
      v374[0] = @"Sofa";
      v374[1] = @"Table";
      v310.i64[0] = 0;
      v309 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v309, v374, &v375, 2uLL);
      v145 = v309.i64[1];
      if (v309.i64[0] == v309.i64[1])
      {
        v148 = 0;
      }

      else
      {
        v146 = v309.i64[0] + 8;
        do
        {
          v147 = [*(v17 + 128) isEqualToString:{*(v146 - 8), *&v277, *&v278, *&v279}];
          v148 = v147;
          if (v146 == v145)
          {
            v149 = 1;
          }

          else
          {
            v149 = v147;
          }

          v146 += 8;
        }

        while (v149 != 1);
      }

      v305[0] = &v309;
      std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v305);
      for (i = 1; i != -1; --i)
      {
      }

      LOBYTE(a8) = v290;
      v143 = v280;
      v140 = v281;
      v137 = v278;
      v118.i32[0] = v279.i32[0];
      v138 = v277;
      if ((v148 & 1) == 0)
      {
LABEL_56:
        v134.i64[0] = 0;
        v135.i64[0] = v91;
        v154 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v135, v134).i64[0], 0), v137, v138);
        v155 = v140;
        v155.i32[2] = v118.i32[0];
        v156 = v285;
        v156.i32[2] = v118.i32[0];
        v309 = v155;
        v310 = v156;
        v157 = v154;
        v157.i32[2] = v118.i32[0];
        v158 = v289;
        v158.i32[2] = v118.i32[0];
        v311 = v157;
        v312 = v158;
        v140.i32[2] = v143;
        v159 = v285;
        v159.i32[2] = v143;
        v154.i32[2] = v143;
        v313 = v140;
        v314 = v159;
        v160 = v289;
        v160.i32[2] = v143;
        v315 = v154;
        v316 = v160;
        box3dToCentroidSizeAngle(&v309, v308);
        if ((a8 & 1) == 0 && (*(v308[0] + 4) > 1.5 || *(v308[0] + 3) > 1.5))
        {
          v167 = v364;
          *(v17 + 64) = v363;
          *(v17 + 80) = v167;
          v168 = v366;
          *(v17 + 96) = v365;
          *(v17 + 112) = v168;
          v169 = v360;
          *v17 = v359;
          *(v17 + 16) = v169;
          v170 = v362;
          *(v17 + 32) = v361;
          *(v17 + 48) = v170;
          v171 = v356;
          *(v19 + 64) = v355;
          *(v19 + 80) = v171;
          v172 = v358;
          *(v19 + 96) = v357;
          *(v19 + 112) = v172;
          v173 = v352;
          *v19 = v351;
          *(v19 + 16) = v173;
          v174 = v354;
          *(v19 + 32) = v353;
          *(v19 + 48) = v174;
          ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
          v65 = 3;
          goto LABEL_164;
        }

        v282 = @"Sofa";
        v373[0] = v282;
        v161 = @"Table";
        v373[1] = v161;
        v305[1] = 0;
        *&v306 = 0;
        v305[0] = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(v305, v373, v374, 2uLL);
        v162 = v305[1];
        if (v305[0] == v305[1])
        {
          v165 = 0;
        }

        else
        {
          v163 = v305[0] + 8;
          do
          {
            v164 = [*(v17 + 128) isEqualToString:{*(v163 - 1), *&v277, *&v278, *&v279}];
            v165 = v164;
            if (v163 == v162)
            {
              v166 = 1;
            }

            else
            {
              v166 = v164;
            }

            v163 += 8;
          }

          while (v166 != 1);
        }

        __p[0] = v305;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](__p);
        for (j = 1; j != -1; --j)
        {
        }

        if (v165)
        {
          box3dToCentroidSizeAngle(v17, v305);
          v177 = *(v305[0] + 3);
          v176 = *(v305[0] + 4);
          box3dToCentroidSizeAngle(v19, __p);
          if (v176 >= v177)
          {
            v178 = v177;
          }

          else
          {
            v178 = v176;
          }

          if (v178 <= 0.2)
          {
            goto LABEL_102;
          }

          v179 = *(__p[0] + 4);
          if (v179 >= *(__p[0] + 3))
          {
            v179 = *(__p[0] + 3);
          }

          if (v179 <= 0.2)
          {
LABEL_102:
            v204 = v364;
            *(v17 + 64) = v363;
            *(v17 + 80) = v204;
            v205 = v366;
            *(v17 + 96) = v365;
            *(v17 + 112) = v205;
            v206 = v360;
            *v17 = v359;
            *(v17 + 16) = v206;
            v207 = v362;
            *(v17 + 32) = v361;
            *(v17 + 48) = v207;
            v208 = v356;
            *(v19 + 64) = v355;
            *(v19 + 80) = v208;
            v209 = v358;
            *(v19 + 96) = v357;
            *(v19 + 112) = v209;
            v210 = v352;
            *v19 = v351;
            *(v19 + 16) = v210;
            v211 = v354;
            *(v19 + 32) = v353;
            *(v19 + 48) = v211;
            ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v305[0])
            {
              v305[1] = v305[0];
              operator delete(v305[0]);
            }

            v65 = 7;
            goto LABEL_164;
          }

          __p[1] = __p[0];
          operator delete(__p[0]);
          if (v305[0])
          {
            v305[1] = v305[0];
            operator delete(v305[0]);
          }
        }

        v371[0] = v282;
        v180 = [MEMORY[0x277CBEB98] setWithArray:{&unk_286EC2278, *&v277, *&v278, *&v279}];
        v372[0] = v180;
        v371[1] = v161;
        v181 = [MEMORY[0x277CBEB98] setWithArray:&unk_286EC2290];
        v372[1] = v181;
        v371[2] = @"Cabinet";
        v182 = [MEMORY[0x277CBEB98] setWithArray:&unk_286EC22A8];
        v372[2] = v182;
        v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v372 forKeys:v371 count:3];

        v185 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
        if (v185 >= 1)
        {
          v186 = 0;
          v187 = v185 & 0x7FFFFFFF;
          while (1)
          {
            v306 = 0u;
            v307 = 0u;
            *v305 = 0u;
            box3dIou((*a1 + v186), &v309, 0, v305);
            if ((![*(v17 + 128) isEqualToString:@"Cabinet"] || (objc_msgSend(*(*a1 + v186 + 128), "isEqualToString:", @"Chair") & 1) == 0) && (!objc_msgSend(*(v17 + 128), "isEqualToString:", v161) || !objc_msgSend(*(*a1 + v186 + 128), "isEqualToString:", @"Cabinet") || *(*a1 + v186 + 72) >= (*(v17 + 72) + 0.1)) && *(&v305[1] + 1) > 0.6)
            {
              break;
            }

            v186 += 224;
            if (!--v187)
            {
              goto LABEL_89;
            }
          }

          ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
          v212 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
          if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
          {
            ou3dod::MaybeClipExtendLShapeObjects();
          }

          v213 = v364;
          *(v17 + 64) = v363;
          *(v17 + 80) = v213;
          v214 = v366;
          *(v17 + 96) = v365;
          *(v17 + 112) = v214;
          v215 = v360;
          *v17 = v359;
          *(v17 + 16) = v215;
          v216 = v362;
          *(v17 + 32) = v361;
          *(v17 + 48) = v216;
          v217 = v356;
          *(v19 + 64) = v355;
          *(v19 + 80) = v217;
          v218 = v358;
          *(v19 + 96) = v357;
          *(v19 + 112) = v218;
          v219 = v352;
          *v19 = v351;
          *(v19 + 16) = v219;
          v220 = v354;
          v65 = 8;
          *(v19 + 32) = v353;
          *(v19 + 48) = v220;
          goto LABEL_163;
        }

LABEL_89:
        ShouldForceExtendCorner = ou3dod::ShouldForceExtendCorner(v17, v19, v184);
        v189 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
        if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
        {
          ou3dod::MaybeClipExtendLShapeObjects();
        }

        if (((v290 | ShouldForceExtendCorner) & 1) == 0 && ([*(v17 + 128) isEqualToString:@"Cabinet"] & 1) == 0)
        {
          v190 = [v183 objectForKeyedSubscript:*(v17 + 128)];
          ou3dod::extractClassPoints(v190, &v309, v288, v305);

          v191 = (v305[1] - v305[0]) >> 4;
          if (v191 > 0x27)
          {
            goto LABEL_110;
          }

          if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
          {
            ou3dod::MaybeClipExtendLShapeObjects(v191, v189);
          }

          if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
          {
            v193 = ou3dod::Compute2DOverlapRatio(&v359, &v351, &v309, v192);
            ou3dod::MaybeClipExtendLShapeObjects(v370, v189, v193);
          }

          if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
          {
            ou3dod::MaybeClipExtendLShapeObjects();
          }

          if (ou3dod::Compute2DOverlapRatio(&v359, &v351, &v309, v194) >= 0.5)
          {
LABEL_110:
            v65 = 7;
            v195 = 1;
          }

          else
          {
            ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
            v195 = 0;
            v196 = v364;
            *(v17 + 64) = v363;
            *(v17 + 80) = v196;
            v197 = v366;
            *(v17 + 96) = v365;
            *(v17 + 112) = v197;
            v198 = v360;
            *v17 = v359;
            *(v17 + 16) = v198;
            v199 = v362;
            *(v17 + 32) = v361;
            *(v17 + 48) = v199;
            v200 = v356;
            *(v19 + 64) = v355;
            *(v19 + 80) = v200;
            v201 = v358;
            *(v19 + 96) = v357;
            *(v19 + 112) = v201;
            v202 = v352;
            *v19 = v351;
            *(v19 + 16) = v202;
            v203 = v354;
            v65 = 5;
            *(v19 + 32) = v353;
            *(v19 + 48) = v203;
          }

          if (v305[0])
          {
            v305[1] = v305[0];
            operator delete(v305[0]);
          }

          if ((v195 & 1) == 0)
          {
LABEL_163:

LABEL_164:
            if (v308[0])
            {
              v308[1] = v308[0];
              operator delete(v308[0]);
            }

            goto LABEL_166;
          }
        }

        box3dToCentroidSizeAngle(v17, v304);
        if (*(v304[0] + 3) >= *(v304[0] + 4))
        {
          v221 = *(v304[0] + 3);
        }

        else
        {
          v221 = *(v304[0] + 4);
        }

        box3dToCentroidSizeAngle(v19, v303);
        if (*(v303[0] + 3) >= *(v303[0] + 4))
        {
          v222 = *(v303[0] + 3);
        }

        else
        {
          v222 = *(v303[0] + 4);
        }

        if (a5)
        {
          v369[0] = v282;
          v369[1] = v161;
          v305[1] = 0;
          *&v306 = 0;
          v305[0] = 0;
          std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(v305, v369, v370, 2uLL);
          v223 = v305[1];
          if (v305[0] == v305[1])
          {
            v227 = 0;
          }

          else
          {
            v224 = v305[0] + 8;
            do
            {
              v225 = [*(v17 + 128) isEqualToString:*(v224 - 1)];
              if (v224 == v223)
              {
                v226 = 1;
              }

              else
              {
                v226 = v225;
              }

              v224 += 8;
            }

            while (v226 != 1);
            v227 = v221 < v222 ? v225 : 0;
          }

          __p[0] = v305;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](__p);
          for (k = 1; k != -1; --k)
          {
          }

          if (v227)
          {
            v229 = v364;
            *(v17 + 64) = v363;
            *(v17 + 80) = v229;
            v230 = v366;
            *(v17 + 96) = v365;
            *(v17 + 112) = v230;
            v231 = v360;
            *v17 = v359;
            *(v17 + 16) = v231;
            v232 = v362;
            *(v17 + 32) = v361;
            *(v17 + 48) = v232;
            v233 = v356;
            *(v19 + 64) = v355;
            *(v19 + 80) = v233;
            v234 = v358;
            *(v19 + 96) = v357;
            *(v19 + 112) = v234;
            v235 = v352;
            *v19 = v351;
            *(v19 + 16) = v235;
            v236 = v354;
            v65 = 6;
            *(v19 + 32) = v353;
            *(v19 + 48) = v236;
LABEL_159:
            if (v303[0])
            {
              v303[1] = v303[0];
              operator delete(v303[0]);
            }

            if (v304[0])
            {
              v304[1] = v304[0];
              operator delete(v304[0]);
            }

            goto LABEL_163;
          }
        }

        v238 = *v17;
        v237 = *(v17 + 16);
        v239 = v284.i64[0];
        v240 = vsub_f32(*v237.f32, *v285.f32);
        v241 = vmul_f32(v240, v240);
        v242 = *(v17 + 32);
        v243 = *(v17 + 48);
        v244 = vsub_f32(*v242.f32, *v285.f32);
        v245 = vmul_f32(v244, v244);
        v246 = vsqrt_f32(vadd_f32(vzip1_s32(v241, v245), vzip2_s32(v241, v245)));
        v247 = vcgt_f32(vdup_lane_s32(v246, 1), v246).u8[0];
        v248 = vsub_f32(*v237.f32, *v284.f32);
        v249 = vmul_f32(v248, v248);
        v250 = vsub_f32(*v242.f32, *v284.f32);
        v251 = vmul_f32(v250, v250);
        v252 = vsub_f32(*v17, *v289.f32);
        v253 = vmul_f32(v252, v252);
        v254 = vsub_f32(*v243.f32, *v289.f32);
        v255 = vmul_f32(v254, v254);
        v256 = vsqrt_f32(vadd_f32(vzip1_s32(v249, v253), vzip2_s32(v249, v253)));
        v257 = vsqrt_f32(vadd_f32(vzip1_s32(v251, v255), vzip2_s32(v251, v255)));
        v258 = vbsl_s8(vcgt_f32(v256, v257), v257, v256);
        if (vcgt_f32(vdup_lane_s32(v258, 1), v258).u8[0])
        {
          if (v247)
          {
            *(v17 + 8) = v238.i32[2];
            v259 = vsubq_f32(vaddq_f32(v284, v238), v237).u64[0];
            *v17 = v259;
            *(v17 + 64) = v259;
            *(v17 + 24) = v237.i32[2];
            *(v17 + 16) = v284.i64[0];
            v260 = (v17 + 80);
          }

          else
          {
            *(v17 + 56) = v243.i32[2];
            v263 = vsubq_f32(vaddq_f32(v284, v243), v242).u64[0];
            *(v17 + 48) = v263;
            *(v17 + 112) = v263;
            *(v17 + 40) = v242.i32[2];
            *(v17 + 32) = v284.i64[0];
            v260 = (v17 + 96);
          }
        }

        else
        {
          if (v247)
          {
            *(v17 + 24) = v237.i32[2];
            v261 = vsubq_f32(vaddq_f32(v289, v237), v238).u64[0];
            *(v17 + 16) = v261;
            *(v17 + 8) = v238.i32[2];
            *v17 = v289.i64[0];
            *(v17 + 80) = v261;
            v239 = v289.i64[0];
            v262 = v283;
            v260 = (v17 + 64);
LABEL_143:
            *v260 = v239;
            v300 = 0;
            v301 = 0;
            v302 = 0;
            if (v262 >= 1)
            {
              v265 = 0;
              v266 = 0;
              v267 = v262 & 0x7FFFFFFF;
              do
              {
                if (v295 != v266 && v294 != v266)
                {
                  v268 = *a6;
                  v306 = 0u;
                  v307 = 0u;
                  *v305 = 0u;
                  box3dIou((v268 + v265), v17, 0, v305);
                  v298 = 0u;
                  v299 = 0u;
                  *__p = 0u;
                  box3dIou((v268 + v265), v19, 0, __p);
                  memset(v296, 0, sizeof(v296));
                  box3dIou((v268 + v265), &v309, 0, v296);
                  if (*(&v305[1] + 1) > 0.2 || *(&__p[1] + 1) > 0.2 || *(v296 + 3) > 0.2)
                  {
                    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
                    {
                      v274 = ou3dod::Compute2DOverlapRatio(v17, v19, (v268 + v265), v269);
                      *buf = 134217984;
                      v368 = v274;
                      _os_log_debug_impl(&dword_25D1DB000, v189, OS_LOG_TYPE_DEBUG, "[3DOD Lshape merge] 2D Overlap Ratio %f", buf, 0xCu);
                    }

                    a6 = v293;
                    if (ou3dod::Compute2DOverlapRatio(v17, v19, (v268 + v265), v270) > 0.6)
                    {
                      *(*v287 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v266;
                      v271 = *v293;
                      v272 = v301;
                      if (v301 >= v302)
                      {
                        v273 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d const&>(&v300, (v271 + v265));
                      }

                      else
                      {
                        OUBox3d::OUBox3d(v301, (v271 + v265));
                        v273 = (v272 + 224);
                      }

                      v301 = v273;
                    }
                  }
                }

                ++v266;
                v265 += 224;
              }

              while (v267 != v266);
            }

            ou3dod::SetForceExtendCornerFlag(v17, v19, 1);
            v305[0] = &v300;
            std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v305);
            v65 = 0;
            goto LABEL_159;
          }

          *(v17 + 40) = v242.i32[2];
          v264 = vsubq_f32(vaddq_f32(v289, v242), v243).u64[0];
          *(v17 + 32) = v264;
          *(v17 + 56) = v243.i32[2];
          *(v17 + 48) = v289.i64[0];
          *(v17 + 96) = v264;
          v260 = (v17 + 112);
          v239 = v289.i64[0];
        }

        v262 = v283;
        goto LABEL_143;
      }
    }

    else if (v144 >= 0.15)
    {
      goto LABEL_56;
    }

    v151 = (v15 + 224 * v294 + 72);
    v152 = (v15 + 224 * v295 + 72);
    v153 = 4;
    do
    {
      *v152 = v143;
      *v151 = v143;
      *(v152 - 16) = v118.i32[0];
      *(v151 - 16) = v118.i32[0];
      v151 += 4;
      v152 += 4;
      --v153;
    }

    while (v153);
    goto LABEL_56;
  }

  ou3dod::SetForceExtendCornerFlag(v17, v19, 0);
  v124 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
  {
    ou3dod::MaybeClipExtendLShapeObjects();
  }

  v65 = 2;
LABEL_166:
  if (v341[0])
  {
    v341[1] = v341[0];
    operator delete(v341[0]);
  }

  v14 = v288;
  if (v342[0])
  {
    v342[1] = v342[0];
    operator delete(v342[0]);
  }

LABEL_170:

  v275 = *MEMORY[0x277D85DE8];
  return v65;
}